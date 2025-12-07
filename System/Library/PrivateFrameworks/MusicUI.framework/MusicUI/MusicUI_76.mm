double sub_216E909C4()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ContainerDetailHeaderView(0) + 44);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = *v5;
  }

  else
  {

    sub_21700ED94();
    v8 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v6, 0);
    (*(v2 + 8))(v4, v1);
    v7 = *&v10[1];
  }

  return v7 + -144.0;
}

unint64_t sub_216E90B30()
{
  result = qword_27CACB720;
  if (!qword_27CACB720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB6F0, &qword_217069620);
    sub_2166D9530(&qword_27CACB728, &qword_27CACB6E8, &qword_217069618, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACB720);
  }

  return result;
}

uint64_t sub_216E90BE8()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216E90C40(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216E90C98()
{
  result = qword_27CACB768;
  if (!qword_27CACB768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB770, &qword_217069728);
    sub_2166D9530(&qword_27CACB718, &qword_27CACB708, &qword_217069638, MEMORY[0x277CE1138]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB6F0, &qword_217069620);
    sub_216E90B30();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACB768);
  }

  return result;
}

uint64_t sub_216E90DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB8A8, &qword_2170698D8);
  v9 = *(v8 + 60);
  *(a7 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v10 = a7 + *(v8 + 64);
  result = swift_getKeyPath();
  *v10 = result;
  v10[40] = 0;
  return result;
}

uint64_t sub_216E90E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CatalogPagePresenter(0, a2, a3, a4);
  swift_getWitnessTable();
  sub_217008CF4();
  return a1;
}

uint64_t sub_216E90EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v42 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB790, &qword_2170697A0) - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB798, &qword_2170697A8) - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_105();
  v41 = v17;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB7A0, &qword_2170697B0) - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - v19;
  sub_2166D9530(&qword_27CACB7B0, &qword_27CACB7A8, &qword_2170697B8, MEMORY[0x277CE14C0]);
  *v14 = sub_2170091A4();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v21 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB7B8, &qword_2170697C0) + 44)];
  v39 = a4;
  sub_216E91278(a1, a2, a3, a4, a5, v21);
  v22 = sub_217009CA4();
  sub_217007F24();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB7C0, &qword_2170697C8) + 36)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = swift_allocObject();
  *(v32 + 2) = a4;
  *(v32 + 3) = a5;
  *(v32 + 4) = a1;
  *(v32 + 5) = a2;
  *(v32 + 6) = a3;
  v33 = &v14[*(v11 + 44)];
  *v33 = sub_216E91A9C;
  v33[1] = 0;
  v33[2] = sub_216E963EC;
  v33[3] = v32;
  sub_216E963FC();

  sub_21700B3B4();
  sub_217008BB4();
  v34 = v41;
  sub_2167C5834(v14, v41, &qword_27CACB790, &qword_2170697A0);
  memcpy((v34 + *(v15 + 44)), __src, 0x70uLL);
  v35 = swift_allocObject();
  *(v35 + 2) = v39;
  *(v35 + 3) = a5;
  *(v35 + 4) = a1;
  *(v35 + 5) = a2;
  *(v35 + 6) = a3;
  sub_2167C5834(v34, v20, &qword_27CACB798, &qword_2170697A8);
  v36 = &v20[*(v40 + 44)];
  *v36 = sub_216E9656C;
  v36[1] = v35;
  v36[2] = 0;
  v36[3] = 0;
  sub_2167C5834(v20, v42, &qword_27CACB7A0, &qword_2170697B0);
}

uint64_t sub_216E91278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a4;
  v34 = a3;
  v37 = a6;
  v10 = sub_2170067A4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for TVMovieDetailHeaderLockup(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB800, &qword_2170697E0);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v36 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v34 - v21;
  sub_216DEA308();
  sub_216CCB440();
  sub_216E91690(v16, v13, a1, a2, a3, v35, a5, v22);
  (*(v11 + 8))(v13, v10);
  sub_216E993A4(v16, type metadata accessor for TVMovieDetailHeaderLockup);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB808, &qword_2170697E8);
  sub_216E9657C();
  sub_2166BF464();
  sub_2170083C4();
  v23 = &v22[*(v18 + 44)];
  v24 = v40[3];
  *v23 = v40[2];
  *(v23 + 1) = v24;
  *(v23 + 2) = v40[4];
  sub_216DEA308();
  sub_216E9180C(v16, &v43);
  sub_216E993A4(v16, type metadata accessor for TVMovieDetailHeaderLockup);
  v38 = v43;
  v39 = v44;
  v40[0] = *v45;
  *(v40 + 9) = *&v45[9];
  v25 = v36;
  sub_216683A80(v22, v36, &qword_27CACB800, &qword_2170697E0);
  v26 = v37;
  sub_216683A80(v25, v37, &qword_27CACB800, &qword_2170697E0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB828, &qword_2170697F8);
  v28 = v26 + *(v27 + 48);
  *v28 = 0;
  *(v28 + 8) = 0;
  v29 = (v26 + *(v27 + 64));
  v30 = *(v40 + 9);
  *(v42 + 9) = *(v40 + 9);
  v31 = v39;
  v41[0] = v38;
  v41[1] = v39;
  v32 = v40[0];
  v42[0] = v40[0];
  *v29 = v38;
  v29[1] = v31;
  v29[2] = v32;
  *(v29 + 41) = v30;
  sub_216683A80(v41, &v43, &qword_27CACB830, &qword_217069800);
  sub_2166997CC(v22, &qword_27CACB800, &qword_2170697E0);
  v43 = v38;
  v44 = v39;
  *v45 = v40[0];
  *&v45[9] = *(v40 + 9);
  sub_2166997CC(&v43, &qword_27CACB830, &qword_217069800);
  return sub_2166997CC(v25, &qword_27CACB800, &qword_2170697E0);
}

uint64_t sub_216E91690@<X0>(uint64_t a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = sub_2170093C4();
  *(a8 + 8) = 0;
  *(a8 + 16) = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB850, &qword_217069820);
  sub_216E925DC(a3, a4, a5, a1, a2, a6, a7, a8 + *(v16 + 44));
  v20[3] = sub_2170067A4();
  v20[4] = sub_216E9A248(&qword_280E4A480, MEMORY[0x277D2A460], MEMORY[0x277D2A398]);
  __swift_allocate_boxed_opaque_existential_1(v20);
  sub_216CCB440();
  v17 = (a8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB808, &qword_2170697E8) + 36));
  sub_2167B7D58(v20, (v17 + 2));
  type metadata accessor for MusicEntityAnnotationWrapper();
  sub_216E9A248(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper, &unk_2170370E0);
  *v17 = sub_217008CF4();
  v17[1] = v18;
  return __swift_destroy_boxed_opaque_existential_1Tm(v20);
}

uint64_t sub_216E9180C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = type metadata accessor for Artwork(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v14 = type metadata accessor for TVMovieDetailHeaderLockup(0);
  sub_216683A80(a1 + *(v14 + 68), v6, &qword_27CAB6D60, &qword_217014E40);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_2166997CC(v6, &qword_27CAB6D60, &qword_217014E40);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0uLL;
    v20 = 0uLL;
  }

  else
  {
    sub_216E9982C(v6, v13, type metadata accessor for Artwork);
    sub_216E997D0(v13, v10, type metadata accessor for Artwork);
    v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v17 = swift_allocObject();
    sub_216E9982C(v10, v17 + v21, type metadata accessor for Artwork);
    v22 = sub_217009C74();
    sub_217007F24();
    v28 = v23;
    v29 = v24;
    v27 = v25;
    v30 = v26;
    result = sub_216E993A4(v13, type metadata accessor for Artwork);
    *&v20 = v27;
    *&v19 = v28;
    *(&v19 + 1) = v29;
    *(&v20 + 1) = v30;
    v31 = 0;
    v18 = v22;
    v16 = sub_216E96634;
  }

  *a2 = v16;
  *(a2 + 8) = v17;
  *(a2 + 16) = v18;
  *(a2 + 24) = v19;
  *(a2 + 40) = v20;
  *(a2 + 56) = 0;
  return result;
}

double sub_216E91A9C@<D0>(double *a1@<X8>)
{
  sub_217008434();
  v3 = v2;
  sub_217008444();
  result = v3 + v4;
  *a1 = v3 + v4;
  return result;
}

uint64_t sub_216E91ADC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for BackgroundConfiguration(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a1;
  type metadata accessor for CatalogPagePresenter(0, a5, a6, v13);
  swift_getWitnessTable();
  sub_217008CB4();
  *v11 = v12;
  swift_storeEnumTagMultiPayload();
  sub_216A45E80(v11);
}

uint64_t sub_216E91BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9180, &qword_21701C770);
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v36 - v6;
  v37 = type metadata accessor for BackgroundConfiguration(0);
  MEMORY[0x28223BE20](v37);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v9 - 8);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v39 = &v36 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v16 = type metadata accessor for TVMovieDetailHeaderLockup(0);
  MEMORY[0x28223BE20](v16);
  v36 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v36 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v36 - v22;
  v24 = type metadata accessor for Artwork(0);
  MEMORY[0x28223BE20](v24);
  v26 = &v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DEA308();
  sub_216683A80(&v23[*(v16 + 44)], v15, &qword_27CAB6D60, &qword_217014E40);
  sub_216E993A4(v23, type metadata accessor for TVMovieDetailHeaderLockup);
  v27 = v24;
  if (__swift_getEnumTagSinglePayload(v15, 1, v24) == 1)
  {
    sub_2166997CC(v15, &qword_27CAB6D60, &qword_217014E40);
    type metadata accessor for CatalogPagePresenter(0, v42, v43, v28);
    swift_getWitnessTable();
    sub_217008CB4();
    *(v8 + 3) = v16;
    *(v8 + 4) = &off_28291F718;
    __swift_allocate_boxed_opaque_existential_1(v8);
    sub_216DEA308();
    *(v8 + 5) = 0x3FF0000000000000;
    v8[48] = 1;
    swift_storeEnumTagMultiPayload();
    sub_216A45E6C(v8);
  }

  else
  {
    sub_216E9982C(v15, v26, type metadata accessor for Artwork);
    type metadata accessor for CatalogPagePresenter(0, v42, v43, v30);
    swift_getWitnessTable();
    sub_217008CB4();
    sub_216E997D0(v26, v8, type metadata accessor for Artwork);
    swift_storeEnumTagMultiPayload();
    sub_216A45E6C(v8);

    sub_216E993A4(v26, type metadata accessor for Artwork);
  }

  type metadata accessor for CatalogPagePresenter(0, v42, v43, v29);
  swift_getWitnessTable();
  v37 = sub_217008CB4();
  sub_216DEA308();
  v31 = v38;
  sub_216683A80(&v20[*(v16 + 44)], v38, &qword_27CAB6D60, &qword_217014E40);
  sub_216E993A4(v20, type metadata accessor for TVMovieDetailHeaderLockup);
  if (__swift_getEnumTagSinglePayload(v31, 1, v24) == 1)
  {
    v32 = v36;
    sub_216DEA308();
    v33 = v39;
    sub_216986864();
    sub_216E993A4(v32, type metadata accessor for TVMovieDetailHeaderLockup);
    if (__swift_getEnumTagSinglePayload(v31, 1, v27) != 1)
    {
      sub_2166997CC(v31, &qword_27CAB6D60, &qword_217014E40);
    }
  }

  else
  {
    v33 = v39;
    sub_216E9982C(v31, v39, type metadata accessor for Artwork);
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v24);
  }

  v34 = v40;
  sub_216E921E0(v33, v40);
  sub_2166997CC(v33, &qword_27CAB6D60, &qword_217014E40);
  sub_216A45FC0(v34);
}

int64_t sub_216E921E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21700C4B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  sub_216683A80(a1, &v34 - v9, &qword_27CAB6D60, &qword_217014E40);
  v11 = type metadata accessor for Artwork(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_2166997CC(v10, &qword_27CAB6D60, &qword_217014E40);
LABEL_21:
    v25 = sub_2170080D4();
    v26 = a2;
    v27 = 1;
    return __swift_storeEnumTagSinglePayload(v26, v27, 1, v25);
  }

  (*(v5 + 16))(v7, v10, v4);
  sub_216E993A4(v10, type metadata accessor for Artwork);
  v12 = sub_21700C494();
  (*(v5 + 8))(v7, v4);
  if (!v12)
  {
    goto LABEL_21;
  }

  v13 = CGColorGetColorSpace(v12);
  if (!v13)
  {
    v16 = *MEMORY[0x277CBF430];
LABEL_10:
    if (!v16)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v14 = v13;
  v15 = CGColorSpaceCopyName(v13);

  v16 = *MEMORY[0x277CBF430];
  if (!v15)
  {
    goto LABEL_10;
  }

  if (v16)
  {
    type metadata accessor for CFString(0);
    sub_216E9A248(&qword_27CACB7F8, type metadata accessor for CFString, &unk_217013A0C);
    v16 = v16;
    v17 = sub_217006754();

    if ((v17 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_11:
    CopyByMatchingToColorSpace = v12;
    goto LABEL_15;
  }

LABEL_13:
  v19 = CGColorSpaceCreateWithName(v16);
  if (!v19 || (v20 = v19, CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v19, kCGRenderingIntentDefault, v12, 0), v20, !CopyByMatchingToColorSpace))
  {
    v21 = v12;
    goto LABEL_20;
  }

LABEL_15:
  v21 = CopyByMatchingToColorSpace;
  v22 = sub_21700ED14();
  if (!v22)
  {
LABEL_18:

LABEL_20:
    goto LABEL_21;
  }

  v23 = v22;
  result = CGColorGetNumberOfComponents(v21);
  if (result < 3)
  {

    goto LABEL_18;
  }

  v28 = *(v23 + 16);
  if (!v28)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v28 == 1)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v28 >= 3)
  {
    v29 = *(v23 + 32) * 0.2126;
    v34 = vmulq_f64(*(v23 + 40), xmmword_217069740);
    v30 = v29 + v34.f64[0];

    v31 = v30 + v34.f64[1];
    v32 = sub_2170080D4();
    if (v31 >= 0.5)
    {
      v33 = MEMORY[0x277CDF3D0];
    }

    else
    {
      v33 = MEMORY[0x277CDF3C0];
    }

    (*(*(v32 - 8) + 104))(a2, *v33, v32);
    v26 = a2;
    v27 = 0;
    v25 = v32;
    return __swift_storeEnumTagSinglePayload(v26, v27, 1, v25);
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_216E925DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(char *, char *, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v74 = a5;
  v67 = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB858, &qword_217069828);
  MEMORY[0x28223BE20](v14 - 8);
  v80 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v79 = &v65 - v17;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB860, &unk_217069830);
  MEMORY[0x28223BE20](v70);
  v72 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v77 = &v65 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20, qword_217034D80);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v65 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB868, &qword_217069840);
  MEMORY[0x28223BE20](v24 - 8);
  v88 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v87 = &v65 - v27;
  v71 = a1;
  v73 = a2;
  v75 = a3;
  v76 = a6;
  v78 = a7;
  sub_216E92D8C(a4, &v65 - v27);
  v28 = type metadata accessor for TVMovieDetailHeaderLockup(0);
  sub_216683A80(a4 + *(v28 + 40), v23, &qword_27CABBE20, qword_217034D80);
  v29 = type metadata accessor for ModalPresentationDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v23, 1, v29) == 1)
  {
    sub_2166997CC(v23, &qword_27CABBE20, qword_217034D80);
    v81 = 0;
    v30 = 0;
LABEL_6:
    v82 = 0;
    KeyPath = 0;
    v83 = 0;
    v85 = 0;
    v69 = 0;
    v84 = 0;
    v68 = 0;
    v34 = 0;
    v36 = 0;
    v38 = 0;
    v40 = 0;
    goto LABEL_7;
  }

  v31 = *(v23 + 4);
  v30 = *(v23 + 5);
  sub_21700DF14();
  sub_216E993A4(v23, type metadata accessor for ModalPresentationDescriptor);
  if (!v30)
  {
    v81 = 0;
    goto LABEL_6;
  }

  KeyPath = swift_getKeyPath();
  v69 = sub_217009D54();
  v85 = swift_getKeyPath();
  LOBYTE(v90[0]) = 0;
  v68 = 0;
  v32 = sub_217009C94();
  sub_217007F24();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v84 = v32;
  v82 = MEMORY[0x277D84F90];
  v83 = 5;
  v81 = v31;
LABEL_7:
  v41 = v77;
  v42 = v71;
  v43 = v73;
  v44 = v75;
  v45 = v76;
  v46 = v78;
  sub_216E93484(a4, v71, v73, v75, v76, v77);
  v47 = sub_217009CA4();
  sub_217007F24();
  v48 = v41 + *(v70 + 36);
  *v48 = v47;
  *(v48 + 8) = v49;
  *(v48 + 16) = v50;
  *(v48 + 24) = v51;
  *(v48 + 32) = v52;
  *(v48 + 40) = 0;
  v53 = v79;
  sub_216E93554(a4, v74, v42, v43, v44, v45, v46, v79);
  v54 = v88;
  sub_216683A80(v87, v88, &qword_27CACB868, &qword_217069840);
  v55 = v72;
  sub_216683A80(v41, v72, &qword_27CACB860, &unk_217069830);
  v56 = v80;
  sub_216683A80(v53, v80, &qword_27CACB858, &qword_217069828);
  v57 = v54;
  v58 = v67;
  sub_216683A80(v57, v67, &qword_27CACB868, &qword_217069840);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB870, &qword_217069848);
  v60 = v59[12];
  __src[0] = v81;
  v66 = v30;
  __src[1] = v30;
  __src[2] = 0;
  __src[3] = v82;
  __src[4] = KeyPath;
  __src[5] = v83;
  v61 = v68;
  __src[6] = v68;
  __src[7] = v85;
  v62 = v69;
  __src[8] = v69;
  __src[9] = v84;
  __src[10] = v34;
  __src[11] = v36;
  __src[12] = v38;
  __src[13] = v40;
  LOBYTE(__src[14]) = 0;
  memcpy((v58 + v60), __src, 0x71uLL);
  v63 = v58 + v59[16];
  *v63 = 0x403E000000000000;
  *(v63 + 8) = 0;
  sub_216683A80(v55, v58 + v59[20], &qword_27CACB860, &unk_217069830);
  sub_216683A80(v56, v58 + v59[24], &qword_27CACB858, &qword_217069828);
  sub_216683A80(__src, v90, &qword_27CACB878, &qword_217069850);
  sub_2166997CC(v53, &qword_27CACB858, &qword_217069828);
  sub_2166997CC(v41, &qword_27CACB860, &unk_217069830);
  sub_2166997CC(v87, &qword_27CACB868, &qword_217069840);
  sub_2166997CC(v56, &qword_27CACB858, &qword_217069828);
  sub_2166997CC(v55, &qword_27CACB860, &unk_217069830);
  v90[0] = v81;
  v90[1] = v66;
  v90[2] = 0;
  v90[3] = v82;
  v90[4] = KeyPath;
  v90[5] = v83;
  v90[6] = v61;
  v90[7] = v85;
  v90[8] = v62;
  v90[9] = v84;
  v90[10] = v34;
  v90[11] = v36;
  v90[12] = v38;
  v90[13] = v40;
  v91 = 0;
  sub_2166997CC(v90, &qword_27CACB878, &qword_217069850);
  return sub_2166997CC(v88, &qword_27CACB868, &qword_217069840);
}

uint64_t sub_216E92D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB958, &qword_217069A10);
  MEMORY[0x28223BE20](v46);
  v38 = (&v33 - v3);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB960, &unk_217069A18);
  MEMORY[0x28223BE20](v44);
  v45 = &v33 - v4;
  v35 = sub_21700C4B4();
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_217007474();
  v37 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8, &qword_217017590);
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v36 = &v33 - v12;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB968, &qword_217069A28);
  MEMORY[0x28223BE20](v43);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v42 = &v33 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v33 - v18;
  v20 = type metadata accessor for Artwork(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TVMovieDetailHeaderLockup(0);
  sub_216683A80(a1 + *(v23 + 60), v19, &qword_27CAB6D60, &qword_217014E40);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_2166997CC(v19, &qword_27CAB6D60, &qword_217014E40);
    v24 = v38;
    sub_216E93624(a1, v38);
    KeyPath = swift_getKeyPath();
    v26 = v45;
    v27 = v24 + *(v46 + 36);
    *v27 = KeyPath;
    *(v27 + 1) = 1;
    v27[16] = 0;
    sub_216683A80(v24, v26, &qword_27CACB958, &qword_217069A10);
    swift_storeEnumTagMultiPayload();
    sub_216E99970();
    sub_216E99A28();
    sub_217009554();
    return sub_2166997CC(v24, &qword_27CACB958, &qword_217069A10);
  }

  else
  {
    sub_216E9982C(v19, v22, type metadata accessor for Artwork);
    (*(v34 + 16))(v6, v22, v35);
    sub_2170074A4();
    sub_2170073E4();
    v29 = *(v37 + 8);
    v30 = v40;
    v29(v8, v40);
    *(swift_allocObject() + 16) = xmmword_217016ED0;
    sub_2167C505C();
    v31 = v36;
    sub_2170073F4();

    v29(v11, v30);
    sub_21700B3B4();
    sub_217008BB4();
    (*(v39 + 32))(v14, v31, v41);
    memcpy(&v14[*(v43 + 36)], __src, 0x70uLL);
    v32 = v42;
    sub_2167C5834(v14, v42, &qword_27CACB968, &qword_217069A28);
    sub_216683A80(v32, v45, &qword_27CACB968, &qword_217069A28);
    swift_storeEnumTagMultiPayload();
    sub_216E99970();
    sub_216E99A28();
    sub_217009554();
    sub_2166997CC(v32, &qword_27CACB968, &qword_217069A28);
    return sub_216E993A4(v22, type metadata accessor for Artwork);
  }
}

uint64_t sub_216E93484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X8>)
{
  *a7 = sub_2170091A4();
  *(a7 + 8) = 0x4034000000000000;
  *(a7 + 16) = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB918, &qword_217069998);
  sub_216E93E94(a1, a2, a3, a4, a5, a7 + *(v13 + 44));
  v14 = sub_217009D54();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB920, &qword_2170699A0);
  v17 = (a7 + *(result + 36));
  *v17 = KeyPath;
  v17[1] = v14;
  return result;
}

uint64_t sub_216E93554@<X0>(uint64_t a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_2166D9530(&qword_27CACB888, &qword_27CACB880, &qword_2170698B8, MEMORY[0x277CE14C0]);
  *a8 = sub_2170091A4();
  *(a8 + 8) = 0x4034000000000000;
  *(a8 + 16) = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB890, &qword_2170698C0);
  return sub_216E94834(a3, a4, a5, a1, a2, a6, a7, a8 + *(v16 + 44));
}

uint64_t sub_216E93624@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB9A0, &qword_217069A48);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB9A8, &qword_217069A50);
  MEMORY[0x28223BE20](v8 - 8);
  v47 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v13 = type metadata accessor for TVMovieDetailHeaderLockup(0);
  v14 = (a1 + v13[7]);
  *(&v53 + 1) = v14[1];
  if (*(&v53 + 1))
  {
    *&v53 = *v14;
    sub_21700DF14();
    *(&v52 + 1) = sub_217009D44();
    *&v52 = swift_getKeyPath();
    *(&v51 + 1) = sub_21700AD34();
    *&v51 = swift_getKeyPath();
    v50 = MEMORY[0x277D84F90];
  }

  else
  {
    *&v53 = 0;
    v50 = 0;
    v51 = 0uLL;
    v52 = 0uLL;
  }

  v15 = (a1 + v13[8]);
  v16 = v15[1];
  v49 = v12;
  if (v16)
  {
    v17 = MEMORY[0x277D84F90];
    v18 = *v15;
    sub_21700DF14();
    v19 = sub_217009D34();
    v48 = a1;
    v20 = v19;
    KeyPath = swift_getKeyPath();
    v46 = v4;
    *&v63 = v18;
    *(&v63 + 1) = v16;
    v64 = 0;
    v65 = v17;
    *&v66 = KeyPath;
    *(&v66 + 1) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660, &qword_2170189A0);
    sub_2167C4CBC();
    sub_21700A964();
    a1 = v48;
    v12 = v49;

    v4 = v46;

    (*(v5 + 32))(v12, v7, v4);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  __swift_storeEnumTagSinglePayload(v12, v22, 1, v4);
  v23 = *(a1 + v13[9]);
  if (v23)
  {
    v48 = sub_216B80C28(v23);
    v46 = v24;
    v45 = sub_217009EA4();
    v25 = swift_getKeyPath();
    v44 = sub_21700AD34();
    v26 = swift_getKeyPath();
    v27 = MEMORY[0x277D84F90];
  }

  else
  {
    v48 = 0;
    v45 = 0;
    v46 = 0;
    v27 = 0;
    v25 = 0;
    v26 = 0;
    v44 = 0;
  }

  v41 = v27;
  v42 = v26;
  v43 = v25;
  v28 = v47;
  sub_216683A80(v12, v47, &qword_27CACB9A8, &qword_217069A50);
  v54 = v53;
  *&v55 = 0;
  *(&v55 + 1) = v50;
  v56 = v52;
  v57 = v51;
  v29 = v55;
  *a2 = v53;
  a2[1] = v29;
  v30 = v57;
  a2[2] = v56;
  a2[3] = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CACB9B0, &qword_217069A58);
  sub_216683A80(v28, a2 + *(v31 + 48), &qword_27CACB9A8, &qword_217069A50);
  v32 = (a2 + *(v31 + 64));
  v33 = v48;
  v34 = v46;
  *&v58 = v48;
  *(&v58 + 1) = v46;
  *&v59 = 0;
  *(&v59 + 1) = v27;
  *&v60 = v25;
  v35 = v45;
  *(&v60 + 1) = v45;
  *&v61 = v26;
  v36 = v44;
  *(&v61 + 1) = v44;
  v37 = v59;
  *v32 = v58;
  v32[1] = v37;
  v38 = v61;
  v32[2] = v60;
  v32[3] = v38;
  sub_216683A80(&v54, &v63, &qword_27CACA618, &qword_217069A60);
  sub_216683A80(&v58, &v63, &qword_27CACA618, &qword_217069A60);
  sub_2166997CC(v49, &qword_27CACB9A8, &qword_217069A50);
  v62[0] = v33;
  v62[1] = v34;
  v62[2] = 0;
  v62[3] = v41;
  v62[4] = v43;
  v62[5] = v35;
  v62[6] = v42;
  v62[7] = v36;
  sub_2166997CC(v62, &qword_27CACA618, &qword_217069A60);
  sub_2166997CC(v28, &qword_27CACB9A8, &qword_217069A50);
  v63 = v53;
  v64 = 0;
  v65 = v50;
  v66 = v52;
  v67 = v51;
  return sub_2166997CC(&v63, &qword_27CACA618, &qword_217069A60);
}

void *sub_216E93AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v34 = a3;
  v4 = sub_21700C4B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_217007474();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB838, &qword_217069808);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v33 - v16);
  *v17 = sub_21700B3B4();
  v17[1] = v18;
  v19 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB840, &qword_217069810) + 44);
  (*(v5 + 16))(v7, a2, v4);
  sub_217008444();
  sub_217007494();
  type metadata accessor for Artwork(0);
  sub_2170073E4();
  v20 = *(v9 + 8);
  v20(v11, v8);
  *(swift_allocObject() + 16) = xmmword_217016ED0;
  sub_2167C505C();
  sub_2170073F4();

  v20(v14, v8);
  v21 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8930, &qword_21701A680) + 36)];
  v22 = *(sub_217008B44() + 20);
  v23 = *MEMORY[0x277CE0118];
  v24 = sub_217009294();
  (*(*(v24 - 8) + 104))(&v21[v22], v23, v24);
  __asm { FMOV            V0.2D, #8.0 }

  *v21 = _Q0;
  *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0) + 36)] = 256;
  sub_21700B3B4();
  sub_217008BB4();
  v30 = v34;
  sub_2167C5834(v17, v34, &qword_27CACB838, &qword_217069808);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB848, &qword_217069818);
  return memcpy((v30 + *(v31 + 36)), __src, 0x70uLL);
}

uint64_t sub_216E93E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X8>)
{
  v35 = a4;
  v36 = a5;
  v33 = a2;
  v34 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB928, &qword_2170699A8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB930, &qword_2170699B0);
  MEMORY[0x28223BE20](v13 - 8);
  v39 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  v18 = (a1 + *(type metadata accessor for TVMovieDetailHeaderLockup(0) + 48));
  v19 = v18[1];
  if (v19)
  {
    v37 = *v18;
    KeyPath = swift_getKeyPath();

    v20 = MEMORY[0x277D84F90];
    v21 = 1;
  }

  else
  {
    v37 = 0;
    KeyPath = 0;
    v20 = 0;
    v21 = 0;
  }

  swift_bridgeObjectRetain_n();
  v22 = sub_216E94270(a1);
  if (v22)
  {
    v40 = v22;
    v36 = swift_getKeyPath();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB940, &unk_2170699E0);
    sub_2166D9530(&qword_27CACB948, &qword_27CACB940, &unk_2170699E0, MEMORY[0x277D83980]);
    sub_216E9A248(&qword_27CACB950, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
    sub_21700B154();
    (*(v10 + 32))(v17, v12, v9);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v32 = v17;
  __swift_storeEnumTagSinglePayload(v17, v23, 1, v9);
  v24 = v17;
  v25 = v39;
  sub_216683A80(v24, v39, &qword_27CACB930, &qword_2170699B0);
  v27 = v37;
  v26 = KeyPath;
  *a7 = v37;
  *(a7 + 8) = v19;
  *(a7 + 16) = 0;
  *(a7 + 24) = v20;
  *(a7 + 32) = v26;
  *(a7 + 40) = v21;
  *(a7 + 48) = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB938, &unk_2170699B8);
  sub_216683A80(v25, a7 + *(v28 + 48), &qword_27CACB930, &qword_2170699B0);
  v29 = a7 + *(v28 + 64);
  sub_216E998F0(v27, v19, 0, v20, v26);
  sub_216E99930(v27, v19, 0, v20, v26);
  *v29 = 0;
  *(v29 + 8) = 0;
  sub_2166997CC(v32, &qword_27CACB930, &qword_2170699B0);
  sub_2166997CC(v25, &qword_27CACB930, &qword_2170699B0);
  return sub_216E99930(v27, v19, 0, v20, v26);
}

uint64_t sub_216E94270(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE378, &qword_21702E840);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = &v32 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE380, &unk_2170699F0);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v32 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE388, &qword_21702E848);
  MEMORY[0x28223BE20](v6 - 8);
  v37 = &v32 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE390, &unk_217069A00);
  MEMORY[0x28223BE20](v8 - 8);
  v36 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE398, &qword_21702E850);
  MEMORY[0x28223BE20](v10 - 8);
  v35 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  v15 = sub_217005CC4();
  MEMORY[0x28223BE20](v15 - 8);
  v34 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_217005C64();
  v40 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + *(type metadata accessor for TVMovieDetailHeaderLockup(0) + 52));
  if (!v19)
  {
    return 0;
  }

  v20 = *(v19 + 16);
  v21 = MEMORY[0x277D84F90];
  if (v20)
  {
    v41 = MEMORY[0x277D84F90];
    sub_216AB9DD4(0, v20, 0);
    v21 = v41;
    v32 = v40 + 32;
    v22 = v19 + 40;
    v23 = v36;
    do
    {
      swift_bridgeObjectRetain_n();
      sub_217005CB4();
      sub_217005C74();
      v24 = sub_217009FC4();
      __swift_storeEnumTagSinglePayload(v23, 1, 1, v24);
      v25 = sub_217009FD4();
      __swift_storeEnumTagSinglePayload(v37, 1, 1, v25);
      v26 = sub_217009FE4();
      __swift_storeEnumTagSinglePayload(v38, 1, 1, v26);
      v27 = sub_217009FB4();
      __swift_storeEnumTagSinglePayload(v39, 1, 1, v27);
      sub_217009FF4();
      v28 = sub_21700A004();
      __swift_storeEnumTagSinglePayload(v14, 0, 1, v28);
      sub_216683A80(v14, v35, &qword_27CABE398, &qword_21702E850);
      sub_21697D480();
      sub_217005C84();

      sub_2166997CC(v14, &qword_27CABE398, &qword_21702E850);
      v41 = v21;
      v30 = *(v21 + 16);
      v29 = *(v21 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_216AB9DD4(v29 > 1, v30 + 1, 1);
        v21 = v41;
      }

      *(v21 + 16) = v30 + 1;
      (*(v40 + 32))(v21 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v30, v18, v33);
      v22 += 16;
      --v20;
    }

    while (v20);
  }

  return v21;
}

uint64_t sub_216E9475C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_217005C64();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  result = sub_21700A164();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_216E94834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(char *, char *, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB898, &qword_2170698C8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v29 - v20;
  sub_216E94A88(a4, &v33);
  v30 = v33;
  v22 = v35;
  v32 = v34;
  sub_216E94BBC(a5, v21);
  sub_216E959F8(a5, a1, a2, a3, a6, a7, &v33);
  v23 = v33;
  v24 = v35;
  v31 = v34;
  sub_216683A80(v21, v18, &qword_27CACB898, &qword_2170698C8);
  *a8 = v30;
  *(a8 + 8) = v32;
  *(a8 + 24) = v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB8A0, &qword_2170698D0);
  sub_216683A80(v18, a8 + v25[12], &qword_27CACB898, &qword_2170698C8);
  v26 = a8 + v25[16];
  *v26 = v23;
  *(v26 + 8) = v31;
  *(v26 + 24) = v24;
  v27 = a8 + v25[20];
  *v27 = 0;
  *(v27 + 8) = 0;

  sub_2166997CC(v21, &qword_27CACB898, &qword_2170698C8);

  sub_2166997CC(v18, &qword_27CACB898, &qword_2170698C8);
}

uint64_t sub_216E94A88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for TVMovieDetailHeaderLockup(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_216E997D0(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TVMovieDetailHeaderLockup);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  result = sub_216E9982C(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for TVMovieDetailHeaderLockup);
  *a2 = sub_216E99888;
  a2[1] = v8;
  a2[2] = sub_216E95C9C;
  a2[3] = 0;
  return result;
}

uint64_t sub_216E94BBC@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v92 = a1;
  v94 = a2;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB8B0, &qword_217069950);
  MEMORY[0x28223BE20](v85);
  v87 = &v73 - v2;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB8B8, &qword_217069958);
  MEMORY[0x28223BE20](v99);
  v88 = &v73 - v3;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB8C0, &qword_217069960);
  MEMORY[0x28223BE20](v86);
  v83 = &v73 - v4;
  v84 = sub_21700BA44();
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v78 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v5;
  MEMORY[0x28223BE20](v6);
  v81 = &v73 - v7;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB8C8, &qword_217069968);
  MEMORY[0x28223BE20](v93);
  v76 = &v73 - v8;
  v80 = sub_2170073D4();
  v75 = *(v80 - 8);
  v9 = *(v75 + 64);
  MEMORY[0x28223BE20](v80);
  v74 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v79 = &v73 - v11;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB8D0, &qword_217069970);
  MEMORY[0x28223BE20](v95);
  v97 = &v73 - v12;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB8D8, &qword_217069978);
  MEMORY[0x28223BE20](v90);
  v14 = &v73 - v13;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB8E0, &qword_217069980);
  MEMORY[0x28223BE20](v96);
  v89 = &v73 - v15;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB8E8, &unk_217069988);
  MEMORY[0x28223BE20](v98);
  v17 = &v73 - v16;
  v91 = sub_217006B84();
  v18 = *(v91 - 8);
  v19 = v18[8];
  MEMORY[0x28223BE20](v91);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v73 - v22;
  v24 = sub_2170067A4();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v28, v92, v24, v26);
  v29 = (*(v25 + 88))(v28, v24);
  if (v29 == *MEMORY[0x277D2A3B0])
  {
    (*(v25 + 96))(v28, v24);
    v30 = v18[4];
    v31 = v91;
    v30(v23, v28, v91);
    v32 = v18[2];
    v33 = v18;
    v73 = v18;
    v34 = v14;
    v35 = v31;
    v32(v20, v23, v31);
    v92 = sub_217006B54();
    v88 = v36;
    *(v17 + 5) = swift_getKeyPath();
    v17[80] = 0;
    v37 = *(v98 + 52);
    *&v17[v37] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
    swift_storeEnumTagMultiPayload();
    v38 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v39 = swift_allocObject();
    v30((v39 + v38), v20, v35);
    *v17 = sub_216E99740;
    *(v17 + 1) = v39;
    v17[16] = 0;
    v40 = v88;
    *(v17 + 3) = v92;
    *(v17 + 4) = v40;
    sub_216683A80(v17, v34, &qword_27CACB8E8, &unk_217069988);
    swift_storeEnumTagMultiPayload();
    sub_2166D9530(&qword_27CACB900, &qword_27CACB8E8, &unk_217069988, &unk_217069C0C);
    sub_2166D9530(&qword_27CACB908, &qword_27CACB8C8, &qword_217069968, &unk_217069C0C);
    v41 = v89;
    sub_217009554();
    sub_216683A80(v41, v97, &qword_27CACB8E0, &qword_217069980);
    swift_storeEnumTagMultiPayload();
    sub_216E994C0();
    sub_216E995A0();
    sub_217009554();
    sub_2166997CC(v41, &qword_27CACB8E0, &qword_217069980);
    sub_2166997CC(v17, &qword_27CACB8E8, &unk_217069988);
    return (v73[1])(v23, v91);
  }

  else
  {
    v43 = v93;
    if (v29 == *MEMORY[0x277D2A3B8])
    {
      (*(v25 + 96))(v28, v24);
      v44 = v81;
      v45 = v82;
      v46 = *(v82 + 32);
      v47 = v84;
      v46(v81, v28, v84);
      v48 = v78;
      (*(v45 + 16))(v78, v44, v47);
      v98 = sub_21700BA14();
      v93 = v49;
      KeyPath = swift_getKeyPath();
      v51 = v83;
      *(v83 + 5) = KeyPath;
      *(v51 + 80) = 0;
      v52 = *(v86 + 52);
      *(v51 + v52) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
      swift_storeEnumTagMultiPayload();
      v53 = (*(v45 + 80) + 16) & ~*(v45 + 80);
      v54 = swift_allocObject();
      v46((v54 + v53), v48, v47);
      *v51 = sub_216E99658;
      *(v51 + 8) = v54;
      *(v51 + 16) = 0;
      v55 = v93;
      *(v51 + 24) = v98;
      *(v51 + 32) = v55;
      sub_216683A80(v51, v87, &qword_27CACB8C0, &qword_217069960);
      swift_storeEnumTagMultiPayload();
      sub_2166D9530(&qword_27CACB8F0, &qword_27CACB8C0, &qword_217069960, &unk_217069C0C);
      v56 = v88;
      sub_217009554();
      sub_216683A80(v56, v97, &qword_27CACB8B8, &qword_217069958);
      swift_storeEnumTagMultiPayload();
      sub_216E994C0();
      sub_216E995A0();
      sub_217009554();
      sub_2166997CC(v56, &qword_27CACB8B8, &qword_217069958);
      sub_2166997CC(v51, &qword_27CACB8C0, &qword_217069960);
      return (*(v45 + 8))(v44, v47);
    }

    else if (v29 == *MEMORY[0x277D2A458])
    {
      (*(v25 + 96))(v28, v24);
      v57 = v75;
      v92 = *(v75 + 32);
      v58 = v79;
      v59 = v28;
      v60 = v80;
      v92(v79, v59, v80);
      v61 = v74;
      (*(v57 + 16))(v74, v58, v60);
      v91 = sub_217007394();
      v88 = v62;
      v63 = swift_getKeyPath();
      v64 = v76;
      *(v76 + 5) = v63;
      *(v64 + 80) = 0;
      v65 = *(v43 + 52);
      *(v64 + v65) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
      swift_storeEnumTagMultiPayload();
      v66 = (*(v57 + 80) + 16) & ~*(v57 + 80);
      v67 = swift_allocObject();
      v68 = v61;
      v69 = v80;
      v92((v67 + v66), v68, v80);
      *v64 = sub_216E996B0;
      *(v64 + 8) = v67;
      *(v64 + 16) = 0;
      v70 = v88;
      *(v64 + 24) = v91;
      *(v64 + 32) = v70;
      sub_216683A80(v64, v14, &qword_27CACB8C8, &qword_217069968);
      swift_storeEnumTagMultiPayload();
      sub_2166D9530(&qword_27CACB900, &qword_27CACB8E8, &unk_217069988, &unk_217069C0C);
      sub_2166D9530(&qword_27CACB908, &qword_27CACB8C8, &qword_217069968, &unk_217069C0C);
      v71 = v89;
      sub_217009554();
      sub_216683A80(v71, v97, &qword_27CACB8E0, &qword_217069980);
      swift_storeEnumTagMultiPayload();
      sub_216E994C0();
      sub_216E995A0();
      sub_217009554();
      sub_2166997CC(v71, &qword_27CACB8E0, &qword_217069980);
      sub_2166997CC(v64, &qword_27CACB8C8, &qword_217069968);
      return (*(v57 + 8))(v79, v69);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_2166D9530(&qword_27CACB8F0, &qword_27CACB8C0, &qword_217069960, &unk_217069C0C);
      v72 = v88;
      sub_217009554();
      sub_216683A80(v72, v97, &qword_27CACB8B8, &qword_217069958);
      swift_storeEnumTagMultiPayload();
      sub_216E994C0();
      sub_216E995A0();
      sub_217009554();
      sub_2166997CC(v72, &qword_27CACB8B8, &qword_217069958);
      return (*(v25 + 8))(v28, v24);
    }
  }
}

uint64_t sub_216E959F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (**a7)()@<X8>)
{
  v21 = a6;
  v22 = a4;
  v12 = sub_2170067A4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  (*(v13 + 16))(&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12, v15);
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = swift_allocObject();
  v18 = v21;
  *(v17 + 16) = a5;
  *(v17 + 24) = v18;
  (*(v13 + 32))(v17 + v16, &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v19 = (v17 + ((v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = a2;
  v19[1] = a3;
  v19[2] = v22;
  *a7 = sub_216E99208;
  a7[1] = v17;
  a7[2] = sub_216E96364;
  a7[3] = 0;
}

uint64_t sub_216E95B88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for TVMovieDetailHeaderLockup(0);
  sub_216683A80(a1 + *(v4 + 24), a2, &qword_27CAB6DB0, &qword_217016C00);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3860, &qword_217048BE0);
  v6 = v5[11];
  v7 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(a2 + v6, 1, 1, v7);
  v8 = v5[12];
  *(a2 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v9 = a2 + v5[13];
  result = swift_getKeyPath();
  *v9 = result;
  v9[40] = 0;
  a2[7] = 0;
  a2[8] = 0;
  a2[5] = sub_216E95C80;
  a2[6] = 0;
  return result;
}

uint64_t sub_216E95CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v21 = a5;
  v22 = a6;
  v23 = a4;
  v24 = a7;
  v10 = sub_2170067A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = sub_217006784();
  v15 = v14;
  (*(v11 + 16))(&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = swift_allocObject();
  v18 = v22;
  *(v17 + 16) = v21;
  *(v17 + 24) = v18;
  (*(v11 + 32))(v17 + v16, &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v19 = (v17 + ((v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = a2;
  v19[1] = a3;
  v19[2] = v23;
  sub_216E90DD8(v13, v15, sub_216E99324, v17, sub_216E962D0, 0, v24);
}

uint64_t sub_216E95E54@<X0>(uint64_t a1@<X0>, void (**a2)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)@<X8>)
{
  v42 = a1;
  v43 = a2;
  v2 = sub_2170067A4();
  v39 = *(v2 - 8);
  v40 = v2;
  v41 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v38 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v36);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - v7;
  v9 = type metadata accessor for TVMovieDetailHeaderLockup(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - v14;
  v16 = type metadata accessor for MenuConfiguration(0);
  v17 = (v16 - 8);
  v37 = *(v16 - 8);
  v18 = *(v37 + 64);
  MEMORY[0x28223BE20](v16);
  v35 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v34 - v20;
  sub_216DEA308();
  sub_216683A80(&v15[*(v10 + 80)], v8, &qword_27CAB6A00, &unk_217016B60);
  sub_216E993A4(v15, type metadata accessor for TVMovieDetailHeaderLockup);
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  sub_216DEA308();
  sub_216E993A4(v12, type metadata accessor for TVMovieDetailHeaderLockup);
  swift_storeEnumTagMultiPayload();
  sub_216683A80(v8, v21, &qword_27CAB6A00, &unk_217016B60);
  sub_216E997D0(v5, &v21[v17[7]], type metadata accessor for MenuContext);
  v22 = &v21[v17[8]];
  *v22 = 0;
  *(v22 + 1) = 0;
  *&v21[v17[9]] = 0;
  sub_216683A80(v44, &v21[v17[10]], &qword_27CAB6DB0, &qword_217016C00);
  sub_216E993A4(v5, type metadata accessor for MenuContext);
  sub_2166997CC(v44, &qword_27CAB6DB0, &qword_217016C00);
  sub_2166997CC(v8, &qword_27CAB6A00, &unk_217016B60);
  v23 = &v21[v17[11]];
  *v23 = 0;
  *(v23 + 1) = 0xE000000000000000;
  v25 = v38;
  v24 = v39;
  v26 = v40;
  (*(v39 + 16))(v38, v42, v40);
  v27 = v35;
  sub_216E9982C(v21, v35, type metadata accessor for MenuConfiguration);
  v28 = v24;
  v29 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v30 = (v41 + *(v37 + 80) + v29) & ~*(v37 + 80);
  v31 = swift_allocObject();
  (*(v28 + 32))(v31 + v29, v25, v26);
  result = sub_216E9982C(v27, v31 + v30, type metadata accessor for MenuConfiguration);
  v33 = v43;
  *v43 = sub_216E993F8;
  v33[1] = v31;
  return result;
}

double sub_216E962E8@<D0>(uint64_t a3@<X8>)
{
  v4 = sub_21700ADB4();
  sub_21700B3B4();
  sub_2170083C4();
  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  result = *&v10;
  *(a3 + 40) = v10;
  return result;
}

uint64_t sub_216E9636C@<X0>(uint64_t *a1@<X8>, __int16 a2@<W0>)
{
  result = sub_216983738(a2);
  *a1 = result;
  a1[1] = v4;
  v5 = MEMORY[0x277D84F90];
  a1[2] = 0;
  a1[3] = v5;
  return result;
}

uint64_t sub_216E963A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  result = sub_216E90E78(*a1, *(a2 + 16), *(a2 + 24), a3);
  *a4 = result;
  a4[1] = v6;
  a4[2] = v7;
  return result;
}

unint64_t sub_216E963FC()
{
  result = qword_27CACB7C8;
  if (!qword_27CACB7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB790, &qword_2170697A0);
    sub_216E964B4();
    sub_2166D9530(&qword_27CACB7E8, &qword_27CACB7F0, &qword_2170697D8, MEMORY[0x277CE06A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACB7C8);
  }

  return result;
}

unint64_t sub_216E964B4()
{
  result = qword_27CACB7D0;
  if (!qword_27CACB7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB7C0, &qword_2170697C8);
    sub_2166D9530(&qword_27CACB7D8, &qword_27CACB7E0, &qword_2170697D0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACB7D0);
  }

  return result;
}

unint64_t sub_216E9657C()
{
  result = qword_27CACB810;
  if (!qword_27CACB810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB808, &qword_2170697E8);
    sub_2166D9530(&qword_27CACB818, &qword_27CACB820, &qword_2170697F0, MEMORY[0x277CE1198]);
    sub_2167B8760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACB810);
  }

  return result;
}

void *sub_216E96634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_11_2();

  return sub_216E93AC0(a1, v2 + v6, a2);
}

uint64_t sub_216E966AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v27 = a8;
  v28 = a4;
  v25 = a2;
  v26 = a3;
  v29 = a9;
  v38 = a5;
  v39 = sub_217009354();
  v40 = a7;
  v41 = sub_216E9A248(&qword_27CAB9D40, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7670, &qword_217018330);
  sub_2170089F4();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7638, &unk_217017490);
  sub_2170089F4();
  swift_getTupleTypeMetadata2();
  v13 = sub_21700B4E4();
  swift_getWitnessTable();
  v14 = sub_21700B084();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v24 - v19;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v33 = v27;
  v34 = a1;
  v35 = v25;
  v36 = v26;
  v37 = v28;
  sub_216E69898(v13);
  sub_21700B074();
  WitnessTable = swift_getWitnessTable();
  sub_2166C24DC(v17, v14, WitnessTable);
  v22 = *(v15 + 8);
  v22(v17, v14);
  sub_2166C24DC(v20, v14, WitnessTable);
  return (v22)(v20, v14);
}

uint64_t sub_216E96994@<X0>(void (*a1)(double)@<X0>, double (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, char *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v72 = a7;
  v67 = a3;
  v68 = a2;
  v59 = a1;
  v73 = a8;
  v63 = a5;
  v71 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v64 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7670, &qword_217018330);
  v62 = sub_2170089F4();
  v69 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = v55 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7638, &unk_217017490);
  v66 = sub_2170089F4();
  v70 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v61 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v65 = v55 - v14;
  v15 = sub_217009354();
  WitnessTable = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *(a4 - 1);
  MEMORY[0x28223BE20](v18);
  v20 = v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_216E9A248(&qword_27CAB9D40, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
  v80 = a4;
  v81 = v15;
  v82 = a6;
  v83 = v21;
  v55[1] = MEMORY[0x277CDE668];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v56 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v24 = v55 - v23;
  v74 = sub_2170089F4();
  v76 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v26 = v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v27);
  v75 = v55 - v29;
  v59(v28);
  sub_217009344();
  sub_21700A364();
  (*(WitnessTable + 8))(v17, v15);
  (*(v57 + 8))(v20, a4);
  sub_217009D44();
  v80 = a4;
  v81 = v15;
  v82 = a6;
  v83 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21700A974();

  (*(v56 + 8))(v24, OpaqueTypeMetadata2);
  v31 = MEMORY[0x277CE0868];
  v32 = sub_2166D9530(&qword_280E2A720, &qword_27CAB7670, &qword_217018330, MEMORY[0x277CE0868]);
  v79[6] = OpaqueTypeConformance2;
  v79[7] = v32;
  v33 = v74;
  WitnessTable = swift_getWitnessTable();
  sub_2166C24DC(v26, v33, WitnessTable);
  v34 = *(v76 + 8);
  v57 = v76 + 8;
  v59 = v34;
  v35 = (v34)(v26, v33);
  v36 = v64;
  v68(v35);
  sub_217009E84();
  v37 = v60;
  v38 = v63;
  v39 = v72;
  sub_21700A974();

  (*(v71 + 8))(v36, v38);
  v79[4] = v39;
  v79[5] = v32;
  v40 = v62;
  v41 = swift_getWitnessTable();
  v42 = v61;
  sub_21700ABB4();
  (*(v69 + 8))(v37, v40);
  v43 = sub_2166D9530(&qword_280E2A6F8, &qword_27CAB7638, &unk_217017490, v31);
  v79[2] = v41;
  v79[3] = v43;
  v44 = v66;
  v45 = swift_getWitnessTable();
  v46 = v65;
  sub_2166C24DC(v42, v44, v45);
  v47 = v70;
  v48 = *(v70 + 8);
  v48(v42, v44);
  v49 = v26;
  v50 = v26;
  v51 = v74;
  v52 = v75;
  (*(v76 + 16))(v50, v75, v74);
  v80 = v49;
  (*(v47 + 16))(v42, v46, v44);
  v81 = v42;
  v79[0] = v51;
  v79[1] = v44;
  v77 = WitnessTable;
  v78 = v45;
  sub_216984F84(&v80, 2, v79);
  v48(v46, v44);
  v53 = v59;
  (v59)(v52, v51);
  v48(v42, v44);
  return (v53)(v49, v51);
}

uint64_t sub_216E97234(uint64_t a1)
{
  sub_21700BE44();
  sub_21700BE34();
  sub_21700BA44();
  v1 = sub_21700BD14();

  return v1;
}

uint64_t sub_216E97294(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  sub_21700BE44();
  sub_21700BE34();
  a2(0);
  sub_216E9A248(a3, a4, a5);
  v9 = sub_21700BD14();

  return v9;
}

uint64_t sub_216E97328@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v5 = *(a1 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  result = sub_216E97508(v7);
  if (result)
  {
    v23 = *(v5 + 16);
    v23(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
    v9 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v10 = swift_allocObject();
    v11 = a1[2];
    v20 = a1[3];
    v12 = v20;
    v21 = v11;
    *(v10 + 16) = v11;
    *(v10 + 24) = v12;
    v19 = a1[4];
    *(v10 + 32) = v19;
    v22 = a2;
    v13 = *(v5 + 32);
    v13(v10 + v9, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
    v23(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
    v14 = swift_allocObject();
    v15 = v20;
    *(v14 + 16) = v21;
    *(v14 + 24) = v15;
    *(v14 + 32) = v19;
    result = (v13)(v14 + v9, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
    a2 = v22;
    v16 = sub_216E9A138;
    v17 = sub_216E99F7C;
  }

  else
  {
    v17 = 0;
    v10 = 0;
    v16 = 0;
    v14 = 0;
  }

  *a2 = v17;
  a2[1] = v10;
  a2[2] = v16;
  a2[3] = v14;
  return result;
}

BOOL sub_216E97508(uint64_t a1)
{
  v1 = sub_21700BDB4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700BE14();
  swift_getWitnessTable();
  sub_2170081B4();
  sub_21700BE04();

  v5 = (*(v2 + 88))(v4, v1);
  v6 = v5 == *MEMORY[0x277D2B120];
  if (v5 != *MEMORY[0x277D2B120] && v5 != *MEMORY[0x277D2B128] && v5 == *MEMORY[0x277D2B118])
  {
    return 1;
  }

  (*(v2 + 8))(v4, v1);
  return v6;
}

uint64_t sub_216E9769C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for MovieLibraryButton(0, a2, a3, a4);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v16[-v11];
  (*(v9 + 16))(&v16[-v11], a1, v8, v10);
  v13 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a2;
  *(v14 + 3) = a3;
  *(v14 + 4) = a4;
  (*(v9 + 32))(&v14[v13], v12, v8);
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3850, &unk_217048BD0);
  sub_216B54B6C();
  return sub_21700AF14();
}

uint64_t sub_216E97864(uint64_t a1)
{
  v2 = sub_21700BDB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700BE14();
  swift_getWitnessTable();
  sub_2170081B4();
  sub_21700BE04();

  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D2B120])
  {
    sub_216E97F50(a1, MEMORY[0x277D2B100], &qword_27CABA7B0, &qword_217021070, MEMORY[0x277D2A498], MEMORY[0x277D2B0F8], 6579297, 0xE300000000000000, 0, "Unable to add movie to library, id: %{public}s status: %{public}s", v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else if (v6 != *MEMORY[0x277D2B128] && v6 == *MEMORY[0x277D2B118])
  {
    return sub_216E97F50(a1, MEMORY[0x277D2AF90], &qword_27CABA788, &qword_217021040, MEMORY[0x277D2A4A0], MEMORY[0x277D2AF88], 0x6574656C6564, 0xE600000000000000, 1, "Unable to remove movie from library, id: %{public}s status: %{public}s", v8, v9, v10, v11, v12, v13, v14, v15);
  }

  return (*(v3 + 8))(v5, v2);
}

double sub_216E97AEC@<D0>(uint64_t a1@<X8>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for MovieLibraryButton(0, a2, a3, a4);
  sub_216E97B78(v5);
  v6 = sub_21700ADB4();
  sub_21700B3B4();
  sub_2170083C4();
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  result = *&v12;
  *(a1 + 40) = v12;
  return result;
}

uint64_t sub_216E97B78(uint64_t a1)
{
  v1 = sub_21700BDB4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700BE14();
  swift_getWitnessTable();
  sub_2170081B4();
  sub_21700BE04();

  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == *MEMORY[0x277D2B120])
  {
    v6 = 1937075312;
  }

  else
  {
    if (v5 != *MEMORY[0x277D2B128] && v5 == *MEMORY[0x277D2B118])
    {
      return 0x72616D6B63656863;
    }

    v6 = 0;
  }

  (*(v2 + 8))(v4, v1);
  return v6;
}

uint64_t sub_216E97D38@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for MovieLibraryButton(0, a2, a3, a4);
  result = sub_216E97D78(v5);
  *a1 = result;
  a1[1] = v7;
  v8 = MEMORY[0x277D84F90];
  a1[2] = 0;
  a1[3] = v8;
  return result;
}

uint64_t sub_216E97D78(uint64_t a1)
{
  v1 = sub_21700BDB4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700BE14();
  swift_getWitnessTable();
  sub_2170081B4();
  sub_21700BE04();

  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == *MEMORY[0x277D2B120])
  {
    v6 = sub_216983738(9);
    (*(v2 + 8))(v4, v1);
  }

  else if (v5 == *MEMORY[0x277D2B128] || v5 != *MEMORY[0x277D2B118])
  {
    (*(v2 + 8))(v4, v1);
    return 0;
  }

  else
  {
    return sub_216983738(13);
  }

  return v6;
}

uint64_t sub_216E97F50(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, int a9, const char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  *(&v186 + 1) = a8;
  *&v186 = a7;
  v219 = a6;
  v218 = a5;
  v23 = v19;
  v220 = a1;
  OUTLINED_FUNCTION_117();
  v211 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v27);
  v28 = sub_2170075A4();
  v29 = OUTLINED_FUNCTION_0(v28, v230);
  v201 = v30;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6_0();
  v200 = v31;
  v32 = v18[4];
  v33 = v18[5];
  v34 = v18[3];
  v222 = v33;
  v196 = type metadata accessor for LibraryActionType(0, v34, v32, v33);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_105();
  v37 = OUTLINED_FUNCTION_8_0(v36);
  v214 = v32;
  v38 = type metadata accessor for LibraryAction(v37, v34, v32, v33);
  OUTLINED_FUNCTION_0(v38, v228);
  v198 = v39;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v41);
  v42 = sub_21700CFB4();
  v43 = OUTLINED_FUNCTION_0(v42, &v223);
  v192 = v44;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v45);
  v46 = sub_217005EF4();
  v47 = OUTLINED_FUNCTION_0(v46, &v214);
  v180 = v48;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v49);
  v50 = sub_21700D704();
  v51 = OUTLINED_FUNCTION_0(v50, &v220);
  v189 = v52;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_47_1();
  v208 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  v56 = OUTLINED_FUNCTION_36(v55);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v58);
  v59 = sub_21700D284();
  v60 = OUTLINED_FUNCTION_0(v59, &v225);
  v194 = v61;
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_47_1();
  v64 = OUTLINED_FUNCTION_8_0(v63);
  v65 = a2(v64);
  OUTLINED_FUNCTION_0(v65, &v235);
  v217 = v66;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_105();
  v215 = v68;
  v224 = *(v34 - 8);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v70);
  v72 = &v179 - v71;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_1();
  v225 = v73;
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v76);
  v78 = &v179 - v77;
  MEMORY[0x28223BE20](v79);
  v81 = &v179 - v80;
  sub_21700BE44();
  sub_21700BE34();
  v82 = *v23;
  v83 = *(v23 + 1);
  v221 = v23;
  LODWORD(v23) = *(v23 + 16);
  v84 = sub_21700BE14();
  WitnessTable = swift_getWitnessTable();
  v206 = v82;
  v205 = v83;
  v204 = v23;
  v213 = v84;
  v210 = WitnessTable;
  sub_2170081B4();
  sub_21700BDF4();

  v87 = v215;
  v218(v86);
  v88 = v216;
  sub_21700BC04();
  v89 = v223;
  v90 = v225;

  (*(v217 + 1))(v87, v88);
  v91 = *(v224 + 8);
  v217 = v72;
  v219 = v34;
  v224 += 8;
  v218 = v91;
  (v91)(v72, v34);
  v92 = *(v90 + 16);
  v92(v78, v81, v89);
  LODWORD(v34) = (*(v90 + 88))(v78, v89);
  LODWORD(v84) = *MEMORY[0x277D2B048];
  v95 = *(v90 + 8);
  v93 = v90 + 8;
  v94 = v95;
  v225 = v93;
  (v95)(v78, v89);
  if (v34 == v84)
  {
    sub_216C0C534(&v229);
    v203 = v81;
    if (v231)
    {
      v216 = v94;
      LODWORD(v217) = a9;
      sub_2167B8EF0(&v229, v233);
      OUTLINED_FUNCTION_14_79();
      sub_2170081B4();
      sub_21700BDF4();

      OUTLINED_FUNCTION_20_64();
      OUTLINED_FUNCTION_30_51(&v236);
      v96 = sub_21700B934();
      v98 = v97;
      OUTLINED_FUNCTION_19_59();
      v99();
      v100 = v207;
      v101 = v185;
      __swift_storeEnumTagSinglePayload(v207, 1, 1, v185);
      sub_21700D6F4();
      v102 = MEMORY[0x277D837D0];
      v231 = MEMORY[0x277D837D0];
      v229 = v186;
      sub_2166EF9C4(&v229, &v227);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_24_41();
      sub_2166EF9D4();
      v103 = v226;
      v104 = v184;
      sub_216683A80(v100, v184, &qword_27CABA820, &unk_217018CE0);
      if (__swift_getEnumTagSinglePayload(v104, 1, v101) == 1)
      {
        sub_2166997CC(v104, &qword_27CABA820, &unk_217018CE0);
      }

      else
      {
        v143 = v180;
        v144 = v179;
        (*(v180 + 32))(v179, v104, v101);
        v145 = sub_217005DE4();
        v231 = v102;
        *&v229 = v145;
        *(&v229 + 1) = v146;
        sub_2166EF9C4(&v229, &v227);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_24_41();
        sub_2166EF9D4();
        v103 = v226;
        (*(v143 + 8))(v144, v101);
      }

      if (qword_280E46040 != -1)
      {
        swift_once();
      }

      v147 = sub_21700CF84();
      v148 = __swift_project_value_buffer(v147, qword_280E73DB0);
      v149 = v191;
      MEMORY[0x21CE9DD70](v96, v98, 0x6E6F74747562, 0xE600000000000000, v103, v148);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
      v150 = v192;
      v151 = (*(v192 + 80) + 32) & ~*(v192 + 80);
      v152 = swift_allocObject();
      *(v152 + 16) = xmmword_217013DA0;
      v153 = v152 + v151;
      v154 = v193;
      (*(v150 + 16))(v153, v149, v193);
      v155 = v189;
      v156 = v208;
      v157 = v190;
      (*(v189 + 16))(v187, v208, v190);
      v158 = v209;
      sub_21700D244();
      (*(v150 + 8))(v149, v154);
      (*(v155 + 8))(v156, v157);
      sub_2166997CC(v207, &qword_27CABA820, &unk_217018CE0);
      OUTLINED_FUNCTION_14_79();
      sub_2170081B4();
      sub_21700BDF4();

      swift_storeEnumTagMultiPayload();
      v159 = v194;
      v160 = v195;
      (*(v194 + 16))(v188, v158, v195);
      v161 = v197;
      v162 = OUTLINED_FUNCTION_8();
      sub_2167A7DDC(v162, v163, v219, v214, v222, v164);
      __swift_project_boxed_opaque_existential_1(v233, v233[3]);
      v165 = v199;
      v231 = v199;
      v232 = swift_getWitnessTable();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v229);
      v167 = v198;
      v168 = (*(v198 + 16))(boxed_opaque_existential_1, v161, v165);
      v169 = v200;
      sub_216C0C548(v168, v170, v171, v172, v173, v174, v175, v176, v179, v180, v181, v182, v183, v184, v185, v186, *(&v186 + 1), v187, v188, v189);
      sub_217007544();
      (*(v201 + 8))(v169, v202);
      (*(v167 + 8))(v161, v165);
      (*(v159 + 8))(v209, v160);
      v177 = OUTLINED_FUNCTION_18_69();
      v216(v177);
      __swift_destroy_boxed_opaque_existential_1Tm(&v229);
      return __swift_destroy_boxed_opaque_existential_1Tm(v233);
    }

    else
    {
      sub_2166997CC(&v229, &qword_27CAB7310, &unk_2170170F0);
      if (qword_27CAB61B8 != -1)
      {
        OUTLINED_FUNCTION_11_87(&qword_27CAB61B8);
      }

      v128 = sub_217007CA4();
      __swift_project_value_buffer(v128, qword_27CACB778);
      v129 = v211;
      v130 = OUTLINED_FUNCTION_26_49();
      v131(v130);
      v132 = sub_217007C84();
      v133 = sub_21700ED84();
      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v216 = v94;
        v136 = v135;
        v233[0] = v135;
        *v134 = 136446210;
        OUTLINED_FUNCTION_23_56();
        sub_21700BDF4();

        OUTLINED_FUNCTION_20_64();
        sub_21700B934();
        OUTLINED_FUNCTION_19_59();
        v137();
        (*(v129 + 8))(v93, v220);
        v138 = sub_21700BA54();
        v140 = v139;

        v141 = sub_2166A85FC(v138, v140, v233);

        *(v134 + 4) = v141;
        __swift_destroy_boxed_opaque_existential_1Tm(v136);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_6();

        v142 = OUTLINED_FUNCTION_18_69();
        return (v216)(v142);
      }

      else
      {
        (*(v129 + 8))(v93, v78);

        v178 = OUTLINED_FUNCTION_18_69();
        return (v94)(v178);
      }
    }
  }

  else
  {
    v105 = v81;
    v106 = v221;
    if (qword_27CAB61B8 != -1)
    {
      OUTLINED_FUNCTION_11_87(&qword_27CAB61B8);
    }

    v107 = sub_217007CA4();
    __swift_project_value_buffer(v107, qword_27CACB778);
    v108 = v211;
    v109 = OUTLINED_FUNCTION_26_49();
    v110(v109);
    v111 = OUTLINED_FUNCTION_30_51(&v234);
    v92(v111, v105, v89);
    v112 = sub_217007C84();
    LODWORD(v222) = sub_21700ED84();
    if (os_log_type_enabled(v112, v222))
    {
      v221 = a10;
      v113 = swift_slowAlloc();
      v216 = swift_slowAlloc();
      v233[0] = v216;
      *v113 = 136446466;
      OUTLINED_FUNCTION_23_56();
      v215 = v112;
      sub_21700BDF4();

      OUTLINED_FUNCTION_20_64();
      v203 = v105;
      sub_21700B934();
      OUTLINED_FUNCTION_19_59();
      v114();
      (*(v108 + 8))(v93, v78);
      v115 = sub_21700BA54();
      v117 = v116;

      v118 = sub_2166A85FC(v115, v117, v233);

      *(v113 + 4) = v118;
      *(v113 + 12) = 2082;
      v119 = OUTLINED_FUNCTION_30_51(&v211);
      v120 = v212;
      v121 = v223;
      v92(v119, v212, v223);
      v122 = sub_21700E594();
      v124 = v123;
      (v94)(v120, v121);
      v125 = sub_2166A85FC(v122, v124, v233);

      *(v113 + 14) = v125;
      v126 = v215;
      _os_log_impl(&dword_216679000, v215, v222, v221, v113, 0x16u);
      OUTLINED_FUNCTION_30_51(&v235);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();

      return (v94)(v203, v121);
    }

    else
    {
      (*(v108 + 8))(v93, v78);

      (v94)(v106, v89);
      return (v94)(v105, v89);
    }
  }
}

uint64_t sub_216E99188()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CACB778);
  __swift_project_value_buffer(v0, qword_27CACB778);
  return sub_217007C94();
}

uint64_t sub_216E99208()
{
  OUTLINED_FUNCTION_37_36();
  v0 = sub_2170067A4();
  OUTLINED_FUNCTION_2(v0);
  v2 = OUTLINED_FUNCTION_9_101(*(v1 + 80));

  return sub_216E95CA4(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_15Tm_0()
{
  sub_2170067A4();
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_216E99324()
{
  OUTLINED_FUNCTION_37_36();
  v0 = sub_2170067A4();
  OUTLINED_FUNCTION_2(v0);
  v2 = OUTLINED_FUNCTION_9_101(*(v1 + 80));

  return sub_216E95E54(v2, v3);
}

uint64_t sub_216E993A4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_216E993F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = sub_2170067A4();
  OUTLINED_FUNCTION_2(v21);
  v23 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v25 = *(v24 + 64);
  v26 = type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_36(v26);
  v34 = v20 + ((v23 + v25 + *(v33 + 80)) & ~*(v33 + 80));

  sub_2169BDF30(v20 + v23, v34, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

unint64_t sub_216E994C0()
{
  result = qword_27CACB8F8;
  if (!qword_27CACB8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB8E0, &qword_217069980);
    sub_2166D9530(&qword_27CACB900, &qword_27CACB8E8, &unk_217069988, &unk_217069C0C);
    sub_2166D9530(&qword_27CACB908, &qword_27CACB8C8, &qword_217069968, &unk_217069C0C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACB8F8);
  }

  return result;
}

unint64_t sub_216E995A0()
{
  result = qword_27CACB910;
  if (!qword_27CACB910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB8B8, &qword_217069958);
    sub_2166D9530(&qword_27CACB8F0, &qword_27CACB8C0, &qword_217069960, &unk_217069C0C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACB910);
  }

  return result;
}

uint64_t sub_216E99658()
{
  v1 = sub_21700BA44();
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_11_2();

  return sub_216E97234(v0 + v2);
}

uint64_t sub_216E996B0()
{
  v1 = sub_2170073D4();
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_11_2();
  return sub_216E97294(v0 + v2, MEMORY[0x277D2ADE8], &qword_27CABF660, MEMORY[0x277D2ADE8], MEMORY[0x277D2ADD8]);
}

uint64_t sub_216E99740()
{
  v1 = sub_217006B84();
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_11_2();
  return sub_216E97294(v0 + v2, MEMORY[0x277D2A7C8], &qword_27CABF6C8, MEMORY[0x277D2A7C8], MEMORY[0x277D2A7B8]);
}

uint64_t sub_216E997D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216E9982C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216E99888@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for TVMovieDetailHeaderLockup(0);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_11_2();

  return sub_216E95B88(v1 + v4, a1);
}

uint64_t sub_216E998F0(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_2167770D0(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_216E99930(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_2167C4DF0(result, a2, a3, a4);
  }

  return result;
}

unint64_t sub_216E99970()
{
  result = qword_27CACB970;
  if (!qword_27CACB970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB968, &qword_217069A28);
    sub_2167C505C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACB970);
  }

  return result;
}

unint64_t sub_216E99A28()
{
  result = qword_27CACB978;
  if (!qword_27CACB978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB958, &qword_217069A10);
    sub_216E99AE0();
    sub_2166D9530(&qword_280E2A6F8, &qword_27CAB7638, &unk_217017490, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACB978);
  }

  return result;
}

unint64_t sub_216E99AE0()
{
  result = qword_27CACB980;
  if (!qword_27CACB980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB988, &qword_217069A30);
    sub_2166D9530(&qword_27CACB990, &qword_27CACB998, &unk_217069A38, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACB980);
  }

  return result;
}

void sub_216E99B90(uint64_t a1)
{
  sub_21700BE14();
  swift_getWitnessTable();
  sub_2170081D4();
  if (v1 <= 0x3F)
  {
    sub_21680D428(319);
    if (v2 <= 0x3F)
    {
      sub_2167EE974(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_216E99CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_216E99D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_216E99D54()
{
  result = qword_27CACBAB8;
  if (!qword_27CACBAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB7A0, &qword_2170697B0);
    sub_216E99DE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBAB8);
  }

  return result;
}

unint64_t sub_216E99DE0()
{
  result = qword_27CACBAC0;
  if (!qword_27CACBAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB798, &qword_2170697A8);
    sub_216E963FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBAC0);
  }

  return result;
}

uint64_t sub_216E99EB0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216E99F7C()
{
  OUTLINED_FUNCTION_37_36();
  OUTLINED_FUNCTION_12_86();
  v4 = type metadata accessor for MovieLibraryButton(v0, v1, v2, v3);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_21_66(*(v5 + 80));
  OUTLINED_FUNCTION_12_86();

  return sub_216E9769C(v6, v7, v8, v9);
}

uint64_t objectdestroy_64Tm_0()
{
  type metadata accessor for MovieLibraryButton(0, v1[2], v1[3], v1[4]);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 40) & ~*(v2 + 80));
  sub_2166B8588(*v3, *(v3 + 1));

  if (v3[80])
  {
    if (*(v3 + 8))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v3 + 5);
    }
  }

  else
  {
  }

  v4 = *(v0 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v5 + 8))(&v3[v4]);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216E9A138()
{
  OUTLINED_FUNCTION_37_36();
  OUTLINED_FUNCTION_12_86();
  v4 = type metadata accessor for MovieLibraryButton(v0, v1, v2, v3);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_21_66(*(v5 + 80));
  OUTLINED_FUNCTION_12_86();

  return sub_216E97D38(v9, v6, v7, v8);
}

uint64_t sub_216E9A1B8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = type metadata accessor for MovieLibraryButton(0, v1, v2, v3);
  OUTLINED_FUNCTION_36(v4);
  v6 = OUTLINED_FUNCTION_21_66(*(v5 + 80));

  return sub_216E97838(v6, v1, v2, v3);
}

uint64_t sub_216E9A248(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_216E9A2A4()
{
  result = qword_27CACBAC8;
  if (!qword_27CACBAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBAD0, &qword_217069C68);
    sub_2166D9530(&qword_27CACBAD8, &qword_27CACBAE0, &unk_217069C70, &unk_217069BBC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBAC8);
  }

  return result;
}

BOOL sub_216E9A38C(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_216E9BC80(a3, a1, a2);
  sub_21700EC54();
  sub_21700EC94();
  return v8 == v7;
}

BOOL sub_216E9A414()
{
  sub_217008604();
  sub_216E9BCD4(&qword_27CABCC60, MEMORY[0x277CDD948], MEMORY[0x277CDD958]);
  sub_21700EC54();
  sub_21700EC94();
  return v2 == v1;
}

uint64_t sub_216E9A4CC()
{
  v0 = sub_217005C44();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  sub_217005BF4();
  sub_216E9BCD4(&qword_27CACBB00, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
  sub_21700EC54();
  sub_21700EC94();
  sub_216E9BCD4(&qword_27CACBB08, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
  v9 = sub_21700E494();
  v10 = *(v2 + 8);
  v10(v5, v0);
  v10(v8, v0);
  return v9 & 1;
}

uint64_t sub_216E9A674(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  *(v1 + 56) = a1;
  type metadata accessor for ObjectGraph(0);

  sub_21700E094();
  (*(v5 + 32))(v1 + OBJC_IVAR____TtC7MusicUI26GoToSongMenuActionProvider_actionDispatcher, v8, v3);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A30, &unk_217013D70);
  OUTLINED_FUNCTION_2_175(v9);
  sub_2166A0F18(&v13, v1 + 16);
  v10 = type metadata accessor for SubscriptionStatusCoordinator();
  OUTLINED_FUNCTION_2_175(v10);

  *(v1 + OBJC_IVAR____TtC7MusicUI26GoToSongMenuActionProvider_subscriptionStatusCoordinator) = v13;
  return v1;
}

uint64_t sub_216E9A7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for MenuConfiguration(0);
  sub_216E9A8E4(a1, a3 + *(v9 + 20), a2, a3, v8);
  v10 = sub_21678C1C4();
  sub_2166997CC(v8, &qword_27CAB6DF0, &unk_2170152D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = v10;
  v12 = sub_2167A2998(inited);
  swift_setDeallocating();
  sub_2169FAC94();
  return v12;
}

id sub_216E9A8E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v100 = a4;
  v119 = a3;
  v125 = a2;
  v126 = a5;
  v122 = sub_2170075A4();
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v118 = v8;
  v120 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for GoToSongAction(0);
  v115 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v117 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v9;
  MEMORY[0x28223BE20](v10);
  v114 = &v93 - v11;
  v112 = sub_21700CFB4();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_217005EF4();
  v99 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v98 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_21700D704();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v105 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v107 = &v93 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v101 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v123 = &v93 - v20;
  v106 = sub_21700D284();
  v104 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v103 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v124);
  v23 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_21700BAB4();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v93 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5090, &qword_217069CF0);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v93 - v32;
  if ((sub_216E3D990() & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_21700BF44();
  if (!v34)
  {
    goto LABEL_10;
  }

  v35 = a1;
  sub_21700BF84();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC50B0, &qword_21704FF90);
  if (__swift_getEnumTagSinglePayload(v33, 1, v36) == 1)
  {
    sub_2166997CC(v33, &qword_27CAC5090, &qword_217069CF0);
  }

  else
  {
    v37 = sub_216E9A38C(&qword_27CAC50B0, &qword_21704FF90, &qword_27CACBAE8);
    (*(*(v36 - 8) + 8))(v33, v36);
    if (!v37)
    {
LABEL_10:
      v49 = type metadata accessor for MenuAction(0);
      return __swift_storeEnumTagSinglePayload(v126, 1, 1, v49);
    }
  }

  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v39 = result;
    v40 = [result hasProperNetworkConditionsToShowCloudMedia];

    if (!v40)
    {
      goto LABEL_10;
    }

    v96 = v23;
    v41 = v35;
    v42 = v6[6];
    __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
    v97 = v6;
    v43 = *(v42 + 144);
    v95 = sub_21700C084();
    v44 = v96;
    v43(v41);
    (*(v25 + 104))(v27, *MEMORY[0x277D2AEE0], v24);
    v45 = sub_21700BAA4();
    v46 = *(v25 + 8);
    v46(v27, v24);
    v46(v30, v24);
    v47 = v97;
    if ((v45 & 1) == 0)
    {
      goto LABEL_10;
    }

    swift_storeEnumTagMultiPayload();
    v48 = sub_216B88F54(v125, v44);
    sub_2168CD6E4(v44);
    if (v48)
    {
      goto LABEL_10;
    }

    v94 = sub_21700BFF4();
    v51 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v53 = (v100 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v54 = v53[1];
    v55 = MEMORY[0x277D837D0];
    *(inited + 48) = *v53;
    *(inited + 56) = v54;
    *(inited + 72) = v55;
    *(inited + 80) = 1684957547;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = 1735290739;
    *(inited + 104) = 0xE400000000000000;
    *(inited + 120) = v55;
    *(inited + 128) = 0x657461676976616ELL;
    *(inited + 168) = v55;
    *(inited + 136) = 0xEA00000000006F54;
    *(inited + 144) = 1735290739;
    *(inited + 152) = 0xE400000000000000;
    sub_21700DF14();
    v56 = sub_21700E384();
    swift_storeEnumTagMultiPayload();
    LOBYTE(inited) = sub_216B88F54(v125, v44);
    sub_2168CD6E4(v44);
    v57 = v123;
    v58 = v102;
    __swift_storeEnumTagSinglePayload(v123, 1, 1, v102);
    v125 = v41;
    v59 = v107;
    sub_21700D6F4();
    v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v129 = v56;
    sub_2166EF9C4(&v129, &v128);
    v60 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v127 = v60;
    sub_2166EF9D4();
    v61 = v127;
    v130 = v55;
    *&v129 = 0x657461676976616ELL;
    *(&v129 + 1) = 0xE800000000000000;
    sub_2166EF9C4(&v129, &v128);
    swift_isUniquelyReferenced_nonNull_native();
    v127 = v61;
    sub_2166EF9D4();
    v62 = v127;
    v63 = 0xD000000000000015;
    if (inited)
    {
      v63 = 0xD000000000000010;
      v64 = "ern";
    }

    else
    {
      v64 = "searchQueryContext";
    }

    v130 = v55;
    *&v129 = v63;
    *(&v129 + 1) = v64 | 0x8000000000000000;
    sub_2166EF9C4(&v129, &v128);
    swift_isUniquelyReferenced_nonNull_native();
    v127 = v62;
    sub_2166EF9D4();
    v65 = v127;
    v66 = v101;
    sub_2167DE934(v57, v101);
    if (__swift_getEnumTagSinglePayload(v66, 1, v58) == 1)
    {
      sub_2166997CC(v66, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v67 = v99;
      v68 = v98;
      (*(v99 + 32))(v98, v66, v58);
      v69 = sub_217005DE4();
      v130 = v55;
      *&v129 = v69;
      *(&v129 + 1) = v70;
      sub_2166EF9C4(&v129, &v128);
      swift_isUniquelyReferenced_nonNull_native();
      v127 = v65;
      sub_2166EF9D4();
      v65 = v127;
      (*(v67 + 8))(v68, v58);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v71 = sub_21700CF84();
    v72 = __swift_project_value_buffer(v71, qword_280E73DB0);
    v73 = v110;
    MEMORY[0x21CE9DD70](v94, v51, 0x6E6F74747562, 0xE600000000000000, v65, v72);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v74 = v111;
    v75 = (*(v111 + 80) + 32) & ~*(v111 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_217013DA0;
    v77 = v76 + v75;
    v78 = v112;
    (*(v74 + 16))(v77, v73, v112);
    v79 = v108;
    v80 = v109;
    (*(v108 + 16))(v105, v59, v109);
    v81 = v103;
    sub_21700D244();
    (*(v74 + 8))(v73, v78);
    (*(v79 + 8))(v59, v80);
    sub_2166997CC(v123, &qword_27CABA820, &unk_217018CE0);
    v82 = v114;
    (*(*(v95 - 8) + 16))(&v114[*(v113 + 20)], v125);
    (*(v104 + 32))(v82, v81, v106);
    type metadata accessor for MenuActionType(0);
    v83 = v126;
    swift_storeEnumTagMultiPayload();
    v84 = v117;
    sub_216E9BAE8(v82, v117);
    v85 = v121;
    v86 = v120;
    v87 = v122;
    (*(v121 + 16))(v120, v119, v122);
    v88 = (*(v115 + 80) + 24) & ~*(v115 + 80);
    v89 = (v116 + *(v85 + 80) + v88) & ~*(v85 + 80);
    v90 = swift_allocObject();
    *(v90 + 16) = v47;
    sub_216E9BAE8(v84, v90 + v88);
    (*(v85 + 32))(v90 + v89, v86, v87);
    v91 = type metadata accessor for MenuAction(0);
    v92 = (v83 + *(v91 + 20));
    *v92 = sub_216E9BB4C;
    v92[1] = v90;
    __swift_storeEnumTagSinglePayload(v83, 0, 1, v91);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216E9B814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[3] = type metadata accessor for GoToSongAction(0);
  v6[4] = sub_216E9BCD4(&qword_27CABA7D0, type metadata accessor for GoToSongAction, &unk_21703BE10);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  sub_216E9BC1C(a2, boxed_opaque_existential_1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_216E9B8F0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = OBJC_IVAR____TtC7MusicUI26GoToSongMenuActionProvider_actionDispatcher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_216E9B970()
{
  sub_216E9B8F0();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t type metadata accessor for GoToSongMenuActionProvider(uint64_t a1)
{
  result = qword_280E34740;
  if (!qword_280E34740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216E9BA1C(uint64_t a1)
{
  sub_216692BBC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_216E9BAE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GoToSongAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216E9BB4C()
{
  v1 = *(type metadata accessor for GoToSongAction(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_2170075A4() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_216E9B814(v5, v0 + v2, v6);
}

uint64_t sub_216E9BC1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GoToSongAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216E9BC80(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_216E9BCD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216E9BD1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v19 = &v18 - v13;
  v21 = a1;
  v14 = *(v5 + 16);
  v14(v7, v2, v4, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBB10, &qword_217069D00);
  sub_216E9C008(&qword_27CACBB18, &qword_27CACBB10, &qword_217069D00);
  OUTLINED_FUNCTION_0_245();
  sub_21700D5A4();
  v21 = a1;
  (v14)(v10, v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBB20, &qword_217069D08);
  sub_216E9C008(&qword_27CACBB28, &qword_27CACBB20, &qword_217069D08);
  OUTLINED_FUNCTION_0_245();
  sub_21700D5A4();
  v15 = *(v5 + 8);
  v18 = v5 + 8;
  v15(v7, v4);
  v21 = a1;
  v16 = v19;
  (v14)(v19, v10, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBB30, &qword_217069D10);
  sub_216E9C008(&qword_27CACBB38, &qword_27CACBB30, &qword_217069D10);
  OUTLINED_FUNCTION_0_245();
  sub_21700D5A4();
  v15(v10, v4);
  v21 = a1;
  (v14)(v20, v16, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBB40, qword_217069D18);
  sub_216E9C008(&qword_27CACBB48, &qword_27CACBB40, qword_217069D18);
  OUTLINED_FUNCTION_0_245();
  sub_21700D5A4();
  return (v15)(v16, v4);
}

uint64_t sub_216E9C008(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_216E9C05C(uint64_t a1)
{
  result = type metadata accessor for PaginationSectionResult(319);
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_216E9C0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  sub_216E9C16C(a1, a2, a3, a4, a5);
  return v10;
}

void *sub_216E9C16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  type metadata accessor for SectionChangeInstructionPerformer(0, *(*v6 + 80), *(*v6 + 88), a4);
  v12 = *(a2 + *(*a2 + 168));

  v13 = sub_216A4116C();

  v14 = sub_216ACFF9C(a3, a4, v12, v13, 1);
  v6[2] = a5;
  v6[3] = v14;
  sub_216E9C4A4(a1, v6 + qword_27CACBB50);
  return v6;
}

uint64_t sub_216E9C294()
{
  sub_21700F3B4();
  MEMORY[0x21CE9F490](0xD000000000000033, 0x800000021708F870);
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_21700DF14();
  MEMORY[0x21CE9F490](v2, v3);

  MEMORY[0x21CE9F490](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_216E9C33C()
{

  sub_216B49AB4(v0 + qword_27CACBB50);
  return v0;
}

uint64_t sub_216E9C374()
{
  sub_216E9C33C();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216E9C42C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216E9C468(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216E9C4A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaginationSectionResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216E9C508(char *a1)
{
  v31 = a1;
  sub_21700CC74();
  OUTLINED_FUNCTION_1();
  v32 = v2;
  v33 = v1;
  MEMORY[0x28223BE20](v1);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8A28, &qword_21705E9D0);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_77();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77();
  v17 = (v15 - v16);
  MEMORY[0x28223BE20](v18);
  v20 = &v29 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v29 - v22;
  sub_21700E094();
  v24 = *(v13 + 16);
  v24(v10, v23, v11);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  v24(v20, v31, v11);
  sub_216E9C810(v10, v7);
  sub_21700D5B4();
  sub_216E9C880(v10);
  v24(v17, v20, v11);
  v25 = v30;
  sub_21700CC54();
  v26 = sub_21700D4A4();
  (*(v32 + 8))(v25, v33);
  v27 = *(v13 + 8);
  v27(v20, v11);
  v27(v23, v11);
  return v26;
}

uint64_t sub_216E9C810(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8A28, &qword_21705E9D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216E9C880(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8A28, &qword_21705E9D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216E9C900(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_77();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v21 - v15;
  type metadata accessor for ObjectGraph(0);
  sub_21700D5F4();
  sub_2166DF938(a1, v10);
  sub_216856F90(a1, a2, v16);
  v17 = *(v6 + 8);
  v17(v10, v4);
  v17(v13, v4);
  sub_216E9C508(v16);
  v18 = [objc_allocWithZone(MEMORY[0x277CCAB98]) init];
  v19 = sub_216C0CC7C(v18);

  v17(v16, v4);
  return v19;
}

uint64_t sub_216E9CACC(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_77();
  v10 = (v8 - v9);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  type metadata accessor for ObjectGraph(0);
  sub_21700D5F4();
  a2(a1);
  v14 = *(v6 + 8);
  v14(v10, v4);
  v15 = sub_216E9C508(v13);
  v14(v13, v4);
  return v15;
}

_BYTE *sub_216E9CC04(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_216E9CCEC()
{
  result = qword_27CACBBD8;
  if (!qword_27CACBBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBBD8);
  }

  return result;
}

unint64_t sub_216E9CE18()
{
  result = qword_27CACBBE0;
  if (!qword_27CACBBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBBE0);
  }

  return result;
}

unint64_t sub_216E9CEA4()
{
  result = qword_27CACBBE8;
  if (!qword_27CACBBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBBE8);
  }

  return result;
}

_BYTE *sub_216E9CF40(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_216E9CFEC()
{
  result = qword_27CACBBF0;
  if (!qword_27CACBBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBBF0);
  }

  return result;
}

char *sub_216E9D094(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v69 = a1;
  ObjectType = swift_getObjectType();
  sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v65 = v4;
  v66 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v59 = v6 - v5;
  v7 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_7();
  v61 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v56 - v11;
  v13 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v56 - v20;
  v22 = sub_2170061E4();
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7();
  v28 = v27 - v26;
  v62 = OBJC_IVAR____TtC7MusicUI18JSRecentSearchItem____lazy_storage___context;
  v63 = v2;
  *(v2 + OBJC_IVAR____TtC7MusicUI18JSRecentSearchItem____lazy_storage___context) = 0;
  sub_21700CE04();
  sub_21700CD54();
  v31 = *(v15 + 8);
  v29 = v15 + 8;
  v30 = v31;
  v31(v21, v13);
  if (__swift_getEnumTagSinglePayload(v12, 1, v22) == 1)
  {
    sub_2168CF17C(v12);
    v32 = sub_21700E2E4();
    sub_2167B1EA4();
    swift_allocError();
    v34 = v33;
    v35 = v63;
    v36 = swift_getObjectType();
    *v34 = 0x6D617473656D6974;
    v34[1] = 0xE900000000000070;
    v34[2] = v36;
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D22530], v32);
    swift_willThrow();
    v37 = OUTLINED_FUNCTION_1_207();
    v38(v37);
    v30(v69, v13);
    v39 = v35;
  }

  else
  {
    v57 = v30;
    v58 = v29;
    (*(v24 + 32))(v28, v12, v22);
    v40 = OBJC_IVAR____TtC7MusicUI18JSRecentSearchItem__timestamp;
    v39 = v63;
    (*(v24 + 16))(&v63[OBJC_IVAR____TtC7MusicUI18JSRecentSearchItem__timestamp], v28, v22);
    v41 = v69;
    sub_21700CE04();
    v42 = v59;
    (*(v65 + 16))(v59, v67, v66);
    v43 = v60;
    ContentDescriptor.init(deserializing:using:)(v18, v42, v44, v45, v46, v47, v48, v49, v56, v57, SWORD2(v57), SBYTE6(v57), SHIBYTE(v57), v58, v59, v60, v61, v62, v63, ObjectType, v65, v66, v67);
    if (!v43)
    {
      (*(v24 + 8))(v28, v22);
      sub_2168ED900(v61, &v39[OBJC_IVAR____TtC7MusicUI18JSRecentSearchItem__contentDescriptor]);
      v68.receiver = v39;
      v68.super_class = ObjectType;
      v39 = objc_msgSendSuper2(&v68, sel_init);
      v54 = OUTLINED_FUNCTION_1_207();
      v55(v54);
      v57(v41, v13);
      return v39;
    }

    v50 = OUTLINED_FUNCTION_1_207();
    v51(v50);
    v57(v41, v13);
    v52 = *(v24 + 8);
    v52(v28, v22);
    v52(&v39[v40], v22);
  }

  swift_deallocPartialClassInstance();
  return v39;
}

id sub_216E9D650()
{
  v1 = OBJC_IVAR____TtC7MusicUI18JSRecentSearchItem____lazy_storage___context;
  v2 = *(v0 + OBJC_IVAR____TtC7MusicUI18JSRecentSearchItem____lazy_storage___context);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7MusicUI18JSRecentSearchItem____lazy_storage___context);
  }

  else
  {
    v4 = v0;
    sub_216AEFC84();
    v5 = sub_21700F124();
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_216E9D78C(uint64_t a1)
{
  v1 = sub_216E9D650();
  v2 = sub_21700F134();

  return v2;
}

uint64_t type metadata accessor for JSRecentSearchItem(uint64_t a1)
{
  result = qword_27CACBC10;
  if (!qword_27CACBC10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216E9D904(uint64_t a1)
{
  result = sub_2170061E4();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ContentDescriptor(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

char *sub_216E9D9D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  result = sub_216E9D048(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_216E9DA58(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (!sub_217005964())
  {

    v12 = 0u;
    v13 = 0u;
    return sub_216697CFC(&v12);
  }

  sub_21700F364();
  sub_216934FBC();

  sub_216788110(v11);
  if (!*(&v13 + 1))
  {

    return sub_216697CFC(&v12);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v4 = v11[0];
  v5 = v11[1];
  if (qword_280E485B0 != -1)
  {
    swift_once();
  }

  v6 = sub_217007CA4();
  __swift_project_value_buffer(v6, qword_280E73E08);
  sub_21700DF14();
  v7 = sub_217007C84();
  v8 = sub_21700EDA4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11[0] = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_2166A85FC(v4, v5, v11);
    _os_log_impl(&dword_216679000, v7, v8, "%{public}s loaded", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x21CEA1440](v10, -1, -1);
    MEMORY[0x21CEA1440](v9, -1, -1);
  }

  *(v3 + 48) = v4;
  *(v3 + 56) = v5;
}

uint64_t sub_216E9DCB8(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = sub_217005974();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1AA0, &unk_21703F8A0);
  v2[25] = swift_task_alloc();
  v4 = sub_21700EFA4();
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216E9DE0C, 0, 0);
}

uint64_t sub_216E9DE0C()
{
  v29 = v0;
  v1 = v0[21];
  v2 = *(v1 + 56);
  if (!v2)
  {
LABEL_18:

    v26 = v0[1];

    return v26();
  }

  v0[11] = *(v1 + 48);
  v3 = v0[20];
  v0[12] = v2;
  v4 = swift_task_alloc();
  *(v4 + 16) = v0 + 11;
  sub_21700DF14();
  LOBYTE(v3) = sub_216CA1DA8(sub_216AF7E78, v4, v3);

  if (v3)
  {
    v5 = *(v1 + 56);
    if (v5)
    {
      v6 = *(v1 + 48);
      v7 = qword_280E485B0;
      sub_21700DF14();
      if (v7 != -1)
      {
        OUTLINED_FUNCTION_2_176(&qword_280E485B0);
      }

      v8 = sub_217007CA4();
      __swift_project_value_buffer(v8, qword_280E73E08);
      sub_21700DF14();
      v9 = sub_217007C84();
      v10 = sub_21700EDA4();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v28[0] = v12;
        *v11 = 136446210;
        v13 = sub_2166A85FC(v6, v5, v28);

        *(v11 + 4) = v13;
        _os_log_impl(&dword_216679000, v9, v10, "%{public}s already loaded", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v12);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_6();
      }

      else
      {
      }
    }

    goto LABEL_18;
  }

  if (qword_280E485B0 != -1)
  {
    OUTLINED_FUNCTION_2_176(&qword_280E485B0);
  }

  v14 = sub_217007CA4();
  __swift_project_value_buffer(v14, qword_280E73E08);
  sub_21700DF14();
  v15 = sub_217007C84();
  v16 = sub_21700EDA4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = v0[20];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28[0] = v19;
    *v18 = 136446210;
    v20 = MEMORY[0x21CE9F660](v17, MEMORY[0x277D837D0]);
    v22 = sub_2166A85FC(v20, v21, v28);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_216679000, v15, v16, "waiting for %{public}s to load...", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v23 = [objc_opt_self() defaultCenter];
  if (qword_280E29CB0 != -1)
  {
    OUTLINED_FUNCTION_1_208(&qword_280E29CB0);
  }

  sub_21700EFB4();

  sub_21700EF94();
  sub_216E9E744();
  v24 = swift_task_alloc();
  v0[29] = v24;
  *v24 = v0;
  v25 = OUTLINED_FUNCTION_0_247(v24);

  return MEMORY[0x282200308](v25);
}

uint64_t sub_216E9E204()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_216E9E624;
  }

  else
  {
    v2 = sub_216E9E318;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_216E9E334()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
LABEL_2:
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

    v3 = *(v0 + 8);

    return v3();
  }

  (*(*(v0 + 184) + 32))(*(v0 + 192), v1, v2);
  v5 = sub_217005964();
  if (!v5)
  {
    v18 = OUTLINED_FUNCTION_3_171();
    v19(v18);
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_15;
  }

  v6 = v5;
  strcpy((v0 + 104), "pageIntentKind");
  *(v0 + 119) = -18;
  sub_21700F364();
  if (!*(v6 + 16) || (v7 = sub_216E68120(v0 + 16), (v8 & 1) == 0))
  {

    sub_216788110(v0 + 16);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    goto LABEL_13;
  }

  sub_2166A6DF8(*(v6 + 56) + 32 * v7, v0 + 56);
  sub_216788110(v0 + 16);

  if (!*(v0 + 80))
  {
LABEL_13:
    v16 = OUTLINED_FUNCTION_3_171();
    v17(v16);
LABEL_15:
    sub_216697CFC(v0 + 56);
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    v10 = *(v0 + 184);
    v9 = *(v0 + 192);
    v11 = *(v0 + 176);
    v12 = *(v0 + 160);
    v13 = *(v0 + 128);
    *(v0 + 136) = *(v0 + 120);
    *(v0 + 144) = v13;
    v14 = swift_task_alloc();
    *(v14 + 16) = v0 + 136;
    v15 = sub_216CA1DA8(sub_216B69928, v14, v12);

    (*(v10 + 8))(v9, v11);

    if (v15)
    {
      goto LABEL_2;
    }
  }

  else
  {
    v22 = OUTLINED_FUNCTION_3_171();
    v23(v22);
  }

LABEL_16:
  sub_216E9E744();
  v20 = swift_task_alloc();
  *(v0 + 232) = v20;
  *v20 = v0;
  v21 = OUTLINED_FUNCTION_0_247(v20);

  return MEMORY[0x282200308](v21);
}

uint64_t sub_216E9E624()
{
  *(v0 + 152) = *(v0 + 240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_216E9E6B0()
{
  sub_216697CFC(v0 + 16);

  return MEMORY[0x2821FE8D8](v0);
}

unint64_t sub_216E9E744()
{
  result = qword_280E29BE0;
  if (!qword_280E29BE0)
  {
    sub_21700EFA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E29BE0);
  }

  return result;
}

uint64_t sub_216E9E80C(uint64_t a1, uint64_t a2)
{
  v123 = a1;
  v119 = type metadata accessor for FavoriteAction(0);
  OUTLINED_FUNCTION_1();
  v121 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  OUTLINED_FUNCTION_1();
  v117 = v7;
  MEMORY[0x28223BE20](v8);
  v120 = &v99 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8, &qword_21701B9E0);
  v11 = OUTLINED_FUNCTION_36(v10);
  MEMORY[0x28223BE20](v11);
  v112 = &v99 - v12;
  v111 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v109 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v17 = v16 - v15;
  v115 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v114 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7();
  v20 = sub_217006274();
  v21 = OUTLINED_FUNCTION_36(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7();
  v24 = v23 - v22;
  v25 = sub_21700E4C4();
  v26 = OUTLINED_FUNCTION_36(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_7();
  v110 = type metadata accessor for PresentConfirmationDialogAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7();
  v118 = v29 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v116 = v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v99 - v33;
  type metadata accessor for CloudLibraryStatusController(0);
  sub_21700D4B4();
  v122 = *__src;
  sub_21700D4B4();
  if (*__src)
  {
    if ((*(*__src + 25) & 1) == 0)
    {
      v121 = *__src;
      type metadata accessor for ObjectGraph(0);
      v107 = v34;
      v106 = v30;
      sub_21700E094();
      sub_21700E4B4();
      sub_217006264();
      v38 = OUTLINED_FUNCTION_10_99();
      v104 = OUTLINED_FUNCTION_24_42(v38, v39, v40, v41, v24);
      v103 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0130, &unk_21702B8D0);
      v43 = (_s6ActionVMa(0) - 8);
      v44 = *v43;
      v101 = *(*v43 + 72);
      v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v46 = swift_allocObject();
      v102 = v46;
      *(v46 + 16) = xmmword_217013D90;
      v100 = v46 + v45;
      sub_21700E4B4();
      v108 = v24;
      sub_217006264();
      v47 = OUTLINED_FUNCTION_10_99();
      v51 = OUTLINED_FUNCTION_24_42(v47, v48, v49, v50, v24);
      v105 = a2;
      v52 = v109;
      v54 = v53;
      sub_21700D234();
      *&__src[56] = sub_21700D2C4();
      *&__src[64] = MEMORY[0x277D21CB8];
      __swift_allocate_boxed_opaque_existential_1(&__src[32]);
      sub_21700D2B4();
      sub_217006214();
      v55 = sub_2170061F4();
      v57 = v56;
      v58 = *(v52 + 8);
      v59 = v111;
      v58(v17, v111);
      *__src = v55;
      *&__src[8] = v57;
      *&__src[16] = v51;
      *&__src[24] = v54;
      v60 = v112;
      sub_217007ED4();
      sub_217007F04();
      OUTLINED_FUNCTION_43_33();
      v61 = sub_2170061F4();
      v63 = v62;
      v58(v17, v59);
      v64 = v100;
      v65 = (v100 + v43[8]);
      *v65 = v61;
      v65[1] = v63;
      v66 = v64;
      memcpy(v64, __src, 0x48uLL);
      sub_2168D36D4(v60, &v66[v43[7]]);
      v67 = &v66[v101];
      sub_21700E4B4();
      v68 = v108;
      sub_217006264();
      v69 = OUTLINED_FUNCTION_10_99();
      v109 = OUTLINED_FUNCTION_24_42(v69, v70, v71, v72, v68);
      v101 = v73;
      sub_217006214();
      v100 = sub_2170061F4();
      v99 = v74;
      v58(v17, v59);
      sub_217007EF4();
      OUTLINED_FUNCTION_43_33();
      v75 = sub_2170061F4();
      v77 = v76;
      v58(v17, v59);
      v78 = &v67[v43[8]];
      *v78 = v75;
      v78[1] = v77;
      v79 = v99;
      *v67 = v100;
      *(v67 + 1) = v79;
      v80 = v101;
      *(v67 + 2) = v109;
      *(v67 + 3) = v80;
      *(v67 + 2) = 0u;
      *(v67 + 3) = 0u;
      *(v67 + 8) = 0;
      sub_2168D36D4(v60, &v67[v43[7]]);
      sub_21700E4B4();
      v81 = v108;
      sub_217006264();
      v82 = OUTLINED_FUNCTION_10_99();
      v86 = OUTLINED_FUNCTION_24_42(v82, v83, v84, v85, v81);
      sub_216933384(v104, v103, v102, v86, v87, __src);
      v88 = v118;
      (*(v114 + 16))(v118, v123 + *(v119 + 20), v115);
      v89 = v110;
      v90 = v88 + *(v110 + 20);
      v91 = *&__src[16];
      *v90 = *__src;
      *(v90 + 16) = v91;
      *(v90 + 32) = *&__src[32];
      v124[3] = v89;
      v124[4] = sub_216EA1248(qword_280E30130, type metadata accessor for PresentConfirmationDialogAction, &unk_217036C50);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v124);
      sub_216EA12E4(v88, boxed_opaque_existential_1, type metadata accessor for PresentConfirmationDialogAction);
      v93 = v117;
      v94 = v120;
      v95 = v113;
      (*(v117 + 104))(v120, *MEMORY[0x277D21E18], v113);
      v96 = v106;
      v97 = v107;
      v37 = sub_21700D5E4();

      (*(v93 + 8))(v94, v95);
      sub_216EA1290();
      (*(v116 + 8))(v97, v96);
      __swift_destroy_boxed_opaque_existential_1Tm(v124);
      return v37;
    }
  }

  sub_216EA12E4(v123, &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FavoriteAction);
  v35 = (*(v121 + 80) + 24) & ~*(v121 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = a2;
  sub_216EA1344(&v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35, type metadata accessor for FavoriteAction);

  v37 = sub_216ECDBF4(&unk_21706A210, v36);

  return v37;
}

void sub_216E9F20C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBC40, &qword_21706A220);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013D90;
  *(inited + 32) = sub_21700E514();
  *(inited + 40) = v1;
  *(inited + 48) = 1;
  *(inited + 56) = sub_21700E514();
  *(inited + 64) = v2;
  *(inited + 72) = 1;
  v3 = sub_21700E384();
  v4 = [objc_opt_self() sharedCloudController];
  if (v4)
  {
    v5 = v4;
    sub_2169FD9C8(v3);
    v7 = v6;

    v9[4] = nullsub_1;
    v9[5] = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_216A2BF54;
    v9[3] = &block_descriptor_44;
    v8 = _Block_copy(v9);
    sub_216EA115C(v7, v8, v5);
    _Block_release(v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_216E9F384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[48] = a2;
  v3[49] = a3;
  v3[47] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v3[50] = v4;
  v3[51] = *(v4 - 8);
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v5 = sub_21700D2A4();
  v3[54] = v5;
  v3[55] = *(v5 - 8);
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v3[58] = type metadata accessor for NoticeAction(0);
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v6 = sub_21700C384();
  v3[61] = v6;
  v3[62] = *(v6 - 8);
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v3[65] = v7;
  v3[66] = *(v7 - 8);
  v3[67] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216E9F5D4, 0, 0);
}

uint64_t sub_216E9F5D4()
{
  OUTLINED_FUNCTION_93();
  v1 = *(v0 + 392);
  type metadata accessor for TasteStateChangePublisher();
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  *(v0 + 544) = *(v0 + 352);
  sub_21700E094();
  sub_216EA11EC(v1, v0 + 16);
  if (*(v0 + 56))
  {
    sub_2166A0F18((v0 + 16), v0 + 64);
    OUTLINED_FUNCTION_20_65((v0 + 64));
    *(v0 + 592) = sub_21700BE34();
    v2 = swift_task_alloc();
    *(v0 + 600) = v2;
    *v2 = v0;
    v3 = OUTLINED_FUNCTION_6_11(v2);

    return MEMORY[0x28218A5A8](v3);
  }

  else
  {
    sub_2166A0F18((v0 + 16), v0 + 184);
    OUTLINED_FUNCTION_20_65((v0 + 184));
    *(v0 + 552) = sub_21700BE34();
    v4 = swift_task_alloc();
    *(v0 + 560) = v4;
    *v4 = v0;
    v5 = OUTLINED_FUNCTION_6_11(v4);

    return MEMORY[0x28218A6E0](v5);
  }
}

uint64_t sub_216E9F798()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  *(v3 + 568) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216E9F898()
{
  OUTLINED_FUNCTION_93();
  sub_2167B7D58((v0 + 23), (v0 + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBC48, &unk_21706A228);
  if (swift_dynamicCast())
  {
    (*(v0[62] + 8))(v0[64], v0[61]);
    sub_21700CC34();
  }

  v1 = v0[60];
  v2 = v0[58];
  v3 = v0[53];
  v4 = v0[50];
  v5 = v0[51];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8E00, &qword_2170313E0);
  __swift_storeEnumTagSinglePayload(v1, 1, 11, v6);
  sub_21700D234();
  v0[36] = v2;
  OUTLINED_FUNCTION_12_87();
  v0[37] = sub_216EA1248(v7, v8, &unk_21703D8D0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 33);
  OUTLINED_FUNCTION_13_82(boxed_opaque_existential_1);
  (*(v5 + 104))(v3, *MEMORY[0x277D21E18], v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  v0[72] = v10;
  *v10 = v11;
  v10[1] = sub_216E9FA54;
  v12 = v0[65];
  v13 = v0[57];
  v14 = v0[53];
  v15 = v0[48];

  return MEMORY[0x28217F468](v13, v0 + 33, v14, v15, v12);
}

uint64_t sub_216E9FA54()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v6 = v5[53];
  v7 = v5[51];
  v8 = v5[50];
  v9 = *v1;
  OUTLINED_FUNCTION_28();
  *v10 = v9;
  v3[73] = v0;

  (*(v7 + 8))(v6, v8);
  if (!v0)
  {
    (*(v3[55] + 8))(v3[57], v3[54]);
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 33);
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_216E9FBD0()
{
  OUTLINED_FUNCTION_32_36();

  OUTLINED_FUNCTION_1_209();
  sub_216EA1290();
  (*(v3 + 8))(v1, v0);
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 184));
  v4 = OUTLINED_FUNCTION_0_248();
  (*(v5 + 104))(v4, *MEMORY[0x277D21CA8]);

  OUTLINED_FUNCTION_23();

  return v6();
}

uint64_t sub_216E9FCE4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  *(v3 + 608) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216E9FDE4()
{
  OUTLINED_FUNCTION_93();
  sub_2167B7D58((v0 + 8), (v0 + 13));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBC48, &unk_21706A228);
  if (swift_dynamicCast())
  {
    (*(v0[62] + 8))(v0[63], v0[61]);
    sub_21700CC34();
  }

  v2 = v0[58];
  v1 = v0[59];
  v4 = v0[51];
  v3 = v0[52];
  v5 = v0[50];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8E00, &qword_2170313E0);
  __swift_storeEnumTagSinglePayload(v1, 2, 11, v6);
  sub_21700D234();
  v0[21] = v2;
  OUTLINED_FUNCTION_12_87();
  v0[22] = sub_216EA1248(v7, v8, &unk_21703D8D0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 18);
  OUTLINED_FUNCTION_13_82(boxed_opaque_existential_1);
  (*(v4 + 104))(v3, *MEMORY[0x277D21E18], v5);
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  v0[77] = v10;
  *v10 = v11;
  v10[1] = sub_216E9FF9C;
  v12 = v0[65];
  v13 = v0[56];
  v14 = v0[52];
  v15 = v0[48];

  return MEMORY[0x28217F468](v13, v0 + 18, v14, v15, v12);
}

uint64_t sub_216E9FF9C()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v6 = v5[52];
  v7 = v5[51];
  v8 = v5[50];
  v9 = *v1;
  OUTLINED_FUNCTION_28();
  *v10 = v9;
  v3[78] = v0;

  (*(v7 + 8))(v6, v8);
  if (!v0)
  {
    (*(v3[55] + 8))(v3[56], v3[54]);
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 18);
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_216EA0118()
{
  OUTLINED_FUNCTION_32_36();

  OUTLINED_FUNCTION_1_209();
  sub_216EA1290();
  (*(v3 + 8))(v1, v0);
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 64));
  v4 = OUTLINED_FUNCTION_0_248();
  (*(v5 + 104))(v4, *MEMORY[0x277D21CA8]);

  OUTLINED_FUNCTION_23();

  return v6();
}

uint64_t sub_216EA0914()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CACBC20);
  __swift_project_value_buffer(v0, qword_27CACBC20);
  return sub_217007C94();
}

uint64_t sub_216EA0998()
{
  v1 = OUTLINED_FUNCTION_31_0();
  v2 = type metadata accessor for LikeAction(v1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_216EA12E4(v0, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LikeAction);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_216EA1344(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for LikeAction);
  return sub_216ECDBF4(&unk_21706A240, v6);
}

uint64_t sub_216EA0AB0(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return MEMORY[0x2822009F8](sub_216EA0AD0, 0, 0);
}

uint64_t sub_216EA0AD0()
{
  sub_216EA1558(*(v0 + 152), v0 + 16);
  if (*(v0 + 56))
  {
    sub_2166A0F18((v0 + 16), v0 + 64);
    OUTLINED_FUNCTION_20_65((v0 + 64));
    *(v0 + 184) = sub_21700BE34();
    v1 = swift_task_alloc();
    *(v0 + 192) = v1;
    *v1 = v0;
    v2 = OUTLINED_FUNCTION_6_11(v1);

    return MEMORY[0x28218A6E8](v2);
  }

  else
  {
    sub_2166A0F18((v0 + 16), v0 + 104);
    OUTLINED_FUNCTION_20_65((v0 + 104));
    *(v0 + 160) = sub_21700BE34();
    v3 = swift_task_alloc();
    *(v0 + 168) = v3;
    *v3 = v0;
    v4 = OUTLINED_FUNCTION_6_11(v3);

    return MEMORY[0x28218A6A8](v4);
  }
}

uint64_t sub_216EA0C30()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216EA0D30()
{
  OUTLINED_FUNCTION_33();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));
  v1 = *(v0 + 144);
  v2 = *MEMORY[0x277D21CA8];
  sub_21700D2A4();
  OUTLINED_FUNCTION_34();
  (*(v3 + 104))(v1, v2);
  OUTLINED_FUNCTION_23();

  return v4();
}

uint64_t sub_216EA0DCC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  *(v3 + 200) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216EA0ECC()
{
  OUTLINED_FUNCTION_33();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  v1 = *(v0 + 144);
  v2 = *MEMORY[0x277D21CA8];
  sub_21700D2A4();
  OUTLINED_FUNCTION_34();
  (*(v3 + 104))(v1, v2);
  OUTLINED_FUNCTION_23();

  return v4();
}

uint64_t sub_216EA0F68()
{
  OUTLINED_FUNCTION_33();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_216EA0FD0()
{
  OUTLINED_FUNCTION_33();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_216EA1084()
{
  v3 = OUTLINED_FUNCTION_31_0();
  v4 = type metadata accessor for FavoriteAction(v3);
  OUTLINED_FUNCTION_36(v4);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v2 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_216EA15B4;

  return sub_216E9F384(v0, v7, v1 + v6);
}

void sub_216EA115C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_21700E344();

  [a3 enableCloudLibraryWithOptions:v5 completionHandler:a2];
}

uint64_t sub_216EA1248(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216EA1290()
{
  v1 = OUTLINED_FUNCTION_31_0();
  v2(v1);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_216EA12E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216EA1344(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216EA13A4()
{
  v3 = OUTLINED_FUNCTION_31_0();
  v4 = type metadata accessor for LikeAction(v3);
  OUTLINED_FUNCTION_36(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v2 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_216EA1474;

  return sub_216EA0AB0(v0, v1 + v6);
}

uint64_t sub_216EA1474()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_216EA15B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216EA15F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_216EA1658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v6 = sub_21700CDF4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  sub_21700CE04();
  sub_21682FF4C();
  sub_21700CCD4();
  if (v3)
  {
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v16 + 8))(a2);
    v17 = *(v7 + 8);
    v17(a1, v6);
    return (v17)(v15, v6);
  }

  else
  {
    v33 = a2;
    v19 = *(v7 + 8);
    v31 = v9;
    v32 = v19;
    v19(v15, v6);
    v20 = v35;
    *(v34 + 56) = v35;
    if (qword_280E2C7F0 != -1)
    {
      swift_once();
    }

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93D8, &qword_21701CFF0);
    __swift_project_value_buffer(v21, qword_280E73B58);
    v36 = v20;
    v22 = a1;
    sub_21700CE04();
    sub_21700D364();
    v23 = v32;
    v32(v12, v6);
    v24 = v34;
    sub_2166A0F18(&v35, v34);
    v25 = v31;
    sub_21700CE04();
    v26 = sub_21700CDB4();
    v28 = v27;
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v29 + 8))(v33);
    v23(v22, v6);
    result = (v23)(v25, v6);
    *(v24 + 40) = v26;
    *(v24 + 48) = v28;
  }

  return result;
}

uint64_t sub_216EA19F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216EA1A34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_216EA1AE8(uint64_t a1)
{
  sub_216EA1B84(319);
  if (v1 <= 0x3F)
  {
    sub_2167EE974(319);
    if (v2 <= 0x3F)
    {
      sub_21680D428(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216EA1B84(uint64_t a1)
{
  if (!qword_27CACBC70)
  {
    v4[0] = type metadata accessor for ListLockup(255);
    v4[1] = sub_216EA1C60(&qword_27CABF8A0, type metadata accessor for ListLockup, &unk_21702564C);
    v4[2] = &off_28293B600;
    v4[3] = sub_216EA1C60(&qword_27CAC8C28, type metadata accessor for ListLockup, &unk_21702C0A8);
    v2 = type metadata accessor for MappedItem(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_27CACBC70);
    }
  }
}

uint64_t sub_216EA1C60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for ListItemView.ChevronView(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_216EA1DA0()
{
  v4 = *(v0 + 56);
  swift_getKeyPath();
  sub_216EA53C4(v0, __src);
  v1 = swift_allocObject();
  memcpy((v1 + 16), __src, 0x70uLL);
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBC78, &qword_21706A4D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBC80, &qword_21706A4E0);
  sub_2166D9530(&qword_27CACBC88, &qword_27CACBC78, &qword_21706A4D8, MEMORY[0x277D83980]);
  sub_216EA5404();
  return sub_21700B154();
}

uint64_t sub_216EA1F08@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for ListItemView(0);
  v4 = *(v3 + 20);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v5 = a2 + *(v3 + 24);
  *v5 = swift_getKeyPath();
  v5[40] = 0;
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBCA0, &qword_21706A4E8) + 36);
  v6[32] = 0;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v7 = objc_opt_self();

  v8 = [v7 secondarySystemGroupedBackgroundColor];
  sub_21700AC44();
  v9 = sub_21700B0B4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBC80, &qword_21706A4E0);
  *(a2 + *(result + 36)) = v9;
  return result;
}

void sub_216EA203C(uint64_t a1@<X8>)
{
  v81 = a1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBCB0, &qword_21706A558);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v4 = &v67 - v3;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBCB8, &qword_21706A560);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_105();
  v74 = v6;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBCC0, &qword_21706A568);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_105();
  v79 = v8;
  v78 = sub_217008AD4();
  OUTLINED_FUNCTION_1();
  v73 = v9;
  MEMORY[0x28223BE20](v10);
  v72 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ListItemView(0);
  v68 = *(v12 - 8);
  v13 = *(v68 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBCC8, &qword_21706A570);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = (&v67 - v15);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBCD0, &unk_21706A578);
  OUTLINED_FUNCTION_1();
  v71 = v17;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_105();
  v70 = v19;
  v20 = type metadata accessor for ListLockup(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v21);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v67 - v25;
  sub_216DEA418();
  v27 = v26[*(v20 + 40)];
  OUTLINED_FUNCTION_5_137();
  sub_216EA6860(v26, v28);
  if (v27 == 5)
  {
    sub_216DEA418();
    sub_216683A80(&v23[*(v20 + 52)], v16, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_5_137();
    sub_216EA6860(v23, v29);
    v30 = v75;
    v31 = *(v75 + 44);
    v32 = sub_217007F04();
    __swift_storeEnumTagSinglePayload(v16 + v31, 1, 1, v32);
    sub_216EA6148(v1, &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v33 = (*(v68 + 80) + 16) & ~*(v68 + 80);
    v34 = swift_allocObject();
    sub_216EA6268(&v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33);
    v35 = *(v30 + 48);
    *(v16 + v35) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
    swift_storeEnumTagMultiPayload();
    v36 = v16 + *(v30 + 52);
    *v36 = swift_getKeyPath();
    v36[40] = 0;
    v16[5] = sub_216EA55A4;
    v16[6] = v34;
    v16[7] = 0;
    v16[8] = 0;
    v37 = v72;
    sub_217008AC4();
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_51();
    v42 = sub_2166D9530(v38, v39, v40, v41);
    OUTLINED_FUNCTION_2_178();
    v45 = sub_216EA1C60(v43, v44, MEMORY[0x277CDDB08]);
    v46 = v70;
    v47 = v78;
    sub_21700A364();
    (*(v73 + 8))(v37, v47);
    OUTLINED_FUNCTION_51();
    sub_216697664(v48, v49, v50);
    v51 = v71;
    v52 = v76;
    (*(v71 + 16))(v79, v46, v76);
    swift_storeEnumTagMultiPayload();
    __src[0] = v30;
    __src[1] = v47;
    __src[2] = v42;
    __src[3] = v45;
    OUTLINED_FUNCTION_2_9();
    swift_getOpaqueTypeConformance2();
    sub_216EA5614();
    sub_217009554();
    (*(v51 + 8))(v46, v52);
  }

  else
  {
    *v4 = sub_2170091A4();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBD10, &qword_21706A5A0);
    sub_216EA30E0(v1, &v4[*(v53 + 44)]);
    v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBCF8, &qword_21706A588) + 36)] = 0;
    sub_217009CE4();
    sub_217007F24();
    OUTLINED_FUNCTION_9_103(*(v69 + 36), v54, v55, v56, v57);
    sub_21700B3B4();
    sub_217008BB4();
    v58 = v74;
    sub_2167C5834(v4, v74, &qword_27CACBCB0, &qword_21706A558);
    memcpy((v58 + *(v80 + 36)), __src, 0x70uLL);
    sub_216683A80(v58, v79, &qword_27CACBCB8, &qword_21706A560);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_28_1();
    v63 = sub_2166D9530(v59, v60, v61, v62);
    OUTLINED_FUNCTION_2_178();
    v66 = sub_216EA1C60(v64, v65, MEMORY[0x277CDDB08]);
    v82 = v75;
    v83 = v78;
    v84 = v63;
    v85 = v66;
    OUTLINED_FUNCTION_2_9();
    swift_getOpaqueTypeConformance2();
    sub_216EA5614();
    sub_217009554();
    sub_216697664(v58, &qword_27CACBCB8, &qword_21706A560);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216EA2810@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBCB0, &qword_21706A558);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBE50, &qword_21706A748);
  MEMORY[0x28223BE20](v7);
  v9 = v25 - v8;
  *v6 = sub_2170091A4();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBD10, &qword_21706A5A0);
  sub_216EA30E0(a1, &v6[*(v10 + 44)]);
  v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBCF8, &qword_21706A588) + 36)] = 0;
  v11 = sub_217009CE4();
  sub_217007F24();
  v12 = &v6[*(v4 + 44)];
  *v12 = v11;
  *(v12 + 1) = v13;
  *(v12 + 2) = v14;
  *(v12 + 3) = v15;
  *(v12 + 4) = v16;
  v12[40] = 0;
  sub_21700B3B4();
  sub_217008BB4();
  sub_2167C5834(v6, v9, &qword_27CACBCB0, &qword_21706A558);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBCB8, &qword_21706A560);
  memcpy(&v9[*(v17 + 36)], __src, 0x70uLL);
  v18 = &v9[*(v7 + 36)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A90, &qword_21701ADD0);
  sub_217008C64();
  if (qword_27CAB5938 != -1)
  {
    swift_once();
  }

  v20 = sub_217008B34();
  v21 = __swift_project_value_buffer(v20, qword_27CB22830);
  v22 = sub_216EA6148(v21, v18);
  *(v18 + *(v19 + 36)) = 0;
  MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AA0, &qword_21701ADE0);
  type metadata accessor for ContextMenuPreview(0);
  sub_216EA61B0();
  sub_2166D9530(qword_280E2BAE8, &qword_27CAB8AA0, &qword_21701ADE0, &unk_217037028);
  sub_216EA1C60(qword_280E3F158, type metadata accessor for ContextMenuPreview, &unk_217017238);
  sub_21700A3A4();
  return sub_216697664(v9, &qword_27CACBE50, &qword_21706A748);
}

uint64_t sub_216EA2BEC@<X0>(void (**a1)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)@<X8>)
{
  v28 = a1;
  v26 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v26);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ListLockup(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MenuConfiguration(0);
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v25 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = sub_2170067A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  sub_216CCC5D4();
  sub_216DEA418();
  swift_storeEnumTagMultiPayload();
  sub_2168AA14C();
  sub_216EA6860(v2, type metadata accessor for MenuContext);
  sub_216EA6860(v5, type metadata accessor for ListLockup);
  v18 = *(v12 + 32);
  v18(v14, v17, v11);
  v19 = v25;
  sub_216EA6268(v10, v25);
  v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v21 = (v13 + *(v27 + 80) + v20) & ~*(v27 + 80);
  v22 = swift_allocObject();
  v18((v22 + v20), v14, v11);
  result = sub_216EA6268(v19, v22 + v21);
  v24 = v28;
  *v28 = sub_216A8ADC8;
  v24[1] = v22;
  return result;
}

uint64_t sub_216EA2F24@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ListLockup(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_2170067A4();
  v17 = sub_216EA1C60(&qword_280E4A480, MEMORY[0x277D2A460], MEMORY[0x277D2A398]);
  __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_216CCC5D4();
  sub_216DEA418();
  sub_216683A80(&v5[*(v3 + 60)], v13, &qword_27CAB6DB0, &qword_217016C00);
  sub_216EA6860(v5, type metadata accessor for ListLockup);
  LOBYTE(v5) = v14 != 0;
  sub_216697664(v13, &qword_27CAB6DB0, &qword_217016C00);
  v6 = type metadata accessor for ContextMenuPreview(0);
  v7 = v6[7];
  v8 = sub_21700C4B4();
  __swift_storeEnumTagSinglePayload(a1 + v7, 1, 1, v8);
  v9 = v6[8];
  v10 = sub_21700C444();
  __swift_storeEnumTagSinglePayload(a1 + v9, 1, 1, v10);
  sub_2167B8EF0(&v15, a1 + v6[6]);
  *(a1 + v6[5]) = v5;
  v11 = type metadata accessor for ContextMenuPreview.ViewModel(0);
  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v11);
}

uint64_t sub_216EA30E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBD18, &qword_21706A5A8);
  MEMORY[0x28223BE20](v3 - 8);
  v55 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v50 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBD20, &qword_21706A5B0);
  MEMORY[0x28223BE20](v53);
  v9 = &v50 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBD28, &qword_21706A5B8);
  MEMORY[0x28223BE20](v51);
  v11 = &v50 - v10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBD30, &qword_21706A5C0);
  MEMORY[0x28223BE20](v52);
  v13 = &v50 - v12;
  v14 = type metadata accessor for ListLockup(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBD38, &qword_21706A5C8);
  MEMORY[0x28223BE20](v20 - 8);
  v54 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v50 - v23;
  v57 = a1;
  sub_216DEA418();
  LODWORD(a1) = v19[*(v14 + 40)];
  sub_216EA6860(v19, type metadata accessor for ListLockup);
  if (a1 == 5)
  {
    sub_216DEA418();
    v25 = sub_217009C74();
    sub_217007F24();
    v26 = &v9[*(v53 + 36)];
    *v26 = v25;
    *(v26 + 1) = v27;
    *(v26 + 2) = v28;
    *(v26 + 3) = v29;
    *(v26 + 4) = v30;
    v26[40] = 0;
    sub_216683A80(v9, v11, &qword_27CACBD20, &qword_21706A5B0);
    swift_storeEnumTagMultiPayload();
    sub_216EA5810();
    sub_216EA5EE8();
    sub_217009554();
    v31 = v9;
    v32 = &qword_27CACBD20;
    v33 = &qword_21706A5B0;
  }

  else
  {
    sub_216EA3674(v13);
    v34 = sub_217009C74();
    sub_217007F24();
    v35 = &v13[*(v52 + 36)];
    *v35 = v34;
    *(v35 + 1) = v36;
    *(v35 + 2) = v37;
    *(v35 + 3) = v38;
    *(v35 + 4) = v39;
    v35[40] = 0;
    sub_216683A80(v13, v11, &qword_27CACBD30, &qword_21706A5C0);
    swift_storeEnumTagMultiPayload();
    sub_216EA5810();
    sub_216EA5EE8();
    sub_217009554();
    v31 = v13;
    v32 = &qword_27CACBD30;
    v33 = &qword_21706A5C0;
  }

  sub_216697664(v31, v32, v33);
  *v7 = sub_2170093C4();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBE00, &qword_21706A638);
  sub_216EA3B90(v57, &v7[*(v40 + 44)]);
  sub_216DEA418();
  LODWORD(v57) = v16[*(v14 + 32)];
  sub_216EA6860(v16, type metadata accessor for ListLockup);
  v41 = v7;
  v42 = v24;
  v43 = v24;
  v44 = v54;
  sub_216683A80(v43, v54, &qword_27CACBD38, &qword_21706A5C8);
  v45 = v55;
  sub_216683A80(v41, v55, &qword_27CACBD18, &qword_21706A5A8);
  v46 = v56;
  sub_216683A80(v44, v56, &qword_27CACBD38, &qword_21706A5C8);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBE08, &qword_21706A640);
  sub_216683A80(v45, v46 + v47[12], &qword_27CACBD18, &qword_21706A5A8);
  v48 = v46 + v47[16];
  *v48 = 0;
  *(v48 + 8) = 1;
  *(v46 + v47[20]) = v57;
  sub_216697664(v41, &qword_27CACBD18, &qword_21706A5A8);
  sub_216697664(v42, &qword_27CACBD38, &qword_21706A5C8);
  sub_216697664(v45, &qword_27CACBD18, &qword_21706A5A8);
  return sub_216697664(v44, &qword_27CACBD38, &qword_21706A5C8);
}

uint64_t sub_216EA3674@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21700ADC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBD60, &qword_21706A5D8);
  MEMORY[0x28223BE20](v7);
  v9 = (v40 - v8);
  sub_216EA52EC();
  if (v10)
  {
    if (qword_280E29B20 != -1)
    {
      swift_once();
    }

    v11 = qword_280E739D0;
    sub_21700AE14();
    (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
    v12 = sub_21700AE04();

    (*(v4 + 8))(v6, v3);
    v13 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B38, &unk_2170586D0) + 36));
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820, &qword_21701A450) + 28);
    v15 = *MEMORY[0x277CE1050];
    v16 = sub_21700ADF4();
    (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
    *v13 = swift_getKeyPath();
    *v9 = v12;
    v17 = sub_21700ACF4();
    KeyPath = swift_getKeyPath();
    v19 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBDC8, &unk_21706A618) + 36));
    *v19 = KeyPath;
    v19[1] = v17;
    sub_21700B3B4();
    sub_2170083C4();
    v20 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBDC0, &qword_21706A610) + 36));
    v21 = v40[1];
    *v20 = v40[0];
    v20[1] = v21;
    v20[2] = v40[2];
    LOBYTE(v17) = sub_217009C84();
    sub_217007F24();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBDB8, &qword_21706A608) + 36);
    *v30 = v17;
    *(v30 + 1) = v23;
    *(v30 + 2) = v25;
    *(v30 + 3) = v27;
    *(v30 + 4) = v29;
    v30[40] = 0;
    *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBDB0, &qword_21706A600) + 36)) = 256;
    if (qword_27CAB61D8 != -1)
    {
      swift_once();
    }

    v31 = sub_21700AD24();
    *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBDA0, &qword_21706A5F8) + 36)) = v31;
    if (qword_280E2C2C8 != -1)
    {
      swift_once();
    }

    v32 = qword_280E73AA0;
    v33 = byte_280E73AA8;
    v34 = qword_280E73AB0;
    *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBD90, &qword_21706A5F0) + 36)) = 256;
    v35 = swift_getKeyPath();
    v36 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBD70, &qword_21706A5E0) + 36);
    *v36 = v32;
    v36[8] = v33;
    *(v36 + 2) = v34;
    *(v36 + 3) = v35;
    v36[32] = 0;

    sub_21700ACC4();
    v37 = sub_21700AD04();

    v38 = v9 + *(v7 + 36);
    *v38 = v37;
    *(v38 + 8) = xmmword_217026230;
    *(v38 + 3) = 0x4000000000000000;
    sub_216EA60D8(v9, a1);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v7);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v7);
  }
}

uint64_t sub_216EA3B90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBE10, &qword_21706A6D8);
  v98 = *(v3 - 8);
  v99 = v3;
  MEMORY[0x28223BE20](v3);
  v91 = v77 - v4;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBE18, &qword_21706A6E0) - 8;
  MEMORY[0x28223BE20](v96);
  v93 = v77 - v5;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBE20, &qword_21706A6E8) - 8;
  MEMORY[0x28223BE20](v95);
  v90 = v77 - v6;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBE28, &qword_21706A6F0) - 8;
  MEMORY[0x28223BE20](v94);
  v97 = v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v89 = v77 - v9;
  MEMORY[0x28223BE20](v10);
  v92 = v77 - v11;
  v12 = type metadata accessor for ListLockup(0) - 8;
  v84 = v12;
  MEMORY[0x28223BE20](v12);
  v87 = v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v77 - v15;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBE30, &qword_21706A6F8);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v79 = v77 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBE38, &qword_21706A700);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v80 = v77 - v20;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBE40, &qword_21706A708) - 8;
  MEMORY[0x28223BE20](v78);
  v88 = v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v77 - v23;
  MEMORY[0x28223BE20](v25);
  v82 = v77 - v26;
  v83 = *a1;
  sub_216DEA418();
  v27 = &v16[*(v12 + 32)];
  v29 = *v27;
  v28 = *(v27 + 1);
  sub_21700DF14();
  v81 = type metadata accessor for ListLockup;
  sub_216EA6860(v16, type metadata accessor for ListLockup);
  if (v28)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  if (v28)
  {
    v31 = v28;
  }

  else
  {
    v31 = 0xE000000000000000;
  }

  v32 = sub_217009D54();
  KeyPath = swift_getKeyPath();
  v103 = v30;
  v104 = v31;
  v105 = 0;
  v106 = MEMORY[0x277D84F90];
  v107 = KeyPath;
  v108 = v32;
  sub_217008A74();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660, &qword_2170189A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7640, &unk_2170182E0);
  v35 = sub_2167C4CBC();
  v101 = v34;
  v102 = v35;
  v77[1] = v34;
  swift_getOpaqueTypeConformance2();
  v36 = v79;
  sub_21700AB44();

  v37 = sub_217009814();
  v38 = v80;
  (*(v85 + 32))(v80, v36, v86);
  *(v38 + *(v19 + 44)) = v37;
  LOBYTE(v37) = sub_217009CE4();
  sub_217007F24();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  sub_2167C5834(v38, v24, &qword_27CACBE38, &qword_21706A700);
  v47 = &v24[*(v78 + 44)];
  *v47 = v37;
  *(v47 + 1) = v40;
  *(v47 + 2) = v42;
  *(v47 + 3) = v44;
  *(v47 + 4) = v46;
  v47[40] = 0;
  v48 = v82;
  sub_2167C5834(v24, v82, &qword_27CACBE40, &qword_21706A708);
  v49 = v87;
  sub_216DEA418();
  v50 = (v49 + *(v84 + 36));
  v52 = *v50;
  v51 = v50[1];
  sub_21700DF14();
  sub_216EA6860(v49, v81);
  if (v51)
  {
    v53 = v52;
  }

  else
  {
    v53 = 0;
  }

  if (!v51)
  {
    v51 = 0xE000000000000000;
  }

  v103 = v53;
  v104 = v51;
  v105 = 0;
  v106 = MEMORY[0x277D84F90];
  sub_217008A74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668, &unk_2170174F0);
  sub_2167C4D74();
  v54 = v91;
  sub_21700AB44();

  v55 = sub_217009E64();
  v56 = swift_getKeyPath();
  v57 = v93;
  (*(v98 + 32))(v93, v54, v99);
  v58 = (v57 + *(v96 + 44));
  *v58 = v56;
  v58[1] = v55;
  LODWORD(v55) = sub_217009834();
  v59 = v90;
  sub_2167C5834(v57, v90, &qword_27CACBE18, &qword_21706A6E0);
  *(v59 + *(v95 + 44)) = v55;
  LOBYTE(v55) = sub_217009CE4();
  sub_217007F24();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v68 = v59;
  v69 = v89;
  sub_2167C5834(v68, v89, &qword_27CACBE20, &qword_21706A6E8);
  v70 = v69 + *(v94 + 44);
  *v70 = v55;
  *(v70 + 8) = v61;
  *(v70 + 16) = v63;
  *(v70 + 24) = v65;
  *(v70 + 32) = v67;
  *(v70 + 40) = 0;
  v71 = v92;
  sub_2167C5834(v69, v92, &qword_27CACBE28, &qword_21706A6F0);
  v72 = v88;
  sub_216683A80(v48, v88, &qword_27CACBE40, &qword_21706A708);
  v73 = v97;
  sub_216683A80(v71, v97, &qword_27CACBE28, &qword_21706A6F0);
  v74 = v100;
  sub_216683A80(v72, v100, &qword_27CACBE40, &qword_21706A708);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBE48, &qword_21706A740);
  sub_216683A80(v73, v74 + *(v75 + 48), &qword_27CACBE28, &qword_21706A6F0);
  sub_216697664(v71, &qword_27CACBE28, &qword_21706A6F0);
  sub_216697664(v48, &qword_27CACBE40, &qword_21706A708);
  sub_216697664(v73, &qword_27CACBE28, &qword_21706A6F0);
  return sub_216697664(v72, &qword_27CACBE40, &qword_21706A708);
}

uint64_t sub_216EA4490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_217009DC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660, &qword_2170189A0);
  sub_2167C4CBC();
  return sub_21700A304();
}

uint64_t sub_216EA4510@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = sub_217009E94();
  KeyPath = swift_getKeyPath();
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = KeyPath;
  a2[5] = v7;

  return sub_2167770D0(v3, v4, v5, v6);
}

void sub_216EA4588(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB75D0, &qword_217017420);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v54 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBE60, &qword_21706A750);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v54 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBE68, &qword_21706A758);
  OUTLINED_FUNCTION_1();
  v14 = v13;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v17 = &v54 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBE70, &unk_21706A760);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_105();
  if (a1)
  {
    v54 = v20;
    v55 = v14;
    v56 = v12;
    v57 = v4;
    v58 = v19;
    v59 = a2;
    v21 = sub_21700ADB4();
    v22 = sub_217009D54();
    KeyPath = swift_getKeyPath();
    v60 = v21;
    v61 = KeyPath;
    v62 = v22;
    sub_217009DE4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8250, &qword_217019260);
    sub_2167E947C();
    sub_21700A304();

    v24 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA148, &unk_21706A770) + 36)];
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820, &qword_21701A450) + 28);
    v26 = *MEMORY[0x277CE1050];
    sub_21700ADF4();
    OUTLINED_FUNCTION_34();
    (*(v27 + 104))(v24 + v25, v26);
    *v24 = swift_getKeyPath();
    *&v11[*(v8 + 36)] = sub_217009824();
    v28 = *MEMORY[0x277CDF988];
    v29 = sub_217008844();
    OUTLINED_FUNCTION_34();
    (*(v30 + 104))(v7, v28, v29);
    sub_216EA1C60(&qword_280E2B340, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
    if (sub_21700E494())
    {
      v31 = sub_216EA62C0();
      OUTLINED_FUNCTION_51();
      v36 = sub_2166D9530(v32, v33, v34, v35);
      v37 = v57;
      sub_21700A5B4();
      OUTLINED_FUNCTION_51();
      sub_216697664(v38, v39, v40);
      sub_216697664(v11, &qword_27CACBE60, &qword_21706A750);
      v60 = v8;
      v61 = v37;
      v62 = v31;
      v63 = v36;
      swift_getOpaqueTypeConformance2();
      v41 = v54;
      v42 = v56;
      sub_21700A4F4();
      (*(v55 + 8))(v17, v42);
      sub_217009CD4();
      sub_217007F24();
      v43 = v58;
      OUTLINED_FUNCTION_9_103(*(v58 + 36), v44, v45, v46, v47);
      v48 = v59;
      sub_2167C5834(v41, v59, &qword_27CACBE70, &unk_21706A760);
      __swift_storeEnumTagSinglePayload(v48, 0, 1, v43);
      OUTLINED_FUNCTION_26();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26();

    __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  }
}

double sub_216EA4A78@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  MEMORY[0x28223BE20](v3 - 8);
  v69 = &v58 - v4;
  v5 = sub_21700C444();
  v71 = *(v5 - 8);
  v72 = v5;
  MEMORY[0x28223BE20](v5);
  v68 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v58 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v58 - v14;
  v16 = sub_217007474();
  v66 = *(v16 - 8);
  v67 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v61 = &v58 - v20;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8, &qword_217017590);
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v62 = &v58 - v21;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBED8, &qword_21706A808);
  MEMORY[0x28223BE20](v60);
  v64 = &v58 - v22;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBEE0, &qword_21706A810);
  MEMORY[0x28223BE20](v70);
  v24 = &v58 - v23;
  v59 = type metadata accessor for ListLockup(0);
  v25 = *(v59 + 72);
  sub_216683A80(v1 + v25, v12, &qword_27CAB6D60, &qword_217014E40);
  v26 = type metadata accessor for Artwork(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v26) == 1)
  {
    sub_216697664(v12, &qword_27CAB6D60, &qword_217014E40);
    v27 = sub_21700C4B4();
    v28 = v15;
    v29 = 1;
  }

  else
  {
    v30 = a1;
    v31 = sub_21700C4B4();
    (*(*(v31 - 8) + 16))(v15, v12, v31);
    sub_216EA6860(v12, type metadata accessor for Artwork);
    v28 = v15;
    v29 = 0;
    v27 = v31;
    a1 = v30;
  }

  __swift_storeEnumTagSinglePayload(v28, v29, 1, v27);
  v33 = v71;
  v32 = v72;
  if (qword_27CAB61D0 != -1)
  {
    swift_once();
  }

  sub_217007444();
  v34 = v1;
  sub_216683A80(v1 + v25, v9, &qword_27CAB6D60, &qword_217014E40);
  if (__swift_getEnumTagSinglePayload(v9, 1, v26) == 1)
  {
    sub_216697664(v9, &qword_27CAB6D60, &qword_217014E40);
    v35 = v69;
    __swift_storeEnumTagSinglePayload(v69, 1, 1, v32);
    v36 = v68;
    sub_21700C404();
    if (__swift_getEnumTagSinglePayload(v35, 1, v32) != 1)
    {
      sub_216697664(v35, &qword_27CAB7530, &unk_21701A660);
    }
  }

  else
  {
    v37 = v69;
    (*(v33 + 16))(v69, &v9[*(v26 + 20)], v32);
    sub_216EA6860(v9, type metadata accessor for Artwork);
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v32);
    v36 = v68;
    (*(v33 + 32))(v68, v37, v32);
  }

  v38 = v61;
  sub_2170073E4();
  (*(v33 + 8))(v36, v32);
  v39 = *(v66 + 8);
  v40 = v18;
  v41 = v67;
  v39(v40, v67);
  v42 = (v34 + *(v59 + 24));
  v44 = *v42;
  v43 = v42[1];
  v45 = swift_allocObject();
  *(v45 + 16) = v44;
  *(v45 + 24) = v43;
  sub_2167C505C();
  sub_21700DF14();
  v46 = v62;
  sub_2170073F4();

  v39(v38, v41);
  sub_21700B3B4();
  sub_2170083C4();
  v47 = v64;
  (*(v63 + 32))(v64, v46, v65);
  v48 = (v47 + *(v60 + 36));
  v49 = v74;
  *v48 = v73;
  v48[1] = v49;
  v48[2] = v75;
  if (qword_280E2C2C8 != -1)
  {
    swift_once();
  }

  v50 = qword_280E73AA0;
  v51 = byte_280E73AA8;
  v52 = qword_280E73AB0;
  sub_2167C5834(v47, v24, &qword_27CACBED8, &qword_21706A808);
  *&v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBEE8, &qword_21706A818) + 36)] = 256;
  KeyPath = swift_getKeyPath();
  v54 = &v24[*(v70 + 36)];
  *v54 = v50;
  v54[8] = v51;
  *(v54 + 2) = v52;
  *(v54 + 3) = KeyPath;
  v54[32] = 0;

  sub_21700ACC4();
  v55 = sub_21700AD04();

  sub_2167C5834(v24, a1, &qword_27CACBEE0, &qword_21706A810);
  v56 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBEF0, &qword_21706A820) + 36);
  *v56 = v55;
  result = 8.0;
  *(v56 + 8) = xmmword_217026230;
  *(v56 + 24) = 0x4000000000000000;
  return result;
}

uint64_t sub_216EA52EC()
{
  v0 = type metadata accessor for ListLockup(0);
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DEA418();
  v4 = v3[*(v1 + 48)];
  sub_216EA6860(v3, type metadata accessor for ListLockup);
  return *&aDolby[8 * v4];
}

unint64_t sub_216EA5404()
{
  result = qword_27CACBC90;
  if (!qword_27CACBC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBC80, &qword_21706A4E0);
    sub_216EA54BC();
    sub_2166D9530(&qword_280E2A8C8, &qword_27CAB88D8, &qword_21701D180, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBC90);
  }

  return result;
}

unint64_t sub_216EA54BC()
{
  result = qword_27CACBC98;
  if (!qword_27CACBC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBCA0, &qword_21706A4E8);
    sub_216EA1C60(&qword_27CACBCA8, type metadata accessor for ListItemView, &unk_21706A414);
    sub_2166D9530(&qword_280E2A8D8, &qword_27CAB8860, &unk_21701A550, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBC98);
  }

  return result;
}

uint64_t sub_216EA55A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListItemView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_216EA2810(v4, a1);
}

unint64_t sub_216EA5614()
{
  result = qword_27CACBCE0;
  if (!qword_27CACBCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBCB8, &qword_21706A560);
    sub_216EA56A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBCE0);
  }

  return result;
}

unint64_t sub_216EA56A0()
{
  result = qword_27CACBCE8;
  if (!qword_27CACBCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBCB0, &qword_21706A558);
    sub_216EA572C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBCE8);
  }

  return result;
}

unint64_t sub_216EA572C()
{
  result = qword_27CACBCF0;
  if (!qword_27CACBCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBCF8, &qword_21706A588);
    sub_2166D9530(&qword_27CACBD00, &qword_27CACBD08, &unk_21706A590, MEMORY[0x277CE1138]);
    sub_2166D9530(&qword_280E2A8E8, &qword_27CAC3CE0, &qword_2170623C0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBCF0);
  }

  return result;
}

unint64_t sub_216EA5810()
{
  result = qword_27CACBD40;
  if (!qword_27CACBD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBD30, &qword_21706A5C0);
    sub_216EA589C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBD40);
  }

  return result;
}

unint64_t sub_216EA589C()
{
  result = qword_27CACBD48;
  if (!qword_27CACBD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBD50, &qword_21706A5D0);
    sub_216EA5920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBD48);
  }

  return result;
}

unint64_t sub_216EA5920()
{
  result = qword_27CACBD58;
  if (!qword_27CACBD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBD60, &qword_21706A5D8);
    sub_216EA59AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBD58);
  }

  return result;
}

unint64_t sub_216EA59AC()
{
  result = qword_27CACBD68;
  if (!qword_27CACBD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBD70, &qword_21706A5E0);
    sub_216EA5A64();
    sub_2166D9530(&qword_27CAB76C8, &qword_27CAB76D0, &qword_217062740, &unk_21705A1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBD68);
  }

  return result;
}

unint64_t sub_216EA5A64()
{
  result = qword_27CACBD78;
  if (!qword_27CACBD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBD80, &qword_21706A5E8);
    sub_216EA5AF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBD78);
  }

  return result;
}

unint64_t sub_216EA5AF0()
{
  result = qword_27CACBD88;
  if (!qword_27CACBD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBD90, &qword_21706A5F0);
    sub_216EA5BA8();
    sub_2166D9530(&qword_280E2B388, &qword_27CAB76C0, &unk_217017530, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBD88);
  }

  return result;
}

unint64_t sub_216EA5BA8()
{
  result = qword_27CACBD98;
  if (!qword_27CACBD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBDA0, &qword_21706A5F8);
    sub_216EA5C60();
    sub_2166D9530(&qword_27CACBDE0, &qword_27CACBDE8, &qword_21706A630, MEMORY[0x277CE08B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBD98);
  }

  return result;
}

unint64_t sub_216EA5C60()
{
  result = qword_27CACBDA8;
  if (!qword_27CACBDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBDB0, &qword_21706A600);
    sub_216EA5D18();
    sub_2166D9530(&qword_27CACBDD0, &qword_27CACBDD8, &qword_21706A628, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBDA8);
  }

  return result;
}

unint64_t sub_216EA5D18()
{
  result = qword_280E2AE08;
  if (!qword_280E2AE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBDB8, &qword_21706A608);
    sub_216EA5DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AE08);
  }

  return result;
}

unint64_t sub_216EA5DA4()
{
  result = qword_280E2AEA0;
  if (!qword_280E2AEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBDC0, &qword_21706A610);
    sub_216EA5E30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AEA0);
  }

  return result;
}

unint64_t sub_216EA5E30()
{
  result = qword_280E2AF78;
  if (!qword_280E2AF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBDC8, &unk_21706A618);
    sub_21680C99C();
    sub_2166D9530(&qword_280E2A718, &qword_27CAB7BE0, &unk_217018250, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AF78);
  }

  return result;
}

unint64_t sub_216EA5EE8()
{
  result = qword_27CACBDF0;
  if (!qword_27CACBDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBD20, &qword_21706A5B0);
    sub_216EA1C60(&qword_27CACBDF8, type metadata accessor for ListItemView.ListItemArtworkView, &unk_21706A7B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBDF0);
  }

  return result;
}

uint64_t sub_216EA5FC4(uint64_t a1)
{
  result = sub_21700B304();
  v2 = 29.0;
  if (result)
  {
    v2 = 28.0;
  }

  qword_27CACBC50 = *&v2;
  return result;
}

uint64_t sub_216EA5FF4()
{
  v0 = sub_21700AC64();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v1);
  result = sub_21700AD44();
  qword_27CACBC58 = result;
  return result;
}

uint64_t sub_216EA60D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBD60, &qword_21706A5D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216EA6148(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

unint64_t sub_216EA61B0()
{
  result = qword_27CACBE58;
  if (!qword_27CACBE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBE50, &qword_21706A748);
    sub_216EA5614();
    sub_2166D9530(&qword_280E2A810, &qword_27CAB8A90, &qword_21701ADD0, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBE58);
  }

  return result;
}

uint64_t sub_216EA6268(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

unint64_t sub_216EA62C0()
{
  result = qword_27CACBE78;
  if (!qword_27CACBE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBE60, &qword_21706A750);
    sub_216E115E4();
    sub_2166D9530(&qword_280E2A830, &qword_27CAB8870, qword_217036360, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBE78);
  }

  return result;
}

uint64_t sub_216EA63A0(uint64_t a1)
{
  result = type metadata accessor for ListLockup(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_216EA640C()
{
  result = qword_27CACBE90;
  if (!qword_27CACBE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBE98, "Nn\v");
    sub_216EA5404();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBE90);
  }

  return result;
}

unint64_t sub_216EA6490()
{
  result = qword_27CACBEA0;
  if (!qword_27CACBEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBEA8, &qword_21706A7A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBCC8, &qword_21706A570);
    sub_217008AD4();
    sub_2166D9530(&qword_27CACBCD8, &qword_27CACBCC8, &qword_21706A570, &unk_21702C8E0);
    sub_216EA1C60(&qword_280E2AD60, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_216EA5614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBEA0);
  }

  return result;
}

unint64_t sub_216EA65DC()
{
  result = qword_27CACBEB0;
  if (!qword_27CACBEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBEB8, &qword_21706A7A8);
    sub_216EA6660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBEB0);
  }

  return result;
}

unint64_t sub_216EA6660()
{
  result = qword_27CACBEC0;
  if (!qword_27CACBEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBE70, &unk_21706A760);
    sub_216EA66EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBEC0);
  }

  return result;
}

unint64_t sub_216EA66EC()
{
  result = qword_27CACBEC8;
  if (!qword_27CACBEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBED0, &qword_21706A7B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBE60, &qword_21706A750);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB75D0, &qword_217017420);
    sub_216EA62C0();
    sub_2166D9530(&qword_280E29AE8, &qword_27CAB75D0, &qword_217017420, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    sub_216EA1C60(&qword_280E2A6F0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBEC8);
  }

  return result;
}

uint64_t sub_216EA6860(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216EA68B8()
{
  result = qword_27CACBEF8;
  if (!qword_27CACBEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBEF0, &qword_21706A820);
    sub_216EA6944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBEF8);
  }

  return result;
}

unint64_t sub_216EA6944()
{
  result = qword_27CACBF00;
  if (!qword_27CACBF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBEE0, &qword_21706A810);
    sub_216EA69FC();
    sub_2166D9530(&qword_27CAB76C8, &qword_27CAB76D0, &qword_217062740, &unk_21705A1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBF00);
  }

  return result;
}

unint64_t sub_216EA69FC()
{
  result = qword_27CACBF08;
  if (!qword_27CACBF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBF10, &unk_21706A828);
    sub_216EA6A88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBF08);
  }

  return result;
}

unint64_t sub_216EA6A88()
{
  result = qword_27CACBF18;
  if (!qword_27CACBF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBEE8, &qword_21706A818);
    sub_216EA6B40();
    sub_2166D9530(&qword_280E2B388, &qword_27CAB76C0, &unk_217017530, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBF18);
  }

  return result;
}

unint64_t sub_216EA6B40()
{
  result = qword_27CACBF20;
  if (!qword_27CACBF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBED8, &qword_21706A808);
    sub_2167C505C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBF20);
  }

  return result;
}

uint64_t sub_216EA6C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v36 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v35 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v15 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  sub_21700CE04();
  v21 = v37;
  v22 = *(v6 + 16);
  v40 = v4;
  v22(v9, v37, v4);
  v23 = v38;
  sub_21700D224();
  if (v23)
  {
    (*(v6 + 8))(v21, v40);
    return (*(v11 + 8))(v41, v39);
  }

  else
  {
    v25 = v36;
    (*(v17 + 32))(v36, v20, v15);
    v26 = v35;
    v27 = v41;
    v28 = v21;
    sub_21700CE04();
    v29 = sub_21700CD94();
    v31 = v30;
    (*(v6 + 8))(v28, v40);
    v32 = *(v11 + 8);
    v33 = v39;
    v32(v27, v39);
    v32(v26, v33);
    result = type metadata accessor for DismissModalPresentationAction(0);
    v34 = v25 + *(result + 20);
    *v34 = v29;
    *(v34 + 8) = v31 & 1;
  }

  return result;
}

unint64_t sub_216EA6FA4(uint64_t a1)
{
  result = sub_216EA6FCC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216EA6FCC()
{
  result = qword_27CACBF28;
  if (!qword_27CACBF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBF28);
  }

  return result;
}

uint64_t sub_216EA7068(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t BubbleTipModel.id.getter()
{
  v0 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v6 = v5 - v4;
  v7 = sub_2170076F4();
  v8 = sub_2167B3508(v7);
  if (v9)
  {
    return v8;
  }

  sub_217006214();
  v10 = sub_2170061F4();
  (*(v2 + 8))(v6, v0);
  return v10;
}

uint64_t sub_216EA7194@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7858, &qword_217017740);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  v13 = _s15InlineBubbleTipVMa(0);
  sub_2167C88FC(v1 + *(v13 + 24), v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21700DA84();
    OUTLINED_FUNCTION_34();
    return (*(v14 + 32))(a1, v12);
  }

  else
  {
    sub_21700ED94();
    v16 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v3);
  }
}

uint64_t sub_216EA735C@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v2 = _s15InlineBubbleTipVMa(0);
  v58 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v59 = v3;
  v60 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700DA84();
  OUTLINED_FUNCTION_1();
  v56 = v5;
  v57 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v55 = v7 - v6;
  v54 = sub_21700DAF4();
  OUTLINED_FUNCTION_1();
  v52 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v48 - v17;
  v19 = sub_217007624();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7();
  v25 = v24 - v23;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7890, &qword_217017830);
  OUTLINED_FUNCTION_1();
  v48 = v26;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  v29 = &v48 - v28;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7898, &qword_217017838);
  OUTLINED_FUNCTION_1();
  v50 = v30;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v31);
  v33 = &v48 - v32;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBF38, qword_21706AA50);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  v36 = &v48 - v35;
  v61 = v1;

  sub_217007614();
  v37 = sub_2170076F4();
  sub_21700EDC4();

  v38 = sub_21700D7A4();
  if (__swift_getEnumTagSinglePayload(v15, 1, v38) == 1)
  {
    sub_2167B0250(v15);
    v39 = 1;
  }

  else
  {
    (*(*(v38 - 8) + 32))(v18, v15, v38);
    v39 = 0;
  }

  __swift_storeEnumTagSinglePayload(v18, v39, 1, v38);
  sub_21700DAE4();
  v40 = sub_216EA7C54(&qword_280E48610, MEMORY[0x277CEE7B0], MEMORY[0x277CEE7A8]);
  sub_21700A1C4();
  (*(v52 + 8))(v12, v54);
  sub_2167B0250(v18);
  (*(v21 + 8))(v25, v19);
  v41 = v55;
  v42 = v61;
  sub_216EA7194(v55);
  __src[0] = v19;
  __src[1] = v40;
  swift_getOpaqueTypeConformance2();
  v43 = v49;
  sub_21700A1A4();
  (*(v56 + 8))(v41, v57);
  (*(v48 + 8))(v29, v43);
  sub_21700B3B4();
  sub_217008BB4();
  (*(v50 + 32))(v36, v33, v51);
  memcpy(&v36[*(v53 + 36)], __src, 0x70uLL);
  v44 = v60;
  sub_216EA7C9C(v42, v60);
  v45 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v46 = swift_allocObject();
  sub_216EA7D00(v44, v46 + v45);
  sub_216EA7DD4();
  sub_21700A894();

  return sub_216764CD4(v36);
}

uint64_t sub_216EA7A00(uint64_t result, uint64_t a2)
{
  if ((result & 1) != 0 && *(a2 + 8) == 1)
  {
    return sub_2170076B4();
  }

  return result;
}

void BubbleTipModel.impressionMetrics.getter(uint64_t a1)
{
  v1 = sub_2170076F4();
  sub_21700EDC4();
}

double BubbleTipModel.segue.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t _s15InlineBubbleTipVMa(uint64_t a1)
{
  result = qword_280E41998;
  if (!qword_280E41998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216EA7B94(uint64_t a1)
{
  sub_217007654();
  if (v1 <= 0x3F)
  {
    sub_2167C86F8(319);
    if (v2 <= 0x3F)
    {
      sub_2167FCA6C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_216EA7C54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216EA7C9C(uint64_t a1, uint64_t a2)
{
  v4 = _s15InlineBubbleTipVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216EA7D00(uint64_t a1, uint64_t a2)
{
  v4 = _s15InlineBubbleTipVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216EA7D64(uint64_t a1)
{
  v3 = *(_s15InlineBubbleTipVMa(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_216EA7A00(a1, v4);
}

unint64_t sub_216EA7DD4()
{
  result = qword_280E2B1D0;
  if (!qword_280E2B1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBF38, qword_21706AA50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7890, &qword_217017830);
    sub_217007624();
    sub_216EA7C54(&qword_280E48610, MEMORY[0x277CEE7B0], MEMORY[0x277CEE7A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B1D0);
  }

  return result;
}

uint64_t sub_216EA7F2C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a2;
  v79 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v62[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v73 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v76 = v10;
  MEMORY[0x28223BE20](v11);
  v69 = &v62[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v62[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v62[-v17];
  MEMORY[0x28223BE20](v19);
  v21 = &v62[-v20];
  sub_21700D7A4();
  sub_21700CE04();
  v71 = v6;
  v72 = v4;
  v65 = *(v6 + 16);
  v66 = v6 + 16;
  v65(v9, v75, v4);
  v22 = type metadata accessor for SocialOnboardingWelcomePageLockup(0);
  v70 = v22[6];
  v23 = v76;
  v67 = v21;
  v68 = v9;
  sub_21700D734();
  v74 = a1;
  v24 = v73;
  sub_21700CE04();
  v25 = sub_21700CDB4();
  v27 = v26;
  v30 = *(v23 + 8);
  v29 = v23 + 8;
  v28 = v30;
  v30(v18, v24);
  if (v27)
  {
    v31 = 0x656C746974;
    v32 = v22[5];
    v77 = v25;
    v78 = v27;
    v64 = v32;
    sub_21700F364();
    sub_21700CE04();
    v33 = sub_21700CDB4();
    v34 = v28;
    v36 = v35;
    v34(v15, v24);
    v63 = v36 != 0;
    v76 = v29;
    if (v36)
    {
      v31 = 0x7470697263736564;
      v37 = (v79 + v22[7]);
      *v37 = v33;
      v37[1] = v36;
      v38 = v69;
      v39 = v74;
      sub_21700CE04();
      v40 = sub_21700CDB4();
      v42 = v41;
      v34(v38, v24);
      if (v42)
      {
        v43 = v24;
        v44 = (v79 + v22[8]);
        *v44 = v40;
        v44[1] = v42;
        type metadata accessor for Artwork(0);
        sub_21700CE04();
        v45 = v75;
        v46 = v72;
        v65(v68, v75, v72);
        sub_216EA8628(&qword_280E2BF60, type metadata accessor for Artwork, &unk_21705A604);
        sub_21700D734();
        (*(v71 + 8))(v45, v46);
        return (v34)(v39, v43);
      }

      v54 = 0xEF747865546E6F69;
      v55 = v22;
      v69 = v34;
    }

    else
    {
      v54 = 0xE500000000000000;
      v55 = v22;
      v69 = v34;
      v39 = v74;
    }

    v56 = v75;
    v57 = v72;
    v58 = sub_21700E2E4();
    OUTLINED_FUNCTION_0_249();
    sub_216EA8628(v59, v60, MEMORY[0x277D22550]);
    swift_allocError();
    *v61 = v31;
    v61[1] = v54;
    v61[2] = v55;
    (*(*(v58 - 8) + 104))(v61, *MEMORY[0x277D22530], v58);
    swift_willThrow();
    (*(v71 + 8))(v56, v57);
    (v69)(v39, v73);
    v53 = v79;
    sub_216788110(v79 + v64);
    v52 = v63;
  }

  else
  {
    v48 = sub_21700E2E4();
    OUTLINED_FUNCTION_0_249();
    sub_216EA8628(v49, v50, MEMORY[0x277D22550]);
    swift_allocError();
    *v51 = 25705;
    v51[1] = 0xE200000000000000;
    v51[2] = v22;
    (*(*(v48 - 8) + 104))(v51, *MEMORY[0x277D22530], v48);
    swift_willThrow();
    (*(v71 + 8))(v75, v72);
    v28(v74, v24);
    v52 = 0;
    v53 = v79;
  }

  result = sub_2167B0250(v53 + v70);
  if (v52)
  {
  }

  return result;
}

uint64_t sub_216EA8628(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216EA86D4()
{
  sub_216788294(v0 + 8, v3);
  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216EA872C()
{
  sub_216788294(v0, v3);
  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216EA8784(uint64_t (*a1)(void))
{
  v2 = a1(0);
  sub_216788294(v1 + *(v2 + 20), v5);
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

_BYTE *storeEnumTagSinglePayload for BubbleLockup.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_216EA962C(uint64_t a1)
{
  v1 = sub_21700F5E4();

  if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216EA9680@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216EA962C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_216EA96B4()
{
  result = qword_27CACBF40;
  if (!qword_27CACBF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBF40);
  }

  return result;
}

uint64_t sub_216EA9708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a2;
  v59 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_77();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - v18;
  sub_21700D7A4();
  OUTLINED_FUNCTION_2_0();
  sub_21700CE04();
  v55 = v6;
  v20 = *(v6 + 16);
  v61 = v4;
  v56 = v20;
  v57 = v6 + 16;
  v20(v9, v64, v4);
  v58 = v9;
  OUTLINED_FUNCTION_16_69(v19, v9);
  v54 = a1;
  sub_21700CE04();
  v21 = sub_21700CDB4();
  v23 = v22;
  v24 = v10;
  v60 = *(v12 + 8);
  v25 = v12 + 8;
  v60(v16, v10);
  if (v23)
  {
    v26 = type metadata accessor for BubbleLockup(0);
    v62 = v21;
    v63 = v23;
    v27 = v59;
    sub_21700F364();
    v28 = v54;
    sub_21700CE04();
    v29 = v64;
    sub_21700D2E4();
    v52 = v24;
    v60(v19, v24);
    type metadata accessor for Artwork(0);
    sub_21700CE04();
    v30 = v58;
    v56(v58, v29, v61);
    sub_2166D439C(&qword_280E2BF60, type metadata accessor for Artwork, &unk_21705A604);
    v31 = OUTLINED_FUNCTION_9_104();
    OUTLINED_FUNCTION_16_69(v31, v30);
    sub_21700CE04();
    sub_21700CDB4();
    v32 = OUTLINED_FUNCTION_2_179();
    v33 = v52;
    v34 = v60;
    v60(v32, v52);
    OUTLINED_FUNCTION_10_100(v26[7]);
    sub_21700CE04();
    sub_21700CDB4();
    v35 = OUTLINED_FUNCTION_2_179();
    v34(v35, v33);
    OUTLINED_FUNCTION_10_100(v26[8]);
    sub_21700CE04();
    sub_21700CDB4();
    v36 = OUTLINED_FUNCTION_2_179();
    v34(v36, v33);
    v53 = v25;
    OUTLINED_FUNCTION_10_100(v26[9]);
    sub_21700CE04();
    sub_216EAA83C();
    sub_21700CCC4();
    v34(v19, v33);
    v37 = v34;
    *(v27 + v26[11]) = v62;
    type metadata accessor for ContentDescriptor(0);
    OUTLINED_FUNCTION_2_0();
    sub_21700CE04();
    v38 = v58;
    v56(v58, v64, v61);
    sub_2166D439C(qword_280E40390, type metadata accessor for ContentDescriptor, &protocol conformance descriptor for ContentDescriptor);
    v39 = OUTLINED_FUNCTION_9_104();
    OUTLINED_FUNCTION_16_69(v39, v38);
    OUTLINED_FUNCTION_7_114();
    sub_21700CDB4();
    v40 = OUTLINED_FUNCTION_2_179();
    v37(v40, v33);
    OUTLINED_FUNCTION_10_100(v26[12]);
    sub_21700CE04();
    sub_21700CDB4();
    v41 = OUTLINED_FUNCTION_2_179();
    v37(v41, v33);
    OUTLINED_FUNCTION_10_100(v26[14]);
    type metadata accessor for ColorSchemeArtwork(0);
    OUTLINED_FUNCTION_7_114();
    v42 = v58;
    v43 = v64;
    v44 = v61;
    v56(v58, v64, v61);
    sub_2166D439C(&qword_27CABA350, type metadata accessor for ColorSchemeArtwork, &unk_21703EED4);
    v45 = OUTLINED_FUNCTION_9_104();
    OUTLINED_FUNCTION_16_69(v45, v42);
    (*(v55 + 8))(v43, v44);
    return (v60)(v28, v52);
  }

  else
  {
    v47 = sub_21700E2E4();
    sub_2166D439C(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v49 = v48;
    v50 = type metadata accessor for BubbleLockup(0);
    *v49 = 25705;
    v49[1] = 0xE200000000000000;
    v49[2] = v50;
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D22530], v47);
    swift_willThrow();
    (*(v55 + 8))(v64, v61);
    v60(v54, v10);
    return sub_216697664(v59, &qword_27CAB6D58, &unk_217014E30);
  }
}

uint64_t sub_216EA9EAC(uint64_t a1)
{
  result = sub_2166D439C(&qword_280E44DC0, type metadata accessor for BubbleLockup, "-P\x1Bk");
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216EA9F08()
{
  result = qword_27CACBF48;
  if (!qword_27CACBF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBF48);
  }

  return result;
}

uint64_t sub_216EA9F5C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, ValueMetadata *a3@<X3>, int a4@<W4>, uint64_t a5@<X8>)
{
  HIDWORD(v85) = a4;
  v88 = a3;
  v84 = a1;
  v8 = type metadata accessor for Artwork(0);
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_77();
  v83 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v76 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  v16 = OUTLINED_FUNCTION_36(v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v76 - v17;
  v19 = type metadata accessor for ContentDescriptor(0);
  v20 = OUTLINED_FUNCTION_36(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_77();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v76 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  v28 = OUTLINED_FUNCTION_36(v27);
  MEMORY[0x28223BE20](v28);
  v30 = &v76 - v29;
  if (!sub_216F4A5BC())
  {

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBF58, &qword_21706B0A0);
    sub_2167880BC();
    swift_allocError();
    *v46 = xmmword_217014E10;
    *(v46 + 16) = v45;
    swift_willThrow();
    return OUTLINED_FUNCTION_0_251();
  }

  v76 = v14;
  v77 = v18;
  v82 = v5;
  v31 = a2;
  v32 = sub_216F4A400();
  v34 = v33;
  v35 = type metadata accessor for BubbleLockup(0);
  v36 = v35[5];
  v86 = v32;
  v87 = v34;
  v81 = v36;
  sub_21700F364();
  v37 = sub_21700D7A4();
  __swift_storeEnumTagSinglePayload(a5, 1, 1, v37);
  v38 = a5 + v35[6];
  *(v38 + 32) = 0;
  *v38 = 0u;
  *(v38 + 16) = 0u;
  sub_216F4AB2C();
  v39 = OUTLINED_FUNCTION_138();
  if (v41)
  {
    v39 = sub_216F4AA68();
  }

  OUTLINED_FUNCTION_14_81(v39, v40, v35[7]);
  v80 = v42;
  if (sub_216F4AD04())
  {
    v43 = sub_216F4AB44();
  }

  else
  {
    v43 = OUTLINED_FUNCTION_138();
  }

  v48 = v31;
  OUTLINED_FUNCTION_14_81(v43, v44, v35[8]);
  v79 = v49;
  v50 = sub_216F4AEB8();
  v51 = v82;
  if (v50)
  {
    v52 = sub_216F4ADF4();
  }

  else
  {
    v52 = OUTLINED_FUNCTION_138();
  }

  OUTLINED_FUNCTION_14_81(v52, v53, v35[9]);
  v78 = v54;
  if (sub_216F4B270())
  {
    sub_216F4AED0(v26);
    sub_216CA15B4(v26, v23, type metadata accessor for ContentDescriptor);
    sub_21689C518(v23, v55, v56, v57, v58, v59, v60, v61, v76, v77, SWORD1(v77), SWORD2(v77), SBYTE6(v77), SHIBYTE(v77), v78, v79, v80, v81, v82, v83, v84, v85, v86, v87);
    if (v51)
    {
      OUTLINED_FUNCTION_4_146();
      OUTLINED_FUNCTION_0_251();

      v62 = 0;
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_4_146();
    v63 = 0;
  }

  else
  {
    v63 = 1;
  }

  v64 = type metadata accessor for ContentDescriptor(0);
  __swift_storeEnumTagSinglePayload(v30, v63, 1, v64);
  sub_21678818C(v30, a5 + v35[10], &qword_27CAB6A00, &unk_217016B60);
  v65 = sub_216EAA4D8(v88, BYTE4(v85) & 1);
  if (v51)
  {

    OUTLINED_FUNCTION_0_251();
    v62 = 1;
LABEL_18:
    sub_216697664(a5, &qword_27CAB6D58, &unk_217014E30);
    sub_216788110(a5 + v81);
    sub_216697664(v38, &qword_27CAB6DB0, &qword_217016C00);

    if (v62)
    {
      return sub_216697664(a5 + v35[10], &qword_27CAB6A00, &unk_217016B60);
    }

    return result;
  }

  *(a5 + v35[11]) = v65;
  if (sub_216F4BA84())
  {
    v66 = sub_216F4B93C();
  }

  else
  {
    v66 = OUTLINED_FUNCTION_138();
  }

  OUTLINED_FUNCTION_14_81(v66, v67, v35[12]);
  v68 = (a5 + v35[14]);
  *v68 = v84;
  v68[1] = v48;
  if (sub_216F4B8DC())
  {
    v69 = v76;
    sub_216F4B4B0(v76);
    v70 = v83;
    sub_216CA15B4(v69, v83, type metadata accessor for Artwork);
    sub_216C7DA84(v70, v77);
    OUTLINED_FUNCTION_3_173();
    v71 = 0;
  }

  else
  {
    v71 = 1;
  }

  OUTLINED_FUNCTION_0_251();
  v72 = type metadata accessor for Artwork(0);
  v73 = v77;
  __swift_storeEnumTagSinglePayload(v77, v71, 1, v72);
  sub_21678818C(v73, a5 + v35[15], &qword_27CAB6D60, &qword_217014E40);
  v74 = v35[13];
  v75 = type metadata accessor for ColorSchemeArtwork(0);
  return __swift_storeEnumTagSinglePayload(a5 + v74, 1, 1, v75);
}

BOOL sub_216EAA4D8(ValueMetadata *a1, char a2)
{
  v5 = sub_217007CA4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return a1 > 1;
  }

  sub_217007C94();
  v12 = sub_217007C84();
  v13 = sub_21700ED84();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = v2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136315394;
    v24 = a1;
    v17 = sub_21700F784();
    v19 = sub_2166A85FC(v17, v18, &v25);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v24 = &type metadata for CircleLockupCollection.LockupStyle;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBF60, &qword_21706B0A8);
    v20 = sub_21700E594();
    v22 = sub_2166A85FC(v20, v21, &v25);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_216679000, v12, v13, "Unrecognized value '%s' for type '%s'", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v16, -1, -1);
    MEMORY[0x21CEA1440](v15, -1, -1);
  }

  (*(v7 + 8))(v10, v5);
  return 0;
}

BOOL sub_216EAA764@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216EAA4D8(*a1, *(a1 + 8));
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_216EAA7E4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216EAA83C()
{
  result = qword_27CACBF68;
  if (!qword_27CACBF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBF68);
  }

  return result;
}

uint64_t sub_216EAA8A0@<X0>(char *a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v243 = a1;
  v238 = a2;
  v252 = a5;
  v227 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v226 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v10);
  v224 = sub_21700C894();
  OUTLINED_FUNCTION_1();
  v222 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v14);
  v225 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v223 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v18);
  v220 = sub_21700C2F4();
  OUTLINED_FUNCTION_1();
  v219 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_47_1();
  v23 = OUTLINED_FUNCTION_8_0(v22);
  v234 = type metadata accessor for PlaybackItemsPresenter.ContainerItem(v23);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v24);
  v26 = &v215 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v215 - v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_47_1();
  v242 = v32;
  v239 = type metadata accessor for PlayGenericMusicItemAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_8_0(&v215 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v246 = v35;
  v247 = v36;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1_0();
  v248 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_47_1();
  v237 = v39;
  sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v240 = v41;
  v241 = v40;
  MEMORY[0x28223BE20](v40);
  v43 = &v215 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v45);
  v47 = &v215 - v46;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_6_4();
  v235 = v50;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_47_1();
  v236 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBF70, &qword_21706B0E0);
  v54 = v53 - 8;
  v55 = MEMORY[0x28223BE20](v53);
  v57 = &v215 - v56;
  v58 = *(a4 + 64);
  v244 = a4;
  v245 = a3;
  v59 = v58(a3, a4, v55);
  v60 = v59;
  v61 = &v57[*(v54 + 56)];
  sub_216EABCD4(v243, v61, type metadata accessor for PlaybackItemsPresenter.PlaybackItems);
  type metadata accessor for PlaybackItemsPresenter.PlaybackItems(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (v59 < 0)
  {
    switch(EnumCaseMultiPayload)
    {
      case 1:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7FB0, &unk_21705BD00);

        goto LABEL_13;
      case 2:
LABEL_13:
        v153 = v240;
        v154 = v61;
        v155 = v241;
        (*(v240 + 4))(v43, v154, v241);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFFE0, qword_217041EC0);
        v156 = OUTLINED_FUNCTION_17_72();
        *(v156 + 16) = xmmword_217013DA0;
        v153[2](v156 + v60, v43, v155);
        OUTLINED_FUNCTION_24_43();
        sub_216EABD30(v59 & 1, &v249);
        OUTLINED_FUNCTION_15_72();
        v157 = v248;
        sub_21700CE54();
        (v153[1])(v43, v155);
        v158 = type metadata accessor for QueueGenericMusicItemsAction(0);
        v159 = v252;
        v252[3] = v158;
        OUTLINED_FUNCTION_6_120();
        v159[4] = sub_216EABE90(v160, v161, &unk_21706F42C);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v159);
        *boxed_opaque_existential_1 = v156;
        *(boxed_opaque_existential_1 + 8) = v59;
        goto LABEL_15;
      case 3:
        v163 = *v61;
        OUTLINED_FUNCTION_24_43();
        v164 = sub_216EABD30(v59 & 1, &v249);
        v157 = v248;
        sub_21700CE54();
        v158 = type metadata accessor for QueueGenericMusicItemsAction(0);
        v165 = v252;
        v252[3] = v158;
        OUTLINED_FUNCTION_6_120();
        v165[4] = sub_216EABE90(v166, v167, &unk_21706F42C);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v165);
        *boxed_opaque_existential_1 = v163;
        *(boxed_opaque_existential_1 + 8) = v164;
LABEL_15:
        v168 = OUTLINED_FUNCTION_12_88(boxed_opaque_existential_1, *(v158 + 24));
        result = v169(v168, v157);
        break;
      default:
        v89 = OUTLINED_FUNCTION_4_147();
        sub_216EABF2C(v89, v29, v90);
        OUTLINED_FUNCTION_7_115();
        sub_216EABCD4(v29, v26, v91);
        v92 = swift_getEnumCaseMultiPayload();
        v243 = v29;
        if (v92 == 1)
        {
          v242 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7FC8, &qword_21705BD18) + 48);
          v93 = v222;
          v94 = v221;
          v95 = v224;
          (*(v222 + 32))(v221, v26, v224);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBF78, &qword_21706B0E8);
          v96 = v26;
          v97 = OUTLINED_FUNCTION_17_72();
          v98 = OUTLINED_FUNCTION_20_66(v97, xmmword_217013DA0);
          v99(v98, v94, v95);
          OUTLINED_FUNCTION_24_43();
          sub_216EABD30(v60 & 1, &v249);
          OUTLINED_FUNCTION_15_72();
          v100 = v248;
          sub_21700CE54();
          (*(v93 + 8))(v94, v95);
          sub_216EABE34(v243);
          v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBF80, &qword_21706B0F0);
          v102 = v252;
          v252[3] = v101;
          v102[4] = OUTLINED_FUNCTION_8_110(&qword_27CACBF88);
          v103 = __swift_allocate_boxed_opaque_existential_1(v102);
          *v103 = v97;
          *(v103 + 8) = v60;
          v104 = OUTLINED_FUNCTION_12_88(v103, *(v101 + 40));
          v105(v104, v100);
          result = (*(v226 + 8))(&v96[v242], v227);
        }

        else
        {
          v242 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7FD0, &qword_21705BD20) + 48);
          v194 = v219;
          v195 = v218;
          v196 = v220;
          (*(v219 + 32))(v218, v26, v220);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBF90, &qword_21706B0F8);
          v197 = v26;
          v198 = OUTLINED_FUNCTION_17_72();
          v199 = OUTLINED_FUNCTION_20_66(v198, xmmword_217013DA0);
          v200(v199, v195, v196);
          OUTLINED_FUNCTION_24_43();
          sub_216EABD30(v60 & 1, &v249);
          OUTLINED_FUNCTION_15_72();
          v201 = v248;
          sub_21700CE54();
          (*(v194 + 8))(v195, v196);
          sub_216EABE34(v243);
          v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBF98, &qword_21706B100);
          v203 = v252;
          v252[3] = v202;
          v203[4] = OUTLINED_FUNCTION_8_110(&qword_27CACBFA0);
          v204 = __swift_allocate_boxed_opaque_existential_1(v203);
          *v204 = v198;
          *(v204 + 8) = v60;
          v205 = OUTLINED_FUNCTION_12_88(v204, *(v202 + 40));
          v206(v205, v201);
          result = (*(v223 + 8))(&v197[v242], v225);
        }

        break;
    }
  }

  else
  {
    v63 = v252;
    v64 = v242;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v243 = *(v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7FB0, &unk_21705BD00) + 48));
        v140 = v240;
        v141 = v241;
        v238 = *(v240 + 4);
        v238(v47, v61, v241);
        v142 = OUTLINED_FUNCTION_14_82();
        v143(v142);
        LODWORD(v242) = v60 & 1;
        v144 = v244;
        sub_21700CE54();
        v145 = OUTLINED_FUNCTION_10_101();
        v146(v145, v144);
        v140[1](v47, v141);
        v147 = v239;
        v63[3] = v239;
        OUTLINED_FUNCTION_5_139();
        v63[4] = sub_216EABE90(v148, v149, &unk_21703E080);
        v84 = __swift_allocate_boxed_opaque_existential_1(v63);
        v238(v84, v43, v141);
        *(v84 + v147[5]) = v243;
        v150 = OUTLINED_FUNCTION_18_71(v147[6]);
        result = v151(v150);
        *(v84 + v147[7]) = v242;
        *(v84 + v147[8]) = 0;
        v152 = v147[9];
        goto LABEL_36;
      case 2:
        LODWORD(v248) = v60;
        v108 = v240;
        v107 = v241;
        v109 = *(v240 + 4);
        v110 = v236;
        v243 = v240 + 32;
        v242 = v109;
        v109(v236, v61, v241);
        v111 = *(v108 + 2);
        v112 = v235;
        v111(v235, v110, v107);
        v113 = v244;
        v114 = v245;
        LODWORD(v238) = (*(v244 + 72))(v245, v244);
        sub_21700CE54();
        (*(v113 + 80))(&v249, v114, v113);
        v63[3] = v239;
        OUTLINED_FUNCTION_5_139();
        v63[4] = sub_216EABE90(v115, v116, &unk_21703E080);
        v117 = v63;
        v118 = __swift_allocate_boxed_opaque_existential_1(v63);
        v119 = v228;
        v111(v228, v112, v107);
        v120 = (*(v108 + 11))(v119, v107);
        if (v120 == *MEMORY[0x277D2A400] || (v120 != *MEMORY[0x277D2A418] ? (v170 = v120 == *MEMORY[0x277D2A438]) : (v170 = 1), !v170 ? (v171 = v120 == *MEMORY[0x277D2A3C8]) : (v171 = 1), !v171 ? (v172 = v120 == *MEMORY[0x277D2A428]) : (v172 = 1), !v172 ? (v173 = v120 == *MEMORY[0x277D2A388]) : (v173 = 1), !v173 ? (v174 = v120 == *MEMORY[0x277D2A408]) : (v174 = 1), !v174 && (v120 != *MEMORY[0x277D2A3B0] ? (v207 = v120 == *MEMORY[0x277D2A3B8]) : (v207 = 1), !v207 ? (v208 = v120 == *MEMORY[0x277D2A440]) : (v208 = 1), v208 || (v120 != *MEMORY[0x277D2A450] ? (v209 = v120 == *MEMORY[0x277D2A3C0]) : (v209 = 1), !v209 ? (v210 = v120 == *MEMORY[0x277D2A3D0]) : (v210 = 1), !v210 && (v120 != *MEMORY[0x277D2A3F8] ? (v211 = v120 == *MEMORY[0x277D2A430]) : (v211 = 1), !v211 ? (v212 = v120 == *MEMORY[0x277D2A458]) : (v212 = 1), v212 || (v120 != *MEMORY[0x277D2A448] ? (v213 = v120 == *MEMORY[0x277D2A420]) : (v213 = 1), !v213 && (v120 != *MEMORY[0x277D2A3D8] ? (v214 = v120 == *MEMORY[0x277D2A3E0]) : (v214 = 1), v214)))))))
        {
          v121 = v248 & 1;
          v122 = v241;
          v123 = *(v240 + 1);
          v123(v119, v241);
          v124 = v217;
          (v242)(v217, v235, v122);
          v125 = v239;
          *(v124 + *(v239 + 20)) = 0;
          (*(v247 + 32))(v124 + v125[6], v237, v246);
          *(v124 + v125[7]) = v121;
          *(v124 + v125[8]) = v238 & 1;
          v126 = v124 + v125[9];
          v127 = v250;
          *v126 = v249;
          *(v126 + 16) = v127;
          *(v126 + 32) = v251;
          sub_216EABF2C(v124, v118, type metadata accessor for PlayGenericMusicItemAction);
          return (v123)(v236, v122);
        }

        else
        {
          v175 = v241;
          v176 = *(v240 + 1);
          v176(v119, v241);
          sub_216EABED8();
          swift_allocError();
          swift_willThrow();
          sub_216ACDCA4(&v249);
          (*(v247 + 8))(v237, v246);
          v176(v235, v175);
          v176(v236, v175);
          return __swift_deallocate_boxed_opaque_existential_2(v117);
        }

      case 3:
        v128 = v60;
        v129 = *v61;
        v130 = v128 & 1;
        v131 = v244;
        v132 = v248;
        sub_21700CE54();
        v133 = OUTLINED_FUNCTION_10_101();
        v134(v133, v131);
        v135 = type metadata accessor for PlayGenericMusicItemCollectionAction(0);
        v63[3] = v135;
        v63[4] = sub_216EABE90(&qword_27CAB6A28, type metadata accessor for PlayGenericMusicItemCollectionAction, &unk_217038A60);
        v136 = __swift_allocate_boxed_opaque_existential_1(v63);
        *v136 = v129;
        v137 = OUTLINED_FUNCTION_12_88(v136, v135[5]);
        result = v138(v137, v132);
        *(v136 + v135[6]) = v130;
        *(v136 + v135[7]) = 0;
        v139 = v136 + v135[8];
        goto LABEL_37;
      default:
        v65 = OUTLINED_FUNCTION_4_147();
        sub_216EABF2C(v65, v64, v66);
        OUTLINED_FUNCTION_7_115();
        v67 = v229;
        sub_216EABCD4(v64, v229, v68);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7FC8, &qword_21705BD18) + 48);
          OUTLINED_FUNCTION_16_70(&v250 + 8);
          v70 = OUTLINED_FUNCTION_14_82();
          v71 = v224;
          v72(v70);
          v73 = v226;
          v74 = *(v226 + 32);
          v239 = v226 + 32;
          v240 = v74;
          v75 = v67 + v69;
          v76 = v216;
          v77 = v227;
          (v74)(v216, v75, v227);
          (*(v61 + 16))(v232, v43, v71);
          (*(v73 + 16))(v233, v76, v77);
          OUTLINED_FUNCTION_23_58();
          v78 = OUTLINED_FUNCTION_10_101();
          v79(v78, v69);
          (*(v73 + 8))(v76, v77);
          (*(v61 + 8))(v43, v71);
          sub_216EABE34(v242);
          v80 = OUTLINED_FUNCTION_8();
          v82 = __swift_instantiateConcreteTypeFromMangledNameV2(v80, v81);
          v83 = v252;
          v252[3] = v82;
          v83[4] = OUTLINED_FUNCTION_9_105(&qword_27CACBFB0);
          v84 = __swift_allocate_boxed_opaque_existential_1(v83);
          OUTLINED_FUNCTION_19_60();
          v85();
          v86 = v84 + v82[13];
          v87 = v233;
          v88 = v77;
        }

        else
        {
          v177 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7FD0, &qword_21705BD20) + 48);
          OUTLINED_FUNCTION_16_70(&v249);
          v178 = OUTLINED_FUNCTION_14_82();
          v179 = v220;
          v180(v178);
          v181 = v223;
          v182 = *(v223 + 32);
          v239 = v223 + 32;
          v240 = v182;
          v183 = v67 + v177;
          v184 = v215;
          v185 = v225;
          (v182)(v215, v183, v225);
          (*(v61 + 16))(v230, v43, v179);
          (*(v181 + 16))(v231, v184, v185);
          OUTLINED_FUNCTION_23_58();
          v186 = OUTLINED_FUNCTION_10_101();
          v187(v186, v177);
          (*(v181 + 8))(v184, v185);
          (*(v61 + 8))(v43, v179);
          sub_216EABE34(v242);
          v188 = OUTLINED_FUNCTION_8();
          v82 = __swift_instantiateConcreteTypeFromMangledNameV2(v188, v189);
          v190 = v252;
          v252[3] = v82;
          v190[4] = OUTLINED_FUNCTION_9_105(&qword_27CAC50A8);
          v84 = __swift_allocate_boxed_opaque_existential_1(v190);
          OUTLINED_FUNCTION_19_60();
          v191();
          v86 = v84 + v82[13];
          v87 = v231;
          v88 = v185;
        }

        (v240)(v86, v87, v88);
        v192 = OUTLINED_FUNCTION_18_71(v82[14]);
        result = v193(v192);
        v152 = v82[15];
LABEL_36:
        v139 = v84 + v152;
LABEL_37:
        *v139 = v249;
        *(v139 + 1) = v250;
        *(v139 + 4) = v251;
        break;
    }
  }

  return result;
}

uint64_t sub_216EABCD4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216EABD30(char a1, void *a2)
{
  if (a1)
  {
    v3 = a2[3];
    v4 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v3);
    v5 = *(v4 + 112);
    v5(v3, v4);
    sub_217006D94();

    v6 = sub_217006D34();

    if (v6)
    {
      v7 = 3;
    }

    else
    {
      v5(v3, v4);
      sub_217006D94();

      v8 = sub_217006D14();

      if (v8)
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v7;
}

uint64_t sub_216EABE34(uint64_t a1)
{
  v2 = type metadata accessor for PlaybackItemsPresenter.ContainerItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216EABE90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_216EABED8()
{
  result = qword_27CACBFB8;
  if (!qword_27CACBFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBFB8);
  }

  return result;
}

uint64_t sub_216EABF2C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216EABFA4@<X0>(uint64_t a1@<X8>)
{
  v162 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC040, &qword_21706B198);
  OUTLINED_FUNCTION_0(v2, &v175);
  v134 = v3;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v5);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC048, &qword_21706B1A0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v7);
  v8 = type metadata accessor for ContainerDetailTitlesView(0);
  v135 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v136 = v9;
  OUTLINED_FUNCTION_70(&v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC050, &qword_21706B1A8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC058, &qword_21706B1B0);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_70(&v132 - v14);
  v15 = sub_21700D8E4();
  v16 = OUTLINED_FUNCTION_0(v15, &v172 + 8);
  v152 = v17;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_70(&v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_2170099D4();
  v20 = OUTLINED_FUNCTION_0(v19, v165);
  v138 = v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC060, &qword_21706B1B8);
  OUTLINED_FUNCTION_0(v24, &v171);
  v149 = v25;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC068, &qword_21706B1C0);
  OUTLINED_FUNCTION_0(v28, &v170);
  v147 = v29;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v31);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC070, &qword_21706B1C8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v33);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC078, &qword_21706B1D0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v35);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC080, &qword_21706B1D8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v37);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC088, &qword_21706B1E0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v40);
  v42 = &v132 - v41;
  v44 = *v1;
  v43 = v1[1];
  v45 = *(v1 + 72);
  type metadata accessor for ExplicitBadgingPresenter(0);
  sub_216A959B0();
  sub_21700DF14();
  v47 = sub_217008CF4();
  v156 = v1;
  v154 = v42;
  if (v43)
  {
    v48 = HIBYTE(v43) & 0xF;
    if ((v43 & 0x2000000000000000) == 0)
    {
      v48 = v44 & 0xFFFFFFFFFFFFLL;
    }

    if (v48)
    {
      v49 = v46;
      v50 = sub_2170091A4();
      *&v166 = v47;
      *(&v166 + 1) = v49;
      *&v167 = v44;
      *(&v167 + 1) = v43;
      LOBYTE(v168) = 0;
      BYTE1(v168) = v45;
      *(&v168 + 1) = 0;
      LOBYTE(v169) = 0;
      *(&v169 + 1) = v50;
      *&v170 = v47;
      v51 = v168;
      v52 = v169;
      *(&v170 + 1) = v49;
      *&v171 = v44;
      *(&v171 + 1) = v43;
      LOBYTE(v172) = 0;
      BYTE1(v172) = v45;
      *(&v172 + 1) = 0;
      LOBYTE(v173) = 0;
      *(&v173 + 1) = v50;
      sub_21680DAEC(&v166, &v163);
      sub_21680DB48(&v170);
      goto LABEL_9;
    }

    v47 = 0;
    v49 = 0;
    v44 = 0;
    v43 = 0;
  }

  else
  {

    v47 = 0;
    v49 = 0;
    v44 = 0;
  }

  v51 = 0;
  v52 = 0;
  v50 = 0;
LABEL_9:
  *&v166 = v47;
  *(&v166 + 1) = v49;
  *&v167 = v44;
  *(&v167 + 1) = v43;
  v168 = v51;
  *&v169 = v52;
  *(&v169 + 1) = v50;
  sub_2170099B4();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4A00, &unk_21704E6B0);
  v54 = sub_216BA9728();
  v55 = v146;
  sub_21700A784();
  (*(v138 + 8))(v23, v139);
  v170 = v166;
  v171 = v167;
  v172 = v168;
  v173 = v169;
  sub_216697664(&v170, &qword_27CAC4A00, &unk_21704E6B0);
  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v163 = 0u;
  v56 = v151;
  sub_21700D854();
  sub_216697664(&v163, &unk_27CABF7A0, &unk_217014D20);
  sub_216697664(&v166, &unk_27CABF7A0, &unk_217014D20);
  *&v166 = v53;
  *(&v166 + 1) = v54;
  swift_getOpaqueTypeConformance2();
  v57 = v145;
  v58 = v150;
  sub_21700A204();
  (*(v152 + 8))(v56, v153);
  (*(v149 + 8))(v55, v58);
  v59 = v156;
  v60 = sub_216EACCC8();
  KeyPath = swift_getKeyPath();
  v62 = v142;
  (*(v147 + 32))(v142, v57, v148);
  OUTLINED_FUNCTION_4_53();
  v64 = (v62 + v63);
  *v64 = KeyPath;
  v64[1] = v60;
  v65 = sub_21700AD14();
  OUTLINED_FUNCTION_107_0();
  sub_21678818C(v66, v67, v68, v69);
  OUTLINED_FUNCTION_4_53();
  *(KeyPath + v70) = v65;
  v71 = swift_getKeyPath();
  OUTLINED_FUNCTION_107_0();
  sub_21678818C(v72, v73, v74, v75);
  OUTLINED_FUNCTION_4_53();
  v77 = KeyPath + v76;
  *v77 = v71;
  *(v77 + 8) = 2;
  *(v77 + 16) = 0;
  LOBYTE(v71) = sub_217009C94();
  sub_216EACEA8();
  sub_217007F24();
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v85 = v84;
  OUTLINED_FUNCTION_107_0();
  sub_21678818C(v86, v87, v88, v89);
  OUTLINED_FUNCTION_4_53();
  v91 = KeyPath + v90;
  *v91 = v71;
  *(v91 + 8) = v79;
  *(v91 + 16) = v81;
  *(v91 + 24) = v83;
  *(v91 + 32) = v85;
  *(v91 + 40) = 0;
  v92 = v154;
  sub_21678818C(KeyPath, v154, &qword_27CACC088, &qword_21706B1E0);
  sub_21692E9E8((v59 + 4), &v163);
  if (*(&v164 + 1))
  {
    sub_2166A0F18(&v163, &v166);
    v93 = v137;
    sub_2167B7D58(&v166, v137);
    v94 = v158;
    v95 = *(v158 + 44);
    v96 = sub_217007F04();
    __swift_storeEnumTagSinglePayload(v93 + v95, 1, 1, v96);
    OUTLINED_FUNCTION_107_0();
    sub_216EADDF8(v97, v98);
    v99 = (*(v135 + 80) + 16) & ~*(v135 + 80);
    v100 = swift_allocObject();
    sub_216EADE5C(KeyPath, v100 + v99);
    v101 = *(v94 + 48);
    *(v93 + v101) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
    swift_storeEnumTagMultiPayload();
    v102 = v93 + *(v94 + 52);
    *v102 = swift_getKeyPath();
    v102[40] = 0;
    v93[5] = sub_216EADEC0;
    v93[6] = v100;
    v93[7] = 0;
    v93[8] = 0;
    OUTLINED_FUNCTION_14_83(v93, &v174);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_191();
    sub_2166D9530(v103, v104, v105, v106);
    v107 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC098, &qword_21706B250);
    v108 = sub_216EADB44();
    *&v163 = v107;
    *(&v163 + 1) = v108;
    OUTLINED_FUNCTION_2_5();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_8_111();
    sub_217009554();
    OUTLINED_FUNCTION_191();
    sub_216697664(v109, v110, v111);
    __swift_destroy_boxed_opaque_existential_1Tm(&v166);
  }

  else
  {
    sub_216697664(&v163, &qword_27CAB6DB0, &qword_217016C00);
    v112 = v133;
    sub_216EAD0E4(v133);
    v113 = v134;
    v114 = v161;
    (*(v134 + 16))(v159, v112, v161);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_28_1();
    sub_2166D9530(v115, v116, v117, v118);
    v119 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC098, &qword_21706B250);
    v120 = sub_216EADB44();
    *&v166 = v119;
    *(&v166 + 1) = v120;
    OUTLINED_FUNCTION_2_5();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_8_111();
    sub_217009554();
    v121 = *(v113 + 8);
    v62 = v113 + 8;
    v121(v112, v114);
  }

  v122 = v155;
  sub_2166A6E54(v92, v155, &qword_27CACC088, &qword_21706B1E0);
  v123 = v160;
  sub_2166A6E54(&unk_217014D20, v160, &qword_27CACC058, &qword_21706B1B0);
  OUTLINED_FUNCTION_14_83(v122, &v176);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC0D0, &qword_21706B270);
  sub_2166A6E54(v123, v62 + *(v124 + 48), &qword_27CACC058, &qword_21706B1B0);
  sub_216697664(&unk_217014D20, &qword_27CACC058, &qword_21706B1B0);
  OUTLINED_FUNCTION_191();
  sub_216697664(v125, v126, v127);
  sub_216697664(v123, &qword_27CACC058, &qword_21706B1B0);
  OUTLINED_FUNCTION_191();
  return sub_216697664(v128, v129, v130);
}

uint64_t sub_216EACCC8()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ContainerDetailTitlesView(0) + 44);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = *v5;
  }

  else
  {

    sub_21700ED94();
    v8 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_2168AEE00(v6, 0);
    (*(v2 + 8))(v4, v1);
    v7 = v10[15];
  }

  if (v7 < 2)
  {
    if (qword_27CAB61F0 == -1)
    {
    }

    goto LABEL_9;
  }

  if (qword_27CAB6218 != -1)
  {
LABEL_9:
    swift_once();
  }
}

double sub_216EACEA8()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ContainerDetailTitlesView(0) + 44);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = *v5;
  }

  else
  {

    sub_21700ED94();
    v8 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_2168AEE00(v6, 0);
    (*(v2 + 8))(v4, v1);
    v7 = LOBYTE(v14);
  }

  if (v7 >= 2)
  {
    if (qword_27CAB6210 != -1)
    {
      swift_once();
    }

    [qword_27CACC010 lineHeight];
    v10 = v11;
  }

  else
  {
    if (qword_27CAB61E8 != -1)
    {
      swift_once();
    }

    [qword_27CACBFD8 lineHeight];
    v10 = v9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  sub_2170082C4();
  return v14 - v10;
}

uint64_t sub_216EAD0E4@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v23 = sub_21700D8E4();
  v2 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v1 + 24);
  if (v5)
  {
    v6 = *(v1 + 16);
    v7 = MEMORY[0x277D84F90];
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  sub_21700DF14();
  v8 = sub_217009C94();
  sub_216EAD334();
  sub_217007F24();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v26[136] = 0;
  v17 = sub_216EAD570();
  KeyPath = swift_getKeyPath();
  v19 = sub_21700AC54();
  v20 = swift_getKeyPath();
  v26[144] = 0;
  v25[0] = v6;
  v25[1] = v5;
  v25[2] = 0;
  v25[3] = v7;
  LOBYTE(v25[4]) = v8;
  v25[5] = v10;
  v25[6] = v12;
  v25[7] = v14;
  v25[8] = v16;
  LOBYTE(v25[9]) = 0;
  v25[10] = KeyPath;
  v25[11] = v17;
  v25[12] = v19;
  v25[13] = v20;
  v25[14] = 2;
  LOBYTE(v25[15]) = 0;
  memset(v26, 0, 32);
  memset(v24, 0, sizeof(v24));
  sub_21700D854();
  sub_216697664(v24, &unk_27CABF7A0, &unk_217014D20);
  sub_216697664(v26, &unk_27CABF7A0, &unk_217014D20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC098, &qword_21706B250);
  sub_216EADB44();
  sub_21700A204();
  (*(v2 + 8))(v4, v23);
  memcpy(v26, v25, 0x79uLL);
  return sub_216697664(v26, &qword_27CACC098, &qword_21706B250);
}

double sub_216EAD334()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ContainerDetailTitlesView(0) + 44);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = *v5;
  }

  else
  {

    sub_21700ED94();
    v8 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_2168AEE00(v6, 0);
    (*(v2 + 8))(v4, v1);
    v7 = LOBYTE(v14);
  }

  if (v7 >= 2)
  {
    if (qword_27CAB6220 != -1)
    {
      swift_once();
    }

    [qword_27CACC020 lineHeight];
    v10 = v11;
  }

  else
  {
    if (qword_27CAB61F8 != -1)
    {
      swift_once();
    }

    [qword_27CACBFE8 lineHeight];
    v10 = v9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  sub_2170082C4();
  return v14 - v10;
}

uint64_t sub_216EAD570()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ContainerDetailTitlesView(0) + 44);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = *v5;
  }

  else
  {

    sub_21700ED94();
    v8 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_2168AEE00(v6, 0);
    (*(v2 + 8))(v4, v1);
    v7 = v10[15];
  }

  if (v7 < 2)
  {
    if (qword_27CAB6200 == -1)
    {
    }

    goto LABEL_9;
  }

  if (qword_27CAB6228 != -1)
  {
LABEL_9:
    swift_once();
  }
}

uint64_t sub_216EAD784(uint64_t a1)
{
  result = sub_217009E24();
  qword_27CACBFF0 = result;
  return result;
}

uint64_t sub_216EAD7B0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_217009EB4();
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  v5 = *MEMORY[0x277CE0A90];
  v6 = *(*(v3 - 8) + 104);

  return v6(v4, v5, v3);
}

uint64_t type metadata accessor for ContainerDetailTitlesView(uint64_t a1)
{
  result = qword_27CACC030;
  if (!qword_27CACC030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216EAD8A8(uint64_t a1)
{
  sub_2166D9E00(319, &qword_280E2A070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_216689C64(319);
    if (v2 <= 0x3F)
    {
      sub_2167D1C30(319);
      if (v3 <= 0x3F)
      {
        sub_2166D9E00(319, &qword_280E2B488, &_s9SizeClassON, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_216EAD9DC(uint64_t a1, uint64_t *a2)
{
  sub_2168AE7E0();
  v3 = *MEMORY[0x277D76A28];
  v4 = sub_21700F074();

  *a2 = v4;
}

uint64_t sub_216EADA40(uint64_t a1, uint64_t *a2)
{
  if (qword_27CAB61E8 != -1)
  {
    swift_once();
  }

  v3 = qword_27CACBFD8;
  result = sub_217009EC4();
  *a2 = result;
  return result;
}

void sub_216EADAB0(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  v4 = *MEMORY[0x277D76A28];
  v5 = [v3 preferredFontForTextStyle_];

  *a2 = v5;
}

uint64_t sub_216EADB24(uint64_t a1)
{
  result = sub_217009E24();
  qword_27CACC028 = result;
  return result;
}

unint64_t sub_216EADB44()
{
  result = qword_27CACC0A0;
  if (!qword_27CACC0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC098, &qword_21706B250);
    sub_216EADBFC();
    sub_2166D9530(&qword_280E2A6F8, &qword_27CAB7638, &unk_217017490, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACC0A0);
  }

  return result;
}

unint64_t sub_216EADBFC()
{
  result = qword_27CACC0A8;
  if (!qword_27CACC0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC0B0, &qword_21706B258);
    sub_216EADCB4();
    sub_2166D9530(&qword_280E2A828, &qword_27CABA400, &qword_217020410, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACC0A8);
  }

  return result;
}

unint64_t sub_216EADCB4()
{
  result = qword_27CACC0B8;
  if (!qword_27CACC0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC0C0, &unk_21706B260);
    sub_216EADD6C();
    sub_2166D9530(&qword_280E2A720, &qword_27CAB7670, &qword_217018330, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACC0B8);
  }

  return result;
}

unint64_t sub_216EADD6C()
{
  result = qword_27CACC0C8;
  if (!qword_27CACC0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB5F0, &unk_217023E30);
    sub_2167C4D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACC0C8);
  }

  return result;
}

uint64_t sub_216EADDF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerDetailTitlesView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216EADE5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerDetailTitlesView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216EADF34()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_37_45(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v0[5] = v4;
  OUTLINED_FUNCTION_2(v4);
  v0[6] = v5;
  v0[7] = OUTLINED_FUNCTION_80();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v0[8] = v6;
  OUTLINED_FUNCTION_2(v6);
  v0[9] = v7;
  v0[10] = OUTLINED_FUNCTION_80();
  v8 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_216EAE03C()
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  v0 = OUTLINED_FUNCTION_7_116();
  OUTLINED_FUNCTION_6_121(v0);
  v1 = OUTLINED_FUNCTION_4_148();
  v2(v1);
  v3 = OUTLINED_FUNCTION_11_88();
  v4 = OUTLINED_FUNCTION_2_180(v3);
  v5(v4);
  OUTLINED_FUNCTION_45_31();
  OUTLINED_FUNCTION_20_2(&qword_280E2A120);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_10_102(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_1_211(v7);
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x282180360](v9);
}

uint64_t sub_216EAE128()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216EAE23C()
{
  OUTLINED_FUNCTION_33();
  v0 = OUTLINED_FUNCTION_0_13();
  v1(v0);

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216EAE2B0()
{
  OUTLINED_FUNCTION_33();
  v0 = OUTLINED_FUNCTION_0_13();
  v1(v0);

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216EAE324()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_37_45(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v0[5] = v4;
  OUTLINED_FUNCTION_2(v4);
  v0[6] = v5;
  v0[7] = OUTLINED_FUNCTION_80();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v0[8] = v6;
  OUTLINED_FUNCTION_2(v6);
  v0[9] = v7;
  v0[10] = OUTLINED_FUNCTION_80();
  v8 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_216EAE42C()
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  v0 = OUTLINED_FUNCTION_7_116();
  OUTLINED_FUNCTION_6_121(v0);
  v1 = OUTLINED_FUNCTION_4_148();
  v2(v1);
  v3 = OUTLINED_FUNCTION_11_88();
  v4 = OUTLINED_FUNCTION_2_180(v3);
  v5(v4);
  OUTLINED_FUNCTION_45_31();
  OUTLINED_FUNCTION_20_2(&qword_280E2A120);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_10_102(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_1_211(v7);
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x282180360](v9);
}

uint64_t sub_216EAE518()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216EAE62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216EAE42C, 0, 0);
}

uint64_t sub_216EAE764()
{
  OUTLINED_FUNCTION_32_37();
  if (v0)
  {
    v1 = OUTLINED_FUNCTION_47_34();
    v33 = type metadata accessor for PlayGenericMusicItemCollectionAction(v1);
    OUTLINED_FUNCTION_24_44();
    v4 = sub_216EB0300(v2, v3, &unk_217038A60);
    v12 = OUTLINED_FUNCTION_41_34(v4, v5, v6, v7, v8, v9, v10, v11, v29, v30, v31, v32, v33, v35);
    OUTLINED_FUNCTION_28_45(v12);

    return OUTLINED_FUNCTION_30_52(v13, v14);
  }

  else
  {
    v34 = type metadata accessor for PlayGenericMusicItemCollectionAction(0);
    OUTLINED_FUNCTION_24_44();
    v18 = sub_216EB0300(v16, v17, &unk_217038A60);
    v26 = OUTLINED_FUNCTION_41_34(v18, v19, v20, v21, v22, v23, v24, v25, v29, v30, v31, v32, v34, v35);
    OUTLINED_FUNCTION_28_45(v26);

    return OUTLINED_FUNCTION_36_43(v27, v28);
  }
}

uint64_t sub_216EAE828()
{
  OUTLINED_FUNCTION_32_37();
  if (v0)
  {
    v1 = OUTLINED_FUNCTION_47_34();
    v33 = type metadata accessor for PlayGenericMusicItemAction(v1);
    OUTLINED_FUNCTION_22_60();
    v4 = sub_216EB0300(v2, v3, &unk_21703E080);
    v12 = OUTLINED_FUNCTION_41_34(v4, v5, v6, v7, v8, v9, v10, v11, v29, v30, v31, v32, v33, v35);
    OUTLINED_FUNCTION_29_52(v12);

    return OUTLINED_FUNCTION_30_52(v13, v14);
  }

  else
  {
    v34 = type metadata accessor for PlayGenericMusicItemAction(0);
    OUTLINED_FUNCTION_22_60();
    v18 = sub_216EB0300(v16, v17, &unk_21703E080);
    v26 = OUTLINED_FUNCTION_41_34(v18, v19, v20, v21, v22, v23, v24, v25, v29, v30, v31, v32, v34, v35);
    OUTLINED_FUNCTION_29_52(v26);

    return OUTLINED_FUNCTION_36_43(v27, v28);
  }
}

uint64_t sub_216EAE8EC()
{
  OUTLINED_FUNCTION_32_37();
  if (v0)
  {
    v1 = OUTLINED_FUNCTION_47_34();
    GenericMusicItemStationAction = type metadata accessor for CreateGenericMusicItemStationAction(v1);
    OUTLINED_FUNCTION_21_68();
    v4 = sub_216EB0300(v2, v3, &unk_217038D50);
    v12 = OUTLINED_FUNCTION_41_34(v4, v5, v6, v7, v8, v9, v10, v11, v29, v30, v31, v32, GenericMusicItemStationAction, v35);
    OUTLINED_FUNCTION_26_50(v12);

    return OUTLINED_FUNCTION_30_52(v13, v14);
  }

  else
  {
    v34 = type metadata accessor for CreateGenericMusicItemStationAction(0);
    OUTLINED_FUNCTION_21_68();
    v18 = sub_216EB0300(v16, v17, &unk_217038D50);
    v26 = OUTLINED_FUNCTION_41_34(v18, v19, v20, v21, v22, v23, v24, v25, v29, v30, v31, v32, v34, v35);
    OUTLINED_FUNCTION_26_50(v26);

    return OUTLINED_FUNCTION_36_43(v27, v28);
  }
}

uint64_t sub_216EAE9B0()
{
  OUTLINED_FUNCTION_32_37();
  if (v0)
  {
    v1 = OUTLINED_FUNCTION_47_34();
    v33 = type metadata accessor for PlayLibraryArtistAction(v1);
    OUTLINED_FUNCTION_20_67();
    v4 = sub_216EB0300(v2, v3, &unk_217044020);
    v12 = OUTLINED_FUNCTION_41_34(v4, v5, v6, v7, v8, v9, v10, v11, v29, v30, v31, v32, v33, v35);
    OUTLINED_FUNCTION_27_52(v12);

    return OUTLINED_FUNCTION_30_52(v13, v14);
  }

  else
  {
    v34 = type metadata accessor for PlayLibraryArtistAction(0);
    OUTLINED_FUNCTION_20_67();
    v18 = sub_216EB0300(v16, v17, &unk_217044020);
    v26 = OUTLINED_FUNCTION_41_34(v18, v19, v20, v21, v22, v23, v24, v25, v29, v30, v31, v32, v34, v35);
    OUTLINED_FUNCTION_27_52(v26);

    return OUTLINED_FUNCTION_36_43(v27, v28);
  }
}

uint64_t sub_216EAEA74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  if (a1)
  {
    v9 = type metadata accessor for QueueGenericMusicItemsAction(0);
    v10 = sub_216EB0300(qword_280E480B8, type metadata accessor for QueueGenericMusicItemsAction, &unk_21706F42C);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
    sub_216EB0348(v3, boxed_opaque_existential_1, type metadata accessor for QueueGenericMusicItemsAction);

    return sub_216A12228(v8, a2);
  }

  else
  {
    v9 = type metadata accessor for QueueGenericMusicItemsAction(0);
    v10 = sub_216EB0300(qword_280E480B8, type metadata accessor for QueueGenericMusicItemsAction, &unk_21706F42C);
    v7 = __swift_allocate_boxed_opaque_existential_1(v8);
    sub_216EB0348(v3, v7, type metadata accessor for QueueGenericMusicItemsAction);

    return sub_216A12718(v8, a2);
  }
}

uint64_t sub_216EAEBC8()
{
  OUTLINED_FUNCTION_33();
  v0[39] = v1;
  v0[40] = v2;
  v0[37] = v3;
  v0[38] = v4;
  v0[41] = type metadata accessor for NoticeAction(0);
  v0[42] = OUTLINED_FUNCTION_80();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v0[43] = v5;
  OUTLINED_FUNCTION_2(v5);
  v0[44] = v6;
  v0[45] = OUTLINED_FUNCTION_80();
  v7 = sub_21700D2A4();
  v0[46] = v7;
  OUTLINED_FUNCTION_2(v7);
  v0[47] = v8;
  v0[48] = swift_task_alloc();
  v0[49] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v0[50] = v9;
  OUTLINED_FUNCTION_2(v9);
  v0[51] = v10;
  v0[52] = OUTLINED_FUNCTION_80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7090, &qword_217015A60);
  v0[53] = OUTLINED_FUNCTION_80();
  v11 = sub_21700BAB4();
  v0[54] = v11;
  OUTLINED_FUNCTION_2(v11);
  v0[55] = v12;
  v0[56] = OUTLINED_FUNCTION_80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088, &qword_217020CA0);
  v0[57] = OUTLINED_FUNCTION_80();
  v13 = sub_2170067A4();
  v0[58] = v13;
  OUTLINED_FUNCTION_2(v13);
  v0[59] = v14;
  v0[60] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v0[61] = sub_21700EA24();
  v16 = sub_21700E9B4();
  v0[62] = v16;
  v0[63] = v15;

  return MEMORY[0x2822009F8](sub_216EAEE90, v16, v15);
}

uint64_t sub_216EAEE90()
{
  v23 = v0;
  v3 = *(v0 + 320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A30, &unk_217013D70);
  *(v0 + 512) = type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  sub_216EAEA74(v3, v22);
  v4 = v22[1];
  *(v0 + 520) = v22[0];
  *(v0 + 536) = v4;
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  swift_getDynamicType();
  if (((*(*(v0 + 48) + 8))() & 1) == 0)
  {
LABEL_7:
    v13 = *(v0 + 304);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    OUTLINED_FUNCTION_16_71();
    sub_21700DF14();
    sub_21700DF14();
    sub_21677A3F0(v1, v13);
    v21 = (v2 + *v2);
    v14 = swift_task_alloc();
    *(v0 + 592) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A38, &unk_217015A70);
    OUTLINED_FUNCTION_25_53(&qword_27CAB6A40);
    *v14 = v0;
    v15 = OUTLINED_FUNCTION_15_73();

    return v21(v15);
  }

  v5 = *(v0 + 456);
  v6 = *(v0 + 464);
  sub_216CE0ED4(**(v0 + 304));
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    v7 = *(v0 + 456);
    v8 = &qword_27CAB7088;
    v9 = &qword_217020CA0;
LABEL_6:
    sub_21669987C(v7, v8, v9);
    goto LABEL_7;
  }

  v10 = *(v0 + 424);
  (*(*(v0 + 472) + 32))(*(v0 + 480), *(v0 + 456), *(v0 + 464));
  sub_216DDF0DC((v0 + 16), v10);
  v11 = *(v0 + 424);
  v12 = *(v0 + 432);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    (*(*(v0 + 472) + 8))(*(v0 + 480), *(v0 + 464));
    v7 = *(v0 + 424);
    v8 = &qword_27CAB7090;
    v9 = &qword_217015A60;
    goto LABEL_6;
  }

  (*(*(v0 + 440) + 32))(*(v0 + 448), v11, v12);
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 552) = v17;
  *v17 = v18;
  v17[1] = sub_216EAF240;
  v19 = *(v0 + 448);
  v20 = *(v0 + 312);

  return sub_21694EFA0(v0 + 96, v19, v20, v0 + 136);
}

uint64_t sub_216EAF240()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[70] = v0;

  sub_21669987C((v3 + 17), &qword_27CAB6DB0, &qword_217016C00);
  v7 = v3[62];
  v8 = v3[63];
  if (v0)
  {
    v9 = sub_216EAFD64;
  }

  else
  {
    v9 = sub_216EAF358;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216EAF358()
{
  OUTLINED_FUNCTION_115_1();
  sub_2167AD8C0(v0 + 96, v0 + 176);
  if (*(v0 + 200))
  {
    v3 = *(v0 + 352);
    v2 = *(v0 + 360);
    v4 = *(v0 + 344);
    sub_2166A0F18((v0 + 176), v0 + 216);
    sub_21700E094();
    (*(v3 + 104))(v2, *MEMORY[0x277D21E18], v4);
    swift_task_alloc();
    OUTLINED_FUNCTION_52();
    *(v0 + 568) = v5;
    *v5 = v6;
    v5[1] = sub_216EAF5F4;
    v7 = *(v0 + 392);
    v8 = *(v0 + 400);
    v9 = *(v0 + 360);
    v10 = *(v0 + 312);

    return MEMORY[0x28217F468](v7, v0 + 216, v9, v10, v8);
  }

  else
  {
    v12 = *(v0 + 472);
    v11 = *(v0 + 480);
    v13 = *(v0 + 464);
    v15 = *(v0 + 440);
    v14 = *(v0 + 448);
    v16 = *(v0 + 432);
    sub_2167AD91C(v0 + 96);
    (*(v15 + 8))(v14, v16);
    (*(v12 + 8))(v11, v13);
    v17 = *(v0 + 304);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    OUTLINED_FUNCTION_16_71();
    sub_21700DF14();
    sub_21700DF14();
    sub_21677A3F0(v15 + 8, v17);
    v21 = (v1 + *v1);
    v18 = swift_task_alloc();
    *(v0 + 592) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A38, &unk_217015A70);
    OUTLINED_FUNCTION_25_53(&qword_27CAB6A40);
    *v18 = v0;
    v19 = OUTLINED_FUNCTION_15_73();

    return v21(v19);
  }
}

uint64_t sub_216EAF5F4()
{
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[72] = v0;

  if (v0)
  {
    (*(v3[44] + 8))(v3[45], v3[43]);
    v7 = v3[62];
    v8 = v3[63];
    v9 = sub_216EAFE64;
  }

  else
  {
    v10 = v3[49];
    v11 = v3[46];
    v12 = v3[47];
    (*(v3[44] + 8))(v3[45], v3[43]);
    (*(v12 + 8))(v10, v11);
    v7 = v3[62];
    v8 = v3[63];
    v9 = sub_216EAF750;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216EAF750()
{
  OUTLINED_FUNCTION_17_73();
  v1 = v0[59];
  v14 = v0[58];
  v15 = v0[60];
  v2 = v0[55];
  v11 = v0[54];
  v12 = v0[56];
  v3 = v0[51];
  v4 = v0[52];
  v5 = v0[50];
  v6 = v0[47];
  v16 = v0[46];
  v13 = v0[37];

  v7 = OUTLINED_FUNCTION_8();
  sub_21677A510(v7, v8);
  (*(v3 + 8))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);
  sub_2167AD91C((v0 + 12));
  (*(v2 + 8))(v12, v11);
  (*(v1 + 8))(v15, v14);
  (*(v6 + 104))(v13, *MEMORY[0x277D21CA8], v16);
  OUTLINED_FUNCTION_43_34();

  OUTLINED_FUNCTION_3();

  return v9();
}

uint64_t sub_216EAF8C8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[75] = v0;

  sub_21677A4C0(v3[32], v3[33], v3[34], v3[35]);

  v7 = v3[62];
  v8 = v3[63];
  if (v0)
  {
    v9 = sub_216EAFFB4;
  }

  else
  {
    v9 = sub_216EAF9F8;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216EAF9F8()
{
  v1 = *(v0 + 625);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8E00, &qword_2170313E0);
  v3 = dword_217040A70[v1];
  v4 = *(v0 + 328);
  v5 = *(v0 + 336);
  __swift_storeEnumTagSinglePayload(v5, v3, 11, v2);
  sub_21700D234();
  *(v0 + 80) = v4;
  *(v0 + 88) = sub_216EB0300(&qword_27CAB8E08, type metadata accessor for NoticeAction, &unk_21703D8D0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  sub_216EB0348(v5, boxed_opaque_existential_1, type metadata accessor for NoticeAction);
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 608) = v7;
  *v7 = v8;
  v7[1] = sub_216EAFB50;
  v9 = *(v0 + 384);
  v10 = *(v0 + 312);

  return sub_216EAE62C(v9, v0 + 56, v10);
}

uint64_t sub_216EAFB50()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[77] = v0;

  if (v0)
  {
    v7 = v3[62];
    v8 = v3[63];
    v9 = sub_216EB0080;
  }

  else
  {
    (*(v3[47] + 8))(v3[48], v3[46]);
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 7);
    v7 = v3[62];
    v8 = v3[63];
    v9 = sub_216EAFC70;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216EAFC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_17_73();
  v13 = v12[46];
  v14 = v12[47];
  v15 = v12[42];
  v16 = v12[37];

  v17 = OUTLINED_FUNCTION_8();
  sub_21677A510(v17, v18);
  sub_2169BC1FC(v15);
  (*(v14 + 104))(v16, *MEMORY[0x277D21CA8], v13);
  OUTLINED_FUNCTION_43_34();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_216EAFD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_17_73();
  v13 = v12[60];
  v14 = v12[58];
  v15 = v12[59];
  v17 = v12[55];
  v16 = v12[56];
  v18 = v12[54];

  v19 = OUTLINED_FUNCTION_8();
  sub_21677A510(v19, v20);
  (*(v17 + 8))(v16, v18);
  (*(v15 + 8))(v13, v14);
  v30 = v12[70];
  OUTLINED_FUNCTION_8_112();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, v30, a10, a11, a12);
}

uint64_t sub_216EAFE64()
{
  OUTLINED_FUNCTION_17_73();
  v1 = v0[59];
  v12 = v0[58];
  v13 = v0[60];
  v2 = v0[55];
  v11 = v0[56];
  v3 = v0[54];
  v4 = v0[51];
  v5 = v0[52];
  v6 = v0[50];

  v7 = OUTLINED_FUNCTION_8();
  sub_21677A510(v7, v8);
  (*(v4 + 8))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);
  sub_2167AD91C((v0 + 12));
  (*(v2 + 8))(v11, v3);
  (*(v1 + 8))(v13, v12);
  OUTLINED_FUNCTION_8_112();

  OUTLINED_FUNCTION_3();

  return v9();
}
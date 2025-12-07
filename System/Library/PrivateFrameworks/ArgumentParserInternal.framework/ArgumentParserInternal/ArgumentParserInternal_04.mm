uint64_t sub_2410135A8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v18 = sub_241046DA8();
  *&v40[0] = a4;

  v19 = sub_241018548(a1, a2);
  v20 = *(a5 + 16);
  v38[0] = *a5;
  v38[1] = v20;
  v38[2] = *(a5 + 32);
  v39 = *(a5 + 48);
  v37 = a7;
  v35[0] = a8;
  v35[1] = a9;
  v36 = a10;
  sub_241010918(a5, v40);

  sub_240FFBA9C(a8, a9, a10);
  WitnessTable = swift_getWitnessTable();
  sub_24102BF70(a1, a2, a3, v19, v38, a6, &v37, v40, v35, v18, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v22 = swift_allocObject();
  v23 = v40[8];
  v24 = v40[10];
  v25 = v40[11];
  v22[11] = v40[9];
  v22[12] = v24;
  v22[13] = v25;
  v26 = v40[4];
  v27 = v40[6];
  v28 = v40[7];
  v22[7] = v40[5];
  v22[8] = v27;
  v22[9] = v28;
  v22[10] = v23;
  v29 = v40[0];
  v30 = v40[1];
  v22[1] = xmmword_241047BF0;
  v22[2] = v29;
  v31 = v40[2];
  v32 = v40[3];
  v22[3] = v30;
  v22[4] = v31;
  v22[5] = v32;
  v22[6] = v26;
  return sub_240FF9C90(v22);
}

double Option.init<A>(name:parsing:help:completion:)@<D0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a1;
  v12 = *a2;
  v13 = *a4;
  v14 = a4[1];
  v15 = *(a4 + 16);
  v16 = swift_allocObject();
  v17 = *(a3 + 16);
  *(v16 + 40) = *a3;
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  *(v16 + 32) = v11;
  *(v16 + 56) = v17;
  *(v16 + 72) = *(a3 + 32);
  *(v16 + 88) = *(a3 + 48);
  *(v16 + 89) = v12;
  *(v16 + 96) = v13;
  *(v16 + 104) = v14;
  *(v16 + 112) = v15;
  v18 = sub_241046DA8();
  sub_24102B87C(sub_24101452C, v16, v18, v19, &v27);
  v25 = v27;
  v26 = v28;
  v22 = type metadata accessor for Parsed(0, v18, v20, v21);
  (*(*(v22 - 8) + 32))(&v29, &v25, v22);
  v23 = v30;
  result = *&v29;
  *a7 = v29;
  *(a7 + 16) = v23;
  return result;
}

uint64_t sub_2410138AC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10)
{
  v12 = a6;
  v18 = sub_241046DA8();
  *&v39[0] = a4;

  v19 = sub_241018548(a1, a2);
  v20 = *(a5 + 16);
  v37[0] = *a5;
  v37[1] = v20;
  v37[2] = *(a5 + 32);
  v38 = *(a5 + 48);
  v36 = 0;
  v34[0] = a7;
  v34[1] = a8;
  v35 = a9;
  sub_241010918(a5, v39);
  sub_240FFBA9C(a7, a8, a9);
  WitnessTable = swift_getWitnessTable();
  sub_24102BF70(a1, a2, a3, v19, v37, v12, &v36, v39, v34, v18, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v22 = swift_allocObject();
  v23 = v39[8];
  v24 = v39[10];
  v25 = v39[11];
  v22[11] = v39[9];
  v22[12] = v24;
  v22[13] = v25;
  v26 = v39[4];
  v27 = v39[6];
  v28 = v39[7];
  v22[7] = v39[5];
  v22[8] = v27;
  v22[9] = v28;
  v22[10] = v23;
  v29 = v39[0];
  v30 = v39[1];
  v22[1] = xmmword_241047BF0;
  v22[2] = v29;
  v31 = v39[2];
  v32 = v39[3];
  v22[3] = v30;
  v22[4] = v31;
  v22[5] = v32;
  v22[6] = v26;
  return sub_240FF9C90(v22);
}

double Option.init<A>(wrappedValue:name:parsing:help:completion:transform:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v13 = *a2;
  v14 = *a3;
  v16 = *a5;
  v15 = a5[1];
  v17 = *(a5 + 16);
  v18 = swift_allocObject();
  *(v18 + 16) = a8;
  *(v18 + 24) = v13;
  v19 = *(a4 + 16);
  *(v18 + 32) = *a4;
  *(v18 + 48) = v19;
  *(v18 + 64) = *(a4 + 32);
  *(v18 + 80) = *(a4 + 48);
  *(v18 + 81) = v14;
  *(v18 + 88) = a6;
  *(v18 + 96) = a7;
  *(v18 + 104) = a1;
  *(v18 + 112) = v16;
  *(v18 + 120) = v15;
  *(v18 + 128) = v17;
  v20 = sub_241046DA8();
  sub_24102B87C(sub_24101458C, v18, v20, v21, &v31);
  v29 = v31;
  v30 = v32;
  v24 = type metadata accessor for Parsed(0, v20, v22, v23);
  (*(*(v24 - 8) + 32))(&v33, &v29, v24);
  v25 = v34;
  result = *&v33;
  *a9 = v33;
  *(a9 + 16) = v25;
  return result;
}

uint64_t sub_241013BB0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13)
{
  v17 = sub_241046DA8();
  *&v42[0] = a4;

  v18 = sub_241018548(a1, a2);
  v19 = *(a5 + 16);
  v40[0] = *a5;
  v40[1] = v19;
  v40[2] = *(a5 + 32);
  v41 = *(a5 + 48);
  v39 = a9;
  v37[0] = a10;
  v37[1] = a11;
  v38 = a12;
  sub_241010918(a5, v42);

  sub_240FFBA9C(a10, a11, a12);

  WitnessTable = swift_getWitnessTable();
  sub_24102C2B4(a1, a2, a3, v18, v40, a6, a7, v42, a8, &v39, v37, v17, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v21 = swift_allocObject();
  v22 = v42[8];
  v23 = v42[10];
  v24 = v42[11];
  v21[11] = v42[9];
  v21[12] = v23;
  v21[13] = v24;
  v25 = v42[4];
  v26 = v42[6];
  v27 = v42[7];
  v21[7] = v42[5];
  v21[8] = v26;
  v21[9] = v27;
  v21[10] = v22;
  v28 = v42[0];
  v29 = v42[1];
  v21[1] = xmmword_241047BF0;
  v21[2] = v28;
  v30 = v42[2];
  v31 = v42[3];
  v21[3] = v29;
  v21[4] = v30;
  v21[5] = v31;
  v21[6] = v25;
  return sub_240FF9C90(v21);
}

double Option.init<A>(name:parsing:help:completion:transform:)@<D0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v12 = *a1;
  v13 = *a2;
  v14 = *a4;
  v15 = a4[1];
  v16 = *(a4 + 16);
  v17 = swift_allocObject();
  *(v17 + 16) = a7;
  *(v17 + 24) = v12;
  v18 = *(a3 + 16);
  *(v17 + 32) = *a3;
  *(v17 + 48) = v18;
  *(v17 + 64) = *(a3 + 32);
  *(v17 + 80) = *(a3 + 48);
  *(v17 + 81) = v13;
  *(v17 + 88) = a5;
  *(v17 + 96) = a6;
  *(v17 + 104) = v14;
  *(v17 + 112) = v15;
  *(v17 + 120) = v16;
  v19 = sub_241046DA8();
  sub_24102B87C(sub_241014648, v17, v19, v20, &v29);
  v27 = v29;
  v28 = v30;
  v23 = type metadata accessor for Parsed(0, v19, v21, v22);
  (*(*(v23 - 8) + 32))(&v31, &v27, v23);
  v24 = v32;
  result = *&v31;
  *a8 = v31;
  *(a8 + 16) = v24;
  return result;
}

uint64_t sub_241013ED8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v18 = sub_241046DA8();
  *&v41[0] = a4;

  v19 = sub_241018548(a1, a2);
  v20 = *(a5 + 16);
  v39[0] = *a5;
  v39[1] = v20;
  v39[2] = *(a5 + 32);
  v40 = *(a5 + 48);
  v38 = 0;
  v36[0] = a9;
  v36[1] = a10;
  v37 = a11;
  sub_241010918(a5, v41);
  sub_240FFBA9C(a9, a10, a11);

  WitnessTable = swift_getWitnessTable();
  sub_24102C2B4(a1, a2, a3, v19, v39, a6, a7, v41, a8, &v38, v36, v18, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v22 = swift_allocObject();
  v23 = v41[8];
  v24 = v41[10];
  v25 = v41[11];
  v22[11] = v41[9];
  v22[12] = v24;
  v22[13] = v25;
  v26 = v41[4];
  v27 = v41[6];
  v28 = v41[7];
  v22[7] = v41[5];
  v22[8] = v27;
  v22[9] = v28;
  v22[10] = v23;
  v29 = v41[0];
  v30 = v41[1];
  v22[1] = xmmword_241047BF0;
  v22[2] = v29;
  v31 = v41[2];
  v32 = v41[3];
  v22[3] = v30;
  v22[4] = v31;
  v22[5] = v32;
  v22[6] = v26;
  return sub_240FF9C90(v22);
}

uint64_t sub_2410140A8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = (*(*(*(v3 + 16) - 8) + 80) + 90) & ~*(*(*(v3 + 16) - 8) + 80);
  v5 = v3 + ((*(*(*(v3 + 16) - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_24101141C(a1, a2, a3, *(v3 + 32), v3 + 40, *(v3 + 89), v3 + v4, *v5, *(v5 + 8), *(v5 + 16), *(v3 + 16));
}

uint64_t sub_241014164(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = (*(*(*(v3 + 16) - 8) + 80) + 104) & ~*(*(*(v3 + 16) - 8) + 80);
  v5 = (*(*(*(v3 + 16) - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_241011D84(a1, a2, a3, *(v3 + 24), v3 + 32, *(v3 + 81), *(v3 + 88), *(v3 + 96), v3 + v4, *(v3 + v5), *(v3 + v5 + 8), *(v3 + v5 + 16), *(v3 + 16));
}

uint64_t sub_24101426C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(sub_241046E58() - 8);
  v9 = (*(v8 + 80) + 90) & ~*(v8 + 80);
  v10 = v3 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_2410125E8(a1, a2, a3, *(v3 + 32), v3 + 40, *(v3 + 89), v3 + v9, *v10, *(v10 + 8), *(v10 + 16), v7);
}

uint64_t sub_241014394(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(sub_241046E58() - 8);
  v9 = (*(v8 + 80) + 104) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_241012E1C(a1, a2, a3, *(v3 + 24), v3 + 32, *(v3 + 81), *(v3 + 88), *(v3 + 96), v3 + v9, *(v3 + v10), *(v3 + v10 + 8), *(v3 + v10 + 16), v7);
}

uint64_t objectdestroy_2Tm_0()
{

  if (*(v0 + 48))
  {
  }

  v1 = *(v0 + 112);
  if (v1 != 255)
  {
    sub_240FFB9C4(*(v0 + 96), *(v0 + 104), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t objectdestroy_8Tm_0()
{

  if (*(v0 + 40))
  {
  }

  v1 = *(v0 + 120);
  if (v1 != 255)
  {
    sub_240FFB9C4(*(v0 + 104), *(v0 + 112), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 121, 7);
}

uint64_t sub_2410146AC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2410146E8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_241014728()
{
  result = qword_27E51F728;
  if (!qword_27E51F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F728);
  }

  return result;
}

unint64_t sub_241014780()
{
  result = qword_27E51F730;
  if (!qword_27E51F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F730);
  }

  return result;
}

void static CompletionKind.default.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 4;
}

uint64_t static CompletionKind.list(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
}

uint64_t static CompletionKind.file(extensions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
}

double static CompletionKind.directory.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_241049500;
  *(a1 + 16) = 4;
  return result;
}

uint64_t static CompletionKind.shellCommand(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 2;
}

uint64_t static CompletionKind.custom(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 3;
}

uint64_t get_enum_tag_for_layout_string_22ArgumentParserInternal14CompletionKindV0E0O(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_2410148C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_241014908(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_24101494C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t OptionGroup.title.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));

  return v2;
}

uint64_t OptionGroup.title.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 44));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_241014A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v8 = type metadata accessor for OptionGroup(0, a2, a3, a5);
  *(a4 + v8[10]) = 0;
  v9 = (a4 + v8[11]);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v12 = type metadata accessor for Parsed(0, a2, v10, v11);
  result = (*(*(v12 - 8) + 32))(a4, a1, v12);
  *(a4 + v8[9]) = 0;
  return result;
}

uint64_t OptionGroup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v6 = v5;
  v50 = a4;
  v48 = a3;
  v49 = type metadata accessor for OptionGroup(0, a2, a3, a5);
  v45 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = v42 - v9;
  v42[0] = type metadata accessor for Parsed(0, a2, v10, v11);
  MEMORY[0x28223BE20](v42[0]);
  v13 = v42 - v12;
  v14 = sub_241046E58();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v42 - v17;
  v47 = *(a2 - 8);
  v19 = MEMORY[0x28223BE20](v16);
  v44 = v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v43 = v42 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = v42 - v23;
  v68 = a1;
  sub_240FEDBC4(a1, v59);
  v42[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F738, &qword_241049690);
  if (swift_dynamicCast())
  {
    v64 = v55;
    v65 = v56;
    v66 = v57;
    v67 = v58;
    v60 = v51;
    v61 = v52;
    v62 = v53;
    v63 = v54;
    sub_241039544(a2);
    if (!v5)
    {
      v35 = v47;
      (*(v47 + 56))(v18, 0, 1, a2);
      (*(v35 + 32))(v24, v18, a2);
      (*(v35 + 16))(v13, v24, a2);
      swift_storeEnumTagMultiPayload();
      v36 = v13;
      v28 = v48;
      sub_241014A28(v36, a2, v48, v50, v37);
      (*(v35 + 8))(v24, a2);
      sub_2410153E0(&v60);
      v25 = v68;
      v26 = v49;
LABEL_10:
      v38 = v44;
      OptionGroup.wrappedValue.getter(v26, v44, v33, v34);
      (*(v28 + 24))(a2, v28);
      OptionGroup.wrappedValue.setter(v38, v26, v39, v40);
      return __swift_destroy_boxed_opaque_existential_1Tm(v25);
    }

    MEMORY[0x245CD7E80](v5);
    (*(v47 + 56))(v18, 1, 1, a2);
    sub_2410153E0(&v60);
    (*(v15 + 8))(v18, v14);
    v6 = 0;
  }

  else
  {
    v58 = 0;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v51 = 0u;
    sub_241015150(&v51);
  }

  v25 = v68;
  sub_240FEDBC4(v68, &v60);
  v26 = v49;
  WitnessTable = swift_getWitnessTable();
  v28 = v48;
  v29 = v46;
  sub_24102B944(&v60, v26, WitnessTable, v46);
  if (!v6)
  {
    (*(v45 + 32))(v50, v29, v26);
    sub_240FEDBC4(v25, v59);
    if (swift_dynamicCast())
    {
      v64 = v55;
      v65 = v56;
      v66 = v57;
      v67 = v58;
      v60 = v51;
      v61 = v52;
      v62 = v53;
      v63 = v54;
      v32 = v43;
      OptionGroup.wrappedValue.getter(v26, v43, v30, v31);
      sub_2410396D8(v32, a2, a2, v28);
      (*(v47 + 8))(v32, a2);
      sub_2410153E0(&v60);
    }

    else
    {
      v58 = 0;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v51 = 0u;
      sub_241015150(&v51);
    }

    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v25);
}

uint64_t sub_241015150(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F740, &qword_241049698);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OptionGroup.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v5 = v4;
  v7 = *(a1 + 16);
  v8 = type metadata accessor for Parsed(0, v7, a3, a4);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, v5, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(v7 - 8) + 32))(a2, v10, v7);
  }

  result = sub_2410471B8();
  __break(1u);
  return result;
}

uint64_t OptionGroup.wrappedValue.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v7 = type metadata accessor for Parsed(0, v6, a3, a4);
  (*(*(v7 - 8) + 8))(v4, v7);
  (*(*(v6 - 8) + 32))(v4, a1, v6);

  return swift_storeEnumTagMultiPayload();
}

uint64_t OptionGroup.init(title:visibility:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a3;
  v12 = type metadata accessor for Parsed(0, a4, a3, a4);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v22 - v13);
  LOBYTE(v8) = *v8;
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a1;
  v15[5] = a2;
  sub_24102B87C(sub_241015674, v15, a4, v16, v14);
  sub_241014A28(v14, a4, a5, a6, v17);
  v19 = type metadata accessor for OptionGroup(0, a4, a5, v18);
  *(a6 + *(v19 + 36)) = v8;
  v20 = (a6 + *(v19 + 44));

  *v20 = a1;
  v20[1] = a2;
  return result;
}

uint64_t sub_241015558(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = 2;

  v14 = sub_240FDF86C(a6, a7, &v20, a1, a2, a3);
  v15 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v15 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_11;
    }

    for (i = *(v14 + 16); i; i = *(v14 + 16))
    {
      v17 = 0;
      v18 = (v14 + 152);
      while (v17 < i)
      {
        *(v18 - 1) = a4;
        *v18 = a5;

        ++v17;
        i = *(v14 + 16);
        v18 += 24;
        if (v17 >= i)
        {
          return v14;
        }
      }

      __break(1u);
LABEL_11:
      v14 = sub_24103F27C(v14);
    }
  }

  return v14;
}

uint64_t sub_241015680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v14 - v6;
  (*(v8 + 16))(&v14 - v6);
  v10 = type metadata accessor for OptionGroup(0, v4, v5, v9);
  return OptionGroup.wrappedValue.setter(v7, v10, v11, v12);
}

void (*OptionGroup.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  OptionGroup.wrappedValue.getter(a2, v11, v12, v13);
  return sub_241015860;
}

void sub_241015860(uint64_t **a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  if (a2)
  {
    v7 = v4[2];
    v8 = v4[3];
    v9 = *v4;
    (*(v8 + 16))((*a1)[4], v6, v7);
    OptionGroup.wrappedValue.setter(v5, v9, v10, v11);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    OptionGroup.wrappedValue.setter((*a1)[5], *v4, a3, a4);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t OptionGroup.description.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v12 = type metadata accessor for Parsed(0, v3, v10, v11);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v18 - v14;
  (*(v13 + 16))(&v18 - v14, v2, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 8))(v15, v12);
    return 0xD000000000000019;
  }

  else
  {
    (*(v4 + 32))(v9, v15, v3);
    (*(v4 + 16))(v7, v9, v3);
    v17 = sub_241046AF8();
    (*(v4 + 8))(v9, v3);
    return v17;
  }
}

uint64_t sub_241015C24(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_241015C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Parsed(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

ArgumentParserInternal::CommandGroup __swiftcall CommandGroup.init(name:subcommands:)(Swift::String name, Swift::OpaquePointer subcommands)
{
  *v2 = name;
  *(v2 + 16) = subcommands;
  result.name = name;
  result.subcommands = subcommands;
  return result;
}

uint64_t CommandGroup.name.getter()
{
  v1 = *v0;

  return v1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_241015D4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_241015D94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static CleanExit.helpRequest(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = swift_getDynamicType();
  v5 = a1[4];
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  return result;
}

uint64_t ValidationError.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_241015E6C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_241015F04(uint64_t a1, uint64_t a2)
{
  v4 = sub_241016244();
  v5 = sub_241016298();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

_DWORD *sub_241015F5C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_241015F78()
{
  sub_2410475A8();
  sub_2410475D8();
  return sub_2410475E8();
}

uint64_t sub_241015FEC(uint64_t a1)
{
  sub_2410475A8();
  sub_2410475D8();
  return sub_2410475E8();
}

uint64_t static CleanExit.helpRequest(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  return result;
}

uint64_t static CleanExit.message(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
}

uint64_t CleanExit.description.getter()
{
  if (!*(v0 + 16))
  {
    return 0x706C65682D2DLL;
  }

  if (*(v0 + 16) != 1)
  {
    return 0xD000000000000018;
  }

  v1 = *v0;

  return v1;
}

unint64_t sub_2410160D8()
{
  result = qword_27E51F748;
  if (!qword_27E51F748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F748);
  }

  return result;
}

uint64_t sub_24101612C()
{
  if (!*(v0 + 16))
  {
    return 0x706C65682D2DLL;
  }

  if (*(v0 + 16) != 1)
  {
    return 0xD000000000000018;
  }

  v1 = *v0;

  return v1;
}

uint64_t getEnumTagSinglePayload for ExitCode(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ExitCode(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

unint64_t sub_241016244()
{
  result = qword_27E51F750;
  if (!qword_27E51F750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F750);
  }

  return result;
}

unint64_t sub_241016298()
{
  result = qword_27E51F758;
  if (!qword_27E51F758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F758);
  }

  return result;
}

void static ArgumentHelp.private.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 2;
}

void __swiftcall ArgumentHelp.init(stringLiteral:)(ArgumentParserInternal::ArgumentHelp *__return_ptr retstr, Swift::String stringLiteral)
{
  retstr->discussion._countAndFlagsBits = 0;
  retstr->discussion._object = 0xE000000000000000;
  retstr->valueName.value._countAndFlagsBits = 0;
  retstr->valueName.value._object = 0;
  retstr->visibility.base = ArgumentParserInternal_ArgumentVisibility_Representation_default;
  retstr->abstract = stringLiteral;
}

uint64_t ArgumentHelp.abstract.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ArgumentHelp.abstract.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ArgumentHelp.discussion.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ArgumentHelp.discussion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ArgumentHelp.valueName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ArgumentHelp.valueName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t (*ArgumentHelp.shouldDisplay.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 48) == 0;
  return sub_241016550;
}

void __swiftcall ArgumentHelp.init(_:discussion:valueName:shouldDisplay:)(ArgumentParserInternal::ArgumentHelp *__return_ptr retstr, Swift::String _, Swift::String discussion, Swift::String_optional valueName, Swift::Bool shouldDisplay)
{
  retstr->abstract = _;
  retstr->discussion = discussion;
  retstr->valueName = valueName;
  retstr->visibility.base = !shouldDisplay;
}

void __swiftcall ArgumentHelp.init(_:discussion:valueName:visibility:)(ArgumentParserInternal::ArgumentHelp *__return_ptr retstr, Swift::String _, Swift::String discussion, Swift::String_optional valueName, ArgumentParserInternal::ArgumentVisibility visibility)
{
  v5 = *visibility.base;
  retstr->abstract = _;
  retstr->discussion = discussion;
  retstr->valueName = valueName;
  retstr->visibility.base = v5;
}

void static ArgumentHelp.hidden.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
}

unint64_t sub_2410165B8()
{
  result = qword_27E51F760;
  if (!qword_27E51F760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F760);
  }

  return result;
}

unint64_t sub_241016630()
{
  result = qword_27E51F768;
  if (!qword_27E51F768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F768);
  }

  return result;
}

unint64_t sub_241016694()
{
  result = qword_280CC1E60[0];
  if (!qword_280CC1E60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CC1E60);
  }

  return result;
}

uint64_t sub_241016700(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_241016748(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ArgumentVisibility.hashValue.getter()
{
  v1 = *v0;
  sub_2410475A8();
  MEMORY[0x245CD7AE0](v1);
  return sub_2410475E8();
}

unint64_t sub_241016858()
{
  result = qword_27E51F770;
  if (!qword_27E51F770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F770);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HelpRequested(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HelpRequested(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_241016A10()
{
  result = qword_27E51F778;
  if (!qword_27E51F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F778);
  }

  return result;
}

uint64_t NameSpecification.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_240FE0C08(a1);

  *a2 = v3;
  return result;
}

double static NameSpecification.Element.short.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_241049500;
  *(a1 + 16) = 0x80;
  return result;
}

void static NameSpecification.Element.long.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x80;
}

uint64_t static NameSpecification.Element.customLong(_:withSingleDash:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
}

uint64_t sub_241016B18(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    sub_241046C48();
    v22 = a1;

    v8 = sub_241046A38();
    v10 = v9;

    MEMORY[0x245CD70E0](v8, v10);

    v11 = sub_241039038(1uLL, a3, a4);
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = MEMORY[0x245CD7040](v11, v13, v15, v17);
    v20 = v19;

    MEMORY[0x245CD70E0](v18, v20);

    return v22;
  }

  else
  {
  }

  return a1;
}

uint64_t sub_241016C4C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_241047678();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a3;
  v43 = a4;
  v38 = 45;
  v39 = 0xE100000000000000;
  sub_240FE05E8();
  if (sub_241046F08())
  {
    goto LABEL_2;
  }

  v38 = 95;
  v39 = 0xE100000000000000;
  if (sub_241046F08())
  {
    v38 = a1;
    v39 = a2;

    v12 = 95;
    goto LABEL_5;
  }

  sub_241039468(a3, a4);
  if (!v14 || (v15 = sub_241046A48(), , (v15 & 1) == 0))
  {
LABEL_2:
    v38 = a1;
    v39 = a2;

    v12 = 45;
LABEL_5:
    MEMORY[0x245CD70E0](v12, 0xE100000000000000);
    MEMORY[0x245CD70E0](a3, a4);
    return v38;
  }

  v16 = HIBYTE(a4) & 0xF;
  v38 = a3;
  v39 = a4;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v16 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v40 = 0;
  v41 = v16;

  result = sub_241046BD8();
  if (!v17)
  {
LABEL_52:

    goto LABEL_2;
  }

  v18 = result;
  v19 = v17;
  v37 = (v9 + 8);
  while (1)
  {
    v20 = (v19 & 0x2000000000000000) != 0 ? HIBYTE(v19) & 0xF : v18 & 0xFFFFFFFFFFFFLL;
    if (!v20)
    {
      break;
    }

    if ((v19 & 0x1000000000000000) != 0)
    {
      v25 = sub_241046B28();
    }

    else
    {
      if ((v19 & 0x2000000000000000) != 0)
      {
        v22 = v18;
      }

      else
      {
        if ((v18 & 0x1000000000000000) != 0)
        {
          v21 = ((v19 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v21 = sub_2410470B8();
        }

        v22 = *v21;
      }

      v23 = v22;
      v24 = (__clz(~v22) - 24) << 16;
      if (v23 < 0)
      {
        v25 = v24;
      }

      else
      {
        v25 = 65541;
      }
    }

    v26 = 4 * v20;
    if (4 * v20 == v25 >> 14)
    {
      result = sub_241017D28(v18, v19);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_54;
      }

      sub_241047688();
      v27 = sub_241047658();
      (*v37)(v11, v8);
      if (v27)
      {
        goto LABEL_50;
      }
    }

    if (sub_241046A68())
    {
      if ((v19 & 0x1000000000000000) != 0)
      {
        v30 = sub_241046B28();
      }

      else
      {
        if ((v19 & 0x2000000000000000) != 0)
        {
          v29 = v18;
        }

        else
        {
          if ((v18 & 0x1000000000000000) != 0)
          {
            v28 = ((v19 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v28 = sub_2410470B8();
          }

          v29 = *v28;
        }

        v31 = v29;
        v32 = (__clz(~v29) - 24) << 16;
        if (v31 < 0)
        {
          v30 = v32;
        }

        else
        {
          v30 = 65541;
        }
      }

      if (v26 == v30 >> 14)
      {
        result = sub_241017D28(v18, v19);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_55;
        }

        sub_241047688();
        v33 = sub_241047668();
        (*v37)(v11, v8);
        if (v33)
        {
          goto LABEL_50;
        }
      }

      if ((sub_241046A68() & 1) == 0)
      {
LABEL_50:

LABEL_51:

        return sub_241016B18(a1, a2, a3, a4);
      }

      v34 = sub_241046A58();

      if ((v34 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
    }

    result = sub_241046BD8();
    v18 = result;
    v19 = v35;
    if (!v35)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_241017070(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (!(a4 >> 6))
  {
    MEMORY[0x245CD7AE0](1, a2, a3);
    sub_241046A88();
    return sub_2410475C8();
  }

  if (a4 >> 6 == 1)
  {
    MEMORY[0x245CD7AE0](3, a2, a3);
    sub_241046A88();
    return sub_2410475C8();
  }

  if (a3 | a2 || a4 != 128)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  return MEMORY[0x245CD7AE0](v5);
}

uint64_t sub_241017118(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_2410475A8();
  if (!(a3 >> 6))
  {
    MEMORY[0x245CD7AE0](1);
    sub_241046A88();
    goto LABEL_5;
  }

  if (a3 >> 6 == 1)
  {
    MEMORY[0x245CD7AE0](3);
    sub_241046A88();
LABEL_5:
    sub_2410475C8();
    return sub_2410475E8();
  }

  if (a2 | a1 || a3 != 128)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x245CD7AE0](v6);
  return sub_2410475E8();
}

uint64_t static NameSpecification.Element.customShort(_:allowingJoined:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 | 0x40;
}

uint64_t NameSpecification.Element.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (!(v2 >> 6))
  {
    MEMORY[0x245CD7AE0](1);
    sub_241046A88();
    return sub_2410475C8();
  }

  if (v2 >> 6 == 1)
  {
    MEMORY[0x245CD7AE0](3);
    sub_241046A88();
    return sub_2410475C8();
  }

  if (*v1 == 0 && v2 == 128)
  {
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  return MEMORY[0x245CD7AE0](v4);
}

uint64_t NameSpecification.Element.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_2410475A8();
  if (!(v3 >> 6))
  {
    MEMORY[0x245CD7AE0](1);
    sub_241046A88();
    goto LABEL_5;
  }

  if (v3 >> 6 == 1)
  {
    MEMORY[0x245CD7AE0](3);
    sub_241046A88();
LABEL_5:
    sub_2410475C8();
    return sub_2410475E8();
  }

  if (v2 | v1 || v3 != 128)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x245CD7AE0](v4);
  return sub_2410475E8();
}

uint64_t sub_2410173C0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  sub_2410475A8();
  if (!(v4 >> 6))
  {
    MEMORY[0x245CD7AE0](1);
    sub_241046A88();
    goto LABEL_5;
  }

  if (v4 >> 6 == 1)
  {
    MEMORY[0x245CD7AE0](3);
    sub_241046A88();
LABEL_5:
    sub_2410475C8();
    return sub_2410475E8();
  }

  if (v3 | v2 || v4 != 128)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x245CD7AE0](v5);
  return sub_2410475E8();
}

uint64_t NameSpecification.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_241018280();
  v9 = sub_241009708(a2, a3, v8);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = v9;
  return result;
}

uint64_t sub_24101750C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_240FE0C08(a1);

  *a2 = v3;
  return result;
}

uint64_t static NameSpecification.customLong(_:withSingleDash:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F430, &qword_241049DC0);
  inited = swift_initStackObject();
  *(inited + 32) = a1;
  *(inited + 16) = xmmword_241047BF0;
  *(inited + 40) = a2;
  *(inited + 48) = a3;

  v9 = sub_240FE0C08(inited);
  swift_setDeallocating();
  sub_240FE0DB0(inited + 32);

  *a4 = v9;
  return result;
}

uint64_t sub_241017644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_240FE0C08(a1);
  sub_240FE0DB0(a2);

  *a3 = v5;
  return result;
}

uint64_t static NameSpecification.customShort(_:allowingJoined:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F430, &qword_241049DC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241047BF0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = a3 | 0x40;

  v9 = sub_240FE0C08(inited);
  swift_setDeallocating();
  sub_240FE0DB0(inited + 32);

  *a4 = v9;
  return result;
}

uint64_t static NameSpecification.shortAndLong.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_240FE0C08(&unk_2852DA7C0);
  swift_arrayDestroy();

  *a1 = v2;
  return result;
}

char *sub_2410177E8(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v7 = *(a4 + 16);
  v8 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v8 = a5 & 0xFFFFFFFFFFFFLL;
  }

  v58 = v8;
  if (!v7)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = a6;
  v11 = 0;
  v12 = a4 + 48;
  v13 = MEMORY[0x277D84F90];
  v62 = a4 + 48;
  do
  {
    v14 = (v12 + 24 * v11);
    for (i = v11; ; ++i)
    {
      if (i >= v7)
      {
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v11 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_43;
      }

      v16 = *(v14 - 2);
      v17 = *(v14 - 1);
      v18 = *v14;
      if (v18 >> 6 == 1)
      {
        if (a3)
        {
          v20 = v18 & 1 | 0x40;
          sub_240FE0E2C(*(v14 - 2), *(v14 - 1), *v14);
          goto LABEL_34;
        }

        goto LABEL_7;
      }

      if (v18 >> 6 != 2)
      {
        sub_240FE0E2C(*(v14 - 2), *(v14 - 1), *v14);
        v21 = sub_241016C4C(a1, a2, v16, v17);
        v23 = v22;
        sub_240FE0E3C(v16, v17, v18);
        if (v18)
        {
          v20 = 0x80;
        }

        else
        {
          v20 = 0;
        }

        v16 = v21;
        v17 = v23;
        v9 = a6;
        goto LABEL_34;
      }

      if (!(v17 | v16) && v18 == 128)
      {
        break;
      }

      if (a3)
      {
        if (v58)
        {
          sub_240FE0E2C(1, 0, 128);
          sub_240FE0E2C(1, 0, 128);
          v16 = sub_241046C48();
          v17 = v19;
          sub_240FE0E3C(1, 0, 128);
          v20 = 64;
          goto LABEL_34;
        }

LABEL_44:
        sub_240FE0E2C(1, 0, 128);
        sub_240FE0E2C(1, 0, 128);
        sub_241047058();
        MEMORY[0x245CD70E0](0x272079654BLL, 0xE500000000000000);
        MEMORY[0x245CD70E0](a5, v9);
        MEMORY[0x245CD70E0](0xD00000000000002FLL, 0x800000024104F310);
        result = sub_2410471B8();
        __break(1u);
        return result;
      }

LABEL_7:
      v14 += 24;
      if (v11 == v7)
      {
        return v13;
      }
    }

    if (v58)
    {

      sub_241046C48();

      v24 = sub_241046A38();
      v25 = v9;
      v27 = v26;

      MEMORY[0x245CD70E0](v24, v27);

      v28 = sub_241039038(1uLL, a5, v25);
      v30 = v29;
      v32 = v31;
      v34 = v33;

      v35 = MEMORY[0x245CD7040](v28, v30, v32, v34);
      v37 = v36;

      MEMORY[0x245CD70E0](v35, v37);

      v39 = a1;
      v38 = a2;
    }

    else
    {
      v38 = a2;

      v39 = a1;
    }

    v40 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v40 = v39 & 0xFFFFFFFFFFFFLL;
    }

    if (v40)
    {
      if (sub_241046C48() == 95 && v41 == 0xE100000000000000)
      {

        goto LABEL_32;
      }

      v42 = sub_241047428();

      if (v42)
      {
LABEL_32:
        v43 = sub_241039038(1uLL, v39, v38);
        v45 = v44;
        v47 = v46;
        v49 = v48;

        v39 = MEMORY[0x245CD7040](v43, v45, v47, v49);
        v38 = v50;
      }
    }

    v9 = a6;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E51F340, &qword_241047D40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_241047BF0;
    *(inited + 32) = a5;
    *(inited + 40) = a6;

    sub_240FE2060(inited);

    v16 = sub_240FE58B8(45, 0xE100000000000000, v39, v38);
    v17 = v52;
    sub_240FE0E3C(0, 0, 128);

    v20 = 0;
LABEL_34:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_240FE30A8(0, *(v13 + 2) + 1, 1, v13);
    }

    v54 = *(v13 + 2);
    v53 = *(v13 + 3);
    if (v54 >= v53 >> 1)
    {
      v13 = sub_240FE30A8((v53 > 1), v54 + 1, 1, v13);
    }

    *(v13 + 2) = v54 + 1;
    v55 = &v13[24 * v54];
    *(v55 + 4) = v16;
    *(v55 + 5) = v17;
    v55[48] = v20;
    v12 = v62;
  }

  while (v11 != v7);
  return v13;
}

unint64_t sub_241017D28(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_241017E78(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_241047048();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_2410470B8() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_241017E78(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_241017F10(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_241017F84(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_241017F10(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_24100BF78(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_241017F84(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_2410470B8();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_2410180A8(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a3 >> 6)
  {
    if (a3 >> 6 == 1)
    {
      if ((a6 & 0xC0) != 0x40)
      {
        goto LABEL_20;
      }

      goto LABEL_6;
    }

    if (a2 | a1 || a3 != 128)
    {
      if ((a6 & 0xC0) != 0x80 || a4 != 1 || a5)
      {
        goto LABEL_20;
      }
    }

    else if ((a6 & 0xC0) != 0x80 || a5 | a4)
    {
      goto LABEL_20;
    }

    if (a6 == 128)
    {
      v9 = 1;
      return v9 & 1;
    }

LABEL_20:
    v9 = 0;
    return v9 & 1;
  }

  if (a6 >= 0x40u)
  {
    goto LABEL_20;
  }

LABEL_6:
  if (a1 != a4 || a2 != a5)
  {
    v6 = a3;
    v7 = a6;
    v8 = sub_241047428();
    a3 = v6;
    a6 = v7;
    if ((v8 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v9 = a6 ^ a3 ^ 1;
  return v9 & 1;
}

BOOL _s22ArgumentParserInternal17NameSpecificationV7ElementV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  if (v6 >> 6)
  {
    if (v6 >> 6 != 1)
    {
      if (v5 | v4 || v6 != 128)
      {
        if ((v9 & 0xC0) != 0x80 || v7 != 1 || v8 != 0)
        {
          return 0;
        }
      }

      else if ((v9 & 0xC0) != 0x80 || (v8 | v7) != 0)
      {
        return 0;
      }

      return v9 == 128;
    }

    if ((v9 & 0xC0) != 0x40)
    {
      return 0;
    }

    if (v4 == v7 && v5 == v8)
    {
      return (v6 & 1) == (v9 & 1);
    }
  }

  else
  {
    if (v9 >= 0x40)
    {
      return 0;
    }

    if (v4 == v7 && v5 == v8)
    {
      return ((v6 ^ v9) & 1) == 0;
    }
  }

  if (sub_241047428())
  {
    return ((v6 ^ v9) & 1) == 0;
  }

  return 0;
}

unint64_t sub_241018280()
{
  result = qword_27E51F780;
  if (!qword_27E51F780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F780);
  }

  return result;
}

unint64_t sub_2410182D8()
{
  result = qword_280CC2078;
  if (!qword_280CC2078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC2078);
  }

  return result;
}

uint64_t sub_241018338(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_241018380(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22ArgumentParserInternal17NameSpecificationV7ElementV14RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_2410183FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 17))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_241018450(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_2410184B4(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0x80;
  }

  return result;
}

unint64_t sub_2410184F4()
{
  result = qword_27E51F788;
  if (!qword_27E51F788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F788);
  }

  return result;
}

char *sub_241018548(uint64_t a1, unint64_t a2)
{
  v4 = *v3;
  v31 = *(*v3 + 16);
  if (!v31)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = a2;
  v6 = a1;
  v7 = 0;
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v28 = v8;
  v9 = (v4 + 48);
  v10 = MEMORY[0x277D84F90];
  v30 = v4;
  while (v7 < *(v4 + 16))
  {
    v11 = *(v9 - 2);
    v12 = *(v9 - 1);
    v13 = *v9;
    if (!(v13 >> 6))
    {
      if (v13)
      {
        v2 = 4294967168;
      }

      else
      {
        v2 = 0;
      }

      goto LABEL_12;
    }

    if (v13 >> 6 == 1)
    {
      v2 = v13 & 1 | 0x40;
LABEL_12:
      v14 = *(v9 - 2);
      v15 = *(v9 - 1);
      goto LABEL_13;
    }

    if (v12 | v11 || v13 != 128)
    {
      v2 = v5;
      if (!v28)
      {
        goto LABEL_27;
      }

      v22 = *v9;
      v23 = *(v9 - 1);
      v24 = *(v9 - 2);
      v25 = v2;
      v14 = sub_241046C48();
      v15 = v26;
      sub_240FE0E3C(1, 0, 128);
      v2 = 64;
      v11 = v24;
      v5 = v25;
      v6 = a1;
      v12 = v23;
      LOBYTE(v13) = v22;
    }

    else
    {
      v19 = *(v9 - 2);
      v20 = *(v9 - 1);
      v14 = sub_240FE58B8(45, 0xE100000000000000, v6, v5);
      v15 = v21;
      sub_240FE0E3C(0, 0, 128);
      LOBYTE(v13) = 0x80;
      v12 = v20;
      v11 = v19;
      v2 = 0;
    }

LABEL_13:
    sub_240FE0E2C(v11, v12, v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_240FE30A8(0, *(v10 + 2) + 1, 1, v10);
    }

    v17 = *(v10 + 2);
    v16 = *(v10 + 3);
    if (v17 >= v16 >> 1)
    {
      v10 = sub_240FE30A8((v16 > 1), v17 + 1, 1, v10);
    }

    ++v7;
    *(v10 + 2) = v17 + 1;
    v18 = &v10[24 * v17];
    *(v18 + 4) = v14;
    *(v18 + 5) = v15;
    v18[48] = v2;
    v9 += 24;
    v4 = v30;
    if (v31 == v7)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_27:
  sub_241047058();
  MEMORY[0x245CD70E0](0x272079654BLL, 0xE500000000000000);
  MEMORY[0x245CD70E0](v6, v2);
  MEMORY[0x245CD70E0](0xD00000000000002FLL, 0x800000024104F310);
  result = sub_2410471B8();
  __break(1u);
  return result;
}

uint64_t sub_241018810@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v26 = a5;
  v27 = a2;
  v28 = a1;
  v25 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v22);
  if ((*(v15 + 48))(v20, 1, v14) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v15 + 32))(v18, v20, v14);
  v28(v18, v12);
  result = (*(v15 + 8))(v18, v14);
  if (v6)
  {
    return (*(v25 + 32))(v26, v12, a3);
  }

  return result;
}

__n128 Flag<A>.init(wrappedValue:name:help:)@<Q0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  v9 = *(a3 + 16);
  *(v8 + 32) = *a3;
  *(v8 + 48) = v9;
  result = *(a3 + 32);
  *(v8 + 64) = result;
  *(v8 + 80) = *(a3 + 48);
  *a4 = sub_2410199CC;
  *(a4 + 8) = v8;
  *(a4 + 16) = 1;
  return result;
}

uint64_t Flag.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = type metadata accessor for Flag(0, a2, a3, a4);
  sub_240FEDBC4(a1, v10);
  WitnessTable = swift_getWitnessTable();
  sub_24102B164(v10, v7, WitnessTable, a5);
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t Flag.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v5 = v4;
  v7 = *(a1 + 16);
  v8 = type metadata accessor for Parsed(0, v7, a3, a4);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, v5, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(v7 - 8) + 32))(a2, v10, v7);
  }

  result = sub_2410471B8();
  __break(1u);
  return result;
}

uint64_t sub_241018DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v14 - v5;
  (*(v7 + 16))(&v14 - v5);
  v10 = type metadata accessor for Flag(0, v4, v8, v9);
  return Flag.wrappedValue.setter(v6, v10, v11, v12);
}

uint64_t Flag.wrappedValue.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v7 = type metadata accessor for Parsed(0, v6, a3, a4);
  (*(*(v7 - 8) + 8))(v4, v7);
  (*(*(v6 - 8) + 32))(v4, a1, v6);

  return swift_storeEnumTagMultiPayload();
}

void (*Flag.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  Flag.wrappedValue.getter(a2, v11, v12, v13);
  return sub_241019038;
}

void sub_241019038(uint64_t **a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  if (a2)
  {
    v7 = v4[2];
    v8 = v4[3];
    v9 = *v4;
    (*(v8 + 16))((*a1)[4], v6, v7);
    Flag.wrappedValue.setter(v5, v9, v10, v11);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    Flag.wrappedValue.setter((*a1)[5], *v4, a3, a4);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t Flag.description.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v12 = type metadata accessor for Parsed(0, v3, v10, v11);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v18 - v14;
  (*(v13 + 16))(&v18 - v14, v2, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 8))(v15, v12);
    return 0xD000000000000012;
  }

  else
  {
    (*(v4 + 32))(v9, v15, v3);
    (*(v4 + 16))(v7, v9, v3);
    v17 = sub_241046AF8();
    (*(v4 + 8))(v9, v3);
    return v17;
  }
}

uint64_t FlagInversion.hashValue.getter()
{
  v1 = *v0;
  sub_2410475A8();
  MEMORY[0x245CD7AE0](v1);
  return sub_2410475E8();
}

uint64_t FlagExclusivity.hashValue.getter()
{
  v1 = *v0;
  sub_2410475A8();
  MEMORY[0x245CD7AE0](v1);
  return sub_2410475E8();
}

uint64_t sub_2410194A0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t *a7)
{
  v42 = a7[2];
  v43 = a7[3];
  v12 = a7[4];
  v11 = a7[5];
  v41 = *(a7 + 48);
  if (a5)
  {
    v38 = sub_2410177E8(0x656C62616E65, 0xE600000000000000, 1, a4, a1, a2, a3);
    v14 = 0x656C6261736964;
    v15 = 0xE700000000000000;
    v16 = a4;
  }

  else
  {
    v46[0] = a4;
    v17 = v11;
    v38 = sub_241018548(a1, a2);
    v14 = 28526;
    v15 = 0xE200000000000000;
    v16 = a4;
    v11 = v17;
  }

  v39 = sub_2410177E8(v14, v15, 0, v16, a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F330, &unk_241047D30);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_241047BF0;
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;
  *(v19 + 48) = a3;
  v20 = a7[1];
  if (v20)
  {
    v37 = *a7;
    v45[0] = *a7;
    v45[1] = v20;
    if (v11)
    {
      sub_240FFBB48(v45, v46);

      v34 = v42;
      v35 = v20;
      v32 = v12;
      v33 = v43;
      v31 = v11;
      v36 = v41;
      goto LABEL_10;
    }

    sub_240FFBB48(v45, v46);
    v36 = v41;
    v34 = v42;
    v35 = v20;
  }

  else
  {
    v36 = 0;
    v37 = 0;
    v34 = 0;
    v35 = 0xE000000000000000;
    v33 = 0xE000000000000000;
  }

  v31 = 0xE000000000000000;
  v32 = 0;
LABEL_10:
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_241047BF0;
  *(v21 + 32) = a1;
  *(v21 + 40) = a2;
  *(v21 + 48) = a3;
  if (!v20)
  {
    v28 = 0;
    v30 = 0;
    v41 = 0;
    v20 = 0xE000000000000000;
    v42 = 0;
    v43 = 0xE000000000000000;
LABEL_15:
    v29 = 0xE000000000000000;
    goto LABEL_16;
  }

  v46[0] = *a7;
  v46[1] = v20;
  v28 = v46[0];
  if (!v11)
  {
    sub_240FFBB48(v46, v44);

    v30 = 0;
    goto LABEL_15;
  }

  sub_240FFBB48(v46, v44);

  v29 = v11;
  v30 = v12;
LABEL_16:
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  *(v22 + 32) = a3;
  *(v22 + 40) = a6;
  v23 = swift_allocObject();
  *(v23 + 16) = 2;
  *(v23 + 24) = a1;
  *(v23 + 32) = a2;
  *(v23 + 40) = a3;
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  *(v24 + 32) = a3;
  *(v24 + 40) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_241048380;
  *(v25 + 32) = v38;
  *(v25 + 40) = 1;
  v26 = MEMORY[0x277D84F90];
  *(v25 + 48) = 0;
  *(v25 + 56) = 0;
  *(v25 + 64) = v19;
  *(v25 + 72) = v26;
  *(v25 + 80) = 1;
  *(v25 + 88) = v37;
  *(v25 + 96) = v35;
  *(v25 + 104) = v34;
  *(v25 + 112) = v33;
  *(v25 + 120) = v32;
  *(v25 + 128) = v31;
  *(v25 + 136) = v36;
  *(v25 + 144) = 0;
  *(v25 + 152) = 0xE000000000000000;
  *(v25 + 160) = 0;
  *(v25 + 168) = 0;
  *(v25 + 176) = 4;
  *(v25 + 184) = sub_24101DC04;
  *(v25 + 192) = v22;
  *(v25 + 200) = 0;
  *(v25 + 208) = sub_24101DBE4;
  *(v25 + 216) = v23;
  *(v25 + 224) = v39;
  *(v25 + 232) = 1;
  *(v25 + 240) = 0;
  *(v25 + 248) = 0;
  *(v25 + 256) = v21;
  *(v25 + 264) = v26;
  *(v25 + 272) = 0;
  *(v25 + 280) = v28;
  *(v25 + 288) = v20;
  *(v25 + 296) = v42;
  *(v25 + 304) = v43;
  *(v25 + 312) = v30;
  *(v25 + 320) = v29;
  *(v25 + 328) = v41;
  *(v25 + 336) = 0;
  *(v25 + 344) = 0xE000000000000000;
  *(v25 + 352) = 0;
  *(v25 + 360) = 0;
  *(v25 + 368) = 4;
  *(v25 + 376) = sub_24101DC1C;
  *(v25 + 384) = v24;
  *(v25 + 392) = 0;
  *(v25 + 400) = nullsub_1;
  *(v25 + 408) = 0;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  return sub_240FF9C90(v25);
}

__n128 sub_241019904@<Q0>(uint64_t *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a1;
  v11 = *a2;
  v12 = *a3;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v11;
  *(v13 + 25) = v12;
  v14 = *(a4 + 16);
  *(v13 + 32) = *a4;
  *(v13 + 48) = v14;
  result = *(a4 + 32);
  *(v13 + 64) = result;
  *(v13 + 80) = *(a4 + 48);
  *a7 = a6;
  *(a7 + 8) = v13;
  *(a7 + 16) = 1;
  return result;
}

uint64_t sub_241019988(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a4;
  v6 = *(a6 + 16);
  v8[0] = *a6;
  v8[1] = v6;
  v8[2] = *(a6 + 32);
  v9 = *(a6 + 48);
  return sub_241024ED4(a1, a2, a3, &v10, a5, v8);
}

uint64_t sub_2410199CC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v9 = *(v3 + 16);
  v5 = *(v3 + 48);
  v7[0] = *(v3 + 32);
  v7[1] = v5;
  v7[2] = *(v3 + 64);
  v8 = *(v3 + 80);
  return sub_241024ED4(a1, a2, a3, &v9, v4, v7);
}

uint64_t sub_241019A44(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7, uint64_t *a8)
{
  v12 = a8[2];
  v11 = a8[3];
  v14 = a8[4];
  v13 = a8[5];
  v62 = *(a8 + 48);
  if (a6)
  {
    v58 = sub_2410177E8(0x656C62616E65, 0xE600000000000000, 1, a4, a1, a2, a3);
    v16 = 0x656C6261736964;
    v17 = 0xE700000000000000;
    v18 = a4;
  }

  else
  {
    v67[0] = a4;
    v19 = v12;
    v20 = v13;
    v21 = v11;
    v58 = sub_241018548(a1, a2);
    v16 = 28526;
    v17 = 0xE200000000000000;
    v18 = a4;
    v11 = v21;
    v13 = v20;
    v12 = v19;
  }

  v23 = sub_2410177E8(v16, v17, 0, v18, a1, a2, a3);
  v61 = v14;
  v56 = v23;
  if (a5 == 2)
  {
    v54 = 0;
    v55 = 0;
    v25 = v62;
  }

  else
  {
    v24 = v58;
    if ((a5 & 1) == 0)
    {
      v24 = v23;
    }

    v25 = v62;
    if (*(v24 + 2))
    {
      v59 = v13;
      v26 = v11;
      v27 = *(v24 + 4);
      v28 = *(v24 + 5);
      v29 = v24[48];
      sub_240FF0D90(v27, v28, v29);
      v30 = sub_241034020(v27, v28, v29);
      v54 = v31;
      v55 = v30;
      v32 = v28;
      v11 = v26;
      v13 = v59;
      v25 = v62;
      sub_240FF0D30(v27, v32, v29);
    }

    else
    {
      v54 = 0;
      v55 = 0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F330, &unk_241047D30);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_241047BF0;
  *(v33 + 32) = a1;
  *(v33 + 40) = a2;
  v53 = v33;
  *(v33 + 48) = a3;
  v34 = a8[1];
  if (v34)
  {
    v52 = *a8;
    v66[0] = *a8;
    v66[1] = v34;
    if (v13)
    {
      sub_240FFBB48(v66, v67);

      v49 = v12;
      v50 = v34;
      v47 = v14;
      v48 = v11;
      v46 = v13;
      v51 = v25;
      goto LABEL_17;
    }

    sub_240FFBB48(v66, v67);

    v51 = v25;
    v49 = v12;
    v50 = v34;
    v48 = v11;
  }

  else
  {
    v51 = 0;
    v52 = 0;
    v49 = 0;
    v50 = 0xE000000000000000;
    v48 = 0xE000000000000000;
  }

  v46 = 0xE000000000000000;
  v47 = 0;
LABEL_17:
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_241047BF0;
  *(v35 + 32) = a1;
  *(v35 + 40) = a2;
  *(v35 + 48) = a3;
  if (!v34)
  {
    v44 = 0;
    v45 = 0;
    v61 = 0;
    v62 = 0;
    v42 = 0xE000000000000000;
    v43 = 0xE000000000000000;
LABEL_22:
    v60 = 0xE000000000000000;
    goto LABEL_23;
  }

  v67[0] = *a8;
  v67[1] = v34;
  v44 = v67[0];
  v45 = v12;
  v42 = v34;
  v43 = v11;
  if (!v13)
  {
    sub_240FFBB48(v67, v65);

    v61 = 0;
    goto LABEL_22;
  }

  sub_240FFBB48(v67, v65);

  v60 = v13;
LABEL_23:
  v36 = swift_allocObject();
  *(v36 + 16) = a1;
  *(v36 + 24) = a2;
  *(v36 + 32) = a3;
  *(v36 + 40) = a7;
  v37 = swift_allocObject();
  *(v37 + 16) = a5;
  *(v37 + 24) = a1;
  *(v37 + 32) = a2;
  *(v37 + 40) = a3;
  v38 = swift_allocObject();
  *(v38 + 16) = a1;
  *(v38 + 24) = a2;
  *(v38 + 32) = a3;
  *(v38 + 40) = a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_241048380;
  *(v39 + 32) = v58;
  *(v39 + 40) = a5 != 2;
  *(v39 + 48) = v55;
  *(v39 + 56) = v54;
  v40 = MEMORY[0x277D84F90];
  *(v39 + 64) = v53;
  *(v39 + 72) = v40;
  *(v39 + 80) = 1;
  *(v39 + 88) = v52;
  *(v39 + 96) = v50;
  *(v39 + 104) = v49;
  *(v39 + 112) = v48;
  *(v39 + 120) = v47;
  *(v39 + 128) = v46;
  *(v39 + 136) = v51;
  *(v39 + 144) = 0;
  *(v39 + 152) = 0xE000000000000000;
  *(v39 + 160) = 0;
  *(v39 + 168) = 0;
  *(v39 + 176) = 4;
  *(v39 + 184) = sub_24101DA8C;
  *(v39 + 192) = v36;
  *(v39 + 200) = 0;
  *(v39 + 208) = sub_24101DABC;
  *(v39 + 216) = v37;
  *(v39 + 224) = v56;
  *(v39 + 232) = 1;
  *(v39 + 240) = 0;
  *(v39 + 248) = 0;
  *(v39 + 256) = v35;
  *(v39 + 264) = v40;
  *(v39 + 272) = 0;
  *(v39 + 280) = v44;
  *(v39 + 288) = v42;
  *(v39 + 296) = v45;
  *(v39 + 304) = v43;
  *(v39 + 312) = v61;
  *(v39 + 320) = v60;
  *(v39 + 328) = v62;
  *(v39 + 336) = 0;
  *(v39 + 344) = 0xE000000000000000;
  *(v39 + 352) = 0;
  *(v39 + 360) = 0;
  *(v39 + 368) = 4;
  *(v39 + 376) = sub_24101DAE0;
  *(v39 + 384) = v38;
  *(v39 + 392) = 0;
  *(v39 + 400) = nullsub_1;
  *(v39 + 408) = 0;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  return sub_240FF9C90(v39);
}

__n128 Flag<A>.init(wrappedValue:name:inversion:exclusivity:help:)@<Q0>(char a1@<W0>, uint64_t *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a2;
  v10 = *a3;
  v11 = *a4;
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = a1;
  *(v12 + 25) = v10;
  *(v12 + 26) = v11;
  v13 = *(a5 + 16);
  *(v12 + 32) = *a5;
  *(v12 + 48) = v13;
  result = *(a5 + 32);
  *(v12 + 64) = result;
  *(v12 + 80) = *(a5 + 48);
  *a6 = sub_241019FE8;
  *(a6 + 8) = v12;
  *(a6 + 16) = 1;
  return result;
}

__n128 Flag<A>.init(name:inversion:exclusivity:help:)@<Q0>(uint64_t *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a3;
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = 2;
  *(v10 + 25) = v8;
  *(v10 + 26) = v9;
  v11 = *(a4 + 16);
  *(v10 + 32) = *a4;
  *(v10 + 48) = v11;
  result = *(a4 + 32);
  *(v10 + 64) = result;
  *(v10 + 80) = *(a4 + 48);
  *a5 = sub_24101DBA8;
  *(a5 + 8) = v10;
  *(a5 + 16) = 1;
  return result;
}

__n128 Flag<A>.init(name:help:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v7 = *(a2 + 16);
  *(v6 + 24) = *a2;
  *(v6 + 16) = v5;
  *(v6 + 40) = v7;
  result = *(a2 + 32);
  *(v6 + 56) = result;
  *(v6 + 72) = *(a2 + 48);
  *a3 = sub_24101A120;
  *(a3 + 8) = v6;
  *(a3 + 16) = 1;
  return result;
}

uint64_t sub_24101A120(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v4 = *(v3 + 40);
  v6[0] = *(v3 + 24);
  v6[1] = v4;
  v6[2] = *(v3 + 56);
  v7 = *(v3 + 72);
  return sub_241025174(a1, a2, a3, &v8, v6);
}

uint64_t sub_24101A16C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a5;
  v28 = a1;
  v29 = a6;
  v9 = type metadata accessor for Parsed(0, a4, a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v26 - v11);
  v13 = *a2;
  v14 = a3[1];
  v30 = *a3;
  v31 = v14;
  v32 = a3[2];
  v33 = *(a3 + 48);
  v15 = sub_241046E58();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = (*(v16 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v21 = v27;
  v20 = v28;
  *(v19 + 16) = a4;
  *(v19 + 24) = v21;
  (*(v16 + 32))(v19 + v17, v20, v15);
  v22 = v19 + v18;
  v23 = v31;
  *v22 = v30;
  *(v22 + 16) = v23;
  *(v22 + 32) = v32;
  *(v22 + 48) = v33;
  *(v22 + 49) = v13;
  sub_24102B87C(sub_24101D718, v19, a4, v24, v12);
  return (*(v10 + 32))(v29, v12, v9);
}

uint64_t sub_24101A35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v54 = a6;
  v53 = a5;
  v59 = a4;
  v13 = *(a8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v47 = *(AssociatedConformanceWitness + 8);
  v58 = sub_2410471C8();
  v56 = *(v58 - 8);
  v16 = MEMORY[0x28223BE20](v58);
  v55 = &v44 - v17;
  v18 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v44 - v19;
  v64 = a7;
  v65 = a8;
  v50 = a1;
  v66 = a1;
  v67 = a2;
  v51 = a2;
  v52 = a3;
  v68 = a3;
  sub_241046E58();
  v21 = MEMORY[0x277D84A98];
  sub_241018810(sub_24101D7E8, v63, MEMORY[0x277D84A98], MEMORY[0x277D837D0], v22, v70);
  v45 = v70[0];
  v46 = v70[1];
  v48 = v13;
  sub_241047068();
  v61 = a7;
  v62 = a8;
  v57 = a8;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F720, &unk_2410492E0);
  v49 = AssociatedConformanceWitness;
  v25 = sub_240FE7380(sub_24101DB90, v60, AssociatedTypeWitness, v23, v21, AssociatedConformanceWitness, MEMORY[0x277D84AC0], v24);
  v26 = *(v18 + 8);
  v26(v20, AssociatedTypeWitness);
  v27 = *(v25 + 16) + 1;
  v28 = 40;
  do
  {
    if (!--v27)
    {
      break;
    }

    v29 = *(v25 + v28);
    v28 += 56;
  }

  while (!v29);
  v30 = v27 != 0;
  sub_241047068();
  v31 = v55;
  MEMORY[0x245CD71B0](AssociatedTypeWitness, v47);
  v32 = (v26)(v20, AssociatedTypeWitness);
  v33 = MEMORY[0x28223BE20](v32);
  v34 = v57;
  *(&v44 - 12) = a7;
  *(&v44 - 11) = v34;
  v35 = v51;
  *(&v44 - 10) = v50;
  *(&v44 - 9) = v35;
  *(&v44 - 8) = v52;
  *(&v44 - 7) = v25;
  *(&v44 - 6) = v53;
  *(&v44 - 40) = v30;
  v36 = v45;
  *(&v44 - 4) = v59;
  *(&v44 - 3) = v36;
  *(&v44 - 2) = v46;
  *(&v44 - 8) = v54;
  MEMORY[0x28223BE20](v33);
  *(&v44 - 4) = a7;
  *(&v44 - 3) = v37;
  *(&v44 - 2) = sub_24101D810;
  *(&v44 - 1) = v38;
  v69 = v49;
  v39 = v58;
  WitnessTable = swift_getWitnessTable();
  v42 = sub_240FE7380(sub_24101DBB0, (&v44 - 6), v39, &type metadata for ArgumentDefinition, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v41);

  (*(v56 + 8))(v31, v39);
  return sub_240FF9C90(v42);
}

uint64_t sub_24101A7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  MEMORY[0x28223BE20](a1);
  (*(v14 + 16))(&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15);
  v16 = sub_241046AF8();
  v18 = v17;

  v19 = sub_2410390E8(v16, v18, a2, a3);
  v21 = v20;
  (*(a6 + 24))(&v31, a1, a5, a6);
  v22 = sub_241018548(v19, v21);

  if (*(v22 + 2))
  {
    v23 = *(v22 + 4);
    v24 = *(v22 + 5);
    v25 = v22[48];
    sub_240FF0D90(v23, v24, v25);

    v26 = sub_241034020(v23, v24, v25);
    v28 = v27;
    result = sub_240FF0D30(v23, v24, v25);
  }

  else
  {

    v26 = 0;
    v28 = 0;
  }

  *a7 = v26;
  a7[1] = v28;
  return result;
}

void *sub_24101A9E0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15)
{
  v149 = a8;
  v146 = a6;
  v153 = a3;
  v133 = a9;
  v20 = *(a7 + 8);
  v141 = *a7;
  v138 = v20;
  v21 = *(a7 + 16);
  v134 = *(a7 + 24);
  v135 = v21;
  v22 = *(a7 + 40);
  v128 = *(a7 + 32);
  v124 = v22;
  LODWORD(v123) = *(a7 + 48);
  v23 = sub_241046E58();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v122 = *(TupleTypeMetadata2 - 8);
  v24 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v125 = &v112 - v25;
  v139 = v23;
  v127 = *(v23 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v121 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v142 = &v112 - v29;
  MEMORY[0x28223BE20](v28);
  v132 = v30;
  v31 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = v32;
  v143 = *(v32 + 16);
  v144 = v32 + 16;
  v143(v31, a2, a14);
  v136 = v31;
  v33 = sub_241046AF8();
  v35 = v34;

  v152 = a4;
  v148 = a5;
  v36 = sub_2410390E8(v33, v35, v153, a4);
  v38 = v37;
  v40 = v39;
  v41 = *(a15 + 24);
  v145 = a2;
  v151 = a14;
  v137 = a15;
  result = v41(&v157, a2, a14, a15);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v146 + 16) > a1)
  {
    v129 = v36;
    v130 = v40;
    v131 = v38;
    v43 = a12;
    v140 = a11;
    v147 = v157;
    v44 = v146 + 56 * a1;
    v45 = *(v44 + 32);
    v46 = *(v44 + 40);
    v47 = *(v44 + 48);
    v48 = *(v44 + 56);
    v50 = *(v44 + 64);
    v49 = *(v44 + 72);
    v51 = v45;
    v52 = v46;
    v53 = v47;
    v54 = *(v44 + 80);
    v55 = v48;
    v56 = v50;
    v57 = v49;
    v58 = v54;
    if (!v46)
    {
      v59 = v47;
      v60 = v48;
      v61 = v45;
      v62 = v54;
      sub_240FE088C(a7, &v157, &qword_27E51F720, &unk_2410492E0);
      v45 = v61;
      v47 = v59;
      v48 = v60;
      v54 = v62;
      v51 = v141;
      v52 = v138;
      v55 = v134;
      v53 = v135;
      v56 = v128;
      v57 = v124;
      v58 = v123;
    }

    v134 = v57;
    v135 = v55;
    v138 = v56;
    LODWORD(v128) = v58;
    v123 = v53;
    v124 = v51;
    v63 = a10;
    v64 = v151;
    v65 = v142;
    v141 = a10;
    if ((v149 & 1) == 0)
    {
      sub_24101D8DC(v45, v46, v47, v48, v50, v49);
      v78 = *(v150 + 48);

      v79 = v148;
      goto LABEL_17;
    }

    v117 = v49;
    v118 = v46;
    v112 = v45;
    v113 = v47;
    v114 = v48;
    v115 = v54;
    v116 = v50;
    v120 = v52;
    v146 = a12;
    v143(v142, v145, v151);
    v66 = v150;
    (*(v150 + 56))(v65, 0, 1, v64);
    v67 = v127;
    v68 = *(TupleTypeMetadata2 + 48);
    v69 = v65;
    v70 = *(v127 + 16);
    v71 = v125;
    v72 = v139;
    v70(v125, v69, v139);
    v119 = v68;
    v70(&v71[v68], a10, v72);
    v73 = v64;
    v74 = *(v66 + 48);
    if (v74(v71, 1, v73) == 1)
    {
      sub_24101D8DC(v112, v118, v113, v114, v116, v117);
      v75 = *(v67 + 8);
      v76 = v139;
      v75(v142, v139);
      v77 = v74(&v71[v119], 1, v73);
      v78 = v74;
      v64 = v73;
      if (v77 == 1)
      {
        v75(v71, v76);
        v79 = v148;
        v52 = v120;
        goto LABEL_14;
      }
    }

    else
    {
      v80 = v121;
      v70(v121, v71, v139);
      v81 = v119;
      v82 = v74(&v71[v119], 1, v73);
      v78 = v74;
      v83 = v118;
      if (v82 != 1)
      {
        TupleTypeMetadata2 = v78;
        v84 = v150;
        v85 = v136;
        (*(v150 + 32))(v136, &v71[v81], v73);
        sub_24101D8DC(v112, v83, v113, v114, v116, v117);
        v86 = sub_241046AB8();
        v64 = v151;
        v87 = v86;
        v88 = *(v84 + 8);
        v88(v85, v151);
        v89 = *(v127 + 8);
        v90 = v139;
        v89(v142, v139);
        v88(v80, v64);
        v78 = TupleTypeMetadata2;
        v89(v125, v90);
        v79 = v148;
        v52 = v120;
        if ((v87 & 1) == 0)
        {
          v140 = 0;
          v43 = 0;
          goto LABEL_16;
        }

LABEL_14:
        v43 = v146;

LABEL_16:
        v63 = v141;
LABEL_17:
        LODWORD(v142) = a13;
        LODWORD(v139) = v78(v63, 1, v64);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F330, &unk_241047D30);
        v91 = swift_allocObject();
        *(v91 + 16) = xmmword_241047BF0;
        v92 = v152;
        *(v91 + 32) = v153;
        *(v91 + 40) = v92;
        *(v91 + 48) = v79;
        v146 = v43;
        if (v52)
        {
          v93 = v134;
          if (v134)
          {

            v94 = v135;

            v95 = v52;
            v96 = v94;
            v97 = v93;
            v99 = v123;
            v98 = v124;
            goto LABEL_24;
          }

          v96 = v135;

          v95 = v52;
          v99 = v123;
          v98 = v124;
        }

        else
        {
          v98 = 0;
          v99 = 0;
          v95 = 0xE000000000000000;
          v96 = 0xE000000000000000;
        }

        if (!v52)
        {
          v101 = 0;
          v100 = 0;
          v97 = 0xE000000000000000;
          goto LABEL_26;
        }

        v138 = 0;
        v97 = 0xE000000000000000;
LABEL_24:

        v100 = v128;
        v101 = v138;
LABEL_26:
        *&v157 = v139 != 1;
        *(&v157 + 1) = v140;
        *&v158 = v146;
        *(&v158 + 1) = v91;
        *&v159 = MEMORY[0x277D84F90];
        BYTE8(v159) = (v149 & 1) == 0;
        *&v160 = v98;
        *(&v160 + 1) = v95;
        *&v161 = v99;
        *(&v161 + 1) = v96;
        *&v162 = v101;
        *(&v162 + 1) = v97;
        LOBYTE(v163) = v100;
        v164 = 0;
        v165 = 0xE000000000000000;
        v156 = v147;
        v154[4] = v161;
        v154[5] = v162;
        v154[6] = v163;
        v155 = 0xE000000000000000;
        v154[0] = v157;
        v154[1] = v158;
        v154[2] = v159;
        v154[3] = v160;
        v102 = v136;
        v103 = v151;
        v143(v136, v145, v151);
        v104 = v150;
        v105 = (*(v150 + 80) + 56) & ~*(v150 + 80);
        v106 = v105 + v132;
        v107 = swift_allocObject();
        v108 = v137;
        *(v107 + 2) = v103;
        *(v107 + 3) = v108;
        v109 = v152;
        v110 = v153;
        *(v107 + 4) = v153;
        *(v107 + 5) = v109;
        v111 = v148;
        *(v107 + 6) = v148;
        (*(v104 + 32))(&v107[v105], v102, v103);
        v107[v106] = v142;

        sub_24101B3CC(&v156, v110, v109, v111, v129, v131, v154, v133, 0, v141, sub_24101DBCC, v107, 0, v103);

        sub_24101D4F4(&v157);
      }

      sub_24101D8DC(v112, v118, v113, v114, v116, v117);
      (*(v127 + 8))(v142, v139);
      (*(v150 + 8))(v80, v73);
      v64 = v73;
    }

    (*(v122 + 8))(v71, TupleTypeMetadata2);
    v140 = 0;
    v43 = 0;
    v79 = v148;
    v63 = v141;
    v52 = v120;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_24101B3CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, __int128 *a7@<X7>, uint64_t a8@<X8>, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14)
{
  v41 = a5;
  v42 = a6;
  v47 = a3;
  v48 = a4;
  v45 = a2;
  v49 = a12;
  v44 = a9;
  v43 = a13;
  v46 = a11;
  v40 = a10;
  v17 = sub_241046E58();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v40 - v20;
  v22 = a7[4];
  v23 = a7[6];
  v56 = a7[5];
  v57 = v23;
  v24 = a7[1];
  v51 = *a7;
  v25 = a7[2];
  v26 = a7[3];
  v52 = v24;
  v53 = v25;
  v27 = *a1;
  v58 = *(a7 + 14);
  v54 = v26;
  v55 = v22;
  v50[0] = v27;
  v42 = sub_241018548(v41, v42);
  (*(v18 + 16))(v21, v40, v17);
  v28 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = a14;
  (*(v18 + 32))(v29 + v28, v21, v17);
  v30 = v54;
  *(a8 + 72) = v55;
  v31 = v57;
  *(a8 + 88) = v56;
  *(a8 + 104) = v31;
  *(a8 + 8) = v51;
  v32 = v53;
  *(a8 + 24) = v52;
  *(a8 + 40) = v32;
  v33 = (v29 + ((v19 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  v35 = v47;
  v34 = v48;
  *v33 = v45;
  v33[1] = v35;
  v33[2] = v34;
  LOBYTE(v21) = v43 & 1;
  LOBYTE(v50[0]) = v43 & 1;
  *a8 = v42;
  v36 = v58;
  *(a8 + 56) = v30;
  *(a8 + 128) = 0;
  *(a8 + 136) = 0;
  *(a8 + 120) = v36;
  *(a8 + 144) = 4;
  *(a8 + 145) = v44;
  *(a8 + 146) = *&v59[7];
  *(a8 + 150) = v60;
  v37 = v46;
  v38 = v49;
  *(a8 + 152) = v46;
  *(a8 + 160) = v38;
  *(a8 + 168) = v21;
  *(a8 + 169) = *v59;
  *(a8 + 172) = *&v59[3];
  *(a8 + 176) = sub_24101D548;
  *(a8 + 184) = v29;
  sub_241006C44(&v51, v50);

  return sub_24101D604(v37, v38);
}

uint64_t Flag<A>.init(wrappedValue:exclusivity:help:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20 = a5;
  v11 = sub_241046E58();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  LOBYTE(a2) = *a2;
  v14 = *(a3 + 32);
  v15 = *(a3 + 40);
  v16 = *(a3 + 48);
  v17 = *(a4 - 8);
  (*(v17 + 16))(&v20 - v12, a1, a4);
  (*(v17 + 56))(v13, 0, 1, a4);
  v25 = a2;
  v18 = *a3;
  v21[1] = *(a3 + 16);
  v21[0] = v18;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  sub_24101A16C(v13, &v25, v21, a4, v20, a6);
  return (*(v17 + 8))(a1, a4);
}

uint64_t Flag<A>.init(exclusivity:help:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_241046E58();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  LOBYTE(a1) = *a1;
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  (*(*(a3 - 8) + 56))(&v18 - v11, 1, 1, a3);
  v23 = a1;
  v16 = *a2;
  v19[1] = *(a2 + 16);
  v19[0] = v16;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  return sub_24101A16C(v12, &v23, v19, a3, a4, a5);
}

uint64_t Flag.init<A>(exclusivity:help:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_241046E58();
  v13 = type metadata accessor for Parsed(0, v10, v11, v12);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v21 - v15);
  LOBYTE(a1) = *a1;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  v18 = *(a2 + 16);
  *(v17 + 32) = *a2;
  *(v17 + 48) = v18;
  *(v17 + 64) = *(a2 + 32);
  *(v17 + 80) = *(a2 + 48);
  *(v17 + 81) = a1;
  sub_24102B87C(sub_24101BDE8, v17, v10, v19, v16);
  return (*(v14 + 32))(a5, v16, v13);
}

uint64_t sub_24101BA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v45 = a5;
  v44 = a4;
  v41 = a2;
  v42 = a3;
  v40 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v38 = *(AssociatedConformanceWitness + 8);
  v48 = sub_2410471C8();
  v46 = *(v48 - 8);
  v11 = MEMORY[0x28223BE20](v48);
  v43 = &v37 - v12;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  sub_241047068();
  v50 = a6;
  v51 = a7;
  v47 = a7;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F720, &unk_2410492E0);
  v39 = AssociatedConformanceWitness;
  v18 = sub_240FE7380(sub_24101D680, v49, AssociatedTypeWitness, v16, MEMORY[0x277D84A98], AssociatedConformanceWitness, MEMORY[0x277D84AC0], v17);
  v19 = *(v13 + 8);
  v19(v15, AssociatedTypeWitness);
  v20 = *(v18 + 16) + 1;
  v21 = 40;
  do
  {
    if (!--v20)
    {
      break;
    }

    v22 = *(v18 + v21);
    v21 += 56;
  }

  while (!v22);
  v23 = v20 != 0;
  sub_241047068();
  v24 = v43;
  MEMORY[0x245CD71B0](AssociatedTypeWitness, v38);
  v25 = (v19)(v15, AssociatedTypeWitness);
  v26 = MEMORY[0x28223BE20](v25);
  v27 = v47;
  *(&v37 - 10) = a6;
  *(&v37 - 9) = v27;
  v28 = v41;
  *(&v37 - 8) = v40;
  *(&v37 - 7) = v28;
  *(&v37 - 6) = v42;
  *(&v37 - 40) = v23;
  v29 = v44;
  *(&v37 - 4) = v18;
  *(&v37 - 3) = v29;
  *(&v37 - 16) = v45;
  MEMORY[0x28223BE20](v26);
  *(&v37 - 4) = a6;
  *(&v37 - 3) = v30;
  *(&v37 - 2) = sub_24101D6C0;
  *(&v37 - 1) = v31;
  v52 = v39;
  v32 = v48;
  WitnessTable = swift_getWitnessTable();
  v35 = sub_240FE7380(sub_24101DBB0, (&v37 - 6), v32, &type metadata for ArgumentDefinition, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v34);

  (*(v46 + 8))(v24, v32);
  return sub_240FF9C90(v35);
}

void *sub_24101BDF8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  v65 = a7;
  v66 = a1;
  v93 = a6;
  v83 = a9;
  v17 = *a8;
  v67 = a8[1];
  v68 = v17;
  v18 = a8[3];
  v87 = a8[2];
  v88 = v18;
  v19 = a8[4];
  v85 = a8[5];
  v86 = v19;
  v69 = *(a8 + 48);
  v84 = sub_241046E58();
  v82 = *(v84 - 8);
  v20 = MEMORY[0x28223BE20](v84);
  v91 = &v64 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v24;
  v25 = *(v24 + 16);
  v73 = v24 + 16;
  v74 = v22;
  v72 = v25;
  v25(v23, a2, a11);
  v75 = v23;
  v26 = sub_241046AF8();
  v28 = v27;

  v92 = a3;
  v29 = a3;
  v89 = a4;
  v30 = a5;
  v76 = sub_2410390E8(v26, v28, v29, a4);
  v77 = v31;
  v33 = v32;
  v34 = *(a12 + 24);
  v80 = a2;
  v81 = a12;
  v71 = a11;
  result = v34(&v97, a2, a11, a12);
  v79 = v33;
  v90 = v97;
  if ((v93 & 1) == 0)
  {
    goto LABEL_6;
  }

  if ((v66 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v65 + 16) > v66)
  {
    v36 = v65 + 56 * v66;
    v37 = *(v36 + 40);
    if (v37)
    {
      v38 = *(v36 + 80);
      v39 = *(v36 + 72);
      v40 = *(v36 + 48);
      v41 = *(v36 + 56);
      v86 = *(v36 + 64);
      v87 = v40;
      v68 = *(v36 + 32);
      v85 = v39;

      v88 = v41;

      v42 = v30;
      v43 = v89;
      goto LABEL_7;
    }

LABEL_6:
    sub_240FE088C(a8, &v97, &qword_27E51F720, &unk_2410492E0);
    v42 = v30;
    v43 = v89;
    v38 = v69;
    v37 = v67;
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F330, &unk_241047D30);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_241047BF0;
    *(v44 + 32) = v92;
    *(v44 + 40) = v43;
    *(v44 + 48) = v42;
    v45 = v88;
    v70 = v42;
    v69 = a10;
    if (v37)
    {
      v46 = v38;
      v47 = v85;
      if (v85)
      {

        v48 = v45;
        v49 = v47;
        v50 = v68;
        v38 = v46;
        v51 = v37;
        goto LABEL_14;
      }

      v48 = v45;
      v50 = v68;
      v38 = v46;
      v51 = v37;
    }

    else
    {
      v50 = 0;
      v87 = 0;
      v51 = 0xE000000000000000;
      v48 = 0xE000000000000000;
    }

    if (!v37)
    {
      v52 = 0;
      v38 = 0;
      v49 = 0xE000000000000000;
      goto LABEL_16;
    }

    v86 = 0;
    v49 = 0xE000000000000000;
LABEL_14:

    v52 = v86;
LABEL_16:
    v97 = 1uLL;
    *&v98 = 0;
    *(&v98 + 1) = v44;
    *&v99 = MEMORY[0x277D84F90];
    BYTE8(v99) = (v93 & 1) == 0;
    *&v100 = v50;
    *(&v100 + 1) = v51;
    *&v101 = v87;
    *(&v101 + 1) = v48;
    *&v102 = v52;
    *(&v102 + 1) = v49;
    LOBYTE(v103) = v38;
    v104 = 0;
    v105 = 0xE000000000000000;
    v96 = v90;
    v94[4] = v101;
    v94[5] = v102;
    v94[6] = v103;
    v95 = 0xE000000000000000;
    v94[0] = 1uLL;
    v94[1] = v98;
    v94[2] = v99;
    v94[3] = v100;
    v53 = v78;
    v54 = v71;
    (*(v78 + 56))(v91, 1, 1, v71);
    v55 = v75;
    v72(v75, v80, v54);
    v56 = (*(v53 + 80) + 56) & ~*(v53 + 80);
    v57 = v56 + v74;
    v58 = swift_allocObject();
    v59 = v81;
    *(v58 + 2) = v54;
    *(v58 + 3) = v59;
    v60 = v92;
    v61 = v89;
    *(v58 + 4) = v92;
    *(v58 + 5) = v61;
    v62 = v70;
    *(v58 + 6) = v70;
    (*(v53 + 32))(&v58[v56], v55, v54);
    v58[v57] = v69;

    v63 = v91;
    sub_24101B3CC(&v96, v60, v61, v62, v76, v79, v94, v83, 0, v91, sub_24101D700, v58, 0, v54);

    (*(v82 + 8))(v63, v84);
    sub_24101D4F4(&v97);
  }

  __break(1u);
  return result;
}

double sub_24101C3C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v11 = *(a2 + 16);
  *(v10 + 32) = *a2;
  *(v10 + 48) = v11;
  *(v10 + 64) = *(a2 + 32);
  *(v10 + 80) = *(a2 + 48);
  *(v10 + 88) = a1;
  v12 = sub_241046DA8();
  sub_24102B87C(sub_24101D120, v10, v12, v13, &v21);
  v19 = v21;
  v20 = v22;
  v16 = type metadata accessor for Parsed(0, v12, v14, v15);
  (*(*(v16 - 8) + 32))(&v23, &v19, v16);
  v17 = v24;
  result = *&v23;
  *a5 = v23;
  *(a5 + 16) = v17;
  return result;
}

uint64_t sub_24101C4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v45 = a5;
  v42 = a3;
  v43 = a4;
  v40 = a1;
  v41 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v38 = *(AssociatedConformanceWitness + 8);
  v48 = sub_2410471C8();
  v46 = *(v48 - 8);
  v11 = MEMORY[0x28223BE20](v48);
  v44 = &v37 - v12;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  sub_241047068();
  v50 = a6;
  v51 = a7;
  v47 = a7;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F720, &unk_2410492E0);
  v39 = AssociatedConformanceWitness;
  v18 = sub_240FE7380(sub_24101DB90, v49, AssociatedTypeWitness, v16, MEMORY[0x277D84A98], AssociatedConformanceWitness, MEMORY[0x277D84AC0], v17);
  v19 = *(v13 + 8);
  v19(v15, AssociatedTypeWitness);
  v20 = *(v18 + 16) + 1;
  v21 = 40;
  do
  {
    if (!--v20)
    {
      break;
    }

    v22 = *(v18 + v21);
    v21 += 56;
  }

  while (!v22);
  v23 = v20 != 0;
  sub_241047068();
  v24 = v44;
  MEMORY[0x245CD71B0](AssociatedTypeWitness, v38);
  v25 = (v19)(v15, AssociatedTypeWitness);
  v26 = MEMORY[0x28223BE20](v25);
  v27 = v47;
  *(&v37 - 10) = a6;
  *(&v37 - 9) = v27;
  v28 = v41;
  *(&v37 - 8) = v40;
  *(&v37 - 7) = v28;
  v29 = v43;
  *(&v37 - 6) = v42;
  *(&v37 - 40) = v23;
  *(&v37 - 4) = v18;
  *(&v37 - 3) = v29;
  *(&v37 - 2) = v45;
  MEMORY[0x28223BE20](v26);
  *(&v37 - 4) = a6;
  *(&v37 - 3) = v30;
  *(&v37 - 2) = sub_24101D130;
  *(&v37 - 1) = v31;
  v52 = v39;
  v32 = v48;
  WitnessTable = swift_getWitnessTable();
  v35 = sub_240FE7380(sub_24101D170, (&v37 - 6), v32, &type metadata for ArgumentDefinition, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v34);

  (*(v46 + 8))(v24, v32);
  return sub_240FF9C90(v35);
}

void *sub_24101C888@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v65 = a7;
  v66 = a1;
  v88 = a3;
  v80 = a9;
  v17 = *a8;
  v67 = a8[1];
  v18 = a8[3];
  v84 = a8[2];
  v85 = v17;
  v86 = v18;
  v19 = a8[4];
  v82 = a8[5];
  v83 = v19;
  v81 = *(a8 + 48);
  MEMORY[0x28223BE20](a1);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v22;
  v23 = *(v22 + 16);
  v72 = v22 + 16;
  v73 = v20;
  v71 = v23;
  (v23)(v21);
  v75 = v21;
  v24 = sub_241046AF8();
  v26 = v25;

  v27 = v24;
  v87 = a4;
  v28 = a5;
  v29 = sub_2410390E8(v27, v26, v88, a4);
  v76 = a2;
  v77 = v29;
  v31 = v30;
  v79 = v32;
  v33 = *(a12 + 24);
  v70 = a11;
  v74 = a12;
  result = v33(&v93, a2, a11, a12);
  v35 = v93;
  v36 = a6;
  if ((a6 & 1) == 0)
  {
    goto LABEL_6;
  }

  if ((v66 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v65 + 16) > v66)
  {
    v37 = v65 + 56 * v66;
    v38 = *(v37 + 40);
    if (v38)
    {
      v81 = *(v37 + 80);
      v39 = *(v37 + 72);
      v40 = *(v37 + 48);
      v41 = *(v37 + 56);
      v83 = *(v37 + 64);
      v84 = v40;
      v85 = *(v37 + 32);
      v82 = v39;

      v86 = v41;

      v42 = v28;
      goto LABEL_7;
    }

LABEL_6:
    sub_240FE088C(a8, &v93, &qword_27E51F720, &unk_2410492E0);
    v42 = v28;
    v38 = v67;
LABEL_7:
    v43 = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F330, &unk_241047D30);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_241047BF0;
    v45 = v87;
    *(v44 + 32) = v88;
    *(v44 + 40) = v45;
    *(v44 + 48) = v42;
    v46 = v86;
    v68 = v35;
    v69 = v31;
    if (v38)
    {
      v47 = v38;
      v48 = v82;
      if (v82)
      {

        v49 = v47;
        v50 = v48;
        v43 = a10;
        v51 = v49;
        goto LABEL_14;
      }

      v38 = v47;

      v52 = v47;
      v43 = a10;
      v51 = v52;
    }

    else
    {
      v84 = 0;
      v85 = 0;
      v51 = 0xE000000000000000;
      v46 = 0xE000000000000000;
    }

    if (!v38)
    {
      v53 = 0;
      v54 = 0;
      v50 = 0xE000000000000000;
      goto LABEL_16;
    }

    v83 = 0;
    v50 = 0xE000000000000000;
LABEL_14:

    v53 = v83;
    v54 = v81;
LABEL_16:
    v93 = 1uLL;
    *&v94 = 0;
    *(&v94 + 1) = v44;
    *&v95 = MEMORY[0x277D84F90];
    BYTE8(v95) = (v36 & 1) == 0;
    *&v96 = v85;
    *(&v96 + 1) = v51;
    *&v97 = v84;
    *(&v97 + 1) = v46;
    *&v98 = v53;
    *(&v98 + 1) = v50;
    LOBYTE(v99) = v54;
    v100 = 0;
    v101 = 0xE000000000000000;
    v92 = v68;
    v90[4] = v97;
    v90[5] = v98;
    v90[6] = v99;
    v91 = 0xE000000000000000;
    v90[0] = 1uLL;
    v90[1] = v94;
    v90[2] = v95;
    v90[3] = v96;
    v89 = v43;
    v55 = v75;
    v56 = v70;
    v71(v75, v76, v70);
    v57 = v78;
    v58 = (*(v78 + 80) + 56) & ~*(v78 + 80);
    v59 = swift_allocObject();
    v60 = v74;
    *(v59 + 2) = v56;
    *(v59 + 3) = v60;
    v61 = v87;
    v62 = v88;
    *(v59 + 4) = v88;
    *(v59 + 5) = v61;
    *(v59 + 6) = v42;
    (*(v57 + 32))(&v59[v58], v55, v56);
    v63 = sub_241046DA8();

    sub_24101B3CC(&v92, v62, v61, v42, v77, v69, v90, v80, 0, &v89, sub_24101D400, v59, 0, v63);

    sub_24101D4F4(&v93);
  }

  __break(1u);
  return result;
}

uint64_t sub_24101CD7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_241046DA8();
  return sub_241046D78();
}

double Flag.init<A>(wrappedValue:help:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(a2 + 48);
  v7 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v7;
  v10[2] = *(a2 + 32);
  v11 = v6;
  sub_24101C3C8(a1, v10, a3, a4, &v12);
  v8 = v13;
  result = *&v12;
  *a5 = v12;
  *(a5 + 16) = v8;
  return result;
}

double Flag.init<A>(help:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v9[2] = *(a1 + 32);
  v10 = v5;
  sub_24101C3C8(0, v9, a2, a3, &v11);
  v7 = v12;
  result = *&v11;
  *a4 = v11;
  *(a4 + 16) = v7;
  return result;
}

uint64_t sub_24101CF08(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24101CF44(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24101CF84()
{
  result = qword_27E51F790;
  if (!qword_27E51F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F790);
  }

  return result;
}

unint64_t sub_24101CFDC()
{
  result = qword_27E51F798;
  if (!qword_27E51F798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F798);
  }

  return result;
}

unint64_t sub_24101D074()
{
  result = qword_27E51F7A0;
  if (!qword_27E51F7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F7A0);
  }

  return result;
}

unint64_t sub_24101D0CC()
{
  result = qword_27E51F7A8;
  if (!qword_27E51F7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F7A8);
  }

  return result;
}

uint64_t sub_24101D188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a4;
  v22 = a6;
  v23 = a2;
  v11 = sub_241046E58();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  v16 = *(a7 - 8);
  MEMORY[0x28223BE20](v13);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a3, v11);
  if ((*(v16 + 48))(v15, 1, a7) == 1)
  {
    return (*(v12 + 8))(v15, v11);
  }

  (*(v16 + 32))(v18, v15, a7);
  v27[3] = a7;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v27);
  (*(v16 + 16))(boxed_opaque_existential_1Tm, v18, a7);
  sub_240FE088C(v27, v25, &qword_27E51F328, &qword_241048720);
  v24[0] = v21;
  v24[1] = a5;
  v24[2] = v22;
  v25[4] = a1;
  v26 = 1;

  sub_24102F0DC(v24);
  sub_240FFBF78(v24);
  (*(v16 + 8))(v18, a7);
  return sub_24101D60C(v27);
}

uint64_t sub_24101D400(uint64_t a1)
{
  v10 = *(v1 + 1);
  v3 = v1[2];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1 + ((*(*(v10 - 8) + 80) + 56) & ~*(*(v10 - 8) + 80));
  v8 = sub_2410469F8();
  v12 = v10;
  v13 = v7;
  sub_24102EAD4(v4, v5, v6, a1, v8, sub_24101D674, v11, v3);
}

uint64_t sub_24101D548(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(sub_241046E58() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = (v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_24101D188(a1, a2, v2 + v7, *v8, v8[1], v8[2], v5);
}

uint64_t sub_24101D60C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F328, &qword_241048720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24101D718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(sub_241046E58() - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = v3 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *(v11 + 49);

  return sub_24101A35C(a1, a2, a3, v3 + v10, v11, v12, v7, v8);
}

uint64_t sub_24101D860(char *a1)
{
  v3 = *(v1 + 32);
  v4 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

void sub_24101D8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t objectdestroy_54Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_24101D9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = v5[2];
  v9 = v5[3];
  v10 = v5[4];
  v11 = v5[5];
  v12 = v5[6];
  v13 = v5 + ((*(*(v8 - 8) + 80) + 56) & ~*(*(v8 - 8) + 80));
  v15 = *(v13 + *(*(v8 - 8) + 64));
  return sub_24101E5DC(v10, v11, v12, v13, a1, a5, &v15, v8, *(v9 + 16));
}

uint64_t objectdestroy_66Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_63Tm()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_24101DC78(__int128 *a1)
{
  v2 = a1[3];
  v51 = a1[2];
  v52 = v2;
  v3 = a1[7];
  v55 = a1[6];
  v56 = v3;
  v4 = a1[5];
  v53 = a1[4];
  v54 = v4;
  v5 = a1[11];
  v59 = a1[10];
  v60 = v5;
  v6 = a1[9];
  v57 = a1[8];
  v58 = v6;
  v7 = a1[1];
  v49 = *a1;
  v50 = v7;
  v8 = *v1;
  v45 = *(v8 + 16);
  sub_240FE0990(&v49, v48);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v10 = *(v8 + 16);
    v9 = *(v8 + 24);
    if (v10 >= v9 >> 1)
    {
      v8 = sub_240FE3A5C((v9 > 1), v10 + 1, 1, v8);
    }

    *(v8 + 16) = v10 + 1;
    v11 = (v8 + 192 * v10);
    v12 = v49;
    v13 = v50;
    v14 = v52;
    *(v11 + 4) = v51;
    *(v11 + 5) = v14;
    *(v11 + 2) = v12;
    *(v11 + 3) = v13;
    v15 = v53;
    v16 = v54;
    v17 = v56;
    *(v11 + 8) = v55;
    *(v11 + 9) = v17;
    *(v11 + 6) = v15;
    *(v11 + 7) = v16;
    v18 = v57;
    v19 = v58;
    v20 = v60;
    *(v11 + 12) = v59;
    *(v11 + 13) = v20;
    *(v11 + 10) = v18;
    *(v11 + 11) = v19;
    *v47 = v8;
    v21 = v49;
    if (v49 >= 2)
    {
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    v46 = *(v21 + 16);
    if (!v46)
    {
    }

    v22 = 0;
    v23 = (v21 + 48);
    while (v22 < *(v21 + 16))
    {
      v26 = *(v23 - 2);
      v25 = *(v23 - 1);
      v27 = *v23;
      if ((*v23 & 0xC0) == 0x40)
      {
        v28 = 64;
      }

      else
      {
        v28 = *v23;
      }

      v29 = *(v47[1] + 16);
      sub_240FF0D90(*(v23 - 2), *(v23 - 1), *v23);
      if (v29)
      {
        sub_240FF0D90(v26, v25, v27);
        sub_24102FC34(v26, v25, v28);
        v8 = v30;
        sub_240FF0D30(v26, v25, v27);
        if (v8)
        {
          sub_240FF0D30(v26, v25, v27);
          goto LABEL_11;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48[0] = v47[1];
      v8 = v48[0];
      v32 = sub_24102FC34(v26, v25, v28);
      v34 = *(v8 + 16);
      v35 = (v33 & 1) == 0;
      v36 = __OFADD__(v34, v35);
      v37 = v34 + v35;
      if (v36)
      {
        goto LABEL_31;
      }

      v38 = v33;
      if (*(v8 + 24) < v37)
      {
        sub_241030478(v37, isUniquelyReferenced_nonNull_native);
        v8 = v48[0];
        v32 = sub_24102FC34(v26, v25, v28);
        if ((v38 & 1) != (v39 & 1))
        {
          result = sub_241047518();
          __break(1u);
          return result;
        }

LABEL_24:
        if ((v38 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_9;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_24;
      }

      v8 = v48;
      v43 = v32;
      sub_24102FE50();
      v32 = v43;
      if ((v38 & 1) == 0)
      {
LABEL_25:
        v24 = v48[0];
        *(v48[0] + 8 * (v32 >> 6) + 64) |= 1 << v32;
        v40 = v24[6] + 24 * v32;
        *v40 = v26;
        *(v40 + 8) = v25;
        *(v40 + 16) = v28;
        *(v24[7] + 8 * v32) = v45;
        v41 = v24[2];
        v36 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v36)
        {
          goto LABEL_32;
        }

        v24[2] = v42;
        goto LABEL_10;
      }

LABEL_9:
      v8 = v32;
      sub_240FF0D30(v26, v25, v27);
      v24 = v48[0];
      *(*(v48[0] + 56) + 8 * v8) = v45;
LABEL_10:
      v47[1] = v24;
LABEL_11:
      ++v22;
      v23 += 24;
      if (v46 == v22)
      {
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    v8 = sub_240FE3A5C(0, v45 + 1, 1, v8);
  }
}

uint64_t sub_24101DFC8(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  sub_2410475A8();
  if (a3 & 0x100) != 0 || (MEMORY[0x245CD7AE0](1), MEMORY[0x245CD7AE0](a1), (a3))
  {
    v8 = 0;
  }

  else
  {
    MEMORY[0x245CD7AE0](1);
    v8 = a2;
  }

  MEMORY[0x245CD7AE0](v8);
  v10 = sub_2410475E8();
  v11 = -1 << *(a4 + 32);
  v12 = v10 & ~v11;
  if ((*(a4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    do
    {
      v14 = *(a4 + 48) + 24 * v12;
      if (*(v14 + 17))
      {
        if ((a3 & 0x100) != 0)
        {
          return 1;
        }
      }

      else if ((a3 & 0x100) == 0 && *v14 == a1)
      {
        if (*(v14 + 16))
        {
          if (a3)
          {
            return 1;
          }
        }

        else if ((a3 & 1) == 0 && *(v14 + 8) == a2)
        {
          return 1;
        }
      }

      v12 = (v12 + 1) & v13;
    }

    while (((*(a4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return 0;
}

uint64_t sub_24101E114(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6, char a7)
{
  v8 = v7;
  v14 = a1;
  v15 = *a6;
  if (!*(*a6 + 16))
  {
    goto LABEL_15;
  }

  v17 = sub_24102FB5C(a1, a2, a3);
  if ((v18 & 1) == 0)
  {
    goto LABEL_15;
  }

  v43 = a7;
  v56 = v14;
  v44 = a4;
  sub_240FFC198(*(v15 + 56) + 72 * v17, &v52);
  v19 = *(&v54 + 1);
  v20 = *(*(&v54 + 1) + 16);
  if (v20)
  {
    v41 = v7;
    v21 = sub_240FE7168(v20, 0);
    v22 = sub_241024D18(&v47, (v21 + 4), v20, v19);
    v23 = v47;
    v8 = v48;
    v42 = v22;

    sub_241007D74(v23);
    if (v42 != v20)
    {
      __break(1u);
      goto LABEL_31;
    }

    v8 = v41;
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  LOBYTE(a4) = v44;
  *&v47 = v21;

  sub_241023FC4(&v47);
  if (v8)
  {
LABEL_31:
    MEMORY[0x245CD7E80](v8);

    __break(1u);
    return result;
  }

  sub_240FFBF78(&v52);
  v24 = *(v47 + 16);

  if (!v24)
  {
    v14 = v56;
LABEL_15:
    *(&v48 + 1) = MEMORY[0x277D839B0];
    LOBYTE(v47) = a4 & 1;
    sub_24102555C(&v47, v53 + 8);
    *&v52 = v14;
    *(&v52 + 1) = a2;
    *&v53[0] = a3;
    *(&v54 + 1) = a5;
    v55 = 1;

    sub_24102F0DC(&v52);
    sub_240FFBF78(&v52);
    v28 = &v47;
    return sub_240FE07E8(v28, &qword_27E51F328, &qword_241048720);
  }

  if (v43)
  {
    v14 = v56;
    if (v43 == 1)
    {
      v25 = MEMORY[0x277D839B0];
      if (*(v15 + 16) && (v26 = sub_24102FB5C(v56, a2, a3), (v27 & 1) != 0))
      {
        sub_240FFC198(*(v15 + 56) + 72 * v26, &v47);
        v53[1] = v49;
        v54 = v50;
        v55 = v51;
        v52 = v47;
        v53[0] = v48;
      }

      else
      {
        BYTE8(v53[0]) = v44 & 1;
        *&v52 = v14;
        *(&v52 + 1) = a2;
        *&v53[0] = a3;
        *&v54 = v25;
        *(&v54 + 1) = MEMORY[0x277D84FA0];
        v55 = 1;
      }

      sub_24102555C(v53 + 8, &v47);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F328, &qword_241048720);
      v38 = swift_dynamicCast();
      v39 = v45[0];
      if (!v38)
      {
        v39 = v44;
      }

      *(&v48 + 1) = v25;
      LOBYTE(v47) = v39 & 1;
      sub_240FFC128(&v47, v53 + 8);

      sub_24102EFE4(v40);
      sub_24102F0DC(&v52);
      return sub_240FFBF78(&v52);
    }

    goto LABEL_15;
  }

  result = v56;
  if (*(v15 + 16))
  {
    result = sub_24102FB5C(v56, a2, a3);
    if (v30)
    {
      sub_240FFC198(*(v15 + 56) + 72 * result, &v52);
      sub_24102555C(v53 + 8, &v47);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F328, &qword_241048720);
      v31 = MEMORY[0x277D839B0];
      if (swift_dynamicCast() & 1) == 0 || v45[0] == 2 || ((v45[0] ^ v44))
      {
        v32 = *(&v54 + 1);
        v33 = a6[1];
        sub_240FDEE00();
        swift_allocError();
        *v34 = v32;
        *(v34 + 8) = a5;
        *(v34 + 16) = v33;
        v35 = v50;
        v36 = v49;
        v37 = v47;
        *(v34 + 40) = v48;
        *(v34 + 24) = v37;
        *(v34 + 56) = v36;
        *(v34 + 72) = v35;
        *(v34 + 80) = 10;
        swift_willThrow();

        return sub_240FFBF78(&v52);
      }

      v46 = v31;
      v45[0] = v44 & 1;
      sub_24102555C(v45, &v48 + 8);
      *&v47 = v56;
      *(&v47 + 1) = a2;
      *&v48 = a3;
      *(&v50 + 1) = a5;
      v51 = 1;

      sub_24102F0DC(&v47);
      sub_240FFBF78(&v47);
      sub_240FFBF78(&v52);
      v28 = v45;
      return sub_240FE07E8(v28, &qword_27E51F328, &qword_241048720);
    }
  }

  return result;
}

uint64_t sub_24101E5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, unsigned __int8 *a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v101 = a4;
  v17 = a1;
  v90 = *(a8 - 8);
  MEMORY[0x28223BE20](a1);
  v81 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_241046E58();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v83 = *(TupleTypeMetadata2 - 8);
  v20 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v84 = &v73 - v21;
  v89 = v19;
  v88 = *(v19 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v82 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v85 = &v73 - v25;
  MEMORY[0x28223BE20](v24);
  v87 = &v73 - v26;
  v27 = *a6;
  if (!*(*a6 + 16))
  {
    goto LABEL_13;
  }

  LODWORD(v80) = *a7;
  v28 = sub_24102FB5C(v17, a2, a3);
  if ((v29 & 1) == 0)
  {
    goto LABEL_13;
  }

  *&v79 = v17;
  *(&v79 + 1) = a2;
  sub_240FFC198(*(v27 + 56) + 72 * v28, v97);
  v30 = v99;
  v31 = *(v99 + 16);
  if (v31)
  {
    v76 = a3;
    v77 = a6;
    v78 = a5;
    v74 = v9;
    v32 = sub_240FE7168(v31, 0);
    v75 = sub_241024D18(&v91, (v32 + 4), v31, v30);
    v33 = v91;
    v10 = *(&v92[0] + 1);

    sub_241007D74(v33);
    if (v75 != v31)
    {
      __break(1u);
      goto LABEL_28;
    }

    v10 = v74;
    a5 = v78;
    a6 = v77;
    a3 = v76;
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
  }

  v17 = v79;
  *&v91 = v32;

  sub_241023FC4(&v91);
  if (v10)
  {
LABEL_28:
    MEMORY[0x245CD7E80](v10);

    __break(1u);
    return result;
  }

  v34 = *(v91 + 16);

  result = sub_240FFBF78(v97);
  if (!v34)
  {
LABEL_12:
    a2 = *(&v79 + 1);
LABEL_13:
    *(&v92[0] + 1) = a8;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v91);
    (*(v90 + 16))(boxed_opaque_existential_1Tm, v101, a8);
    sub_24102555C(&v91, v98);
    v97[0] = v17;
    v97[1] = a2;
    v97[2] = a3;
    v99 = a5;
    v100 = 1;

    sub_24102F0DC(v97);
    sub_240FFBF78(v97);
    v37 = &v91;
    return sub_240FE07E8(v37, &qword_27E51F328, &qword_241048720);
  }

  if (v80)
  {
    if (v80 == 1)
    {
      MEMORY[0x28223BE20](result);
      *(&v73 - 2) = a8;
      *(&v73 - 1) = a9;
      return sub_24102ECD8(v17, *(&v79 + 1), a3, a5, v101, nullsub_1, (&v73 - 4), a8);
    }

    goto LABEL_12;
  }

  if (*(v27 + 16))
  {
    result = sub_24102FB5C(v17, *(&v79 + 1), a3);
    if (v38)
    {
      v73 = a9;
      v76 = a3;
      v77 = a6;
      v78 = a5;
      sub_240FFC198(*(v27 + 56) + 72 * result, v97);
      sub_24102555C(v98, &v91);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F328, &qword_241048720);
      v39 = v87;
      v40 = swift_dynamicCast();
      v41 = v90;
      v42 = *(v90 + 56);
      v42(v39, v40 ^ 1u, 1, a8);
      v43 = *(v41 + 16);
      v44 = v85;
      v75 = (v41 + 16);
      v74 = v43;
      v43(v85, v101, a8);
      v42(v44, 0, 1, a8);
      v45 = *(TupleTypeMetadata2 + 48);
      v46 = *(v88 + 16);
      v47 = v84;
      v48 = v39;
      v49 = v89;
      v46(v84, v48, v89);
      v80 = v45;
      v46(&v47[v45], v44, v49);
      v50 = *(v41 + 48);
      if (v50(v47, 1, a8) == 1)
      {
        v51 = *(v88 + 8);
        v52 = v89;
        v51(v44, v89);
        v53 = v50(&v47[v80], 1, a8);
        v54 = v52;
        if (v53 == 1)
        {
          v51(v47, v52);
          v51(v87, v52);
          v55 = v78;
LABEL_26:
          v96[3] = a8;
          v72 = __swift_allocate_boxed_opaque_existential_1Tm(v96);
          v74(v72, v101, a8);
          sub_24102555C(v96, v92 + 8);
          v91 = v79;
          *&v92[0] = v76;
          v94 = v55;
          v95 = 1;

          sub_24102F0DC(&v91);
          sub_240FFBF78(&v91);
          sub_240FFBF78(v97);
          v37 = v96;
          return sub_240FE07E8(v37, &qword_27E51F328, &qword_241048720);
        }
      }

      else
      {
        v56 = v82;
        v46(v82, v47, v89);
        v57 = v80;
        if (v50(&v47[v80], 1, a8) != 1)
        {
          v65 = v90;
          v66 = &v47[v57];
          v67 = v56;
          v68 = v81;
          (*(v90 + 32))(v81, v66, a8);
          LODWORD(TupleTypeMetadata2) = sub_241046AB8();
          v69 = *(v65 + 8);
          v69(v68, a8);
          v70 = *(v88 + 8);
          v71 = v89;
          v70(v85, v89);
          v69(v67, a8);
          v70(v47, v71);
          v70(v87, v71);
          v55 = v78;
          v58 = v77;
          if (TupleTypeMetadata2)
          {
            goto LABEL_26;
          }

LABEL_24:
          v59 = v99;
          v60 = v58[1];
          sub_240FDEE00();
          swift_allocError();
          *v61 = v59;
          *(v61 + 8) = v55;
          *(v61 + 16) = v60;
          v62 = v93;
          v63 = v92[1];
          v64 = v91;
          *(v61 + 40) = v92[0];
          *(v61 + 24) = v64;
          *(v61 + 56) = v63;
          *(v61 + 72) = v62;
          *(v61 + 80) = 10;
          swift_willThrow();

          return sub_240FFBF78(v97);
        }

        v51 = *(v88 + 8);
        v54 = v89;
        v51(v85, v89);
        (*(v90 + 8))(v56, a8);
      }

      v55 = v78;
      v58 = v77;
      (*(v83 + 8))(v47, TupleTypeMetadata2);
      v51(v87, v54);
      goto LABEL_24;
    }
  }

  return result;
}

void *sub_24101F02C@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *sub_24101F058(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 < *(*v1 + 16))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

void (*sub_24101F09C(void (**a1)(uint64_t a1), unint64_t *a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x240uLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(*v2 + 16))
  {
    v8 = (*v2 + 192 * v7);
    v9 = v8[2];
    v10 = v8[3];
    v11 = v8[5];
    *(result + 2) = v8[4];
    *(result + 3) = v11;
    *result = v9;
    *(result + 1) = v10;
    v12 = v8[6];
    v13 = v8[7];
    v14 = v8[9];
    *(result + 6) = v8[8];
    *(result + 7) = v14;
    *(result + 4) = v12;
    *(result + 5) = v13;
    v15 = v8[10];
    v16 = v8[11];
    v17 = v8[13];
    *(result + 10) = v8[12];
    *(result + 11) = v17;
    *(result + 8) = v15;
    *(result + 9) = v16;
    memmove(result + 192, v8 + 2, 0xC0uLL);
    sub_240FE0990(v6, v6 + 384);
    return sub_240FF9828;
  }

  __break(1u);
  return result;
}

uint64_t *sub_24101F180@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], result = *v2, *(*v2 + 16) < v4))
  {
    __break(1u);
  }

  else
  {
    v5 = v2[1];
    *a2 = v3;
    a2[1] = v4;
    a2[2] = result;
    a2[3] = v5;
  }

  return result;
}

void sub_24101F1E0(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = 0;
  a1[1] = v2;
}

void *sub_24101F204@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*v3 + 16))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_24101F230@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_241024E68(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

unint64_t *sub_24101F26C(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*v2 + 16);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

uint64_t *sub_24101F294(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_24101F2B0(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_24101F2CC(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_24101F2E8@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >= *(*v2 + 16))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_24101F30C(void *result)
{
  if (*result >= *(*v1 + 16))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 sub_24101F330@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

char *sub_24101F348()
{
  v1 = sub_240FE6DF8(*v0, v0[1]);

  return v1;
}

unint64_t sub_24101F3C4()
{
  result = qword_27E51F7C0;
  if (!qword_27E51F7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F7C0);
  }

  return result;
}

unint64_t sub_24101F458()
{
  result = qword_27E51F7D8;
  if (!qword_27E51F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F7D8);
  }

  return result;
}

unint64_t sub_24101F4F4()
{
  result = qword_27E51F7F0;
  if (!qword_27E51F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F7F0);
  }

  return result;
}

unint64_t sub_24101F5C4()
{
  result = qword_27E51F808;
  if (!qword_27E51F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F808);
  }

  return result;
}

uint64_t sub_24101F650(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51F7D0, &qword_24104A380);
    sub_24101F458();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24101F710(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51F7E8, &qword_24104A388);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24101F788()
{
  result = qword_27E51F820;
  if (!qword_27E51F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F820);
  }

  return result;
}

uint64_t sub_24101F7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = MEMORY[0x277D839B0];
  v16[0] = 1;
  sub_24102555C(v16, v14);
  v13[0] = a6;
  v13[1] = a7;
  v13[2] = a8;
  v14[4] = a1;
  v15 = 1;

  sub_24102F0DC(v13);
  sub_240FFBF78(v13);
  return sub_240FE07E8(v16, &qword_27E51F328, &qword_241048720);
}

uint64_t sub_24101F8FC(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 != 2)
  {
    v17 = v6;
    v18 = v7;
    v16 = MEMORY[0x277D839B0];
    v15[0] = a3 & 1;
    v11 = result;
    sub_24102555C(v15, v13);
    v12[0] = a4;
    v12[1] = a5;
    v12[2] = a6;
    v13[4] = v11;
    v14 = 1;

    sub_24102F0DC(v12);
    sub_240FFBF78(v12);
    return sub_240FE07E8(v15, &qword_27E51F328, &qword_241048720);
  }

  return result;
}

uint64_t sub_24101FA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a5;
  if (!*(*a5 + 16) || (v13 = sub_24102FB5C(a6, a7, a8), (v14 & 1) == 0))
  {
    v21 = 0u;
    v22 = 0u;
    goto LABEL_8;
  }

  sub_240FFC198(*(v8 + 56) + 72 * v13, v18);
  sub_24102555C(v19, &v21);
  sub_240FFBF78(v18);
  if (!*(&v22 + 1))
  {
LABEL_8:
    sub_240FE07E8(&v21, &qword_27E51F328, &qword_241048720);
LABEL_9:
    sub_240FDEE00();
    swift_allocError();
    *v17 = 3;
    *(v17 + 8) = 0u;
    *(v17 + 24) = 0u;
    *(v17 + 40) = 0u;
    *(v17 + 56) = 0u;
    *(v17 + 72) = 0;
    *(v17 + 80) = 15;
    return swift_willThrow();
  }

  sub_240FFC32C(&v21, v23);
  sub_240FE078C(v23, v18);
  v15 = MEMORY[0x277D83B88];
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    goto LABEL_9;
  }

  if (__OFADD__(v21, 1))
  {
    __break(1u);
  }

  else
  {
    *(&v22 + 1) = v15;
    *&v21 = v21 + 1;
    sub_24102555C(&v21, v19);
    v18[0] = a6;
    v18[1] = a7;
    v18[2] = a8;
    v19[4] = a1;
    v20 = 1;

    sub_24102F0DC(v18);
    sub_240FFBF78(v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    return sub_240FE07E8(&v21, &qword_27E51F328, &qword_241048720);
  }

  return result;
}

uint64_t sub_24101FC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[3] = MEMORY[0x277D83B88];
  v13[0] = 0;
  sub_24102555C(v13, v11);
  v10[0] = a3;
  v10[1] = a4;
  v10[2] = a5;
  v11[4] = a1;
  v12 = 1;

  sub_24102F0DC(v10);
  sub_240FFBF78(v10);
  return sub_240FE07E8(v13, &qword_27E51F328, &qword_241048720);
}

uint64_t sub_24101FCCC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a2 + 16);
  if (v5)
  {
    v7 = result;

    v8 = v5 - 1;
    v9 = 32;
    v10 = MEMORY[0x277D84FA0];
    while (1)
    {
      v11 = *(a2 + v9 + 144);
      v19[8] = *(a2 + v9 + 128);
      v19[9] = v11;
      v12 = *(a2 + v9 + 176);
      v19[10] = *(a2 + v9 + 160);
      v20 = v12;
      v13 = *(a2 + v9 + 80);
      v19[4] = *(a2 + v9 + 64);
      v19[5] = v13;
      v14 = *(a2 + v9 + 112);
      v19[6] = *(a2 + v9 + 96);
      v19[7] = v14;
      v15 = *(a2 + v9 + 16);
      v19[0] = *(a2 + v9);
      v19[1] = v15;
      v16 = *(a2 + v9 + 48);
      v19[2] = *(a2 + v9 + 32);
      v19[3] = v16;
      v17 = v20;
      sub_240FE0990(v19, &v18);
      v17(v10, v7);
      sub_240FF0CCC(v19);
      if (v4 || !v8)
      {
        break;
      }

      --v8;
      v9 += 192;
    }
  }

  return result;
}

void sub_24101FDD4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v35 = a2;
  v36 = a3;
  v34 = a6;
  v9 = *(a4 + 16);

  v33[5] = a5;

  if (v9)
  {
    v11 = 32;
    while (1)
    {
      v12 = *(a4 + v11 + 144);
      v58 = *(a4 + v11 + 128);
      v59 = v12;
      v13 = *(a4 + v11 + 176);
      v60 = *(a4 + v11 + 160);
      v61 = v13;
      v14 = *(a4 + v11 + 80);
      v54 = *(a4 + v11 + 64);
      v55 = v14;
      v15 = *(a4 + v11 + 112);
      v56 = *(a4 + v11 + 96);
      v57 = v15;
      v16 = *(a4 + v11 + 16);
      v50 = *(a4 + v11);
      v51 = v16;
      v17 = *(a4 + v11 + 48);
      v52 = *(a4 + v11 + 32);
      v53 = v17;
      v18 = v52;
      v49[0] = a1;
      v49[1] = v35;
      v49[2] = v36;
      MEMORY[0x28223BE20](v10);
      v33[2] = v49;
      sub_240FE0990(&v50, &v37);

      v19 = sub_241009B24(sub_241006C24, v33, v18);

      if (v19)
      {
        break;
      }

      v10 = sub_240FF0CCC(&v50);
      v11 += 192;
      if (!--v9)
      {
        goto LABEL_5;
      }
    }

    v45 = v58;
    v46 = v59;
    v47 = v60;
    v48 = v61;
    v41 = v54;
    v42 = v55;
    v43 = v56;
    v44 = v57;
    v37 = v50;
    v38 = v51;
    v39 = v52;
    v40 = v53;
    nullsub_1();
    v28 = v46;
    v21 = v34;
    v34[8] = v45;
    v21[9] = v28;
    v29 = v48;
    v21[10] = v47;
    v21[11] = v29;
    v30 = v42;
    v21[4] = v41;
    v21[5] = v30;
    v31 = v44;
    v21[6] = v43;
    v21[7] = v31;
    v32 = v38;
    *v21 = v37;
    v21[1] = v32;
    v26 = v39;
    v27 = v40;
  }

  else
  {
LABEL_5:

    sub_240FE5898(&v50);
    v20 = v59;
    v21 = v34;
    v34[8] = v58;
    v21[9] = v20;
    v22 = v61;
    v21[10] = v60;
    v21[11] = v22;
    v23 = v55;
    v21[4] = v54;
    v21[5] = v23;
    v24 = v57;
    v21[6] = v56;
    v21[7] = v24;
    v25 = v51;
    *v21 = v50;
    v21[1] = v25;
    v26 = v52;
    v27 = v53;
  }

  v21[2] = v26;
  v21[3] = v27;
}

uint64_t sub_24101FFEC(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t), uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v10 = v9;
  v15 = a1;
  v274 = *a2;
  v275 = a2[1];
  v321 = a2[2];
  v16 = *(a1 + 145);
  v17 = *(a1 + 184);
  v268 = *(a1 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F3F8, &unk_241048020);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_241047BF0;
  v270 = a3;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  v269 = a4;
  v19 = a5;
  *(v18 + 48) = a5;
  *(v18 + 49) = BYTE1(a5) & 1;
  v276 = sub_24102AECC(v18);
  swift_setDeallocating();
  swift_deallocClassInstance();
  if (v16 <= 2)
  {
    if (v16)
    {
      v20 = v321;
      v21 = v9;
      if (v16 == 1)
      {
        v22 = v276;
        if ((v321 & 0x8000000000000000) == 0)
        {
          v23 = *(v15 + 96);
          v24 = *(v15 + 128);
          v283 = *(v15 + 112);
          v284 = v24;
          v285 = *(v15 + 144);
          v25 = *(v15 + 48);
          *v279 = *(v15 + 32);
          *&v279[16] = v25;
          v26 = *(v15 + 80);
          v280 = *(v15 + 64);
          v281 = v26;
          v282 = v23;
          v27 = *(v15 + 16);
          v277 = *v15;
          v278 = v27;
          v286 = 1;
          *v287 = *(v15 + 146);
          *&v287[14] = *(v15 + 160);
          v288 = v268;
          v289 = v17;

          if ((sub_24102C994() & 1) != 0 && (a5 & 0x100) == 0 && (a5 & 1) == 0 && !v269)
          {
            if ((v270 & 0x8000000000000000) == 0)
            {
              v28 = v271[6];
              if (*(v28 + 16) > v270)
              {
                v29 = v28 + 16 * v270;
                v31 = *(v29 + 32);
                v30 = *(v29 + 40);

                v32 = sub_241039038(2uLL, v31, v30);
                v34 = v33;
                v36 = v35;
                v38 = v37;

                v10 = MEMORY[0x245CD7040](v32, v34, v36, v38);
                v19 = v39;
                v40 = v270;

                if (*(v276 + 16))
                {
                  sub_2410475A8();
                  MEMORY[0x245CD7AE0](1);
                  MEMORY[0x245CD7AE0](v270);
                  MEMORY[0x245CD7AE0](0);
                  v41 = sub_2410475E8();
                  v42 = -1 << *(v276 + 32);
                  v43 = v41 & ~v42;
                  if ((*(v276 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43))
                  {
                    v44 = ~v42;
                    while (1)
                    {
                      v113 = *(v276 + 48) + 24 * v43;
                      if (*(v113 + 17) & 1) == 0 && *v113 == v270 && (*(v113 + 16))
                      {
                        break;
                      }

                      v43 = (v43 + 1) & v44;
                      if (((*(v276 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
                      {
                        goto LABEL_117;
                      }
                    }

LABEL_61:

LABEL_256:
                    *&v277 = v10;
                    *(&v277 + 1) = v19;
                    v266 = sub_241046C68();
                    (a6)(v22, v274, v275, v321, v266, v267, a8);
                    if (v21)
                    {
                    }

                    v190 = v22;
                    return sub_24102EFE4(v190);
                  }
                }

LABEL_117:

                if (*(v276 + 16))
                {
                  sub_2410475A8();
                  MEMORY[0x245CD7AE0](1);
                  MEMORY[0x245CD7AE0](v270);
                  MEMORY[0x245CD7AE0](0);
                  v179 = sub_2410475E8();
                  v180 = -1 << *(v276 + 32);
                  v181 = v179 & ~v180;
                  if ((*(v276 + 56 + ((v181 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v181))
                  {
                    v182 = ~v180;
                    do
                    {
                      v183 = *(v276 + 48) + 24 * v181;
                      if (*(v183 + 17) & 1) == 0 && *v183 == v270 && (*(v183 + 16))
                      {
                        goto LABEL_256;
                      }

                      v181 = (v181 + 1) & v182;
                    }

                    while (((*(v276 + 56 + ((v181 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v181) & 1) != 0);
                  }
                }

                sub_2410475A8();
                MEMORY[0x245CD7AE0](1);
                MEMORY[0x245CD7AE0](v270);
                MEMORY[0x245CD7AE0](0);
                v195 = sub_2410475E8();
                v196 = -1 << *(v276 + 32);
                v197 = v195 & ~v196;
                if ((*(v276 + 56 + ((v197 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v197))
                {
                  v198 = ~v196;
                  while (1)
                  {
                    v199 = *(v276 + 48) + 24 * v197;
                    if (*(v199 + 17) & 1) == 0 && *v199 == v270 && (*(v199 + 16))
                    {
                      goto LABEL_256;
                    }

                    v197 = (v197 + 1) & v198;
                    if (((*(v276 + 56 + ((v197 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v197) & 1) == 0)
                    {
                      goto LABEL_160;
                    }
                  }
                }

                goto LABEL_160;
              }

              goto LABEL_249;
            }

            goto LABEL_246;
          }

          sub_241034C8C(v270, v269, a5 & 0x1FF, &v297);
          v148 = v302;
          if (v302)
          {
            v149 = v297;
            v150 = v298;
            v151 = v301;
            v152 = v299 | ((v300 & 1) << 8);
            v153 = sub_24101DFC8(v297, v298, v299 | ((v300 & 1) << 8), v276);

            if ((v153 & 1) == 0)
            {
              v290 = v276;
              if ((sub_24101DFC8(v149, v150, v152, v276) & 1) == 0)
              {
                sub_241031F0C(&v277, v149, v150, v152);
                v22 = v290;
              }
            }

            (a6)(v22, v274, v275, v321, v151, v148, a8);
            if (v9)
            {

              return sub_240FE07E8(&v297, &qword_27E51F828, &qword_24104A548);
            }

            v189 = &v297;
            goto LABEL_136;
          }

          goto LABEL_98;
        }
      }

      else
      {
        v22 = v276;
        if ((v321 & 0x8000000000000000) == 0)
        {
          v91 = *(v15 + 96);
          v92 = *(v15 + 128);
          v283 = *(v15 + 112);
          v284 = v92;
          v285 = *(v15 + 144);
          v93 = *(v15 + 48);
          *v279 = *(v15 + 32);
          *&v279[16] = v93;
          v94 = *(v15 + 80);
          v280 = *(v15 + 64);
          v281 = v94;
          v282 = v91;
          v95 = *(v15 + 16);
          v277 = *v15;
          v278 = v95;
          v286 = 2;
          *v287 = *(v15 + 146);
          *&v287[14] = *(v15 + 160);
          v288 = v268;
          v289 = v17;

          if ((sub_24102C994() & 1) != 0 && (a5 & 0x100) == 0 && (a5 & 1) == 0 && !v269)
          {
            if ((v270 & 0x8000000000000000) == 0)
            {
              v96 = v271[6];
              if (*(v96 + 16) > v270)
              {
                v97 = v96 + 16 * v270;
                v99 = *(v97 + 32);
                v98 = *(v97 + 40);

                v100 = sub_241039038(2uLL, v99, v98);
                v102 = v101;
                v104 = v103;
                v106 = v105;

                v10 = MEMORY[0x245CD7040](v100, v102, v104, v106);
                v19 = v107;
                v40 = v270;

                if (*(v276 + 16))
                {
                  sub_2410475A8();
                  MEMORY[0x245CD7AE0](1);
                  MEMORY[0x245CD7AE0](v270);
                  MEMORY[0x245CD7AE0](0);
                  v108 = sub_2410475E8();
                  v109 = -1 << *(v276 + 32);
                  v110 = v108 & ~v109;
                  if ((*(v276 + 56 + ((v110 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v110))
                  {
                    v111 = ~v109;
                    do
                    {
                      v114 = *(v276 + 48) + 24 * v110;
                      if (*(v114 + 17) & 1) == 0 && *v114 == v270 && (*(v114 + 16))
                      {
                        goto LABEL_61;
                      }

                      v110 = (v110 + 1) & v111;
                    }

                    while (((*(v276 + 56 + ((v110 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v110) & 1) != 0);
                  }
                }

                if (*(v276 + 16))
                {
                  sub_2410475A8();
                  MEMORY[0x245CD7AE0](1);
                  MEMORY[0x245CD7AE0](v270);
                  MEMORY[0x245CD7AE0](0);
                  v184 = sub_2410475E8();
                  v185 = -1 << *(v276 + 32);
                  v186 = v184 & ~v185;
                  if ((*(v276 + 56 + ((v186 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v186))
                  {
                    v187 = ~v185;
                    do
                    {
                      v188 = *(v276 + 48) + 24 * v186;
                      if (*(v188 + 17) & 1) == 0 && *v188 == v270 && (*(v188 + 16))
                      {
                        goto LABEL_256;
                      }

                      v186 = (v186 + 1) & v187;
                    }

                    while (((*(v276 + 56 + ((v186 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v186) & 1) != 0);
                  }
                }

                sub_2410475A8();
                MEMORY[0x245CD7AE0](1);
                MEMORY[0x245CD7AE0](v270);
                MEMORY[0x245CD7AE0](0);
                v200 = sub_2410475E8();
                v201 = -1 << *(v276 + 32);
                v197 = v200 & ~v201;
                if ((*(v276 + 56 + ((v197 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v197))
                {
                  v202 = ~v201;
                  do
                  {
                    v203 = *(v276 + 48) + 24 * v197;
                    if (*(v203 + 17) & 1) == 0 && *v203 == v270 && (*(v203 + 16))
                    {
                      goto LABEL_256;
                    }

                    v197 = (v197 + 1) & v202;
                  }

                  while (((*(v276 + 56 + ((v197 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v197) & 1) != 0);
                }

LABEL_160:

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v277 = v22;
                sub_241032FF8(v40, 0, 1, v197, isUniquelyReferenced_nonNull_native);

                goto LABEL_256;
              }

              goto LABEL_250;
            }

            goto LABEL_247;
          }

          sub_241034E10(v270, v269, a5 & 0x1FF, &v303);
          v154 = v308;
          if (v308)
          {
            v155 = v303;
            v156 = v304;
            v157 = v307;
            v158 = v305 | ((v306 & 1) << 8);
            v159 = sub_24101DFC8(v303, v304, v305 | ((v306 & 1) << 8), v276);

            if ((v159 & 1) == 0)
            {
              v290 = v276;
              if ((sub_24101DFC8(v155, v156, v158, v276) & 1) == 0)
              {
                sub_241031F0C(&v277, v155, v156, v158);
                v22 = v290;
              }
            }

            (a6)(v22, v274, v275, v321, v157, v154, a8);
            if (v9)
            {

              return sub_240FE07E8(&v303, &qword_27E51F828, &qword_24104A548);
            }

            v189 = &v303;
            goto LABEL_136;
          }

LABEL_98:

          sub_240FDEE00();
          swift_allocError();
          *v160 = v22;
          *(v160 + 8) = v274;
          *(v160 + 16) = v275;
          *(v160 + 24) = v20;
          v161 = *&v279[15];
          v162 = *v279;
          v163 = v277;
          *(v160 + 41) = v278;
          *(v160 + 25) = v163;
          *(v160 + 57) = v162;
          *(v160 + 72) = v161;
          *(v160 + 80) = 7;
          swift_willThrow();
          v164 = v274;
          v165 = v275;
          return sub_240FF0D90(v164, v165, v20);
        }
      }

      v115 = a2[3];
      v116 = a2[4];

      (a6)(v117, v274, v275, v321, v115, v116, a8);
      if (!v10)
      {

LABEL_137:
        v190 = v22;
        return sub_24102EFE4(v190);
      }

      return swift_bridgeObjectRelease_n();
    }

    v20 = v321;
    v21 = v9;
    if ((v321 & 0x8000000000000000) == 0)
    {
      v70 = *(v15 + 96);
      v71 = *(v15 + 128);
      v283 = *(v15 + 112);
      v284 = v71;
      v285 = *(v15 + 144);
      v72 = *(v15 + 48);
      *v279 = *(v15 + 32);
      *&v279[16] = v72;
      v73 = *(v15 + 80);
      v280 = *(v15 + 64);
      v281 = v73;
      v282 = v70;
      v74 = *(v15 + 16);
      v277 = *v15;
      v278 = v74;
      v286 = 0;
      *v287 = *(v15 + 146);
      *&v287[14] = *(v15 + 160);
      v288 = v268;
      v289 = v17;
      v22 = v276;

      if ((sub_24102C994() & 1) == 0 || (a5 & 0x100) != 0 || (a5 & 1) != 0 || v269)
      {
        sub_241034B80(v270, v269, a5 & 0x1FF, &v291);
        v142 = v296;
        if (v296)
        {
          v143 = v291;
          v144 = v292;
          v145 = v295;
          v146 = v293 | ((v294 & 1) << 8);
          v147 = sub_24101DFC8(v291, v292, v293 | ((v294 & 1) << 8), v276);

          if ((v147 & 1) == 0)
          {
            v290 = v276;
            if ((sub_24101DFC8(v143, v144, v146, v276) & 1) == 0)
            {
              sub_241031F0C(&v277, v143, v144, v146);
              v22 = v290;
            }
          }

          (a6)(v22, v274, v275, v321, v145, v142, a8);
          if (v9)
          {

            return sub_240FE07E8(&v291, &qword_27E51F828, &qword_24104A548);
          }

          v189 = &v291;
LABEL_136:
          sub_240FE07E8(v189, &qword_27E51F828, &qword_24104A548);
          goto LABEL_137;
        }

        goto LABEL_98;
      }

      if ((v270 & 0x8000000000000000) == 0)
      {
        v75 = v271[6];
        if (*(v75 + 16) <= v270)
        {
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
          goto LABEL_251;
        }

        v76 = v75 + 16 * v270;
        v78 = *(v76 + 32);
        v77 = *(v76 + 40);

        v79 = sub_241039038(2uLL, v78, v77);
        v81 = v80;
        v83 = v82;
        v85 = v84;

        v10 = MEMORY[0x245CD7040](v79, v81, v83, v85);
        v19 = v86;
        v15 = v270;

        if (*(v276 + 16))
        {
          sub_2410475A8();
          MEMORY[0x245CD7AE0](1);
          MEMORY[0x245CD7AE0](v270);
          MEMORY[0x245CD7AE0](0);
          v87 = sub_2410475E8();
          v88 = -1 << *(v276 + 32);
          v89 = v87 & ~v88;
          if ((*(v276 + 56 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v89))
          {
            v90 = ~v88;
            do
            {
              v112 = *(v276 + 48) + 24 * v89;
              if (*(v112 + 17) & 1) == 0 && *v112 == v270 && (*(v112 + 16))
              {
                goto LABEL_61;
              }

              v89 = (v89 + 1) & v90;
            }

            while (((*(v276 + 56 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v89) & 1) != 0);
          }
        }

        if (*(v276 + 16))
        {
          sub_2410475A8();
          MEMORY[0x245CD7AE0](1);
          MEMORY[0x245CD7AE0](v270);
          MEMORY[0x245CD7AE0](0);
          v174 = sub_2410475E8();
          v175 = -1 << *(v276 + 32);
          v176 = v174 & ~v175;
          if ((*(v276 + 56 + ((v176 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v176))
          {
            v177 = ~v175;
            do
            {
              v178 = *(v276 + 48) + 24 * v176;
              if (*(v178 + 17) & 1) == 0 && *v178 == v270 && (*(v178 + 16))
              {
                goto LABEL_256;
              }

              v176 = (v176 + 1) & v177;
            }

            while (((*(v276 + 56 + ((v176 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v176) & 1) != 0);
          }
        }

        sub_2410475A8();
        MEMORY[0x245CD7AE0](1);
        MEMORY[0x245CD7AE0](v270);
        MEMORY[0x245CD7AE0](0);
        v191 = sub_2410475E8();
        v192 = -1 << *(v276 + 32);
        v20 = v191 & ~v192;
        if ((*(v276 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
        {
          v193 = ~v192;
          do
          {
            v194 = *(v276 + 48) + 24 * v20;
            if (*(v194 + 17) & 1) == 0 && *v194 == v270 && (*(v194 + 16))
            {
              goto LABEL_256;
            }

            v20 = (v20 + 1) & v193;
          }

          while (((*(v276 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0);
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        v290 = v276;
        v206 = *(v276 + 16);
        if (*(v276 + 24) > v206)
        {
          if (result)
          {
            v207 = v276;
LABEL_254:
            *(v207 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v20;
            v262 = *(v207 + 48) + 24 * v20;
            *v262 = v15;
            *(v262 + 8) = 0;
            *(v262 + 16) = 1;
            v263 = *(v207 + 16);
            v264 = __OFADD__(v263, 1);
            v265 = v263 + 1;
            if (!v264)
            {
              *(v207 + 16) = v265;

              v22 = v207;
              goto LABEL_256;
            }

            __break(1u);
            goto LABEL_260;
          }

LABEL_253:
          result = sub_241033498();
          v207 = v290;
          goto LABEL_254;
        }

        if (result)
        {
          sub_241032644(v206 + 1);
        }

        else
        {
          sub_2410338A0(v206 + 1);
        }

        v207 = v290;
        sub_2410475A8();
        MEMORY[0x245CD7AE0](1);
        MEMORY[0x245CD7AE0](v270);
        MEMORY[0x245CD7AE0](0);
        result = sub_2410475E8();
        v238 = -1 << *(v290 + 32);
        v20 = result & ~v238;
        if (((*(v290 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_254;
        }

        v239 = ~v238;
        while (1)
        {
          v240 = *(v290 + 48) + 24 * v20;
          if (*(v240 + 17) & 1) == 0 && *v240 == v270 && (*(v240 + 16))
          {
            break;
          }

          v20 = (v20 + 1) & v239;
          if (((*(v290 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_254;
          }
        }

        sub_241047508();
        __break(1u);
        goto LABEL_214;
      }

LABEL_245:
      __break(1u);
LABEL_246:
      __break(1u);
LABEL_247:
      __break(1u);
      goto LABEL_248;
    }

    v166 = a2[3];
    v167 = a2[4];
    v22 = v276;

    (a6)(v168, v274, v275, v321, v166, v167, a8);

    if (!v10)
    {
      goto LABEL_137;
    }
  }

  if ((v16 - 5) < 2)
  {

    sub_240FDEE00();
    swift_allocError();
    *v45 = 3;
    *(v45 + 8) = 0u;
    *(v45 + 24) = 0u;
    *(v45 + 40) = 0u;
    *(v45 + 56) = 0u;
    *(v45 + 72) = 0;
    *(v45 + 80) = 15;
    return swift_willThrow();
  }

  if (v16 != 3)
  {
    v22 = v276;

    v268(v118, a8);
    v21 = v9;
    if (v9)
    {
      return swift_bridgeObjectRelease_n();
    }

    if ((v321 & 0x8000000000000000) != 0)
    {
      a6(v276, v274, v275);

      sub_24102EFE4(v205);
      result = v270;
      goto LABEL_235;
    }

    v119 = *(v15 + 96);
    v120 = *(v15 + 128);
    v283 = *(v15 + 112);
    v284 = v120;
    v285 = *(v15 + 144);
    v121 = *(v15 + 48);
    *v279 = *(v15 + 32);
    *&v279[16] = v121;
    v122 = *(v15 + 80);
    v280 = *(v15 + 64);
    v281 = v122;
    v282 = v119;
    v123 = *(v15 + 16);
    v277 = *v15;
    v278 = v123;
    v286 = 4;
    *v287 = *(v15 + 146);
    *&v287[14] = *(v15 + 160);
    v288 = v268;
    v289 = v17;
    if ((sub_24102C994() & 1) == 0)
    {
      result = v270;
      goto LABEL_235;
    }

    result = v270;
    if ((a5 & 0x100) != 0 || (a5 & 1) != 0 || v269)
    {
LABEL_235:
      while (1)
      {
        sub_241034E10(result, v269, v19 & 0x1FF, &v309);
        v256 = v314;
        if (!v314)
        {
          break;
        }

        v257 = v309;
        v258 = v310;
        v259 = v313;
        v260 = v311 | ((v312 & 1) << 8);
        if (sub_24101DFC8(v309, v310, v311 | ((v312 & 1) << 8), v276) & 1) != 0 || (v290 = v276, (sub_24101DFC8(v257, v258, v260, v276)))
        {

          v261 = v276;
        }

        else
        {

          sub_241031F0C(&v277, v257, v258, v260);
          v261 = v290;
        }

        (a6)(v261, v274, v275, v321, v259, v256, a8);
        sub_240FE07E8(&v309, &qword_27E51F828, &qword_24104A548);
        sub_24102EFE4(v261);
        result = v270;
      }

      return swift_bridgeObjectRelease_n();
    }

    if ((v270 & 0x8000000000000000) != 0)
    {
LABEL_260:
      __break(1u);
      goto LABEL_261;
    }

    v124 = v271[6];
    if (*(v124 + 16) <= v270)
    {
LABEL_261:
      __break(1u);
      return result;
    }

    v125 = v124 + 16 * v270;
    v127 = *(v125 + 32);
    v126 = *(v125 + 40);

    v128 = sub_241039038(2uLL, v127, v126);
    v130 = v129;
    v132 = v131;
    v134 = v133;

    v135 = v132;
    v15 = v270;
    v268 = MEMORY[0x245CD7040](v128, v130, v135, v134);
    v10 = v136;

    if (!*(v276 + 16))
    {
      goto LABEL_222;
    }

    sub_2410475A8();
    MEMORY[0x245CD7AE0](1);
    MEMORY[0x245CD7AE0](v270);
    MEMORY[0x245CD7AE0](0);
    v137 = sub_2410475E8();
    v20 = v276 + 56;
    v138 = -1 << *(v276 + 32);
    v139 = v137 & ~v138;
    if ((*(v276 + 56 + ((v139 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v139))
    {
      v140 = ~v138;
      do
      {
        v173 = *(v276 + 48) + 24 * v139;
        if (*(v173 + 17) & 1) == 0 && *v173 == v270 && (*(v173 + 16))
        {
          goto LABEL_221;
        }

        v139 = (v139 + 1) & v140;
      }

      while (((*(v20 + ((v139 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v139) & 1) != 0);
    }

LABEL_214:
    if (*(v22 + 16))
    {
      sub_2410475A8();
      MEMORY[0x245CD7AE0](1);
      MEMORY[0x245CD7AE0](v15);
      MEMORY[0x245CD7AE0](0);
      v241 = sub_2410475E8();
      v242 = -1 << *(v22 + 32);
      v243 = v241 & ~v242;
      if ((*(v20 + ((v243 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v243))
      {
        v244 = ~v242;
        while (1)
        {
          v245 = *(v22 + 48) + 24 * v243;
          if (*(v245 + 17) & 1) == 0 && *v245 == v15 && (*(v245 + 16))
          {
            break;
          }

          v243 = (v243 + 1) & v244;
          if (((*(v20 + ((v243 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v243) & 1) == 0)
          {
            goto LABEL_222;
          }
        }

LABEL_221:

        v246 = v22;
        v247 = v268;
LABEL_231:
        *&v277 = v247;
        *(&v277 + 1) = v10;
        v254 = sub_241046C68();
        (a6)(v246, v274, v275, v321, v254, v255, a8);
        if (v21)
        {
          goto LABEL_232;
        }

        sub_24102EFE4(v246);
        sub_24102AB88(*a9);
        result = v15;
        goto LABEL_235;
      }
    }

LABEL_222:
    sub_2410475A8();
    MEMORY[0x245CD7AE0](1);
    MEMORY[0x245CD7AE0](v15);
    MEMORY[0x245CD7AE0](0);
    v248 = sub_2410475E8();
    v249 = -1 << *(v22 + 32);
    v250 = v248 & ~v249;
    if ((*(v22 + 56 + ((v250 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v250))
    {
      v251 = ~v249;
      v247 = v268;
      while (1)
      {
        v252 = *(v22 + 48) + 24 * v250;
        if (*(v252 + 17) & 1) == 0 && *v252 == v15 && (*(v252 + 16))
        {
          break;
        }

        v250 = (v250 + 1) & v251;
        if (((*(v22 + 56 + ((v250 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v250) & 1) == 0)
        {
          goto LABEL_230;
        }
      }

      v246 = v22;
    }

    else
    {
      v247 = v268;
LABEL_230:

      v253 = swift_isUniquelyReferenced_nonNull_native();
      sub_241032FF8(v15, 0, 1, v250, v253);
      v246 = v22;
    }

    goto LABEL_231;
  }

  v21 = v9;
  if ((v321 & 0x8000000000000000) == 0)
  {
    v47 = *(v15 + 96);
    v48 = *(v15 + 128);
    v283 = *(v15 + 112);
    v284 = v48;
    v285 = *(v15 + 144);
    v49 = *(v15 + 48);
    *v279 = *(v15 + 32);
    *&v279[16] = v49;
    v50 = *(v15 + 80);
    v280 = *(v15 + 64);
    v281 = v50;
    v282 = v47;
    v51 = *(v15 + 16);
    v277 = *v15;
    v278 = v51;
    v286 = 3;
    *v287 = *(v15 + 146);
    *&v287[14] = *(v15 + 160);
    v288 = v268;
    v289 = v17;

    v20 = 0;
    if ((sub_24102C994() & 1) == 0 || (a5 & 0x100) != 0 || (a5 & 1) != 0 || v269)
    {
      v19 = v275;
      goto LABEL_185;
    }

    if ((v270 & 0x8000000000000000) != 0)
    {
LABEL_251:
      __break(1u);
      goto LABEL_252;
    }

    v52 = v271[6];
    if (*(v52 + 16) <= v270)
    {
LABEL_252:
      __break(1u);
      goto LABEL_253;
    }

    v53 = v52 + 16 * v270;
    v55 = *(v53 + 32);
    v54 = *(v53 + 40);

    v56 = sub_241039038(2uLL, v55, v54);
    v58 = v57;
    v60 = v59;
    v62 = v61;

    v10 = MEMORY[0x245CD7040](v56, v58, v60, v62);
    v64 = v63;
    v15 = v270;

    if (!*(v276 + 16))
    {
      goto LABEL_174;
    }

    sub_2410475A8();
    MEMORY[0x245CD7AE0](1);
    MEMORY[0x245CD7AE0](v270);
    MEMORY[0x245CD7AE0](0);
    v65 = sub_2410475E8();
    v66 = v276 + 56;
    v67 = -1 << *(v276 + 32);
    v68 = v65 & ~v67;
    if ((*(v276 + 56 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68))
    {
      v69 = ~v67;
      do
      {
        v141 = *(v276 + 48) + 24 * v68;
        if (*(v141 + 17) & 1) == 0 && *v141 == v270 && (*(v141 + 16))
        {
          goto LABEL_180;
        }

        v68 = (v68 + 1) & v69;
      }

      while (((*(v66 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68) & 1) != 0);
    }

    if (*(v276 + 16) && (sub_2410475A8(), MEMORY[0x245CD7AE0](1), MEMORY[0x245CD7AE0](v270), MEMORY[0x245CD7AE0](0), v208 = sub_2410475E8(), v209 = -1 << *(v276 + 32), v210 = v208 & ~v209, ((*(v66 + ((v210 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v210) & 1) != 0))
    {
      v211 = ~v209;
      while (1)
      {
        v212 = *(v276 + 48) + 24 * v210;
        if (*(v212 + 17) & 1) == 0 && *v212 == v270 && (*(v212 + 16))
        {
          break;
        }

        v210 = (v210 + 1) & v211;
        if (((*(v66 + ((v210 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v210) & 1) == 0)
        {
          goto LABEL_174;
        }
      }
    }

    else
    {
LABEL_174:
      sub_2410475A8();
      MEMORY[0x245CD7AE0](1);
      MEMORY[0x245CD7AE0](v270);
      MEMORY[0x245CD7AE0](0);
      v213 = sub_2410475E8();
      v214 = -1 << *(v276 + 32);
      v215 = v213 & ~v214;
      if (((*(v276 + 56 + ((v215 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v215) & 1) == 0)
      {
LABEL_181:

        v219 = swift_isUniquelyReferenced_nonNull_native();
        sub_241032FF8(v270, 0, 1, v215, v219);
        v218 = v276;
        goto LABEL_182;
      }

      v216 = ~v214;
      while (1)
      {
        v217 = *(v276 + 48) + 24 * v215;
        if (*(v217 + 17) & 1) == 0 && *v217 == v270 && (*(v217 + 16))
        {
          break;
        }

        v215 = (v215 + 1) & v216;
        if (((*(v276 + 56 + ((v215 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v215) & 1) == 0)
        {
          goto LABEL_181;
        }
      }
    }

LABEL_180:

    v218 = v276;
LABEL_182:
    *&v277 = v10;
    *(&v277 + 1) = v64;
    v220 = sub_241046C68();
    v19 = v275;
    (a6)(v218, v274, v275, v321, v220, v221, a8);
    if (v21)
    {
LABEL_232:

      return swift_bridgeObjectRelease_n();
    }

    sub_24102EFE4(v218);
    sub_24102AB88(*a9);
    goto LABEL_184;
  }

  v169 = a2[3];
  v170 = a2[4];

  v19 = v275;
  (a6)(v171, v274, v275, v321, v169, v170, a8);
  if (v21)
  {
    return swift_bridgeObjectRelease_n();
  }

  sub_24102EFE4(v172);
LABEL_184:
  v20 = 1;
LABEL_185:

  sub_24102EFE4(v222);
  sub_24102AB88(v276);
  v223 = v271[4];
  v224 = v271[5];
  v225 = *(v223 + 16);
  if (v225 < v224)
  {
    __break(1u);
    goto LABEL_243;
  }

  if ((v224 & 0x8000000000000000) != 0)
  {
LABEL_243:
    __break(1u);
    goto LABEL_244;
  }

  if (v224 == v225)
  {
    goto LABEL_199;
  }

  if (v224 >= v225)
  {
LABEL_244:
    __break(1u);
    goto LABEL_245;
  }

  if ((*(v223 + (v224 << 6) + 48) & 0x6000000000000000) != 0x2000000000000000)
  {
LABEL_199:

    if (!v20)
    {
      sub_240FDEE00();
      swift_allocError();
      *v234 = v276;
      *(v234 + 8) = v274;
      *(v234 + 16) = v19;
      LOBYTE(v20) = v321;
      *(v234 + 24) = v321;
      v235 = *&v279[15];
      v236 = *v279;
      v237 = v277;
      *(v234 + 41) = v278;
      *(v234 + 25) = v237;
      *(v234 + 57) = v236;
      *(v234 + 72) = v235;
      *(v234 + 80) = 7;
      swift_willThrow();
      v164 = v274;
      v165 = v19;
      return sub_240FF0D90(v164, v165, v20);
    }
  }

  sub_241034F20(&v315);
  v226 = v320;
  if (!v320)
  {
    return swift_bridgeObjectRelease_n();
  }

  v227 = v318;
  v228 = v317;
  v229 = v316;
  v230 = v319;
  while (1)
  {
    v231 = v21;
    v232 = v315;
    if (sub_24101DFC8(v315, v229, v228 | ((v227 & 1u) << 8), v276) & 1) != 0 || (v290 = v276, (sub_24101DFC8(v232, v229, v228 | ((v227 & 1u) << 8), v276)))
    {

      v233 = v276;
    }

    else
    {

      sub_241031F0C(&v277, v232, v229, v228 | ((v227 & 1) << 8));
      v233 = v290;
    }

    (a6)(v233, v274, v275, v321, v230, v226, a8);
    v21 = v231;
    if (v231)
    {
      break;
    }

    sub_240FE07E8(&v315, &qword_27E51F828, &qword_24104A548);
    sub_24102EFE4(v233);
    sub_241034F20(&v315);
    v229 = v316;
    v228 = v317;
    v230 = v319;
    v226 = v320;
    v227 = v318;
    if (!v320)
    {
      return swift_bridgeObjectRelease_n();
    }
  }

  swift_bridgeObjectRelease_n();
  return sub_240FE07E8(&v315, &qword_27E51F828, &qword_24104A548);
}

uint64_t sub_241021DD8(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = *(isUniquelyReferenced_nonNull_native + 16);
  if (v12 < a2)
  {
    goto LABEL_219;
  }

  v10 = a2;
  if (a2 < 0)
  {
LABEL_220:
    __break(1u);
LABEL_221:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      swift_unknownObjectRelease();
LABEL_107:
      sub_240FE6F7C(v7, v165, v10, v8);
LABEL_165:
      v123 = v96;
LABEL_166:

      a4[2] = v123;
      a4[3] = 0;
      a4[4] = MEMORY[0x277D84F90];
      if (v10 == v9)
      {
        break;
      }

      v148 = v9;
      v149 = v7;
      if (v10 <= v9)
      {
        v124 = v9;
      }

      else
      {
        v124 = v10;
      }

      v160 = v8;
      v164 = v124;
      v9 = 24;
      v151 = v4;
      v154 = v6;
      v156 = v11;
      while (v10 != v164)
      {
        v125 = v165 + (v10 << 6);
        v8 = *(v125 + 40);
        v126 = *(v125 + 48);
        v6 = *(v125 + 56);
        ++v10;
        *&v170 = v7;
        *(&v170 + 1) = v165;
        *&v171 = v10;
        *(&v171 + 1) = v160;
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_223;
        }

        if (v8 >= *(a3 + 16))
        {
          goto LABEL_224;
        }

        v127 = &v157[16 * v8];
        v128 = *(v127 + 1);
        v169 = *v127;
        v129 = sub_241025748();

        v11 = MEMORY[0x245CD7300](1, &type metadata for InputOrigin.Element, v129);
        sub_2410475A8();
        MEMORY[0x245CD7AE0](1);
        MEMORY[0x245CD7AE0](v8);
        if (v6)
        {
          v130 = 0;
        }

        else
        {
          MEMORY[0x245CD7AE0](1);
          v130 = v126;
        }

        MEMORY[0x245CD7AE0](v130);
        v4 = v174;
        v131 = sub_2410475E8();
        v132 = -1 << *(v11 + 32);
        v7 = v131 & ~v132;
        if ((*(v11 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
        {
          v133 = ~v132;
          do
          {
            v134 = *(v11 + 48) + 24 * v7;
            if ((*(v134 + 17) & 1) == 0 && *v134 == v8)
            {
              if (*(v134 + 16))
              {
                if (v6)
                {
                  goto LABEL_208;
                }
              }

              else if ((v6 & 1) == 0 && *(v134 + 8) == v126)
              {
                goto LABEL_208;
              }
            }

            v7 = (v7 + 1) & v133;
          }

          while (((*(v11 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
        }

        v135 = swift_isUniquelyReferenced_nonNull_native();
        v173 = v11;
        v136 = *(v11 + 16);
        if (*(v11 + 24) <= v136)
        {
          if (v135)
          {
            sub_241032644(v136 + 1);
          }

          else
          {
            sub_2410338A0(v136 + 1);
          }

          v11 = v173;
          sub_2410475A8();
          MEMORY[0x245CD7AE0](1);
          MEMORY[0x245CD7AE0](v8);
          if (v6)
          {
            v137 = 0;
          }

          else
          {
            MEMORY[0x245CD7AE0](1);
            v137 = v126;
          }

          MEMORY[0x245CD7AE0](v137);
          v4 = v174;
          v138 = sub_2410475E8();
          v139 = -1 << *(v11 + 32);
          v7 = v138 & ~v139;
          if ((*(v11 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
          {
            v140 = ~v139;
            do
            {
              v141 = *(v11 + 48) + 24 * v7;
              if ((*(v141 + 17) & 1) == 0 && *v141 == v8)
              {
                if (*(v141 + 16))
                {
                  if (v6)
                  {
                    goto LABEL_231;
                  }
                }

                else if ((v6 & 1) == 0 && *(v141 + 8) == v126)
                {
                  goto LABEL_231;
                }
              }

              v7 = (v7 + 1) & v140;
            }

            while (((*(v11 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
          }
        }

        else if ((v135 & 1) == 0)
        {
          v4 = &v173;
          sub_241033498();
          v11 = v173;
        }

        *(v11 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v7;
        v142 = *(v11 + 48) + 24 * v7;
        *v142 = v8;
        *(v142 + 8) = v126;
        *(v142 + 16) = v6;
        *(v142 + 17) = 0;
        v143 = *(v11 + 16);
        v46 = __OFADD__(v143, 1);
        v144 = v143 + 1;
        if (v46)
        {
          goto LABEL_225;
        }

        *(v11 + 16) = v144;
LABEL_208:
        v4 = v151;
        v6 = v154;
        v7 = v149;
        v145 = v192;
        v154(v11, 0, 0, 254, v169, v128, a4);
        v192 = v145;
        if (v145)
        {

          sub_241025740(v154, v151);

          sub_240FF0CCC(&v176);
          return swift_unknownObjectRelease();
        }

        v11 = v156;
        if (v10 == v148)
        {
          goto LABEL_210;
        }
      }
    }

LABEL_210:
    sub_241025740(v6, v4);
    sub_240FF0CCC(&v176);
    goto LABEL_98;
  }

  v13 = isUniquelyReferenced_nonNull_native;
  v192 = v5;
  v14 = *(v4 + 16);
  v150 = v14;
  v15 = *(v14 + 16);
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = (v14 + 32);
  while (1)
  {
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[3];
    *v178 = v16[2];
    *&v178[16] = v19;
    v176 = v17;
    v177 = v18;
    v20 = v16[4];
    v21 = v16[5];
    v22 = v16[7];
    v181 = v16[6];
    v182 = v22;
    v179 = v20;
    v180 = v21;
    v23 = v16[8];
    v24 = v16[9];
    v25 = v16[11];
    v185 = v16[10];
    v186 = v25;
    v183 = v23;
    v184 = v24;
    if (!v176 && (BYTE8(v176) & 2) != 0 && BYTE1(v184) == 5)
    {
      break;
    }

    v16 += 12;
    if (!--v15)
    {
      goto LABEL_11;
    }
  }

  if (BYTE8(v185) != 1 || v12 == a2)
  {
LABEL_11:
    v6 = v12;
    if (v12 >= a2)
    {
      goto LABEL_12;
    }

LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    swift_unknownObjectRetain();
    sub_240FE0990(&v176, v174);
    sub_24101D604(v6, v4);
    sub_241047458();
    swift_unknownObjectRetain();
    v121 = swift_dynamicCastClass();
    if (!v121)
    {
      swift_unknownObjectRelease();
      v121 = MEMORY[0x277D84F90];
    }

    v122 = *(v121 + 16);

    v9 = v8 >> 1;
    if (__OFSUB__(v8 >> 1, v10))
    {
      goto LABEL_227;
    }

    if (v122 != (v8 >> 1) - v10)
    {
      goto LABEL_228;
    }

    v96 = swift_dynamicCastClass();
    if (!v96)
    {
      swift_unknownObjectRelease();
      v123 = MEMORY[0x277D84F90];
      goto LABEL_166;
    }

    goto LABEL_165;
  }

  v157 = *(&v184 + 1);
  v153 = isUniquelyReferenced_nonNull_native + 32;
  v155 = v185;
  v6 = a2 + 1;
  v97 = (isUniquelyReferenced_nonNull_native + (a2 << 6) + 64);
  while (1)
  {
    v98 = *(v97 - 2);
    if ((v98 & 0x6000000000000000) == 0x4000000000000000 && v98 == 0x4000000000000000 && (*(v97 - 1) | *v97 | *(v97 - 3) | *(v97 - 4)) == 0)
    {
      break;
    }

    ++v6;
    v97 += 8;
    if (v6 - v12 == 1)
    {
      goto LABEL_11;
    }
  }

  sub_240FE0990(&v176, v174);
  sub_24101D604(v157, v155);
  v168 = v13;

  if (v12 != v6)
  {
    v4 = v6;
    while (1)
    {
      v159 = v4;
      v100 = (v153 + (v4 << 6));
      v101 = v100[1];
      v170 = *v100;
      v171 = v101;
      *v172 = v100[2];
      *&v172[9] = *(v100 + 41);
      if ((v101 & 0x6000000000000000) != 0x2000000000000000)
      {
        break;
      }

      v163 = *(&v170 + 1);
      v165 = v170;
      v102 = *&v172[8];
      v103 = *&v172[16];
      v11 = v172[24];
      sub_241025690(&v170, v174);
      v104 = sub_241025748();
      v7 = MEMORY[0x245CD7300](1, &type metadata for InputOrigin.Element, v104);
      sub_2410475A8();
      MEMORY[0x245CD7AE0](1);
      MEMORY[0x245CD7AE0](v102);
      v9 = v103;
      if (v11 == 1)
      {
        v105 = 0;
      }

      else
      {
        MEMORY[0x245CD7AE0](1);
        v105 = v103;
      }

      MEMORY[0x245CD7AE0](v105);
      v106 = sub_2410475E8();
      v107 = -1 << *(v7 + 32);
      v8 = v106 & ~v107;
      if ((*(v7 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
      {
        v108 = ~v107;
        v4 = 24;
        while (1)
        {
          v109 = *(v7 + 48) + 24 * v8;
          if ((*(v109 + 17) & 1) == 0 && *v109 == v102)
          {
            if (*(v109 + 16))
            {
              if (v11)
              {
                goto LABEL_155;
              }
            }

            else if ((v11 & 1) == 0 && *(v109 + 8) == v9)
            {
              goto LABEL_155;
            }
          }

          v8 = (v8 + 1) & v108;
          if (((*(v7 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_133;
          }
        }
      }

      v4 = 24;
LABEL_133:
      v110 = swift_isUniquelyReferenced_nonNull_native();
      v175 = v7;
      v111 = *(v7 + 16);
      if (*(v7 + 24) <= v111)
      {
        if (v110)
        {
          sub_241032644(v111 + 1);
        }

        else
        {
          sub_2410338A0(v111 + 1);
        }

        v7 = v175;
        sub_2410475A8();
        MEMORY[0x245CD7AE0](1);
        MEMORY[0x245CD7AE0](v102);
        if (v11)
        {
          v112 = 0;
        }

        else
        {
          MEMORY[0x245CD7AE0](1);
          v112 = v9;
        }

        MEMORY[0x245CD7AE0](v112);
        v113 = sub_2410475E8();
        v114 = -1 << *(v7 + 32);
        v8 = v113 & ~v114;
        if ((*(v7 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
        {
          v115 = ~v114;
          v4 = 24;
          while (1)
          {
            v116 = *(v7 + 48) + 24 * v8;
            if ((*(v116 + 17) & 1) == 0 && *v116 == v102)
            {
              if (*(v116 + 16))
              {
                if (v11)
                {
                  goto LABEL_231;
                }
              }

              else if ((v11 & 1) == 0 && *(v116 + 8) == v9)
              {
                goto LABEL_231;
              }
            }

            v8 = (v8 + 1) & v115;
            if (((*(v7 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
            {
              goto LABEL_153;
            }
          }
        }

        v4 = 24;
      }

      else if ((v110 & 1) == 0)
      {
        sub_241033498();
        v4 = 24;
        v7 = v175;
      }

LABEL_153:
      *(v7 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v8;
      v117 = *(v7 + 48) + 24 * v8;
      *v117 = v102;
      *(v117 + 8) = v9;
      *(v117 + 16) = v11;
      *(v117 + 17) = 0;
      v118 = *(v7 + 16);
      v46 = __OFADD__(v118, 1);
      v119 = v118 + 1;
      if (v46)
      {
        goto LABEL_226;
      }

      *(v7 + 16) = v119;
LABEL_155:
      v120 = v192;
      (v157)(v7, 0, 0, 254, v165, v163, a4);
      v192 = v120;
      if (v120)
      {
        goto LABEL_214;
      }

      v4 = v159 + 1;

      sub_2410256EC(&v170);
      if (v159 + 1 == v12)
      {
        goto LABEL_157;
      }
    }

LABEL_230:
    __break(1u);
LABEL_231:
    result = sub_241047508();
    __break(1u);
    return result;
  }

LABEL_157:
  --v6;
  v13 = v168;

  sub_241025740(v157, v155);
  sub_240FF0CCC(&v176);
  v14 = v150;
  if (v6 < v10)
  {
    goto LABEL_158;
  }

LABEL_12:
  if (v12 < v6)
  {
    goto LABEL_221;
  }

  v4 = MEMORY[0x277D84F90];
  if (v6 != v10)
  {
    v72 = v13 + 32;
    v73 = v6 - 1;
    v74 = v10;
    do
    {
      v75 = (v72 + (v74 << 6));
      v9 = v74;
      while (1)
      {
        if (v74 < v10 || v9 >= v6)
        {
          goto LABEL_159;
        }

        *&v178[9] = *(v75 + 41);
        v76 = v75[1];
        v176 = *v75;
        v177 = v76;
        *v178 = v75[2];
        v11 = v9 + 1;
        if (v178[24])
        {
          break;
        }

        v75 += 4;
        ++v9;
        if (v6 == v11)
        {
          goto LABEL_14;
        }
      }

      v162 = v73;
      v165 = v72;
      v7 = v14;
      sub_241025690(&v176, v174);
      v77 = swift_isUniquelyReferenced_nonNull_native();
      v175 = v4;
      if ((v77 & 1) == 0)
      {
        sub_240FE41C0(0, *(v4 + 16) + 1, 1);
        v4 = v175;
      }

      v8 = *(v4 + 16);
      v78 = *(v4 + 24);
      if (v8 >= v78 >> 1)
      {
        sub_240FE41C0((v78 > 1), v8 + 1, 1);
        v4 = v175;
      }

      *(v4 + 16) = v8 + 1;
      v79 = (v4 + (v8 << 6));
      v80 = v176;
      v81 = v177;
      v82 = *v178;
      *(v79 + 73) = *&v178[9];
      v79[3] = v81;
      v79[4] = v82;
      v79[2] = v80;
      v74 = v9 + 1;
      v73 = v162;
      v72 = v165;
    }

    while (v162 != v9);
  }

LABEL_14:

  v26 = *(v4 + 16);
  *&v170 = v4;
  *(&v170 + 1) = v4 + 32;
  *&v171 = 0;
  *(&v171 + 1) = (2 * v26) | 1;
  if (!v26)
  {
  }

  v27 = v150;
  if (!*(v150 + 16))
  {
    goto LABEL_98;
  }

  v147 = *(v150 + 16);

  v28 = v147;
  v29 = v150 + 32;
  v30 = 0;
  v157 = (a3 + 32);
  v11 = MEMORY[0x277D84FA0];
  v155 = 1;
  while (1)
  {
    v31 = (v29 + 192 * v30);
    v32 = *v31;
    v33 = v31[1];
    v34 = v31[3];
    *v178 = v31[2];
    *&v178[16] = v34;
    v176 = v32;
    v177 = v33;
    v35 = v31[4];
    v36 = v31[5];
    v37 = v31[7];
    v181 = v31[6];
    v182 = v37;
    v179 = v35;
    v180 = v36;
    v38 = v31[8];
    v39 = v31[9];
    v40 = v31[11];
    v185 = v31[10];
    v186 = v40;
    v183 = v38;
    v184 = v39;
    if (v30 == v28)
    {
      goto LABEL_217;
    }

    if (!v176)
    {
      v158 = BYTE1(v184);
      if ((BYTE1(v184) | 4) == 4)
      {
        break;
      }
    }

LABEL_19:
    ++v30;
    v41 = *(v27 + 16);
    if (v30 == v41)
    {
      v84 = v27;

      goto LABEL_97;
    }

    if (v30 >= v41)
    {
      goto LABEL_218;
    }
  }

  v146 = v30;
  if (BYTE8(v185) != 1)
  {
    __break(1u);
    goto LABEL_230;
  }

  v42 = v185;
  v43 = *(&v184 + 1);
  v152 = BYTE8(v176);
  sub_240FE0990(&v176, v174);
  v161 = v43;
  v165 = v42;
  sub_24101D604(v43, v42);
  while (1)
  {
    sub_24102300C(v158 == 4, &v170, v187);
    if ((v188 & 0x7FFFFFFFFFFFFF3ELL) == 0x7FFFFFF3ELL)
    {

      v84 = v150;

      sub_241025740(v161, v165);
      sub_240FF0CCC(&v176);
LABEL_97:
      v85 = *(v84 + 16);
      v86 = (v150 + 32);
      if (v85)
      {
        while (1)
        {
          v87 = *v86;
          v88 = v86[1];
          v89 = v86[3];
          *v178 = v86[2];
          *&v178[16] = v89;
          v176 = v87;
          v177 = v88;
          v90 = v86[4];
          v91 = v86[5];
          v92 = v86[7];
          v181 = v86[6];
          v182 = v92;
          v179 = v90;
          v180 = v91;
          v93 = v86[8];
          v94 = v86[9];
          v95 = v86[11];
          v185 = v86[10];
          v186 = v95;
          v183 = v93;
          v184 = v94;
          if (!v176 && (BYTE8(v176) & 2) != 0 && BYTE1(v184) == 6)
          {
            break;
          }

          v86 += 12;
          if (!--v85)
          {
            goto LABEL_98;
          }
        }

        if (BYTE8(v185) == 1)
        {
          v6 = *(&v184 + 1);
          v4 = v185;
          swift_beginAccess();
          v165 = *(&v170 + 1);
          v7 = v170;
          v8 = *(&v171 + 1);
          v10 = v171;
          if ((BYTE8(v171) & 1) == 0)
          {
            sub_240FE0990(&v176, v174);
            sub_24101D604(v6, v4);
            v9 = v8 >> 1;
            goto LABEL_107;
          }

          goto LABEL_160;
        }
      }

LABEL_98:

      return swift_unknownObjectRelease();
    }

    v10 = v189;
    v7 = v190;
    v9 = v191;
    sub_240FE07E8(v187, &qword_27E51F830, &qword_24104A550);
    if (v10 < 0)
    {
      break;
    }

    if (v10 >= *(a3 + 16))
    {
      goto LABEL_213;
    }

    v6 = v11;
    v48 = &v157[16 * v10];
    v49 = *v48;
    v50 = *(v48 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F3F8, &unk_241048020);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_241047BF0;
    *(v51 + 32) = v10;
    *(v51 + 40) = v7;
    *(v51 + 48) = v9 & 1;

    v8 = sub_24102AECC(v51);
    swift_setDeallocating();
    swift_deallocClassInstance();
    v52 = v192;
    v161(v8, 0, 0, 254, v49, v50, a4);
    v192 = v52;
    if (v52)
    {

      sub_241025740(v161, v165);
      sub_240FF0CCC(&v176);

      goto LABEL_98;
    }

    v11 = v6;
    if (*(v6 + 16))
    {
      sub_2410475A8();
      MEMORY[0x245CD7AE0](1);
      MEMORY[0x245CD7AE0](v10);
      if (v9)
      {
        v53 = 0;
      }

      else
      {
        MEMORY[0x245CD7AE0](1);
        v53 = v7;
      }

      MEMORY[0x245CD7AE0](v53);
      v4 = v174;
      v54 = sub_2410475E8();
      v55 = -1 << *(v6 + 32);
      v56 = v54 & ~v55;
      if ((*(v6 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56))
      {
        v57 = ~v55;
        do
        {
          v58 = *(v6 + 48) + 24 * v56;
          if ((*(v58 + 17) & 1) == 0 && *v58 == v10)
          {
            if (*(v58 + 16))
            {
              if (v9)
              {
                goto LABEL_29;
              }
            }

            else if ((v9 & 1) == 0 && *(v58 + 8) == v7)
            {
              goto LABEL_29;
            }
          }

          v56 = (v56 + 1) & v57;
        }

        while (((*(v6 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) != 0);
      }
    }

    sub_2410475A8();
    MEMORY[0x245CD7AE0](1);
    MEMORY[0x245CD7AE0](v10);
    if (v9)
    {
      v59 = 0;
    }

    else
    {
      MEMORY[0x245CD7AE0](1);
      v59 = v7;
    }

    MEMORY[0x245CD7AE0](v59);
    v4 = v174;
    v60 = sub_2410475E8();
    v61 = -1 << *(v6 + 32);
    v62 = v60 & ~v61;
    if ((*(v6 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62))
    {
      v63 = ~v61;
      do
      {
        v64 = *(v6 + 48) + 24 * v62;
        if ((*(v64 + 17) & 1) == 0 && *v64 == v10)
        {
          if (*(v64 + 16))
          {
            if (v9)
            {
              goto LABEL_29;
            }
          }

          else if ((v9 & 1) == 0 && *(v64 + 8) == v7)
          {
            goto LABEL_29;
          }
        }

        v62 = (v62 + 1) & v63;
      }

      while (((*(v6 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) != 0);
    }

    v65 = swift_isUniquelyReferenced_nonNull_native();
    v175 = v6;
    v66 = *(v6 + 16);
    if (*(v6 + 24) > v66)
    {
      if ((v65 & 1) == 0)
      {
        v4 = &v175;
        sub_241033498();
        v11 = v175;
      }
    }

    else
    {
      if (v65)
      {
        sub_241032644(v66 + 1);
      }

      else
      {
        sub_2410338A0(v66 + 1);
      }

      v11 = v175;
      sub_2410475A8();
      MEMORY[0x245CD7AE0](1);
      MEMORY[0x245CD7AE0](v10);
      if (v9)
      {
        v67 = 0;
      }

      else
      {
        MEMORY[0x245CD7AE0](1);
        v67 = v7;
      }

      MEMORY[0x245CD7AE0](v67);
      v4 = v174;
      v68 = sub_2410475E8();
      v69 = -1 << *(v11 + 32);
      v62 = v68 & ~v69;
      if ((*(v11 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62))
      {
        v70 = ~v69;
        do
        {
          v71 = *(v11 + 48) + 24 * v62;
          if ((*(v71 + 17) & 1) == 0 && *v71 == v10)
          {
            if (*(v71 + 16))
            {
              if (v9)
              {
                goto LABEL_231;
              }
            }

            else if ((v9 & 1) == 0 && *(v71 + 8) == v7)
            {
              goto LABEL_231;
            }
          }

          v62 = (v62 + 1) & v70;
        }

        while (((*(v11 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) != 0);
      }
    }

    *(v11 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v62;
    v44 = *(v11 + 48) + 24 * v62;
    *v44 = v10;
    *(v44 + 8) = v7;
    *(v44 + 16) = v9 & 1;
    v45 = *(v11 + 16);
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (v46)
    {
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
      goto LABEL_220;
    }

    *(v11 + 16) = v47;
LABEL_29:
    if ((v152 & 2) == 0)
    {
      sub_241025740(v161, v165);
      sub_240FF0CCC(&v176);
      v27 = v150;
      v29 = v150 + 32;
      v28 = v147;
      v30 = v146;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:

  sub_241025740(v157, v155);

  sub_2410256EC(&v170);
  return sub_240FF0CCC(&v176);
}

uint64_t sub_24102300C@<X0>(char a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = 0x7FFFFFF3ELL;
  result = swift_beginAccess();
  v8 = a2[2];
  v9 = a2[3] >> 1;
  v10 = 0uLL;
  v11 = v9 - v8;
  if (v9 == v8)
  {
LABEL_9:
    v20 = 0;
    v21 = 0uLL;
    v22 = 0uLL;
LABEL_11:
    *a3 = v10;
    *(a3 + 16) = v6;
    *(a3 + 24) = v21;
    *(a3 + 40) = v22;
    *(a3 + 56) = v20;
  }

  else
  {
    if (v8 > v9)
    {
      v9 = a2[2];
    }

    v12 = v9 - v8;
    v13 = v8 + 1;
    v14 = v8 << 6;
    while (v12)
    {
      v15 = (a2[1] + v14);
      v17 = v15[1];
      v16 = v15[2];
      v18 = *(v15 + 41);
      v27 = *v15;
      *v28 = v17;
      *&v28[25] = v18;
      *&v28[16] = v16;
      a2[2] = v13;
      v19 = *v28;
      if (*v28 & 0x6000000000000000) == 0x2000000000000000 || (a1)
      {
        v24 = *&v28[8];
        v25 = v27;
        v23 = *&v28[24];
        v20 = v28[40];
        result = sub_241025690(&v27, v26);
        v22 = v23;
        v21 = v24;
        v10 = v25;
        v6 = v19;
        goto LABEL_11;
      }

      --v12;
      ++v13;
      v14 += 64;
      if (!--v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24102313C@<X0>(_OWORD *a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = v1[4];
  v128 = v1 + 4;
  v7 = v1[6];
  v124 = v1[5];
  v8 = *v1;
  v9 = v4[1];
  v122 = v6;

  v125 = v9;
  v123 = v8;
  if (sub_240FE6B54(v8, v9))
  {
    v10 = 1;
  }

  else
  {
    v11 = v4[2];
    v12 = (v11 + 177);
    v13 = *(v11 + 16) + 1;
    do
    {
      v10 = --v13 != 0;
      if (!v13)
      {
        break;
      }

      v14 = v12;
      v12 += 192;
    }

    while (*(v14 - 145) || (*(v14 - 137) & 2) == 0 || *v14 != 4);
  }

  v126 = v10;
  v15 = MEMORY[0x277D84F90];
  *&v174 = sub_240FFBFCC(MEMORY[0x277D84F90]);
  *(&v174 + 1) = v7;
  v175 = v15;
  v176 = v15;
  v173 = MEMORY[0x277D84FA0];
  v16 = v4[2];
  v17 = v4[3];

  sub_24101FCCC(&v174, v16, v17);
  if (v3)
  {

    v18 = v122;

    goto LABEL_98;
  }

  *&v133 = 0;
  v18 = v122;
  v20 = *(v122 + 16);
  v21 = v124;
  if (v20 < v124)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  if (v124 < 0)
  {
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    result = sub_241047508();
    __break(1u);
    return result;
  }

  v115 = a1;
  if (v124 != v20)
  {
    v121 = v17;
    v118 = v16;

    if (v124 < v20)
    {
      v22 = v124;
      v120 = v125 + 16;
      v117 = v118 + 32;
      v114 = xmmword_241047BF0;
      v23 = v122;
      v119 = v4;
      v127 = v7;
      while (1)
      {
        v24 = (v23 + (v22 << 6));
        v25 = v24[2];
        v26 = v24[3];
        v27 = v24[4];
        *&v172[9] = *(v24 + 73);
        v171 = v26;
        *v172 = v27;
        v170 = v25;
        sub_241025690(&v170, &v157);
        swift_unknownObjectRelease();
        v28 = v170;
        v29 = *(&v171 + 1);
        v30 = v171;
        v31 = *v172;
        v32 = *&v172[8];
        v33 = *&v172[16];
        v34 = v172[24];
        v4[5] = v22 + 1;
        v35 = MEMORY[0x277D84FA0];
        v169 = MEMORY[0x277D84FA0];
        v36 = (v30 >> 61) & 3;
        if (v36)
        {
          break;
        }

        v130 = v33;
        LODWORD(v132) = v34;
        v177 = v28;
        v178 = v30;
        v179 = v29;
        v180 = v31;
        v53 = v121;
        if (*(v121 + 16))
        {
          v131 = *(&v28 + 1);
          v181 = v28;
          v54 = sub_24102FC34(v28, *(&v28 + 1), v30);
          if (v55)
          {
            v56 = *(*(v53 + 56) + 8 * v54);
            if ((v56 & 0x8000000000000000) != 0)
            {
              goto LABEL_110;
            }

            if (v56 >= *(v118 + 16))
            {
              goto LABEL_111;
            }

            v57 = (v117 + 192 * v56);
            v58 = *v57;
            v59 = v57[1];
            v60 = v57[3];
            v159 = v57[2];
            v160 = v60;
            v157 = v58;
            v158 = v59;
            v61 = v57[4];
            v62 = v57[5];
            v63 = v57[7];
            v163 = v57[6];
            v164 = v63;
            v161 = v61;
            v162 = v62;
            v64 = v57[8];
            v65 = v57[9];
            v66 = v57[11];
            v167 = v57[10];
            v168 = v66;
            v165 = v64;
            v166 = v65;
            v67 = v167;
            if (BYTE8(v167))
            {
              v153 = v57[8];
              v154 = v57[9];
              v155 = v57[10];
              v156 = v57[11];
              v149 = v57[4];
              v150 = v57[5];
              v151 = v57[6];
              v152 = v57[7];
              v145 = *v57;
              v146 = v57[1];
              v147 = v57[2];
              v148 = v57[3];
              v68 = *(&v166 + 1);
              sub_240FE0990(&v157, &v135);
              sub_24101D604(v68, v67);
              v69 = v133;
              sub_24101FFEC(&v145, &v177, v32, v130, v132, v68, v67, &v174, &v169);
              *&v133 = v69;
              if (!v69)
              {
                sub_2410256EC(&v170);
                sub_240FF0CCC(&v157);
                sub_241025740(v68, v67);
LABEL_35:
                v7 = v127;
                goto LABEL_47;
              }

              sub_2410256EC(&v170);

              sub_240FF0CCC(&v157);
              sub_241025740(v68, v67);
              sub_24102AB88(v169);

              sub_24102EFE4(v111);

              v7 = v127;
              v18 = v122;
LABEL_98:
              v103 = v124;
              v4[4] = v18;
              v4[5] = v103;
              v4[6] = v7;
              return result;
            }

            v129 = *(&v166 + 1);
            v116 = v167;
            if ((v30 & 0x8000000000000000) != 0)
            {
              sub_240FE0990(&v157, &v145);
              sub_24101D604(v129, v116);
              v107 = v131;
              sub_240FF0D90(v181, v131, v30);

              sub_2410256EC(&v170);
              LOBYTE(v135) = 0;
              sub_240FDEE00();
              swift_allocError();
              v108 = v130;
              *v109 = v32;
              *(v109 + 8) = v108;
              *(v109 + 16) = v132;
              *(v109 + 17) = 0;
              *(v109 + 24) = v181;
              *(v109 + 32) = v107;
              *(v109 + 40) = v30;
              *(v109 + 48) = v29;
              *(v109 + 56) = v31;
              *(v109 + 64) = v145;
              *(v109 + 80) = 8;
              swift_willThrow();
              sub_241025740(v129, v116);
              sub_240FF0CCC(&v157);
              v110 = MEMORY[0x277D84FA0];
              sub_24102AB88(MEMORY[0x277D84FA0]);
              sub_24102EFE4(v110);

LABEL_103:
              v7 = v127;
              v18 = v122;
              goto LABEL_98;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F3F8, &unk_241048020);
            v76 = swift_allocObject();
            *(v76 + 16) = v114;
            v77 = v130;
            *(v76 + 32) = v32;
            *(v76 + 40) = v77;
            *(v76 + 48) = v132;
            sub_240FE0990(&v157, &v145);
            sub_24101D604(v129, v116);
            v78 = sub_24102AECC(v76);
            swift_setDeallocating();
            swift_deallocClassInstance();
            v79 = v133;
            v129(v78, v181, v131, v30, &v174);
            if (v79)
            {
              sub_2410256EC(&v170);

              sub_241025740(v129, v116);
              sub_240FF0CCC(&v157);

              v112 = MEMORY[0x277D84FA0];
              sub_24102AB88(MEMORY[0x277D84FA0]);
              sub_24102EFE4(v112);

              goto LABEL_103;
            }

            sub_2410256EC(&v170);

            sub_2410475A8();
            MEMORY[0x245CD7AE0](1);
            MEMORY[0x245CD7AE0](v32);
            v7 = v127;
            *&v133 = 0;
            if (v132)
            {
              v80 = 0;
            }

            else
            {
              MEMORY[0x245CD7AE0](1);
              v80 = v130;
            }

            MEMORY[0x245CD7AE0](v80);
            v81 = sub_2410475E8();
            v82 = -1 << *(v35 + 32);
            v83 = v81 & ~v82;
            if ((*(v35 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v83))
            {
              v84 = ~v82;
              do
              {
                v85 = *(v35 + 48) + 24 * v83;
                if ((*(v85 + 17) & 1) == 0 && *v85 == v32)
                {
                  if (*(v85 + 16))
                  {
                    if (v132)
                    {
                      goto LABEL_68;
                    }
                  }

                  else if ((v132 & 1) == 0 && *(v85 + 8) == v130)
                  {
LABEL_68:
                    sub_241025740(v129, v116);
                    sub_240FF0CCC(&v157);
                    goto LABEL_47;
                  }
                }

                v83 = (v83 + 1) & v84;
              }

              while (((*(v35 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v83) & 1) != 0);
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v135 = v35;
            v87 = *(v35 + 16);
            if (*(v35 + 24) <= v87)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                sub_241032644(v87 + 1);
              }

              else
              {
                sub_2410338A0(v87 + 1);
              }

              v89 = v129;
              v88 = v135;
              sub_2410475A8();
              MEMORY[0x245CD7AE0](1);
              MEMORY[0x245CD7AE0](v32);
              if (v132)
              {
                v90 = 0;
              }

              else
              {
                MEMORY[0x245CD7AE0](1);
                v90 = v130;
              }

              MEMORY[0x245CD7AE0](v90);
              v91 = sub_2410475E8();
              v92 = -1 << *(v88 + 32);
              v83 = v91 & ~v92;
              if ((*(v88 + 56 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83))
              {
                v93 = ~v92;
                v94 = v132;
                v95 = v130;
                while (1)
                {
                  v96 = *(v88 + 48) + 24 * v83;
                  if ((*(v96 + 17) & 1) == 0 && *v96 == v32)
                  {
                    if (*(v96 + 16))
                    {
                      if (v132)
                      {
                        goto LABEL_113;
                      }
                    }

                    else if ((v132 & 1) == 0 && *(v96 + 8) == v130)
                    {
                      goto LABEL_113;
                    }
                  }

                  v83 = (v83 + 1) & v93;
                  if (((*(v88 + 56 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83) & 1) == 0)
                  {
                    goto LABEL_90;
                  }
                }
              }
            }

            else
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v88 = v35;
              }

              else
              {
                sub_241033498();
                v88 = v135;
              }

              v89 = v129;
            }

            v94 = v132;
            v95 = v130;
LABEL_90:
            *(v88 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v83;
            v97 = *(v88 + 48) + 24 * v83;
            *v97 = v32;
            *(v97 + 8) = v95;
            *(v97 + 16) = v94;
            *(v97 + 17) = 0;
            v98 = *(v88 + 16);
            v99 = __OFADD__(v98, 1);
            v100 = v98 + 1;
            if (v99)
            {
              goto LABEL_112;
            }

            *(v88 + 16) = v100;
            sub_241025740(v89, v116);
            sub_240FF0CCC(&v157);
            v169 = v88;
            v74 = v88;
            goto LABEL_48;
          }
        }

        if (v126)
        {
          v70 = sub_241034FE4();
          sub_2410256EC(&v170);
          v71 = *(v70 + 16);

          v7 = v127;
          if (!v71)
          {
            goto LABEL_93;
          }
        }

        else
        {
          sub_2410256EC(&v170);
          v7 = v127;
        }

        sub_24102AB88(v35);
        v72 = v35;
LABEL_49:
        sub_24102EFE4(v72);
        v23 = v4[4];
        v22 = v4[5];
        v75 = *(v23 + 16);
        if (v75 < v22)
        {
          goto LABEL_106;
        }

        if (v22 < 0)
        {
          goto LABEL_107;
        }

        if (v22 == v75)
        {
          goto LABEL_95;
        }

        if (v22 >= v75)
        {
          goto LABEL_104;
        }
      }

      if (v36 != 1)
      {
        goto LABEL_35;
      }

      v131 = *(&v28 + 1);
      v181 = v28;
      (*(v125 + 16))(&v145);
      v163 = v151;
      v164 = v152;
      v165 = v153;
      v159 = v147;
      v160 = v148;
      v161 = v149;
      v162 = v150;
      v157 = v145;
      v158 = v146;
      v140 = v150;
      v141 = v151;
      v142 = v152;
      v143 = v153;
      v137 = v147;
      v138 = v148;
      v139 = v149;
      *&v166 = v154;
      v144 = v154;
      v135 = v145;
      v136 = v146;
      CommandConfiguration.subcommands.getter();
      v38 = v37;
      sub_240FE724C(&v157);
      v130 = *(v38 + 2);
      if (v130)
      {
        v39 = 0;
        v40 = (v38 + 40);
        v129 = v38;
        while (1)
        {
          if (v39 >= *(v38 + 2))
          {
            goto LABEL_105;
          }

          v42 = *(v40 - 1);
          v41 = *v40;
          v43 = (*(*v40 + 24))(v42, *v40);
          v45 = v181;
          v46 = v131;
          if (v43 == v181 && v131 == v44)
          {
            break;
          }

          *&v132 = v39;
          v48 = sub_241047428();

          if (v48 & 1) != 0 || ((*(v41 + 16))(&v135, v42, v41), v151 = v141, v152 = v142, v153 = v143, *&v154 = v144, v147 = v137, v148 = v138, v149 = v139, v150 = v140, v145 = v135, v146 = v136, v49 = v144, , v50 = sub_240FE724C(&v145), v134[0] = v45, v134[1] = v46, MEMORY[0x28223BE20](v50), v113[2] = v134, v51 = v133, v52 = sub_241009A78(sub_240FF7448, v113, v49), *&v133 = v51, , (v52))
          {

            sub_2410256EC(&v170);
            goto LABEL_43;
          }

          v39 = v132 + 1;
          v40 += 2;
          v38 = v129;
          if (v130 == v132 + 1)
          {
            goto LABEL_27;
          }
        }

        sub_2410256EC(&v170);
LABEL_43:
        v73 = sub_240FE6A1C(v42, v41);
        v4 = v119;
        v7 = v127;
        v74 = MEMORY[0x277D84FA0];
        if (!v73 && sub_240FE6B54(v123, v125))
        {
          goto LABEL_48;
        }

        if (sub_240FE6A1C(v42, v41))
        {
          goto LABEL_94;
        }

        goto LABEL_46;
      }

LABEL_27:

      sub_2410256EC(&v170);
      v4 = v119;
      v7 = v127;
LABEL_46:
      if (v126)
      {
LABEL_93:
        v74 = MEMORY[0x277D84FA0];
LABEL_94:
        sub_24102AB88(v74);
        sub_24102EFE4(v74);
LABEL_95:
        v21 = v124;
        v18 = v122;
        goto LABEL_96;
      }

LABEL_47:
      v74 = v169;
LABEL_48:
      sub_24102AB88(v74);
      v72 = v74;
      goto LABEL_49;
    }

LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

LABEL_96:
  *&v157 = v18;
  *(&v157 + 1) = v21;
  *&v158 = v7;
  v101 = v173;

  sub_24102AB88(v101);

  v102 = v133;
  sub_241021DD8(v157, *(&v157 + 1), v158, &v174);
  if (v102)
  {

    goto LABEL_98;
  }

  v104 = v176;
  v132 = v174;
  v133 = v175;

  v4[4] = v18;
  v4[5] = v21;
  v4[6] = v7;
  v105 = v115;
  v106 = v133;
  *v115 = v132;
  v105[1] = v106;
  *(v105 + 4) = v104;
  return result;
}

uint64_t sub_241023FC4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_241024E54(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_241024030(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_241024030(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_241047348();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_241046D48();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2410241EC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_241024128(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_241024128(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3 - 24;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      if (*(v8 + 41))
      {
LABEL_4:
        ++a3;
        v5 += 24;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      v9 = v8 + 24;
      v10 = *(v8 + 24);
      v11 = *(v8 + 32);
      v12 = *(v8 + 40);
      if ((*(v8 + 17) & 1) == 0 && v10 >= *v8)
      {
        if (v10 != *v8)
        {
          goto LABEL_4;
        }

        if (*(v8 + 40))
        {
          if (*(v8 + 16))
          {
            goto LABEL_4;
          }
        }

        else if ((*(v8 + 16) & 1) != 0 || v11 >= *(v8 + 8))
        {
          goto LABEL_4;
        }
      }

      if (!v4)
      {
        break;
      }

      v13 = *v8;
      v14 = *(v8 + 16);
      *v8 = v10;
      *(v8 + 8) = v11;
      *(v8 + 16) = v12;
      *(v8 + 17) = 0;
      v8 -= 24;
      *v9 = v13;
      *(v9 + 16) = v14;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2410241EC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v104 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_120:
    v105 = *v104;
    if (!*v104)
    {
      goto LABEL_160;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_122:
      v96 = (v8 + 16);
      v97 = *(v8 + 16);
      if (v97 >= 2)
      {
        while (*a3)
        {
          v98 = (v8 + 16 * v97);
          v99 = *v98;
          v100 = &v96[2 * v97];
          v101 = v100[1];
          sub_241024894((*a3 + 24 * *v98), (*a3 + 24 * *v100), *a3 + 24 * v101, v105);
          if (v5)
          {
          }

          if (v101 < v99)
          {
            goto LABEL_146;
          }

          if (v97 - 2 >= *v96)
          {
            goto LABEL_147;
          }

          *v98 = v99;
          v98[1] = v101;
          v102 = *v96 - v97;
          if (*v96 < v97)
          {
            goto LABEL_148;
          }

          v97 = *v96 - 1;
          result = memmove(v100, v100 + 2, 16 * v102);
          *v96 = v97;
          if (v97 <= 1)
          {
          }
        }

        goto LABEL_158;
      }
    }

LABEL_154:
    result = sub_241024BE8(v8);
    v8 = result;
    goto LABEL_122;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v103 = a4;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      ++v7;
      goto LABEL_40;
    }

    v11 = *a3;
    v12 = *a3 + 24 * v10;
    if (*(v12 + 17))
    {
LABEL_6:
      v13 = 0;
      goto LABEL_11;
    }

    v14 = v11 + 24 * v7;
    if ((*(v14 + 17) & 1) != 0 || *v12 < *v14)
    {
      v13 = 1;
    }

    else
    {
      if (*v12 != *v14)
      {
        goto LABEL_6;
      }

      v92 = *(v14 + 8);
      v93 = *(v14 + 16);
      v94 = (*(v12 + 8) < v92) & ~v93;
      v95 = v93 ^ 1;
      v13 = (*(v12 + 16) & 1) != 0 ? v95 : v94;
    }

LABEL_11:
    v7 += 2;
    if (v9 + 2 < v6)
    {
      v10 = v6 - 1;
      v15 = v11 + 24 * v9 + 32;
      v16 = v15;
      while (1)
      {
        v18 = *(v16 + 24);
        v16 += 24;
        v17 = v18;
        if ((*(v15 + 33) & 1) == 0)
        {
          if ((*(v15 + 9) & 1) != 0 || (v19 = *(v15 + 16), v20 = *(v15 - 8), v19 < v20))
          {
LABEL_18:
            if ((v13 & 1) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_14;
          }

          if (v19 == v20)
          {
            if (*(v15 + 32))
            {
              if ((*(v15 + 8) & 1) == 0)
              {
                goto LABEL_18;
              }
            }

            else if ((*(v15 + 8) & 1) == 0 && v17 < *v15)
            {
              goto LABEL_18;
            }
          }
        }

        if (v13)
        {
          v10 = v7 - 1;
          if (v7 < v9)
          {
            goto LABEL_151;
          }

LABEL_32:
          if (v9 <= v10)
          {
            v21 = 24 * v7 - 24;
            v22 = 24 * v9;
            v23 = v7;
            v24 = v9;
            do
            {
              if (v24 != --v23)
              {
                v31 = *a3;
                if (!*a3)
                {
                  goto LABEL_157;
                }

                v25 = (v31 + v22);
                v26 = (v31 + v21);
                v27 = *(v25 + 16);
                v28 = *(v25 + 17);
                v29 = *v25;
                v30 = *(v26 + 2);
                *v25 = *v26;
                *(v25 + 2) = v30;
                *v26 = v29;
                *(v26 + 16) = v27;
                *(v26 + 17) = v28;
              }

              ++v24;
              v21 -= 24;
              v22 += 24;
            }

            while (v24 < v23);
            v6 = a3[1];
          }

          goto LABEL_40;
        }

LABEL_14:
        ++v7;
        v15 = v16;
        if (v6 == v7)
        {
          v7 = v6;
          break;
        }
      }
    }

    if (v13)
    {
      if (v7 < v9)
      {
        goto LABEL_151;
      }

      goto LABEL_32;
    }

LABEL_40:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_150;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_65:
    if (v7 < v9)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_240FE34E8(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v45 = *(v8 + 16);
    v44 = *(v8 + 24);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_240FE34E8((v44 > 1), v45 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v46;
    v47 = v8 + 32;
    v48 = (v8 + 32 + 16 * v45);
    *v48 = v9;
    v48[1] = v7;
    v105 = *v104;
    if (!*v104)
    {
      goto LABEL_159;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 32);
          v51 = *(v8 + 40);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_85:
          if (v53)
          {
            goto LABEL_136;
          }

          v66 = (v8 + 16 * v46);
          v68 = *v66;
          v67 = v66[1];
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_138;
          }

          v72 = (v47 + 16 * v49);
          v74 = *v72;
          v73 = v72[1];
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_141;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_143;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_107;
          }

          goto LABEL_100;
        }

        if (v46 < 2)
        {
          goto LABEL_144;
        }

        v76 = (v8 + 16 * v46);
        v78 = *v76;
        v77 = v76[1];
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_100:
        if (v71)
        {
          goto LABEL_140;
        }

        v79 = (v47 + 16 * v49);
        v81 = *v79;
        v80 = v79[1];
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_142;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_107:
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
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
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }

        if (!*a3)
        {
          goto LABEL_156;
        }

        v87 = (v47 + 16 * (v49 - 1));
        v88 = *v87;
        v89 = (v47 + 16 * v49);
        v90 = v89[1];
        sub_241024894((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v105);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_131;
        }

        if (v49 > *(v8 + 16))
        {
          goto LABEL_132;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *(v8 + 16);
        if (v49 >= v91)
        {
          goto LABEL_133;
        }

        v46 = v91 - 1;
        result = memmove((v47 + 16 * v49), v89 + 2, 16 * (v91 - 1 - v49));
        *(v8 + 16) = v91 - 1;
        if (v91 <= 2)
        {
          goto LABEL_3;
        }
      }

      v54 = v47 + 16 * v46;
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_134;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_135;
      }

      v61 = (v8 + 16 * v46);
      v63 = *v61;
      v62 = v61[1];
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_137;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_139;
      }

      if (v65 >= v57)
      {
        v83 = (v47 + 16 * v49);
        v85 = *v83;
        v84 = v83[1];
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_145;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_107;
      }

      goto LABEL_85;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v103;
    if (v7 >= v6)
    {
      goto LABEL_120;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_152;
  }

  if (v9 + a4 < v6)
  {
    v6 = v9 + a4;
  }

  if (v6 < v9)
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  if (v7 == v6)
  {
    goto LABEL_65;
  }

  v32 = *a3;
  v33 = *a3 + 24 * v7 - 24;
  v34 = v9 - v7;
LABEL_50:
  v35 = v34;
  v36 = v33;
  while (1)
  {
    if (*(v36 + 41))
    {
LABEL_49:
      ++v7;
      v33 += 24;
      --v34;
      if (v7 == v6)
      {
        v7 = v6;
        goto LABEL_65;
      }

      goto LABEL_50;
    }

    v37 = v36 + 24;
    v38 = *(v36 + 24);
    v39 = *(v36 + 32);
    v40 = *(v36 + 40);
    if ((*(v36 + 17) & 1) == 0 && v38 >= *v36)
    {
      if (v38 != *v36)
      {
        goto LABEL_49;
      }

      if (*(v36 + 40))
      {
        if (*(v36 + 16))
        {
          goto LABEL_49;
        }
      }

      else if ((*(v36 + 16) & 1) != 0 || v39 >= *(v36 + 8))
      {
        goto LABEL_49;
      }
    }

    if (!v32)
    {
      break;
    }

    v41 = *v36;
    v42 = *(v36 + 16);
    *v36 = v38;
    *(v36 + 8) = v39;
    *(v36 + 16) = v40;
    *(v36 + 17) = 0;
    v36 -= 24;
    *v37 = v41;
    *(v37 + 16) = v42;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
  return result;
}
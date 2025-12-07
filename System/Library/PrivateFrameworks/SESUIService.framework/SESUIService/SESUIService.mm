__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2628DC750(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2628DC770(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_27FF2E7D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FF2E7D0);
    }
  }
}

uint64_t sub_2628DC7FC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_26294C8A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7E0, &unk_26294F980);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2628DC9E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_26294C8A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7E0, &unk_26294F980);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for ViennaView(uint64_t a1)
{
  result = qword_27FF2E7E8;
  if (!qword_27FF2E7E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2628DCBC4(uint64_t a1)
{
  sub_26294C8A8();
  if (v1 <= 0x3F)
  {
    sub_2628DCCD8(319);
    if (v2 <= 0x3F)
    {
      sub_2628DCD6C(319, &qword_27FF2E808, MEMORY[0x277CDD968], MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_2628DCD6C(319, &qword_27FF2E810, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2628DCCD8(uint64_t a1)
{
  if (!qword_27FF2E7F8)
  {
    type metadata accessor for SEStorageManagementController(255);
    sub_2628DF90C(&qword_27FF2E800, type metadata accessor for SEStorageManagementController, &protocol conformance descriptor for SEStorageManagementController);
    v1 = sub_26294D1A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF2E7F8);
    }
  }
}

void sub_2628DCD6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2628DCDEC()
{
  v0 = sub_26294C828();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - v5;
  sub_26294C848();
  sub_26294C848();
  v7 = MEMORY[0x26672BE40](v6, v4);
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t sub_2628DCF20@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = type metadata accessor for ViennaView(0);
  v28 = *(v2 - 8);
  v29 = v2 - 8;
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E818, &qword_26294E870);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E820, &qword_26294E878);
  v8 = *(v7 - 8);
  v30 = v7;
  v31 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  *v6 = sub_26294D3C8();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E828, &qword_26294E880);
  sub_2628DD360(&v6[*(v11 + 44)]);
  v12 = v1;
  v33 = sub_26294C868();
  v34 = v13;
  v14 = sub_2628DFD0C(&qword_27FF2E830, &qword_27FF2E818, &qword_26294E870, MEMORY[0x277CE1198]);
  v15 = sub_2628DF230();
  sub_26294D708();

  sub_2628DF6F0(v6, &qword_27FF2E818, &qword_26294E870);
  sub_26294C7A8();
  sub_2628DF284(v1, &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v17 = swift_allocObject();
  sub_2628DF2EC(&v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  type metadata accessor for ViennaAppCategoryView(0);
  v33 = v4;
  v34 = MEMORY[0x277D837D0];
  v35 = v14;
  v36 = v15;
  swift_getOpaqueTypeConformance2();
  sub_2628DF90C(&qword_27FF2E848, MEMORY[0x277D48E58], MEMORY[0x277D48E68]);
  sub_2628DF90C(&qword_27FF2E850, type metadata accessor for ViennaAppCategoryView, &unk_26294FE18);
  v18 = v32;
  v19 = v30;
  sub_26294D778();

  (*(v31 + 8))(v10, v19);
  v20 = *(v12 + *(v29 + 28) + 8);
  type metadata accessor for SEStorageManagementController(0);
  sub_2628DF90C(&qword_27FF2E800, type metadata accessor for SEStorageManagementController, &protocol conformance descriptor for SEStorageManagementController);
  v21 = v20;
  v22 = sub_26294D178();
  v24 = v23;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E858, &qword_26294E888);
  v26 = (v18 + *(result + 36));
  *v26 = v22;
  v26[1] = v24;
  return result;
}

uint64_t sub_2628DD360@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v2 = sub_26294C5F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E860, &qword_26294E8C0);
  v20[0] = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v21 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E868, &qword_26294E8C8);
  sub_2628DF374();
  sub_26294D5E8();
  v9 = [objc_opt_self() secondarySystemBackgroundColor];
  v22 = sub_26294D838();
  *&v8[*(v6 + 36)] = sub_26294D9D8();
  (*(v3 + 104))(v5, *MEMORY[0x277D48DF8], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26294E7D0;
  v11 = sub_26294C878();
  v13 = v12;
  v14 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v15 = sub_2628DF5B8();
  *(v10 + 64) = v15;
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  sub_26294C888();
  v17 = sub_2629205EC(v16);
  *(v10 + 96) = v14;
  *(v10 + 104) = v15;
  *(v10 + 72) = v17;
  *(v10 + 80) = v18;
  sub_26294C6B8();

  (*(v3 + 8))(v5, v2);
  sub_2628DF60C();
  sub_26294D798();

  return sub_2628DF6F0(v8, &qword_27FF2E860, &qword_26294E8C0);
}

uint64_t sub_2628DD620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26294C7A8();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = *(a2 + *(type metadata accessor for ViennaView(0) + 20) + 8);
  v8 = type metadata accessor for ViennaAppCategoryView(0);
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
  sub_26294DA08();
  v10 = (a3 + v8[5]);
  type metadata accessor for SEStorageManagementController(0);
  sub_2628DF90C(&qword_27FF2E800, type metadata accessor for SEStorageManagementController, &protocol conformance descriptor for SEStorageManagementController);
  *v10 = sub_26294D178();
  v10[1] = v11;
  *(a3 + v8[7]) = 0;
  v12 = v8[8];
  *(a3 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2628DD788(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E880, &unk_26294F770);
  MEMORY[0x28223BE20](v2);
  v6 = a1;
  sub_2628DEAC0(&v5[-v3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8A0, &qword_26294E8D0);
  sub_2628DF40C();
  sub_2628DF508();
  return sub_26294DA78();
}

uint64_t sub_2628DD880(uint64_t a1)
{
  v2 = type metadata accessor for ViennaView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  sub_2628DF284(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_2628DF2EC(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E908, &qword_26294E928);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B0, &unk_262950DD0);
  sub_2628DFD0C(&qword_27FF2E910, &qword_27FF2E908, &qword_26294E928, MEMORY[0x277D83980]);
  sub_2628DFD0C(&qword_27FF2E8A8, &qword_27FF2E8B0, &unk_262950DD0, MEMORY[0x277CDD938]);
  sub_2628DF90C(&qword_27FF2E918, MEMORY[0x277D48E58], MEMORY[0x277D48E78]);
  return sub_26294DA68();
}

uint64_t sub_2628DDAD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E920, &unk_26294F920);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15[-v5];
  v7 = sub_26294C7A8();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v16 = a1;
  v17 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E928, &unk_26294F880);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E930, &unk_26294FFB0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E938, &unk_26294F890);
  v11 = sub_2628DF824();
  v12 = sub_2628DFD0C(&qword_27FF2E960, &qword_27FF2E938, &unk_26294F890, MEMORY[0x277CDF028]);
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  swift_getOpaqueTypeConformance2();
  v13 = MEMORY[0x277D48E58];
  sub_2628DF90C(&qword_27FF2E968, MEMORY[0x277D48E58], MEMORY[0x277D48E70]);
  sub_2628DF90C(&qword_27FF2E970, v13, MEMORY[0x277D48E60]);
  sub_2628DF90C(&qword_27FF2E848, v13, MEMORY[0x277D48E68]);
  return sub_26294D118();
}

uint64_t sub_2628DDD60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a2;
  v60 = a3;
  v57 = sub_26294C5F8();
  v61 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_26294C7F8();
  v5 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E978, &qword_26294EC40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E950, &unk_26294FFC0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v52 - v12);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E930, &unk_26294FFB0);
  MEMORY[0x28223BE20](v58);
  v56 = &v52 - v14;
  v15 = sub_26294C778();
  v17 = v16;
  sub_26294C768();
  v53 = a1;
  sub_26294C798();
  v19 = sub_2629205EC(v18);
  v21 = v20;
  *v13 = v15;
  v13[1] = v17;
  sub_2628DF954(v10, v13 + v11[9], &qword_27FF2E978, &qword_26294EC40);
  *(v13 + v11[15]) = 1;
  *(v13 + v11[10]) = 0;
  v22 = (v13 + v11[11]);
  *v22 = v19;
  v22[1] = v21;
  *(v13 + v11[12]) = 2;
  *(v13 + v11[13]) = 0;
  v23 = v13 + v11[14];
  sub_26294C758();
  v24 = sub_26294C7D8();
  v26 = v25;
  (*(v5 + 8))(v7, v54);
  KeyPath = swift_getKeyPath();
  sub_26294DAE8();
  sub_26294D0D8();
  v64 = 0;
  v28 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E980, &unk_26294EC50) + 36)];
  v29 = *(sub_26294D1D8() + 20);
  v30 = *MEMORY[0x277CE0118];
  v31 = sub_26294D378();
  (*(*(v31 - 8) + 104))(&v28[v29], v30, v31);
  __asm { FMOV            V0.2D, #6.0 }

  *v28 = _Q0;
  *&v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E988, &unk_26294F8A0) + 36)] = 256;
  v37 = v66;
  *(v23 + 40) = v65;
  *v23 = KeyPath;
  v23[8] = 0;
  *(v23 + 2) = v24;
  *(v23 + 3) = v26;
  *(v23 + 4) = 0x4000000000000000;
  *(v23 + 56) = v37;
  *(v23 + 72) = v67;
  sub_2628DF6F0(v10, &qword_27FF2E978, &qword_26294EC40);
  v38 = v55;
  v39 = v57;
  (*(v61 + 104))(v55, *MEMORY[0x277D48DF8], v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_26294E7D0;
  v41 = v53;
  v42 = sub_26294C778();
  v44 = v43;
  v45 = MEMORY[0x277D837D0];
  *(v40 + 56) = MEMORY[0x277D837D0];
  v46 = sub_2628DF5B8();
  *(v40 + 64) = v46;
  *(v40 + 32) = v42;
  *(v40 + 40) = v44;
  sub_26294C798();
  v48 = sub_2629205EC(v47);
  *(v40 + 96) = v45;
  *(v40 + 104) = v46;
  *(v40 + 72) = v48;
  *(v40 + 80) = v49;
  sub_26294C6B8();

  (*(v61 + 8))(v38, v39);
  sub_2628DFD0C(&qword_27FF2E948, &qword_27FF2E950, &unk_26294FFC0, &unk_262950BA8);
  v50 = v56;
  sub_26294D798();

  sub_2628DF6F0(v13, &qword_27FF2E950, &unk_26294FFC0);
  v62 = v59;
  v63 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E938, &unk_26294F890);
  sub_2628DF824();
  sub_2628DFD0C(&qword_27FF2E960, &qword_27FF2E938, &unk_26294F890, MEMORY[0x277CDF028]);
  sub_26294D6C8();
  return sub_2628DF6F0(v50, &qword_27FF2E930, &unk_26294FFB0);
}

uint64_t sub_2628DE370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a1;
  v22 = a2;
  v23 = a3;
  v20 = sub_26294C7A8();
  v3 = *(v20 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v20);
  v5 = type metadata accessor for ViennaView(0);
  v19 = *(v5 - 8);
  v6 = *(v19 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_26294C5F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, *MEMORY[0x277D48DF0], v7);
  v18 = sub_26294C5E8();
  v12 = v11;
  (*(v8 + 8))(v10, v7);
  sub_2628DF284(v21, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v20;
  (*(v3 + 16))(&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v20);
  v14 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v15 = (v6 + *(v3 + 80) + v14) & ~*(v3 + 80);
  v16 = swift_allocObject();
  sub_2628DF2EC(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v14);
  (*(v3 + 32))(v16 + v15, &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  v27[0] = v18;
  v27[1] = v12;
  v24 = v27;
  v25 = 0x6873617274;
  v26 = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E990, &unk_26294F8B0);
  sub_2628DFD0C(&qword_27FF2E998, &qword_27FF2E990, &unk_26294F8B0, MEMORY[0x277CDEFF0]);
  sub_26294D988();
}

uint64_t sub_2628DE6D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViennaView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(a1 + *(MEMORY[0x28223BE20](v4 - 8) + 28) + 8);
  sub_2628E2368(a2, 1);
  sub_2628DF284(a1, &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_2628DF2EC(&v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if ((v12[15] & 1) == 0)
  {
    v10 = v7;

    sub_262904ED0(v10, v10, sub_2628DFF20, v9);
  }
}

uint64_t sub_2628DE864(char a1, uint64_t a2)
{
  v4 = sub_26294D0F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E9A0, &qword_26294E9A8);
  result = MEMORY[0x28223BE20](v8 - 8);
  v11 = v16 - v10;
  if (a1)
  {
    type metadata accessor for ViennaView(0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    v13 = v16[1];
    MEMORY[0x28223BE20](v12);
    v16[-2] = a2;
    sub_2629180CC(sub_2628DFFA0, v13, v11);

    v14 = sub_26294C8A8();
    v15 = (*(*(v14 - 8) + 48))(v11, 1, v14);
    result = sub_2628DF6F0(v11, &qword_27FF2E9A0, &qword_26294E9A8);
    if (v15 == 1)
    {
      sub_26291D460(v7);
      sub_26294D0E8();
      return (*(v5 + 8))(v7, v4);
    }
  }

  return result;
}

__n128 sub_2628DEAC0@<Q0>(uint64_t a2@<X8>)
{
  v17 = a2;
  v2 = sub_26294D4E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8F0, &qword_26294FF90);
  v6 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v8 = &v15 - v7;
  v9 = sub_26294D338();
  v20 = 1;
  sub_2628DEDFC(v23);
  memcpy(v21, v23, sizeof(v21));
  memcpy(v22, v23, sizeof(v22));
  sub_2628DF954(v21, v18, &qword_27FF2E8F8, &unk_26294F910);
  sub_2628DF6F0(v22, &qword_27FF2E8F8, &unk_26294F910);
  memcpy(&v19[7], v21, 0x120uLL);
  *v18 = v9;
  *&v18[8] = 0;
  v18[16] = v20;
  memcpy(&v18[17], v19, 0x127uLL);
  sub_26294D4D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E888, &unk_2629513D0);
  sub_2628DFD0C(&qword_27FF2E890, &qword_27FF2E888, &unk_2629513D0, MEMORY[0x277CE1138]);
  sub_26294D768();
  (*(v3 + 8))(v5, v2);
  memcpy(v23, v18, 0x138uLL);
  sub_2628DF6F0(v23, &qword_27FF2E888, &unk_2629513D0);
  sub_26294DAE8();
  sub_26294D1F8();
  v10 = v17;
  (*(v6 + 32))(v17, v8, v16);
  v11 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E880, &unk_26294F770) + 36);
  v12 = *&v18[80];
  *(v11 + 64) = *&v18[64];
  *(v11 + 80) = v12;
  *(v11 + 96) = *&v18[96];
  v13 = *&v18[16];
  *v11 = *v18;
  *(v11 + 16) = v13;
  result = *&v18[48];
  *(v11 + 32) = *&v18[32];
  *(v11 + 48) = result;
  return result;
}

uint64_t sub_2628DEDFC@<X0>(void *a2@<X8>)
{
  sub_26294C868();
  sub_2628DF230();
  v2 = sub_26294D648();
  v4 = v3;
  v6 = v5;
  sub_26294D4B8();
  v7 = sub_26294D618();
  v27 = v8;
  v28 = v7;
  v10 = v9;
  v29 = v11;
  sub_2628DF758(v2, v4, v6 & 1);

  sub_26294DAF8();
  sub_26294D1F8();
  LOBYTE(v2) = v10 & 1;
  v90 = v10 & 1;
  sub_26294C888();
  HIDWORD(v68) = sub_2629205EC(v12) >> 32;
  v69 = v13;
  v14 = sub_26294D648();
  v16 = v15;
  v18 = v17;
  LODWORD(v68) = sub_26294D4C8();
  v19 = sub_26294D618();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_2628DF758(v14, v16, v18 & 1);

  sub_26294DB08();
  sub_26294D1F8();
  v81 = v23 & 1;
  *&v39 = v28;
  *(&v39 + 1) = v27;
  LOBYTE(v40) = v2;
  *(&v40 + 1) = *v89;
  DWORD1(v40) = *&v89[3];
  *(&v40 + 1) = v29;
  v45 = v86;
  v46 = v87;
  v47 = v88;
  v41 = v82;
  v42 = v83;
  v43 = v84;
  v44 = v85;
  __src[6] = v86;
  __src[7] = v87;
  __src[2] = v82;
  __src[3] = v83;
  __src[4] = v84;
  __src[5] = v85;
  __src[0] = v39;
  __src[1] = v40;
  *&v48 = v19;
  *(&v48 + 1) = v21;
  LOBYTE(v49) = v23 & 1;
  *(&v49 + 1) = *v80;
  DWORD1(v49) = *&v80[3];
  *(&v49 + 1) = v25;
  v54 = v36;
  v55 = v37;
  v56 = v38;
  v50 = v32;
  v51 = v33;
  v52 = v34;
  v53 = v35;
  __src[12] = v33;
  __src[13] = v34;
  __src[10] = v49;
  __src[11] = v32;
  __src[14] = v35;
  __src[15] = v36;
  __src[16] = v37;
  __src[17] = v38;
  __src[8] = v88;
  __src[9] = v48;
  memcpy(a2, __src, 0x120uLL);
  v57[0] = v19;
  v57[1] = v21;
  v58 = v23 & 1;
  *v59 = *v80;
  *&v59[3] = *&v80[3];
  v60 = v25;
  v65 = v36;
  v66 = v37;
  v67 = v38;
  v61 = v32;
  v62 = v33;
  v63 = v34;
  v64 = v35;
  sub_2628DF954(&v39, &v68, &qword_27FF2E900, &qword_26294FDB0);
  sub_2628DF954(&v48, &v68, &qword_27FF2E900, &qword_26294FDB0);
  sub_2628DF6F0(v57, &qword_27FF2E900, &qword_26294FDB0);
  v68 = v28;
  v69 = v27;
  v70 = v2;
  *v71 = *v89;
  *&v71[3] = *&v89[3];
  v72 = v29;
  v77 = v86;
  v78 = v87;
  v79 = v88;
  v73 = v82;
  v74 = v83;
  v75 = v84;
  v76 = v85;
  return sub_2628DF6F0(&v68, &qword_27FF2E900, &qword_26294FDB0);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2628DF230()
{
  result = qword_27FF2E838;
  if (!qword_27FF2E838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2E838);
  }

  return result;
}

uint64_t sub_2628DF284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViennaView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2628DF2EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViennaView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2628DF374()
{
  result = qword_27FF2E870;
  if (!qword_27FF2E870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E868, &qword_26294E8C8);
    sub_2628DF40C();
    sub_2628DF508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2E870);
  }

  return result;
}

unint64_t sub_2628DF40C()
{
  result = qword_27FF2E878;
  if (!qword_27FF2E878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E880, &unk_26294F770);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E888, &unk_2629513D0);
    sub_2628DFD0C(&qword_27FF2E890, &qword_27FF2E888, &unk_2629513D0, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2E878);
  }

  return result;
}

unint64_t sub_2628DF508()
{
  result = qword_27FF2E898;
  if (!qword_27FF2E898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E8A0, &qword_26294E8D0);
    sub_2628DFD0C(&qword_27FF2E8A8, &qword_27FF2E8B0, &unk_262950DD0, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2E898);
  }

  return result;
}

unint64_t sub_2628DF5B8()
{
  result = qword_27FF2E8C0;
  if (!qword_27FF2E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2E8C0);
  }

  return result;
}

unint64_t sub_2628DF60C()
{
  result = qword_27FF2E8C8;
  if (!qword_27FF2E8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E860, &qword_26294E8C0);
    sub_2628DFD0C(&qword_27FF2E8D0, &qword_27FF2E8D8, &qword_26294E8D8, MEMORY[0x277CDE5A0]);
    sub_2628DFD0C(&qword_27FF2E8E0, &qword_27FF2E8E8, &qword_262950C20, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2E8C8);
  }

  return result;
}

uint64_t sub_2628DF6F0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2628DF758(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2628DF788(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ViennaView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_2628DF824()
{
  result = qword_27FF2E940;
  if (!qword_27FF2E940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E930, &unk_26294FFB0);
    sub_2628DFD0C(&qword_27FF2E948, &qword_27FF2E950, &unk_26294FFC0, &unk_262950BA8);
    sub_2628DF90C(&qword_27FF2E958, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2E940);
  }

  return result;
}

uint64_t sub_2628DF90C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2628DF954(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2628DF9CC()
{
  v1 = (type metadata accessor for ViennaView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v16 = *(*v1 + 64);
  v4 = sub_26294C7A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v15 = *(v5 + 64);
  v7 = sub_26294C8A8();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);

  v8 = v0 + v3 + v1[8];

  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50) + 32);
  v10 = sub_26294D168();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);
  v11 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_26294D0F8();
    (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);
  }

  else
  {
  }

  v13 = (v3 + v16 + v6) & ~v6;
  (*(v5 + 8))(v0 + v13, v4);

  return MEMORY[0x2821FE8E8](v0, v13 + v15, v2 | v6 | 7);
}

uint64_t sub_2628DFC34()
{
  v1 = *(type metadata accessor for ViennaView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_26294C7A8() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_2628DE6D0(v0 + v2, v5);
}

uint64_t sub_2628DFD0C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for ViennaView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_26294C8A8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v0 + v3 + v1[8];

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50) + 32);
  v8 = sub_26294D168();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_26294D0F8();
    (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2628DFF20(char a1)
{
  v3 = *(type metadata accessor for ViennaView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2628DE864(a1, v4);
}

unint64_t sub_2628DFFC4()
{
  result = qword_27FF2E9A8;
  if (!qword_27FF2E9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E858, &qword_26294E888);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E820, &qword_26294E878);
    sub_26294C7A8();
    type metadata accessor for ViennaAppCategoryView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E818, &qword_26294E870);
    sub_2628DFD0C(&qword_27FF2E830, &qword_27FF2E818, &qword_26294E870, MEMORY[0x277CE1198]);
    sub_2628DF230();
    swift_getOpaqueTypeConformance2();
    sub_2628DF90C(&qword_27FF2E848, MEMORY[0x277D48E58], MEMORY[0x277D48E68]);
    sub_2628DF90C(&qword_27FF2E850, type metadata accessor for ViennaAppCategoryView, &unk_26294FE18);
    swift_getOpaqueTypeConformance2();
    sub_2628E01B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2E9A8);
  }

  return result;
}

unint64_t sub_2628E01B0()
{
  result = qword_27FF2E9B0;
  if (!qword_27FF2E9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2E9B0);
  }

  return result;
}

void __swiftcall SESPassImage.init(passIdentifier:size:image:)(SESUIService::SESPassImage *__return_ptr retstr, Swift::String passIdentifier, CGSize size, UIImage_optional image)
{
  retstr->passIdentifier = passIdentifier;
  retstr->size.width = size.width;
  retstr->size.height = size.height;
  retstr->image.value.super.isa = image.value.super.isa;
}

__n128 SESPassImageAdaptor.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    v4 = v3;
    sub_26294D8C8();
    sub_26294DAE8();
    sub_26294D0D8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E9B8, &qword_26294EA30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E9C0, &qword_26294EA38);
    sub_2628E04FC();
    sub_2628E0660();
    sub_26294D3F8();

    v13 = v8;
    v14 = v9;
    v15 = v10;
    v11 = v6;
    v12 = v7;
  }

  else
  {
    sub_26294D878();
    swift_getKeyPath();
    sub_26294DAE8();
    sub_26294D0D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E9B8, &qword_26294EA30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E9C0, &qword_26294EA38);
    sub_2628E04FC();
    sub_2628E0660();
    sub_26294D3F8();
  }

  *(a1 + 32) = v13;
  *(a1 + 48) = v14;
  *(a1 + 64) = v15;
  result = v12;
  *a1 = v11;
  *(a1 + 16) = v12;
  return result;
}

uint64_t sub_2628E044C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26294D248();
  *a1 = result;
  return result;
}

uint64_t sub_2628E0478@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26294D248();
  *a1 = result;
  return result;
}

unint64_t sub_2628E04FC()
{
  result = qword_27FF2E9C8;
  if (!qword_27FF2E9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E9B8, &qword_26294EA30);
    sub_2628E0588();
    sub_2628E060C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2E9C8);
  }

  return result;
}

unint64_t sub_2628E0588()
{
  result = qword_27FF2E9D0;
  if (!qword_27FF2E9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E9D8, &qword_26294EA40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2E9D0);
  }

  return result;
}

unint64_t sub_2628E060C()
{
  result = qword_27FF2E9E0;
  if (!qword_27FF2E9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2E9E0);
  }

  return result;
}

unint64_t sub_2628E0660()
{
  result = qword_27FF2E9E8;
  if (!qword_27FF2E9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E9C0, &qword_26294EA38);
    sub_2628E06EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2E9E8);
  }

  return result;
}

unint64_t sub_2628E06EC()
{
  result = qword_27FF2E9F0;
  if (!qword_27FF2E9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E9F8, &qword_26294EA48);
    sub_2628E0778();
    sub_2628E07CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2E9F0);
  }

  return result;
}

unint64_t sub_2628E0778()
{
  result = qword_27FF2EA00;
  if (!qword_27FF2EA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EA00);
  }

  return result;
}

unint64_t sub_2628E07CC()
{
  result = qword_27FF2EA08;
  if (!qword_27FF2EA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EA10, &qword_26294EA50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EA08);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2628E0878(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2628E08C0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2628E091C()
{
  result = qword_27FF2EA18;
  if (!qword_27FF2EA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EA20, "r@");
    sub_2628E04FC();
    sub_2628E0660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EA18);
  }

  return result;
}

uint64_t sub_2628E09C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2628E0A94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SEStorageListView(uint64_t a1)
{
  result = qword_27FF2EA28;
  if (!qword_27FF2EA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2628E0B90(uint64_t a1)
{
  sub_2628DCCD8(319);
  if (v1 <= 0x3F)
  {
    sub_2628E0C14(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2628E0C14(uint64_t a1)
{
  if (!qword_27FF2E808)
  {
    sub_26294D168();
    v1 = sub_26294DA18();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF2E808);
    }
  }
}

uint64_t sub_2628E0C88(uint64_t a1)
{
  v2 = type metadata accessor for SEStorageListView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  sub_2628E1C00(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_2628E1D78(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EA58, &unk_26294EC20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EA50, &qword_26294EBD0);
  sub_2628DFD0C(&qword_27FF2EA60, &qword_27FF2EA58, &unk_26294EC20, MEMORY[0x277D83980]);
  sub_2628DFD0C(&qword_27FF2EA48, &qword_27FF2EA50, &qword_26294EBD0, MEMORY[0x277CDD938]);
  sub_2628E1F90(&qword_27FF2EA68, MEMORY[0x277D48ED0], MEMORY[0x277D48EF0]);
  return sub_26294DA68();
}

uint64_t sub_2628E0ED8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E9A0, &qword_26294E9A8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11[-v5];
  v7 = sub_26294C8A8();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v12 = a1;
  v13 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EA70, &unk_26294EC30);
  sub_2628E1E64();
  v9 = MEMORY[0x277D48ED0];
  sub_2628E1F90(&qword_27FF2EA80, MEMORY[0x277D48ED0], MEMORY[0x277D48EE8]);
  sub_2628E1F90(&qword_27FF2EA88, v9, MEMORY[0x277D48ED8]);
  sub_2628E1F90(&qword_27FF2EA90, v9, MEMORY[0x277D48EE0]);
  return sub_26294D118();
}

uint64_t sub_2628E10CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a2;
  v87 = a3;
  v4 = sub_26294C5F8();
  v85 = *(v4 - 8);
  v86 = v4;
  MEMORY[0x28223BE20](v4);
  v84 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_26294C8A8();
  v78 = *(v79 - 8);
  v80 = *(v78 + 64);
  MEMORY[0x28223BE20](v79);
  v77 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SEStorageListView(0);
  v76 = *(v7 - 8);
  v75 = *(v76 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v74 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E978, &qword_26294EC40);
  MEMORY[0x28223BE20](v9 - 8);
  v88 = &v72 - v10;
  v11 = sub_26294C828();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v72 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E950, &unk_26294FFC0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v72 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EA98, &qword_26294EC48);
  v22 = *(v21 - 8);
  v82 = v21;
  v83 = v22;
  MEMORY[0x28223BE20](v21);
  v89 = &v72 - v23;
  *&v72 = sub_26294C868();
  v25 = v24;
  v26 = a1;
  sub_26294C848();
  (*(v12 + 104))(v15, *MEMORY[0x277D48EB0], v11);
  v27 = MEMORY[0x26672BE40](v17, v15);
  v28 = *(v12 + 8);
  v28(v15, v11);
  v28(v17, v11);
  v29 = v88;
  sub_26294C858();
  v30 = v26;
  sub_26294C888();
  v32 = sub_2629205EC(v31);
  v34 = v33;
  *v20 = v72;
  v20[1] = v25;
  sub_2628E1FD8(v29, v20 + v18[9]);
  *(v20 + v18[15]) = 1;
  *(v20 + v18[10]) = v27 & 1;
  v35 = (v20 + v18[11]);
  *v35 = v32;
  v35[1] = v34;
  *(v20 + v18[12]) = 2;
  *(v20 + v18[13]) = 0;
  v36 = v20 + v18[14];
  v73 = v26;
  SEStorageManagementViewModel.PrimaryCategory.iconView.getter(&v90);
  v37 = v90;
  LOBYTE(v26) = v91;
  v72 = v92;
  v38 = v93;
  sub_26294DAE8();
  sub_26294D0D8();
  v94 = v26;
  v39 = &v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E980, &unk_26294EC50) + 36)];
  v40 = *(sub_26294D1D8() + 20);
  v41 = *MEMORY[0x277CE0118];
  v42 = sub_26294D378();
  (*(*(v42 - 8) + 104))(&v39[v40], v41, v42);
  __asm { FMOV            V0.2D, #6.0 }

  *v39 = _Q0;
  *&v39[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E988, &unk_26294F8A0) + 36)] = 256;
  *(v36 + 1) = v72;
  v48 = v96;
  *(v36 + 40) = v95;
  *v36 = v37;
  v36[8] = v26;
  *(v36 + 9) = v98[0];
  *(v36 + 3) = *(v98 + 3);
  *(v36 + 4) = v38;
  *(v36 + 56) = v48;
  *(v36 + 72) = v97;
  sub_2628DF6F0(v88, &qword_27FF2E978, &qword_26294EC40);
  v49 = v74;
  sub_2628E1C00(v81, v74);
  v50 = v78;
  v51 = v77;
  v52 = v79;
  (*(v78 + 16))(v77, v30, v79);
  v53 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v54 = v50;
  v55 = (v75 + *(v50 + 80) + v53) & ~*(v50 + 80);
  v56 = swift_allocObject();
  sub_2628E1D78(v49, v56 + v53);
  (*(v54 + 32))(v56 + v55, v51, v52);
  v88 = sub_2628DFD0C(&qword_27FF2E948, &qword_27FF2E950, &unk_26294FFC0, &unk_262950BA8);
  sub_26294D6E8();

  sub_2628DF6F0(v20, &qword_27FF2E950, &unk_26294FFC0);
  v58 = v84;
  v57 = v85;
  v59 = v86;
  (*(v85 + 104))(v84, *MEMORY[0x277D48DF8], v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_26294E7D0;
  v61 = sub_26294C868();
  v63 = v62;
  v64 = MEMORY[0x277D837D0];
  *(v60 + 56) = MEMORY[0x277D837D0];
  v65 = sub_2628DF5B8();
  *(v60 + 64) = v65;
  *(v60 + 32) = v61;
  *(v60 + 40) = v63;
  sub_26294C888();
  v67 = sub_2629205EC(v66);
  *(v60 + 96) = v64;
  *(v60 + 104) = v65;
  *(v60 + 72) = v67;
  *(v60 + 80) = v68;
  sub_26294C6B8();

  (*(v57 + 8))(v58, v59);
  v90 = v18;
  v91 = v88;
  swift_getOpaqueTypeConformance2();
  v69 = v82;
  v70 = v89;
  sub_26294D798();

  return (*(v83 + 8))(v70, v69);
}

uint64_t sub_2628E1954(uint64_t a1, uint64_t a2)
{
  v2 = sub_26294D168();
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for SEStorageListView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
  MEMORY[0x26672D010]();
  sub_26294C8A8();
  v3 = MEMORY[0x277D48ED0];
  sub_2628E1F90(&qword_27FF2EA80, MEMORY[0x277D48ED0], MEMORY[0x277D48EE8]);
  sub_2628E1F90(&qword_27FF2EA88, v3, MEMORY[0x277D48ED8]);
  sub_2628E1F90(&qword_27FF2EA90, v3, MEMORY[0x277D48EE0]);
  sub_26294D148();
  return sub_26294D9F8();
}

uint64_t sub_2628E1AD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EA38, &qword_26294EBC8);
  sub_2628E1B48();
  return sub_26294DA98();
}

unint64_t sub_2628E1B48()
{
  result = qword_27FF2EA40;
  if (!qword_27FF2EA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EA38, &qword_26294EBC8);
    sub_2628DFD0C(&qword_27FF2EA48, &qword_27FF2EA50, &qword_26294EBD0, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EA40);
  }

  return result;
}

uint64_t sub_2628E1C00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageListView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2628E1C64()
{
  v1 = (type metadata accessor for SEStorageListView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50) + 32);
  v7 = sub_26294D168();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2628E1D78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageListView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2628E1DDC(uint64_t a1)
{
  v3 = *(type metadata accessor for SEStorageListView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2628E0ED8(a1, v4);
}

unint64_t sub_2628E1E64()
{
  result = qword_27FF2EA78;
  if (!qword_27FF2EA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EA70, &unk_26294EC30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E950, &unk_26294FFC0);
    sub_2628DFD0C(&qword_27FF2E948, &qword_27FF2E950, &unk_26294FFC0, &unk_262950BA8);
    swift_getOpaqueTypeConformance2();
    sub_2628E1F90(&qword_27FF2E958, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EA78);
  }

  return result;
}

uint64_t sub_2628E1F90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2628E1FD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E978, &qword_26294EC40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2628E2048()
{
  v1 = (type metadata accessor for SEStorageListView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_26294C8A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = v0 + v3;

  v12 = v11 + v1[7];

  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50) + 32);
  v14 = sub_26294D168();
  (*(*(v14 - 8) + 8))(v12 + v13, v14);
  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_2628E21E0()
{
  v1 = *(type metadata accessor for SEStorageListView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_26294C8A8() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_2628E1954(v0 + v2, v5);
}

unint64_t sub_2628E22B0()
{
  result = qword_27FF2EAA0;
  if (!qword_27FF2EAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EAA8, &qword_26294EC68);
    sub_2628E1B48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EAA0);
  }

  return result;
}

uint64_t sub_2628E2368(uint64_t a1, int a2)
{
  v3 = v2;
  v85 = a2;
  v4 = sub_26294C9D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v66 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED60, &qword_26294F2E8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v71 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v75 = &v52 - v10;
  v79 = sub_26294CA28();
  v53 = *(v79 - 8);
  v11 = MEMORY[0x28223BE20](v79);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v74 = &v52 - v14;
  v15 = sub_26294CCB8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if (v86)
  {
    return result;
  }

  result = sub_26294C738();
  v61 = *(result + 16);
  if (!v61)
  {
  }

  v20 = 0;
  v21 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v84 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
  v60 = result + v21;
  v59 = v16 + 16;
  v81 = v53 + 16;
  v76 = (v5 + 56);
  v70 = (v5 + 48);
  v64 = (v5 + 32);
  v63 = (v5 + 8);
  v68 = (v53 + 24);
  v80 = (v53 + 8);
  v57 = (v16 + 8);
  v69 = v4;
  v22 = v75;
  v56 = v15;
  v55 = v16;
  v54 = v18;
  v58 = result;
  while (1)
  {
    if (v20 >= *(result + 16))
    {
      goto LABEL_44;
    }

    v23 = *(v16 + 72);
    v67 = v20;
    (*(v16 + 16))(v18, v60 + v23 * v20, v15);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    if (v86 != 1)
    {
      break;
    }

    (*v57)(v18, v15);
LABEL_5:
    v20 = v67 + 1;
    result = v58;
    if (v67 + 1 == v61)
    {
    }
  }

  v65 = sub_26294CCA8();
  v24 = v79;
  v78 = *(v65 + 16);
  if (!v78)
  {
LABEL_37:
    v18 = v54;
    v15 = v56;
    (*v57)(v54, v56);

    v16 = v55;
    goto LABEL_5;
  }

  v25 = v53;
  v73 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v77 = v65 + v73;
  swift_beginAccess();
  v26 = 0;
  v27 = *(v25 + 72);
  v82 = *(v25 + 16);
  v83 = v27;
  v28 = v74;
  v82(v74, v77, v24);
  while (1)
  {
    (*v76)(v22, 1, 1, v4);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    if ((v86 & 1) == 0)
    {
      break;
    }

LABEL_11:
    ++v26;
    sub_2628DF6F0(v22, &qword_27FF2ED60, &qword_26294F2E8);
    (*v80)(v28, v24);
    if (v26 == v78)
    {
      goto LABEL_37;
    }

    v82(v28, v77 + v83 * v26, v24);
  }

  v29 = *(v3 + v84);

  v30 = sub_26291849C(v28, v29);
  v32 = v31;

  if (v32)
  {
LABEL_10:
    sub_2628EC330();
    v28 = v74;
    v22 = v75;
    v24 = v79;
    goto LABEL_11;
  }

  if (v30 < 0)
  {
    goto LABEL_41;
  }

  v33 = *(v3 + v84);
  if (v30 >= *(v33 + 16))
  {
    goto LABEL_42;
  }

  v72 = v30 * v83;
  v82(v13, v33 + v73 + v30 * v83, v79);
  v34 = v71;
  sub_2628DF954(v75, v71, &qword_27FF2ED60, &qword_26294F2E8);
  if ((*v70)(v34, 1, v4) != 1)
  {
    v41 = v66;
    (*v64)(v66, v34, v4);
    v42 = sub_26294C928();
    v43 = sub_2629184E4(v41, v42);
    v45 = v44;

    if ((v45 & 1) == 0)
    {
      v62 = sub_26294C918();
      v47 = v46;
      v48 = *v46;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v47 = v48;
      if (result)
      {
        if ((v43 & 0x8000000000000000) != 0)
        {
          goto LABEL_45;
        }
      }

      else
      {
        result = sub_26291DBD0(v48);
        v48 = result;
        *v47 = result;
        if ((v43 & 0x8000000000000000) != 0)
        {
          goto LABEL_45;
        }
      }

      if (v43 >= v48[2])
      {
        goto LABEL_46;
      }

      sub_26294C9C8();
      v62(&v86, 0);
    }

    (*v63)(v41, v4);
    goto LABEL_31;
  }

  sub_2628DF6F0(v34, &qword_27FF2ED60, &qword_26294F2E8);
  v35 = *(sub_26294C928() + 16);

  if (!v35)
  {
LABEL_31:
    v49 = v84;
    swift_beginAccess();
    v50 = *(v3 + v49);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v49) = v50;
    if ((result & 1) == 0)
    {
      result = sub_26291DB84(v50);
      v50 = result;
      *(v3 + v84) = result;
    }

    v51 = v79;
    if (v30 >= *(v50 + 2))
    {
      goto LABEL_43;
    }

    (*v68)(&v50[v73 + v72], v13, v79);
    *(v3 + v84) = v50;
    swift_endAccess();
    (*v80)(v13, v51);
    v4 = v69;
    goto LABEL_10;
  }

  v36 = 0;
  while (1)
  {
    v37 = sub_26294C918();
    v39 = v38;
    v40 = *v38;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v39 = v40;
    if ((result & 1) == 0)
    {
      result = sub_26291DBD0(v40);
      v40 = result;
      *v39 = result;
    }

    if (v36 >= v40[2])
    {
      break;
    }

    sub_26294C9C8();
    v37(&v86, 0);
    if (v35 == ++v36)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

__n128 sub_2628E2D20@<Q0>(__n128 *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  result = v4;
  *a1 = v3;
  a1[1] = v4;
  a1[2].n128_u8[0] = v5;
  return result;
}

void sub_2628E2DAC()
{
  if (qword_27FF2E7C0 != -1)
  {
    swift_once();
  }

  v1 = sub_26294CE48();
  __swift_project_value_buffer(v1, qword_27FF314B0);
  v5 = v0;
  v2 = sub_26294CE28();
  v3 = sub_26294DE98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    *(v4 + 4) = v6;

    _os_log_impl(&dword_2628DB000, v2, v3, "Controller loading %{BOOL}d", v4, 8u);
    MEMORY[0x26672DCE0](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2628E2F40(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  return v3;
}

uint64_t sub_2628E2FAC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  return v1;
}

void *sub_2628E3024()
{
  v0 = sub_26294C728();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26294C8C8();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x277D84F90];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v7 = sub_2628E3E34(v37);

  sub_2628E4350(v7, sub_26291D728, &qword_27FF2ED98, &qword_26294F350);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v8 = sub_2628E402C(v37);

  sub_2628E4350(v8, sub_26291D728, &qword_27FF2ED98, &qword_26294F350);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v9 = *(v37 + 16);

  if (v9)
  {
    sub_2628E4484();
    sub_26294C8B8();
    v10 = v40;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_26291D728(0, v10[2] + 1, 1, v10);
    }

    v12 = v10[2];
    v11 = v10[3];
    if (v12 >= v11 >> 1)
    {
      v10 = sub_26291D728((v11 > 1), v12 + 1, 1, v10);
    }

    v13 = v36;
    v38 = v36;
    v39 = sub_262906CE0(&qword_27FF2ED78, MEMORY[0x277D48F00], MEMORY[0x277D48EF8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v37);
    v15 = v35;
    (*(v35 + 16))(boxed_opaque_existential_1, v6, v13);
    v10[2] = v12 + 1;
    sub_262905600(&v37, &v10[5 * v12 + 4]);
    (*(v15 + 8))(v6, v13);
    v40 = v10;
  }

  if (!sub_2628E45F4())
  {
    return v40;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v16 = *(v37 + 16);
  if (v16)
  {
    v19 = *(v1 + 16);
    v17 = v1 + 16;
    v18 = v19;
    v20 = v37 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v21 = *(v17 + 56);
    v22 = 0.0;
    do
    {
      v18(v3, v20, v0);
      sub_26294C708();
      v24 = v23;
      (*(v17 - 8))(v3, v0);
      v22 = v22 + v24;
      v20 += v21;
      --v16;
    }

    while (v16);
  }

  v38 = sub_26294C6D8();
  v39 = sub_262906CE0(&qword_27FF2ED80, MEMORY[0x277D48E18], MEMORY[0x277D48E10]);
  __swift_allocate_boxed_opaque_existential_1(&v37);
  sub_26294C6C8();
  v25 = v40;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_26291D728(0, v25[2] + 1, 1, v25);
    v40 = v25;
  }

  v27 = v25[2];
  v26 = v25[3];
  if (v27 >= v26 >> 1)
  {
    v25 = sub_26291D728((v26 > 1), v27 + 1, 1, v25);
    v40 = v25;
  }

  v28 = v38;
  v29 = v39;
  v30 = __swift_mutable_project_boxed_opaque_existential_1(&v37, v38);
  MEMORY[0x28223BE20](v30);
  v32 = &v35 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v32);
  sub_262904E38(v27, v32, &v40, v28, v29);
  __swift_destroy_boxed_opaque_existential_1Tm(&v37);
  return v25;
}

uint64_t sub_2628E3654(uint64_t a1)
{
  v2 = sub_26294CD78();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v21 = MEMORY[0x277D84F90];
    sub_2628FBEF4(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2628FBEF4((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = sub_262906CE0(&qword_27FF2ECB8, MEMORY[0x277D49038], MEMORY[0x277D49028]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
      v9(boxed_opaque_existential_1, v5, v2);
      v7 = v21;
      *(v21 + 16) = v13 + 1;
      sub_262905600(&v18, v7 + 40 * v13 + 32);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_2628E384C(uint64_t a1)
{
  v2 = sub_26294C728();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v21 = MEMORY[0x277D84F90];
    sub_2628FBEF4(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2628FBEF4((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = sub_262906CE0(&qword_27FF2ECA0, MEMORY[0x277D48E28], MEMORY[0x277D48E20]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
      v9(boxed_opaque_existential_1, v5, v2);
      v7 = v21;
      *(v21 + 16) = v13 + 1;
      sub_262905600(&v18, v7 + 40 * v13 + 32);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_2628E3A44(uint64_t a1)
{
  v2 = sub_26294CC18();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v21 = MEMORY[0x277D84F90];
    sub_2628FBEF4(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2628FBEF4((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = sub_262906CE0(&qword_27FF2ECB0, MEMORY[0x277D48F80], MEMORY[0x277D48F78]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
      v9(boxed_opaque_existential_1, v5, v2);
      v7 = v21;
      *(v21 + 16) = v13 + 1;
      sub_262905600(&v18, v7 + 40 * v13 + 32);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_2628E3C3C(uint64_t a1)
{
  v2 = sub_26294C7A8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v21 = MEMORY[0x277D84F90];
    sub_2628FBEF4(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2628FBEF4((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = sub_262906CE0(&qword_27FF2ECA8, MEMORY[0x277D48E58], MEMORY[0x277D48E48]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
      v9(boxed_opaque_existential_1, v5, v2);
      v7 = v21;
      *(v21 + 16) = v13 + 1;
      sub_262905600(&v18, v7 + 40 * v13 + 32);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_2628E3E34(uint64_t a1)
{
  v2 = sub_26294CD78();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v21 = MEMORY[0x277D84F90];
    sub_2628FBF34(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2628FBF34((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = sub_262906CE0(&qword_27FF2EDA0, MEMORY[0x277D49038], MEMORY[0x277D49030]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
      v9(boxed_opaque_existential_1, v5, v2);
      v7 = v21;
      *(v21 + 16) = v13 + 1;
      sub_262905600(&v18, v7 + 40 * v13 + 32);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_2628E402C(uint64_t a1)
{
  v2 = sub_26294C7A8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v21 = MEMORY[0x277D84F90];
    sub_2628FBF34(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2628FBF34((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = sub_262906CE0(&qword_27FF2ED88, MEMORY[0x277D48E58], MEMORY[0x277D48E50]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
      v9(boxed_opaque_existential_1, v5, v2);
      v7 = v21;
      *(v21 + 16) = v13 + 1;
      sub_262905600(&v18, v7 + 40 * v13 + 32);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_2628E4224(uint64_t result)
{
  v2 = *(result + 16);
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

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
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

  v3 = sub_26291D660(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
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
  result = sub_26294CA28();
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
    return result;
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
  return result;
}

uint64_t sub_2628E4350(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v6 = result;
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v12 = *(v6 + 16);
  v13 = __OFADD__(v12, v5);
  v14 = v12 + v5;
  if (!v13)
  {
    *(v6 + 16) = v14;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

double sub_2628E4484()
{
  v0 = sub_26294CC18();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if (*(v8 + 16))
  {
    (*(v1 + 16))(v3, v8 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    sub_26294CBF8();
    v5 = v4;
    (*(v1 + 8))(v3, v0);
  }

  else
  {

    return 0.0;
  }

  return v5;
}

BOOL sub_2628E45F4()
{
  v1 = v0;
  v2 = sub_26294C728();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ECC0, &qword_26294F230);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  (*(v7 + 16))(&v20 - v8, v1 + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController__showESim, v6);
  sub_26294DC78();
  (*(v7 + 8))(v9, v6);
  if (v21)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v11 = *(v20 + 16);
  if (v11)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = v20 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    v17 = 0.0;
    do
    {
      v13(v5, v15, v2);
      sub_26294C708();
      v19 = v18;
      (*(v12 - 8))(v5, v2);
      v17 = v17 + v19;
      v15 += v16;
      --v11;
    }

    while (v11);

    return v17 > 0.0;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_2628E4888(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  return v3;
}

uint64_t sub_2628E4934(_DWORD *a1, uint64_t (*a2)(void))
{
  v5 = sub_26294DD28();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_proposedCredentials);
  if (*(v9 + 16))
  {
    (*(v6 + 16))(v8, v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);
    if ((*(v6 + 88))(v8, v5) == *a1)
    {
      (*(v6 + 96))(v8, v5);
      v10 = a2(0);
      (*(*(v10 - 8) + 8))(v8, v10);
      return 1;
    }

    (*(v6 + 8))(v8, v5);
  }

  return 0;
}

uint64_t sub_2628E4AC4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  return v1;
}

uint64_t sub_2628E4B9C@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  *a4 = v6;
  return result;
}

uint64_t sub_2628E4C2C(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v7 = v6;
  return sub_26294D008();
}

uint64_t sub_2628E4CB4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();
}

uint64_t sub_2628E4D24()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EDF0, &qword_26294F458);
  __swift_allocate_value_buffer(v0, qword_27FF2EAB0);
  __swift_project_value_buffer(v0, qword_27FF2EAB0);
  return sub_26294DC88();
}

uint64_t sub_2628E4DE0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EDF0, &qword_26294F458);
  __swift_allocate_value_buffer(v0, qword_27FF2EAC8);
  __swift_project_value_buffer(v0, qword_27FF2EAC8);
  return sub_26294DC88();
}

id SEStorageManagementController.__allocating_init(snapshot:proposedCredentials:passes:passArts:secureElementCredentials:credentialConfigs:muirfieldApplications:eSimProfiles:managementHandler:provisioningOnCurrentDevice:clientIdentifier:displayConfiguration:)(void *a1, uint64_t a2, uint64_t a3, void (**a4)(char *, uint64_t), uint64_t a5, void (*a6)(void, void, void), uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, char *a12)
{
  v13 = v12;
  v106 = a8;
  v111 = a7;
  v117 = a5;
  v118 = a6;
  v115 = a3;
  v116 = a4;
  v102 = a2;
  v113 = a1;
  v110 = a12;
  v114 = a11;
  v112 = a9;
  LODWORD(v103) = a10;
  v122 = sub_26294C7F8();
  v86 = *(v122 - 8);
  v14 = MEMORY[0x28223BE20](v122);
  v121 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v120 = &v85 - v16;
  v119 = sub_26294CC18();
  v123 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v87 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_26294DD18();
  v107 = *(v108 - 8);
  v18 = MEMORY[0x28223BE20](v108);
  v105 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v104 = &v85 - v20;
  v96 = sub_26294CDF8();
  v101 = *(v96 - 8);
  v21 = MEMORY[0x28223BE20](v96);
  v100 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v99 = &v85 - v23;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EAE0, &unk_26294ECC0);
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v94 = &v85 - v24;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E9A0, &qword_26294E9A8);
  v25 = MEMORY[0x28223BE20](v95);
  v93 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v90 = &v85 - v27;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EAE8, &qword_26294ECD0);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v89 = &v85 - v28;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EAF0, &qword_26294ECD8);
  v29 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v31 = &v85 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EAF8, &qword_26294ECE0);
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v85 - v34;
  v109 = v13;
  v36 = objc_allocWithZone(v13);
  v37 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController__showDeleteConfirmation;
  LOBYTE(v126) = 0;
  sub_26294CFD8();
  v38 = *(v33 + 32);
  v38(&v36[v37], v35, v32);
  v39 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController__deleteConfirmationAlertText;
  v126 = 0;
  v127 = 0xE000000000000000;
  v128 = 0;
  v129 = 0;
  v130 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EB10, &qword_26294ECE8);
  sub_26294CFD8();
  (*(v29 + 32))(&v36[v39], v31, v88);
  v40 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController__loading;
  LOBYTE(v126) = 0;
  sub_26294CFD8();
  v41 = &v36[v40];
  v42 = v112;
  v38(v41, v35, v32);
  v43 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController__deletionState;
  v126 = 0;
  LOBYTE(v127) = 1;
  v44 = v113;
  v45 = v89;
  sub_26294CFD8();
  (*(v91 + 32))(&v36[v43], v45, v92);
  v46 = &v36[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion];
  *v46 = 0;
  v46[1] = 0;
  v47 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController__recommendedForDelete;
  v48 = sub_26294C8A8();
  v49 = v90;
  (*(*(v48 - 8) + 56))(v90, 1, 1, v48);
  sub_2628DF954(v49, v93, &qword_27FF2E9A0, &qword_26294E9A8);
  v50 = v94;
  sub_26294CFD8();
  sub_2628DF6F0(v49, &qword_27FF2E9A0, &qword_26294E9A8);
  (*(v97 + 32))(&v36[v47], v50, v98);
  LOBYTE(v126) = 0;
  LOBYTE(v125) = 2;
  sub_26294DC88();
  LOBYTE(v126) = 0;
  LOBYTE(v125) = 2;
  sub_26294DC88();
  v51 = v99;
  sub_26294CDB8();
  swift_beginAccess();
  v52 = v101;
  v53 = v96;
  (*(v101 + 16))(v100, v51, v96);
  sub_26294CFD8();
  (*(v52 + 8))(v51, v53);
  swift_endAccess();
  swift_beginAccess();
  v54 = MEMORY[0x277D84F90];
  v125 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EB58, &qword_26294ECF0);
  sub_26294CFD8();
  swift_endAccess();
  swift_beginAccess();
  v125 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E908, &qword_26294E928);
  sub_26294CFD8();
  swift_endAccess();
  *&v36[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_walletGroups] = v54;
  *&v36[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups] = v54;
  swift_beginAccess();
  v125 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EA58, &unk_26294EC20);
  sub_26294CFD8();
  swift_endAccess();
  v55 = &v36[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_snapshotDataProvider];
  v56 = sub_26294DBE8();
  v57 = MEMORY[0x277D49078];
  v55[3] = v56;
  v55[4] = v57;
  *v55 = v44;
  *&v36[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_snapshot] = v44;
  *&v36[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_proposedCredentials] = v102;
  v58 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_clientIdentifier;
  v59 = sub_26294C538();
  v101 = *(v59 - 8);
  v60 = *(v101 + 16);
  v61 = &v36[v58];
  v62 = v111;
  v102 = v59;
  v60(v61, v114);
  v36[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_provisioningOnCurrentDevice] = v103;
  v63 = v42;
  sub_262906C54(v42, &v36[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_managementHandler]);
  v64 = v116;
  *&v36[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_passes] = v115;
  *&v36[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_passArts] = v64;
  *&v36[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_secureElementCredentials] = v117;
  v103 = v36;
  *&v36[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_credentialConfigs] = v118;
  v65 = *(v62 + 16);
  if (v65)
  {
    v126 = v54;
    v66 = v44;
    sub_2628FBFFC(0, v65, 0);
    v54 = v126;
    v67 = *(v86 + 16);
    v68 = v62 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
    v117 = *(v86 + 72);
    v118 = v67;
    v115 = v123 + 32;
    v116 = (v86 + 8);
    v69 = v87;
    v70 = v67;
    do
    {
      v71 = v120;
      v72 = v122;
      v70(v120, v68, v122);
      v70(v121, v71, v72);
      sub_26294CBE8();
      (*v116)(v71, v72);
      v126 = v54;
      v74 = *(v54 + 16);
      v73 = *(v54 + 24);
      if (v74 >= v73 >> 1)
      {
        sub_2628FBFFC((v73 > 1), v74 + 1, 1);
        v54 = v126;
      }

      *(v54 + 16) = v74 + 1;
      (*(v123 + 32))(v54 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v74, v69, v119);
      v68 += v117;
      --v65;
    }

    while (v65);

    v63 = v112;
  }

  else
  {
    v75 = v44;
  }

  v76 = v103;
  swift_beginAccess();
  v125 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EBB8, &qword_26294ECF8);
  sub_26294CFD8();
  swift_endAccess();
  swift_beginAccess();
  v125 = v106;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EBC8, &qword_26294ED00);
  sub_26294CFD8();
  swift_endAccess();
  v77 = v107;
  v78 = *(v107 + 16);
  v79 = v104;
  v80 = v110;
  v81 = v108;
  v78(v104, v110, v108);
  swift_beginAccess();
  v78(v105, v79, v81);
  sub_26294CFD8();
  v82 = *(v77 + 8);
  v82(v79, v81);
  swift_endAccess();
  swift_beginAccess();
  v125 = 1;
  sub_26294CFD8();
  swift_endAccess();
  v124.receiver = v76;
  v124.super_class = v109;
  v83 = objc_msgSendSuper2(&v124, sel_init);
  sub_2628E6C54();

  v82(v80, v81);
  (*(v101 + 8))(v114, v102);
  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  return v83;
}

id SEStorageManagementController.init(snapshot:proposedCredentials:passes:passArts:secureElementCredentials:credentialConfigs:muirfieldApplications:eSimProfiles:managementHandler:provisioningOnCurrentDevice:clientIdentifier:displayConfiguration:)(void *a1, uint64_t a2, uint64_t a3, void (**a4)(char *, uint64_t), uint64_t a5, void (*a6)(char *, char *, uint64_t), uint64_t a7, uint64_t a8, void *a9, unsigned __int8 a10, uint64_t a11, char *a12)
{
  v13 = v12;
  v100 = a8;
  v106 = a7;
  v112 = a5;
  v113 = a6;
  v110 = a3;
  v111 = a4;
  v97 = a2;
  v107 = a1;
  v105 = a12;
  v108 = a11;
  v109 = a9;
  LODWORD(v104) = a10;
  ObjectType = swift_getObjectType();
  v117 = sub_26294C7F8();
  v82 = *(v117 - 8);
  v14 = MEMORY[0x28223BE20](v117);
  v116 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v115 = &v82 - v16;
  v114 = sub_26294CC18();
  v118 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v83 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_26294DD18();
  v101 = *(v102 - 8);
  v18 = MEMORY[0x28223BE20](v102);
  v99 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v98 = &v82 - v20;
  v91 = sub_26294CDF8();
  v96 = *(v91 - 8);
  v21 = MEMORY[0x28223BE20](v91);
  v95 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v94 = &v82 - v23;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EAE0, &unk_26294ECC0);
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v89 = &v82 - v24;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E9A0, &qword_26294E9A8);
  v25 = MEMORY[0x28223BE20](v90);
  v88 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v86 = &v82 - v27;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EAE8, &qword_26294ECD0);
  v28 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v82 - v29;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EAF0, &qword_26294ECD8);
  v30 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v32 = &v82 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EAF8, &qword_26294ECE0);
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v82 - v35;
  v37 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController__showDeleteConfirmation;
  LOBYTE(v121) = 0;
  sub_26294CFD8();
  v38 = *(v34 + 32);
  v38(&v13[v37], v36, v33);
  v39 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController__deleteConfirmationAlertText;
  v121 = 0;
  v122 = 0xE000000000000000;
  v123 = 0;
  v124 = 0;
  v125 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EB10, &qword_26294ECE8);
  sub_26294CFD8();
  (*(v30 + 32))(&v13[v39], v32, v84);
  v40 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController__loading;
  LOBYTE(v121) = 0;
  sub_26294CFD8();
  v38(&v13[v40], v36, v33);
  v41 = v107;
  v42 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController__deletionState;
  v121 = 0;
  LOBYTE(v122) = 1;
  v43 = v85;
  sub_26294CFD8();
  (*(v28 + 32))(&v13[v42], v43, v87);
  v44 = &v13[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion];
  *v44 = 0;
  v44[1] = 0;
  v45 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController__recommendedForDelete;
  v46 = sub_26294C8A8();
  v47 = v86;
  (*(*(v46 - 8) + 56))(v86, 1, 1, v46);
  sub_2628DF954(v47, v88, &qword_27FF2E9A0, &qword_26294E9A8);
  v48 = v89;
  sub_26294CFD8();
  sub_2628DF6F0(v47, &qword_27FF2E9A0, &qword_26294E9A8);
  (*(v92 + 32))(&v13[v45], v48, v93);
  LOBYTE(v121) = 0;
  LOBYTE(v120) = 2;
  sub_26294DC88();
  LOBYTE(v121) = 0;
  LOBYTE(v120) = 2;
  sub_26294DC88();
  v49 = v94;
  sub_26294CDB8();
  swift_beginAccess();
  v50 = v96;
  v51 = v91;
  (*(v96 + 16))(v95, v49, v91);
  sub_26294CFD8();
  (*(v50 + 8))(v49, v51);
  swift_endAccess();
  swift_beginAccess();
  v52 = MEMORY[0x277D84F90];
  v120 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EB58, &qword_26294ECF0);
  sub_26294CFD8();
  swift_endAccess();
  swift_beginAccess();
  v120 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E908, &qword_26294E928);
  sub_26294CFD8();
  swift_endAccess();
  *&v13[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_walletGroups] = v52;
  *&v13[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups] = v52;
  swift_beginAccess();
  v120 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EA58, &unk_26294EC20);
  sub_26294CFD8();
  swift_endAccess();
  v53 = &v13[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_snapshotDataProvider];
  v54 = sub_26294DBE8();
  v55 = MEMORY[0x277D49078];
  v53[3] = v54;
  v53[4] = v55;
  *v53 = v41;
  *&v13[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_snapshot] = v41;
  *&v13[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_proposedCredentials] = v97;
  v56 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_clientIdentifier;
  v57 = sub_26294C538();
  v96 = *(v57 - 8);
  v58 = *(v96 + 16);
  v59 = &v13[v56];
  v60 = v106;
  v97 = v57;
  v58(v59, v108);
  v13[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_provisioningOnCurrentDevice] = v104;
  sub_262906C54(v109, &v13[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_managementHandler]);
  v61 = v111;
  *&v13[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_passes] = v110;
  *&v13[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_passArts] = v61;
  *&v13[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_secureElementCredentials] = v112;
  v104 = v13;
  *&v13[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_credentialConfigs] = v113;
  v62 = *(v60 + 16);
  if (v62)
  {
    v121 = v52;
    v63 = v41;
    sub_2628FBFFC(0, v62, 0);
    v52 = v121;
    v64 = *(v82 + 16);
    v65 = (v60 + ((*(v82 + 80) + 32) & ~*(v82 + 80)));
    v112 = *(v82 + 72);
    v113 = v64;
    v110 = v118 + 32;
    v111 = (v82 + 8);
    v66 = v83;
    do
    {
      v67 = v115;
      v68 = v117;
      v69 = v113;
      v113(v115, v65, v117);
      v69(v116, v67, v68);
      sub_26294CBE8();
      (*v111)(v67, v68);
      v121 = v52;
      v71 = *(v52 + 16);
      v70 = *(v52 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_2628FBFFC((v70 > 1), v71 + 1, 1);
        v52 = v121;
      }

      *(v52 + 16) = v71 + 1;
      (*(v118 + 32))(v52 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v71, v66, v114);
      v65 += v112;
      --v62;
    }

    while (v62);

    v41 = v107;
  }

  else
  {
    v72 = v41;
  }

  v73 = v104;
  swift_beginAccess();
  v120 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EBB8, &qword_26294ECF8);
  sub_26294CFD8();
  swift_endAccess();
  swift_beginAccess();
  v120 = v100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EBC8, &qword_26294ED00);
  sub_26294CFD8();
  swift_endAccess();
  v74 = v101;
  v75 = *(v101 + 16);
  v76 = v98;
  v77 = v105;
  v78 = v102;
  v75(v98, v105, v102);
  swift_beginAccess();
  v75(v99, v76, v78);
  sub_26294CFD8();
  v79 = *(v74 + 8);
  v79(v76, v78);
  swift_endAccess();
  swift_beginAccess();
  v120 = 1;
  sub_26294CFD8();
  swift_endAccess();
  v119.receiver = v73;
  v119.super_class = ObjectType;
  v80 = objc_msgSendSuper2(&v119, sel_init);
  sub_2628E6C54();

  v79(v77, v78);
  (*(v96 + 8))(v108, v97);
  __swift_destroy_boxed_opaque_existential_1Tm(v109);
  return v80;
}

uint64_t sub_2628E6C54()
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EDE8, &qword_26294F428);
  MEMORY[0x28223BE20](v4 - 8);
  v404 = v340 - v5;
  v6 = sub_26294CDF8();
  v357 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v340 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v356 = v340 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ECC0, &qword_26294F230);
  v351 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v372 = v340 - v12;
  v379 = sub_26294C728();
  v373 = *(v379 - 8);
  v13 = MEMORY[0x28223BE20](v379 - 8);
  v364 = v340 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v377 = v340 - v15;
  v350 = sub_26294CC18();
  v352 = *(v350 - 8);
  MEMORY[0x28223BE20](v350);
  v349 = v340 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v397 = sub_26294C9D8();
  v393 = *(v397 - 8);
  MEMORY[0x28223BE20](v397);
  v396 = v340 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v369 = sub_26294C538();
  v18 = *(v369 - 8);
  MEMORY[0x28223BE20](v369);
  v368 = (v340 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v378 = sub_26294CA28();
  v370 = *(v378 - 8);
  MEMORY[0x28223BE20](v378);
  v394 = v340 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_26294CB98();
  v384 = *(v21 - 1);
  MEMORY[0x28223BE20](v21);
  v388 = v340 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v367 = sub_26294CBA8();
  v365 = *(v367 - 8);
  MEMORY[0x28223BE20](v367);
  v387 = v340 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE00, &qword_26294F478);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v415 = v340 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v381 = (v340 - v28);
  v29 = MEMORY[0x28223BE20](v27);
  v380 = (v340 - v30);
  v31 = MEMORY[0x28223BE20](v29);
  v413 = v340 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v410 = (v340 - v34);
  MEMORY[0x28223BE20](v33);
  v409 = v340 - v35;
  v417 = sub_26294DC58();
  v406 = *(v417 - 8);
  v36 = MEMORY[0x28223BE20](v417);
  v395 = (v340 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = MEMORY[0x28223BE20](v36);
  v371 = v340 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v399 = v340 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v416 = (v340 - v43);
  v44 = MEMORY[0x28223BE20](v42);
  v405 = (v340 - v45);
  v46 = MEMORY[0x28223BE20](v44);
  v375 = v340 - v47;
  MEMORY[0x28223BE20](v46);
  v408 = v340 - v48;
  v412 = sub_26294DD28();
  v403 = *(v412 - 1);
  v49 = MEMORY[0x28223BE20](v412 - 1);
  v382 = v340 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v49);
  v407 = (v340 - v52);
  v53 = MEMORY[0x28223BE20](v51);
  v353 = (v340 - v54);
  v55 = MEMORY[0x28223BE20](v53);
  v411 = v340 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v418 = v340 - v58;
  MEMORY[0x28223BE20](v57);
  v60 = (v340 - v59);
  v363 = sub_26294DBA8();
  v362 = *(v363 - 8);
  v61 = MEMORY[0x28223BE20](v363);
  v63 = v340 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v65 = (v340 - v64);
  sub_2628F7DF4();
  sub_2628F8828();
  v66 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController__useMockSnapshot;
  swift_beginAccess();
  v386 = v0;
  v361 = v66;
  v376 = v11;
  sub_26294DC78();
  v67 = LOBYTE(v419[0]);
  swift_endAccess();
  v68 = &unk_27FF31000;
  v358 = v6;
  v355 = v9;
  v354 = v18;
  v348 = *&v63;
  if (v67 != 1)
  {
    if (qword_27FF2E7C0 != -1)
    {
      swift_once();
    }

    v78 = sub_26294CE48();
    __swift_project_value_buffer(v78, qword_27FF314B0);
    v79 = sub_26294CE28();
    v80 = sub_26294DE98();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_2628DB000, v79, v80, "Using real snapshot", v81, 2u);
      MEMORY[0x26672DCE0](v81, -1, -1);
    }

    v73 = v386;
    v82 = *&v386[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_snapshot];
    v422 = sub_26294DBE8();
    v423 = MEMORY[0x277D49078];
    *&v421 = v82;
    v83 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_snapshotDataProvider;
    swift_beginAccess();
    v84 = v82;
    __swift_destroy_boxed_opaque_existential_1Tm(&v73[v83]);
    v77 = &v73[v83];
    goto LABEL_11;
  }

  if (qword_27FF2E7C0 != -1)
  {
    goto LABEL_168;
  }

  while (1)
  {
    v69 = sub_26294CE48();
    __swift_project_value_buffer(v69, qword_27FF314B0);
    v70 = sub_26294CE28();
    v71 = sub_26294DE98();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_2628DB000, v70, v71, "Using mock snapshot", v72, 2u);
      MEMORY[0x26672DCE0](v72, -1, -1);
    }

    v73 = v386;
    v74 = *&v386[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_snapshot];
    swift_beginAccess();
    swift_beginAccess();
    v422 = sub_26294C5D8();
    v423 = MEMORY[0x277D48DE8];
    __swift_allocate_boxed_opaque_existential_1(&v421);
    v75 = v74;

    sub_26294C5C8();
    v76 = *(v68 + 147);
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(&v73[v76]);
    v77 = &v73[v76];
LABEL_11:
    sub_262905600(&v421, v77);
    swift_endAccess();
    v85 = &v73[*(v68 + 147)];
    swift_beginAccess();
    v86 = *(v85 + 3);
    v87 = __swift_project_boxed_opaque_existential_1(v85, v86);
    v88 = *(v86 - 8);
    MEMORY[0x28223BE20](v87);
    v90 = v340 - v89;
    (*(v88 + 16))(v340 - v89);
    v345 = sub_26294C688();
    (*(v88 + 8))(v90, v86);
    v91 = *(v85 + 3);
    v92 = __swift_project_boxed_opaque_existential_1(v85, v91);
    v93 = *(v91 - 8);
    MEMORY[0x28223BE20](v92);
    v95 = v340 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v93 + 16))(v95);
    v343 = sub_26294C638();
    v341 = 0;
    (*(v93 + 8))(v95, v91);
    v113 = MEMORY[0x277D49348];
    v114 = v386;
    v115 = sub_2628E4934(MEMORY[0x277D49348], MEMORY[0x277D49160]);
    v402 = v85;
    v385 = v21;
    v116 = v415;
    v117 = v412;
    v118 = v413;
    if (v115)
    {
      v119 = *&v114[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_proposedCredentials];
      if (!*(v119 + 16))
      {
        goto LABEL_172;
      }

      v120 = v403;
      v121 = (*(v120 + 80) + 32) & ~*(v120 + 80);
      v122 = *(v403 + 2);
      v342 = v119;
      v122(v60, v119 + v121, v412);
      if ((v120[11])(v60, v117) == *v113)
      {
        v120[12](v60, v117);
        v118 = v362;
        v123 = v363;
        (*(v362 + 32))(v65, v60, v363);
        sub_262906C54(v85, &v421);
        __swift_project_boxed_opaque_existential_1(&v421, v422);
        v124 = sub_26294C658();
        v125 = v65;
        v65 = v85;
        v116 = v415;
        (*(v118 + 8))(v125, v123);
        __swift_destroy_boxed_opaque_existential_1Tm(&v421);
        goto LABEL_41;
      }

      v120[1](v60, v117);
      v114 = v386;
    }

    sub_262906C54(v85, &v421);
    v340[2] = v423;
    v340[3] = v422;
    v340[1] = __swift_project_boxed_opaque_existential_1(&v421, v422);
    v126 = *&v114[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_proposedCredentials];
    v85 = *(v126 + 16);
    v342 = v126;
    if (v85)
    {
      v401 = *(v403 + 2);
      v127 = v126 + ((v403[80] + 32) & ~v403[80]);
      v398 = *(v403 + 9);
      v392 = (v403 + 88);
      LODWORD(v391) = *MEMORY[0x277D49340];
      LODWORD(v360) = *MEMORY[0x277D49338];
      v347 = *MEMORY[0x277D49330];
      v344 = *v113;
      v390 = (v406 + 56);
      v404 = (v403 + 8);
      v400 = (v403 + 16);
      v374 = (v403 + 96);
      v340[0] = v362 + 8;
      v346 = *MEMORY[0x277D49238];
      v366 = (v406 + 104);
      LODWORD(v359) = *MEMORY[0x277D49240];
      v389 = v406 + 48;
      v383 = (v406 + 32);
      ObjectType = MEMORY[0x277D84F90];
      v128 = v411;
      v129 = v401;
      do
      {
        v130 = v418;
        (v129)(v418, v127, v117);
        (v129)(v128, v130, v117);
        v131 = (*v392)(v128, v117);
        if (v131 == v391)
        {
          (*v374)(v128, v117);
          v132 = sub_26294DB58();
          (*(*(v132 - 8) + 32))(v118, v128, v132);
          v133 = v118;
          v134 = v118;
          v135 = v417;
          (*v366)(v133, v359, v417);
          (*v390)(v134, 0, 1, v135);
        }

        else if (v131 == v360)
        {
          (*v374)(v128, v117);
          v136 = v128[1];
          *v118 = *v128;
          *(v118 + 8) = v136;
          v137 = v118;
          v134 = v118;
          v135 = v417;
          (*v366)(v137, v346, v417);
          (*v390)(v134, 0, 1, v135);
        }

        else if (v131 == v347)
        {
          (*v374)(v128, v117);
          v138 = v118;
          v134 = v118;
          v135 = v417;
          (*v390)(v138, 1, 1, v417);
          v139 = sub_26294DBB8();
          (*(*(v139 - 8) + 8))(v128, v139);
        }

        else if (v131 == v344)
        {
          (*v374)(v128, v117);
          v140 = v118;
          v134 = v118;
          v135 = v417;
          (*v390)(v140, 1, 1, v417);
          (*v340[0])(v128, v363);
        }

        else
        {
          v141 = v118;
          v134 = v118;
          v135 = v417;
          (*v390)(v141, 1, 1, v417);
          (*v404)(v128, v117);
        }

        v142 = v134;
        v143 = v410;
        sub_262906F00(v142, v410, &qword_27FF2EE00, &qword_26294F478);
        v144 = v409;
        sub_262906F00(v143, v409, &qword_27FF2EE00, &qword_26294F478);
        (*v404)(v418, v117);
        if ((*v389)(v144, 1, v135) == 1)
        {
          sub_2628DF6F0(v144, &qword_27FF2EE00, &qword_26294F478);
          v128 = v411;
          v116 = v415;
        }

        else
        {
          v145 = *v383;
          (*v383)(v408, v144, v135);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            ObjectType = sub_26291D930(0, *(ObjectType + 16) + 1, 1, ObjectType);
          }

          v128 = v411;
          v147 = *(ObjectType + 16);
          v146 = *(ObjectType + 24);
          if (v147 >= v146 >> 1)
          {
            ObjectType = sub_26291D930((v146 > 1), v147 + 1, 1, ObjectType);
          }

          v148 = ObjectType;
          *(ObjectType + 16) = v147 + 1;
          v145((v148 + ((*(v406 + 80) + 32) & ~*(v406 + 80)) + *(v406 + 72) * v147), v408, v417);
          v116 = v415;
          v117 = v412;
        }

        v127 += v398;
        --v85;
        v118 = v413;
      }

      while (v85);
    }

    else
    {
      ObjectType = MEMORY[0x277D84F90];
    }

    v124 = sub_26294C668();

    __swift_destroy_boxed_opaque_existential_1Tm(&v421);
    v65 = v402;
    v21 = v385;
LABEL_41:
    v1 = v124;
    v3 = v345;
    v2 = v343;
    v149 = v386;
    swift_beginAccess();
    sub_26294DC78();
    v60 = LOBYTE(v419[0]);
    swift_endAccess();
    if (v60 == 1)
    {
      v113 = v388;
      if (qword_27FF2E7C0 != -1)
      {
        goto LABEL_173;
      }

      goto LABEL_43;
    }

    v156 = MEMORY[0x277D49348];
    v157 = sub_2628E4934(MEMORY[0x277D49348], MEMORY[0x277D49160]);
    v158 = v403;
    if ((v157 & 1) == 0)
    {
      goto LABEL_51;
    }

    if (!*(v342 + 16))
    {
      __break(1u);
      goto LABEL_175;
    }

    v60 = v353;
    (*(v403 + 2))(v353, v342 + ((v403[80] + 32) & ~v403[80]), v117);
    if ((*(v158 + 11))(v60, v117) != *v156)
    {
      (*(v158 + 1))(v60, v117);
LABEL_51:
      v383 = *&v149[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_snapshot];
      v165 = *(v342 + 16);
      if (!v165)
      {
        v188 = v383;
LABEL_74:
        v189 = v341;
        v190 = sub_26294DBC8();
        if (v189)
        {

          v347 = 0;
          v341 = 0;
        }

        else
        {
          v347 = v190;
          v341 = 0;
        }

        v68 = v386;
        v65 = v402;
        v21 = v385;
        goto LABEL_78;
      }

      v167 = *(v158 + 2);
      v166 = v158 + 16;
      v411 = v167;
      v60 = (v342 + ((v166[64] + 32) & ~v166[64]));
      v410 = *(v166 + 7);
      v409 = (v166 + 72);
      LODWORD(v408) = *MEMORY[0x277D49340];
      LODWORD(v392) = *MEMORY[0x277D49338];
      LODWORD(v390) = *MEMORY[0x277D49330];
      LODWORD(v374) = *v156;
      v413 = (v406 + 56);
      ObjectType = (v166 - 8);
      v403 = v166;
      v400 = (v166 + 80);
      v366 = (v362 + 8);
      LODWORD(v389) = *MEMORY[0x277D49238];
      v398 = v406 + 104;
      LODWORD(v391) = *MEMORY[0x277D49240];
      v404 = (v406 + 48);
      v401 = (v406 + 32);
      v168 = v383;
      v169 = MEMORY[0x277D84F90];
      v170 = &qword_27FF2EE00;
      v171 = v382;
      while (2)
      {
        v418 = v169;
        v172 = v170;
        v173 = v407;
        v174 = v411;
        (v411)(v407, v60, v117);
        v174(v171, v173, v117);
        v175 = (*v409)(v171, v117);
        if (v175 == v408)
        {
          (*v400)(v171, v117);
          v176 = sub_26294DB58();
          (*(*(v176 - 8) + 32))(v116, v171, v176);
          v177 = v417;
          (*v398)(v116, v391, v417);
          (*v413)(v116, 0, 1, v177);
          v178 = v117;
          v170 = v172;
          goto LABEL_62;
        }

        v170 = v172;
        if (v175 == v392)
        {
          (*v400)(v171, v117);
          v179 = v171[1];
          *v116 = *v171;
          v116[1] = v179;
          v177 = v417;
          (*v398)(v116, v389, v417);
          (*v413)(v116, 0, 1, v177);
LABEL_61:
          v178 = v117;
LABEL_62:
          v169 = v418;
        }

        else
        {
          if (v175 == v390)
          {
            (*v400)(v171, v117);
            v177 = v417;
            (*v413)(v116, 1, 1, v417);
            v180 = sub_26294DBB8();
            (*(*(v180 - 8) + 8))(v171, v180);
            goto LABEL_61;
          }

          v169 = v418;
          if (v175 == v374)
          {
            (*v400)(v171, v117);
            v177 = v417;
            (*v413)(v116, 1, 1, v417);
            (*v366)(v171, v363);
          }

          else
          {
            v177 = v417;
            (*v413)(v116, 1, 1, v417);
            (*ObjectType)(v171, v117);
          }

          v178 = v117;
        }

        v181 = v381;
        sub_262906F00(v116, v381, v170, &qword_26294F478);
        v182 = v181;
        v183 = v380;
        sub_262906F00(v182, v380, v170, &qword_26294F478);
        (*ObjectType)(v407, v178);
        if ((*v404)(v183, 1, v177) == 1)
        {
          sub_2628DF6F0(v183, v170, &qword_26294F478);
          v171 = v382;
        }

        else
        {
          v184 = *v401;
          (*v401)(v375, v183, v177);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v171 = v382;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v169 = sub_26291D930(0, v169[2] + 1, 1, v169);
          }

          v187 = v169[2];
          v186 = v169[3];
          if (v187 >= v186 >> 1)
          {
            v169 = sub_26291D930((v186 > 1), v187 + 1, 1, v169);
          }

          v169[2] = v187 + 1;
          (v184)(v169 + ((*(v406 + 80) + 32) & ~*(v406 + 80)) + *(v406 + 72) * v187, v375, v417);
          v116 = v415;
        }

        v60 = (v410 + v60);
        --v165;
        v117 = v412;
        if (!v165)
        {
          goto LABEL_74;
        }

        continue;
      }
    }

    (*(v158 + 12))(v60, v117);
    v159 = v362;
    v160 = v348;
    v161 = v363;
    (*(v362 + 32))(COERCE_DOUBLE(*&v348), v60, v363);
    v60 = *&v149[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_snapshot];
    sub_26294DB98();
    sub_26294DB78();
    sub_26294DB68();
    sub_26294DB88();
    v162 = objc_allocWithZone(sub_26294DC08());
    v163 = sub_26294DBF8();
    v164 = sub_26294DBD8();
    v68 = v386;
    v347 = v164;

    (*(v159 + 8))(COERCE_DOUBLE(*&v160), v161);
LABEL_78:
    v113 = v388;
    v153 = v387;
    while (1)
    {
      v348 = v1;
      v191 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_walletGroups;
      swift_beginAccess();
      v360 = *(*&v68[v191] + 16);
      if (!v360)
      {
        break;
      }

      v192 = 0;
      v361 = v365 + 16;
      v382 = (v384 + 16);
      ObjectType = v406 + 16;
      LODWORD(v404) = *MEMORY[0x277D49088];
      LODWORD(v413) = *MEMORY[0x277D49240];
      v412 = (v406 + 104);
      LODWORD(v398) = *MEMORY[0x277D49090];
      v381 = (v384 + 24);
      v380 = (v384 + 8);
      v359 = (v365 + 24);
      v353 = (v365 + 8);
      v1 = 0.0;
      v374 = v191;
      v415 = (v406 + 8);
      while (1)
      {
        v193 = *&v68[v191];
        if (v192 >= *(v193 + 16))
        {
          __break(1u);
LABEL_170:
          __break(1u);
          goto LABEL_171;
        }

        v363 = (*(v365 + 80) + 32) & ~*(v365 + 80);
        v194 = *(v365 + 72);
        v366 = v192;
        v195 = v194 * v192;
        v196 = *(v365 + 16);
        v362 = v195;
        v196(v153, v193 + v363 + v195, v367);
        v197 = *(sub_26294CAB8() + 16);

        v383 = v197;
        if (v197)
        {
          LODWORD(v375) = 0;
          v198 = 0;
          v199 = 0.0;
          do
          {
            v200 = sub_26294CAB8();
            if (v198 >= *(v200 + 16))
            {
              goto LABEL_161;
            }

            v391 = (v198 + 1);
            v390 = ((*(v384 + 80) + 32) & ~*(v384 + 80));
            v201 = *(v384 + 72);
            v392 = v198;
            v202 = v201 * v198;
            v203 = *(v384 + 16);
            v389 = v202;
            v203(v113, &v390[v200 + v202], v21);

            v204 = 0;
            v411 = sub_26294CAD8();
            v410 = *(v411 + 16);
            do
            {
              if (v410 == v204)
              {
                v113 = v388;
                v243 = v416;
LABEL_103:

                v65 = v402;
                sub_262906C54(v402, &v421);
                __swift_project_boxed_opaque_existential_1(&v421, v422);
                v153 = v387;
                sub_26294CA68();
                sub_26294C648();
                v232 = *v415;
                (*v415)(v243, v417);
                __swift_destroy_boxed_opaque_existential_1Tm(&v421);
                sub_26294CB68();
                v21 = v385;
                goto LABEL_106;
              }

              if (v204 >= *(v411 + 16))
              {
                __break(1u);
LABEL_140:
                __break(1u);
LABEL_141:
                v113 = v406;
                v85 = v402;
LABEL_142:
                swift_getKeyPath();
                swift_getKeyPath();
                sub_26294CFF8();

                v305 = *(v421 + 16);

                v411 = v305;
                if (!v305)
                {
LABEL_158:
                  v336 = v356;
                  sub_26294CDB8();
                  swift_getKeyPath();
                  swift_getKeyPath();
                  v337 = v357;
                  v338 = v358;
                  (*(v357 + 16))(v355, v336, v358);
                  v339 = v386;
                  sub_26294D008();
                  (*(v337 + 8))(v336, v338);
                  sub_2628EC330();
                  return sub_2628EDABC();
                }

                v306 = 0;
                v407 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController__showESim;
                v410 = v113 + 13;
                LODWORD(v409) = *MEMORY[0x277D491A8];
                v408 = (v113 + 1);
                v405 = (v351 + 16);
                v404 = (v351 + 8);
                v307 = v85;
                v406 = v373 + 16;
                v413 = (v373 + 8);
                while (2)
                {
                  sub_262906C54(v307, &v421);
                  v308 = v423;
                  __swift_project_boxed_opaque_existential_1(&v421, v422);
                  swift_getKeyPath();
                  swift_getKeyPath();
                  sub_26294CFF8();

                  if (v306 >= *(v420 + 16))
                  {
                    goto LABEL_163;
                  }

                  v309 = v373;
                  v415 = ((*(v309 + 80) + 32) & ~*(v309 + 80));
                  v310 = *(v373 + 72);
                  v418 = v306;
                  v412 = v308;
                  v21 = *(v373 + 16);
                  ObjectType = v310 * v306;
                  v311 = &v415[v420 + v310 * v306];
                  v312 = v377;
                  v313 = v379;
                  (v21)(v377, v311, v379);

                  v314 = sub_26294C6F8();
                  v316 = v315;
                  v113 = *(v309 + 8);
                  (v113)(v312, v313);
                  v317 = v416;
                  *v416 = v314;
                  v317[1] = v316;
                  v318 = v417;
                  (*v410)(v317, v409, v417);
                  sub_26294C648();
                  (*v408)(v317, v318);
                  __swift_destroy_boxed_opaque_existential_1Tm(&v421);
                  swift_getKeyPath();
                  swift_getKeyPath();
                  v319 = sub_26294CFE8();
                  v321 = v320;
                  v322 = *v320;
                  v323 = swift_isUniquelyReferenced_nonNull_native();
                  *v321 = v322;
                  if ((v323 & 1) == 0)
                  {
                    v322 = sub_26291DC1C(v322);
                    *v321 = v322;
                  }

                  if (v418 >= v322[2])
                  {
                    goto LABEL_164;
                  }

                  sub_26294C718();
                  v319(&v421, 0);

                  v324 = v372;
                  v325 = v376;
                  (*v405)(v372, v407 + v386, v376);
                  sub_26294DC78();
                  (*v404)(v324, v325);
                  v326 = v379;
                  if (v421)
                  {
LABEL_156:
                    v68 = &unk_26294F1D0;
                    swift_getKeyPath();
                    swift_getKeyPath();
                    sub_26294CFF8();

                    v60 = v421;
                    v65 = v418;
                    if (v418 >= *(v421 + 16))
                    {
                      goto LABEL_167;
                    }

                    v333 = v377;
                    (v21)(v377, &v415[v421 + ObjectType], v326);

                    sub_26294C708();
                    v335 = v334;
                    (v113)(v333, v326);
                    v1 = v1 + v335;
                  }

                  else
                  {
                    swift_getKeyPath();
                    swift_getKeyPath();
                    sub_26294CFF8();

                    v327 = *(v421 + 16);
                    if (v327)
                    {
                      v328 = &v415[v421];
                      v329 = 0.0;
                      v330 = v364;
                      do
                      {
                        (v21)(v330, v328, v326);
                        sub_26294C708();
                        v332 = v331;
                        (v113)(v330, v326);
                        v329 = v329 + v332;
                        v328 += v310;
                        --v327;
                      }

                      while (v327);

                      if (v329 > 0.0)
                      {
                        goto LABEL_156;
                      }
                    }

                    else
                    {
                    }

                    v65 = v418;
                  }

                  v306 = v65 + 1;
                  v307 = v402;
                  if (v306 == v411)
                  {
                    goto LABEL_158;
                  }

                  continue;
                }
              }

              v205 = v406;
              v409 = ((*(v205 + 80) + 32) & ~*(v205 + 80));
              v407 = *(v406 + 72);
              v206 = v405;
              v207 = v417;
              v408 = *(v406 + 16);
              (v408)(v405, &v409[v411 + v407 * v204++], v417);
              v208 = sub_26294DB58();
              v209 = *(v208 - 8);
              v210 = *(v209 + 104);
              v211 = (v209 + 104);
              v212 = v416;
              (v210)(v416, v404, v208);
              v213 = *(v205 + 104);
              v213(v212, v413, v207);
              LODWORD(v418) = MEMORY[0x26672D270](v206, v212);
              v214 = *(v205 + 8);
              v214(v212, v207);
              v214(v206, v207);
            }

            while ((v418 & 1) == 0);
            v400 = v213;
            v401 = v211;
            v410 = v210;
            v403 = v214;

            v215 = sub_26294CAD8();
            v216 = &v409[v215];
            v411 = -*(v215 + 16);
            v217 = -1;
            v218 = v407;
            v219 = v408;
            v220 = v208;
            do
            {
              if (v411 + v217 == -1)
              {
                v243 = v416;
                v113 = v388;
                goto LABEL_103;
              }

              if (++v217 >= *(v215 + 16))
              {
                goto LABEL_140;
              }

              v418 = v218 + v216;
              v221 = v399;
              v222 = v417;
              (v219)(v399);
              v223 = v416;
              (v410)(v416, v398, v220);
              (v400)(v223, v413, v222);
              v224 = MEMORY[0x26672D270](v221, v223);
              v225 = v403;
              (v403)(v223, v222);
              v225(v221, v222);
              v216 = v418;
            }

            while ((v224 & 1) == 0);
            v226 = v409;
            v227 = v218;

            if (qword_27FF2E7C0 != -1)
            {
              swift_once();
            }

            v228 = sub_26294CE48();
            __swift_project_value_buffer(v228, qword_27FF314B0);
            v229 = sub_26294CE28();
            v230 = sub_26294DE98();
            v231 = os_log_type_enabled(v229, v230);
            v65 = v402;
            v21 = v385;
            v153 = v387;
            v232 = v403;
            if (v231)
            {
              v233 = swift_slowAlloc();
              *v233 = 0;
              _os_log_impl(&dword_2628DB000, v229, v230, "Calculating Usage for Shared Copernicus and Aliro Pass, This is OK for now because Aliro only supports Home -- for now", v233, 2u);
              MEMORY[0x26672DCE0](v233, -1, -1);
            }

            v234 = sub_26294CAD8();
            v235 = *(v234 + 16);
            if (v235)
            {
              v418 = v234;
              v236 = &v226[v234];
              v237 = 0.0;
              v238 = v417;
              v239 = v371;
              v240 = v408;
              do
              {
                (v240)(v239, v236, v238);
                sub_262906C54(v402, &v421);
                __swift_project_boxed_opaque_existential_1(&v421, v422);
                v241 = sub_26294C648();
                v238 = v417;
                v242 = v241;
                __swift_destroy_boxed_opaque_existential_1Tm(&v421);
                (v403)(v239, v238);
                v237 = v237 + floor(v242 / v2 * 1000.0) / 1000.0;
                v236 = v227 + v236;
                --v235;
              }

              while (v235);

              v21 = v385;
              v153 = v387;
              v65 = v402;
              v232 = v403;
            }

            else
            {

              v237 = 0.0;
            }

            v113 = v388;
            v244 = sub_26294CB48();
            *v245 = v237 + *v245;
            v244(&v421, 0);
            LODWORD(v375) = 1;
LABEL_106:
            sub_26294CB58();
            v247 = v246;
            v248 = sub_26294CAA8();
            v250 = v249;
            v251 = *v249;
            v252 = swift_isUniquelyReferenced_nonNull_native();
            *v250 = v251;
            if ((v252 & 1) == 0)
            {
              v251 = sub_26291DD00(v251);
              *v250 = v251;
            }

            if (v392 >= v251[2])
            {
              goto LABEL_162;
            }

            v199 = v199 + v247;
            (*v381)(&v390[v251 + v389], v113, v21);
            v248(&v421, 0);
            (*v380)(v113, v21);
            v198 = v391;
          }

          while (v391 != v383);
          if (v375)
          {
            break;
          }
        }

        v256 = v416;
        sub_262906C54(v65, &v421);
        __swift_project_boxed_opaque_existential_1(&v421, v422);
        sub_26294CA68();
        sub_26294C628();
        (*v415)(v256, v417);
        __swift_destroy_boxed_opaque_existential_1Tm(&v421);
LABEL_114:
        sub_26294CA98();
        sub_26294CA88();
        sub_26294CA48();
        sub_26294CA88();
        v258 = v257;
        v259 = v386;
        v260 = v374;
        swift_beginAccess();
        v261 = *&v260[v259];
        v262 = swift_isUniquelyReferenced_nonNull_native();
        *&v260[v259] = v261;
        if ((v262 & 1) == 0)
        {
          v261 = sub_26291DCB4(v261);
          *&v374[v386] = v261;
        }

        if (v366 >= *(v261 + 2))
        {
          goto LABEL_170;
        }

        v263 = v366 + 1;
        v1 = v1 + v258;
        v60 = v367;
        (*v359)(&v261[v363 + v362], v153, v367);
        v68 = v386;
        v264 = v374;
        *&v374[v386] = v261;
        v191 = v264;
        swift_endAccess();
        (v353->isa)(v153, v60);
        v192 = v263;
        if (v263 == v360)
        {
          goto LABEL_120;
        }
      }

      sub_262906C54(v65, &v421);
      __swift_project_boxed_opaque_existential_1(&v421, v422);
      v253 = sub_26294DB58();
      v411 = *(*(v253 - 8) + 104);
      (v411)(v416, v404, v253);
      v410 = *v412;
      v254 = v417;
      (v410)(v416, v413, v417);
      v418 = sub_26294C628();
      v232(v416, v254);
      v403 = v232;
      sub_262906C54(v65, v419);
      __swift_project_boxed_opaque_existential_1(v419, v419[3]);
      (v411)(v416, v398, v253);
      v113 = v416;
      (v410)(v416, v413, v254);
      v255 = sub_26294C628();
      (v403)(v113, v254);
      if (!__OFADD__(v418, v255))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v419);
        __swift_destroy_boxed_opaque_existential_1Tm(&v421);
        v113 = v388;
        v153 = v387;
        goto LABEL_114;
      }

LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      swift_once();
LABEL_43:
      v150 = sub_26294CE48();
      __swift_project_value_buffer(v150, qword_27FF314B0);
      v60 = sub_26294CE28();
      v151 = sub_26294DE98();
      v152 = os_log_type_enabled(v60, v151);
      v153 = v387;
      if (v152)
      {
        v154 = swift_slowAlloc();
        *v154 = 134218496;
        *(v154 + 4) = v1;
        *(v154 + 12) = 2048;
        *(v154 + 14) = v2;
        *(v154 + 22) = 2048;
        *(v154 + 24) = v3;
        _os_log_impl(&dword_2628DB000, v60, v151, "required %f, total %f, totalUsage %f", v154, 0x20u);
        v155 = v154;
        v113 = v388;
        MEMORY[0x26672DCE0](v155, -1, -1);
      }

      v347 = v2 - v3 >= v1;
      v68 = v386;
    }

    v1 = 0.0;
LABEL_120:
    v265 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
    swift_beginAccess();
    v411 = *(*&v68[v265] + 16);
    if (!v411)
    {
LABEL_134:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_26294CFF8();

      v294 = *(v421 + 16);

      if (!v294)
      {
        goto LABEL_141;
      }

      v85 = v402;
      sub_262906C54(v402, &v421);
      __swift_project_boxed_opaque_existential_1(&v421, v422);
      v295 = v406;
      v296 = v416;
      v297 = v417;
      (*(v406 + 104))(v416, *MEMORY[0x277D49290], v417);
      sub_26294C628();
      (*(v295 + 8))(v296, v297);
      __swift_destroy_boxed_opaque_existential_1Tm(&v421);
      swift_getKeyPath();
      swift_getKeyPath();
      v149 = sub_26294CFE8();
      v65 = v298;
      v118 = *v298;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v65 = v118;
      if (result)
      {
LABEL_136:
        v299 = v352;
        if (*(v118 + 16))
        {
          v300 = (*(v352 + 80) + 32) & ~*(v352 + 80);
          sub_26294CC08();
          (v149)(&v421, 0);

          swift_getKeyPath();
          swift_getKeyPath();
          sub_26294CFF8();

          if (*(v421 + 16))
          {
            v301 = v349;
            v302 = v350;
            (*(v299 + 16))(v349, v421 + v300, v350);

            sub_26294CBF8();
            v304 = v303;
            (*(v299 + 8))(v301, v302);
            v1 = v1 + v304;
            v113 = v406;
            goto LABEL_142;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return result;
      }

LABEL_175:
      result = sub_26291DC68(v118);
      v118 = result;
      *v65 = result;
      goto LABEL_136;
    }

    v266 = 0;
    v410 = (v370 + 16);
    v409 = (v354 + 8);
    LODWORD(v408) = *MEMORY[0x277D49238];
    v407 = (v406 + 104);
    v418 = v393 + 16;
    v415 = (v393 + 24);
    v21 = (v393 + 8);
    v404 = (v370 + 24);
    v403 = (v406 + 8);
    v401 = (v370 + 8);
    v267 = v394;
    v405 = v265;
LABEL_122:
    v268 = *&v68[v265];
    if (v266 < *(v268 + 16))
    {
      break;
    }

    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    swift_once();
  }

  v413 = ((*(v370 + 80) + 32) & ~*(v370 + 80));
  v269 = *(v370 + 72);
  ObjectType = v266;
  v270 = (v269 * v266);
  v271 = *(v370 + 16);
  v412 = v270;
  v272 = v271(v267, &v413[v268 + v270], v378);
  v60 = v368;
  MEMORY[0x26672C010](v272);
  v273 = sub_26294C508();
  v113 = v274;
  (*v409)(v60, v369);
  v275 = v395;
  *v395 = v273;
  v275[1] = v113;
  (*v407)();
  v276 = *(sub_26294C928() + 16);

  if (!v276)
  {
LABEL_130:
    sub_262906C54(v402, &v421);
    v68 = v423;
    __swift_project_boxed_opaque_existential_1(&v421, v422);
    sub_26294C628();
    __swift_destroy_boxed_opaque_existential_1Tm(&v421);
    v267 = v394;
    sub_26294CA08();
    sub_26294C9F8();
    sub_26294C8E8();
    sub_26294C9F8();
    v290 = v289;
    v291 = v386;
    v265 = v405;
    swift_beginAccess();
    v292 = *&v291[v265];
    v293 = swift_isUniquelyReferenced_nonNull_native();
    *&v291[v265] = v292;
    if ((v293 & 1) == 0)
    {
      v292 = sub_26291DB84(v292);
      *&v386[v265] = v292;
    }

    if (ObjectType >= v292[2])
    {
      goto LABEL_166;
    }

    v266 = ObjectType + 1;
    v1 = v1 + v290;
    v60 = v378;
    (*v404)(&v413[v292 + v412], v267, v378);
    v68 = v386;
    *&v386[v265] = v292;
    swift_endAccess();
    (*v403)(v395, v417);
    (*v401)(v267, v60);
    if (v266 == v411)
    {
      goto LABEL_134;
    }

    goto LABEL_122;
  }

  v277 = 0;
  v278 = 0.0;
  while (1)
  {
    v65 = v394;
    v279 = sub_26294C928();
    if (v277 >= *(v279 + 16))
    {
      break;
    }

    v280 = (*(v393 + 80) + 32) & ~*(v393 + 80);
    v281 = *(v393 + 72) * v277;
    (*(v393 + 16))(v396, v279 + v280 + v281, v397);

    sub_262906C54(v402, &v421);
    __swift_project_boxed_opaque_existential_1(&v421, v422);
    sub_26294C648();
    __swift_destroy_boxed_opaque_existential_1Tm(&v421);
    sub_26294C9A8();
    sub_26294C998();
    v283 = v282;
    v284 = sub_26294C918();
    v286 = v285;
    v113 = *v285;
    v287 = swift_isUniquelyReferenced_nonNull_native();
    *v286 = v113;
    if ((v287 & 1) == 0)
    {
      v113 = sub_26291DBD0(v113);
      *v286 = v113;
    }

    if (v277 >= v113[2])
    {
      goto LABEL_160;
    }

    ++v277;
    v278 = v278 + v283;
    v288 = v113 + v280 + v281;
    v60 = v396;
    v113 = v397;
    (*v415)(v288, v396, v397);
    v284(&v421, 0);
    (*v21)(v60, v113);
    if (v276 == v277)
    {
      goto LABEL_130;
    }
  }

  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
  swift_once();
  v96 = sub_26294CE48();
  __swift_project_value_buffer(v96, qword_27FF314B0);
  v97 = v113;
  v98 = sub_26294CE28();
  v99 = sub_26294DEA8();

  if (os_log_type_enabled(v98, v99))
  {
    v100 = v113;
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    *v101 = 138412290;
    v103 = v100;
    v104 = _swift_stdlib_bridgeErrorToNSError();
    *(v101 + 4) = v104;
    *v102 = v104;
    _os_log_impl(&dword_2628DB000, v98, v99, "Error %@ encountered while getting total used and total stored from snapshot", v101, 0xCu);
    sub_2628DF6F0(v102, &qword_27FF2EDF8, &qword_26294F460);
    MEMORY[0x26672DCE0](v102, -1, -1);
    v105 = v101;
    v113 = v100;
    MEMORY[0x26672DCE0](v105, -1, -1);
  }

  v106 = sub_26294DE28();
  v107 = v404;
  (*(*(v106 - 8) + 56))(v404, 1, 1, v106);
  v108 = swift_allocObject();
  v108[2] = 0;
  v108[3] = 0;
  v109 = v386;
  v110 = ObjectType;
  v108[4] = v386;
  v108[5] = v110;
  v111 = v109;
  sub_2628EB2A0(0, 0, v107, &unk_26294F480, v108);
}

uint64_t sub_2628EAC30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EDE8, &qword_26294F428);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_26294DE28();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v11[5] = a1;
  v11[6] = a2;
  v11[7] = ObjectType;
  v12 = v3;
  sub_262906C04(a1, a2);
  sub_2628EB2A0(0, 0, v9, &unk_26294F470, v11);
}

uint64_t sub_2628EAD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  return MEMORY[0x2822009F8](sub_2628EAD88, 0, 0);
}

void (*sub_2628EAD88())(uint64_t, void)
{
  if (qword_27FF2E7B8 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EDF0, &qword_26294F458);
  __swift_project_value_buffer(v1, qword_27FF2EAC8);
  swift_beginAccess();
  result = sub_26294DC68();
  if (*v3 == -1)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v0 + 72);
    ++*v3;
    result(v0 + 16, 0);
    swift_endAccess();
    v5 = *(v4 + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_managementHandler + 24);
    v6 = *(v4 + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_managementHandler + 32);
    __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_managementHandler), v5);
    v8 = (*(v6 + 8) + **(v6 + 8));
    v7 = swift_task_alloc();
    *(v0 + 96) = v7;
    *v7 = v0;
    v7[1] = sub_2628EAF68;

    return v8(v5, v6);
  }

  return result;
}

uint64_t sub_2628EAF68()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_2628EB0FC;
  }

  else
  {
    v2 = sub_2628EB07C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2628EB07C()
{
  v1 = v0[10];
  if (v1)
  {
    v2 = v0[11];

    v1(v3);
    sub_262905484(v1, v2);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_2628EB0FC()
{
  if (qword_27FF2E7C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_26294CE48();
  __swift_project_value_buffer(v2, qword_27FF314B0);
  v3 = v1;
  v4 = sub_26294CE28();
  v5 = sub_26294DEA8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 104);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2628DB000, v4, v5, "Unable to cancel sheet: %@", v8, 0xCu);
    sub_2628DF6F0(v9, &qword_27FF2EDF8, &qword_26294F460);
    MEMORY[0x26672DCE0](v9, -1, -1);
    MEMORY[0x26672DCE0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2628EB2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EDE8, &qword_26294F428);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2628DF954(a3, v25 - v10, &qword_27FF2EDE8, &qword_26294F428);
  v12 = sub_26294DE28();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2628DF6F0(v11, &qword_27FF2EDE8, &qword_26294F428);
  }

  else
  {
    sub_26294DE18();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_26294DE08();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_26294DD78() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2628DF6F0(a3, &qword_27FF2EDE8, &qword_26294F428);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2628DF6F0(a3, &qword_27FF2EDE8, &qword_26294F428);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2628EB5A0()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EDE8, &qword_26294F428);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_26294DE28();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v6[5] = ObjectType;
  v7 = v0;
  sub_2628EB2A0(0, 0, v4, &unk_26294F438, v6);
}

uint64_t sub_2628EB6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_26294CDF8();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2628EB770, 0, 0);
}

void (*sub_2628EB770())(void *, void)
{
  if (qword_27FF2E7B0 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EDF0, &qword_26294F458);
  __swift_project_value_buffer(v1, qword_27FF2EAB0);
  swift_beginAccess();
  result = sub_26294DC68();
  if (*v3 == -1)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[11];
    v4 = v0[12];
    v7 = v0[9];
    v6 = v0[10];
    ++*v3;
    result(v0 + 2, 0);
    swift_endAccess();
    v8 = *(v7 + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_managementHandler + 24);
    v9 = *(v7 + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_managementHandler + 32);
    __swift_project_boxed_opaque_existential_1((v7 + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_managementHandler), v8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    v10 = sub_26294CDE8();
    (*(v5 + 8))(v4, v6);
    v12 = (*(v9 + 16) + **(v9 + 16));
    v11 = swift_task_alloc();
    v0[13] = v11;
    *v11 = v0;
    v11[1] = sub_2628EB9DC;

    return v12(v10 & 1, v8, v9);
  }

  return result;
}

uint64_t sub_2628EB9DC()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2628EBB18, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2628EBB18()
{
  if (qword_27FF2E7C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = sub_26294CE48();
  __swift_project_value_buffer(v2, qword_27FF314B0);
  v3 = v1;
  v4 = sub_26294CE28();
  v5 = sub_26294DEA8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 112);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2628DB000, v4, v5, "Unable to complete sheet: %@", v8, 0xCu);
    sub_2628DF6F0(v9, &qword_27FF2EDF8, &qword_26294F460);
    MEMORY[0x26672DCE0](v9, -1, -1);
    MEMORY[0x26672DCE0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

id SEStorageManagementController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SEStorageManagementController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2628EC2F0@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = sub_26294CFC8();
  *a2 = result;
  return result;
}

uint64_t sub_2628EC330()
{
  v1 = sub_26294CCB8();
  v101 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v95 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_26294C7A8();
  v105 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v113 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26294CBA8();
  v110 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v97 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26294CD78();
  v114 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v108 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26294C828();
  v10 = *(v9 - 8);
  v118 = v9;
  v119 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v112 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v107 = &v95 - v14;
  MEMORY[0x28223BE20](v13);
  v104 = &v95 - v15;
  v117 = sub_26294C8A8();
  v115 = *(v117 - 8);
  v16 = MEMORY[0x28223BE20](v117);
  v111 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v106 = &v95 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v100 = &v95 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v103 = &v95 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v102 = &v95 - v25;
  MEMORY[0x28223BE20](v24);
  v99 = &v95 - v26;
  sub_2628EE448();
  sub_2628EEBD0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v27 = *(v120 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v28 = *(v120 + 16);

  v29 = sub_2628E45F4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v30 = *(v120 + 16);

  v109 = v7;
  if (v27)
  {
    if (!v28)
    {
      v31 = v1;
      if (v29)
      {
        v35 = 5;
      }

      else
      {
        v35 = 1;
      }

      if (v30)
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    v31 = v1;
    v32 = !v29;
    v33 = 3;
    v34 = 7;
  }

  else
  {
    if (!v28)
    {
      v31 = v1;
      if (v29)
      {
        v35 = 4;
      }

      else
      {
        v35 = 0;
      }

      if (v30)
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    v31 = v1;
    v32 = !v29;
    v33 = 2;
    v34 = 6;
  }

  if (v32)
  {
    v35 = v33;
  }

  else
  {
    v35 = v34;
  }

  if (v30)
  {
LABEL_10:
    v35 |= 8uLL;
  }

LABEL_11:
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *&v120 = v35;
  v37 = v0;
  sub_26294D008();
  v38 = swift_getKeyPath();
  v39 = swift_getKeyPath();
  sub_26294CFF8();

  v40 = v120;
  v41 = v115;
  if (!v120)
  {
    goto LABEL_14;
  }

  if (__OFSUB__(v120, 1))
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  if (((v120 - 1) & v120) != 0)
  {
LABEL_14:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    v42 = *(v120 + 16);

    if (!v42)
    {
      v38 = MEMORY[0x277D84F90];
      v31 = v119;
      v5 = v104;
      v3 = v103;
      goto LABEL_18;
    }

    v31 = v119;
    v5 = v104;
    (*(v119 + 13))(v104, *MEMORY[0x277D48EC0], v118);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    sub_2628E3654(v120);

    KeyPath = v99;
    sub_26294C838();
    v38 = sub_26291D700(0, 1, 1, MEMORY[0x277D84F90]);
    v35 = *(v38 + 16);
    v40 = *(v38 + 24);
    v39 = v35 + 1;
    v3 = v103;
    if (v35 < v40 >> 1)
    {
LABEL_16:
      *(v38 + 16) = v39;
      (*(v41 + 32))(v38 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v35, KeyPath, v117);
LABEL_18:
      if (sub_2628E45F4())
      {
        (*(v31 + 13))(v5, *MEMORY[0x277D48EB0], v118);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_26294CFF8();

        sub_2628E384C(v120);

        sub_26294C838();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_26291D700(0, *(v38 + 16) + 1, 1, v38);
        }

        v44 = *(v38 + 16);
        v43 = *(v38 + 24);
        if (v44 >= v43 >> 1)
        {
          v38 = sub_26291D700((v43 > 1), v44 + 1, 1, v38);
        }

        *(v38 + 16) = v44 + 1;
        (*(v41 + 32))(v38 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v44, v102, v117);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_26294CFF8();

      v45 = *(v120 + 16);

      if (v45)
      {
        (*(v31 + 13))(v5, *MEMORY[0x277D48EC8], v118);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_26294CFF8();

        sub_2628E3A44(v120);

        sub_26294C838();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_26291D700(0, *(v38 + 16) + 1, 1, v38);
        }

        v47 = *(v38 + 16);
        v46 = *(v38 + 24);
        if (v47 >= v46 >> 1)
        {
          v38 = sub_26291D700((v46 > 1), v47 + 1, 1, v38);
        }

        *(v38 + 16) = v47 + 1;
        (*(v41 + 32))(v38 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v47, v3, v117);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_26294CFF8();

      v48 = *(v120 + 16);

      if (v48)
      {
        (*(v31 + 13))(v5, *MEMORY[0x277D48EB8], v118);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_26294CFF8();

        sub_2628E3C3C(v120);

        v49 = v100;
        sub_26294C838();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_26291D700(0, *(v38 + 16) + 1, 1, v38);
        }

        v51 = *(v38 + 16);
        v50 = *(v38 + 24);
        if (v51 >= v50 >> 1)
        {
          v38 = sub_26291D700((v50 > 1), v51 + 1, 1, v38);
        }

        *(v38 + 16) = v51 + 1;
        (*(v41 + 32))(v38 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v51, v49, v117);
      }

      goto LABEL_36;
    }

LABEL_97:
    v38 = sub_26291D700((v40 > 1), v39, 1, v38);
    goto LABEL_16;
  }

  v54 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v96 = v37;
  if (v120)
  {
    swift_getKeyPath();
    v39 = swift_getKeyPath();
    sub_26294CFF8();

    v57 = v120;
    v111 = *(v120 + 16);
    if (v111)
    {
      v38 = 0;
      v104 = (v120 + ((*(v114 + 80) + 32) & ~*(v114 + 80)));
      v103 = (v114 + 16);
      LODWORD(v102) = *MEMORY[0x277D48EA0];
      v101 = v119 + 104;
      v119 = v110 + 8;
      v100 = (v114 + 8);
      v99 = (v41 + 32);
      v3 = MEMORY[0x277D84F90];
      v31 = v97;
      v5 = v108;
      v35 = v109;
      v37 = v106;
      KeyPath = v107;
      v105 = v120;
      v98 = v110 + 16;
      while (1)
      {
        v40 = *(v57 + 16);
        if (v38 >= v40)
        {
          break;
        }

        v58 = *(v114 + 72);
        v116 = v38;
        v59 = &v104[v58 * v38];
        v60 = *(v114 + 16);
        v60(v5, v59, v35);
        v60(KeyPath, v5, v35);
        (*v101)(KeyPath, v102, v118);
        v61 = sub_26294CD58();
        v62 = *(v61 + 16);
        if (v62)
        {
          v113 = v3;
          v123 = MEMORY[0x277D84F90];
          v63 = v61;
          sub_2628FBEF4(0, v62, 0);
          v64 = v123;
          v65 = v110[80];
          v112 = v63;
          v66 = &v63[(v65 + 32) & ~v65];
          v67 = *(v110 + 9);
          v68 = *(v110 + 2);
          do
          {
            v68(v31, v66, v54);
            v123 = v64;
            v69 = v31;
            v71 = *(v64 + 16);
            v70 = *(v64 + 24);
            if (v71 >= v70 >> 1)
            {
              sub_2628FBEF4((v70 > 1), v71 + 1, 1);
            }

            v121 = v54;
            v122 = sub_262906CE0(&qword_27FF2EC88, MEMORY[0x277D48F58], MEMORY[0x277D48F50]);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v120);
            v68(boxed_opaque_existential_1, v69, v54);
            v64 = v123;
            *(v123 + 16) = v71 + 1;
            sub_262905600(&v120, v64 + 40 * v71 + 32);
            (*v119)(v69, v54);
            v66 += v67;
            --v62;
            v31 = v69;
          }

          while (v62);

          v41 = v115;
          v5 = v108;
          v35 = v109;
          v37 = v106;
          KeyPath = v107;
          v3 = v113;
        }

        else
        {
        }

        sub_26294C838();
        (*v100)(v5, v35);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_26291D700(0, *(v3 + 2) + 1, 1, v3);
        }

        v39 = *(v3 + 2);
        v73 = *(v3 + 3);
        if (v39 >= v73 >> 1)
        {
          v3 = sub_26291D700((v73 > 1), v39 + 1, 1, v3);
        }

        v74 = v117;
        v75 = v116 + 1;
        *(v3 + 2) = v39 + 1;
        v38 = v75;
        (*(v41 + 32))(&v3[((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v39], v37, v74);
        v57 = v105;
        if (v38 == v111)
        {

          v37 = v96;
          goto LABEL_88;
        }
      }

      __break(1u);
      goto LABEL_95;
    }

    v3 = MEMORY[0x277D84F90];
LABEL_88:
    swift_getKeyPath();
    swift_getKeyPath();
    *&v120 = v3;
LABEL_93:
    v94 = v37;
    return sub_26294D008();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if ((v120 & 2) != 0)
  {
    v38 = swift_getKeyPath();
    v39 = swift_getKeyPath();
    sub_26294CFF8();

    v76 = v120;
    v108 = *(v120 + 16);
    if (v108)
    {
      v35 = 0;
      v106 = (v120 + ((*(v105 + 80) + 32) & ~*(v105 + 80)));
      v104 = (v105 + 16);
      LODWORD(v103) = *MEMORY[0x277D48E98];
      v102 = v119 + 104;
      v119 = v101 + 8;
      v100 = (v105 + 8);
      v99 = (v41 + 32);
      v5 = MEMORY[0x277D84F90];
      v107 = v120;
      v98 = v101 + 16;
      while (1)
      {
        v40 = *(v76 + 2);
        if (v35 >= v40)
        {
          break;
        }

        v77 = *(v105 + 72);
        v114 = v35;
        v78 = &v106[v77 * v35];
        v79 = *(v105 + 16);
        v80 = v113;
        v81 = v116;
        v79(v113, v78, v116);
        KeyPath = v112;
        v79(v112, v80, v81);
        (*v102)(KeyPath, v103, v118);
        v82 = sub_26294C738();
        v83 = *(v82 + 16);
        if (v83)
        {
          v110 = v5;
          v123 = MEMORY[0x277D84F90];
          sub_2628FBEF4(0, v83, 0);
          v84 = v123;
          v85 = v101[80];
          v109 = v82;
          v86 = v82 + ((v85 + 32) & ~v85);
          KeyPath = *(v101 + 9);
          v87 = *(v101 + 2);
          do
          {
            v87(v3, v86, v31);
            v123 = v84;
            v89 = *(v84 + 16);
            v88 = *(v84 + 24);
            if (v89 >= v88 >> 1)
            {
              sub_2628FBEF4((v88 > 1), v89 + 1, 1);
            }

            v121 = v31;
            v122 = sub_262906CE0(&qword_27FF2EC80, MEMORY[0x277D48FC8], MEMORY[0x277D48FC0]);
            v90 = __swift_allocate_boxed_opaque_existential_1(&v120);
            v87(v90, v3, v31);
            v84 = v123;
            *(v123 + 16) = v89 + 1;
            sub_262905600(&v120, v84 + 40 * v89 + 32);
            (*v119)(v3, v31);
            v86 += KeyPath;
            --v83;
          }

          while (v83);

          v37 = v96;
          v41 = v115;
          v5 = v110;
        }

        else
        {
        }

        sub_26294C838();
        (*v100)(v113, v116);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v92 = v114;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v5 = sub_26291D700(0, *(v5 + 2) + 1, 1, v5);
        }

        v39 = *(v5 + 2);
        v93 = *(v5 + 3);
        v38 = v39 + 1;
        if (v39 >= v93 >> 1)
        {
          v5 = sub_26291D700((v93 > 1), v39 + 1, 1, v5);
        }

        v35 = v92 + 1;
        *(v5 + 2) = v38;
        (*(v41 + 32))(&v5[((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v39], v111, v117);
        v76 = v107;
        if (v35 == v108)
        {

          goto LABEL_92;
        }
      }

LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v5 = MEMORY[0x277D84F90];
LABEL_92:
    swift_getKeyPath();
    swift_getKeyPath();
    *&v120 = v5;
    goto LABEL_93;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if ((v120 & 8) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EC78, &qword_26294F218);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_26294ECB0;
    (*(v119 + 13))(v104, *MEMORY[0x277D48EC8], v118);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    sub_2628E3A44(v120);

    goto LABEL_90;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v55 = v119;
  v56 = v104;
  if ((v120 & 4) != 0)
  {
    result = sub_2628E45F4();
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EC78, &qword_26294F218);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_26294ECB0;
      (*(v55 + 13))(v56, *MEMORY[0x277D48EB0], v118);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_26294CFF8();

      sub_2628E384C(v120);

LABEL_90:
      sub_26294C838();
LABEL_36:
      swift_getKeyPath();
      swift_getKeyPath();
      *&v120 = v38;
      v52 = v37;
      return sub_26294D008();
    }
  }

  return result;
}

uint64_t sub_2628EDABC()
{
  v1 = sub_26294C828();
  v46 = *(v1 - 8);
  v47 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v44 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v42 = &v41 - v4;
  v5 = sub_26294CD98();
  v45 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E9A0, &qword_26294E9A8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v43 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v41 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  v16 = sub_26294C8A8();
  v17 = *(v16 - 8);
  v50 = *(v17 + 56);
  v51 = v16;
  v49 = v17 + 56;
  v50(v15, 1, 1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2628DF954(v15, v13, &qword_27FF2E9A0, &qword_26294E9A8);
  v18 = v0;
  v48 = v13;
  sub_26294D008();
  sub_2628DF6F0(v15, &qword_27FF2E9A0, &qword_26294E9A8);
  v57 = MEMORY[0x277D84F90];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v19 = sub_2628E3654(v54);

  sub_2628E4350(v19, sub_26291D79C, &qword_27FF2EC98, &qword_26294F228);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v20 = sub_2628E3C3C(v54);

  sub_2628E4350(v20, sub_26291D79C, &qword_27FF2EC98, &qword_26294F228);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v21 = *(v54 + 16);

  if (v21)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    sub_2628E4484();
    sub_26294CD88();
    v22 = v57;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_26291D79C(0, v22[2] + 1, 1, v22);
    }

    v24 = v22[2];
    v23 = v22[3];
    if (v24 >= v23 >> 1)
    {
      v22 = sub_26291D79C((v23 > 1), v24 + 1, 1, v22);
    }

    v55 = v5;
    v56 = sub_262906CE0(&qword_27FF2EE08, MEMORY[0x277D49068], MEMORY[0x277D49060]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v54);
    v26 = v45;
    (*(v45 + 16))(boxed_opaque_existential_1, v7, v5);
    v22[2] = v24 + 1;
    sub_262905600(&v54, &v22[5 * v24 + 4]);
    (*(v26 + 8))(v7, v5);
    v57 = v22;
  }

  else
  {
    v22 = v57;
  }

  *&v54 = v22;

  sub_2628FD144(&v54);
  v27 = v54;
  v28 = *(v54 + 16);
  if (v28 <= 1)
  {
    if (v28 != 1)
    {

      (v50)(v15, 1, 1, v51);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2628DF954(v15, v48, &qword_27FF2E9A0, &qword_26294E9A8);
      v39 = v18;
      sub_26294D008();
      return sub_2628DF6F0(v15, &qword_27FF2E9A0, &qword_26294E9A8);
    }

    v29 = 1;
  }

  else
  {
    v29 = 2;
  }

  sub_262906C54(v54 + 32, &v54);
  sub_262906C54(v27 + 32, v52);
  __swift_project_boxed_opaque_existential_1(v52, v53);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  __swift_project_boxed_opaque_existential_1(&v54, v55);
  if (DynamicType == swift_getDynamicType() && (v28 < 2 || (sub_262906C54(v27 + 72, v52), __swift_project_boxed_opaque_existential_1(v52, v53), v34 = swift_getDynamicType(), __swift_destroy_boxed_opaque_existential_1Tm(v52), __swift_project_boxed_opaque_existential_1(&v54, v55), v34 == swift_getDynamicType())))
  {

    (*(v46 + 104))(v42, *MEMORY[0x277D48EA8], v47);
    if (*(v27 + 16) == v29)
    {
    }

    else
    {
      sub_2628FBD14(v27, v27 + 32, 0, (2 * v29) | 1);
    }

    v36 = v50;
    v35 = v51;
    v37 = v43;
    sub_26294C838();
    (v36)(v37, 0, 1, v35);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2628DF954(v37, v15, &qword_27FF2E9A0, &qword_26294E9A8);
    v38 = v18;
    sub_26294D008();

    v33 = v37;
  }

  else
  {

    (*(v46 + 104))(v44, *MEMORY[0x277D48EA8], v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EC90, &qword_26294F220);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_26294ECB0;
    sub_262906C54(&v54, v31 + 32);
    sub_26294C838();
    (v50)(v15, 0, 1, v51);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2628DF954(v15, v48, &qword_27FF2E9A0, &qword_26294E9A8);
    v32 = v18;
    sub_26294D008();

    v33 = v15;
  }

  sub_2628DF6F0(v33, &qword_27FF2E9A0, &qword_26294E9A8);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v54);
}

uint64_t sub_2628EE448()
{
  v46 = 0;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED38, &qword_26294F288);
  v1 = MEMORY[0x28223BE20](v58);
  v57 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v56 = &v44 - v4;
  v5 = MEMORY[0x28223BE20](v3);
  v55 = &v44 - v6;
  MEMORY[0x28223BE20](v5);
  v54 = &v44 - v7;
  v53 = sub_26294CD78();
  v59 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26294CBA8();
  v11 = *(v10 - 1);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_walletGroups;
  swift_beginAccess();
  v45 = v0;
  v15 = *&v0[v14];
  v16 = MEMORY[0x277D84F98];
  v64 = MEMORY[0x277D84F98];
  v17 = *(v15 + 16);

  if (v17)
  {
    v18 = 0;
    v19 = v11 + 8;
    v20 = v46;
    while (v18 < *(v15 + 16))
    {
      (*(v11 + 16))(v13, v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v18, v10);
      sub_2628EFF1C(&v64, v13);
      if (v20)
      {
        goto LABEL_37;
      }

      ++v18;
      (*v19)(v13, v10);
      if (v17 == v18)
      {
        v46 = 0;
        v16 = v64;
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_7:

  v20 = *(v16 + 16);
  if (v20)
  {
    v64 = MEMORY[0x277D84F90];
    sub_2628FBEB0(0, v20, 0);
    v21 = v64;
    v19 = v16 + 64;
    v13 = sub_26294DF18();
    v22 = 0;
    v23 = *(v16 + 36);
    v52 = v59 + 32;
    v47 = v16 + 72;
    v48 = v20;
    v49 = v23;
    v50 = v16 + 64;
    v51 = v16;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(v16 + 32))
    {
      if ((*(v19 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_32;
      }

      if (v23 != *(v16 + 36))
      {
        goto LABEL_33;
      }

      v61 = 1 << v13;
      v62 = v13 >> 6;
      v60 = v22;
      v25 = *(v16 + 48);
      v26 = sub_26294CCE8();
      v27 = *(v26 - 8);
      v28 = v54;
      (*(v27 + 16))(v54, v25 + *(v27 + 72) * v13, v26);
      v29 = *(*(v16 + 56) + 8 * v13);
      v30 = *(v27 + 32);
      v63 = v21;
      v31 = v55;
      v30(v55, v28, v26);
      *(v31 + *(v58 + 48)) = v29;
      v20 = v56;
      v10 = &qword_26294F288;
      sub_2628DF954(v31, v56, &qword_27FF2ED38, &qword_26294F288);

      v32 = v57;
      sub_2628DF954(v31, v57, &qword_27FF2ED38, &qword_26294F288);
      sub_26294CCF8();
      v33 = v31;
      v21 = v63;
      sub_2628DF6F0(v33, &qword_27FF2ED38, &qword_26294F288);
      (*(v27 + 8))(v32, v26);
      v64 = v21;
      v19 = *(v21 + 16);
      v34 = *(v21 + 24);
      if (v19 >= v34 >> 1)
      {
        sub_2628FBEB0((v34 > 1), v19 + 1, 1);
        v21 = v64;
      }

      *(v21 + 16) = v19 + 1;
      (*(v59 + 32))(v21 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v19, v9, v53);
      v16 = v51;
      v24 = 1 << *(v51 + 32);
      if (v13 >= v24)
      {
        goto LABEL_34;
      }

      v19 = v50;
      v35 = *(v50 + 8 * v62);
      if ((v35 & v61) == 0)
      {
        goto LABEL_35;
      }

      LODWORD(v23) = v49;
      if (v49 != *(v51 + 36))
      {
        goto LABEL_36;
      }

      v36 = v35 & (-2 << (v13 & 0x3F));
      if (v36)
      {
        v24 = __clz(__rbit64(v36)) | v13 & 0x7FFFFFFFFFFFFFC0;
        v20 = v48;
      }

      else
      {
        v37 = v62 << 6;
        v38 = v62 + 1;
        v39 = (v47 + 8 * v62);
        v20 = v48;
        while (v38 < (v24 + 63) >> 6)
        {
          v40 = *v39++;
          v10 = v40;
          v37 += 64;
          ++v38;
          if (v40)
          {
            sub_26290571C(v13, v49, 0);
            v24 = __clz(__rbit64(v10)) + v37;
            goto LABEL_10;
          }
        }

        sub_26290571C(v13, v49, 0);
      }

LABEL_10:
      v22 = v60 + 1;
      v13 = v24;
      if ((v60 + 1) == v20)
      {

        goto LABEL_28;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:

    (*v19)(v13, v10);

    __break(1u);
    goto LABEL_38;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_28:
  v64 = v21;

  v20 = v46;
  sub_2628FCFA0(&v64, MEMORY[0x277D49038], sub_262904A84, MEMORY[0x277D49038], MEMORY[0x277D49020]);
  if (!v20)
  {

    v41 = v64;
    swift_getKeyPath();
    swift_getKeyPath();
    v64 = v41;
    v42 = v45;
    return sub_26294D008();
  }

LABEL_38:

  __break(1u);
  return result;
}

uint64_t sub_2628EEBD0()
{
  v1 = v0;
  v2 = 0;
  v131 = sub_26294C7A8();
  v136 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v142 = &v127 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26294CCB8();
  v5 = *(v4 - 8);
  v161 = v4;
  v162 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_26294CC38();
  v156 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v165 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ECC8, &qword_26294F238);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v157 = &v127 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ECD0, &qword_26294F240);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v135 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v134 = &v127 - v17;
  v151 = sub_26294C7F8();
  v18 = *(v151 - 8);
  v19 = MEMORY[0x28223BE20](v151);
  v147 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v138 = &v127 - v22;
  MEMORY[0x28223BE20](v21);
  v167 = (&v127 - v23);
  v24 = sub_26294CA28();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v127 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v164 = (&v127 - v30);
  MEMORY[0x28223BE20](v29);
  v160 = &v127 - v31;
  v32 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
  swift_beginAccess();
  v33 = *(v1 + v32);
  v34 = *(v33 + 16);
  v143 = v1;
  v155 = v7;
  v159 = v12;
  v144 = v18;
  v150 = v24;
  v148 = v25;
  v149 = v28;
  v158 = v34;
  if (!v34)
  {
    v127 = 0;
    v37 = MEMORY[0x277D84F98];
LABEL_22:
    v63 = *(v37 + 64);
    v133 = v37 + 64;
    v64 = 1 << *(v37 + 32);
    if (v64 < 64)
    {
      v65 = ~(-1 << v64);
    }

    else
    {
      v65 = -1;
    }

    v66 = v65 & v63;
    v128 = (v64 + 63) >> 6;
    v137 = (v144 + 16);
    v145 = (v144 + 32);
    v152 = v25 + 16;
    v153 = (v25 + 8);
    v154 = v156 + 16;
    v164 = (v156 + 32);
    v160 = (v162 + 32);
    v130 = (v144 + 8);
    v129 = v136 + 32;

    v67 = 0;
    v68 = MEMORY[0x277D84F90];
    v132 = v37;
    while (1)
    {
      v146 = v68;
      if (!v66)
      {
        if (v128 <= v67 + 1)
        {
          v70 = v67 + 1;
        }

        else
        {
          v70 = v128;
        }

        v71 = v70 - 1;
        while (1)
        {
          v69 = v67 + 1;
          if (__OFADD__(v67, 1))
          {
            break;
          }

          if (v69 >= v128)
          {
            v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ECD8, &qword_26294F248);
            v116 = v135;
            (*(*(v115 - 8) + 56))(v135, 1, 1, v115);
            v141 = 0;
            v140 = v71;
            v81 = v116;
            goto LABEL_37;
          }

          v66 = *(v133 + 8 * v69);
          ++v67;
          if (v66)
          {
            v140 = v69;
            goto LABEL_36;
          }
        }

LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v140 = v67;
      v69 = v67;
LABEL_36:
      v141 = (v66 - 1) & v66;
      v72 = __clz(__rbit64(v66)) | (v69 << 6);
      v73 = v144;
      v74 = v138;
      v75 = v151;
      (*(v144 + 16))(v138, *(v37 + 48) + *(v144 + 72) * v72, v151);
      v76 = *(*(v37 + 56) + 8 * v72);
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ECD8, &qword_26294F248);
      v78 = *(v77 + 48);
      v79 = *(v73 + 32);
      v80 = v135;
      v79(v135, v74, v75);
      *&v80[v78] = v76;
      v81 = v80;
      (*(*(v77 - 8) + 56))(v80, 0, 1, v77);

      v1 = v143;
      v24 = v150;
LABEL_37:
      v82 = v81;
      v83 = v134;
      sub_262906F00(v82, v134, &qword_27FF2ECD0, &qword_26294F240);
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ECD8, &qword_26294F248);
      if ((*(*(v84 - 8) + 48))(v83, 1, v84) == 1)
      {
        break;
      }

      v85 = *(v83 + *(v84 + 48));
      (*v145)(v147, v83, v151);
      v169 = MEMORY[0x277D84F98];
      v86 = *(v85 + 16);
      if (v86)
      {
        v87 = 0;
        v88 = v148;
        while (1)
        {
          if (v87 >= *(v85 + 16))
          {
            __break(1u);
            goto LABEL_81;
          }

          (*(v88 + 16))(v28, v85 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v87, v24);
          sub_2628F0630(&v169, v28, v1);
          if (v2)
          {
            break;
          }

          ++v87;
          (*v153)(v28, v24);
          if (v86 == v87)
          {
            v139 = 0;
            v89 = v169;
            goto LABEL_45;
          }
        }

        (*v153)(v28, v24);

        __break(1u);
        goto LABEL_87;
      }

      v139 = v2;
      v89 = MEMORY[0x277D84F98];
LABEL_45:

      v90 = 0;
      v158 = v89;
      v93 = *(v89 + 64);
      v92 = v89 + 64;
      v91 = v93;
      v94 = 1 << *(v92 - 32);
      if (v94 < 64)
      {
        v95 = ~(-1 << v94);
      }

      else
      {
        v95 = -1;
      }

      v96 = v95 & v91;
      v97 = (v94 + 63) >> 6;
      v2 = MEMORY[0x277D84F90];
      v98 = v157;
      v163 = v92;
      v167 = MEMORY[0x277D84F90];
      if ((v95 & v91) == 0)
      {
LABEL_50:
        if (v97 <= v90 + 1)
        {
          v100 = v90 + 1;
        }

        else
        {
          v100 = v97;
        }

        v1 = v100 - 1;
        while (1)
        {
          v99 = v90 + 1;
          if (__OFADD__(v90, 1))
          {
            break;
          }

          if (v99 >= v97)
          {
            v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ECE0, &qword_26294F250);
            (*(*(v111 - 8) + 56))(v12, 1, 1, v111);
            v96 = 0;
            v90 = v1;
            goto LABEL_59;
          }

          v96 = *(v92 + 8 * v99);
          ++v90;
          if (v96)
          {
            v90 = v99;
            goto LABEL_58;
          }
        }

        __break(1u);
        break;
      }

      while (1)
      {
        v99 = v90;
LABEL_58:
        v101 = __clz(__rbit64(v96));
        v96 &= v96 - 1;
        v102 = v101 | (v99 << 6);
        v103 = v158;
        v104 = v156;
        (*(v156 + 16))(v165, *(v158 + 48) + *(v156 + 72) * v102, v166);
        v105 = *(*(v103 + 56) + 8 * v102);
        v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ECE0, &qword_26294F250);
        v107 = *(v106 + 48);
        v12 = v159;
        (*(v104 + 32))(v159);
        *&v12[v107] = v105;
        (*(*(v106 - 8) + 56))(v12, 0, 1, v106);

        v7 = v155;
        v98 = v157;
LABEL_59:
        sub_262906F00(v12, v98, &qword_27FF2ECC8, &qword_26294F238);
        v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ECE0, &qword_26294F250);
        if ((*(*(v108 - 8) + 48))(v98, 1, v108) == 1)
        {
          break;
        }

        (*v164)(v165, v98, v166);
        sub_26294CC48();
        v2 = v167;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_26291D6D8(0, v2[2] + 1, 1, v2);
        }

        v110 = v2[2];
        v109 = v2[3];
        if (v110 >= v109 >> 1)
        {
          v2 = sub_26291D6D8((v109 > 1), v110 + 1, 1, v2);
        }

        v2[2] = v110 + 1;
        (*(v162 + 32))(v2 + ((*(v162 + 80) + 32) & ~*(v162 + 80)) + *(v162 + 72) * v110, v7, v161);
        v92 = v163;
        v167 = v2;
        if (!v96)
        {
          goto LABEL_50;
        }
      }

      (*v137)(v138, v147, v151);
      sub_26294C748();
      v68 = v146;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v149;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v68 = sub_26291D6B0(0, v68[2] + 1, 1, v68);
      }

      v1 = v143;
      v2 = v139;
      v24 = v150;
      v66 = v141;
      v114 = v68[2];
      v113 = v68[3];
      if (v114 >= v113 >> 1)
      {
        v68 = sub_26291D6B0((v113 > 1), v114 + 1, 1, v68);
      }

      (*v130)(v147, v151);
      v68[2] = v114 + 1;
      (*(v136 + 32))(v68 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v114, v142, v131);
      v37 = v132;
      v67 = v140;
    }

    if (qword_27FF2E7C0 != -1)
    {
      goto LABEL_85;
    }

    goto LABEL_75;
  }

  v146 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v154 = v33 + v146;
  v153 = (v25 + 16);
  v163 = v25 + 32;
  v141 = v18 + 16;
  v145 = (v18 + 8);

  v1 = 0;
  v36 = 0;
  v37 = MEMORY[0x277D84F98];
  v152 = v35;
  while (v36 < *(v35 + 16))
  {
    v38 = v24;
    v39 = *(v25 + 72);
    v40 = v160;
    (*(v25 + 16))(v160, v154 + v39 * v36, v38);
    v41 = v167;
    v42 = v37;
    sub_26294CA18();
    v43 = *(v25 + 32);
    v43(v164, v40, v38);
    sub_262905484(v1, 0);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v169 = v37;
    v46 = sub_26290216C(v41);
    v47 = *(v37 + 16);
    v48 = (v45 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      goto LABEL_83;
    }

    v1 = v45;
    if (*(v37 + 24) >= v49)
    {
      if (v44)
      {
        if (v45)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_262904044(MEMORY[0x277D48E80], &qword_27FF2ECE8, &qword_26294F258);
        v42 = v169;
        if (v1)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      sub_262902608(v49, v44);
      v42 = v169;
      v50 = sub_26290216C(v167);
      if ((v1 & 1) != (v51 & 1))
      {
LABEL_87:
        sub_26294E078();
        __break(1u);
        goto LABEL_88;
      }

      v46 = v50;
      if (v1)
      {
        goto LABEL_13;
      }
    }

    v42[(v46 >> 6) + 8] |= 1 << v46;
    (*(v144 + 16))(v42[6] + *(v144 + 72) * v46, v167, v151);
    *(v42[7] + 8 * v46) = MEMORY[0x277D84F90];
    v52 = v42[2];
    v53 = __OFADD__(v52, 1);
    v54 = v52 + 1;
    if (v53)
    {
      goto LABEL_84;
    }

    v42[2] = v54;
LABEL_13:
    v55 = v42;
    v56 = v42[7];
    v57 = *(v56 + 8 * v46);
    v58 = swift_isUniquelyReferenced_nonNull_native();
    *(v56 + 8 * v46) = v57;
    if ((v58 & 1) == 0)
    {
      v57 = sub_26291D660(0, v57[2] + 1, 1, v57);
      *(v56 + 8 * v46) = v57;
    }

    v60 = v57[2];
    v59 = v57[3];
    if (v60 >= v59 >> 1)
    {
      *(v56 + 8 * v46) = sub_26291D660((v59 > 1), v60 + 1, 1, v57);
    }

    ++v36;
    (*v145)(v167, v151);
    v61 = *(v56 + 8 * v46);
    *(v61 + 16) = v60 + 1;
    v62 = v61 + v146 + v60 * v39;
    v24 = v150;
    v43(v62, v164, v150);
    v1 = sub_2629070CC;
    v12 = v159;
    v37 = v55;
    v25 = v148;
    v28 = v149;
    v35 = v152;
    if (v158 == v36)
    {

      v127 = sub_2629070CC;
      v1 = v143;
      v7 = v155;
      goto LABEL_22;
    }
  }

LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  swift_once();
LABEL_75:
  v117 = sub_26294CE48();
  __swift_project_value_buffer(v117, qword_27FF314B0);
  v118 = v1;
  v119 = sub_26294CE28();
  v120 = sub_26294DE98();
  if (os_log_type_enabled(v119, v120))
  {
    v121 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    v169 = v122;
    *v121 = 136315394;
    *(v121 + 4) = sub_2628FB76C(0xD000000000000018, 0x800000026295E5A0, &v169);
    *(v121 + 12) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    v123 = *(v168 + 16);

    *(v121 + 14) = v123;

    _os_log_impl(&dword_2628DB000, v119, v120, "%s ViennaApps %ld", v121, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v122);
    MEMORY[0x26672DCE0](v122, -1, -1);
    MEMORY[0x26672DCE0](v121, -1, -1);
  }

  else
  {
  }

  v169 = v146;

  sub_2628FCFA0(&v169, MEMORY[0x277D48E58], sub_262904AD0, MEMORY[0x277D48E58], MEMORY[0x277D48E40]);
  if (v2)
  {
LABEL_88:

    __break(1u);
  }

  else
  {

    v124 = v169;
    swift_getKeyPath();
    swift_getKeyPath();
    v169 = v124;
    v125 = v118;
    sub_26294D008();
    return sub_262905484(v127, 0);
  }

  return result;
}

uint64_t sub_2628EFF1C(uint64_t *a1, uint64_t a2)
{
  v78 = a1;
  v3 = sub_26294CCE8();
  v80 = *(v3 - 8);
  v81 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v79 = &v66 - v7;
  v8 = sub_26294DC58();
  v76 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v77 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26294CBA8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v82 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v66 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v66 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v66 - v20;
  v83 = a2;
  v22 = *(sub_26294CAB8() + 16);

  if (!v22)
  {
    return result;
  }

  v71 = v8;
  if (qword_27FF2E7C0 != -1)
  {
    swift_once();
  }

  v72 = v6;
  v24 = sub_26294CE48();
  __swift_project_value_buffer(v24, qword_27FF314B0);
  v25 = *(v11 + 16);
  v26 = v83;
  v25(v21, v83, v10);
  v74 = v19;
  v25(v19, v26, v10);
  v27 = v16;
  v75 = v25;
  v25(v16, v26, v10);
  v28 = sub_26294CE28();
  v29 = sub_26294DEC8();
  v30 = os_log_type_enabled(v28, v29);
  v73 = v11;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v67 = v27;
    v32 = v31;
    v70 = swift_slowAlloc();
    v84 = v70;
    *v32 = 136315650;
    v69 = v28;
    v33 = v77;
    v68 = v29;
    sub_26294CA68();
    v34 = sub_26294CA78();
    v36 = v35;
    (*(v76 + 8))(v33, v71);
    v37 = *(v11 + 8);
    v37(v21, v10);
    v38 = sub_2628FB76C(v34, v36, &v84);

    *(v32 + 4) = v38;
    *(v32 + 12) = 2048;
    v39 = v74;
    sub_26294CA88();
    v41 = v40;
    v37(v39, v10);
    *(v32 + 14) = v41;
    *(v32 + 22) = 2048;
    v42 = v67;
    v43 = *(sub_26294CAB8() + 16);

    v37(v42, v10);
    *(v32 + 24) = v43;
    v44 = v69;
    _os_log_impl(&dword_2628DB000, v69, v68, "Wallet group %s, usage %f, count %ld", v32, 0x20u);
    v45 = v70;
    __swift_destroy_boxed_opaque_existential_1Tm(v70);
    MEMORY[0x26672DCE0](v45, -1, -1);
    MEMORY[0x26672DCE0](v32, -1, -1);
  }

  else
  {
    v46 = *(v11 + 8);
    v46(v27, v10);

    v46(v74, v10);
    v46(v21, v10);
  }

  v47 = v83;
  sub_26294CA68();
  v48 = v79;
  sub_26294CCC8();
  v49 = v10;
  v75(v82, v47, v10);
  v50 = v78;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v50;
  v52 = v84;
  v54 = sub_2629023E8(v48);
  v55 = v52[2];
  v56 = (v53 & 1) == 0;
  v57 = v55 + v56;
  if (__OFADD__(v55, v56))
  {
    __break(1u);
  }

  else
  {
    v58 = v53;
    if (v52[3] >= v57)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_262904044(MEMORY[0x277D49008], &qword_27FF2ED48, &qword_26294F298);
        v52 = v84;
      }
    }

    else
    {
      sub_262903578(v57, isUniquelyReferenced_nonNull_native);
      v52 = v84;
      v59 = sub_2629023E8(v48);
      if ((v58 & 1) != (v60 & 1))
      {
        result = sub_26294E078();
        __break(1u);
        return result;
      }

      v54 = v59;
    }

    v61 = v72;
    *v50 = v52;
    if ((v58 & 1) == 0)
    {
      (*(v80 + 16))(v61, v48, v81);
      sub_262903D30(v54, v61, MEMORY[0x277D84F90], v52, MEMORY[0x277D49008]);
    }

    isUniquelyReferenced_nonNull_native = v52[7];
    v52 = *(isUniquelyReferenced_nonNull_native + 8 * v54);
    v62 = swift_isUniquelyReferenced_nonNull_native();
    *(isUniquelyReferenced_nonNull_native + 8 * v54) = v52;
    if (v62)
    {
      goto LABEL_16;
    }
  }

  v52 = sub_26291D908(0, v52[2] + 1, 1, v52);
  *(isUniquelyReferenced_nonNull_native + 8 * v54) = v52;
LABEL_16:
  v64 = v52[2];
  v63 = v52[3];
  if (v64 >= v63 >> 1)
  {
    *(isUniquelyReferenced_nonNull_native + 8 * v54) = sub_26291D908((v63 > 1), v64 + 1, 1, v52);
  }

  (*(v80 + 8))(v48, v81);
  v65 = *(isUniquelyReferenced_nonNull_native + 8 * v54);
  *(v65 + 16) = v64 + 1;
  return (*(v73 + 32))(v65 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v64, v82, v49);
}

void sub_2628F0630(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v72 = a1;
  v5 = sub_26294CA28();
  v77 = *(v5 - 8);
  v78 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v73 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v71 = &v65 - v8;
  v9 = sub_26294CC38();
  v74 = *(v9 - 8);
  v75 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v66 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v70 = &v65 - v12;
  v13 = sub_26294C538();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ECF8, &qword_26294F260);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v65 - v18;
  v20 = sub_26294DCF8();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v69 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v65 - v25;
  MEMORY[0x26672BF20](v24);
  v27 = *(a3 + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_credentialConfigs);
  v79 = v16;

  v28 = v76;
  sub_2629180F8(sub_2629056A0, v27, v19);
  v76 = v28;
  v29 = v20;

  v30 = *(v14 + 8);
  v67 = v16;
  v68 = v13;
  v30(v16, v13);
  if (v21[6](v19, 1, v29) == 1)
  {
    v31 = v77;
    v32 = v78;
    sub_2628DF6F0(v19, &qword_27FF2ECF8, &qword_26294F260);
    if (qword_27FF2E7C0 != -1)
    {
      swift_once();
    }

    v33 = sub_26294CE48();
    __swift_project_value_buffer(v33, qword_27FF314B0);
    v34 = v31;
    v35 = v73;
    (*(v31 + 16))(v73, a2, v32);
    v36 = sub_26294CE28();
    v37 = sub_26294DEA8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v80 = v39;
      *v38 = 136315138;
      v40 = v67;
      LODWORD(v75) = v37;
      MEMORY[0x26672BF20]();
      v74 = sub_26294C508();
      v41 = v35;
      v43 = v42;
      v30(v40, v68);
      (*(v34 + 8))(v41, v78);
      v44 = sub_2628FB76C(v74, v43, &v80);

      *(v38 + 4) = v44;
      _os_log_impl(&dword_2628DB000, v36, v75, "Config not found for group with identifier %s, dropping.", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x26672DCE0](v39, -1, -1);
      MEMORY[0x26672DCE0](v38, -1, -1);
    }

    else
    {

      (*(v31 + 8))(v35, v32);
    }

    return;
  }

  v21[4](v26, v19, v29);
  v67 = v21;
  v68 = v26;
  v45 = v21[2];
  v73 = v29;
  v45(v69, v26, v29);
  v46 = v70;
  sub_26294CC28();
  v47 = v77;
  v48 = v71;
  (*(v77 + 16))(v71, a2, v78);
  v49 = v72;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v49;
  v51 = v80;
  v53 = sub_2629024BC(v46);
  v54 = v51[2];
  v55 = (v52 & 1) == 0;
  v56 = v54 + v55;
  if (__OFADD__(v54, v55))
  {
    __break(1u);
    goto LABEL_20;
  }

  v57 = v52;
  if (v51[3] >= v56)
  {
    v26 = v67;
    if (isUniquelyReferenced_nonNull_native)
    {
      *v49 = v51;
      if (v52)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_262904044(MEMORY[0x277D48FA8], &qword_27FF2ED00, &qword_26294F268);
      v51 = v80;
      *v49 = v80;
      if (v57)
      {
        goto LABEL_15;
      }
    }

LABEL_14:
    v60 = v66;
    (*(v74 + 16))(v66, v46, v75);
    sub_262903D30(v53, v60, MEMORY[0x277D84F90], v51, MEMORY[0x277D48FA8]);
    goto LABEL_15;
  }

  sub_262903954(v56, isUniquelyReferenced_nonNull_native);
  v51 = v80;
  v58 = sub_2629024BC(v46);
  v26 = v67;
  if ((v57 & 1) != (v59 & 1))
  {
    sub_26294E078();
    __break(1u);
    return;
  }

  v53 = v58;
  *v49 = v51;
  if ((v57 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  isUniquelyReferenced_nonNull_native = v51[7];
  v51 = *(isUniquelyReferenced_nonNull_native + 8 * v53);
  v61 = swift_isUniquelyReferenced_nonNull_native();
  *(isUniquelyReferenced_nonNull_native + 8 * v53) = v51;
  if ((v61 & 1) == 0)
  {
LABEL_20:
    v51 = sub_26291D660(0, v51[2] + 1, 1, v51);
    *(isUniquelyReferenced_nonNull_native + 8 * v53) = v51;
  }

  v63 = v51[2];
  v62 = v51[3];
  if (v63 >= v62 >> 1)
  {
    *(isUniquelyReferenced_nonNull_native + 8 * v53) = sub_26291D660((v62 > 1), v63 + 1, 1, v51);
  }

  (*(v74 + 8))(v46, v75);
  (*(v26 + 1))(v68, v73);
  v64 = *(isUniquelyReferenced_nonNull_native + 8 * v53);
  *(v64 + 16) = v63 + 1;
  (*(v47 + 32))(v64 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v63, v48, v78);
}

uint64_t sub_2628F0E04(void *a1, void *a2)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E978, &qword_26294EC40);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v41 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v44 = &v36 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  v13 = sub_26294C4F8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v46 = &v36 - v18;
  v20 = a1[3];
  v19 = a1[4];
  v40 = a1;
  v42 = __swift_project_boxed_opaque_existential_1(a1, v20);
  v43 = v19;
  sub_26294C608();
  v21 = v14[6];
  if (v21(v12, 1, v13) == 1)
  {
    v10 = v12;
  }

  else
  {
    v38 = v17;
    v37 = v14[4];
    v37(v46, v12, v13);
    v22 = v45[3];
    v39 = v45[4];
    __swift_project_boxed_opaque_existential_1(v45, v22);
    sub_26294C608();
    if (v21(v10, 1, v13) != 1)
    {
      v32 = v38;
      v37(v38, v10, v13);
      v33 = v46;
      v27 = sub_26294C4D8();
      v34 = v14[1];
      v34(v32, v13);
      v34(v33, v13);
      return v27 & 1;
    }

    (v14[1])(v46, v13);
  }

  sub_2628DF6F0(v10, &qword_27FF2E978, &qword_26294EC40);
  v23 = v44;
  sub_26294C608();
  v24 = v21(v23, 1, v13);
  sub_2628DF6F0(v23, &qword_27FF2E978, &qword_26294EC40);
  if (v24 == 1)
  {
    v25 = v45;
    __swift_project_boxed_opaque_existential_1(v45, v45[3]);
    v26 = v41;
    sub_26294C608();
    v27 = 1;
    v28 = v21(v26, 1, v13);
    sub_2628DF6F0(v26, &qword_27FF2E978, &qword_26294EC40);
    if (v28 == 1)
    {
      __swift_project_boxed_opaque_existential_1(v40, v40[3]);
      sub_26294C618();
      v30 = v29;
      __swift_project_boxed_opaque_existential_1(v25, v25[3]);
      sub_26294C618();
      v27 = v31 < v30;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

uint64_t sub_2628F122C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v83 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED68, &qword_26294F2F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v73 - v9;
  v11 = sub_26294CB98();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v78 = &v73 - v16;
  v17 = sub_26294CBA8();
  v79 = *(v17 - 8);
  v80 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_walletGroups;
  swift_beginAccess();
  v81 = v20;
  v82 = v4;
  v21 = *(v4 + v20);

  v22 = sub_262918640(a1, v21);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
    if ((v22 & 0x8000000000000000) != 0)
    {
      goto LABEL_49;
    }

    v26 = *(v82 + v81);
    if (v22 >= *(v26 + 16))
    {
      goto LABEL_50;
    }

    v27 = *(v79 + 16);
    v75 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v76 = *(v79 + 72) * v22;
    v27(v19, v26 + v75 + v76, v80);
    sub_2628DF954(a2, v10, &qword_27FF2ED68, &qword_26294F2F0);
    v28 = (*(v12 + 48))(v10, 1, v11);
    v77 = v22;
    if (v28 != 1)
    {
      v24 = v78;
      (*(v12 + 32))(v78, v10, v11);
      if (qword_27FF2E7C0 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_53;
    }

    sub_2628DF6F0(v10, &qword_27FF2ED68, &qword_26294F2F0);
    if (!a3)
    {
      v10 = v19;
      if (qword_27FF2E7C0 == -1)
      {
        goto LABEL_38;
      }

      goto LABEL_57;
    }

    v10 = v19;
    if (qword_27FF2E7C0 != -1)
    {
      swift_once();
    }

    v29 = sub_26294CE48();
    __swift_project_value_buffer(v29, qword_27FF314B0);

    v30 = sub_26294CE28();
    v24 = sub_26294DE98();

    if (os_log_type_enabled(v30, v24))
    {
      v31 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v84[0] = v15;
      *v31 = 136315394;
      *(v31 + 4) = sub_2628FB76C(0xD00000000000003CLL, 0x800000026295E5C0, v84);
      *(v31 + 12) = 2080;
      v32 = sub_26294DE48();
      v11 = sub_2628FB76C(v32, v33, v84);

      *(v31 + 14) = v11;
      _os_log_impl(&dword_2628DB000, v30, v24, "%s -- indices %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26672DCE0](v15, -1, -1);
      MEMORY[0x26672DCE0](v31, -1, -1);
    }

    v34 = *(sub_26294CAB8() + 16);

    if (v34)
    {
      v35 = 0;
      v11 = a3 + 56;
      v19 = -1;
      while (1)
      {
        if (*(a3 + 16))
        {
          v36 = sub_26294E088();
          v37 = -1 << *(a3 + 32);
          v38 = v36 & ~v37;
          if ((*(v11 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
          {
            v39 = ~v37;
            while (*(*(a3 + 48) + 8 * v38) != v35)
            {
              v38 = (v38 + 1) & v39;
              if (((*(v11 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
              {
                goto LABEL_12;
              }
            }

            v24 = sub_26294CAA8();
            v15 = v40;
            v22 = *v40;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v15 = v22;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v22 = sub_26291DD00(v22);
              *v15 = v22;
            }

            if (v35 >= *(v22 + 16))
            {
              goto LABEL_48;
            }

            sub_26294CB88();
            (v24)(v84, 0);
          }
        }

LABEL_12:
        if (++v35 == v34)
        {
          goto LABEL_33;
        }
      }
    }

    while (1)
    {
LABEL_33:
      v60 = v81;
      v59 = v82;
      swift_beginAccess();
      v22 = *(v59 + v60);
      v61 = swift_isUniquelyReferenced_nonNull_native();
      *(v59 + v60) = v22;
      if ((v61 & 1) == 0)
      {
        goto LABEL_51;
      }

      while (1)
      {
        if (v77 < *(v22 + 16))
        {
          v63 = v79;
          v62 = v80;
          (*(v79 + 24))(v22 + v75 + v76, v10, v80);
          *(v82 + v81) = v22;
          swift_endAccess();
          return (*(v63 + 8))(v10, v62);
        }

        __break(1u);
LABEL_53:
        swift_once();
LABEL_24:
        v42 = sub_26294CE48();
        __swift_project_value_buffer(v42, qword_27FF314B0);
        (*(v12 + 16))(v15, v24, v11);
        v43 = sub_26294CE28();
        v44 = sub_26294DE98();
        v10 = v19;
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v84[0] = v74;
          *v45 = 136315394;
          *(v45 + 4) = sub_2628FB76C(0xD00000000000003CLL, 0x800000026295E5C0, v84);
          *(v45 + 12) = 2080;
          v46 = sub_26294CB18();
          v48 = v47;
          v19 = *(v12 + 8);
          (v19)(v15, v11);
          v49 = sub_2628FB76C(v46, v48, v84);

          *(v45 + 14) = v49;
          _os_log_impl(&dword_2628DB000, v43, v44, "%s -- pass %s", v45, 0x16u);
          v50 = v74;
          swift_arrayDestroy();
          MEMORY[0x26672DCE0](v50, -1, -1);
          v51 = v45;
          v24 = v78;
          MEMORY[0x26672DCE0](v51, -1, -1);
        }

        else
        {

          v19 = *(v12 + 8);
          (v19)(v15, v11);
        }

        v52 = sub_26294CAB8();
        v53 = sub_262918688(v24, v52);
        v55 = v54;

        if (v55)
        {
          break;
        }

        v24 = sub_26294CAA8();
        v15 = v56;
        v57 = *v56;
        v58 = swift_isUniquelyReferenced_nonNull_native();
        *v15 = v57;
        if (v58)
        {
          if ((v53 & 0x8000000000000000) != 0)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v57 = sub_26291DD00(v57);
          *v15 = v57;
          if ((v53 & 0x8000000000000000) != 0)
          {
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }
        }

        if (v53 < v57[2])
        {
          sub_26294CB88();
          (v24)(v84, 0);
          v24 = v78;
          break;
        }

LABEL_56:
        __break(1u);
LABEL_57:
        swift_once();
LABEL_38:
        v64 = sub_26294CE48();
        __swift_project_value_buffer(v64, qword_27FF314B0);
        v65 = sub_26294CE28();
        v66 = sub_26294DE98();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v84[0] = v24;
          *v67 = 136315138;
          *(v67 + 4) = sub_2628FB76C(0xD00000000000003CLL, 0x800000026295E5C0, v84);
          _os_log_impl(&dword_2628DB000, v65, v66, "%s -- selected", v67, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v24);
          MEMORY[0x26672DCE0](v24, -1, -1);
          MEMORY[0x26672DCE0](v67, -1, -1);
        }

        v68 = *(sub_26294CAB8() + 16);

        if (!v68)
        {
          goto LABEL_33;
        }

        v69 = 0;
        v15 = v84;
        while (1)
        {
          v70 = sub_26294CAA8();
          v24 = v71;
          v22 = *v71;
          v72 = swift_isUniquelyReferenced_nonNull_native();
          *v24 = v22;
          if ((v72 & 1) == 0)
          {
            v22 = sub_26291DD00(v22);
            *v24 = v22;
          }

          if (v69 >= *(v22 + 16))
          {
            break;
          }

          sub_26294CB88();
          v70(v84, 0);
          v24 = ++v69;
          if (v68 == v69)
          {
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        v22 = sub_26291DCB4(v22);
        *(v82 + v81) = v22;
      }

      (v19)(v24, v11);
    }
  }

  return result;
}

uint64_t sub_2628F1CA4(uint64_t a1, int a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED68, &qword_26294F2F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_26294CBA8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if ((v21 & 1) == 0)
  {
    v12 = *(a1 + 16);
    v20 = a2;
    if (v12)
    {
      v15 = *(v8 + 16);
      v14 = v8 + 16;
      v13 = v15;
      v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
      v17 = *(v14 + 56);
      do
      {
        v13(v10, v16, v7);
        v18 = sub_26294CB98();
        (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
        sub_2628F122C(v10, v6, 0, v20 & 1);
        sub_2628DF6F0(v6, &qword_27FF2ED68, &qword_26294F2F0);
        (*(v14 - 8))(v10, v7);
        v16 += v17;
        --v12;
      }

      while (v12);
    }

    return sub_2628EC330();
  }

  return result;
}

uint64_t sub_2628F1ED8(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26294CB98();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v57 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - v10;
  v47 = sub_26294CBA8();
  v12 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_walletGroups;
  swift_beginAccess();
  v15 = *&a1[v14];
  v51 = *(v15 + 16);
  if (v51)
  {
    v40 = a1;
    v41 = a2;
    v42 = a3;
    v50 = v15 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v16 = v7 + 16;
    v17 = (v7 + 8);
    v45 = v7;
    v54 = (v7 + 32);
    v48 = (v12 + 8);
    v49 = v12 + 16;

    v19 = MEMORY[0x277D84F90];
    v21 = v46;
    v20 = v47;
    v22 = v12;
    v23 = 0;
    v24 = result;
    v55 = v16;
    v43 = result;
    v44 = v22;
    while (v23 < *(v24 + 16))
    {
      v25 = *(v22 + 72);
      v53 = v23;
      (*(v22 + 16))(v21, v50 + v25 * v23, v20);
      v26 = sub_26294CAB8();
      v27 = *(v26 + 16);
      if (v27)
      {
        v28 = (*(v45 + 80) + 32) & ~*(v45 + 80);
        v52 = v26;
        v56 = v28;
        v29 = v26 + v28;
        v30 = *(v45 + 72);
        v31 = *(v45 + 16);
        v31(v11, v26 + v28, v6);
        while (1)
        {
          if (sub_26294CB78())
          {
            v31(v57, v11, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v19 = sub_26291D74C(0, *(v19 + 2) + 1, 1, v19);
            }

            v33 = *(v19 + 2);
            v32 = *(v19 + 3);
            if (v33 >= v32 >> 1)
            {
              v19 = sub_26291D74C((v32 > 1), v33 + 1, 1, v19);
            }

            (*v17)(v11, v6);
            *(v19 + 2) = v33 + 1;
            (*v54)(&v19[v56 + v33 * v30], v57, v6);
          }

          else
          {
            (*v17)(v11, v6);
          }

          v29 += v30;
          if (!--v27)
          {
            break;
          }

          v31(v11, v29, v6);
        }

        v21 = v46;
        v20 = v47;
        v24 = v43;
        v22 = v44;
      }

      else
      {
      }

      v23 = v53 + 1;
      result = (*v48)(v21, v20);
      if (v23 == v51)
      {

        a3 = v42;
        a2 = v41;
        a1 = v40;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
LABEL_20:
    v34 = *(v19 + 2);

    swift_getKeyPath();
    swift_getKeyPath();
    v58 = v34;
    v59 = 0;
    v35 = a1;
    sub_26294D008();
    v36 = &v35[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion];
    v37 = *&v35[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion];
    v38 = *&v35[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion + 8];
    *v36 = a2;
    *(v36 + 1) = a3;
    sub_262906C04(a2, a3);
    sub_262905484(v37, v38);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v58) = 1;
    v39 = v35;
    return sub_26294D008();
  }

  return result;
}

uint64_t sub_2628F2378()
{
  v1 = v0;
  v2 = sub_26294CBA8();
  v3 = *(v2 - 8);
  v29 = v2;
  v30 = v3;
  MEMORY[0x28223BE20](v2);
  v28 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if ((v31 & 1) == 0)
  {
    v6 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_walletGroups;
    swift_beginAccess();
    v27 = *(*&v0[v6] + 16);
    if (v27)
    {
      v7 = 0;
      v26[0] = v30 + 8;
      v26[1] = v30 + 16;
      while (1)
      {
        result = swift_beginAccess();
        v8 = *&v1[v6];
        if (v7 >= *(v8 + 16))
        {
          break;
        }

        v9 = v29;
        v10 = v30;
        v11 = v28;
        (*(v30 + 16))(v28, v8 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v7, v29);
        v12 = sub_26294CAB8();
        (*(v10 + 8))(v11, v9);
        swift_endAccess();
        v13 = *(v12 + 16);

        if (v13)
        {
          swift_beginAccess();
          v14 = 0;
          while (1)
          {
            v15 = *&v1[v6];
            result = swift_isUniquelyReferenced_nonNull_native();
            *&v1[v6] = v15;
            if ((result & 1) == 0)
            {
              result = sub_26291DCB4(v15);
              v15 = result;
              *&v1[v6] = result;
            }

            if (v7 >= v15[2])
            {
              break;
            }

            v16 = sub_26294CAA8();
            v18 = v17;
            v19 = *v17;
            result = swift_isUniquelyReferenced_nonNull_native();
            *v18 = v19;
            if ((result & 1) == 0)
            {
              result = sub_26291DD00(v19);
              v19 = result;
              *v18 = result;
            }

            if (v14 >= v19[2])
            {
              goto LABEL_22;
            }

            sub_26294CB98();
            sub_26294CB88();
            v16(&v31, 0);
            if (v13 == ++v14)
            {
              swift_endAccess();
              goto LABEL_4;
            }
          }

          __break(1u);
LABEL_22:
          __break(1u);
          break;
        }

LABEL_4:
        if (++v7 == v27)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_16:
      swift_getKeyPath();
      swift_getKeyPath();
      v31 = 0;
      v32 = 1;
      v20 = v1;
      sub_26294D008();
      v21 = &v20[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion];
      v22 = *&v20[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion];
      if (v22)
      {
        v23 = v21[1];

        v22(0);
        sub_262905484(v22, v23);
        v24 = *v21;
      }

      else
      {
        v24 = 0;
      }

      v25 = v21[1];
      *v21 = 0;
      v21[1] = 0;
      sub_262905484(v24, v25);
      return sub_2628E6C54();
    }
  }

  return result;
}

uint64_t sub_2628F2758()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EDE8, &qword_26294F428);
  MEMORY[0x28223BE20](v1 - 8);
  v100 = &v99 - v2;
  v3 = sub_26294CB98();
  v113 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v127 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v133 = &v99 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v132 = &v99 - v9;
  MEMORY[0x28223BE20](v8);
  v130 = &v99 - v10;
  v11 = sub_26294CBA8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v103 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v99 - v15;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EEB8, &qword_26294F518);
  v17 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v104 = (&v99 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EEC0, &qword_26294F520);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v122 = &v99 - v23;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if (v141)
  {
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v141) = 1;
  v25 = v0;
  sub_26294D008();
  if (qword_27FF2E7C0 != -1)
  {
LABEL_53:
    swift_once();
  }

  v26 = sub_26294CE48();
  v27 = __swift_project_value_buffer(v26, qword_27FF314B0);
  v28 = v25;
  v112 = v27;
  v29 = sub_26294CE28();
  v30 = sub_26294DE98();
  v31 = os_log_type_enabled(v29, v30);
  v106 = v16;
  v124 = v28;
  if (v31)
  {
    v32 = swift_slowAlloc();
    *v32 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    v16 = v106;

    *(v32 + 4) = v141;

    _os_log_impl(&dword_2628DB000, v29, v30, "Controller loading %{BOOL}d", v32, 8u);
    v33 = v32;
    v28 = v124;
    MEMORY[0x26672DCE0](v33, -1, -1);
  }

  else
  {

    v29 = v28;
  }

  v34 = v130;

  v35 = swift_allocObject();
  v36 = MEMORY[0x277D84F90];
  v134 = v35;
  *(v35 + 16) = MEMORY[0x277D84F90];
  v37 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_walletGroups;
  swift_beginAccess();
  v126 = v37;
  v38 = *(&v28->isa + v37);
  v114 = v12 + 16;
  v116 = (v17 + 7);
  v115 = (v17 + 6);
  v111 = (v12 + 32);
  v129 = (v113 + 16);
  v131 = (v113 + 32);
  v136 = (v113 + 8);
  v102 = "ONFIG_TITLE";
  v120 = v12 + 8;
  v121 = v38;

  v39 = 0;
  *&v40 = 136315650;
  v101 = v40;
  v105 = v12;
  v118 = v22;
  v119 = v11;
  while (1)
  {
    v41 = *(v121 + 16);
    v25 = v117;
    v17 = v122;
    if (v39 == v41)
    {
      v123 = v39;
      v42 = 1;
    }

    else
    {
      if (v39 >= v41)
      {
        goto LABEL_50;
      }

      v43 = v39 + 1;
      v44 = v121 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v39;
      v45 = *(v117 + 48);
      v46 = v104;
      *v104 = v39;
      (*(v12 + 16))(&v46[v45], v44, v11);
      v47 = v46;
      v28 = v124;
      sub_262906F00(v47, v22, &qword_27FF2EEB8, &qword_26294F518);
      v42 = 0;
      v123 = v43;
      v17 = v122;
    }

    (*v116)(v22, v42, 1, v25);
    sub_262906F00(v22, v17, &qword_27FF2EEC0, &qword_26294F520);
    if ((*v115)(v17, 1, v25) == 1)
    {
      goto LABEL_47;
    }

    v125 = *v17;
    (*v111)(v16, v17 + SLODWORD(v25[6].isa), v11);
    v140 = v36;
    v48 = sub_26294CAB8();
    v49 = *(v48 + 16);
    if (v49)
    {
      v50 = (*(v113 + 80) + 32) & ~*(v113 + 80);
      v128 = v48;
      v135 = v50;
      v51 = v48 + v50;
      v52 = *(v113 + 72);
      v53 = *(v113 + 16);
      v137 = v36;
      v17 = v129;
      v53(v34, v48 + v50, v3);
      while (1)
      {
        if (sub_26294CB78())
        {
          v53(v132, v34, v3);
          v55 = *(v134 + 16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v55 = sub_26291D74C(0, v55[2] + 1, 1, v55);
            *(v134 + 16) = v55;
          }

          v57 = v55[2];
          v56 = v55[3];
          if (v57 >= v56 >> 1)
          {
            v64 = sub_26291D74C((v56 > 1), v57 + 1, 1, v55);
            *(v134 + 16) = v64;
          }

          v34 = v130;
          (*v136)(v130, v3);
          v59 = v134;
          v58 = v135;
          v60 = *(v134 + 16);
          *(v60 + 16) = v57 + 1;
          (*v131)(v60 + v58 + v57 * v52, v132, v3);
          *(v59 + 16) = v60;
          v36 = MEMORY[0x277D84F90];
          v17 = v129;
        }

        else
        {
          v53(v133, v34, v3);
          swift_beginAccess();
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v61 = v137;
          }

          else
          {
            v61 = sub_26291D74C(0, v137[2] + 1, 1, v137);
          }

          v63 = v61[2];
          v62 = v61[3];
          if (v63 >= v62 >> 1)
          {
            v61 = sub_26291D74C((v62 > 1), v63 + 1, 1, v61);
          }

          v61[2] = v63 + 1;
          v54 = v61;
          (*v131)(v61 + v135 + v63 * v52, v133, v3);
          v137 = v54;
          v140 = v54;
          swift_endAccess();
          (*v136)(v34, v3);
        }

        v51 += v52;
        if (!--v49)
        {
          break;
        }

        v53(v34, v51, v3);
      }

      v12 = v105;
      v16 = v106;
      v22 = v118;
    }

    else
    {

      v137 = v36;
      v17 = v129;
    }

    v28 = v124;
    v65 = v124;
    v25 = sub_26294CE28();
    v66 = sub_26294DE98();

    if (os_log_type_enabled(v25, v66))
    {
      v110 = v66;
      v22 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v139 = v67;
      *v22 = v101;
      *(v22 + 4) = sub_2628FB76C(0xD000000000000016, v102 | 0x8000000000000000, &v139);
      *(v22 + 6) = 2080;
      v11 = v119;
      if ((v125 & 0x8000000000000000) != 0)
      {
        goto LABEL_51;
      }

      v68 = *(v126 + v28);
      if (v125 >= *(v68 + 16))
      {
        goto LABEL_52;
      }

      v107 = v67;
      v109 = v25;
      v69 = v103;
      (*(v12 + 16))(v103, v68 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v125, v119);
      v70 = sub_26294CA78();
      v72 = v71;
      (*(v12 + 8))(v69, v11);
      v73 = sub_2628FB76C(v70, v72, &v139);

      *(v22 + 14) = v73;
      v108 = v22;
      *(v22 + 11) = 2080;
      v74 = v137[2];
      if (v74)
      {
        v138 = v36;
        v75 = v137;

        sub_2628FC960(0, v74, 0);
        v36 = v138;
        v76 = v75 + ((*(v113 + 80) + 32) & ~*(v113 + 80));
        v135 = *(v113 + 72);
        v128 = *(v113 + 16);
        do
        {
          v77 = v127;
          v128(v127, v76, v3);
          v78 = sub_26294CB18();
          v80 = v79;
          v81 = v3;
          (*v136)(v77, v3);
          v138 = v36;
          v83 = v36[2];
          v82 = v36[3];
          if (v83 >= v82 >> 1)
          {
            sub_2628FC960((v82 > 1), v83 + 1, 1);
            v36 = v138;
          }

          v36[2] = v83 + 1;
          v84 = &v36[2 * v83];
          v84[4] = v78;
          v84[5] = v80;
          v76 += v135;
          --v74;
          v3 = v81;
        }

        while (v74);

        v11 = v119;
        v12 = v105;
        v16 = v106;
      }

      v85 = MEMORY[0x26672D3F0](v36, MEMORY[0x277D837D0]);
      v87 = v86;

      v88 = sub_2628FB76C(v85, v87, &v139);

      v89 = v108;
      *(v108 + 3) = v88;
      v90 = v109;
      _os_log_impl(&dword_2628DB000, v109, v110, "%s group %s New group  -- %s", v89, 0x20u);
      v25 = v107;
      swift_arrayDestroy();
      MEMORY[0x26672DCE0](v25, -1, -1);
      MEMORY[0x26672DCE0](v89, -1, -1);

      v22 = v118;
      v28 = v124;
    }

    else
    {

      v11 = v119;
    }

    v17 = v126;
    swift_beginAccess();
    v91 = *(v17 + v28);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v17 + v28) = v91;
    v34 = v130;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      break;
    }

    v93 = v125;
    if ((v125 & 0x8000000000000000) != 0)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (v93 >= v91[2])
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    sub_26294CAC8();
    *(v126 + v28) = v91;
    swift_endAccess();
    (*(v12 + 8))(v16, v11);

    v36 = MEMORY[0x277D84F90];
    v39 = v123;
  }

  v91 = sub_26291DCB4(v91);
  *(v126 + v28) = v91;
  v93 = v125;
  if ((v125 & 0x8000000000000000) == 0)
  {
    goto LABEL_43;
  }

LABEL_46:
  __break(1u);
LABEL_47:

  v94 = sub_26294DE28();
  v95 = v100;
  (*(*(v94 - 8) + 56))(v100, 1, 1, v94);
  v96 = swift_allocObject();
  v96[2] = 0;
  v96[3] = 0;
  v97 = v134;
  v96[4] = v28;
  v96[5] = v97;
  v98 = v28;

  sub_2628EB2A0(0, 0, v95, &unk_26294F530, v96);
}

uint64_t sub_2628F3644@<X0>(uint64_t *a2@<X8>)
{
  result = sub_26294CB18();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2628F3670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = sub_26294CB98();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2628F3730, 0, 0);
}

uint64_t sub_2628F3730()
{
  v1 = v0[15];
  v2 = (v0[14] + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_managementHandler);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  swift_beginAccess();
  v5 = *(v1 + 16);
  v0[19] = v5;
  v6 = *(v4 + 24);

  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_2628F3894;

  return v9(v5, v3, v4);
}

uint64_t sub_2628F3894(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = sub_2628F3B84;
  }

  else
  {

    *(v4 + 176) = a1;
    v5 = sub_2628F39C4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2628F39C4()
{
  v1 = v0[14];
  v2 = *(v1 + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_snapshot);
  *(v1 + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_snapshot) = v0[22];

  v3 = v0[14];
  v4 = v0[15] + 16;
  sub_262906E24();
  v5 = sub_26294DED8();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_262907070;
  *(v7 + 24) = v6;
  v0[6] = sub_262907108;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2628F4498;
  v0[5] = &block_descriptor_134;
  v8 = _Block_copy(v0 + 2);
  v9 = v3;

  dispatch_sync(v5, v8);

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {

    v11 = v0[1];

    return v11();
  }

  return result;
}

uint64_t sub_2628F3B84()
{
  v48 = v0;
  v1 = v0;
  v2 = v0 + 2;

  if (qword_27FF2E7C0 != -1)
  {
    swift_once();
  }

  v3 = sub_26294CE48();
  __swift_project_value_buffer(v3, qword_27FF314B0);

  v4 = sub_26294CE28();
  v5 = sub_26294DEA8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[15];
    v7 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v46 = v43;
    *v7 = 136315138;
    swift_beginAccess();
    v8 = *(v6 + 16);
    v9 = *(v8 + 16);
    v10 = MEMORY[0x277D84F90];
    if (v9)
    {
      v39 = v7;
      v40 = v5;
      v41 = v4;
      v42 = v2;
      v11 = v1[17];
      v47 = MEMORY[0x277D84F90];

      sub_2628FC960(0, v9, 0);
      v10 = v47;
      v12 = *(v11 + 16);
      v11 += 16;
      v13 = v8 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
      v44 = *(v11 + 56);
      v45 = v12;
      v14 = (v11 - 8);
      do
      {
        v15 = v1[18];
        v16 = v1;
        v17 = v1[16];
        v45(v15, v13, v17);
        v18 = sub_26294CB18();
        v20 = v19;
        (*v14)(v15, v17);
        v47 = v10;
        v22 = *(v10 + 16);
        v21 = *(v10 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_2628FC960((v21 > 1), v22 + 1, 1);
          v10 = v47;
        }

        *(v10 + 16) = v22 + 1;
        v23 = v10 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
        v13 += v44;
        --v9;
        v1 = v16;
      }

      while (v9);

      v4 = v41;
      v2 = v42;
      v5 = v40;
      v7 = v39;
    }

    v25 = v1[21];
    v26 = MEMORY[0x26672D3F0](v10, MEMORY[0x277D837D0]);
    v28 = v27;

    v29 = sub_2628FB76C(v26, v28, &v46);

    *(v7 + 4) = v29;
    _os_log_impl(&dword_2628DB000, v4, v5, "Error encountered when deleting passes %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x26672DCE0](v43, -1, -1);
    MEMORY[0x26672DCE0](v7, -1, -1);
    v24 = v25;
  }

  else
  {
    v24 = v1[21];
  }

  v30 = v1[14];
  v31 = v1[15] + 16;
  sub_262906E24();
  v32 = sub_26294DED8();
  v33 = swift_allocObject();
  *(v33 + 16) = v30;
  *(v33 + 24) = v31;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_262907070;
  *(v34 + 24) = v33;
  v1[6] = sub_262907108;
  v1[7] = v34;
  v1[2] = MEMORY[0x277D85DD0];
  v1[3] = 1107296256;
  v1[4] = sub_2628F4498;
  v1[5] = &block_descriptor_134;
  v35 = _Block_copy(v2);
  v36 = v30;

  dispatch_sync(v32, v35);

  _Block_release(v35);
  LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

  if (v32)
  {
    __break(1u);
  }

  else
  {

    v38 = v1[1];

    return v38();
  }

  return result;
}

uint64_t sub_2628F3FDC(char *a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_passes;
  swift_beginAccess();
  v5 = sub_2629042C0(&a1[v4], a2);
  v6 = *(*&a1[v4] + 16);
  if (v6 < v5)
  {
    __break(1u);
  }

  else
  {
    sub_262906400(v5, v6);
    swift_endAccess();
    sub_2628E6C54();
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = 0;
    a1 = a1;
    sub_26294D008();
    if (qword_27FF2E7C0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v7 = sub_26294CE48();
  __swift_project_value_buffer(v7, qword_27FF314B0);
  v8 = a1;
  v9 = sub_26294CE28();
  v10 = sub_26294DE98();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    *(v11 + 4) = v19;

    _os_log_impl(&dword_2628DB000, v9, v10, "Controller loading %{BOOL}d", v11, 8u);
    MEMORY[0x26672DCE0](v11, -1, -1);
  }

  else
  {

    v9 = v8;
  }

  v12 = &v8[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion];
  v13 = *&v8[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion];
  if (v13)
  {
    v14 = v12[1];

    v13(1);
    sub_262905484(v13, v14);
    v15 = *v12;
  }

  else
  {
    v15 = 0;
  }

  v16 = v12[1];
  *v12 = 0;
  v12[1] = 0;
  sub_262905484(v15, v16);
  swift_getKeyPath();
  swift_getKeyPath();
  v17 = v8;
  return sub_26294D008();
}

void sub_2628F4274(uint64_t a1, uint64_t *a2)
{
  v15[3] = a1;
  v3 = sub_26294CB98();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v7 = *a2;
  v17 = *(*a2 + 16);
  v15[2] = v4 + 16;
  v16 = (v4 + 8);

  v8 = 0;
  while (1)
  {
    if (v17 == v8)
    {
      goto LABEL_8;
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    v10 = v3;
    (*(v4 + 16))(v6, v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v8, v3);
    v11 = sub_26294CB18();
    v13 = v12;
    if (v11 == sub_26294CB18() && v13 == v14)
    {

      (*v16)(v6, v10);
LABEL_8:

      return;
    }

    ++v8;
    v9 = sub_26294E058();

    v3 = v10;
    (*v16)(v6, v10);
    if (v9)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

unint64_t sub_2628F44C0(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  v44 = a4;
  v43 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED60, &qword_26294F2E8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_26294C9D8();
  v11 = *(v10 - 1);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26294CA28();
  v45 = *(v14 - 8);
  v46 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
  swift_beginAccess();
  v47 = v4;
  v18 = *(v4 + v17);

  v19 = sub_26291849C(a1, v18);
  LOBYTE(a1) = v20;

  if ((a1 & 1) == 0)
  {
    if ((v19 & 0x8000000000000000) != 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v22 = *(v47 + v17);
    if (v19 >= *(v22 + 16))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v23 = *(v45 + 16);
    v40 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v41 = *(v45 + 72) * v19;
    v42 = v19;
    v23(v16, v22 + v40 + v41, v46);
    sub_2628DF954(v43, v9, &qword_27FF2ED60, &qword_26294F2E8);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_2628DF6F0(v9, &qword_27FF2ED60, &qword_26294F2E8);
      v18 = *(sub_26294C928() + 16);

      if (a3)
      {
        if (!v18)
        {
          goto LABEL_25;
        }

        v10 = 0;
        v24 = a3 + 56;
        while (1)
        {
          if (*(a3 + 16))
          {
            v25 = sub_26294E088();
            v26 = -1 << *(a3 + 32);
            v27 = v25 & ~v26;
            if ((*(v24 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
            {
              v28 = ~v26;
              while (*(*(a3 + 48) + 8 * v27) != v10)
              {
                v27 = (v27 + 1) & v28;
                if (((*(v24 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
                {
                  goto LABEL_8;
                }
              }

              v13 = sub_26294C918();
              v9 = v29;
              v19 = *v29;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *v9 = v19;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v19 = sub_26291DBD0(v19);
                *v9 = v19;
              }

              if (v10 >= *(v19 + 16))
              {
                goto LABEL_37;
              }

              sub_26294C9C8();
              (v13)(v48, 0);
            }
          }

LABEL_8:
          if (++v10 == v18)
          {
            goto LABEL_25;
          }
        }
      }

      v9 = v44;
      if (v18)
      {
        v13 = 0;
        while (1)
        {
          a3 = sub_26294C918();
          v10 = v37;
          v19 = *v37;
          v38 = swift_isUniquelyReferenced_nonNull_native();
          *v10 = v19;
          if ((v38 & 1) == 0)
          {
            v19 = sub_26291DBD0(v19);
            *v10 = v19;
          }

          if (v13 >= *(v19 + 16))
          {
            break;
          }

          sub_26294C9C8();
          (a3)(v48, 0);
          v10 = ++v13;
          if (v18 == v13)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      while (1)
      {
LABEL_25:
        v11 = v47;
        swift_beginAccess();
        v19 = *(v11 + v17);
        v34 = swift_isUniquelyReferenced_nonNull_native();
        *(v11 + v17) = v19;
        if ((v34 & 1) == 0)
        {
LABEL_40:
          v19 = sub_26291DB84(v19);
          *(v47 + v17) = v19;
        }

        if (v42 < *(v19 + 16))
        {
          break;
        }

        __break(1u);
LABEL_42:
        result = sub_26291DBD0(v19);
        v19 = result;
        *v9 = result;
        if ((a3 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

LABEL_22:
        if (a3 >= *(v19 + 16))
        {
          goto LABEL_44;
        }

        sub_26294C9C8();
        (v18)(v48, 0);
LABEL_24:
        (*(v11 + 8))(v13, v10);
      }

      v36 = v45;
      v35 = v46;
      (*(v45 + 24))(v19 + v40 + v41, v16, v46);
      *(v47 + v17) = v19;
      swift_endAccess();
      return (*(v36 + 8))(v16, v35);
    }

    else
    {
      (*(v11 + 32))(v13, v9, v10);
      v31 = sub_26294C928();
      a3 = sub_2629184E4(v13, v31);
      v18 = v32;

      if (v18)
      {
        goto LABEL_24;
      }

      v18 = sub_26294C918();
      v9 = v33;
      v19 = *v33;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v9 = v19;
      if ((result & 1) == 0)
      {
        goto LABEL_42;
      }

      if ((a3 & 0x8000000000000000) == 0)
      {
        goto LABEL_22;
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2628F4AC4(uint64_t a1, int a2)
{
  v3 = v2;
  v64 = a2;
  v5 = sub_26294C9D8();
  v65 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v48 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED60, &qword_26294F2E8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v52 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v63 = &v45 - v10;
  v11 = sub_26294CA28();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v66 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - v15;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if (v67[0])
  {
    return result;
  }

  v57 = *(a1 + 16);
  if (!v57)
  {
    return sub_2628EC330();
  }

  v53 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v56 = a1 + v53;
  v61 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
  swift_beginAccess();
  v18 = 0;
  v19 = v12 + 16;
  v59 = *(v12 + 16);
  v55 = (v65 + 56);
  v51 = (v65 + 48);
  v20 = *(v12 + 72);
  v47 = (v65 + 32);
  v46 = (v65 + 8);
  v49 = (v19 + 8);
  v60 = v19;
  v54 = (v19 - 8);
  v50 = v3;
  v58 = v5;
  while (1)
  {
    v62 = v18;
    v59(v16, v56 + v20 * v18, v11);
    (*v55)(v63, 1, 1, v5);
    v21 = *(*(v3 + v61) + 16);

    if (!v21)
    {
LABEL_4:

      sub_2628DF6F0(v63, &qword_27FF2ED60, &qword_26294F2E8);
      (*v54)(v16, v11);
      goto LABEL_5;
    }

    sub_262906CE0(&qword_27FF2EE98, MEMORY[0x277D48F20], MEMORY[0x277D48F28]);
    v22 = 0;
    v23 = v53;
    while ((sub_26294DD48() & 1) == 0)
    {
      ++v22;
      v23 += v20;
      if (v21 == v22)
      {
        goto LABEL_4;
      }
    }

    v24 = *(v3 + v61);
    if (v22 >= *(v24 + 16))
    {
      goto LABEL_35;
    }

    v25 = v66;
    v59(v66, v24 + v23, v11);
    v26 = v52;
    sub_2628DF954(v63, v52, &qword_27FF2ED60, &qword_26294F2E8);
    v27 = v58;
    if ((*v51)(v26, 1, v58) != 1)
    {
      v34 = v48;
      (*v47)(v48, v26, v27);
      v35 = sub_26294C928();
      v36 = sub_2629184E4(v34, v35);
      v38 = v37;

      if ((v38 & 1) == 0)
      {
        v45 = sub_26294C918();
        v40 = v39;
        v41 = *v39;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v40 = v41;
        if (result)
        {
          if ((v36 & 0x8000000000000000) != 0)
          {
            goto LABEL_31;
          }
        }

        else
        {
          result = sub_26291DBD0(v41);
          v41 = result;
          *v40 = result;
          if ((v36 & 0x8000000000000000) != 0)
          {
LABEL_31:
            __break(1u);
            return sub_2628EC330();
          }
        }

        if (v36 >= v41[2])
        {
          goto LABEL_37;
        }

        sub_26294C9C8();
        v45(v67, 0);
      }

      (*v46)(v34, v27);
      v25 = v66;
      goto LABEL_26;
    }

    sub_2628DF6F0(v26, &qword_27FF2ED60, &qword_26294F2E8);
    v28 = *(sub_26294C928() + 16);

    if (v28)
    {
      break;
    }

LABEL_26:
    v3 = v50;
    v42 = v61;
    swift_beginAccess();
    v43 = *(v3 + v42);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v42) = v43;
    if ((result & 1) == 0)
    {
      result = sub_26291DB84(v43);
      v43 = result;
      *(v3 + v61) = result;
    }

    if (v22 >= *(v43 + 2))
    {
      goto LABEL_36;
    }

    (*v49)(&v43[v23], v25, v11);
    *(v3 + v61) = v43;
    swift_endAccess();
    v44 = *v54;
    (*v54)(v25, v11);
    sub_2628DF6F0(v63, &qword_27FF2ED60, &qword_26294F2E8);
    v44(v16, v11);
LABEL_5:
    v18 = v62 + 1;
    v5 = v58;
    if (v62 + 1 == v57)
    {
      return sub_2628EC330();
    }
  }

  v29 = 0;
  while (1)
  {
    v30 = sub_26294C918();
    v32 = v31;
    v33 = *v31;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v32 = v33;
    if ((result & 1) == 0)
    {
      result = sub_26291DBD0(v33);
      v33 = result;
      *v32 = result;
    }

    if (v29 >= v33[2])
    {
      break;
    }

    sub_26294C9C8();
    v30(v67, 0);
    ++v29;
    v25 = v66;
    if (v28 == v29)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_2628F5228(unint64_t a1, uint64_t a2, void (**a3)(char *, uint64_t))
{
  v6 = sub_26294C9D8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26294CA28();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v39 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
  swift_beginAccess();
  v14 = *(a1 + v13);
  v15 = MEMORY[0x277D84F90];
  v47 = MEMORY[0x277D84F90];
  v43 = *(v14 + 16);
  if (v43)
  {
    v32 = a1;
    v33 = a2;
    v34 = a3;
    v42 = v14 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v46 = v7 + 16;
    v38 = v7;
    a3 = (v7 + 8);
    v40 = (v11 + 8);
    v41 = v11 + 16;

    a1 = 0;
    v17 = v11;
    v18 = v39;
    a2 = v16;
    v36 = v11;
    v37 = v10;
    v35 = v16;
    while (a1 < *(a2 + 16))
    {
      (*(v17 + 16))(v18, v42 + *(v17 + 72) * a1, v10);
      v19 = sub_26294C928();
      v20 = *(v19 + 16);
      if (v20)
      {
        v44 = v19;
        v45 = a1;
        v21 = v19 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
        v22 = *(v38 + 72);
        v23 = *(v38 + 16);
        v23(v9, v21, v6);
        while (1)
        {
          if (sub_26294C9B8())
          {
            sub_26294C948();
            MEMORY[0x26672D3D0]();
            if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_26294DDD8();
            }

            sub_26294DDF8();
            (*a3)(v9, v6);
            v15 = v47;
          }

          else
          {
            (*a3)(v9, v6);
          }

          v21 += v22;
          if (!--v20)
          {
            break;
          }

          v23(v9, v21, v6);
        }

        v17 = v36;
        v10 = v37;
        v18 = v39;
        a2 = v35;
        a1 = v45;
      }

      else
      {
      }

      ++a1;
      (*v40)(v18, v10);
      if (a1 == v43)
      {

        a2 = v33;
        a3 = v34;
        a1 = v32;
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_17:
  if (v15 >> 62)
  {
LABEL_21:
    v24 = sub_26294E008();
    goto LABEL_19;
  }

  v24 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:

  swift_getKeyPath();
  swift_getKeyPath();
  v47 = v24;
  v48 = 0;
  v25 = a1;
  sub_26294D008();
  v26 = &v25[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion];
  v27 = *&v25[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion];
  v28 = *&v25[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion + 8];
  *v26 = a2;
  *(v26 + 1) = a3;
  sub_262906C04(a2, a3);
  sub_262905484(v27, v28);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v47) = 1;
  v29 = v25;
  return sub_26294D008();
}

uint64_t sub_2628F5654()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EDE8, &qword_26294F428);
  MEMORY[0x28223BE20](v1 - 8);
  v71 = &v70 - v2;
  v3 = sub_26294C9D8();
  v77 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v95 = &v70 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v70 - v9;
  v11 = sub_26294CA28();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EEA0, &qword_26294F4F8);
  v98 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v73 = (&v70 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EEA8, &qword_26294F500);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v85 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v84 = &v70 - v20;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if (v99)
  {
    return result;
  }

  v83 = v15;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v99) = 1;
  v22 = v0;
  sub_26294D008();
  if (qword_27FF2E7C0 != -1)
  {
LABEL_39:
    swift_once();
  }

  v23 = sub_26294CE48();
  __swift_project_value_buffer(v23, qword_27FF314B0);
  v24 = v22;
  v25 = sub_26294CE28();
  v26 = sub_26294DE98();
  v27 = os_log_type_enabled(v25, v26);
  v76 = v14;
  if (v27)
  {
    v28 = swift_slowAlloc();
    LODWORD(v97) = v26;
    v29 = v28;
    *v28 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    v14 = v76;

    *(v29 + 1) = v99;

    _os_log_impl(&dword_2628DB000, v25, v97, "Controller loading %{BOOL}d", v29, 8u);
    MEMORY[0x26672DCE0](v29, -1, -1);
  }

  else
  {

    v25 = v24;
  }

  v30 = v83;
  v31 = v85;

  v96 = swift_allocObject();
  *(v96 + 16) = MEMORY[0x277D84F90];
  v22 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
  swift_beginAccess();
  v82 = v24;
  v90 = v22;
  v32 = *(v22 + v24);
  v72 = v12 + 16;
  v81 = (v98 + 56);
  v80 = (v98 + 48);
  v79 = (v12 + 32);
  v94 = (v77 + 8);
  v92 = v77 + 16;
  v93 = (v77 + 32);
  v78 = v12 + 8;
  v87 = v32;

  v33 = 0;
  v91 = v6;
  v75 = v11;
  v74 = v12;
  while (1)
  {
    v34 = *(v87 + 16);
    if (v33 == v34)
    {
      v89 = v33;
      v35 = 1;
    }

    else
    {
      if (v33 >= v34)
      {
        goto LABEL_38;
      }

      v36 = v33 + 1;
      v37 = v87 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v33;
      v38 = *(v30 + 48);
      v39 = v73;
      *v73 = v33;
      (*(v12 + 16))(v39 + v38, v37, v11);
      sub_262906F00(v39, v31, &qword_27FF2EEA0, &qword_26294F4F8);
      v35 = 0;
      v89 = v36;
    }

    (*v81)(v31, v35, 1, v30);
    v40 = v84;
    sub_262906F00(v31, v84, &qword_27FF2EEA8, &qword_26294F500);
    if ((*v80)(v40, 1, v30) == 1)
    {
      goto LABEL_35;
    }

    v88 = *v40;
    (*v79)(v14, &v40[*(v30 + 48)], v11);
    v41 = sub_26294C928();
    v42 = *(v41 + 16);
    if (v42)
    {
      v43 = *(v77 + 80);
      v86 = v41;
      v98 = (v43 + 32) & ~v43;
      v44 = v41 + v98;
      v97 = *(v77 + 72);
      v45 = *(v77 + 16);
      v22 = MEMORY[0x277D84F90];
      v45(v10, v41 + v98, v3);
      while (1)
      {
        if (sub_26294C9B8())
        {
          v45(v95, v10, v3);
          v48 = *(v96 + 16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_26291D688(0, v48[2] + 1, 1, v48);
            *(v96 + 16) = v48;
          }

          v50 = v48[2];
          v49 = v48[3];
          if (v50 >= v49 >> 1)
          {
            v58 = sub_26291D688((v49 > 1), v50 + 1, 1, v48);
            *(v96 + 16) = v58;
          }

          (*v94)(v10, v3);
          v51 = v10;
          v52 = v3;
          v53 = v95;
          v54 = v96;
          v55 = *(v96 + 16);
          *(v55 + 16) = v50 + 1;
          v47 = v97;
          (*v93)(v55 + v98 + v50 * v97, v53, v52);
          *(v54 + 16) = v55;
          v3 = v52;
          v10 = v51;
          v6 = v91;
        }

        else
        {
          v45(v6, v10, v3);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_26291D688(0, v22[2] + 1, 1, v22);
          }

          v57 = v22[2];
          v56 = v22[3];
          if (v57 >= v56 >> 1)
          {
            v22 = sub_26291D688((v56 > 1), v57 + 1, 1, v22);
          }

          (*v94)(v10, v3);
          v22[2] = v57 + 1;
          v46 = v22 + v98 + v57 * v97;
          v47 = v97;
          (*v93)(v46, v6, v3);
        }

        v44 += v47;
        if (!--v42)
        {
          break;
        }

        v45(v10, v44, v3);
      }

      v11 = v75;
      v12 = v74;
      v14 = v76;
    }

    else
    {

      v22 = MEMORY[0x277D84F90];
    }

    v59 = v82;
    v60 = v90;
    swift_beginAccess();
    v61 = *(v60 + v59);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v60 + v59) = v61;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      break;
    }

    v63 = v88;
    if ((v88 & 0x8000000000000000) != 0)
    {
      goto LABEL_34;
    }

LABEL_31:
    if (v63 >= v61[2])
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    sub_26294C938();
    *(v90 + v59) = v61;
    swift_endAccess();
    (*(v12 + 8))(v14, v11);
    v30 = v83;
    v31 = v85;
    v33 = v89;
  }

  v61 = sub_26291DB84(v61);
  *(v90 + v59) = v61;
  v63 = v88;
  if ((v88 & 0x8000000000000000) == 0)
  {
    goto LABEL_31;
  }

LABEL_34:
  __break(1u);
LABEL_35:

  v64 = sub_26294DE28();
  v65 = v71;
  (*(*(v64 - 8) + 56))(v71, 1, 1, v64);
  v66 = swift_allocObject();
  v66[2] = 0;
  v66[3] = 0;
  v67 = v82;
  v68 = v96;
  v66[4] = v82;
  v66[5] = v68;
  v69 = v67;

  sub_2628EB2A0(0, 0, v65, &unk_26294F510, v66);
}

uint64_t sub_2628F60F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v6 = sub_26294C9D8();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2628F61B8, 0, 0);
}

uint64_t sub_2628F61B8()
{
  v1 = v0[17];
  sub_262906C54(v0[16] + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_managementHandler, (v0 + 8));
  v2 = v0[11];
  v3 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v2);
  swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v17 = v3;
    v18 = v2;
    v20 = MEMORY[0x277D84F90];
    v7 = v0[19];

    sub_26294DFD8();
    v10 = *(v7 + 16);
    v9 = v7 + 16;
    v8 = v10;
    v11 = v4 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v12 = *(v9 + 56);
    do
    {
      v13 = v0[20];
      v14 = v0[18];
      v8(v13, v11, v14);
      sub_26294C948();
      (*(v9 - 8))(v13, v14);
      sub_26294DFB8();
      sub_26294DFE8();
      sub_26294DFF8();
      sub_26294DFC8();
      v11 += v12;
      --v5;
    }

    while (v5);

    v2 = v18;
    v6 = v20;
    v3 = v17;
  }

  v0[21] = v6;
  v19 = (*(v3 + 32) + **(v3 + 32));
  v15 = swift_task_alloc();
  v0[22] = v15;
  *v15 = v0;
  v15[1] = sub_2628F6410;

  return v19(v6, v2, v3);
}

uint64_t sub_2628F6410(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_2628F6704;
  }

  else
  {

    *(v4 + 192) = a1;
    v5 = sub_2628F6540;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2628F6540()
{
  v1 = v0[16];
  v2 = v0[17] + 16;
  v3 = *&v1[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_snapshot];
  *&v1[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_snapshot] = v0[24];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  sub_262906E24();
  v4 = sub_26294DED8();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_262906EA8;
  *(v6 + 24) = v5;
  v0[6] = sub_262906EC0;
  v0[7] = v6;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2628F4498;
  v0[5] = &block_descriptor;
  v7 = _Block_copy(v0 + 2);
  v8 = v1;

  dispatch_sync(v4, v7);

  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }

  return result;
}

uint64_t sub_2628F6704()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  if (qword_27FF2E7C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = sub_26294CE48();
  __swift_project_value_buffer(v2, qword_27FF314B0);
  v3 = v1;
  v4 = sub_26294CE28();
  v5 = sub_26294DEA8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 184);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2628DB000, v4, v5, "Error %@ encountered while deleting credentials", v7, 0xCu);
    sub_2628DF6F0(v8, &qword_27FF2EDF8, &qword_26294F460);
    MEMORY[0x26672DCE0](v8, -1, -1);
    MEMORY[0x26672DCE0](v7, -1, -1);
  }

  v11 = *(v0 + 128);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 200) = 0;
  v12 = v11;
  sub_26294D008();
  v13 = v12;
  v14 = sub_26294CE28();
  v15 = sub_26294DE98();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 128);
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    *(v17 + 4) = *(v0 + 201);

    _os_log_impl(&dword_2628DB000, v14, v15, "Controller loading %{BOOL}d", v17, 8u);
    MEMORY[0x26672DCE0](v17, -1, -1);
    v18 = *(v0 + 128);
  }

  else
  {

    v18 = *(v0 + 128);
    v14 = v18;
  }

  v19 = (v18 + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion);
  v20 = *(&v18->isa + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion);
  v21 = *(v0 + 184);
  if (v20)
  {
    v22 = v19[1];

    v20(0);

    sub_262905484(v20, v22);
  }

  else
  {
  }

  v23 = *v19;
  v24 = v19[1];
  *v19 = 0;
  v19[1] = 0;
  sub_262905484(v23, v24);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_2628F6A28(char *a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_secureElementCredentials;
  swift_beginAccess();
  v5 = sub_26290463C(&a1[v4], a2);
  v6 = *&a1[v4];
  if (v6 >> 62)
  {
    v20 = v5;
    v7 = sub_26294E008();
    v5 = v20;
    if (v7 >= v20)
    {
LABEL_3:
      sub_2629065C0(v5, v7);
      swift_endAccess();
      sub_2628E6C54();
      swift_getKeyPath();
      swift_getKeyPath();
      v21 = 0;
      a1 = a1;
      sub_26294D008();
      if (qword_27FF2E7C0 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 >= v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_13:
  swift_once();
LABEL_4:
  v8 = sub_26294CE48();
  __swift_project_value_buffer(v8, qword_27FF314B0);
  v9 = a1;
  v10 = sub_26294CE28();
  v11 = sub_26294DE98();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    *(v12 + 4) = v21;

    _os_log_impl(&dword_2628DB000, v10, v11, "Controller loading %{BOOL}d", v12, 8u);
    MEMORY[0x26672DCE0](v12, -1, -1);
  }

  else
  {

    v10 = v9;
  }

  v13 = &v9[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion];
  v14 = *&v9[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion];
  if (v14)
  {
    v15 = v13[1];

    v14(1);
    sub_262905484(v14, v15);
    v16 = *v13;
  }

  else
  {
    v16 = 0;
  }

  v17 = v13[1];
  *v13 = 0;
  v13[1] = 0;
  sub_262905484(v16, v17);
  swift_getKeyPath();
  swift_getKeyPath();
  v18 = v9;
  return sub_26294D008();
}

void sub_2628F6CF4(uint64_t *a1, uint64_t *a2)
{
  v29 = sub_26294C538();
  v4 = *(v29 - 8);
  v5 = MEMORY[0x28223BE20](v29);
  v28 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v27 = v20 - v7;
  v31 = sub_26294C9D8();
  v8 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v26 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  swift_beginAccess();
  v10 = *a2;
  v30 = *(*a2 + 16);
  v22 = (v4 + 8);
  v23 = v8 + 16;
  v20[2] = v8 + 8;
  v21 = v8;

  v11 = 0;
  v24 = v10;
  v12 = v26;
  while (1)
  {
    if (v30 == v11)
    {
LABEL_5:

      return;
    }

    if (v11 >= *(v10 + 16))
    {
      break;
    }

    v13 = v21;
    (*(v21 + 16))(v12, v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v11++, v31);
    v14 = sub_26294C948();
    v15 = v27;
    sub_26294DCA8();

    v16 = v28;
    sub_26294DCA8();
    LOBYTE(v14) = sub_26294C518();
    v17 = *v22;
    v18 = v16;
    v19 = v29;
    (*v22)(v18, v29);
    v17(v15, v19);
    (*(v13 + 8))(v12, v31);
    v10 = v24;
    if (v14)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}
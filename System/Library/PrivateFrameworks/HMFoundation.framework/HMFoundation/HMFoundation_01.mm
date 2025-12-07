void sub_22AE10520(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = (((*(*(swift_getAssociatedTypeWitness() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = v7 + 17;
  v9 = v7 == -16;
  v10 = 9;
  if (!v9)
  {
    v10 = v8;
  }

  v11 = ((v10 + 30) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0x7FFFFFFF)
  {
    v14 = 0;
  }

  else
  {
    v12 = a3 - 2147483645;
    if (((v10 + 30) & 0xFFFFFFF8) != 0xFFFFFFF0)
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
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }
  }

  if (a2 > 0x7FFFFFFE)
  {
    if (((v10 + 30) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - 2147483646;
    }

    else
    {
      v15 = 1;
    }

    if (((v10 + 30) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      bzero(a1, v11);
      *a1 = a2 - 0x7FFFFFFF;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v11) = v15;
      }

      else
      {
        *(a1 + v11) = v15;
      }
    }

    else if (v14)
    {
      *(a1 + v11) = v15;
    }
  }

  else
  {
    if (v14 <= 1)
    {
      if (v14)
      {
        *(a1 + v11) = 0;
        if (!a2)
        {
          return;
        }

LABEL_29:
        *((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) = a2;
        return;
      }

LABEL_28:
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    }

    if (v14 == 2)
    {
      *(a1 + v11) = 0;
      goto LABEL_28;
    }

    *(a1 + v11) = 0;
    if (a2)
    {
      goto LABEL_29;
    }
  }
}

void sub_22AE106BC(uint64_t a1)
{
  if (!qword_27D8B1070[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
    v1 = sub_22AE76D84();
    if (!v2)
    {
      atomic_store(v1, qword_27D8B1070);
    }
  }
}

uint64_t sub_22AE10728(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
  result = swift_getTupleTypeMetadata3();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22AE107E4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = ((((*(*(AssociatedTypeWitness - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((((*(*(AssociatedTypeWitness - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) == 0xFFFFFFFFFFFFFFF0)
  {
    v6 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_27;
  }

  v7 = v6 | 1;
  if ((v6 | 1) <= 3)
  {
    v8 = ((a2 + 1) >> 8) + 1;
  }

  else
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v9 = 1;
  }

  if (v8 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = *&a1[v7];
      if (*&a1[v7])
      {
        goto LABEL_23;
      }
    }

    else
    {
      v11 = *&a1[v7];
      if (v11)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    v15 = a1[v6];
    if (v15 >= 2)
    {
      return (v15 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v10)
  {
    goto LABEL_27;
  }

  v11 = a1[v7];
  if (!a1[v7])
  {
    goto LABEL_27;
  }

LABEL_23:
  v13 = (v11 - 1) << (8 * v7);
  if (v7 <= 3)
  {
    v14 = *a1;
  }

  else
  {
    v13 = 0;
    v14 = *a1;
  }

  return (v14 | v13) + 255;
}

void sub_22AE10910(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = ((((*(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((((*(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) == 0xFFFFFFFFFFFFFFF0)
  {
    v8 = 8;
  }

  v9 = v8 | 1;
  if (a3 < 0xFF)
  {
    v12 = 0;
    if (a2 > 0xFE)
    {
      goto LABEL_16;
    }

LABEL_24:
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        *&a1[v9] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      *&a1[v9] = 0;
    }

    else if (v12)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_34:
      a1[v8] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v9 <= 3)
  {
    v10 = ((a3 + 1) >> 8) + 1;
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

  if (a2 <= 0xFE)
  {
    goto LABEL_24;
  }

LABEL_16:
  v13 = a2 - 255;
  bzero(a1, v8 | 1);
  if (v9 <= 3)
  {
    v14 = (v13 >> 8) + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v9 <= 3)
  {
    *a1 = v13;
    if (v12 > 1)
    {
LABEL_21:
      if (v12 == 2)
      {
        *&a1[v9] = v14;
      }

      else
      {
        *&a1[v9] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v12 > 1)
    {
      goto LABEL_21;
    }
  }

  if (v12)
  {
    a1[v9] = v14;
  }
}

uint64_t sub_22AE10A84@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + a2 - 8);
  v5 = *(a1 + a2 - 40);
  v9[0] = *(a1 + a2 - 56);
  v9[1] = v5;
  v9[2] = *(a1 + a2 - 24);
  v6 = _s4NodeOMa(0, v9);
  result = sub_22AE0FDC4(v6, v4);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_22AE10AEC(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v41 = a1;
  v42 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v43 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness, v12);
  v15 = &v30 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v39 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  v33 = *(v18 - 8);
  v34 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v30 - v20;
  v22 = sub_22AE76D04();
  if (!v22)
  {
    return sub_22AE76B64();
  }

  v44 = v22;
  v48 = sub_22AE76E34();
  v35 = sub_22AE76E44();
  sub_22AE76E14();
  result = sub_22AE76CF4();
  if ((v44 & 0x8000000000000000) == 0)
  {
    v30 = v10;
    v31 = a5;
    v24 = 0;
    v36 = (v45 + 16);
    v37 = (v45 + 8);
    v38 = v8;
    while (!__OFADD__(v24, 1))
    {
      v45 = v24 + 1;
      v25 = sub_22AE76D34();
      v26 = v15;
      v27 = v15;
      v28 = AssociatedTypeWitness;
      (*v36)(v26);
      v25(v47, 0);
      v29 = v46;
      v41(v27, v43);
      if (v29)
      {
        (*v37)(v27, v28);
        (*(v33 + 8))(v21, v34);

        return (*(v30 + 32))(v32, v43, v31);
      }

      v46 = 0;
      (*v37)(v27, v28);
      sub_22AE76E24();
      result = sub_22AE76D14();
      ++v24;
      v15 = v27;
      if (v45 == v44)
      {
        (*(v33 + 8))(v21, v34);
        return v48;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22AE10F0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness, v7);
  v10 = &v17 - v9;
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v3, a1);
  if ((*(v6 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    return 0x3E746F6F723CLL;
  }

  (*(v6 + 32))(v10, v13, AssociatedTypeWitness);
  v16 = sub_22AE76EE4();
  (*(v6 + 8))(v10, AssociatedTypeWitness);
  return v16;
}

uint64_t sub_22AE1111C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_22ADEE1E0;

  return sub_22AE0CF74(a1, a2, a3, a4, v9);
}

unint64_t sub_22AE1123C()
{
  result = qword_27D8B1100[0];
  if (!qword_27D8B1100[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B10F8, &qword_22AE80948);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D8B1100);
  }

  return result;
}

uint64_t sub_22AE112A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1, v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = a1[3];
    v10 = a1[4];
    v11 = a1[5];
    v12 = a1[6];
    v13 = a1[7];
    v19 = a1[2];
    v8 = v19;
    v20 = v9;
    v21 = v10;
    v22 = v11;
    v23 = v12;
    v24 = v13;
    _s4NodeO13NodeStateTypeOMa(255, &v19);
    sub_22AE76BB4();
    v14 = swift_projectBox();
    v19 = v8;
    v20 = v9;
    v21 = v10;
    v22 = v11;
    v23 = v12;
    v24 = v13;
    v15 = _s4NodeO13NodeStateTypeOMa(0, &v19);
    (*(*(v15 - 8) + 16))(a2, v14, v15);
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
    swift_getTupleTypeMetadata3();

    v18 = *(AssociatedTypeWitness - 8);
    (*(v18 + 32))(a2, v6, AssociatedTypeWitness);
    return (*(v18 + 56))(a2, 0, 1, AssociatedTypeWitness);
  }
}

uint64_t sub_22AE1150C(_OWORD *a1)
{
  MEMORY[0x28223BE20](a1, v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    MEMORY[0x28223BE20](EnumCaseMultiPayload, v7);
    strcpy(&v13 - 64, "nodeState eventHandler stateTransitionHandler substates ");
    v8 = a1[2];
    v13 = a1[1];
    v14 = v8;
    v15 = a1[3];
    *&v13 = _s4NodeO13NodeStateTypeOMa(255, &v13);
    *(&v13 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
    *&v14 = *(&v13 + 1);
    *(&v14 + 1) = sub_22AE76BB4();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v10 = *(swift_projectBox() + *(TupleTypeMetadata + 48));
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
    v10 = *&v4[*(swift_getTupleTypeMetadata3() + 48)];

    (*(*(AssociatedTypeWitness - 8) + 8))(v4, AssociatedTypeWitness);
  }

  return v10;
}

uint64_t sub_22AE1178C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 1);
  MEMORY[0x28223BE20](a1, a2);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v9, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    MEMORY[0x28223BE20](EnumCaseMultiPayload, v11);
    strcpy(&v23 - 64, "nodeState eventHandler stateTransitionHandler substates ");
    v12 = a2[2];
    v13 = a2[3];
    v14 = a2[4];
    v15 = a2[5];
    v24 = a1;
    v25 = a3;
    v16 = a2[6];
    v17 = a2[7];
    v26 = v12;
    v27 = v13;
    v28 = v14;
    v29 = v15;
    v30 = v16;
    v31 = v17;
    v26 = _s4NodeO13NodeStateTypeOMa(255, &v26);
    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
    v28 = v27;
    v29 = sub_22AE76BB4();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v19 = swift_projectBox();
    v23 = &v23;
    v26 = *(v19 + *(TupleTypeMetadata + 80));
    MEMORY[0x28223BE20](v19, v20);
    *(&v23 - 8) = v12;
    *(&v23 - 7) = v13;
    *(&v23 - 6) = v14;
    *(&v23 - 5) = v15;
    *(&v23 - 4) = v16;
    *(&v23 - 3) = v17;
    *(&v23 - 2) = v24;
    sub_22AE76BB4();

    swift_getWitnessTable();
    sub_22AE76AF4();
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
    swift_getTupleTypeMetadata3();

    (*(v6 + 56))(a3, 1, 1, a2);
    return (*(*(AssociatedTypeWitness - 8) + 8))(v8, AssociatedTypeWitness);
  }
}

uint64_t sub_22AE11B08(_OWORD *a1)
{
  MEMORY[0x28223BE20](a1, v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    MEMORY[0x28223BE20](EnumCaseMultiPayload, v7);
    strcpy(&v14 - 64, "nodeState eventHandler stateTransitionHandler substates ");
    v8 = a1[2];
    v14 = a1[1];
    v15 = v8;
    v16 = a1[3];
    *&v14 = _s4NodeO13NodeStateTypeOMa(255, &v14);
    *(&v14 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
    *&v15 = *(&v14 + 1);
    *(&v15 + 1) = sub_22AE76BB4();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v10 = *(swift_projectBox() + *(TupleTypeMetadata + 64));
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();

    v10 = *&v4[*(TupleTypeMetadata3 + 64)];
    (*(*(AssociatedTypeWitness - 8) + 8))(v4, AssociatedTypeWitness);
  }

  return v10;
}

uint64_t sub_22AE11D8C(uint64_t a1, void *a2)
{
  v3 = v2;
  v64 = a1;
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v66 = v6;
  v67 = v5;
  v61 = v7;
  v62 = v5;
  v68 = v7;
  v69 = v8;
  v59 = v10;
  v60 = v9;
  v70 = v9;
  v71 = v10;
  v63 = _s4NodeO13NodeStateTypeOMa(0, &v66);
  v65 = *(v63 - 8);
  v12 = MEMORY[0x28223BE20](v63, v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v55 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  v21 = MEMORY[0x28223BE20](AssociatedTypeWitness, v20);
  v58 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v26 = &v55 - v25;
  MEMORY[0x28223BE20](v24, v27);
  v29 = (&v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29, v3, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v56 = v6;
    v33 = *v29;
    MEMORY[0x28223BE20](EnumCaseMultiPayload, v32);
    strcpy(&v55 - 64, "nodeState eventHandler stateTransitionHandler substates ");
    v34 = v19;
    v35 = v63;
    v66 = v63;
    v67 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
    v68 = v67;
    v69 = sub_22AE76BB4();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v55 = v33;
    v37 = swift_projectBox();
    v38 = *(v37 + *(TupleTypeMetadata + 80));
    v39 = *(v65 + 16);
    v39(v17, v37, v35);
    v57 = v17;
    v40 = v35;
    v41 = v34;
    v39(v14, v17, v40);
    if ((*(v34 + 48))(v14, 1, AssociatedTypeWitness) == 1)
    {
      v42 = *(v65 + 8);

      v43 = v63;
      v44 = v42(v14, v63);
      v46 = v64;
      v47 = v56;
LABEL_7:
      v66 = v38;
      MEMORY[0x28223BE20](v44, v45);
      v51 = v61;
      v52 = v62;
      *(&v55 - 8) = v47;
      *(&v55 - 7) = v52;
      *(&v55 - 6) = v51;
      *(&v55 - 5) = v8;
      v53 = v59;
      *(&v55 - 4) = v60;
      *(&v55 - 3) = v53;
      *(&v55 - 2) = v46;
      sub_22AE76BB4();
      swift_getWitnessTable();
      v48 = sub_22AE76B14();
      (*(v65 + 8))(v57, v43);

      return v48 & 1;
    }

    v49 = v58;
    (*(v34 + 32))(v58, v14, AssociatedTypeWitness);
    v47 = v56;
    swift_getAssociatedConformanceWitness();

    v46 = v64;
    v50 = sub_22AE76A44();
    v44 = (*(v41 + 8))(v49, AssociatedTypeWitness);
    v43 = v63;
    if ((v50 & 1) == 0)
    {
      goto LABEL_7;
    }

    (*(v65 + 8))(v57, v63);

    v48 = 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
    swift_getTupleTypeMetadata3();

    (*(v19 + 32))(v26, v29, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    v48 = sub_22AE76A44();
    (*(v19 + 8))(v26, AssociatedTypeWitness);
  }

  return v48 & 1;
}

uint64_t sub_22AE123E4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v5[0] = *(v0 + 16);
  v5[1] = v2;
  v5[2] = *(v0 + 48);
  v3 = _s4NodeOMa(0, v5);
  return sub_22AE11D8C(v1, v3) & 1;
}

uint64_t sub_22AE12450(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return AssociatedTypeWitness;
}

uint64_t sub_22AE124C0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v7)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v8)
  {
    v10 = 8 * v9;
    if (v9 > 3)
    {
      goto LABEL_8;
    }

    v12 = ((a2 - v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= 0xFF)
      {
        if (v12 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v11 = *(a1 + v9);
        if (!*(a1 + v9))
        {
          goto LABEL_26;
        }

LABEL_15:
        v13 = (v11 - 1) << v10;
        if (v9 > 3)
        {
          v13 = 0;
        }

        if (v9)
        {
          if (v9 > 3)
          {
            LODWORD(v9) = 4;
          }

          if (v9 > 2)
          {
            if (v9 == 3)
            {
              LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v9) = *a1;
            }
          }

          else if (v9 == 1)
          {
            LODWORD(v9) = *a1;
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        return v8 + (v9 | v13) + 1;
      }

      v11 = *(a1 + v9);
      if (*(a1 + v9))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v7 < 2)
  {
    return 0;
  }

  v15 = (*(v6 + 48))(a1);
  if (v15 >= 2)
  {
    return v15 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_22AE12664(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v10 = 0;
    v11 = *(v8 + 64) + 1;
  }

  if (a3 <= v10)
  {
    goto LABEL_15;
  }

  if (v11 <= 3)
  {
    v12 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
    if (HIWORD(v12))
    {
      v7 = 4;
      if (v10 >= a2)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v7 = v13;
    }

    else
    {
      v7 = 0;
    }

LABEL_15:
    if (v10 >= a2)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  v7 = 1;
  if (v10 >= a2)
  {
LABEL_25:
    if (v7 > 1)
    {
      if (v7 != 2)
      {
        *&a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      *&a1[v11] = 0;
    }

    else if (v7)
    {
      a1[v11] = 0;
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
    if (v9 >= 2)
    {
      v17 = *(v8 + 56);

      v17(a1, a2 + 1);
    }

    return;
  }

LABEL_16:
  v14 = ~v10 + a2;
  if (v11 >= 4)
  {
    bzero(a1, v11);
    *a1 = v14;
    v15 = 1;
    if (v7 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v15 = (v14 >> (8 * v11)) + 1;
  if (!v11)
  {
LABEL_39:
    if (v7 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v16 = v14 & ~(-1 << (8 * v11));
  bzero(a1, v11);
  if (v11 == 3)
  {
    *a1 = v16;
    a1[2] = BYTE2(v16);
    goto LABEL_39;
  }

  if (v11 == 2)
  {
    *a1 = v16;
    if (v7 > 1)
    {
LABEL_43:
      if (v7 == 2)
      {
        *&a1[v11] = v15;
      }

      else
      {
        *&a1[v11] = v15;
      }

      return;
    }
  }

  else
  {
    *a1 = v14;
    if (v7 > 1)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v7)
  {
    a1[v11] = v15;
  }
}

uint64_t sub_22AE128DC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_getTupleTypeMetadata3();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22AE12970(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (((((v3 + *(*(*(a3 + 24) - 8) + 80)) & ~*(*(*(a3 + 24) - 8) + 80)) + *(*(*(a3 + 24) - 8) + 64) + *(*(*(a3 + 16) - 8) + 80)) & ~*(*(*(a3 + 16) - 8) + 80)) + v3 <= v3)
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v4 = ((((v3 + *(*(*(a3 + 24) - 8) + 80)) & ~*(*(*(a3 + 24) - 8) + 80)) + *(*(*(a3 + 24) - 8) + 64) + *(*(*(a3 + 16) - 8) + 80)) & ~*(*(*(a3 + 16) - 8) + 80)) + v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_26;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 252) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v9 < 2)
    {
LABEL_26:
      v11 = *(a1 + v4);
      if (v11 >= 4)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_26;
  }

LABEL_15:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 253;
}

void sub_22AE12B10(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = ((((v5 + *(*(*(a4 + 24) - 8) + 80)) & ~*(*(*(a4 + 24) - 8) + 80)) + *(*(*(a4 + 24) - 8) + 64) + *(*(*(a4 + 16) - 8) + 80)) & ~*(*(*(a4 + 16) - 8) + 80)) + v5;
  if (v6 <= v5)
  {
    v6 = *(*(*(a4 + 16) - 8) + 64);
  }

  v7 = v6 + 1;
  if (a3 < 0xFD)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = ((a3 + ~(-1 << (8 * v7)) - 252) >> (8 * v7)) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFC)
  {
    v9 = a2 - 253;
    if (v7 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v6 != -1)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_39:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v6] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_24;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void *sub_22AE12D68(_OWORD *a1)
{
  v4 = v1[1];
  v3 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  if (v4 | v5)
  {
    if (v5)
    {
      v10 = v1[4];
    }

    else
    {
      v10 = 0;
    }

    if (v4)
    {
      v11 = v3;
    }

    else
    {
      v11 = 0;
    }

    v12 = swift_allocObject();
    v13 = a1[2];
    *(v12 + 16) = a1[1];
    *(v12 + 32) = v13;
    *(v12 + 48) = a1[3];
    *(v12 + 64) = v4;
    *(v12 + 72) = v11;
    *(v12 + 80) = v5;
    *(v12 + 88) = v10;
    v9 = &unk_22AE81020;
  }

  else
  {
    v7 = swift_allocObject();
    v8 = a1[2];
    v7[1] = a1[1];
    v7[2] = v8;
    v7[3] = a1[3];
    v9 = &unk_22AE81010;
  }

  v14 = v9;
  sub_22ADF69C0(v4, v3);
  sub_22ADF69C0(v5, v6);
  return v14;
}

uint64_t HierarchicalStateMachine.__allocating_init(stateValueType:eventType:delegateEventType:builder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *__return_ptr, uint64_t))
{
  v6 = v4[11];
  v7 = v4[12];
  v8 = v4[13];
  v9 = v4[14];
  v10 = v4[15];
  *&v26 = v4[10];
  *(&v26 + 1) = v6;
  v11 = v26;
  *&v27 = v7;
  *(&v27 + 1) = v8;
  *&v28 = v9;
  *(&v28 + 1) = v10;
  v12 = type metadata accessor for HierarchicalStateMachine.RootState(0, &v26);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = (&v23[-1] - v15);
  a4(&v26, v14);
  v24[2] = v28;
  v24[3] = v29;
  v25 = v30;
  v24[0] = v26;
  v24[1] = v27;
  v17 = v11;
  v23[0] = v11;
  v23[1] = v6;
  v23[2] = v7;
  v23[3] = v8;
  v23[4] = v9;
  v23[5] = v10;
  v18 = type metadata accessor for HierarchicalStateMachine.RootState.RootStateBuilder.Components(0, v23);
  v19 = *(v18 - 8);
  (*(v19 + 16))(v23, &v26, v18);
  sub_22AE0CC50(v24, v17, v6, v7, v8, v9, v10, v16);
  v20 = HierarchicalStateMachine.__allocating_init(rootState:)(v16);
  (*(v19 + 8))(&v26, v18);
  return v20;
}

uint64_t HierarchicalStateMachine.__allocating_init(initialValue:eventType:delegateEventType:builder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *__return_ptr, uint64_t))
{
  v34 = a4;
  v36 = a1;
  v7 = v4[10];
  v6 = v4[11];
  v8 = v4[12];
  v9 = v4[13];
  v10 = v4[15];
  v35 = v4[14];
  *&v42 = v7;
  *(&v42 + 1) = v6;
  v11 = v6;
  *&v43 = v8;
  *(&v43 + 1) = v9;
  v12 = v8;
  v13 = v9;
  *&v44 = v35;
  *(&v44 + 1) = v10;
  v33 = v10;
  v14 = type metadata accessor for HierarchicalStateMachine.RootState(0, &v42);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v38 = (&v32 - v17);
  v37 = *(v7 - 8);
  v18 = v37;
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34(&v42, v20);
  (*(v18 + 16))(v22, a1, v7);
  v40[2] = v44;
  v40[3] = v45;
  v41 = v46;
  v40[0] = v42;
  v40[1] = v43;
  v39[0] = v7;
  v23 = v11;
  v39[1] = v11;
  v24 = v12;
  v39[2] = v12;
  v25 = v13;
  v39[3] = v13;
  v26 = v35;
  v39[4] = v35;
  v39[5] = v10;
  v27 = type metadata accessor for HierarchicalStateMachine.RootState.RootStateBuilder.Components(0, v39);
  v28 = *(v27 - 8);
  (*(v28 + 16))(v39, &v42, v27);
  v29 = v38;
  sub_22AE0CC50(v40, v7, v23, v24, v25, v26, v33, v38);
  v30 = HierarchicalStateMachine.__allocating_init(initialValue:rootState:)(v22, v29);
  (*(v28 + 8))(&v42, v27);
  (*(v37 + 8))(v36, v7);
  return v30;
}

uint64_t static HierarchicalStateMachine.makeStartedMachine(initialValue:eventType:delegateEventType:builder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_22AE13310, 0, 0);
}

uint64_t sub_22AE13310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = HierarchicalStateMachine.__allocating_init(stateValueType:eventType:delegateEventType:builder:)(a1, a2, a3, *(v3 + 40));
  v4 = swift_task_alloc();
  *(v3 + 72) = v4;
  *v4 = v3;
  v4[1] = sub_22AE133BC;
  v5 = *(v3 + 16);

  return HierarchicalStateMachine.start(with:)(v5);
}

uint64_t sub_22AE133BC()
{
  v1 = *v0;
  v5 = *v0;

  v2 = *(v5 + 8);
  v3 = *(v1 + 64);

  return v2(v3);
}

uint64_t sub_22AE134C8(uint64_t *a1, _OWORD *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[4];
  v33 = a1[3];
  v34 = a1[6];
  v37 = a1[7];
  v35 = a1[5];
  v36 = a1[8];
  v39 = *a1;

  v7 = a2[2];
  v38[0] = a2[1];
  v38[1] = v7;
  v38[2] = a2[3];
  _s4NodeOMa(255, v38);
  sub_22AE76BB4();
  swift_getWitnessTable();
  sub_22AE76B84();
  v9 = v2[1];
  v8 = v2[2];
  v10 = v8;
  v11 = v9;
  v12 = v9;
  v13 = v8;
  if (!v9)
  {
    sub_22ADF69C0(v4, v5);
    v11 = v2[1];
    v10 = v2[2];
    v12 = v4;
    v13 = v5;
  }

  sub_22ADF69C0(v9, v8);
  sub_22ADF73A0(v11, v10);
  v2[1] = v12;
  v2[2] = v13;
  v15 = v2[3];
  v14 = v2[4];
  v16 = v14;
  v17 = v15;
  v18 = v15;
  v19 = v14;
  if (!v15)
  {
    v18 = v33;
    sub_22ADF69C0(v33, v6);
    v17 = v2[3];
    v16 = v2[4];
    v19 = v6;
  }

  sub_22ADF69C0(v15, v14);
  sub_22ADF73A0(v17, v16);
  v2[3] = v18;
  v2[4] = v19;
  v21 = v2[5];
  v20 = v2[6];
  v22 = v20;
  v23 = v21;
  v24 = v21;
  v25 = v20;
  if (!v21)
  {
    v25 = v34;
    v24 = v35;
    sub_22ADF69C0(v35, v34);
    v23 = v2[5];
    v22 = v2[6];
  }

  sub_22ADF69C0(v21, v20);
  sub_22ADF73A0(v23, v22);
  v2[5] = v24;
  v2[6] = v25;
  v27 = v2[7];
  v26 = v2[8];
  v28 = v26;
  v29 = v27;
  v30 = v27;
  v31 = v26;
  if (!v27)
  {
    v31 = v36;
    v30 = v37;
    sub_22ADF69C0(v37, v36);
    v29 = v2[7];
    v28 = v2[8];
  }

  sub_22ADF69C0(v27, v26);
  result = sub_22ADF73A0(v29, v28);
  v2[7] = v30;
  v2[8] = v31;
  return result;
}

uint64_t sub_22AE136C0(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_22ADEE1DC;

  return v5();
}

uint64_t sub_22AE137A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;
  *(v8 + 56) = v14;
  *(v8 + 64) = a1;
  *(v8 + 16) = a7;
  *(v8 + 24) = a8;
  *(v8 + 32) = v12;
  *(v8 + 48) = v13;
  v9 = type metadata accessor for HierarchicalStateMachine.StateTransition(0, v8 + 16);
  *(v8 + 120) = v9;
  *(v8 + 128) = *(v9 - 8);
  *(v8 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22AE13894, 0, 0);
}

uint64_t sub_22AE13894()
{
  (*(v0[16] + 16))(v0[17], v0[8], v0[15]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v11 = v0[11];
      if (v11)
      {
        v14 = (v11 + *v11);
        v3 = swift_task_alloc();
        v0[19] = v3;
        *v3 = v0;
        v4 = sub_22AE13CEC;
        goto LABEL_9;
      }

      goto LABEL_12;
    }
  }

  else if (!EnumCaseMultiPayload)
  {
    v2 = v0[9];
    if (v2)
    {
      v14 = (v2 + *v2);
      v3 = swift_task_alloc();
      v0[18] = v3;
      *v3 = v0;
      v4 = sub_22AE13B78;
LABEL_9:
      v3[1] = v4;

      return v14();
    }

LABEL_12:
    (*(v0[16] + 8))(v0[17], v0[15]);
    goto LABEL_13;
  }

  v5 = v0[17];
  v7 = v0[13];
  v6 = v0[14];
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v9 = *(TupleTypeMetadata3 + 48);
  v10 = *(*(v7 - 8) + 8);
  v10(v5 + *(TupleTypeMetadata3 + 64), v7);
  (*(*(v6 - 8) + 8))(v5 + v9, v6);
  v10(v5, v7);
LABEL_13:

  v13 = v0[1];

  return v13();
}

uint64_t sub_22AE13B78()
{

  return MEMORY[0x2822009F8](sub_22AE13C74, 0, 0);
}

uint64_t sub_22AE13C74()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22AE13CEC()
{

  return MEMORY[0x2822009F8](sub_22AE1858C, 0, 0);
}

uint64_t static HierarchicalStateMachine.RootState.RootStateBuilder.buildBlock(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a1;
  v16 = a2;
  *&v17 = a3;
  *(&v17 + 1) = a4;
  *&v18 = a5;
  *(&v18 + 1) = a6;
  *&v19 = a7;
  _s4NodeOMa(0, &v16);
  v13 = sub_22AE76A04();
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = v13;
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  type metadata accessor for HierarchicalStateMachine.RootState.RootStateBuilder.Components(255, v15);
  sub_22AE76BB4();
  swift_getWitnessTable();
  return sub_22AE76B04();
}

uint64_t sub_22AE13F10(uint64_t a1, uint64_t *a2)
{
  v4 = v2[2];
  v7[0] = v2[1];
  v7[1] = v4;
  v7[2] = v2[3];
  v5 = type metadata accessor for HierarchicalStateMachine.RootState.RootStateBuilder.Components(0, v7);
  return sub_22AE134C8(a2, v5);
}

double static HierarchicalStateMachine.RootState.RootStateBuilder.buildExpression(_:)@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t x8_0@<X8>)
{
  return sub_22AE14154(a2, a3, a4, a5, a6, a7, type metadata accessor for HierarchicalStateMachine.RootState.BuilderTypes.State, x8_0, sub_22AE13FC0);
}

{
  return sub_22AE14154(a2, a3, a4, a5, a6, a7, type metadata accessor for HierarchicalStateMachine.RootState.BuilderTypes.CompositeState, x8_0, sub_22AE142A8);
}

uint64_t sub_22AE13FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 40);
  v7 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v10 = (a2 + *(TupleTypeMetadata3 + 48));
  v11 = (a2 + *(TupleTypeMetadata3 + 64));
  (*(*(AssociatedTypeWitness - 8) + 16))(a2, v3, AssociatedTypeWitness);
  v12 = *(a1 + 72);
  v13 = (v3 + *(a1 + 68));
  v14 = v13[1];
  *v10 = *v13;
  v10[1] = v14;
  v15 = v3 + v12;
  v16 = *(v3 + v12);
  v17 = *(v15 + 8);
  *v11 = v16;
  v11[1] = v17;
  v19 = v7;
  v20 = *(a1 + 24);
  v21 = v6;
  v22 = *(a1 + 48);
  _s4NodeOMa(0, &v19);
  swift_storeEnumTagMultiPayload();
}

double sub_22AE14154@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t (*a7)(void, uint64_t *)@<X7>, uint64_t a8@<X8>, void (*a9)(uint64_t))
{
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  _s4NodeOMa(255, &v20);
  sub_22AE76EF4();
  swift_allocObject();
  v16 = sub_22AE76B34();
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v17 = a7(0, &v20);
  a9(v17);
  sub_22AE76BB4();
  *a8 = v16;
  result = 0.0;
  *(a8 + 8) = 0u;
  *(a8 + 24) = 0u;
  *(a8 + 40) = 0u;
  *(a8 + 56) = 0u;
  return result;
}

uint64_t sub_22AE142A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v33 = *(a1 + 16);
  v5 = v33;
  v34 = v4;
  v10 = v4;
  v30 = v6;
  v31 = v4;
  v35 = v6;
  v36 = v7;
  v11 = v6;
  v37 = v8;
  v38 = v9;
  v12 = v8;
  v28 = v9;
  v29 = v8;
  v13 = v9;
  v39 = _s4NodeO13NodeStateTypeOMa(255, &v33);
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
  v41 = v40;
  v33 = v5;
  v34 = v10;
  v35 = v11;
  v36 = v7;
  v37 = v12;
  v38 = v13;
  _s4NodeOMa(255, &v33);
  v42 = sub_22AE76BB4();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v27 = swift_allocBox();
  v16 = v15;
  v17 = (v15 + TupleTypeMetadata[12]);
  v18 = (v15 + TupleTypeMetadata[16]);
  v19 = TupleTypeMetadata[20];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  (*(v21 + 16))(v16, v2, AssociatedTypeWitness);
  (*(v21 + 56))(v16, 0, 1, AssociatedTypeWitness);
  v22 = (v2 + *(a1 + 72));
  v23 = v22[1];
  *v17 = *v22;
  v17[1] = v23;
  v24 = (v2 + *(a1 + 76));
  v25 = v24[1];
  *v18 = *v24;
  v18[1] = v25;
  *(v16 + v19) = *(v2 + *(a1 + 68));
  *a2 = v27;
  v33 = v5;
  v34 = v31;
  v35 = v30;
  v36 = v7;
  v37 = v29;
  v38 = v28;
  _s4NodeOMa(0, &v33);
  swift_storeEnumTagMultiPayload();
}

double static HierarchicalStateMachine.RootState.RootStateBuilder.buildExpression(_:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = *a1;
  v15 = a1[1];

  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  _s4NodeOMa(0, v18);
  *a8 = sub_22AE76A04();
  *(a8 + 8) = v16;
  *(a8 + 16) = v15;
  result = 0.0;
  *(a8 + 24) = 0u;
  *(a8 + 40) = 0u;
  *(a8 + 56) = 0u;
  return result;
}

{
  v16 = *a1;
  v15 = a1[1];

  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  _s4NodeOMa(0, v18);
  *a8 = sub_22AE76A04();
  *(a8 + 8) = 0;
  *(a8 + 16) = 0;
  *(a8 + 24) = v16;
  *(a8 + 32) = v15;
  result = 0.0;
  *(a8 + 40) = 0u;
  *(a8 + 56) = 0u;
  return result;
}

{
  v16 = *a1;
  v15 = a1[1];

  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  _s4NodeOMa(0, v18);
  *a8 = sub_22AE76A04();
  result = 0.0;
  *(a8 + 8) = 0u;
  *(a8 + 24) = 0u;
  *(a8 + 40) = v16;
  *(a8 + 48) = v15;
  *(a8 + 56) = 0;
  *(a8 + 64) = 0;
  return result;
}

{
  v16 = *a1;
  v15 = a1[1];

  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  _s4NodeOMa(0, v18);
  *a8 = sub_22AE76A04();
  result = 0.0;
  *(a8 + 8) = 0u;
  *(a8 + 24) = 0u;
  *(a8 + 40) = 0u;
  *(a8 + 56) = v16;
  *(a8 + 64) = v15;
  return result;
}

uint64_t sub_22AE1478C(uint64_t *a1, _OWORD *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v21 = a1[3];
  v6 = a1[4];
  v23 = *a1;

  v7 = a2[2];
  v22[0] = a2[1];
  v22[1] = v7;
  v22[2] = a2[3];
  _s4NodeOMa(255, v22);
  sub_22AE76BB4();
  swift_getWitnessTable();
  sub_22AE76B84();
  v8 = v2[1];
  v9 = v2[2];
  v10 = v9;
  v11 = v8;
  v12 = v8;
  v13 = v9;
  if (!v8)
  {
    sub_22ADF69C0(v4, v5);
    v11 = v2[1];
    v10 = v2[2];
    v12 = v4;
    v13 = v5;
  }

  sub_22ADF69C0(v8, v9);
  sub_22ADF73A0(v11, v10);
  v2[1] = v12;
  v2[2] = v13;
  v14 = v2[3];
  v15 = v2[4];
  v16 = v15;
  v17 = v14;
  v18 = v14;
  v19 = v15;
  if (!v14)
  {
    v18 = v21;
    sub_22ADF69C0(v21, v6);
    v17 = v2[3];
    v16 = v2[4];
    v19 = v6;
  }

  sub_22ADF69C0(v14, v15);
  result = sub_22ADF73A0(v17, v16);
  v2[3] = v18;
  v2[4] = v19;
  return result;
}

uint64_t static HierarchicalStateMachine.RootState.CompositeStateBuilder.buildBlock(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  _s4NodeOMa(0, &v14);
  sub_22AE76A04();
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  type metadata accessor for HierarchicalStateMachine.RootState.CompositeStateBuilder.Components(255, &v14);
  sub_22AE76BB4();
  swift_getWitnessTable();
  return sub_22AE76B04();
}

uint64_t sub_22AE149F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v12[5] = a8;
  v13 = v8;
  v9 = *(a2 + 24);
  v14 = *(a2 + 8);
  v15 = v9;
  v12[0] = a3;
  v12[1] = a4;
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = a7;
  v10 = type metadata accessor for HierarchicalStateMachine.RootState.CompositeStateBuilder.Components(0, v12);
  return sub_22AE1478C(&v13, v10);
}

double static HierarchicalStateMachine.RootState.CompositeStateBuilder.buildExpression(_:)@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t x8_0@<X8>)
{
  return sub_22AE14AF0(a2, a3, a4, a5, a6, a7, type metadata accessor for HierarchicalStateMachine.RootState.BuilderTypes.State, x8_0, sub_22AE13FC0);
}

{
  return sub_22AE14AF0(a2, a3, a4, a5, a6, a7, type metadata accessor for HierarchicalStateMachine.RootState.BuilderTypes.CompositeState, x8_0, sub_22AE142A8);
}

double sub_22AE14AF0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t (*a7)(void, uint64_t *)@<X7>, uint64_t a8@<X8>, void (*a9)(uint64_t))
{
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  _s4NodeOMa(255, &v20);
  sub_22AE76EF4();
  swift_allocObject();
  v16 = sub_22AE76B34();
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v17 = a7(0, &v20);
  a9(v17);
  sub_22AE76BB4();
  *a8 = v16;
  result = 0.0;
  *(a8 + 8) = 0u;
  *(a8 + 24) = 0u;
  return result;
}

uint64_t static HierarchicalStateMachine.RootState.CompositeStateBuilder.buildExpression(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v16 = *a1;
  v15 = a1[1];

  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  _s4NodeOMa(0, v18);
  result = sub_22AE76A04();
  *a8 = result;
  a8[1] = v16;
  a8[3] = 0;
  a8[4] = 0;
  a8[2] = v15;
  return result;
}

{
  v16 = *a1;
  v15 = a1[1];

  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  _s4NodeOMa(0, v18);
  result = sub_22AE76A04();
  *a8 = result;
  a8[1] = 0;
  a8[2] = 0;
  a8[3] = v16;
  a8[4] = v15;
  return result;
}

uint64_t sub_22AE14D64(uint64_t *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *v1;
  v5 = v1[1];
  v6 = v5;
  v7 = *v1;
  v8 = *v1;
  v9 = v5;
  if (!*v1)
  {
    v8 = *a1;
    v9 = a1[1];
    sub_22ADF69C0(*a1, v9);
    v7 = *v1;
    v6 = v1[1];
  }

  sub_22ADF69C0(v4, v5);
  sub_22ADF73A0(v7, v6);
  *v1 = v8;
  v1[1] = v9;
  v10 = v1[2];
  v11 = v1[3];
  v12 = v11;
  v13 = v10;
  v14 = v10;
  v15 = v11;
  if (!v10)
  {
    sub_22ADF69C0(v2, v3);
    v13 = v1[2];
    v12 = v1[3];
    v14 = v2;
    v15 = v3;
  }

  sub_22ADF69C0(v10, v11);
  result = sub_22ADF73A0(v13, v12);
  v1[2] = v14;
  v1[3] = v15;
  return result;
}

uint64_t static HierarchicalStateMachine.RootState.StateBuilder.buildBlock(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a1;
  v9 = 0u;
  v10 = 0u;
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = a7;
  type metadata accessor for HierarchicalStateMachine.RootState.StateBuilder.Components(255, v8);
  sub_22AE76BB4();
  swift_getWitnessTable();
  return sub_22AE76B04();
}

uint64_t sub_22AE14F00(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2[1];
  v11[0] = *a2;
  v11[1] = v8;
  v10[0] = a3;
  v10[1] = a4;
  v10[2] = a5;
  v10[3] = a6;
  v10[4] = a7;
  v10[5] = a8;
  type metadata accessor for HierarchicalStateMachine.RootState.StateBuilder.Components(0, v10);
  return sub_22AE14D64(v11);
}

uint64_t static HierarchicalStateMachine.RootState.StateBuilder.buildExpression(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
  a2[2] = 0;
  a2[3] = 0;
}

{
  v2 = *a1;
  v3 = a1[1];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = v2;
  a2[3] = v3;
}

uint64_t HierarchicalStateMachine.RootState.BuilderTypes.State.init(_:eventHandler:stateTransitionHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a9, a1, AssociatedTypeWitness);
  v25[0] = a6;
  v25[1] = a7;
  v25[2] = a8;
  v25[3] = a10;
  v25[4] = a11;
  v25[5] = a12;
  result = type metadata accessor for HierarchicalStateMachine.RootState.BuilderTypes.State(0, v25);
  v21 = (a9 + *(result + 68));
  *v21 = a2;
  v21[1] = a3;
  v22 = (a9 + *(result + 72));
  *v22 = a4;
  v22[1] = a5;
  return result;
}

void *HierarchicalStateMachine.RootState.BuilderTypes.State.init(_:builder:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  a2(&v37);
  v17 = v37;
  v16 = v38;
  v34 = v39;
  v35 = v40;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = a8;
  (*(*(AssociatedTypeWitness - 8) + 32))(a8, a1, AssociatedTypeWitness);
  if (v17)
  {
    v19 = a5;
    v20 = v17;
    v21 = v16;
    v22 = a9;
  }

  else
  {
    v21 = swift_allocObject();
    v21[2] = a3;
    v21[3] = a4;
    v21[4] = a5;
    v21[5] = a6;
    v22 = a9;
    v21[6] = a7;
    v21[7] = a9;
    v19 = a5;
    v20 = &unk_22AE809E0;
  }

  v32 = a6;
  v37 = a3;
  v38 = a4;
  v39 = v19;
  v40 = a6;
  v41 = a7;
  v42 = v22;
  v23 = a4;
  v24 = a3;
  v25 = v22;
  v33 = type metadata accessor for HierarchicalStateMachine.RootState.BuilderTypes.State(0, &v37);
  v26 = (v36 + *(v33 + 68));
  *v26 = v20;
  v26[1] = v21;
  sub_22ADF69C0(v17, v16);
  if (v34)
  {
    sub_22ADF69C0(v34, v35);
    sub_22ADF73A0(v17, v16);
    sub_22ADF73A0(v34, v35);
    v27 = swift_allocObject();
    v27[2] = a3;
    v27[3] = v23;
    v27[4] = v19;
    v27[5] = v32;
    v27[6] = a7;
    v27[7] = v25;
    v27[8] = v34;
    v27[9] = v35;
    v28 = &unk_22AE80A10;
    v29 = v32;
  }

  else
  {
    sub_22ADF73A0(v17, v16);
    sub_22ADF73A0(0, v35);
    v27 = swift_allocObject();
    v27[2] = a3;
    v27[3] = v23;
    v29 = v32;
    v27[4] = v19;
    v27[5] = v32;
    v27[6] = a7;
    v27[7] = v25;
    v28 = &unk_22AE809F0;
  }

  result = swift_allocObject();
  result[2] = v24;
  result[3] = v23;
  result[4] = v19;
  result[5] = v29;
  result[6] = a7;
  result[7] = v25;
  result[8] = v28;
  result[9] = v27;
  v31 = (v36 + *(v33 + 72));
  *v31 = &unk_22AE80A00;
  v31[1] = result;
  return result;
}

uint64_t sub_22AE15308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22AE18584, 0, 0);
}

uint64_t sub_22AE1532C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_22ADEE1DC;

  return v9(a2, a3);
}

uint64_t sub_22AE15430(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_22ADEE1DC;

  return v6();
}

void *HierarchicalStateMachine.RootState.BuilderTypes.CompositeState.init(_:eventHandler:stateTransitionHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  (*(v18 + 16))(a9, a1, AssociatedTypeWitness);
  v31 = a6;
  v32 = a7;
  v33 = a8;
  v34 = a10;
  v19 = a8;
  v35 = a11;
  v36 = a12;
  _s4NodeOMa(0, &v31);
  v20 = sub_22AE76B64();
  (*(v18 + 8))(a1, AssociatedTypeWitness);
  v31 = a6;
  v32 = a7;
  v33 = v19;
  v34 = a10;
  v35 = a11;
  v36 = a12;
  v21 = type metadata accessor for HierarchicalStateMachine.RootState.BuilderTypes.CompositeState(0, &v31);
  *(a9 + v21[17]) = v20;
  v22 = swift_allocObject();
  v22[2] = a6;
  v22[3] = a7;
  v22[4] = v19;
  v22[5] = a10;
  v22[6] = a11;
  v22[7] = a12;
  v22[8] = a2;
  v22[9] = a3;
  v23 = (a9 + v21[18]);
  *v23 = &unk_22AE80A20;
  v23[1] = v22;
  result = swift_allocObject();
  result[2] = a6;
  result[3] = a7;
  result[4] = v19;
  result[5] = a10;
  result[6] = a11;
  result[7] = a12;
  result[8] = a4;
  result[9] = a5;
  v25 = (a9 + v21[19]);
  *v25 = &unk_22AE80A30;
  v25[1] = result;
  return result;
}

uint64_t sub_22AE15704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v10 = (a5 + *a5);
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_22ADEE1DC;

  return v10(a1, a2);
}

uint64_t sub_22AE1580C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_22ADEE1DC;

  return v7(a1);
}

void *HierarchicalStateMachine.RootState.BuilderTypes.CompositeState.init(_:builder:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  a2(&v39);
  v16 = v39;
  v17 = v40;
  v34 = v41;
  v35 = v42;
  v36 = v43;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = a1;
  v20 = a4;
  v21 = a8;
  (*(*(AssociatedTypeWitness - 8) + 32))(a8, v19, AssociatedTypeWitness);
  v39 = a3;
  v40 = v20;
  v41 = a5;
  v42 = a6;
  v43 = a7;
  v44 = a9;
  v22 = type metadata accessor for HierarchicalStateMachine.RootState.BuilderTypes.CompositeState(0, &v39);
  v37 = a3;
  v38 = v21;
  *(v21 + v22[17]) = v16;
  if (v17)
  {
    v23 = v17;
    v24 = v34;
    v25 = v34;
  }

  else
  {
    v25 = swift_allocObject();
    v25[2] = a3;
    v25[3] = v20;
    v25[4] = a5;
    v25[5] = a6;
    v25[6] = a7;
    v25[7] = a9;
    v23 = &unk_22AE80A40;
    v24 = v34;
  }

  v26 = (v21 + v22[18]);
  *v26 = v23;
  v26[1] = v25;

  sub_22ADF69C0(v17, v24);
  if (v35)
  {
    sub_22ADF69C0(v35, v36);

    sub_22ADF73A0(v17, v24);
    sub_22ADF73A0(v35, v36);
    v27 = swift_allocObject();
    v28 = a9;
    v29 = v37;
    v27[2] = v37;
    v27[3] = v20;
    v27[4] = a5;
    v27[5] = a6;
    v27[6] = a7;
    v27[7] = a9;
    v27[8] = v35;
    v27[9] = v36;
    v30 = &unk_22AE80A60;
  }

  else
  {

    sub_22ADF73A0(v17, v24);
    sub_22ADF73A0(0, v36);
    v27 = swift_allocObject();
    v28 = a9;
    v29 = v37;
    v27[2] = v37;
    v27[3] = v20;
    v27[4] = a5;
    v27[5] = a6;
    v27[6] = a7;
    v27[7] = a9;
    v30 = &unk_22AE80A50;
  }

  v31 = v30;
  result = swift_allocObject();
  result[2] = v29;
  result[3] = v20;
  result[4] = a5;
  result[5] = a6;
  result[6] = a7;
  result[7] = v28;
  result[8] = v31;
  result[9] = v27;
  v33 = (v38 + v22[19]);
  *v33 = &unk_22AE80A58;
  v33[1] = result;
  return result;
}

uint64_t HierarchicalStateMachine.RootState.BuilderTypes.OnStateTransition.stateTransitionHandler.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HierarchicalStateMachine.RootState.BuilderTypes.OnStateTransition.stateTransitionHandler.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *sub_22AE15CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  result = swift_allocObject();
  result[2] = a3;
  result[3] = a4;
  result[4] = a5;
  result[5] = a6;
  result[6] = a7;
  result[7] = a8;
  result[8] = a1;
  result[9] = a2;
  *a9 = a11;
  a9[1] = result;
  return result;
}

uint64_t sub_22AE15D54(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_22ADEE1E0;

  return v7(a1);
}

uint64_t HierarchicalStateMachine.RootState.BuilderTypes.OnStateTransition.init(stateTransitionHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_22AE15E54(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_22ADEE1DC;

  return v7(a2);
}

uint64_t sub_22AE15F4C(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_22ADEE1DC;

  return v5();
}

uint64_t sub_22AE16064@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v8 = a2 + a3;
  v10 = *a1;
  v9 = a1[1];
  v11 = swift_allocObject();
  v12 = *(v8 - 32);
  *(v11 + 16) = *(v8 - 48);
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v8 - 16);
  *(v11 + 64) = v10;
  *(v11 + 72) = v9;
  *a6 = a5;
  a6[1] = v11;
}

uint64_t sub_22AE160DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v11 = (a5 + *a5);
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_22ADEE1DC;

  return v11(a2, a3, a4);
}

uint64_t sub_22AE161EC(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a3 + a4;
  v10 = *a1;
  v9 = a1[1];
  v11 = swift_allocObject();
  v12 = *(v8 - 32);
  *(v11 + 16) = *(v8 - 48);
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v8 - 16);
  *(v11 + 64) = v10;
  *(v11 + 72) = v9;

  *a2 = a6;
  a2[1] = v11;
  return result;
}

uint64_t sub_22AE16268(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_22ADEE1DC;

  return v7();
}

uint64_t sub_22AE16398(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_22ADEE1DC;

  return v4();
}

uint64_t sub_22AE164A0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;

  *a2 = a6;
  a2[1] = v10;
  return result;
}

uint64_t sub_22AE165D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_22ADEE1DC;

  return sub_22AE15308(a1, a2, a3, a4, v9);
}

uint64_t sub_22AE166C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22ADEE1DC;

  return sub_22ADF6E7C();
}

void sub_22AE167B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22ADEE1DC;

  JUMPOUT(0x22AE15430);
}

void sub_22AE168A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22ADEE1DC;

  JUMPOUT(0x22AE1532CLL);
}

uint64_t sub_22AE169B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 64);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_22ADEE1DC;

  return sub_22AE15704(a1, a2, a3, a4, v9);
}

uint64_t sub_22AE16ABC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22ADEE1DC;

  return sub_22AE1580C(a1, a2, v5);
}

uint64_t sub_22AE16BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_22ADEE1DC;

  return sub_22AE0CF74(a1, a2, a3, a4, v9);
}

uint64_t sub_22AE16C9C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22ADEE1DC;

  return sub_22ADF6E7C();
}

uint64_t sub_22AE16D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 64);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_22ADEE1DC;

  return sub_22AE15704(a1, a2, a3, a4, v9);
}

uint64_t sub_22AE16E90(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22ADEE1DC;

  return sub_22AE15D54(a1, a2, v5);
}

uint64_t keypath_get_61Tm@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  *a4 = a3;
  a4[1] = v8;
}

uint64_t sub_22AE17028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_22AE17088(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_22AE170D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22AE17150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_22AE171A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_22AE171E8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_22AE17260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22AE1729C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_22AE172F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_22AE1734C(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = sub_22AE1777C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22AE173E8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
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

  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (v7 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
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

void sub_22AE17584(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
      if (v8 < 0x7FFFFFFF)
      {
        v19 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = (a2 - 1);
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

  if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
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

unint64_t sub_22AE1777C()
{
  result = qword_27D8B1788[0];
  if (!qword_27D8B1788[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_27D8B1788);
  }

  return result;
}

unint64_t sub_22AE177CC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 16);
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    v12 = 0;
    v15 = result;
    v8 = v3;
    v9 = *(a1 + 24);
    v10 = v2;
    v11 = *(a1 + 48);
    _s4NodeOMa(255, &v8);
    result = sub_22AE76BB4();
    if (v6 <= 0x3F)
    {
      v13 = 0;
      v16 = result;
      result = sub_22AE1777C();
      if (v7 <= 0x3F)
      {
        v14 = 0;
        v17 = result;
        v18 = result;
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22AE178B8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
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

  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (v7 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
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

void sub_22AE17A5C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
      if (v8 < 0x7FFFFFFF)
      {
        v19 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = (a2 - 1);
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v7 + 56);

        v18(a1, a2);
      }

      return;
    }
  }

  if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
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

uint64_t sub_22AE17C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22AE17CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22AE17D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22AE17D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22AE17DD8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22ADEE1DC;

  return sub_22AE16398(v2);
}

uint64_t sub_22AE17E84(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22ADEE1DC;

  return sub_22AE136C0(a1, v4);
}

void sub_22AE17F3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22ADEE1DC;

  JUMPOUT(0x22AE16268);
}

void sub_22AE18048()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22ADEE1DC;

  JUMPOUT(0x22AE160DCLL);
}

void sub_22AE18150()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22ADEE1DC;

  JUMPOUT(0x22AE15F4CLL);
}

void sub_22AE18248()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22ADEE1DC;

  JUMPOUT(0x22AE15E54);
}

uint64_t sub_22AE18340()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22ADEE1DC;

  return sub_22AE04D2C();
}

uint64_t sub_22AE18418(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v13 = v2[2];
  v7 = v2[8];
  v8 = v2[9];
  v10 = v2[10];
  v9 = v2[11];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_22ADEE1E0;

  return sub_22AE137A8(a1, a2, v7, v8, v10, v9, v13, v6);
}

unint64_t StateMachineError.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22AE76DD4();

  MEMORY[0x231886110](v1, v2);
  MEMORY[0x231886110](41, 0xE100000000000000);
  return 0xD000000000000013;
}

unint64_t sub_22AE1862C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22AE76DD4();

  MEMORY[0x231886110](v1, v2);
  MEMORY[0x231886110](41, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t sub_22AE186B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22AE18700(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22AE18830(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22AE188A0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_22AE189E0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_22AE18C48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B1B20, &qword_22AE81248);
  swift_allocObject();
  result = sub_22AE76FF4();
  qword_27D8B0BC8 = result;
  return result;
}

uint64_t static Flow.flow.getter()
{
  if (qword_27D8B0BD0 != -1)
  {
    swift_once();
  }

  sub_22AE77004();
  return v1;
}

uint64_t sub_22AE18D30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B1B18, &qword_22AE81240);
  swift_allocObject();
  result = sub_22AE76FF4();
  qword_27D8B0BA8 = result;
  return result;
}

uint64_t sub_22AE18DE8()
{
  sub_22AE76A64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B1B18, &qword_22AE81240);
  swift_allocObject();
  result = sub_22AE76FF4();
  qword_27D8B0BD8 = result;
  return result;
}

uint64_t sub_22AE18E9C(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_22AE77004();
  return v4;
}

uint64_t sub_22AE18EF0()
{
  v0 = sub_22AE768B4();
  MEMORY[0x28223BE20](v0 - 8, v1);
  if (qword_27D8B0BE0 != -1)
  {
    swift_once();
  }

  sub_22AE77004();
  if (qword_27D8B0BB0 != -1)
  {
    swift_once();
  }

  sub_22AE77004();
  sub_22AE76894();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B1B10, &qword_22AE81238);
  swift_allocObject();
  result = sub_22AE76FF4();
  qword_27D8B0BB8 = result;
  return result;
}

uint64_t sub_22AE19050(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

void *static Flow.logger.getter()
{
  if (qword_27D8B0BC0 != -1)
  {
    swift_once();
  }

  return sub_22AE77004();
}

uint64_t static Flow.withNewFlow<A>(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = _s12HMFoundation4FlowO03newB0ySo7HMFFlowCSS_SStFZ_0(a1, a2, a3, a4);
  v16[2] = a7;
  v16[3] = a5;
  v16[4] = a6;
  v11 = sub_22AE76A64();
  v13 = v12;
  v14 = v10;
  static Flow.with<A>(_:subsystem:category:_:)(v10, v11, v13, 0x746C7561666544, 0xE700000000000000, sub_22AE1C348, v16, a7);
}

uint64_t static Flow.with<A>(_:subsystem:category:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_27D8B0BD0 != -1)
  {
    v10 = a1;
    v9 = a2;
    swift_once();
    a1 = v10;
    a2 = v9;
  }

  MEMORY[0x28223BE20](a1, a2);
  return sub_22AE77024();
}

{
  v8[10] = a8;
  v8[11] = v10;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v8[4] = a2;
  v8[5] = a3;
  v8[3] = a1;
  return MEMORY[0x2822009F8](sub_22AE19738, 0, 0);
}

uint64_t static Flow.withNewFlow<A>(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_22AE193B0, 0, 0);
}

uint64_t sub_22AE193B0()
{
  v1 = *(v0 + 72);
  v11 = *(v0 + 56);
  v2 = _s12HMFoundation4FlowO03newB0ySo7HMFFlowCSS_SStFZ_0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  *(v0 + 80) = v2;
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v11;
  v4 = sub_22AE76A64();
  v6 = v5;
  *(v0 + 96) = v5;
  v7 = v2;
  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *v8 = v0;
  v8[1] = sub_22AE194F8;
  v9 = *(v0 + 16);

  return static Flow.with<A>(_:subsystem:category:_:)(v9, v2, v4, v6, 0x746C7561666544, 0xE700000000000000, &unk_22AE811C0, v3);
}

uint64_t sub_22AE194F8()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_22AE19688;
  }

  else
  {
    v4 = *(v2 + 80);

    v3 = sub_22AE19624;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22AE19624()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22AE19688()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22AE19738()
{
  if (qword_27D8B0BD0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  *(v0 + 16) = *(v0 + 32);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  v7 = *(v0 + 72);
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;
  *(v6 + 32) = v2;
  *(v6 + 40) = v5;
  *(v6 + 48) = v4;
  *(v6 + 56) = v7;
  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *v8 = v0;
  v8[1] = sub_22AE198A8;
  v9 = *(v0 + 24);

  return MEMORY[0x282200908](v9, v0 + 16, &unk_22AE811D8, v6, 0, 0, 0xD000000000000017, 0x800000022AE82D10);
}

uint64_t sub_22AE198A8()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22AE199F8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t static Flow.withChildFlow<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v48 = a6;
  v49 = a5;
  v46 = a3;
  v47 = a4;
  v41 = a1;
  v42 = a2;
  v6 = sub_22AE768B4();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22AE76854();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D8B0BD0 != -1)
  {
    swift_once();
  }

  sub_22AE77004();
  v15 = v50[0];
  v43 = v9;
  if (!v50[0])
  {
    v15 = [objc_opt_self() untrackedPlaceholderFlow];
  }

  v16 = [objc_opt_self() internalOnlyInitializer];
  v50[0] = 0;
  v50[1] = 0xE000000000000000;
  sub_22AE76DD4();

  strcpy(v50, "[ChildFlow: ");
  BYTE5(v50[1]) = 0;
  HIWORD(v50[1]) = -5120;
  v17 = [v16 UUID];
  sub_22AE76824();

  sub_22AE1C52C();
  v18 = sub_22AE76EE4();
  MEMORY[0x231886110](v18);

  v19 = *(v11 + 8);
  v19(v14, v10);
  MEMORY[0x231886110](0x3A746E6572615020, 0xE900000000000020);
  v20 = [v15 UUID];
  sub_22AE76824();

  v21 = sub_22AE76EE4();
  MEMORY[0x231886110](v21);

  v19(v14, v10);
  MEMORY[0x231886110](8285, 0xE200000000000000);
  MEMORY[0x231886110](v41, v42);
  v23 = v50[0];
  v22 = v50[1];
  if (qword_27D8B0BC0 != -1)
  {
    swift_once();
  }

  v24 = v43;
  sub_22AE77004();

  v25 = sub_22AE76884();
  v26 = sub_22AE76D54();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v50[0] = v28;
    *v27 = 136315138;
    v29 = sub_22AE1B678(v23, v22, v50);

    *(v27 + 4) = v29;
    _os_log_impl(&dword_22ADEC000, v25, v26, "%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x231887EA0](v28, -1, -1);
    MEMORY[0x231887EA0](v27, -1, -1);
  }

  else
  {
  }

  v30 = (*(v44 + 8))(v24, v45);
  MEMORY[0x28223BE20](v30, v31);
  v32 = v49;
  v34 = v46;
  v33 = v47;
  *(&v40 - 4) = v49;
  *(&v40 - 3) = v34;
  *(&v40 - 2) = v33;
  v35 = sub_22AE76A64();
  v37 = v36;
  v38 = v16;
  static Flow.with<A>(_:subsystem:category:_:)(v16, v35, v37, 0x746C7561666544, 0xE700000000000000, sub_22AE1C980, (&v40 - 6), v32);
}

id static Flow.flowOrUntracked.getter()
{
  if (qword_27D8B0BD0 != -1)
  {
    swift_once();
  }

  sub_22AE77004();
  result = v2;
  if (!v2)
  {
    v1 = [objc_opt_self() untrackedPlaceholderFlow];

    return v1;
  }

  return result;
}

uint64_t static Flow.withChildFlow<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = sub_22AE768B4();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v8 = sub_22AE76854();
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22AE1A0E0, 0, 0);
}

uint64_t sub_22AE1A0E0()
{
  v36 = v0;
  if (qword_27D8B0BD0 != -1)
  {
    swift_once();
  }

  sub_22AE77004();
  v1 = *(v0 + 16);
  if (!v1)
  {
    v1 = [objc_opt_self() untrackedPlaceholderFlow];
  }

  *(v0 + 120) = v1;
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = *(v0 + 32);
  v34 = *(v0 + 40);
  v6 = [objc_opt_self() internalOnlyInitializer];
  *(v0 + 128) = v6;
  sub_22AE76DD4();

  strcpy(v35, "[ChildFlow: ");
  BYTE5(v35[1]) = 0;
  HIWORD(v35[1]) = -5120;
  v39 = v6;
  v7 = [v6 UUID];
  sub_22AE76824();

  sub_22AE1C52C();
  v8 = sub_22AE76EE4();
  MEMORY[0x231886110](v8);

  v9 = *(v2 + 8);
  v9(v3, v4);
  MEMORY[0x231886110](0x3A746E6572615020, 0xE900000000000020);
  v10 = [v1 UUID];
  sub_22AE76824();

  v11 = sub_22AE76EE4();
  MEMORY[0x231886110](v11);

  v9(v3, v4);
  MEMORY[0x231886110](8285, 0xE200000000000000);
  MEMORY[0x231886110](v5, v34);
  v13 = v35[0];
  v12 = v35[1];
  if (qword_27D8B0BC0 != -1)
  {
    swift_once();
  }

  sub_22AE77004();

  v14 = sub_22AE76884();
  v15 = sub_22AE76D54();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 80);
  v18 = *(v0 + 88);
  v19 = *(v0 + 72);
  if (v16)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v35[0] = v21;
    *v20 = 136315138;
    v22 = sub_22AE1B678(v13, v12, v35);

    *(v20 + 4) = v22;
    _os_log_impl(&dword_22ADEC000, v14, v15, "%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x231887EA0](v21, -1, -1);
    MEMORY[0x231887EA0](v20, -1, -1);
  }

  else
  {
  }

  (*(v17 + 8))(v18, v19);
  v23 = *(v0 + 64);
  v24 = swift_task_alloc();
  *(v0 + 136) = v24;
  v25 = *(v0 + 48);
  *(v24 + 16) = v23;
  *(v24 + 24) = v25;
  v26 = sub_22AE76A64();
  v28 = v27;
  *(v0 + 144) = v27;
  v29 = v39;
  v30 = v39;
  v31 = swift_task_alloc();
  *(v0 + 152) = v31;
  *v31 = v0;
  v31[1] = sub_22AE1A554;
  v32 = *(v0 + 24);
  v38 = *(v0 + 64);

  return static Flow.with<A>(_:subsystem:category:_:)(v32, v29, v26, v28, 0x746C7561666544, 0xE700000000000000, &unk_22AE811F0, v24);
}

uint64_t sub_22AE1A554()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_22AE1A708;
  }

  else
  {
    v4 = *(v2 + 128);

    v3 = sub_22AE1A680;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22AE1A680()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22AE1A708()
{
  v2 = v0[15];
  v1 = v0[16];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22AE1A7AC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22ADEE1DC;

  return v6(a1);
}

uint64_t sub_22AE1A8A4(uint64_t a1, uint64_t a2)
{
  if (qword_27D8B0BB0 != -1)
  {
    v3 = a1;
    v4 = a2;
    swift_once();
    a1 = v3;
    a2 = v4;
  }

  MEMORY[0x28223BE20](a1, a2);
  return sub_22AE77024();
}

uint64_t sub_22AE1A9E4(uint64_t a1, uint64_t a2)
{
  if (qword_27D8B0BE0[0] != -1)
  {
    v3 = a1;
    v4 = a2;
    swift_once();
    a1 = v3;
    a2 = v4;
  }

  MEMORY[0x28223BE20](a1, a2);
  return sub_22AE77024();
}

uint64_t sub_22AE1AB20@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v16[0] = a4;
  v16[1] = a6;
  v8 = sub_22AE768B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D8B0BC0 != -1)
  {
    swift_once();
  }

  if (qword_27D8B0BE0[0] != -1)
  {
    swift_once();
  }

  sub_22AE77004();

  v13 = sub_22AE76894();
  MEMORY[0x28223BE20](v13, v14);
  v16[-4] = a5;
  v16[-3] = a3;
  v16[-2] = v16[0];
  sub_22AE77024();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_22AE1AD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  return MEMORY[0x2822009F8](sub_22AE1AD58, 0, 0);
}

uint64_t sub_22AE1AD58()
{
  if (qword_27D8B0BB0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  v7 = *(v0 + 72);
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;
  *(v6 + 32) = v2;
  *(v6 + 40) = v5;
  *(v6 + 48) = v4;
  *(v6 + 56) = v7;
  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *v8 = v0;
  v8[1] = sub_22AE198A8;
  v9 = *(v0 + 32);

  return MEMORY[0x282200908](v9, v0 + 16, &unk_22AE81210, v6, 0, 0, 0xD000000000000017, 0x800000022AE82D10);
}

uint64_t sub_22AE1AEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  return MEMORY[0x2822009F8](sub_22AE1AEF4, 0, 0);
}

uint64_t sub_22AE1AEF4()
{
  if (qword_27D8B0BE0[0] != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  *(v0 + 16) = *(v0 + 40);
  *(v0 + 24) = v3;
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  v6 = *(v0 + 64);
  *(v5 + 16) = v1;
  *(v5 + 24) = v4;
  *(v5 + 32) = v6;
  *(v5 + 48) = v2;
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_22AE1B058;
  v8 = *(v0 + 32);

  return MEMORY[0x282200908](v8, v0 + 16, &unk_22AE81220, v5, 0, 0, 0xD000000000000017, 0x800000022AE82D10);
}

uint64_t sub_22AE1B058()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22AE1C998, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22AE1B1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = sub_22AE768B4();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22AE1B270, 0, 0);
}

uint64_t sub_22AE1B270()
{
  if (qword_27D8B0BC0 != -1)
  {
    swift_once();
  }

  if (qword_27D8B0BE0[0] != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v7 = *(v0 + 56);
  sub_22AE77004();

  sub_22AE76894();
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v7;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_22AE1B43C;
  v4 = *(v0 + 96);
  v5 = *(v0 + 32);

  return MEMORY[0x282200908](v5, v4, &unk_22AE81230, v2, 0, 0, 0xD000000000000017, 0x800000022AE82D10);
}

uint64_t sub_22AE1B43C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22AE1B614, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_22AE1B614()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_22AE1B678(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22AE1B744(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_22AE1C920(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_22AE1B744(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_22AE1B850(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_22AE76DF4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_22AE1B850(uint64_t a1, unint64_t a2)
{
  v3 = sub_22AE1B89C(a1, a2);
  sub_22AE1B9CC(&unk_283EBB298);
  return v3;
}

void *sub_22AE1B89C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_22AE1BAB8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_22AE76DF4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_22AE76AB4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22AE1BAB8(v10, 0);
        result = sub_22AE76DC4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_22AE1B9CC(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_22AE1BB2C(result, v11, 1, v3);
  v3 = result;
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_22AE1BAB8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D48, &qword_22AE804A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_22AE1BB2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D48, &qword_22AE804A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_22AE1BC38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v28 = a3;
  v29 = sub_22AE768B4();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22AE76854();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0x203A776F6C465BLL;
  v32 = 0xE700000000000000;
  if (qword_27D8B0BD0 != -1)
  {
    swift_once();
  }

  sub_22AE77004();
  v14 = v30;
  if (v30)
  {
    v15 = [v30 UUID];

    sub_22AE76824();
    v16 = sub_22AE76804();
    v18 = v17;
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    v16 = 0;
    v18 = 0xE000000000000000;
  }

  MEMORY[0x231886110](v16, v18);

  MEMORY[0x231886110](8285, 0xE200000000000000);
  MEMORY[0x231886110](a1, a2);
  v20 = v31;
  v19 = v32;
  if (qword_27D8B0BC0 != -1)
  {
    swift_once();
  }

  sub_22AE77004();

  v21 = sub_22AE76884();
  v22 = v28();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v31 = v24;
    *v23 = 136315138;
    v25 = sub_22AE1B678(v20, v19, &v31);

    *(v23 + 4) = v25;
    _os_log_impl(&dword_22ADEC000, v21, v22, "%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x231887EA0](v24, -1, -1);
    MEMORY[0x231887EA0](v23, -1, -1);
  }

  else
  {
  }

  return (*(v5 + 8))(v8, v29);
}

id _s12HMFoundation4FlowO03newB0ySo7HMFFlowCSS_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v31 = sub_22AE768B4();
  v6 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22AE76854();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() internalOnlyInitializer];
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_22AE76DD4();

  v32 = 0x776F6C4677654E5BLL;
  v33 = 0xEA0000000000203ALL;
  v30 = v15;
  v16 = [v15 UUID];
  sub_22AE76824();

  v17 = sub_22AE76804();
  v19 = v18;
  (*(v11 + 8))(v14, v10);
  MEMORY[0x231886110](v17, v19);

  MEMORY[0x231886110](0x7574616546227B20, 0xED0000223A226572);
  MEMORY[0x231886110](a1, a2);
  MEMORY[0x231886110](542997794, 0xE400000000000000);
  MEMORY[0x231886110](v28, v29);
  v21 = v32;
  v20 = v33;
  if (qword_27D8B0BC0 != -1)
  {
    swift_once();
  }

  sub_22AE77004();

  v22 = sub_22AE76884();
  v23 = sub_22AE76D54();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v32 = v25;
    *v24 = 136315138;
    v26 = sub_22AE1B678(v21, v20, &v32);

    *(v24 + 4) = v26;
    _os_log_impl(&dword_22ADEC000, v22, v23, "%s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x231887EA0](v25, -1, -1);
    MEMORY[0x231887EA0](v24, -1, -1);
  }

  else
  {
  }

  (*(v6 + 8))(v9, v31);
  return v30;
}

uint64_t sub_22AE1C39C(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22ADEE1E0;

  return sub_22AE0B3D8(a1, v4);
}

uint64_t sub_22AE1C450(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22ADEE1DC;

  return sub_22AE1AD2C(a1, v5, v6, v7, v8, v9, v10, v4);
}

unint64_t sub_22AE1C52C()
{
  result = qword_27D8B0D00;
  if (!qword_27D8B0D00)
  {
    sub_22AE76854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B0D00);
  }

  return result;
}

uint64_t sub_22AE1C584(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22ADEE1DC;

  return sub_22AE1A7AC(a1, v4);
}

uint64_t sub_22AE1C648(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22ADEE1DC;

  return sub_22AE1AEC8(a1, v5, v6, v7, v8, v9, v10, v4);
}

uint64_t sub_22AE1C724(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22ADEE1DC;

  return sub_22AE1B1A8(a1, v5, v6, v7, v8, v4);
}

uint64_t sub_22AE1C7EC(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22ADEE1DC;

  return sub_22AE1A7AC(a1, v4);
}

uint64_t sub_22AE1C920(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id static HMFLogging.logHandle.getter()
{
  swift_getMetatypeMetadata();
  v0 = sub_22AE76F14();
  v2 = HMFGetOSLogHandle(v0, v1);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t static HMFLogging.logger.getter()
{
  v0 = static HMFLogging.logHandle.getter();

  return MEMORY[0x282200E08](v0);
}

uint64_t HMFLogging.logger.getter()
{
  v0 = static HMFLogging.logHandle.getter();

  return MEMORY[0x282200E08](v0);
}

uint64_t HMF.NetworkInterfaceType.hashValue.getter()
{
  v1 = *v0;
  sub_22AE76FB4();
  MEMORY[0x231886640](v1);
  return sub_22AE76FD4();
}

uint64_t sub_22AE1CB04()
{
  v1 = *v0;
  sub_22AE76FB4();
  MEMORY[0x231886640](v1);
  return sub_22AE76FD4();
}

uint64_t sub_22AE1CB78(uint64_t a1)
{
  v2 = *v1;
  sub_22AE76FB4();
  MEMORY[0x231886640](v2);
  return sub_22AE76FD4();
}

uint64_t HMF.WifiNetworkInfo.init(SSID:BSSID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t HMF.WifiNetworkInfo.SSID.getter()
{
  v1 = *v0;
  sub_22AE1CBFC(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_22AE1CBFC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t HMF.WifiNetworkInfo.BSSID.getter()
{
  v1 = *(v0 + 16);
  sub_22AE1CBFC(v1, *(v0 + 24));
  return v1;
}

__n128 HMF.NetworkInfo.init(name:type:macAddress:ipv4Addresses:ipv6Addresses:wifiInfo:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  result = *a8;
  v10 = *(a8 + 16);
  *(a9 + 56) = *a8;
  v11 = *a3;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v11;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 72) = v10;
  return result;
}

uint64_t HMF.NetworkInfo.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HMF.NetworkInfo.macAddress.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t HMF.NetworkInfo.wifiInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_22AE1CD38(v2, v3, v4, v5);
}

uint64_t sub_22AE1CD38(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_22AE1CBFC(result, a2);

    return sub_22AE1CBFC(a3, a4);
  }

  return result;
}

__n128 HMF.NetworkServiceInfo.init(isPrimary:interfaceName:confirmedInterfaceName:ipv4Addresses:routerIPv4:networkSignatureV4:ipv6Addresses:routerIPv6:networkSignatureV6:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __n128 a12, uint64_t a13)
{
  result = a12;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  return result;
}

uint64_t HMF.NetworkServiceInfo.interfaceName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t HMF.NetworkServiceInfo.confirmedInterfaceName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t HMF.NetworkServiceInfo.routerIPv4.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t HMF.NetworkServiceInfo.networkSignatureV4.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t HMF.NetworkServiceInfo.routerIPv6.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t HMF.NetworkServiceInfo.networkSignatureV6.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

unint64_t sub_22AE1CEF4()
{
  result = qword_27D8B1B28;
  if (!qword_27D8B1B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B1B28);
  }

  return result;
}

uint64_t _s20NetworkInterfaceTypeOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s20NetworkInterfaceTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_22AE1D0D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_22AE1D124(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12HMFoundation3HMFO15WifiNetworkInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
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

uint64_t sub_22AE1D1D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_22AE1D218(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_22AE1D2A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_22AE1D2F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t AsyncSerialQueue.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = *sub_22AE76864();
  *(v0 + 128) = sub_22AE08EA0;
  *(v0 + 136) = 0;

  return v0;
}

uint64_t sub_22AE1D3BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B1B40, &qword_22AE816E8);
  swift_allocObject();
  result = sub_22AE76FF4();
  qword_27D8B0CF0 = result;
  return result;
}

uint64_t AsyncSerialQueue.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = *sub_22AE76864();
  *(v0 + 128) = sub_22AE08EA0;
  *(v0 + 136) = 0;

  return v0;
}

uint64_t sub_22AE1D468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D8B0EE8, &qword_22AE80718);
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22AE1D50C, v4, 0);
}

uint64_t sub_22AE1D50C()
{
  if (qword_27D8B0CF8 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  sub_22AE77004();
  LOBYTE(v1) = sub_22AE1ECA0(v1, v0[6]);

  if (v1)
  {
    (*(v0[11] + 128))(sub_22AE1ED48, 0, "HMFoundation/AsyncSerialQueue.swift", 35, 2, 114);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v2 = v0[12];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_22AE1D6A4;
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[8];

  return sub_22AE1E3B4(v8, v5, v9, v6, v7);
}

uint64_t sub_22AE1D6A4()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[14] = v0;

  sub_22AE02D5C(v2, qword_27D8B0EE8, &qword_22AE80718);
  if (v0)
  {
    v4 = v3[11];

    return MEMORY[0x2822009F8](sub_22AE1D818, v4, 0);
  }

  else
  {

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_22AE1D818()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22AE1D87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_22AE1D8A0, v3, 0);
}

uint64_t sub_22AE1D8A0()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  *(v0 + 16) = 0;
  sub_22AE09960();
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v0 + 16;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_22AE1D9BC;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_22AE1D9BC()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_22AE1DAE8, v1, 0);
}

uint64_t sub_22AE1DAE8()
{
  result = *(v0 + 16);
  if (result)
  {
    return (*(v0 + 8))();
  }

  __break(1u);
  return result;
}

uint64_t sub_22AE1DB0C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a4;
  v30 = a6;
  v31 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D18, &qword_22AE80330);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v28 - v17;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = sub_22AE76C34();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v10 + 16))(v14, a1, v9);
  v20 = sub_22AE09960();
  v21 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v22 = (v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = a3;
  *(v23 + 3) = v20;
  v24 = v30;
  *(v23 + 4) = v30;
  *(v23 + 5) = a3;
  (*(v10 + 32))(&v23[v21], v14, v9);
  v25 = &v23[v22];
  *v25 = v29;
  v25[1] = a5;
  swift_retain_n();

  v26 = sub_22AE1E130(0, 0, v18, &unk_22AE816E0, v23, v24);
  *v31 = v26;
}

uint64_t sub_22AE1DD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D8B0EE8, &qword_22AE80718);
  v8[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22AE1DE2C, a4, 0);
}

uint64_t sub_22AE1DE2C()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610);
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_22AE1DF58;
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[2];

  return sub_22AE1E3B4(v10, v6, v8, v9, v7);
}

uint64_t sub_22AE1DF58()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[10] = v0;

  sub_22AE02D5C(v2, qword_27D8B0EE8, &qword_22AE80718);
  if (v0)
  {
    v4 = v3[3];

    return MEMORY[0x2822009F8](sub_22AE1E0CC, v4, 0);
  }

  else
  {

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_22AE1E0CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22AE1E130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D18, &qword_22AE80330);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v25[-1] - v12;
  v25[5] = a4;
  v25[6] = a5;
  sub_22AE02CF4(a3, &v25[-1] - v12, &qword_27D8B0D18, &qword_22AE80330);
  v14 = sub_22AE76C34();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_22AE02D5C(v13, &qword_27D8B0D18, &qword_22AE80330);
  }

  else
  {
    sub_22AE76C24();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22AE76BC4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22AE76A84();
      sub_22AE1F788(v21 + 32, v25);

      v22 = v25[0];
      sub_22AE02D5C(a3, &qword_27D8B0D18, &qword_22AE80330);

      return v22;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22AE02D5C(a3, &qword_27D8B0D18, &qword_22AE80330);
  if (v20 | v18)
  {
    v25[1] = 0;
    v25[2] = 0;
    v25[3] = v18;
    v25[4] = v20;
  }

  return swift_task_create();
}

uint64_t sub_22AE1E3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D8B0EE8, &qword_22AE80718);
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22AE1E458, v5, 0);
}

uint64_t sub_22AE1E458()
{
  v1 = v0[10];
  swift_beginAccess();
  v2 = *(*(v1 + 120) + 24);
  v3 = v0[10];
  if (v2 || (*(v3 + 112) & 1) != 0)
  {
    v4 = v0[6];
    sub_22AE09960();
    v5 = swift_task_alloc();
    v0[12] = v5;
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = sub_22AE1E6D8;

    return MEMORY[0x2822007B8]();
  }

  else
  {
    v7 = v0[11];
    v8 = v0[6];
    *(v3 + 112) = 1;
    sub_22AE02CF4(v8, v7, qword_27D8B0EE8, &qword_22AE80718);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610);
    v10 = *(v9 - 8);
    v11 = (*(v10 + 48))(v7, 1, v9);
    v12 = v0[11];
    if (v11 == 1)
    {
      sub_22AE02D5C(v0[11], qword_27D8B0EE8, &qword_22AE80718);
    }

    else
    {
      sub_22AE76BD4();
      (*(v10 + 8))(v12, v9);
    }

    v13 = swift_task_alloc();
    v0[14] = v13;
    *v13 = v0;
    v13[1] = sub_22AE1E8A0;
    v14 = v0[9];
    v15 = v0[7];
    v16 = v0[8];
    v17 = v0[5];

    return sub_22AE1ED98(v17, v15, v16, v14);
  }
}

uint64_t sub_22AE1E6D8()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_22AE1E804, v1, 0);
}

uint64_t sub_22AE1E804()
{
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_22AE1E8A0;
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];

  return sub_22AE1ED98(v5, v3, v4, v2);
}

uint64_t sub_22AE1E8A0()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_22AE1EA38;
  }

  else
  {
    v4 = sub_22AE1E9CC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22AE1E9CC()
{
  sub_22AE1F0E4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22AE1EA38()
{
  sub_22AE1F0E4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22AE1EAA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D8B0EE8, &qword_22AE80718);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v17 - v8;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  result = *(a2 + 120);
  v11 = *(result + 24);
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(a2 + 120);
    if (*(v14 + 16) < v12 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22AE1F844(isUniquelyReferenced_nonNull_native, v12, 0);
      v14 = *(a2 + 120);
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610);
    v16 = *(v15 - 8);
    sub_22AE1FAC0((v14 + 16), v14 + ((*(v16 + 80) + 40) & ~*(v16 + 80)), a1);
    swift_endAccess();
    sub_22AE02CF4(a3, v9, qword_27D8B0EE8, &qword_22AE80718);
    if ((*(v16 + 48))(v9, 1, v15) == 1)
    {
      return sub_22AE02D5C(v9, qword_27D8B0EE8, &qword_22AE80718);
    }

    else
    {
      sub_22AE76BD4();
      return (*(v16 + 8))(v9, v15);
    }
  }

  return result;
}

BOOL sub_22AE1ECA0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sub_22AE76FA4();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_22AE1ED98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x2822009F8](sub_22AE1EDC0, v4, 0);
}

uint64_t sub_22AE1EDC0()
{
  v12 = v0;
  if (qword_27D8B0CF8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v10 = *(v0 + 40);
  sub_22AE77004();
  sub_22AE20088(&v11, v1);
  v3 = *(v0 + 16);
  *(v0 + 72) = v3;
  *(v0 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v10;
  v5 = sub_22AE09960();
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_22AE1EF54;
  v7 = *(v0 + 56);
  v8 = *(v0 + 32);
  v14 = 120;
  v15 = v7;

  return MEMORY[0x282200908](v8, v0 + 24, &unk_22AE816C0, v4, v1, v5, 0xD000000000000023, 0x800000022AE82C10);
}

uint64_t sub_22AE1EF54()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {
    v3 = v2[8];

    return MEMORY[0x2822009F8](sub_22AE1F0CC, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_22AE1F0E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D8B0EE8, &qword_22AE80718);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610);
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5, v7);
  v10 = &v17 - v9;
  if (*(v0 + 112) != 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  swift_beginAccess();
  if (*(*(v0 + 120) + 24) >= 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22AE207E0();
    }

    v11 = *(v0 + 120);
    result = (*(v6 + 32))(v4, &v11[((*(v6 + 80) + 40) & ~*(v6 + 80)) + *(v6 + 72) * *(v11 + 4)], v5);
    v12 = *(v11 + 4);
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (!v13)
    {
      v15 = *(v11 + 3);
      if (v14 >= *(v11 + 2))
      {
        v14 = 0;
      }

      *(v11 + 4) = v14;
      if (!__OFSUB__(v15, 1))
      {
        v16 = 0;
        *(v11 + 3) = v15 - 1;
        goto LABEL_11;
      }

LABEL_17:
      __break(1u);
      return result;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = 1;
LABEL_11:
  (*(v6 + 56))(v4, v16, 1, v5);
  swift_endAccess();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    result = sub_22AE02D5C(v4, qword_27D8B0EE8, &qword_22AE80718);
    *(v0 + 112) = 0;
  }

  else
  {
    (*(v6 + 32))(v10, v4, v5);
    sub_22AE76BD4();
    return (*(v6 + 8))(v10, v5);
  }

  return result;
}

uint64_t AsyncSerialQueue.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AsyncSerialQueue.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t dispatch thunk of AsyncSerialQueue.performAndWait<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 176) + **(*v4 + 176));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_22ADEE1E0;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AsyncSerialQueue.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 184) + **(*v3 + 184));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_22AE1F68C;

  return v10(a1, a2, a3);
}

uint64_t sub_22AE1F68C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_22AE1F788@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

size_t sub_22AE1F844(char a1, uint64_t a2, char a3)
{
  v6 = *v3;
  v7 = (*v3 + 16);
  v8 = *v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610);
  v10 = v9;
  if (v8 >= a2)
  {
    v19 = *(*(v9 - 8) + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B1B30, &qword_22AE816B0);
    v16 = swift_allocObject();
    v20 = *(v6 + 24);
    *(v16 + 16) = v8;
    *(v16 + 24) = v20;
    if (v20 >= 1)
    {
      sub_22AE1FF20(v16 + 16, v16 + ((v19 + 40) & ~v19), v7, v6 + ((v19 + 40) & ~v19));
    }

    goto LABEL_19;
  }

  sub_22AE76874();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  if (a1)
  {
    v13 = *(v6 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B1B30, &qword_22AE816B0);
    v14 = *(v11 + 72);
    v15 = (v12 + 40) & ~v12;
    v16 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v16);
    if (v14)
    {
      if (result - v15 != 0x8000000000000000 || v14 != -1)
      {
        *(v16 + 16) = (result - v15) / v14;
        *(v16 + 24) = v13;
        *(v16 + 32) = 0;
        if (v13 >= 1)
        {
          sub_22AE1FBA0(v16 + 16, v16 + v15, v7, v6 + v15);
          *(v6 + 24) = 0;
        }

LABEL_19:

        *v3 = v16;
        return result;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B1B30, &qword_22AE816B0);
  v21 = *(v11 + 72);
  v22 = (v12 + 40) & ~v12;
  v16 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v16);
  if (!v21)
  {
    goto LABEL_21;
  }

  if (result - v22 != 0x8000000000000000 || v21 != -1)
  {
    v24 = *(v6 + 24);
    *(v16 + 16) = (result - v22) / v21;
    *(v16 + 24) = v24;
    *(v16 + 32) = 0;
    if (v24 >= 1)
    {
      sub_22AE1FDAC(v16 + 16, v16 + v22, v7, v6 + v22);
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
  return result;
}

void *sub_22AE1FAC0(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = v4 + v3;
  if (!__OFADD__(v4, v3))
  {
    v8 = result;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v9))
      {
LABEL_9:
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610);
        result = (*(*(v10 - 8) + 16))(a2 + *(*(v10 - 8) + 72) * v5, a3, v10);
        v11 = v8[1];
        v9 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v9)
        {
          v8[1] = v12;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v9 = __OFADD__(v5, *result);
      v5 += *result;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_22AE1FBA0(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = a3[1];
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610) - 8);
  if (v5 < v8)
  {
    v10 = v8 - v5;
    if (!__OFSUB__(v8, v5))
    {
      v11 = v5;
      v12 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v12 = 0;
  v10 = 0;
  v11 = v8;
LABEL_6:
  if (v10)
  {
    v13 = v5 < v8;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (v11 < 1)
  {
    v11 = 0;
    if (v5 >= v8)
    {
      return;
    }

    goto LABEL_23;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v15 = a4 + *(v9 + 72) * v4;
  if (v15 > a2 || v15 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610) - 8) + 72) * v11 <= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610);
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v15 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
    if (v5 >= v8)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v5 >= v8)
  {
    return;
  }

LABEL_23:
  if (v10 < 1)
  {
    return;
  }

  if (!v14)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610) - 8) + 72);
  v17 = a2 + v16 * v11;
  v18 = v14 + v16 * v10;
  if (v17 < v14 || v17 >= v18)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v17 != v14)
  {
    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_22AE1FDAC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = a3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610);
  if (v5 < v7)
  {
    v8 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v9 = a4;
      if (v5 < 1)
      {
        goto LABEL_5;
      }

      goto LABEL_8;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = 0;
  v8 = 0;
  if (v7 < 1)
  {
LABEL_5:
    if (v5 >= v7)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_8:
  if (!a4)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610);
  swift_arrayInitWithCopy();
  if (v5 >= v7)
  {
    return;
  }

LABEL_10:
  if (v8 < 1)
  {
    return;
  }

  if (!v9)
  {
LABEL_17:
    __break(1u);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610);
  swift_arrayInitWithCopy();
}

void sub_22AE1FF20(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = a3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610);
  if (v5 < v7)
  {
    v8 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v9 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

LABEL_7:
      if (a4)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610);
        swift_arrayInitWithCopy();
        goto LABEL_9;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = 0;
  v8 = 0;
  if (v7 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610);
      swift_arrayInitWithCopy();
      return;
    }

LABEL_17:
    __break(1u);
  }
}

uint64_t sub_22AE20088(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_22AE76FA4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_22AE20390(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_22AE2016C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B1B38, &unk_22AE816C8);
  result = sub_22AE76DB4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_22AE76FA4();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22AE20390(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22AE2016C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_22AE204B0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_22AE205F0(v5 + 1);
  }

  v8 = *v3;
  result = sub_22AE76FA4();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22AE76F24();
  __break(1u);
  return result;
}

void *sub_22AE204B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B1B38, &unk_22AE816C8);
  v2 = *v0;
  v3 = sub_22AE76DA4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

  return result;
}

uint64_t sub_22AE205F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B1B38, &unk_22AE816C8);
  result = sub_22AE76DB4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_22AE76FA4();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_22AE207E0()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610);
  v3 = *(v1 + 16);
  v4 = *(*(v2 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B1B30, &qword_22AE816B0);
  v5 = swift_allocObject();
  v6 = *(v1 + 24);
  *(v5 + 16) = v3;
  *(v5 + 24) = v6;
  if (v6 >= 1)
  {
    sub_22AE1FF20(v5 + 16, v5 + ((v4 + 40) & ~v4), (v1 + 16), v1 + ((v4 + 40) & ~v4));
  }

  *v0 = v5;
  return result;
}

uint64_t sub_22AE208E4(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22ADEE1DC;

  return sub_22AE0B3D8(a1, v4);
}

uint64_t sub_22AE20998(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610) - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[5];
  v11 = (v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_22ADEE1DC;

  return sub_22AE1DD84(a1, v8, v9, v10, v1 + v7, v12, v13, v5);
}

uint64_t unsafeCast<A, B>(_:)(uint64_t a1)
{
  MEMORY[0x28223BE20](a1, a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  return swift_dynamicCast();
}

uint64_t unsafeSendableCast(_:)(uint64_t a1)
{
  return sub_22AE20C88(a1, &qword_27D8B1B48, &qword_22AE816F8, &qword_27D8B1B50, &qword_22AE81700);
}

{
  return sub_22AE20C88(a1, &qword_27D8B1B58, &qword_22AE81708, &qword_27D8B1B60, &qword_22AE81710);
}

uint64_t unsafeSendableCast(_:)(void *a1)
{
  v2 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D60, &qword_22AE80500);

  return unsafeCast<A, B>(_:)(v2);
}

uint64_t sub_22AE20C88(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  swift_dynamicCast();
  return v10;
}

void sub_22AE22F88(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22AE23094(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22AE23474(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22AE2450C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2 == 1)
  {
    v17 = objc_begin_catch(a1);
    v18 = objc_autoreleasePoolPush();
    v20 = HMFGetOSLogHandle(0, v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier(0);
      LODWORD(buf) = 138543618;
      *(&buf + 4) = v21;
      WORD6(buf) = 2112;
      *(&buf + 14) = v17;
      _os_log_impl(&dword_22ADEC000, v20, OS_LOG_TYPE_ERROR, "%{public}@Exception while searching list (%@)", &buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    objc_end_catch();
    JUMPOUT(0x22AE24494);
  }

  _Unwind_Resume(a1);
}

void sub_22AE27530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AE2790C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL HMFDataIsReversed(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = [v3 length];
    if (v7 == [v5 length])
    {
      v8 = [v3 bytes];
      v9 = 0;
      v10 = [v5 bytes] - 1;
      do
      {
        v11 = [v3 length];
        v6 = v11 <= v9;
        if (v11 <= v9)
        {
          break;
        }

        v12 = *(v8 + v9++);
        v13 = *(v10 + [v3 length]);
        --v10;
      }

      while (v12 == v13);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

id HMFHTTPProtocolVersionString(unint64_t a1)
{
  if (a1 > 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = **(&unk_2786E6F10 + a1);
  }

  return v2;
}

id __copy_helper_block_e8_40n11_8_8_t0w8_s8(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 48);
  *(a1 + 48) = result;
  return result;
}

void sub_22AE2B704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMFWiFiAssertionOptionsDescription(unint64_t a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x277CBEB18] array];
    v3 = 1;
    do
    {
      if (v3 == 1 && (a1 & 1) != 0)
      {
        [v2 addObject:@"Foreground"];
      }

      v3 *= 2;
    }

    while (v3 - 1 < a1);
    v4 = [v2 componentsJoinedByString:{@", "}];
  }

  else
  {
    v4 = @"None";
  }

  return v4;
}

void __HMFLocationAuthorizationStopMonitoring(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1)
  {
    os_unfair_lock_lock_with_options();
    if ([*(v1 + 5) hmf_isEmpty])
    {
      v2 = objc_autoreleasePoolPush();
      v3 = v1;
      v5 = HMFGetOSLogHandle(v3, v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = HMFGetLogIdentifier(v3);
        *buf = 138543362;
        v16 = v6;
        _os_log_impl(&dword_22ADEC000, v5, OS_LOG_TYPE_INFO, "%{public}@Stop monitoring", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v2);
      v7 = v3[11];
      if (v7)
      {
        v8 = v7;
        v9 = v3[11];
        v3[11] = 0;

        v10 = dispatch_time(0, 1000000000);
        v11 = v3[8];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = ____HMFLocationAuthorizationStopMonitoring_block_invoke;
        block[3] = &unk_2786E6C80;
        v14 = v8;
        v12 = v8;
        dispatch_after(v10, v11, block);
      }

      os_unfair_lock_unlock(v1 + 2);
      __HMFLocationAuthorizationUpdateState(v3, 0);
    }

    else
    {
      os_unfair_lock_unlock(v1 + 2);
    }
  }
}

void sub_22AE2E730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  os_unfair_lock_unlock((v18 + v19));
  _Unwind_Resume(a1);
}

void sub_22AE2F0B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_22AE2F5A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __CoreLocationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary = result;
  return result;
}

void __HMFLocationAuthorizationUpdateState(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = objc_autoreleasePoolPush();
  v5 = v3;
  v7 = HMFGetOSLogHandle(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier(v5);
    v9 = 138543618;
    v10 = v8;
    v11 = 2048;
    v12 = a2;
    _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating authorization state to %ld", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [(os_unfair_lock_s *)v5 willChangeValueForKey:@"isMonitoring"];
  os_unfair_lock_lock_with_options();
  *&v5[8]._os_unfair_lock_opaque = a2;
  os_unfair_lock_unlock(v5 + 2);
  [(os_unfair_lock_s *)v5 didChangeValueForKey:@"isMonitoring"];
}

id HMFDescribeCollection(void *a1)
{
  v1 = MEMORY[0x277CCAB68];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  HMFDescribeIntoBufferWithIndent(v3, &stru_283EBDA30, v2);

  v4 = [v3 copy];

  return v4;
}

void HMFDescribeIntoBufferWithIndent(void *a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 _stringRepresentation];
LABEL_8:
      v9 = v8;
      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v8 = [v7 description];
      goto LABEL_8;
    }

    if (([v7 conformsToProtocol:&unk_283EE3178] & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if ([v7 conformsToProtocol:&unk_283ED5BE0] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
            {
              v23 = v7;
              [v5 appendString:@"{\n"];
              v24 = [v6 stringByAppendingString:@"    "];
              v34[0] = MEMORY[0x277D85DD0];
              v34[1] = 3221225472;
              v34[2] = __HMFDescribeIntoBufferWithIndent_block_invoke;
              v34[3] = &unk_2786E72B8;
              v25 = v5;
              v35 = v25;
              v36 = v24;
              v26 = v24;
              [v23 enumerateKeysAndObjectsUsingBlock:v34];

              [v25 appendString:v6];
              [v25 appendString:@"}"];

              goto LABEL_11;
            }

            v27 = [v6 length];
            v28 = [v7 description];
            v9 = v28;
            if (v27)
            {
              v29 = [v28 _stringRepresentation];
              [v5 appendString:v29];

              goto LABEL_10;
            }

LABEL_9:
            [v5 appendString:v9];
LABEL_10:

            goto LABEL_11;
          }
        }
      }
    }

    v10 = v7;
    objc_opt_class();
    v31 = v7;
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v11 = CFSTR("{(\n");
      v12 = @"}");
    }

    else
    {
      v11 = CFSTR("(\n");
      v12 = @"");
    }

    v30 = v12;
    [v5 appendString:v11];
    v13 = [v10 count];
    v32 = v6;
    v14 = [v6 stringByAppendingString:@"    "];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v15 = [v10 objectEnumerator];
    v16 = [v15 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v38;
      do
      {
        v19 = 0;
        v33 = v13;
        v20 = v13 - 1;
        do
        {
          if (*v38 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v37 + 1) + 8 * v19);
          [v5 appendString:v14];
          HMFDescribeIntoBufferWithIndent(v5, v14, v21);
          if (v20 == v19)
          {
            v22 = @"\n";
          }

          else
          {
            v22 = @",\n";
          }

          [v5 appendString:v22];
          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v37 objects:v41 count:16];
        v13 = v33 - v19;
      }

      while (v17);
    }

    v6 = v32;
    [v5 appendString:v32];
    [v5 appendString:v30];

    v7 = v31;
  }

  else
  {
    [v5 appendString:@"(null)"];
  }

LABEL_11:
}

uint64_t __HMFDescribeIntoBufferWithIndent_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  [v5 appendString:v6];
  HMFDescribeIntoBufferWithIndent(*(a1 + 32), *(a1 + 40), v8);

  [*(a1 + 32) appendString:@" = "];
  HMFDescribeIntoBufferWithIndent(*(a1 + 32), *(a1 + 40), v7);

  v9 = *(a1 + 32);

  return [v9 appendString:@";\n"];
}

id __getPlatformInformationForKey(void *a1)
{
  v1 = a1;
  v2 = *MEMORY[0x277CD2898];
  v3 = IOServiceMatching("IOPlatformExpertDevice");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  if (!MatchingService)
  {
    goto LABEL_6;
  }

  v5 = MatchingService;
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, v1, *MEMORY[0x277CBECE8], 0);
  if (!CFProperty)
  {
    IOObjectRelease(v5);
LABEL_6:
    v10 = 0;
    goto LABEL_12;
  }

  v7 = CFProperty;
  v8 = CFGetTypeID(CFProperty);
  if (v8 == CFStringGetTypeID())
  {
    v9 = [v7 copy];
  }

  else
  {
    v11 = CFGetTypeID(v7);
    if (v11 != CFDataGetTypeID())
    {
      v10 = 0;
      goto LABEL_11;
    }

    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
  }

  v10 = v9;
LABEL_11:
  IOObjectRelease(v5);
  CFRelease(v7);
LABEL_12:

  return v10;
}

uint64_t HMFOperatingSystemVersionCompare(void *a1, void *a2)
{
  if (*a1 > *a2)
  {
    return 1;
  }

  if (*a1 < *a2)
  {
    return -1;
  }

  v3 = a1[1];
  v4 = a2[1];
  if (v3 > v4)
  {
    return 1;
  }

  if (v3 < v4)
  {
    return -1;
  }

  v5 = a1[2];
  v6 = a2[2];
  v7 = v5 <= v6;
  if (v5 >= v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  if (v7)
  {
    return v8;
  }

  else
  {
    return 1;
  }
}

uint64_t __thenBlockForFinallyBlock_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HMFFuture;
  v5 = (*(*(a1 + 32) + 16))();
  if (HMFFuture)
  {
    v4 = [HMFFuture _futureWithOutcome:v5, v6];
  }

  else
  {
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __thenBlockForFinallyBlock_block_invoke_2;
  v11[3] = &unk_2786E7328;
  v7 = v3;
  v12 = v7;
  v8 = [(__objc2_class *)v4 then:v11];
  if (!v8)
  {
    _HMFPreconditionFailure(@"future");
  }

  v9 = v8;

  return 3;
}

uint64_t __recoverBlockForFinallyBlock_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HMFFuture;
  v5 = (*(*(a1 + 32) + 16))();
  if (HMFFuture)
  {
    v4 = [HMFFuture _futureWithOutcome:v5, v6];
  }

  else
  {
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __recoverBlockForFinallyBlock_block_invoke_2;
  v11[3] = &unk_2786E7328;
  v7 = v3;
  v12 = v7;
  v8 = [(__objc2_class *)v4 then:v11];
  if (!v8)
  {
    _HMFPreconditionFailure(@"future");
  }

  v9 = v8;

  return 3;
}

uint64_t __recoverBlockForFinallyBlock_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  return 2;
}

void sub_22AE34E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HMFRandomDataWithLength(unint64_t a1)
{
  v2 = [MEMORY[0x277CBEB28] dataWithCapacity:a1];
  if (a1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 4;
    do
    {
      if (a1 >= v5)
      {
        v6 = v5;
      }

      else
      {
        v6 = a1;
      }

      v8 = arc4random();
      v4 += 4;
      [v2 appendBytes:&v8 length:v6 + v3];
      v5 += 4;
      v3 -= 4;
    }

    while (v4 < a1);
  }

  return v2;
}

uint64_t HMFRandomUInt32()
{
  bytes = 0;
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 4uLL, &bytes))
  {
    return arc4random();
  }

  else
  {
    return bytes;
  }
}

double HMFSecondsFromMachTime(uint64_t a1)
{
  info = 0;
  mach_timebase_info(&info);
  return (info.numer * a1 / info.denom) / 1000000000.0;
}

BOOL HMFIsInternalBuild()
{
  v0 = +[HMFProductInfo productInfo];
  v1 = [v0 productVariant] == 3;

  return v1;
}

BOOL HMFIsDeveloperBuild()
{
  v0 = +[HMFProductInfo productInfo];
  v1 = [v0 productVariant] == 1;

  return v1;
}

BOOL HMFIsCustomerBuild()
{
  v0 = +[HMFProductInfo productInfo];
  v1 = [v0 productVariant] == 0;

  return v1;
}

BOOL HMFIsCarrierBuild()
{
  v0 = +[HMFProductInfo productInfo];
  v1 = [v0 productVariant] == 2;

  return v1;
}

id HMFEncodedRootObject(void *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v3 = [[HMFOSTransaction alloc] initWithName:@"com.apple.HMFoundation.hmfutilities.encode-root."];
  v4 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [v4 encodeObject:v1 forKey:*MEMORY[0x277CCA308]];
  [v4 finishEncoding];
  v5 = [v4 encodedData];

  objc_autoreleasePoolPop(v2);

  return v5;
}

uint64_t HMFApproximateSizeOfPlistValue(uint64_t a1)
{
  v1 = [MEMORY[0x277CBEB18] arrayWithObject:a1];
  if ([v1 count])
  {
    v2 = 0;
    while (1)
    {
      v3 = [v1 objectAtIndexedSubscript:0];
      [v1 removeObjectAtIndex:0];
      v4 = CFGetTypeID(v3);
      if (v4 == CFBooleanGetTypeID())
      {
        v5 = v2 + 6;
      }

      else
      {
        v5 = v2 + 5;
        if (v4 == CFNumberGetTypeID())
        {
          ByteSize = CFNumberGetByteSize(v3);
        }

        else
        {
          if (v4 == CFDateGetTypeID())
          {
            v5 = v2 + 13;
            goto LABEL_18;
          }

          if (v4 == CFStringGetTypeID())
          {
            Length = CFStringGetLength(v3);
            usedBufLen = 0;
            v16.location = 0;
            v16.length = Length;
            Bytes = CFStringGetBytes(v3, v16, 0x600u, 0, 0, 0, 0, &usedBufLen);
            v9 = usedBufLen;
            if (usedBufLen != Length || Bytes == 0)
            {
              v9 = 2 * Length;
            }

            v5 += v9;
            goto LABEL_18;
          }

          if (v4 != CFDataGetTypeID())
          {
            if (v4 == CFArrayGetTypeID())
            {
              [v1 addObjectsFromArray:v3];
            }

            else if (v4 == CFDictionaryGetTypeID())
            {
              v11 = v3;
              v12 = [(__CFString *)v11 allKeys];
              [v1 addObjectsFromArray:v12];

              v13 = [(__CFString *)v11 allValues];

              [v1 addObjectsFromArray:v13];
            }

            goto LABEL_18;
          }

          ByteSize = CFDataGetLength(v3);
        }

        v5 += ByteSize;
      }

LABEL_18:

      v2 = v5;
      if (![v1 count])
      {
        goto LABEL_27;
      }
    }
  }

  v5 = 0;
LABEL_27:

  return v5;
}

void sub_22AE37A2C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22AE3A750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  os_unfair_lock_unlock((v14 + v15));
  _Unwind_Resume(a1);
}

__CFString *HMFStringFromMemoryEvent(uint64_t a1)
{
  if ((a1 - 1) >= 5)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<Unknown value: %ld>", a1];
  }

  else
  {
    v2 = off_2786E7460[a1 - 1];
  }

  return v2;
}

void serverDidInvalidate(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  v4 = [v3 object];
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = v4;
    v8 = HMFGetOSLogHandle(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier(v6);
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Server invalidated", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [v6 delegate];
    [v10 serverDidInvalidate:v6];
  }
}

void serverDidReceiveError(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 object];
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = v6;
    v10 = HMFGetOSLogHandle(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier(v8);
      v12 = 138543618;
      v13 = v11;
      v14 = 2112;
      v15 = a2;
      _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Server received error: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

void serverDidOpenConnection(void *a1, _HMFCFHTTPServerConnection *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 object];
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = v6;
    v10 = HMFGetOSLogHandle(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier(v8);
      v20 = 138543618;
      v21 = v11;
      v22 = 2112;
      v23 = a2;
      _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Server did open connection: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [[_HMFCFHTTPServerConnection alloc] initWithConnectionRef:a2];
    if (v12)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = v8;
      v16 = HMFGetOSLogHandle(v14, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier(v14);
        v20 = 138543618;
        v21 = v17;
        v22 = 2112;
        v23 = v12;
        _os_log_impl(&dword_22ADEC000, v16, OS_LOG_TYPE_INFO, "%{public}@Server did open connection: %@", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      v18 = [v14 connections];
      [v18 addObject:v12];

      v19 = [v14 delegate];
      [v19 server:v14 didOpenConnection:v12];
    }
  }
}

void serverDidCloseConnection(void *a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 object];
  if (v6)
  {
    v31 = v5;
    v7 = objc_autoreleasePoolPush();
    v30 = v6;
    v8 = v6;
    v10 = HMFGetOSLogHandle(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier(v8);
      *buf = 138543618;
      v39 = v11;
      v40 = 2112;
      v41 = a2;
      _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Server did close connection: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v12 = [v8 connections];
    v13 = [v12 copy];

    v14 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v34;
      do
      {
        v17 = 0;
        v32 = v15;
        do
        {
          if (*v34 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v33 + 1) + 8 * v17);
          if ([v18 internal] == a2)
          {
            v19 = objc_autoreleasePoolPush();
            v20 = v8;
            v22 = HMFGetOSLogHandle(v20, v21);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier(v20);
              v23 = v16;
              v24 = a2;
              v25 = v13;
              v27 = v26 = v8;
              *buf = 138543618;
              v39 = v27;
              v40 = 2112;
              v41 = v18;
              _os_log_impl(&dword_22ADEC000, v22, OS_LOG_TYPE_INFO, "%{public}@Server did close connection: %@", buf, 0x16u);

              v8 = v26;
              v13 = v25;
              a2 = v24;
              v16 = v23;
              v15 = v32;
            }

            objc_autoreleasePoolPop(v19);
            [v18 close];
            v28 = [v20 connections];
            [v28 removeObject:v18];

            v29 = [v20 delegate];
            [v29 server:v20 didCloseConnection:v18];
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v15);
    }

    v6 = v30;
    v5 = v31;
  }
}

void *__HMFActivityScopeLeave(void *result)
{
  if (result)
  {
    result = *result;
    if (result)
    {
      return [result end];
    }
  }

  return result;
}

void sub_22AE3D8E8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

uint64_t __HMFLocationAuthorizationHandleAuthorizationStatus(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if ((a2 - 3) < 2)
    {
      [v3 finish];
    }

    else
    {
      if ((a2 - 1) > 1)
      {
        v6 = 1;
        goto LABEL_7;
      }

      v5 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
      [v4 cancelWithError:v5];
    }
  }

  v6 = 0;
LABEL_7:

  return v6;
}

HMFMessageBinding *HMFCreateMessageBinding(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1;
  v7 = [[HMFMessageBinding alloc] initWithName:v6 policies:v5 selector:a3 messageReceiver:0];

  return v7;
}

HMFMessageBinding *HMFCreateMessageBindingWithReceiver(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = a2;
  v9 = a1;
  v10 = [[HMFMessageBinding alloc] initWithName:v9 policies:v8 selector:a3 messageReceiver:v7];

  return v10;
}

void sub_22AE4048C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void _connectionDidInvalidate(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  v4 = [v3 object];
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = v4;
    v8 = HMFGetOSLogHandle(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier(v6);
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_INFO, "%{public}@Connection invalidated", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }
}

void _connectionDidReceiveError(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 object];
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = v6;
    v10 = HMFGetOSLogHandle(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier(v8);
      v12 = 138543618;
      v13 = v11;
      v14 = 2112;
      v15 = a2;
      _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_INFO, "%{public}@Connection received error: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

void _connectionDidReceiveRequest(void *a1, uint64_t a2)
{
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v7 = [v5 object];

  v6 = v7;
  if (v7)
  {
    [v7 _handleReceivedRequestRef:a2];
    v6 = v7;
  }
}

void _connectionDidSendResponse(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v8 = [v6 object];

  v7 = v8;
  if (v8)
  {
    [v8 _handleCompletedResponse:a3 error:0];
    v7 = v8;
  }
}

void _connectionDidFailToSendResponse(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v8 = [v6 object];

  if (v8)
  {
    v7 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
    [v8 _handleCompletedResponse:a3 error:v7];
  }
}

CFTypeRef _retainInfo(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void _releaseInfo(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void readStreamCallBack(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v9 = [v7 object];

  if (v9)
  {
    v8 = [v9 connection];
    [v8 handleRequest:v9 bodyReadStream:a1 eventType:a2];
  }
}

void sub_22AE43F20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void __updateBatteryLevel(void *a1, float a2)
{
  v3 = a1;
  if (v3)
  {
    v4 = roundf(a2 * 1000.0) / 1000.0;
    v6 = v3;
    os_unfair_lock_lock_with_options();
    if (vabds_f32(*(v6 + 4), v4) <= 0.1)
    {
      os_unfair_lock_unlock(v6 + 2);
    }

    else
    {
      *(v6 + 4) = v4;
      os_unfair_lock_unlock(v6 + 2);
      v5 = +[HMFNotificationCenter defaultCenter];
      [v5 postNotificationName:@"HMFPowerManagerBatteryLevelDidChangeNotification" object:v6];
    }

    v3 = v6;
  }
}

void __updateBatteryState(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (v3)
  {
    os_unfair_lock_lock_with_options();
    if (*&v3[6]._os_unfair_lock_opaque == a2)
    {
      os_unfair_lock_unlock(v3 + 2);
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      v5 = v3;
      v7 = HMFGetOSLogHandle(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier(v5);
        v10 = 138543618;
        v11 = v8;
        v12 = 2048;
        v13 = a2;
        _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_INFO, "%{public}@Battery state changed: %tu", &v10, 0x16u);
      }

      objc_autoreleasePoolPop(v4);
      *&v5[6]._os_unfair_lock_opaque = a2;
      os_unfair_lock_unlock(v3 + 2);
      v9 = +[HMFNotificationCenter defaultCenter];
      [v9 postNotificationName:@"HMFPowerManagerBatteryStateDidChangeNotification" object:v5];
    }
  }
}

void _matchedBatteryMatchingCallback(void *a1, io_iterator_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = a1;
  if (v5)
  {
    v6 = IOIteratorNext(a2);
    if (v6)
    {
      v7 = v6;
      do
      {
        if (!IOServiceAddInterestNotification([(io_object_t *)v5 notificationPort], v7, "IOGeneralInterest", _batteryInterestCallback, v5, v5 + 5))
        {
          [(io_object_t *)v5 updateBatteryState:v7];
        }

        IOObjectRelease(v7);
        v7 = IOIteratorNext(a2);
      }

      while (v7);
    }
  }

  objc_autoreleasePoolPop(v4);
}

void *_batteryInterestCallback(void *result, const char *a2, int a3)
{
  if (result)
  {
    if (a3 == -536723200)
    {
      return [result updateBatteryState:a2];
    }
  }

  return result;
}

void sub_22AE46FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AE485F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __browse_result_changed_handler_block_invoke(uint64_t a1, void *a2, void *a3)
{
  old_result = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  changes = nw_browse_result_get_changes(old_result, v5);
  if ((changes & 1) == 0)
  {
    if ((changes & 2) != 0)
    {
      v8 = 2;
    }

    else if ((changes & 4) != 0)
    {
      v8 = 3;
    }

    else
    {
      if (((changes >> 3) & 4) == 0)
      {
        goto LABEL_14;
      }

      v8 = (changes >> 3) & 4;
    }

    v9 = [HMFNetworkService alloc];
    v10 = nw_browse_result_copy_txt_record_object(v5);
    if (v5)
    {
      v11 = v5;
    }

    else
    {
      v11 = old_result;
    }

    v12 = [WeakRetained workQueue];
    v13 = [(HMFNetworkService *)v9 initWithTXTRecords:v10 browseResult:v11 queue:v12];

    v14 = [WeakRetained updateBlock];
    v15 = v14;
    if (v14)
    {
      (*(v14 + 16))(v14, v13, v8);
    }
  }

LABEL_14:
}

uint64_t __networkServiceDidUpdate_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  switch(a3)
  {
    case 4:
      v8 = v5;
      v5 = [*(a1 + 32) _updateService:v5];
      break;
    case 3:
      v8 = v5;
      v5 = [*(a1 + 32) _removeService:v5];
      break;
    case 2:
      v8 = v5;
      v5 = [*(a1 + 32) _addService:v5];
      break;
    default:
      goto LABEL_8;
  }

  v6 = v8;
LABEL_8:

  return MEMORY[0x2821F96F8](v5, v6);
}

uint64_t ____registerForUpdates_block_invoke(uint64_t a1, const __CFString *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v12 = WeakRetained;
    WeakRetained = CFStringCompare(a2, @"UserAssignedDeviceName", 0);
    v4 = v12;
    if (!WeakRetained)
    {
      v5 = v12;
      v6 = MGCopyAnswer();
      TypeID = CFStringGetTypeID();
      objc_opt_class();
      if (v6 && CFGetTypeID(v6) != TypeID)
      {
        CFRelease(v6);
        v6 = 0;
      }

      if (objc_opt_isKindOfClass())
      {
        v8 = v6;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;

      os_unfair_lock_lock_with_options();
      if (HMFEqualObjects(*(v5 + 3), v9))
      {
        os_unfair_lock_unlock(v5 + 2);
      }

      else
      {
        objc_storeStrong(v5 + 3, v8);
        os_unfair_lock_unlock(v5 + 2);
        v10 = [v5 delegate];
        [v10 dataSource:v5 didUpdateName:v9];
      }

      v4 = v12;
    }
  }

  return MEMORY[0x2821F96F8](WeakRetained, v4);
}

void sub_22AE4DB0C(_Unwind_Exception *a1)
{
  CFRelease(*v1);
  *v1 = v2;
  _Unwind_Resume(a1);
}

void sub_22AE4DB94(_Unwind_Exception *a1)
{
  CFRelease(*v1);
  *v1 = v2;
  _Unwind_Resume(a1);
}

void HMFImplicitDispatchContextDestroy(id *a1)
{
  objc_storeWeak(a1 + 1, 0);

  free(a1);
}

HMFDispatchContext *HMFImplicitDispatchContext()
{
  specific = dispatch_get_specific(&implicitContextKey);
  if (specific)
  {
    v1 = specific;
    WeakRetained = objc_loadWeakRetained(specific + 1);
    if (!WeakRetained)
    {
      WeakRetained = [[HMFDispatchContext alloc] initWithQueue:*v1];
      objc_storeWeak(v1 + 1, WeakRetained);
    }
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

void sub_22AE4FA44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_22AE4FC20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_22AE500C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AE517C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AE51C14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void __HMFHTTPClientHandleReachabilityChange(void *a1, int a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = v3;
    v7 = HMFGetOSLogHandle(v5, v6);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (a2)
    {
      if (v8)
      {
        v9 = HMFGetLogIdentifier(v5);
        *buf = 138543362;
        v24 = v9;
        _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_INFO, "%{public}@Received notification that the server is now reachable", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
      if (([v5 isReachable] & 1) == 0)
      {
        objc_initWeak(buf, v5);
        v10 = [v5 netService];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = ____HMFHTTPClientHandleReachabilityChange_block_invoke;
        v21[3] = &unk_2786E7AC8;
        objc_copyWeak(&v22, buf);
        [v10 resolveWithTimeout:v21 completionHandler:15.0];

        objc_destroyWeak(&v22);
        objc_destroyWeak(buf);
      }

      v11 = [v5 reachabilityProbeQueue];
      v12 = [v11 operations];
      v13 = [v12 count];

      if (v13)
      {
        v14 = objc_autoreleasePoolPush();
        v15 = v5;
        v17 = HMFGetOSLogHandle(v15, v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier(v15);
          *buf = 138543362;
          v24 = v18;
          _os_log_impl(&dword_22ADEC000, v17, OS_LOG_TYPE_INFO, "%{public}@Cancelling pending confirmations due to reachability change", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v14);
      }

      v19 = [v5 reachabilityProbeQueue];
      [v19 cancelAllOperations];
    }

    else
    {
      if (v8)
      {
        v20 = HMFGetLogIdentifier(v5);
        *buf = 138543362;
        v24 = v20;
        _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_INFO, "%{public}@Received notification that the server is now unreachable", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
      if ([v5 isActive])
      {
        if (([v5 isReachable] & 1) == 0)
        {
          [v5 stopDelegatedPingTimer];
        }
      }

      else
      {
        [v5 setReachable:0];
      }
    }
  }
}
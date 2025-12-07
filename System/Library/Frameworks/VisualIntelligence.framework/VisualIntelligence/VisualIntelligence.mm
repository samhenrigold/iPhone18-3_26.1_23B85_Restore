uint64_t SemanticContentDescriptorEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FCF0, &unk_23B2F8290);
  *a1 = sub_23B2F7E78();
  a1[1] = sub_23B2F7E78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FCF8, &unk_23B2F86B0);
  result = sub_23B2F7E78();
  a1[2] = result;
  return result;
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

void *sub_23B2F4434@<X0>(void *a1@<X8>)
{
  result = sub_23B2F7E48();
  *a1 = v3;
  return result;
}

uint64_t sub_23B2F4470(uint64_t *a1, uint64_t *a2)
{

  sub_23B2F7E58();
}

uint64_t (*SemanticContentDescriptorEntity.labels.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_23B2F7E38();
  return sub_23B2F6140;
}

void *sub_23B2F45E8@<X0>(void *a1@<X8>)
{
  result = sub_23B2F7E48();
  *a1 = v3;
  return result;
}

uint64_t sub_23B2F4624(uint64_t *a1, uint64_t *a2)
{

  sub_23B2F7E58();
}

uint64_t (*SemanticContentDescriptorEntity.textList.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_23B2F7E38();
  return sub_23B2F6140;
}

double sub_23B2F479C@<D0>(_OWORD *a1@<X8>)
{
  sub_23B2F7E48();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_23B2F47D8(uint64_t *a1, uint64_t *a2)
{

  sub_23B2F7E58();
}

uint64_t (*SemanticContentDescriptorEntity.imageFrameResourceIDString.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_23B2F7E38();
  return sub_23B2F48F8;
}

void sub_23B2F48FC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_23B2F496C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FCF0, &unk_23B2F8290);
  *a1 = sub_23B2F7E78();
  a1[1] = sub_23B2F7E78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FCF8, &unk_23B2F86B0);
  result = sub_23B2F7E78();
  a1[2] = result;
  return result;
}

uint64_t sub_23B2F49D4(uint64_t a1)
{
  v2 = sub_23B2F5C54();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_23B2F4A20(uint64_t a1)
{
  v2 = sub_23B2F5C54();

  return MEMORY[0x28210B2F8](a1, v2);
}

uint64_t sub_23B2F4AA4(uint64_t a1)
{
  v2 = sub_23B2F57D0();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_23B2F4AF0(uint64_t a1)
{
  v2 = sub_23B2F5D6C();

  return MEMORY[0x28210C590](a1, v2);
}

uint64_t sub_23B2F4B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_23B2F4C00;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_23B2F4C00()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23B2F4CF4(uint64_t a1)
{
  v2 = sub_23B2F5AD0();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t SemanticContentDescriptorEntity.convertToSystemIntentValue()@<X0>(void *a1@<X8>)
{
  v70 = a1;
  v2 = sub_23B2F7F58();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v62 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v56 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD00, &qword_23B2F82A0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v67 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v69 = v56 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v66 = v56 - v14;
  MEMORY[0x28223BE20](v13);
  v68 = v56 - v15;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD08, &qword_23B2F82A8);
  v16 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v18 = v56 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD10, &unk_23B2F82B0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v56 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD18, &unk_23B2F86A0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v72 = v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v64 = v56 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = v56 - v27;
  v65 = *v1;
  v63 = v1[2];
  sub_23B2F7E48();
  v29 = *(v74 + 16);

  v71 = v28;
  if (v29)
  {
    v61 = v7;
    v30 = sub_23B2F7F28();
    v31 = *(*(v30 - 8) + 56);
    v60 = v21;
    v31(v21, 1, 1, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD20, &qword_23B2F82C0);
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD28, &qword_23B2F82C8) - 8);
    v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_23B2F8280;
    sub_23B2F7E48();
    v34 = v74;
    v35 = *(v74 + 16);
    if (v35)
    {
      v56[2] = v33;
      v57 = v3;
      v58 = v2;
      v76 = MEMORY[0x277D84F90];
      sub_23B2F5628(0, v35, 0);
      v36 = v76;
      sub_23B2F5648();
      v56[1] = v34;
      v37 = (v34 + 40);
      do
      {
        v38 = *v37;
        v74 = *(v37 - 1);
        v75 = v38;

        sub_23B2F7E28();
        v76 = v36;
        v40 = *(v36 + 16);
        v39 = *(v36 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_23B2F5628((v39 > 1), v40 + 1, 1);
          v36 = v76;
        }

        *(v36 + 16) = v40 + 1;
        (*(v16 + 32))(v36 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v40, v18, v73);
        v37 += 2;
        --v35;
      }

      while (v35);

      v3 = v57;
      v2 = v58;
    }

    else
    {
    }

    sub_23B2F5648();
    sub_23B2F7E88();
    v44 = v64;
    sub_23B2F7E98();
    v41 = 0;
    v7 = v61;
    v43 = v68;
    v42 = v69;
    v28 = v71;
  }

  else
  {
    v41 = 1;
    v43 = v68;
    v42 = v69;
    v44 = v64;
  }

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD38, &qword_23B2F82D0);
  (*(*(v45 - 8) + 56))(v44, v41, 1, v45);
  sub_23B2F569C(v44, v28, &qword_27E12FD18, &unk_23B2F86A0);
  sub_23B2F7E48();
  v46 = v66;
  if (v75)
  {
    sub_23B2F7F38();
  }

  else
  {
    (*(v3 + 56))(v66, 1, 1, v2);
  }

  sub_23B2F569C(v46, v43, &qword_27E12FD00, &qword_23B2F82A0);
  sub_23B2F7E48();
  v47 = v74;
  v48 = v71;
  sub_23B2F5704(v71, v72, &qword_27E12FD18, &unk_23B2F86A0);
  sub_23B2F5704(v43, v42, &qword_27E12FD00, &qword_23B2F82A0);
  v49 = v67;
  sub_23B2F5704(v42, v67, &qword_27E12FD00, &qword_23B2F82A0);
  if ((*(v3 + 48))(v49, 1, v2) == 1)
  {
    sub_23B2F576C(v42, &qword_27E12FD00, &qword_23B2F82A0);
    sub_23B2F576C(v43, &qword_27E12FD00, &qword_23B2F82A0);
    sub_23B2F576C(v48, &qword_27E12FD18, &unk_23B2F86A0);
    sub_23B2F576C(v49, &qword_27E12FD00, &qword_23B2F82A0);
    v50 = 0;
    v51 = -1;
  }

  else
  {
    (*(v3 + 32))(v7, v49, v2);
    (*(v3 + 16))(v62, v7, v2);
    sub_23B2F7FB8();
    swift_allocObject();
    v50 = sub_23B2F7F98();
    (*(v3 + 8))(v7, v2);
    sub_23B2F576C(v42, &qword_27E12FD00, &qword_23B2F82A0);
    sub_23B2F576C(v43, &qword_27E12FD00, &qword_23B2F82A0);
    sub_23B2F576C(v48, &qword_27E12FD18, &unk_23B2F86A0);
    v51 = 0;
  }

  v52 = v70;
  *v70 = v47;
  v53 = type metadata accessor for SemanticContentDescriptor(0);
  result = sub_23B2F569C(v72, v52 + *(v53 + 20), &qword_27E12FD18, &unk_23B2F86A0);
  v55 = v52 + *(v53 + 24);
  *v55 = v50;
  v55[8] = v51;
  return result;
}

uint64_t sub_23B2F55DC(uint64_t a1)
{
  v2 = sub_23B2F5D6C();

  return MEMORY[0x28210C5A0](a1, v2);
}

void *sub_23B2F5628(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23B2F5EFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_23B2F5648()
{
  result = qword_27E12FD30;
  if (!qword_27E12FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12FD30);
  }

  return result;
}

uint64_t sub_23B2F569C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_23B2F5704(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23B2F576C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_23B2F57D0()
{
  result = qword_27E12FD40;
  if (!qword_27E12FD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12FD40);
  }

  return result;
}

unint64_t sub_23B2F5828()
{
  result = qword_27E12FD48;
  if (!qword_27E12FD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12FD48);
  }

  return result;
}

unint64_t sub_23B2F5880()
{
  result = qword_27E12FD50;
  if (!qword_27E12FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12FD50);
  }

  return result;
}

unint64_t sub_23B2F58D8()
{
  result = qword_27E12FD58;
  if (!qword_27E12FD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12FD58);
  }

  return result;
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

unint64_t sub_23B2F59C8()
{
  result = qword_27E12FD70;
  if (!qword_27E12FD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12FD70);
  }

  return result;
}

unint64_t sub_23B2F5A20()
{
  result = qword_27E12FD78;
  if (!qword_27E12FD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12FD78);
  }

  return result;
}

unint64_t sub_23B2F5A78()
{
  result = qword_27E12FD80;
  if (!qword_27E12FD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12FD80);
  }

  return result;
}

unint64_t sub_23B2F5AD0()
{
  result = qword_27E12FD88;
  if (!qword_27E12FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12FD88);
  }

  return result;
}

uint64_t sub_23B2F5BB0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_23B2F5BFC()
{
  result = qword_27E12FDA8;
  if (!qword_27E12FDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12FDA8);
  }

  return result;
}

unint64_t sub_23B2F5C54()
{
  result = qword_27E12FDB0;
  if (!qword_27E12FDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12FDB0);
  }

  return result;
}

unint64_t sub_23B2F5CAC()
{
  result = qword_27E12FDB8;
  if (!qword_27E12FDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12FDB8);
  }

  return result;
}

unint64_t sub_23B2F5D6C()
{
  result = qword_27E12FDC0;
  if (!qword_27E12FDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12FDC0);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23B2F5DD4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_23B2F5E1C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_23B2F5EB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_23B2F5EFC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E12FDD0, "0\a");
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD08, &qword_23B2F82A8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD08, &qword_23B2F82A8) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void type metadata accessor for CVBuffer()
{
  if (!qword_2814F8838)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2814F8838);
    }
  }
}

uint64_t sub_23B2F6154(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23B2F61C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_23B2F6304(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t static SemanticContentDescriptor.defaultResolverSpecification.getter()
{
  type metadata accessor for SemanticContentDescriptor(0);
  sub_23B2F6C18(&qword_27E12FE58, &protocol conformance descriptor for SemanticContentDescriptor);

  return sub_23B2F7ED8();
}

uint64_t sub_23B2F6668(uint64_t a1)
{
  v2 = sub_23B2F6C18(&qword_27E12FE70, &protocol conformance descriptor for SemanticContentDescriptor);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t SemanticContentDescriptor.convertToEntity()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_23B2F7F58();
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v23 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD18, &unk_23B2F86A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FCF0, &unk_23B2F8290);
  v9 = sub_23B2F7E78();
  v10 = sub_23B2F7E78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FCF8, &unk_23B2F86B0);
  v11 = sub_23B2F7E78();
  v26 = *v1;

  sub_23B2F7E58();
  v12 = type metadata accessor for SemanticContentDescriptor(0);
  sub_23B2F69B8(v1 + *(v12 + 20), v8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD38, &qword_23B2F82D0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_23B2F6A28(v8);
    v15 = MEMORY[0x277D84F90];
  }

  else
  {
    v15 = sub_23B2F7EA8();
    (*(v14 + 8))(v8, v13);
  }

  v26 = v15;
  sub_23B2F7E58();
  v16 = *(v2 + *(v12 + 24) + 8);
  if (v16 == 255 || (v16 & 1) != 0)
  {
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v19 = v23;
    sub_23B2F7F88();
    v17 = sub_23B2F7F48();
    v18 = v20;
    (*(v24 + 8))(v19, v25);
  }

  v26 = v17;
  v27 = v18;
  sub_23B2F7E58();

  *a1 = v9;
  a1[1] = v10;
  a1[2] = v11;
  return result;
}

uint64_t sub_23B2F69B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD18, &unk_23B2F86A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B2F6A28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD18, &unk_23B2F86A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B2F6C18(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SemanticContentDescriptor(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B2F6C80()
{
  result = qword_27E12FE90;
  if (!qword_27E12FE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E12FE98, &qword_23B2F8898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12FE90);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_23B2F6D0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23B2F6D54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t SemanticContentDescriptor.init(labels:list:imageFrameResourceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v23 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD00, &qword_23B2F82A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_23B2F7F58();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  sub_23B2F5704(a3, v9, &qword_27E12FD00, &qword_23B2F82A0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_23B2F576C(a3, &qword_27E12FD00, &qword_23B2F82A0);
    sub_23B2F576C(v9, &qword_27E12FD00, &qword_23B2F82A0);
    v17 = 0;
    v18 = -1;
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    (*(v11 + 16))(v14, v16, v10);
    sub_23B2F7FB8();
    swift_allocObject();
    v17 = sub_23B2F7F98();
    sub_23B2F576C(a3, &qword_27E12FD00, &qword_23B2F82A0);
    (*(v11 + 8))(v16, v10);
    v18 = 0;
  }

  *a4 = a1;
  v19 = type metadata accessor for SemanticContentDescriptor(0);
  result = sub_23B2F7084(v23, a4 + *(v19 + 20));
  v21 = a4 + *(v19 + 24);
  *v21 = v17;
  v21[8] = v18;
  return result;
}

uint64_t type metadata accessor for SemanticContentDescriptor(uint64_t a1)
{
  result = qword_27E12FEB0;
  if (!qword_27E12FEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B2F7084(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD18, &unk_23B2F86A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SemanticContentDescriptor.imageFrameResourceID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for SemanticContentDescriptor(0) + 24) + 8);
  if (v3 == 255 || (v3 & 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    sub_23B2F7F88();
    v4 = 0;
  }

  v5 = sub_23B2F7F58();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, v4, 1, v5);
}

uint64_t SemanticContentDescriptor.pixelBuffer.getter()
{
  v1 = sub_23B2F7F78();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FEA0, &qword_23B2F8960);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_23B2F7FC8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = v0 + *(type metadata accessor for SemanticContentDescriptor(0) + 24);
  v16 = *(v15 + 8);
  if (v16 != 255)
  {
    v26 = v2;
    v17 = *v15;
    v18 = *v15;
    if (v16)
    {
      sub_23B2F75A0(v18, 1);
      v19 = v17;
LABEL_4:
      sub_23B2F7FE8();
      swift_allocObject();
      v20 = sub_23B2F7FD8();
      sub_23B2F75AC(v17, v16);
      return v20;
    }

    sub_23B2F75A0(v18, 0);
    sub_23B2F7FA8();
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_23B2F75AC(v17, v16);
      sub_23B2F576C(v7, &qword_27E12FEA0, &qword_23B2F8960);
    }

    else
    {
      (*(v9 + 32))(v14, v7, v8);
      (*(v9 + 16))(v12, v14, v8);
      if ((*(v9 + 88))(v12, v8) == *MEMORY[0x277D78CD0])
      {
        (*(v9 + 96))(v12, v8);
        v22 = v26;
        (*(v26 + 32))(v4, v12, v1);
        v23 = sub_23B2F7F68();
        (*(v22 + 8))(v4, v1);
        (*(v9 + 8))(v14, v8);
        if (v23)
        {
          goto LABEL_4;
        }

        sub_23B2F75AC(v17, v16);
      }

      else
      {
        sub_23B2F75AC(v17, v16);
        v24 = *(v9 + 8);
        v24(v14, v8);
        v24(v12, v8);
      }
    }
  }

  return 0;
}

id sub_23B2F75A0(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_23B2F75AC(void *result, char a2)
{
  if (a2 != -1)
  {
    sub_23B2F75C4(result, a2 & 1);
  }
}

void sub_23B2F75C4(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t SemanticContentDescriptor.description.getter()
{
  v1 = v0;
  v2 = sub_23B2F795C(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  v5 = v4 + 1;
  if (v4 >= v3 >> 1)
  {
    v2 = sub_23B2F795C((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v5;
  v6 = &v2[16 * v4];
  *(v6 + 4) = 0xD00000000000001BLL;
  *(v6 + 5) = 0x800000023B2F8AD0;
  if (*(*v1 + 16))
  {
    v7 = MEMORY[0x23EE99800]();
    MEMORY[0x23EE997F0](v7);

    v9 = *(v2 + 2);
    v8 = *(v2 + 3);
    v5 = v9 + 1;
    if (v9 >= v8 >> 1)
    {
      v2 = sub_23B2F795C((v8 > 1), v9 + 1, 1, v2);
    }

    *(v2 + 2) = v5;
    v10 = &v2[16 * v9];
    *(v10 + 4) = 0x3A736C6562616C09;
    *(v10 + 5) = 0xE900000000000020;
  }

  v11 = v1 + *(type metadata accessor for SemanticContentDescriptor(0) + 24);
  v12 = *(v11 + 8);
  if (v12 == 255)
  {
    v21 = *(v2 + 3);
    if (v5 >= v21 >> 1)
    {
      v2 = sub_23B2F795C((v21 > 1), v5 + 1, 1, v2);
    }

    *(v2 + 2) = v5 + 1;
    v22 = &v2[16 * v5];
    *(v22 + 4) = 0xD000000000000014;
    *(v22 + 5) = 0x800000023B2F8AF0;
    v17 = *(v2 + 2);
  }

  else
  {
    v13 = *v11;
    v14 = *v11;
    if (v12)
    {
      sub_23B2F75A0(v14, 1);
      v16 = *(v2 + 2);
      v15 = *(v2 + 3);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v2 = sub_23B2F795C((v15 > 1), v16 + 1, 1, v2);
      }

      sub_23B2F75AC(v13, v12);
      v18 = 0x800000023B2F8B10;
      *(v2 + 2) = v17;
      v19 = &v2[16 * v16];
      v20 = 0xD000000000000015;
    }

    else
    {
      sub_23B2F75A0(v14, 0);
      v24 = *(v2 + 2);
      v23 = *(v2 + 3);
      v17 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v2 = sub_23B2F795C((v23 > 1), v24 + 1, 1, v2);
      }

      sub_23B2F75AC(v13, v12);
      v18 = 0x800000023B2F8B30;
      *(v2 + 2) = v17;
      v19 = &v2[16 * v24];
      v20 = 0xD000000000000016;
    }

    *(v19 + 4) = v20;
    *(v19 + 5) = v18;
  }

  v25 = *(v2 + 3);
  if (v17 >= v25 >> 1)
  {
    v2 = sub_23B2F795C((v25 > 1), v17 + 1, 1, v2);
  }

  *(v2 + 2) = v17 + 1;
  v26 = &v2[16 * v17];
  *(v26 + 4) = 125;
  *(v26 + 5) = 0xE100000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FEA8, &qword_23B2F8968);
  sub_23B2F7A68();
  v27 = sub_23B2F7FF8();

  return v27;
}

uint64_t SemanticContentDescriptor.init(labels:list:pixelBuffer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a3)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  *a4 = a1;
  v8 = type metadata accessor for SemanticContentDescriptor(0);
  result = sub_23B2F7084(a2, a4 + *(v8 + 20));
  v10 = a4 + *(v8 + 24);
  *v10 = a3;
  v10[8] = v7;
  return result;
}

char *sub_23B2F795C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E12FED0, &qword_23B2F89F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_23B2F7A68()
{
  result = qword_2814F8840;
  if (!qword_2814F8840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E12FEA8, &qword_23B2F8968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F8840);
  }

  return result;
}

uint64_t sub_23B2F7AE0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD18, &unk_23B2F86A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_23B2F7BB0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12FD18, &unk_23B2F86A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23B2F7C60(uint64_t a1)
{
  sub_23B2F7DA8(319, &qword_2814F8848, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23B2F7D44(319);
    if (v2 <= 0x3F)
    {
      sub_23B2F7DA8(319, &qword_27E12FEC8, &type metadata for PixelBufferProxy, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23B2F7D44(uint64_t a1)
{
  if (!qword_27E12FEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E12FD38, &qword_23B2F82D0);
    v1 = sub_23B2F8028();
    if (!v2)
    {
      atomic_store(v1, &qword_27E12FEC0);
    }
  }
}

void sub_23B2F7DA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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
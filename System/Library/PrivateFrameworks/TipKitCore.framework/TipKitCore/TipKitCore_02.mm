uint64_t sub_1975857C4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  OUTLINED_FUNCTION_5_2(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_41_2();
  sub_19758110C(a1, v1);
  return CoreTipRecord.lastDisplayed.setter(v1);
}

uint64_t CoreTipRecord.lastDisplayed.setter(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_0_35();
  v4 = sub_197560338(v2, v3);
  OUTLINED_FUNCTION_15_5(v4, v5, v6, v7, v8, v4, v9, v10, v12, v13, v14, v15, v16, v17);

  return sub_1975E62E4(a1, &qword_1EAF34988);
}

uint64_t sub_1975858F8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_197560338(&qword_1ED8170E0, type metadata accessor for CoreTipRecord);
  sub_197569718();
  sub_197615E70();
}

void sub_1975859D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_74();
  v8 = v7;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35348, &qword_197620FD8);
  v20 = v8;
  v9 = sub_197568F10(v21);
  if (v21)
  {
    v10 = OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_34_4();
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_14();
    MEMORY[0x1EEE9AC00](v11);
    OUTLINED_FUNCTION_6_0();
    v13 = OUTLINED_FUNCTION_15_9(v12);
    v14(v13);
    sub_197585BF0(*v6, 0x4479616C70736964, 0xEC00000073657461, v10, &v18);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    v9 = v18;
  }

  else
  {
    sub_1975E62E4(&v20, &qword_1EAF34698);
    v15 = sub_19755C610(0x4479616C70736964, 0xEC00000073657461);
    if (v16)
    {
      v17 = v15;
      swift_isUniquelyReferenced_nonNull_native();
      v18 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D00, &unk_19761C4E0);
      sub_197616BF0();

      sub_19756A94C((*(v9 + 56) + 32 * v17), v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
      sub_197616C10();
    }

    else
    {
      OUTLINED_FUNCTION_32_2();
    }

    sub_1975E62E4(v19, &qword_1EAF34698);
  }

  sub_19757A368(v9);
  OUTLINED_FUNCTION_75();
}

_OWORD *sub_197585BF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35348, &qword_197620FD8);
  v25 = v9;
  *&v24 = a1;
  v10 = *a5;
  v11 = sub_19755C610(a2, a3);
  if (__OFADD__(v10[2], (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D00, &unk_19761C4E0);
  if ((sub_197616BF0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_19755C610(a2, a3);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_10:
    result = sub_1976170F0();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  v17 = *a5;
  if (v14)
  {
    v18 = (v17[7] + 32 * v13);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    return sub_19756A94C(&v24, v18);
  }

  else
  {
    v20 = __swift_mutable_project_boxed_opaque_existential_1(&v24, v9);
    MEMORY[0x1EEE9AC00](v20);
    v22 = (&v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    sub_1975E6718(v13, a2, a3, *v22, v17);
    __swift_destroy_boxed_opaque_existential_0Tm(&v24);
  }
}

uint64_t OUTLINED_FUNCTION_68()
{
}

uint64_t sub_197585E28(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a8;
  v9 = v8;
  v56 = a2;
  v57 = a4;
  v55 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = a5;
  v44 = &v38 - v15;
  v41 = *(a5 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v53 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v51 = &v38 - v18;
  v19 = sub_197616860();
  v39 = *(v19 - 8);
  v40 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v38 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v52 = &v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v49 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v48 = &v38 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a6;
  v58 = swift_getAssociatedTypeWitness();
  v45 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v31 = &v38 - v30;
  v32 = sub_197616360();
  v59 = sub_197616B40();
  v54 = sub_197616B50();
  sub_197616AF0();
  (*(v49 + 16))(v48, v46, a3);
  v57 = v31;
  v49 = a3;
  result = sub_197616350();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v50 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_197616890();
      result = __swift_getEnumTagSinglePayload(v25, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v55(v25, v51);
      if (v9)
      {
        (*(v45 + 8))(v57, v58);

        (*(v41 + 32))(v42, v51, v43);
        return (*v34)(v25, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v34)(v25, AssociatedTypeWitness);
      sub_197616B30();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v35 = (v50 + 32);
  v36 = (v50 + 8);
  v37 = v44;
  while (1)
  {
    sub_197616890();
    if (__swift_getEnumTagSinglePayload(v22, 1, AssociatedTypeWitness) == 1)
    {
      (*(v45 + 8))(v57, v58);
      (*(v39 + 8))(v22, v40);
      return v59;
    }

    (*v35)(v37, v22, AssociatedTypeWitness);
    v55(v37, v53);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v36)(v37, AssociatedTypeWitness);
    sub_197616B30();
  }

  (*v36)(v37, AssociatedTypeWitness);
  (*(v45 + 8))(v57, v58);

  return (*(v41 + 32))(v42, v53, v43);
}

uint64_t sub_1975864BC(char *a1, uint64_t (*a2)(uint64_t, char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = *a1;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(v11, &a1[*(TupleTypeMetadata2 + 48)]);
  if (v7)
  {
    *a7 = v7;
  }

  return result;
}

BOOL sub_197586584(_BYTE *a1)
{
  if (qword_1ED817298 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_1ED817298);
  }

  return *a1 == 0;
}

uint64_t sub_1975865D0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

double sub_197586610@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v4 = sub_197586658(a3), (v5 & 1) != 0))
  {
    v6 = OUTLINED_FUNCTION_22_0(v4);
    sub_1975586C0(v6, v7);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

unint64_t sub_197586658(uint64_t a1)
{
  v2 = sub_197616980();

  return sub_197587CFC(a1, v2);
}

uint64_t sub_1975866F8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v3 = v2;
  OUTLINED_FUNCTION_110();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 168) = v0;

  if (!v0)
  {
    v8 = *(v3 + 120);

    return MEMORY[0x1EEE6DFA0](sub_1975867F4, v8, 0);
  }

  return result;
}

uint64_t sub_1975867F4()
{
  if (!v0[12])
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    OUTLINED_FUNCTION_3();
    goto LABEL_5;
  }

  v1 = v0[21];
  v2 = v0[18];
  sub_197586AD8(v0[12], v0[16], v0[17], sub_1975FFB50, 0);
  OUTLINED_FUNCTION_114();

  if (v1)
  {
    sub_197615C90();

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    OUTLINED_FUNCTION_3();
LABEL_5:

    return v3();
  }

  if (v2)
  {
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    v0[22] = v6;
    *(v6 + 16) = v2;
    *(v6 + 24) = v5;
    v7 = swift_task_alloc();
    v0[23] = v7;
    *v7 = v0;
    v7[1] = sub_1975FF930;

    return sub_1975C4064();
  }

  else
  {
    sub_197615C90();
    __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
    v8 = swift_task_alloc();
    v9 = OUTLINED_FUNCTION_104(v8);
    *v9 = v10;
    OUTLINED_FUNCTION_13_20(v9);

    return MEMORY[0x1EEE6D8D0](v0 + 12);
  }
}

uint64_t sub_197586A60()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_197586A98()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_197586AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v12 = sub_197586B80(a1, v5, a2, a3, a4, a5);
  v13 = v12;
  if (!v6 && sub_197597500(v12) == *(v12 + 16) && (v14 & 0x100) != 0)
  {

    return 0;
  }

  return v13;
}

uint64_t sub_197586B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v67 = a5;
  v68 = a6;
  v58 = a3;
  v11 = sub_197615FA0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  if (v16)
  {
    v50 = v15;
    v51 = v13;
    v74 = MEMORY[0x1E69E7CC0];
    sub_197587EBC(0, v16, 0);
    v17 = v74;
    result = sub_1975880BC(a1);
    v21 = 0;
    v64 = a1 + 64;
    v65 = v12 + 16;
    v66 = (v12 + 8);
    v49 = a1 + 72;
    v70 = v12;
    v56 = a4;
    v57 = a2;
    v53 = a1;
    v52 = v16;
    if ((result & 0x8000000000000000) == 0)
    {
      while (result < 1 << *(a1 + 32))
      {
        if ((*(v64 + 8 * (result >> 6)) & (1 << result)) == 0)
        {
          goto LABEL_41;
        }

        if (*(a1 + 36) != v19)
        {
          goto LABEL_42;
        }

        v60 = 1 << result;
        v61 = result >> 6;
        v55 = v20;
        v62 = result;
        v63 = v19;
        v59 = v21;
        v22 = sub_197587EDC(*(*(a1 + 56) + 8 * result), v58, a4);
        if (v7)
        {

LABEL_33:

          return v17;
        }

        v23 = *(v22 + 16);
        if (v23)
        {
          v54 = v17;
          v73 = MEMORY[0x1E69E7CC0];
          v71 = v22;
          sub_1975D20B0(0, v23, 0);
          result = v71;
          v24 = 0;
          v25 = v73;
          v69 = v71 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
          v17 = v51;
          v26 = v50;
          while (v24 < *(result + 16))
          {
            (*(v12 + 16))(v26, v69 + *(v12 + 72) * v24, v17);
            v27 = sub_197615F90();
            MEMORY[0x1EEE9AC00](v27);
            v29 = v67;
            v28 = v68;
            *(&v49 - 4) = v26;
            *(&v49 - 3) = v29;
            *(&v49 - 2) = v28;
            v30 = sub_1976076A8(sub_1976079D0, (&v49 - 6), v27);
            if (v7)
            {

              (*v66)(v26, v17);

              goto LABEL_33;
            }

            v31 = v30;
            v72 = 0;
            v32 = v23;

            (*v66)(v26, v17);
            v73 = v25;
            v34 = *(v25 + 16);
            v33 = *(v25 + 24);
            if (v34 >= v33 >> 1)
            {
              sub_1975D20B0(v33 > 1, v34 + 1, 1);
              v26 = v50;
              v17 = v51;
              v25 = v73;
            }

            ++v24;
            *(v25 + 16) = v34 + 1;
            *(v25 + 8 * v34 + 32) = v31;
            v23 = v32;
            v35 = v32 == v24;
            v12 = v70;
            result = v71;
            v7 = v72;
            if (v35)
            {

              v17 = v54;
              goto LABEL_17;
            }
          }

          __break(1u);
          break;
        }

        v25 = MEMORY[0x1E69E7CC0];
LABEL_17:
        v74 = v17;
        v37 = *(v17 + 16);
        v36 = *(v17 + 24);
        result = v62;
        v38 = v63;
        v39 = v61;
        if (v37 >= v36 >> 1)
        {
          sub_197587EBC(v36 > 1, v37 + 1, 1);
          v39 = v61;
          result = v62;
          v38 = v63;
          v17 = v74;
        }

        *(v17 + 16) = v37 + 1;
        *(v17 + 8 * v37 + 32) = v25;
        a1 = v53;
        v40 = 1 << *(v53 + 32);
        if (result >= v40)
        {
          goto LABEL_43;
        }

        v41 = *(v64 + 8 * v39);
        if ((v41 & v60) == 0)
        {
          goto LABEL_44;
        }

        if (*(v53 + 36) != v38)
        {
          goto LABEL_45;
        }

        v42 = v41 & (-2 << (result & 0x3F));
        if (v42)
        {
          v40 = __clz(__rbit64(v42)) | result & 0x7FFFFFFFFFFFFFC0;
          v43 = v52;
        }

        else
        {
          v44 = v39 << 6;
          v45 = v39 + 1;
          v46 = (v49 + 8 * v39);
          v43 = v52;
          while (v45 < (v40 + 63) >> 6)
          {
            v48 = *v46++;
            v47 = v48;
            v44 += 64;
            ++v45;
            if (v48)
            {
              sub_1976079F0(result, v38, v55 & 1);
              v40 = __clz(__rbit64(v47)) + v44;
              goto LABEL_29;
            }
          }

          sub_1976079F0(result, v38, v55 & 1);
        }

LABEL_29:
        v21 = v59 + 1;
        a4 = v56;
        v12 = v70;
        if (v59 + 1 == v43)
        {

          goto LABEL_35;
        }

        v20 = 0;
        v19 = *(a1 + 36);
        result = v40;
        if (v40 < 0)
        {
          break;
        }
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
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
LABEL_35:

    return v17;
  }

  return result;
}

unint64_t sub_1975870F8()
{
  result = qword_1ED816C20;
  if (!qword_1ED816C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF356D8, &qword_1976227E8);
    sub_197588DA4(&qword_1ED816BE0, &qword_1EAF356D0, &qword_1976227E0);
    sub_197588E3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816C20);
  }

  return result;
}

uint64_t sub_19758719C@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355A0, &qword_197622258);
  v5 = *(v4 - 8);
  v19 = v4;
  v20 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34710, &unk_197622260);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34750, &qword_1976193C8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v18 - v14;
  sub_197559AAC(&qword_1ED816CE0, &qword_1EAF34710, &unk_197622260, MEMORY[0x1E6968DA8]);
  sub_197615820();
  v21 = type metadata accessor for CoreTipRecord(0);
  v22 = sub_19755FF88(&qword_1ED8170E0, 255, type metadata accessor for CoreTipRecord, &protocol conformance descriptor for CoreTipRecord);
  swift_getKeyPath();
  sub_197615700();

  (*(v9 + 8))(v11, v8);
  sub_197615F50();
  sub_197615810();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355A8, &unk_1976222B0);
  a3[4] = sub_197587590();
  __swift_allocate_boxed_opaque_existential_0(a3);
  sub_197559AAC(&qword_1ED816AE8, &qword_1EAF34750, &qword_1976193C8, MEMORY[0x1E6968D58]);
  sub_197559AAC(&qword_1ED816D10, &qword_1EAF355A0, &qword_197622258, MEMORY[0x1E6968D20]);
  sub_19755FF88(&qword_1ED816C88, 255, MEMORY[0x1E697BC90], MEMORY[0x1E697BCA8]);
  v16 = v19;
  sub_1976156F0();
  (*(v20 + 8))(v7, v16);
  return (*(v13 + 8))(v15, v12);
}

unint64_t sub_197587590()
{
  result = qword_1ED816B08;
  if (!qword_1ED816B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF355A8, &unk_1976222B0);
    sub_197603898();
    sub_197595A48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816B08);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_51()
{

  return swift_allocObject();
}

uint64_t Double.seconds.getter(double a1)
{
  v1 = trunc(a1);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_19758781C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_19758110C(a2, &v7 - v5);
  v8 = v2;

  swift_setAtReferenceWritableKeyPath();
}

uint64_t sub_197587914(uint64_t a1)
{
  sub_197568F10(a1);
  v1 = OUTLINED_FUNCTION_28_5();
  OUTLINED_FUNCTION_73(v1 & 0xFFFFFFFFFFFFLL | 0x4479000000000000, 0xEC00000073657461);

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35348, &qword_197620FD8);
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_1975E62E4(v4, &qword_1EAF34698);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1975879D8(uint64_t a1)
{
  sub_197568F10(a1);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_59();

  if (v12)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
    if (OUTLINED_FUNCTION_31_5(v1, v2, v1, MEMORY[0x1E69E6370], v3, v4, v5, v6, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9), v11[0]))
    {
      return v10;
    }
  }

  else
  {
    sub_1975E62E4(v11, &qword_1EAF34698);
  }

  return 1;
}

uint64_t sub_197587A7C(uint64_t a1)
{
  OUTLINED_FUNCTION_15_7(OBJC_IVAR____TtC10TipKitCore7CoreTip__firstEligible);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34990, &qword_19761B1D0) + 28);
  sub_19755C7C8(v1 + v3, &qword_1EAF34988, &qword_197620CA0);
  sub_19758110C(a1, v1 + v3);
  os_unfair_lock_unlock(v1);
  return sub_19755C7C8(a1, &qword_1EAF34988, &qword_197620CA0);
}

uint64_t Sequence.mapEnumerated<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v10 = sub_197616C50();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21[-v14];
  MEMORY[0x19A8E2B20](a3, a5);
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a1;
  v26 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C80, &qword_19761BF20);
  WitnessTable = swift_getWitnessTable();
  v18 = sub_197585E28(sub_197586494, v21, v10, a4, v16, WitnessTable, MEMORY[0x1E69E7288], &v27);
  (*(v12 + 8))(v15, v10);
  return v18;
}

uint64_t sub_197587CBC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

unint64_t sub_197587CFC(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_19758669C(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x19A8E3130](v8, a1);
    sub_197587DC0(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_197587E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_197615F20();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_197587EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1975D27BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_197587EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35688, &qword_197622798);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35690, &qword_1976227A0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16[-v11];
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = sub_197615FA0();
  sub_197615AE0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35698, &qword_1976227A8);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v13);
  sub_197589034();
  sub_197615EA0();
  v14 = sub_197615C30();
  (*(v10 + 8))(v12, v9);
  return v14;
}

uint64_t sub_1975880FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v74 = a3;
  v75 = a4;
  v59 = a2;
  v80 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF356A0, &qword_1976227B0);
  v7 = *(v6 - 8);
  v78 = v6;
  v79 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF356A8, &qword_1976227B8);
  v10 = *(v9 - 8);
  v81 = v9;
  v82 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v51 - v11;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BB0, &qword_19761BAD0);
  v72 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v66 = &v51 - v12;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF356B0, &qword_1976227C0);
  v85 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v62 = &v51 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF356B8, &qword_1976227C8);
  v15 = *(v14 - 8);
  v68 = v14;
  v69 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v51 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF356C0, &qword_1976227D0);
  v61 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v18 = &v51 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF356C8, &qword_1976227D8);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v51 - v21;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF356D0, &qword_1976227E0);
  v58 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v24 = &v51 - v23;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF356D8, &qword_1976227E8);
  v64 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v56 = &v51 - v25;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF356E0, &qword_1976227F0);
  v73 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v83 = *a1;
  v84 = &v51 - v26;
  v27 = sub_197559AAC(&qword_1ED816BA8, &qword_1EAF356C8, &qword_1976227D8, MEMORY[0x1E6968DA8]);
  sub_197615820();
  swift_getKeyPath();
  sub_197615700();

  v28 = *(v20 + 8);
  v28(v22, v19);
  v55 = v28;
  v54 = v20 + 8;
  v86 = v59;
  sub_197615810();
  v59 = MEMORY[0x1E6968D58];
  sub_197559AAC(&qword_1ED816BD8, &qword_1EAF356D0, &qword_1976227E0, MEMORY[0x1E6968D58]);
  v52 = MEMORY[0x1E6968D20];
  sub_197559AAC(&qword_1ED816C08, &qword_1EAF356C0, &qword_1976227D0, MEMORY[0x1E6968D20]);
  v29 = v57;
  v30 = v60;
  sub_1976156F0();
  (*(v61 + 8))(v18, v30);
  (*(v58 + 8))(v24, v29);
  v53 = v27;
  sub_197615820();
  swift_getKeyPath();
  v31 = v62;
  sub_197615700();

  v28(v22, v19);
  v86 = v74;
  v87 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34400, &qword_1976185C0);
  v32 = v66;
  sub_197615810();
  v74 = sub_197559AAC(&qword_1ED816BE8, &qword_1EAF356B0, &qword_1976227C0, v59);
  sub_197559AAC(&qword_1ED816CF0, &qword_1EAF34BB0, &qword_19761BAD0, v52);
  v61 = sub_19757B748(&qword_1ED816C68, MEMORY[0x1E69E6180], MEMORY[0x1E69E7C80]);
  v33 = v65;
  v34 = v31;
  v35 = v67;
  v36 = v70;
  sub_197615730();
  (*(v72 + 8))(v32, v36);
  v37 = *(v85 + 8);
  v85 += 8;
  v37(v34, v35);
  sub_197559AAC(&qword_1ED816C18, &qword_1EAF356D8, &qword_1976227E8, MEMORY[0x1E6968D08]);
  v75 = MEMORY[0x1E6968D90];
  sub_197559AAC(&qword_1ED816BB8, &qword_1EAF356B8, &qword_1976227C8, MEMORY[0x1E6968D90]);
  v38 = v56;
  v39 = v33;
  v40 = v63;
  v41 = v68;
  sub_197615780();
  (*(v69 + 8))(v39, v41);
  (*(v64 + 8))(v38, v40);
  sub_197615820();
  swift_getKeyPath();
  sub_197615700();

  v55(v22, v19);
  v42 = v77;
  sub_197615770();
  sub_197559AAC(&qword_1ED816C48, &qword_1EAF356A0, &qword_1976227B0, MEMORY[0x1E6968B00]);
  v43 = v76;
  v44 = v78;
  sub_197615730();
  (*(v79 + 8))(v42, v44);
  v37(v34, v35);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF356E8, &qword_197622858);
  v46 = v80;
  v80[3] = v45;
  v46[4] = sub_197607A64();
  __swift_allocate_boxed_opaque_existential_0(v46);
  sub_197559AAC(&qword_1ED816C38, &qword_1EAF356E0, &qword_1976227F0, MEMORY[0x1E6968B68]);
  sub_197559AAC(&qword_1ED816BC8, &qword_1EAF356A8, &qword_1976227B8, v75);
  v47 = v84;
  v48 = v71;
  v49 = v81;
  sub_197615780();
  (*(v82 + 8))(v43, v49);
  return (*(v73 + 8))(v47, v48);
}

uint64_t sub_197588CB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_197615F70();
  *a1 = result;
  return result;
}

uint64_t sub_197588CE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_197615F80();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_197588D18()
{
  result = qword_1ED816C40;
  if (!qword_1ED816C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF356E0, &qword_1976227F0);
    sub_1975870F8();
    sub_197588EC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816C40);
  }

  return result;
}

uint64_t sub_197588DA4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_197559AAC(&qword_1ED816BB0, &qword_1EAF356C8, &qword_1976227D8, MEMORY[0x1E6968DA0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_197588E3C()
{
  result = qword_1ED816C10;
  if (!qword_1ED816C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF356C0, &qword_1976227D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816C10);
  }

  return result;
}

unint64_t sub_197588EC0()
{
  result = qword_1ED816BC0;
  if (!qword_1ED816BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF356B8, &qword_1976227C8);
    sub_197588DA4(&qword_1ED816BF0, &qword_1EAF356B0, &qword_1976227C0);
    sub_19757B7B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816BC0);
  }

  return result;
}

unint64_t sub_197588F64()
{
  result = qword_1ED816BD0;
  if (!qword_1ED816BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF356A8, &qword_1976227B8);
    sub_197588DA4(&qword_1ED816BF0, &qword_1EAF356B0, &qword_1976227C0);
    sub_197559AAC(&qword_1ED816C50, &qword_1EAF356A0, &qword_1976227B0, MEMORY[0x1E6968AF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816BD0);
  }

  return result;
}

unint64_t sub_197589034()
{
  result = qword_1ED816B70;
  if (!qword_1ED816B70)
  {
    sub_197615FA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816B70);
  }

  return result;
}

double sub_19758908C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  sub_1975674F0(a1, &v15);
  if (v16)
  {
    sub_19756A94C(&v15, v17);
    sub_1975586C0(v17, &v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D08, &qword_19761ECE0);
    if (!swift_dynamicCast())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
      sub_1976160B0();
    }

    v3 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
    v4 = sub_1976160A0();

    *&v15 = 0;
    v5 = [v3 archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v15];

    v6 = v15;
    if (v5)
    {
      v7 = sub_1976159A0();
      v9 = v8;

      *(a2 + 24) = MEMORY[0x1E6969080];
      *a2 = v7;
      *(a2 + 8) = v9;
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      return result;
    }

    v11 = v6;
    v12 = sub_197615830();

    swift_willThrow();
    if (qword_1ED816C98 != -1)
    {
      OUTLINED_FUNCTION_5_0(&qword_1ED816C98);
    }

    v13 = type metadata accessor for logger(0);
    __swift_project_value_buffer(v13, qword_1ED816CA0);
    *&v15 = 0;
    *(&v15 + 1) = 0xE000000000000000;
    sub_197616A20();
    MEMORY[0x19A8E2A50](0xD000000000000032, 0x8000000197626950);
    swift_getErrorValue();
    sub_197616EB0();
    sub_197558864(v15, *(&v15 + 1), v14);

    __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  else
  {
    sub_19755643C(&v15);
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_197589344(uint64_t a1)
{
  result = MEMORY[0x19A8E2E80](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_197575220(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_197589404(uint64_t a1, char a2, uint64_t a3)
{
  v8 = sub_1975749A0();
  v14 = a1;
  v15 = a2;
  v11 = v3;
  v12 = a3;
  sub_1975894C8(sub_19758E2D0, v13, sub_1975EAFB0, &v10, v8);

  if (!v4)
  {
    result = sub_197615C20();
    if (result)
    {
      return sub_197615C70();
    }
  }

  return result;
}

uint64_t sub_1975894C8(uint64_t (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5)
{
  result = sub_197567E4C(a5);
  v9 = result;
  for (i = 0; v9 != i; ++i)
  {
    if ((a5 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x19A8E31E0](i, a5);
      v11 = result;
    }

    else
    {
      if (i >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v11 = *(a5 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return result;
    }

    v14 = v11;
    v12 = a1(&v14);
    if (v5)
    {
    }

    if (v12)
    {
      a3(&v14);
    }
  }

  return result;
}

char *sub_1975895DC(uint64_t a1)
{
  v2 = v1;
  v101 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35390, &qword_1976214A8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v99 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v100 = &v87 - v7;
  v8 = type metadata accessor for DeviceProfile.ProfileContent(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v97 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v87 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v87 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v98 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v87 - v19;
  v21 = sub_197615970();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v87 - v26;
  if (qword_1ED8174E0 != -1)
  {
    swift_once();
  }

  if (byte_1ED8174EA != 1)
  {
    v28 = a1;
    goto LABEL_7;
  }

  sub_19755F9FC(a1, v20, &qword_1EAF34610, &qword_197621E30);
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) != 1)
  {
    v95 = v15;
    (*(v22 + 32))(v27, v20, v21);
    if (qword_1ED816E70 != -1)
    {
      swift_once();
    }

    v96 = v27;
    if ((byte_1ED816549 & 1) == 0)
    {
      if (qword_1ED817510 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (qword_1ED817578)
      {
        v29 = qword_1ED817570;
        v30 = qword_1ED817578;
      }

      else
      {
        if (qword_1ED8174D8 != -1)
        {
          swift_once();
        }

        if (qword_1ED81D218)
        {
          v29 = qword_1ED81D210;
          v30 = qword_1ED81D218;
        }

        else
        {
          v94 = 0;
          type metadata accessor for CFBundle(0);
          v31 = sub_1975A5740();
          if (v32)
          {
            v29 = v31;
          }

          else
          {
            v29 = 0;
          }

          if (v32)
          {
            v30 = v32;
          }

          else
          {
            v30 = 0xE000000000000000;
          }
        }
      }

      if (v29 == 0x6C7070612E6D6F63 && v30 == 0xEF64737069742E65)
      {
        goto LABEL_34;
      }

      v34 = sub_197616EF0();

      v27 = v96;
      if (v34)
      {
        goto LABEL_35;
      }

      if (qword_1ED817578)
      {
        v35 = qword_1ED817570;
        v36 = qword_1ED817578;
      }

      else
      {
        if (qword_1ED8174D8 != -1)
        {
          swift_once();
        }

        if (qword_1ED81D218)
        {
          v35 = qword_1ED81D210;
          v36 = qword_1ED81D218;
        }

        else
        {
          v94 = 0;
          type metadata accessor for CFBundle(0);
          v76 = sub_1975A5740();
          if (v77)
          {
            v35 = v76;
            v36 = v77;
          }

          else
          {
            v35 = 0;
            v36 = 0xE000000000000000;
          }
        }
      }

      if (v35 == 0xD000000000000010 && 0x8000000197623CB0 == v36)
      {
LABEL_34:

        v27 = v96;
      }

      else
      {
        v86 = sub_197616EF0();

        v27 = v96;
        if ((v86 & 1) == 0)
        {
          sub_19755C7C8(a1, &qword_1EAF34610, &qword_197621E30);
          (*(v22 + 8))(v27, v21);
          goto LABEL_8;
        }
      }
    }

LABEL_35:
    v94 = a1;
    v101 = v22;
    v37 = *(v22 + 16);
    v37(&v2[OBJC_IVAR____TtC10TipKitCore13DeviceProfile_url], v27, v21);
    _s11FileHandlerCMa();
    v38 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v38 + 112) = 0;
    *&v2[OBJC_IVAR____TtC10TipKitCore13DeviceProfile_fileHandler] = v38;
    v93 = v37;
    v37(v25, v27, v21);
    v39 = v8[6];
    v40 = sub_197615A60();
    v91 = v39;
    __swift_storeEnumTagSinglePayload(&v13[v39], 1, 1, v40);
    v41 = &v13[v8[7]];
    *v41 = 0;
    *(v41 + 1) = 0;
    v89 = v8[8];
    v88 = v40;
    __swift_storeEnumTagSinglePayload(&v13[v89], 1, 1, v40);
    v42 = v8[9];
    v43 = _s12DisplayEventVMa(0);
    v92 = v42;
    v87 = v43;
    __swift_storeEnumTagSinglePayload(&v13[v42], 1, 1, v43);
    v13[v8[10]] = 3;
    v44 = v8[11];
    v90 = sub_1976160B0();
    *&v13[v44] = v90;
    v45 = v8[12];
    *&v13[v45] = sub_1976160B0();
    v46 = objc_opt_self();
    v47 = [v46 defaultManager];
    LOBYTE(v39) = sub_19755F398(v25);

    if (v39)
    {
      v48 = v98;
      v93(v98, v25, v21);
      __swift_storeEnumTagSinglePayload(v48, 0, 1, v21);
      v49 = v99;
      sub_19758B004(v48, 1, 0);
      v93 = *(v101 + 8);
      (v93)(v25, v21);
      sub_19755C7C8(v48, &qword_1EAF34610, &qword_197621E30);
      if (__swift_getEnumTagSinglePayload(v49, 1, v8) != 1)
      {
        v51 = v21;
        v52 = v46;
        v53 = v97;
        sub_1975ED1BC(v49, v97, type metadata accessor for DeviceProfile.ProfileContent);
        sub_19755C7C8(&v13[v91], &qword_1EAF34988, &qword_197620CA0);
        sub_19755C7C8(&v13[v89], &qword_1EAF34988, &qword_197620CA0);
        sub_19755C7C8(&v13[v92], &qword_1EAF35260, &qword_1976202C8);

        v54 = v53;
        v46 = v52;
        v21 = v51;
        sub_1975ED1BC(v54, v13, type metadata accessor for DeviceProfile.ProfileContent);
        v50 = v100;
        sub_19758C664(v13, v100);
        __swift_storeEnumTagSinglePayload(v50, 0, 1, v8);
        sub_19758CA58(v13, type metadata accessor for DeviceProfile.ProfileContent);
LABEL_41:
        v55 = v95;
        if (__swift_getEnumTagSinglePayload(v50, 1, v8) == 1)
        {
          v56 = v88;
          __swift_storeEnumTagSinglePayload(v55 + v8[6], 1, 1, v88);
          v57 = (v55 + v8[7]);
          *v57 = 0;
          v57[1] = 0;
          __swift_storeEnumTagSinglePayload(v55 + v8[8], 1, 1, v56);
          __swift_storeEnumTagSinglePayload(v55 + v8[9], 1, 1, v87);
          v58 = v46;
          v59 = v8[10];
          v60 = v8[11];
          *(v95 + v60) = sub_1976160B0();
          v61 = v8[12];
          v55 = v95;
          *(v55 + v61) = sub_1976160B0();
          *v55 = 0;
          *(v55 + v59) = 0;
          v46 = v58;
        }

        else
        {
          sub_1975ED1BC(v50, v55, type metadata accessor for DeviceProfile.ProfileContent);
        }

        v62 = v96;
        sub_1975ED1BC(v55, &v2[OBJC_IVAR____TtC10TipKitCore13DeviceProfile_content], type metadata accessor for DeviceProfile.ProfileContent);
        v63 = [v46 defaultManager];
        LOBYTE(v62) = sub_19755F398(v62);

        if ((v62 & 1) == 0)
        {
          if (qword_1ED816C98 != -1)
          {
            swift_once();
          }

          v64 = type metadata accessor for logger(0);
          __swift_project_value_buffer(v64, qword_1ED816CA0);
          sub_197558864(0xD000000000000029, 0x80000001976259D0, v65);
          sub_1975EC338();
        }

        if (qword_1ED817510 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (qword_1ED817578)
        {
          v66 = qword_1ED817570;
          v67 = qword_1ED817578;
        }

        else
        {
          if (qword_1ED8174D8 != -1)
          {
            swift_once();
          }

          if (qword_1ED81D218)
          {
            v66 = qword_1ED81D210;
            v67 = qword_1ED81D218;
          }

          else
          {
            type metadata accessor for CFBundle(0);
            v68 = sub_1975A5740();
            if (v69)
            {
              v66 = v68;
              v67 = v69;
            }

            else
            {
              v66 = 0;
              v67 = 0xE000000000000000;
            }
          }
        }

        if (v66 != 0x6C7070612E6D6F63 || v67 != 0xEF64737069742E65)
        {
          v71 = sub_197616EF0();

          if (v71)
          {
LABEL_90:
            sub_19755C7C8(v94, &qword_1EAF34610, &qword_197621E30);
            (v93)(v96, v21);
            return v2;
          }

          if (qword_1ED817578)
          {
            v72 = qword_1ED817570;
            v73 = qword_1ED817578;
          }

          else
          {
            if (qword_1ED8174D8 != -1)
            {
              swift_once();
            }

            if (qword_1ED81D218)
            {
              v72 = qword_1ED81D210;
              v73 = qword_1ED81D218;
            }

            else
            {
              type metadata accessor for CFBundle(0);
              v74 = sub_1975A5740();
              if (v75)
              {
                v72 = v74;
                v73 = v75;
              }

              else
              {
                v72 = 0;
                v73 = 0xE000000000000000;
              }
            }
          }

          if (v72 != 0xD000000000000010 || 0x8000000197623CB0 != v73)
          {
            v79 = sub_197616EF0();

            if ((v79 & 1) == 0)
            {
              if (qword_1ED816C98 != -1)
              {
                swift_once();
              }

              v80 = type metadata accessor for logger(0);
              __swift_project_value_buffer(v80, qword_1ED816CA0);
              v102 = 0;
              v103 = 0xE000000000000000;
              sub_197616A20();

              v102 = 0xD000000000000028;
              v103 = 0x8000000197625A00;
              v81 = v96;
              v82 = sub_197615920();
              MEMORY[0x19A8E2A50](v82);

              sub_197558864(v102, v103, v83);

              sub_19758CDB8(v81);
            }

            goto LABEL_90;
          }
        }

        goto LABEL_90;
      }

      sub_19755C7C8(v49, &qword_1EAF35390, &qword_1976214A8);
    }

    else
    {
      v93 = *(v101 + 8);
      (v93)(v25, v21);
    }

    sub_19755C7C8(&v13[v91], &qword_1EAF34988, &qword_197620CA0);
    sub_19755C7C8(&v13[v89], &qword_1EAF34988, &qword_197620CA0);
    sub_19755C7C8(&v13[v92], &qword_1EAF35260, &qword_1976202C8);

    v50 = v100;
    __swift_storeEnumTagSinglePayload(v100, 1, 1, v8);
    goto LABEL_41;
  }

  sub_19755C7C8(a1, &qword_1EAF34610, &qword_197621E30);
  v28 = v20;
LABEL_7:
  sub_19755C7C8(v28, &qword_1EAF34610, &qword_197621E30);
LABEL_8:
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_19758A52C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_197615880();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  v8 = v7 - v6;
  v9 = sub_197615970();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_0();
  v15 = v14 - v13;
  if (qword_1ED8174E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_1ED8174E0);
  }

  if (byte_1ED8174EA == 1)
  {
    v16 = [objc_opt_self() defaultManager];
    URL.init(groupIdentifier:fileManager:)(0xD000000000000018, 0x8000000197623C40, v16);
    (*(v4 + 104))(v8, *MEMORY[0x1E6968F68], v2);
    sub_1975607A8();
    sub_197615950();
    (*(v4 + 8))(v8, v2);
    (*(v11 + 8))(v15, v9);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v9);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v9);
  }
}

char *sub_19758A864()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30);
  OUTLINED_FUNCTION_5_2(v1);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8_9();
  sub_19758A52C(v0);
  type metadata accessor for DeviceProfile(0);
  swift_allocObject();
  result = sub_1975895DC(v0);
  qword_1ED81D1D0 = result;
  return result;
}

void sub_19758A8F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_197616860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_19758A944(uint64_t a1)
{
  sub_19758A8F0(319, &qword_1ED816D88, MEMORY[0x1E6969530]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_19758AEF0(319, &qword_1ED816C78, MEMORY[0x1E69E6158]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_19758A8F0(319, &qword_1ED816D48, _s12DisplayEventVMa);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_19758AEF0(319, &qword_1ED816848, &_s8UserTypeON);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_19758AE98(319, &qword_1ED816808, &type metadata for AnyCodable);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            sub_19758AE98(319, &qword_1ED816720, &_s19IneligibilityReasonON);
            v2 = v12;
            if (v13 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v2;
}

uint64_t sub_19758AADC(uint64_t a1)
{
  result = sub_197615970();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DeviceProfile.ProfileContent(319);
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

void sub_19758ABB4()
{
  OUTLINED_FUNCTION_5_22();
  CoreTipRecord.status.getter();
  OUTLINED_FUNCTION_10_18();
  if (!v8)
  {
    if (qword_1ED816850 != -1)
    {
      v0 = swift_once();
    }

    if (qword_1ED81D1D0)
    {
      CoreTipRecord.id.getter(v0, v1, v2, v3, v4, v5, v6, v7, v25, v27, v29, v31, v33, v35, v37, v39, vars0, vars8);
      v11 = sub_19758D0A4(v9, v10);

      if (v11)
      {
        if (qword_1ED816C98 != -1)
        {
          OUTLINED_FUNCTION_5_0(&qword_1ED816C98);
        }

        v12 = type metadata accessor for logger(0);
        __swift_project_value_buffer(v12, qword_1ED816CA0);
        OUTLINED_FUNCTION_2_30();
        sub_197616A20();

        OUTLINED_FUNCTION_1_36(v13, v14, v15, v16, v17, v18, v19, v20, v26, v28, v30, v32, v34, v36, v38, v40, vars0a, vars8a);
        MEMORY[0x19A8E2A50]();

        OUTLINED_FUNCTION_13_12();
        MEMORY[0x19A8E2A50](0xD000000000000021);
        OUTLINED_FUNCTION_6_17();
        sub_197558864(v21, v22, v23);

        OUTLINED_FUNCTION_3_30();
        sub_1975E92FC(v24);
      }
    }
  }
}

void URL.init(groupIdentifier:fileManager:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1976161B0();
  v7 = [a3 containerURLForSecurityApplicationGroupIdentifier_];

  if (v7)
  {

    sub_197615910();
  }

  else
  {
    sub_197616A20();

    MEMORY[0x19A8E2A50](a1, a2);

    sub_19759228C();
    swift_allocError();
    *v8 = 0xD000000000000021;
    v8[1] = 0x8000000197626B20;
    swift_willThrow();
  }
}

uint64_t type metadata accessor for DeviceProfile.ProfileContent(uint64_t a1)
{
  result = qword_1ED816908;
  if (!qword_1ED816908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19758AE98(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_197616110();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_19758AEF0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_197616860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for DeviceProfile(uint64_t a1)
{
  result = qword_1ED816838;
  if (!qword_1ED816838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19758AF88(uint64_t a1)
{
  result = sub_197615A60();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_19758B4F8(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v5 = v4;
  v29[1] = *MEMORY[0x1E69E9840];
  v29[0] = 0;
  v28 = xmmword_19761D220;
  v10 = sub_1976158C0();
  v11 = swift_allocObject();
  v11[2] = &v28;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = v29;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_19758BE54;
  *(v12 + 24) = v11;
  v26 = sub_19758BE88;
  v27 = v12;
  v22 = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_19758BD70;
  v25 = &block_descriptor;
  v13 = _Block_copy(&v22);

  v22 = 0;
  [v5 coordinateReadingItemAtURL:v10 options:a1 error:&v22 byAccessor:v13];
  _Block_release(v13);

  v14 = v22;
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  if (v14)
  {
    goto LABEL_7;
  }

  if (v29[0])
  {
    v15 = v29[0];
LABEL_7:
    swift_willThrow();
    sub_197576558(v28, *(&v28 + 1));

    return;
  }

  v16 = *(&v28 + 1);
  if (*(&v28 + 1) >> 60 == 15)
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_197616A20();
    MEMORY[0x19A8E2A50](0xD000000000000031, 0x8000000197625A60);
    v17 = sub_1976158A0();
    MEMORY[0x19A8E2A50](v17);

    v18 = v22;
    v19 = v23;
    sub_19759228C();
    swift_allocError();
    *v20 = v18;
    v20[1] = v19;
    goto LABEL_7;
  }

  v21 = v28;
  *a4 = v28;
  a4[1] = v16;
  sub_1975766B8(v21, v16);
  sub_197576558(v21, v16);
}

void *sub_19758B804()
{
  v1 = v0;
  *(v0 + 24) = 0;
  if (sub_19758D65C())
  {
    sub_19758DA40();
    v2 = sub_19758DA88(0x6C7070612E6D6F63, 0xEF64737069742E65, 0);
    *(v0 + 16) = v2;
    [v2 synchronize];
    if (qword_1ED816C98 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for logger(0);
    __swift_project_value_buffer(v3, qword_1ED816CA0);
    sub_197558864(0xD00000000000001DLL, 0x8000000197626B00, v4);
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

void sub_19758B928()
{
  OUTLINED_FUNCTION_5_22();
  CoreTipRecord.status.getter();
  OUTLINED_FUNCTION_10_18();
  if (!v1 && !sub_1975785C8(v0))
  {
    v2 = sub_1975879D8(0);
    if (v2)
    {
      if (qword_1ED816B18 != -1)
      {
        v2 = swift_once();
      }

      if (qword_1ED81D1C0)
      {
        CoreTipRecord.id.getter(v2, v3, v4, v5, v6, v7, v8, v9, v26, v28, v30, v32, v34, v36, v38, v40, vars0, vars8);
        v12 = sub_19758BA90(v10, v11);

        if (v12)
        {
          if (qword_1ED816C98 != -1)
          {
            OUTLINED_FUNCTION_5_0(&qword_1ED816C98);
          }

          v13 = type metadata accessor for logger(0);
          __swift_project_value_buffer(v13, qword_1ED816CA0);
          OUTLINED_FUNCTION_2_30();
          sub_197616A20();

          OUTLINED_FUNCTION_1_36(v14, v15, v16, v17, v18, v19, v20, v21, v27, v29, v31, v33, v35, v37, v39, v41, vars0a, vars8a);
          MEMORY[0x19A8E2A50]();

          OUTLINED_FUNCTION_13_12();
          MEMORY[0x19A8E2A50](0xD000000000000026);
          OUTLINED_FUNCTION_6_17();
          sub_197558864(v22, v23, v24);

          OUTLINED_FUNCTION_3_30();
          sub_1975E92FC(v25);
        }
      }
    }
  }
}

BOOL sub_19758BA90(uint64_t a1, uint64_t a2)
{
  if (qword_1ED817510 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED817569 == 1)
  {
    sub_19758BB78();
    v4 = OUTLINED_FUNCTION_0_54();
    v7 = sub_19757F524(v4, v5, v6);

    if (v7)
    {
      sub_1976139C4();
    }
  }

  v8 = sub_19758BB78();
  v9 = sub_19757F524(a1, a2, v8);

  return v9;
}

uint64_t sub_19758BB78()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = *(v0 + 16);
    if (!v2 || (v3 = sub_1976161B0(), v4 = [v2 arrayForKey_], v3, !v4) || (v5 = sub_197616460(), v4, v12 = sub_197553BF8(v5, v6, v7, v8, v9, v10, v11), , !v12))
    {

      v12 = MEMORY[0x1E69E7CC0];
    }

    v1 = sub_197589344(v12);
    *(v0 + 24) = v1;
  }

  return v1;
}

uint64_t sub_19758BC6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19758BCD4()
{
  result = sub_1976160B0();
  dword_1ED816B38 = 0;
  qword_1ED816B40 = result;
  return result;
}

unint64_t sub_19758BD1C()
{
  result = qword_1ED816650;
  if (!qword_1ED816650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816650);
  }

  return result;
}

uint64_t sub_19758BD70(uint64_t a1, uint64_t a2)
{
  v3 = sub_197615970();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_197615910();
  v7(v6);
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_19758BEBC()
{
  result = qword_1ED816658;
  if (!qword_1ED816658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816658);
  }

  return result;
}

unint64_t sub_19758BF10()
{
  result = qword_1ED816660;
  if (!qword_1ED816660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816660);
  }

  return result;
}

unint64_t sub_19758BF64()
{
  result = qword_1ED816568;
  if (!qword_1ED816568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816568);
  }

  return result;
}

unint64_t sub_19758BFC0(char a1)
{
  result = 0x656D697265707865;
  switch(a1)
  {
    case 1:
      result = 3487349;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x6570795472657375;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x626967696C656E69;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *_s14ProfileContentV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x19758C1E4);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t _s14ProfileContentV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_19758C2F4()
{
  result = qword_1ED816570;
  if (!qword_1ED816570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816570);
  }

  return result;
}

unint64_t sub_19758C34C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_19758C378(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_19758C378(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

uint64_t sub_19758C390(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_28_6(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13();
  (*(v6 + 40))(v4, v5);
  return v4;
}

unint64_t sub_19758C3E0()
{
  result = qword_1ED816558;
  if (!qword_1ED816558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816558);
  }

  return result;
}

unint64_t sub_19758C494()
{
  result = qword_1ED816560;
  if (!qword_1ED816560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816560);
  }

  return result;
}

_BYTE *sub_19758C4F0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x19758C5BCLL);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

unint64_t sub_19758C610()
{
  result = qword_1ED816240;
  if (!qword_1ED816240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816240);
  }

  return result;
}

uint64_t sub_19758C664(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceProfile.ProfileContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_19758C6C8(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = sub_1975737F0(a1, a2, a3, a7, a8, a9);
  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = v13;
  sub_19755A560(a4, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35068, &qword_19761ED00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35098, &qword_19761EFB8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_19755C404(v20, &qword_1EAF350A0, &qword_19761EFC0);
LABEL_7:
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_197616A20();

    v23 = 0xD00000000000002BLL;
    v24 = 0x8000000197624AB0;
    v16 = (*(a9 + 24))(a8, a9);
    MEMORY[0x19A8E2A50](v16);

    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
    v14 = v23;
    v17 = v24;
    sub_19759228C();
    swift_allocError();
    *v18 = v14;
    v18[1] = v17;
    swift_willThrow();
    return v14;
  }

  sub_1975558C4(v20, &v23);
  CoreRuleRecord.update(tip:parent:)(a5, a6);
  swift_getKeyPath();
  (*(a9 + 32))(v22, a8, a9);
  sub_197574C4C();

  swift_getKeyPath();
  (*(a9 + 56))(v22, a8, a9);
  sub_197574C4C();

  __swift_project_boxed_opaque_existential_1Tm(&v23, v25);
  type metadata accessor for CoreEventRecord(0);
  v15 = v26;
  sub_19758E36C();
  if (v15)
  {
  }

  else
  {
    sub_197592184();
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v23);
  return v14;
}

uint64_t sub_19758C9B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_197573DA8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_19758CA08()
{
  v1 = OUTLINED_FUNCTION_24_6();
  v2(v1);
  OUTLINED_FUNCTION_7_5();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_19758CA58(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_19758CAC4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  OUTLINED_FUNCTION_31_2();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[6];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35260, &qword_1976202C8);
    OUTLINED_FUNCTION_31_2();
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[11]) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a4[9];
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_19758CBD8(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  OUTLINED_FUNCTION_31_2();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[6];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35260, &qword_1976202C8);
  OUTLINED_FUNCTION_31_2();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[9];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[11]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_19758CCDC()
{
  v0 = type metadata accessor for logger(0);
  __swift_allocate_value_buffer(v0, qword_1ED816CA0);
  *OUTLINED_FUNCTION_13_18() = 7;
  if (qword_1ED817298 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_1ED817298);
  }

  if (byte_1ED8172A4)
  {
    OUTLINED_FUNCTION_17_14();
  }

  return sub_197615BA0();
}

uint64_t sub_19758CDB8(uint64_t a1)
{
  v3 = sub_197615970();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35140, &qword_197621F80);
  v10 = OUTLINED_FUNCTION_5_2(v9);
  result = MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  if (!*(v1 + 112))
  {
    sub_1976165B0();
    OUTLINED_FUNCTION_36();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    v18 = swift_allocObject();
    swift_weakInit();
    (*(v5 + 16))(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v19 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v20 = swift_allocObject();
    *(v20 + 2) = 0;
    *(v20 + 3) = 0;
    *(v20 + 4) = v18;
    (*(v5 + 32))(&v20[v19], &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    sub_1975FB620(0, 0, v13, &unk_197621528, v20);
    v22 = v21;
    sub_19755C404(v13, &qword_1EAF35140, &qword_197621F80);
    *(v1 + 112) = v22;
  }

  return result;
}

uint64_t sub_19758CFAC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19758CFE4()
{
  v1 = sub_197615970();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_19758D0A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1ED817510 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_1ED817510);
  }

  OUTLINED_FUNCTION_35();
  swift_beginAccess();
  if (byte_1ED817569 == 1)
  {
    v6 = v2 + OBJC_IVAR____TtC10TipKitCore13DeviceProfile_content;
    OUTLINED_FUNCTION_35();
    swift_beginAccess();
    if (*(*(v6 + *(type metadata accessor for DeviceProfile.ProfileContent(0) + 48)) + 16))
    {

      sub_19755C610(a1, a2);
      v8 = v7;

      if (v8)
      {
        sub_1975EC474(a1, a2);
      }
    }
  }

  v9 = v3 + OBJC_IVAR____TtC10TipKitCore13DeviceProfile_content;
  OUTLINED_FUNCTION_35();
  swift_beginAccess();
  if (*(*(v9 + *(type metadata accessor for DeviceProfile.ProfileContent(0) + 48)) + 16))
  {

    sub_19755C610(a1, a2);
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void CoreEventRecord.init(backingData:)()
{
  OUTLINED_FUNCTION_26_3();
  v19 = v1;
  v20 = v2;
  v4 = v3;
  v5 = sub_197615A60();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_0();
  v11 = v10 - v9;
  *(v0 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34CE0, &qword_19761C240);
  OUTLINED_FUNCTION_0_16();
  v14 = sub_1975611B4(v12, v13, &protocol conformance descriptor for CoreEventRecord);
  *(v0 + 56) = OUTLINED_FUNCTION_15_3(v14);
  __swift_allocate_boxed_opaque_existential_0((v0 + 24));
  sub_197615DC0();
  sub_19758D4D8(0, 0xE000000000000000, (v0 + 24));
  sub_197615A50();
  __swift_project_boxed_opaque_existential_1Tm((v0 + 24), *(v0 + 48));
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_11();
  sub_1975611B4(v15, v16, MEMORY[0x1E6969538]);
  sub_197615BE0();

  (*(v7 + 8))(v11, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
  v17 = sub_1976160B0();
  sub_19758D594(v17, (v0 + 24));
  OUTLINED_FUNCTION_22_3();
  sub_1975C5AE0();
  OUTLINED_FUNCTION_22_3();
  sub_1975C5E2C();
  sub_197615B30();
  *(v0 + 16) = 0;
  OUTLINED_FUNCTION_43_0(v0 + 24, &v18);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  sub_1975558C4(v4, v0 + 24);
  swift_endAccess();
  OUTLINED_FUNCTION_25_2();
}

uint64_t CoreEventRecord.__allocating_init(backingData:)()
{
  v0 = swift_allocObject();
  CoreEventRecord.init(backingData:)();
  return v0;
}

void *sub_19758D49C()
{
  type metadata accessor for TipsdUbiquitousStore();
  swift_allocObject();
  result = sub_19758B804();
  qword_1ED81D1C0 = result;
  return result;
}

uint64_t sub_19758D4D8(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1Tm(a3, a3[3]);
  swift_getKeyPath();
  sub_197615BE0();
}

uint64_t sub_19758D594(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D08, &qword_19761ECE0);
  sub_197615BC0();
}

uint64_t sub_19758D630()
{
  OUTLINED_FUNCTION_16_0();
  result = sub_19758FA80();
  *v0 = result;
  return result;
}

BOOL sub_19758D65C()
{
  if (qword_1ED817510 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_1ED817510);
  }

  swift_beginAccess();
  if (qword_1ED817578)
  {
    v0 = qword_1ED817570;
    v1 = qword_1ED817578;
  }

  else
  {
    if (qword_1ED8174D8 != -1)
    {
      OUTLINED_FUNCTION_4_3(&qword_1ED8174D8);
    }

    if (qword_1ED81D218)
    {
      v0 = qword_1ED81D210;
      v1 = qword_1ED81D218;
    }

    else
    {
      type metadata accessor for CFBundle(0);
      v2 = sub_1975A5740();
      if (v3)
      {
        v0 = v2;
      }

      else
      {
        v0 = 0;
      }

      if (v3)
      {
        v1 = v3;
      }

      else
      {
        v1 = 0xE000000000000000;
      }
    }
  }

  if (v0 == 0x6C7070612E6D6F63 && v1 == 0xEF64737069742E65)
  {

    return 1;
  }

  v5 = sub_197616EF0();

  if (v5)
  {
    return 1;
  }

  if (qword_1ED8174E0 != -1)
  {
    v6 = OUTLINED_FUNCTION_0_5(&qword_1ED8174E0);
  }

  if (byte_1ED8174EA != 1)
  {
    return 0;
  }

  if (qword_1ED817298 != -1)
  {
    v6 = OUTLINED_FUNCTION_0_6(&qword_1ED817298);
  }

  if ((byte_1ED8172A5 & 1) == 0)
  {
    if (qword_1ED8167C8 != -1)
    {
      v6 = swift_once();
    }

    v11[0] = 0x6C7070612E6D6F63;
    v11[1] = 0xEF64737069742E65;
    MEMORY[0x1EEE9AC00](v6);
    v10[2] = v11;
    return sub_1975544B4(sub_197556D58, v10, v9);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_19758D8AC()
{
  result = qword_1ED8162C8;
  if (!qword_1ED8162C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34CD8, &unk_19761C230);
    sub_197559AAC(&qword_1ED8162D0, &qword_1EAF34C68, &qword_19761BE88, MEMORY[0x1E69E6328]);
    sub_1975611B4(&qword_1ED8171B0, type metadata accessor for CoreDonationRecord, &protocol conformance descriptor for CoreDonationRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8162C8);
  }

  return result;
}

uint64_t sub_19758D994()
{
  v0 = sub_197553EE0(0xD000000000000039, 0x8000000197625D90, &qword_1ED816F08, 0x1E695DEC8);
  if (v0 && (v7 = sub_197553BF8(v0, v1, v2, v3, v4, v5, v6), result = , v7))
  {
    qword_1ED81D1D8 = v7;
  }

  else
  {
    qword_1ED81D1D8 = MEMORY[0x1E69E7CC0];
  }

  return result;
}

unint64_t sub_19758DA40()
{
  result = qword_1ED816500;
  if (!qword_1ED816500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED816500);
  }

  return result;
}

id sub_19758DA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1976161B0();

  v6 = [v4 initWithStoreIdentifier:v5 type:a3];

  return v6;
}

uint64_t CoreEventRecord.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  v1 = OBJC_IVAR____TtC10TipKitCore15CoreEventRecord___observationRegistrar;
  sub_197615B40();
  OUTLINED_FUNCTION_7_5();
  (*(v2 + 8))(&v0[v1]);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_19758DBE4()
{
  result = sub_197589344(MEMORY[0x1E69E7CC0]);
  dword_1ED816AC8 = 0;
  qword_1ED816AD0 = result;
  return result;
}

void sub_19758DC14()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_50(v3, v4, v5, v6, v7, v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BA8, &qword_19761BAC8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_27_8();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BA0, &qword_19761BAC0);
  v12 = OUTLINED_FUNCTION_5_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_103();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_107();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  OUTLINED_FUNCTION_5_2(v14);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_30_0();
  sub_197615F50();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_11_20();
  v17 = OUTLINED_FUNCTION_29_5();
  sub_19755F9A0(v17, v18, &qword_1EAF34AB8, &qword_197622080);
  OUTLINED_FUNCTION_45_0(v2);
  if (v19)
  {
    sub_19755C7C8(v2, &qword_1EAF34AB8, &qword_197622080);
  }

  else
  {
    v20 = OUTLINED_FUNCTION_48_0();
    v21(v20);
    type metadata accessor for CoreParameterRecord(0);
    OUTLINED_FUNCTION_59_0();
    sub_19755FF88(v22, 255, v23, &protocol conformance descriptor for CoreParameterRecord);
    OUTLINED_FUNCTION_33_6();
    if (sub_197615C00())
    {
      v32 = OUTLINED_FUNCTION_25_9();
      v33(v32);
    }

    else
    {
      OUTLINED_FUNCTION_105(0, v25, v26, v27, v28, v29, v30, v31, v53);
      MEMORY[0x1EEE9AC00](v34);
      OUTLINED_FUNCTION_19_11();
      OUTLINED_FUNCTION_61(v35, v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D28, &qword_19761C7E0);
      OUTLINED_FUNCTION_3_10();
      __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
      v41 = sub_19755F9A0(v1, v0, &qword_1EAF34BA0, &qword_19761BAC0);
      OUTLINED_FUNCTION_88(v41, MEMORY[0x1E69E7CC0]);
      OUTLINED_FUNCTION_47_0();
      MEMORY[0x1EEE9AC00](v42);
      OUTLINED_FUNCTION_3_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_47_0();
      MEMORY[0x1EEE9AC00](v43);
      OUTLINED_FUNCTION_3_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_21_12(v54);
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_47_0();
      MEMORY[0x1EEE9AC00](v44);
      OUTLINED_FUNCTION_3_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_20_11(v55);
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_47_0();
      MEMORY[0x1EEE9AC00](v45);
      OUTLINED_FUNCTION_3_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_125();
      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_47_0();
      MEMORY[0x1EEE9AC00](v46);
      OUTLINED_FUNCTION_3_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_46_0();

      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_47_0();
      MEMORY[0x1EEE9AC00](v47);
      OUTLINED_FUNCTION_3_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_33_6();
      v50 = sub_197615C80();
      v51 = OUTLINED_FUNCTION_15_15();
      v52(v51);
      sub_197578D68(v50);
      OUTLINED_FUNCTION_122();
      sub_19755C7C8(v1, &qword_1EAF34BA0, &qword_19761BAC0);
      v48 = OUTLINED_FUNCTION_25_9();
      v49(v48);
      OUTLINED_FUNCTION_94();
    }
  }

  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_14_9();
}

uint64_t sub_19758E114@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  sub_19756E35C();
  sub_19758DC14();
  v6 = v5;
  result = sub_19756E748(v4);
  if (v6)
  {
    v8 = CoreParameterRecord.valueData.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xF000000000000000;
  }

  *a1 = v8;
  a1[1] = v10;
  return result;
}

uint64_t sub_19758E208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  CoreRuleRecord.id.getter(a1, a2, a3, a4, a5, a6, a7, a8, v29, v31, v33, v35, v37, v39, v41, v43, vars0, vars8);
  v12 = sub_19757F524(v10, v11, a2);

  if (v12 || (v14 = sub_1975D3FA4(v13), CoreRuleRecord.id.getter(v14, v15, v16, v17, v18, v19, v20, v21, v30, v32, v34, v36, v38, v40, v42, v44, vars0a, vars8a), v23 = v22, v25 = v24, , v26 = sub_19757F524(v23, v25, a2), , v26))
  {
    v27 = 0;
  }

  else
  {
    v27 = sub_197573DA8() ^ v8 ^ 1;
  }

  return v27 & 1;
}

uint64_t sub_19758E2F4(uint64_t a1)
{
  sub_19758F7A0();

  v1 = OUTLINED_FUNCTION_4_13();

  return v2(v1);
}

void sub_19758E36C()
{
  OUTLINED_FUNCTION_20();
  v36 = v1;
  v37 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  v9 = OUTLINED_FUNCTION_5_2(v8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v35 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - v12;
  v14 = sub_197615F50();
  OUTLINED_FUNCTION_0();
  v34 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v30 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CoreEvent();
  v32 = v5;
  v33 = v3;
  v18 = *(v3 + 8);
  v19 = *(v18 + 16);
  v31 = v7;
  v19(v5, v18);
  static CoreEvent.modelIdentifiers.getter();
  sub_19756E674();

  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_19755C7C8(v13, &qword_1EAF34AB8, &qword_197622080);
    v20 = v31;
    v21 = v32;
    v22 = (v19)(v32, v18);
    sub_19758E7D0(v22, v23, v20, v36, v21, v33);
  }

  else
  {
    v24 = v34;
    v25 = v30;
    (*(v34 + 32))(v30, v13, v14);
    v26 = v35;
    (*(v24 + 16))(v35, v25, v14);
    v27 = OUTLINED_FUNCTION_5_10();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v14);
    sub_1975E748C();
    sub_19755C7C8(v26, &qword_1EAF34AB8, &qword_197622080);
    (*(v24 + 8))(v25, v14);
  }

  OUTLINED_FUNCTION_19_0();
}

uint64_t sub_19758E680()
{
  OUTLINED_FUNCTION_1();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_19758E768()
{
  sub_197615F50();
  result = sub_1976160B0();
  dword_1ED8161E0 = 0;
  qword_1ED8161E8 = result;
  return result;
}

char *sub_19758E7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v76 = a6;
  v74 = a5;
  v78 = a4;
  v75 = a3;
  v80 = a2;
  v64 = sub_197615F50();
  v62 = *(v64 - 8);
  v7 = MEMORY[0x1EEE9AC00](v64);
  v60 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v59 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC0, &qword_19761B6F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v66 = &v59 - v11;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC8, &unk_197622310);
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v65 = &v59 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD0, &qword_19761B6F8);
  v79 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v59 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD8, &unk_1976222C0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v59 - v18;
  swift_getKeyPath();
  sub_197567F60(&qword_1ED816CD8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  sub_197615640();
  v63 = a1;
  v89 = a1;
  v90 = v80;
  v20 = v77;
  v94 = v77;
  sub_197615AE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AE0, &unk_197622300);
  v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_197618C10;
  v69 = v17;
  v23 = *(v17 + 16);
  v68 = v19;
  v24 = v19;
  v25 = v65;
  v70 = v16;
  v23(v22 + v21, v24, v16);
  v26 = v66;
  (*(v79 + 16))(v66, v15, v13);
  v73 = v13;
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v13);
  v27 = sub_197567F60(&qword_1ED817218, type metadata accessor for CoreEventRecord, &protocol conformance descriptor for CoreEventRecord);
  v28 = v78;
  swift_bridgeObjectRetain_n();
  v29 = MEMORY[0x1E69E7CC0];
  sub_197615D90();
  v87 = v20;
  v88 = v27;
  swift_getKeyPath();
  v91 = 1;
  LOBYTE(v92) = 0;
  swift_setAtWritableKeyPath();

  v85 = v20;
  v86 = v27;
  swift_getKeyPath();
  LOBYTE(v91) = 0;
  swift_setAtWritableKeyPath();

  v83 = v20;
  v84 = v27;
  swift_getKeyPath();
  v91 = v29;
  swift_setAtWritableKeyPath();

  v81 = v20;
  v82 = v27;
  swift_getKeyPath();
  v91 = v22;

  swift_setAtWritableKeyPath();

  v30 = v28;
  v31 = v67;
  v32 = sub_197615C80();
  if (v31)
  {
    (*(v71 + 8))(v25, v72);

    swift_bridgeObjectRelease_n();

    (*(v79 + 8))(v15, v73);
    (*(v69 + 8))(v68, v70);
    v91 = 0;
    v92 = -2.68156159e154;
    sub_197616A20();

    v91 = 0xD000000000000026;
    v92 = COERCE_DOUBLE(0x80000001976242A0);
    v33 = (*(*(v76 + 8) + 16))(v74);
    MEMORY[0x19A8E2A50](v33);

    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
    v34 = v91;
    v35 = *&v92;
    sub_19759228C();
    swift_allocError();
    *v36 = v34;
    v36[1] = v35;
    swift_willThrow();
    return v20;
  }

  v37 = v32;
  v38 = v79;
  v59 = sub_197567E4C(v32);
  v67 = 0;
  if (v59)
  {
    sub_1975692BC(0, (v37 & 0xC000000000000001) == 0, v37);
    if ((v37 & 0xC000000000000001) != 0)
    {
      v66 = MEMORY[0x19A8E31E0](0, v37);
    }

    else
    {
      v66 = *(v37 + 32);
    }

    v30 = v78;
  }

  else
  {

    swift_allocObject();

    CoreEventRecord.init(id:)();
    v66 = v39;
    sub_197615CD0();
  }

  v40 = v70;
  v41 = v69;
  (*(v71 + 8))(v25, v72);

  swift_bridgeObjectRelease_n();
  (*(v38 + 8))(v15, v73);
  (*(v41 + 8))(v68, v40);
  if (sub_19756F1CC())
  {
    v42 = v76;
    v43 = *(v76 + 16);
    v44 = v74;
    v20 = v66;
    v43(&v91, v74, v76);
LABEL_24:
    sub_19758F948(v91);
    v43(&v91, v44, v42);
    sub_19758FDD0(*&v92, v93);
    v30 = v78;
    goto LABEL_25;
  }

  v43 = *(v76 + 16);
  v44 = v74;
  (v43)(&v91, v74);
  v45 = v91;
  v46 = v92;
  v47 = v93;
  v20 = v66;
  if (qword_1ED8174E0 != -1)
  {
    *&v79 = v92;
    swift_once();
    v46 = *&v79;
  }

  if (byte_1ED8174EA != 1)
  {
    v48 = v45 == 1000;
    v42 = v76;
    if (v48 && v47)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v48 = v45 == 200;
  v42 = v76;
  if (!v48 || (v46 != 63072000.0 ? (v49 = 1) : (v49 = v47), (v49 & 1) != 0))
  {
LABEL_23:
    v43(&v91, v44, v42);
    goto LABEL_24;
  }

LABEL_25:
  v50 = v64;
  v51 = v67;
  if (v59 && (sub_1975901DC(v30), v51) || (sub_197615C20() & 1) != 0 && (sub_197615C70(), v51))
  {
  }

  else
  {
    type metadata accessor for CoreEvent();
    v53 = v61;
    sub_197615DB0();
    v54 = static CoreEvent.modelIdentifiers.getter();
    v55 = v62;
    v56 = v60;
    (*(v62 + 16))(v60, v53, v50);
    v57 = v80;

    swift_isUniquelyReferenced_nonNull_native();
    v91 = v54;
    sub_19757B964(v56, v63, v57);

    v58 = v91;
    (*(v55 + 8))(v53, v50);
    static CoreEvent.modelIdentifiers.setter(v58);
  }

  return v20;
}

__n128 sub_19758F2A4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_19758F2E0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v24 = a2;
  v25 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AE8, &qword_19761B848);
  OUTLINED_FUNCTION_0();
  v26 = v5;
  v27 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AF0, &unk_197622320);
  OUTLINED_FUNCTION_0();
  v12 = v11;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AF8, &qword_19761B850);
  OUTLINED_FUNCTION_0();
  v18 = v17;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v24 - v20;
  sub_197559AAC(&qword_1ED8164C0, &qword_1EAF34AF0, &unk_197622320, MEMORY[0x1E6968DA8]);
  sub_197615820();
  swift_getKeyPath();
  sub_197615700();

  (*(v12 + 8))(v15, v10);
  v28 = v24;
  v29 = v25;
  sub_197615810();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B00, &qword_19761B880);
  a4[4] = sub_19758F80C();
  __swift_allocate_boxed_opaque_existential_0(a4);
  sub_197559AAC(&qword_1ED8164D0, &qword_1EAF34AF8, &qword_19761B850, MEMORY[0x1E6968D58]);
  sub_197559AAC(&qword_1ED816D00, &qword_1EAF34AE8, &qword_19761B848, MEMORY[0x1E6968D20]);
  v22 = v26;
  sub_1976156F0();
  (*(v27 + 8))(v9, v22);
  return (*(v18 + 8))(v21, v16);
}

void (*sub_19758F624@<X0>(void (*result)(void)@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>))(void)
{
  v4 = *(v3 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelContainer);
  if (v4)
  {
    v6 = result;

    if (pthread_main_np() == 1 && _CFRunLoopCurrentIsMain())
    {
      v7 = sub_197616590();
      MEMORY[0x1EEE9AC00](v7);
      OUTLINED_FUNCTION_32_4();
      *(v8 - 16) = a2;
      OUTLINED_FUNCTION_21_7();
      sub_1975DE738(v9, v10, v11, v12, v13, v14);
    }

    else
    {
      sub_197615CF0();
      v16 = *(v3 + 48);
      v15 = *(v3 + 56);

      sub_19755D67C(v4, 0, v16, v15);
      v6();
      sub_197615C90();
    }
  }

  else
  {
    *a3 = xmmword_19761D220;
  }

  return result;
}

uint64_t sub_19758F7A0()
{
  swift_unownedRetainStrong();
  sub_19758F624(sub_19758E7B4, v0, &v2);

  return v2;
}

unint64_t sub_19758F80C()
{
  result = qword_1ED8164F0;
  if (!qword_1ED8164F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34B00, &qword_19761B880);
    sub_19758F898();
    sub_197565874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8164F0);
  }

  return result;
}

unint64_t sub_19758F898()
{
  result = qword_1ED8164D8;
  if (!qword_1ED8164D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34AF8, &qword_19761B850);
    sub_197559AAC(&qword_1ED8164C8, &qword_1EAF34AF0, &unk_197622320, MEMORY[0x1E6968DA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8164D8);
  }

  return result;
}

uint64_t sub_19758F948(uint64_t a1)
{
  v13 = MEMORY[0x1E69E6530];
  *&v12 = a1;
  v1 = sub_19758FA80();
  sub_19756A94C(&v12, &v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v1;
  v3 = __swift_mutable_project_boxed_opaque_existential_1(&v10, v11);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v6 = (v5 - v4);
  (*(v7 + 16))(v5 - v4);
  sub_19757B50C(*v6, 0xD000000000000010, 0x8000000197624570, isUniquelyReferenced_nonNull_native, &v9);
  __swift_destroy_boxed_opaque_existential_0Tm(&v10);
  return sub_19758FC60(v9);
}

uint64_t sub_19758FA80()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_4();
  v3 = sub_1975611B4(v2, v1, &protocol conformance descriptor for CoreEventRecord);
  OUTLINED_FUNCTION_29(v3, v4, v5, v6, v7, v8, v9, v10, v14, v0);
  sub_197615B20();

  swift_getKeyPath();
  OUTLINED_FUNCTION_1_15();
  sub_1975611B4(v11, v1, v12);
  sub_197615DE0();

  return v15;
}

uint64_t sub_19758FB54()
{
  OUTLINED_FUNCTION_1();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_19758E2F4, 0, 0);
}

uint64_t sub_19758FC60(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_16();
  v5 = sub_1975611B4(v3, v4, &protocol conformance descriptor for CoreEventRecord);
  OUTLINED_FUNCTION_13_5(v5, v6, sub_19758FD14, v7, v8, v5, v9, v10, v12, v13, v1, a1, v14, v15);
  sub_197615B10();
}

uint64_t sub_19758FD30(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1975611B4(&qword_1ED817218, type metadata accessor for CoreEventRecord, &protocol conformance descriptor for CoreEventRecord);
  sub_197615DF0();
}

uint64_t sub_19758FDD0(uint64_t a1, char a2)
{
  if (a2)
  {
    a1 = 0;
    v3 = 0;
    *(&v19 + 1) = 0;
    v20 = 0;
  }

  else
  {
    v3 = MEMORY[0x1E69E63B0];
  }

  *&v19 = a1;
  v21 = v3;
  v4 = sub_19758FA80();
  if (a2)
  {
    sub_19755C820(&v19, &qword_1EAF34698, &qword_197619048);
    v5 = sub_19755C610(0x74616E6F4478616DLL, 0xEE006567416E6F69);
    if (v6)
    {
      v7 = v5;
      swift_isUniquelyReferenced_nonNull_native();
      v16 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D00, &unk_19761C4E0);
      sub_197616BF0();

      sub_19756A94C((*(v4 + 56) + 32 * v7), &v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
      OUTLINED_FUNCTION_21_3();
      sub_197616C10();
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }

    sub_19755C820(&v17, &qword_1EAF34698, &qword_197619048);
  }

  else
  {
    sub_19756A94C(&v19, &v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v4;
    v9 = *(&v18 + 1);
    v10 = __swift_mutable_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
    MEMORY[0x1EEE9AC00](v10);
    OUTLINED_FUNCTION_6_0();
    v13 = v12 - v11;
    (*(v14 + 16))(v12 - v11);
    sub_197590034(v13, 0x74616E6F4478616DLL, 0xEE006567416E6F69, isUniquelyReferenced_nonNull_native, &v16, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(&v17);
    v4 = v16;
  }

  return sub_19758FC60(v4);
}

void sub_197590034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_74();
  v9 = v8;
  OUTLINED_FUNCTION_43_3();
  v11 = v10;
  v28 = v12;
  __swift_allocate_boxed_opaque_existential_0(v27);
  OUTLINED_FUNCTION_18();
  (*(v13 + 32))();
  sub_19755C610(v11, v6);
  OUTLINED_FUNCTION_30();
  if (v16)
  {
    __break(1u);
LABEL_11:
    sub_1976170F0();
    __break(1u);
    return;
  }

  v17 = v14;
  v18 = v15;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D00, &unk_19761C4E0);
  if (OUTLINED_FUNCTION_35_3(v19))
  {
    sub_19755C610(v11, v6);
    OUTLINED_FUNCTION_42_2();
    if (!v21)
    {
      goto LABEL_11;
    }

    v17 = v20;
  }

  v22 = *v7;
  if (v18)
  {
    OUTLINED_FUNCTION_33_4();
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
    OUTLINED_FUNCTION_14();
    MEMORY[0x1EEE9AC00](v23);
    OUTLINED_FUNCTION_6_0();
    v25 = OUTLINED_FUNCTION_62(v24);
    v26(v25);
    sub_1975E67C8(v17, v11, v6, v18, v22, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
  }

  OUTLINED_FUNCTION_75();
}

uint64_t sub_1975901DC(uint64_t a1)
{
  v3 = sub_197615A60();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v21 - v8;
  sub_19759041C();
  if (v10)
  {
    type metadata accessor for CoreDonationRecord(0);
    v11 = CoreEventRecord.id.getter();
    v13 = v12;
    v14 = sub_197590604();
    sub_1975BDD44(v11, v13, v14, a1);
  }

  else
  {
    v21[1] = type metadata accessor for CoreDonationRecord(0);
    v15 = CoreEventRecord.id.getter();
    v21[0] = v1;
    v17 = v16;
    v18 = sub_197590604();
    _s10Foundation4DateV10TipKitCoreE13bySubtracting17calendarComponent5count2toACSgAA8CalendarV0I0O_SiACtFZfA1__0();
    _s10Foundation4DateV10TipKitCoreE6addingyACSdF_0();
    v19 = *(v4 + 8);
    v19(v7, v3);
    sub_1975906C4(v15, v17, v18, v9, a1);
    v19(v9, v3);
  }
}

uint64_t OUTLINED_FUNCTION_52@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_19758110C(v2, &a2 - a1);
}

uint64_t OUTLINED_FUNCTION_87()
{

  return sub_19755F9A0(v2, v1, v3, v0);
}

uint64_t sub_19759041C()
{
  sub_19758FA80();
  sub_197579604();

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
    if (swift_dynamicCast())
    {
      return v1;
    }
  }

  else
  {
    sub_19755C820(v2, &qword_1EAF34698, &qword_197619048);
  }

  return 0;
}

uint64_t CoreEventRecord.id.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_4();
  sub_1975611B4(v2, v1, &protocol conformance descriptor for CoreEventRecord);
  sub_197615B20();

  swift_getKeyPath();
  OUTLINED_FUNCTION_1_15();
  sub_1975611B4(v3, v1, v4);
  sub_197615E50();

  return v0;
}

uint64_t sub_1975905D8()
{
  OUTLINED_FUNCTION_16_0();
  result = CoreEventRecord.id.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_197590604()
{
  sub_19758FA80();
  sub_197579604();

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
    if (swift_dynamicCast())
    {
      return v1;
    }
  }

  else
  {
    sub_19755C820(v2, &qword_1EAF34698, &qword_197619048);
  }

  return 1000;
}

uint64_t sub_1975906C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v66 = a4;
  v64 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
  OUTLINED_FUNCTION_0();
  v63 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B08, &qword_19761B888);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v58 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v58 - v21;
  v65 = a1;
  v68 = a1;
  v69 = a2;
  v23 = a2;
  v24 = v5;
  v73 = v5;
  v25 = a5;
  sub_197615AE0();
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v9);
  v29 = v67;
  sub_1975913B8();
  v31 = v30;
  result = sub_19755C404(v22, &qword_1EAF34B08, &qword_19761B888);
  if (!v29)
  {
    v60 = v17;
    v61 = v13;
    v62 = v24;
    if (v31)
    {
      v33 = v25;
      v34 = v23;
      v59 = v31;
      v67 = &v58;
      MEMORY[0x1EEE9AC00](result);
      v35 = v65;
      *(&v58 - 4) = v65;
      *(&v58 - 3) = v34;
      v37 = v36;
      *(&v58 - 2) = v36;
      OUTLINED_FUNCTION_5_8();
      sub_197615AE0();
      OUTLINED_FUNCTION_3_10();
      __swift_storeEnumTagSinglePayload(v38, v39, v40, v9);
      sub_1975913B8();
      v42 = v41;
      result = sub_19755C404(v20, &qword_1EAF34B08, &qword_19761B888);
      v43 = v64;
      if (v42 < v64 && v42 != v59)
      {
        MEMORY[0x1EEE9AC00](result);
        *(&v58 - 4) = v35;
        *(&v58 - 3) = v34;
        *(&v58 - 2) = v37;
        OUTLINED_FUNCTION_5_8();
        v53 = v61;
        sub_197615AE0();
        OUTLINED_FUNCTION_4_8();
        sub_1975FD26C();
        (*(v63 + 8))(v53, v9);
        if (qword_1ED816C98 != -1)
        {
          OUTLINED_FUNCTION_5_0(&qword_1ED816C98);
        }

        v54 = type metadata accessor for logger(0);
        __swift_project_value_buffer(v54, qword_1ED816CA0);
        OUTLINED_FUNCTION_1_10();
        sub_197616A20();
        OUTLINED_FUNCTION_7_3();
        MEMORY[0x19A8E2A50](v65, v34);
        MEMORY[0x19A8E2A50](0xD000000000000028, 0x8000000197624370);
        v70 = v59;
        v55 = OUTLINED_FUNCTION_6_3();
        MEMORY[0x19A8E2A50](v55);

        MEMORY[0x19A8E2A50](540945696, 0xE400000000000000);
        v70 = v42;
LABEL_17:
        v56 = OUTLINED_FUNCTION_6_3();
        MEMORY[0x19A8E2A50](v56);

        sub_197558864(v71, v72, v57);
      }

      if (v59 > v64)
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        OUTLINED_FUNCTION_2_0();
        *(v46 - 16) = v35;
        *(v46 - 8) = v34;
        OUTLINED_FUNCTION_5_8();
        v47 = v60;
        sub_197615AE0();
        OUTLINED_FUNCTION_3_10();
        __swift_storeEnumTagSinglePayload(v48, v49, v50, v9);
        sub_1975BD798(v33, v43, KeyPath, 1, v47);
        sub_19755C404(v47, &qword_1EAF34B08, &qword_19761B888);

        if (qword_1ED816C98 != -1)
        {
          OUTLINED_FUNCTION_5_0(&qword_1ED816C98);
        }

        v51 = type metadata accessor for logger(0);
        __swift_project_value_buffer(v51, qword_1ED816CA0);
        OUTLINED_FUNCTION_1_10();
        sub_197616A20();
        OUTLINED_FUNCTION_7_3();
        MEMORY[0x19A8E2A50](v65, v34);
        MEMORY[0x19A8E2A50](0xD000000000000029, 0x8000000197624340);
        v70 = v59;
        v52 = OUTLINED_FUNCTION_6_3();
        MEMORY[0x19A8E2A50](v52);

        OUTLINED_FUNCTION_9_4();
        v70 = v64;
        goto LABEL_17;
      }
    }
  }

  return result;
}

uint64_t sub_197590CAC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v36 = a2;
  v37 = a3;
  v38 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BB0, &qword_19761BAD0);
  OUTLINED_FUNCTION_0();
  v39 = v4;
  v40 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_3();
  v33 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B28, &qword_19761B8C8);
  OUTLINED_FUNCTION_0();
  v10 = v9;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BB8, &qword_19761BAD8);
  OUTLINED_FUNCTION_0();
  v16 = v15;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BC0, &qword_19761BAE0);
  OUTLINED_FUNCTION_0();
  v34 = v20;
  v35 = v21;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v33 - v23;
  OUTLINED_FUNCTION_1_11();
  sub_197569AA4(v25);
  sub_197615820();
  swift_getKeyPath();
  sub_197615700();

  (*(v10 + 8))(v13, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AF8, &qword_19761B850);
  type metadata accessor for CoreEventRecord(0);
  sub_197569AA4(&unk_1ED816278);
  sub_197569AA4(&qword_1ED8164D0);
  sub_197615710();
  (*(v16 + 8))(v19, v14);
  v41 = v36;
  v42 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34400, &qword_1976185C0);
  v26 = v33;
  sub_197615810();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BC8, &qword_19761BAE8);
  v28 = v38;
  v38[3] = v27;
  v28[4] = sub_197591288();
  __swift_allocate_boxed_opaque_existential_0(v28);
  OUTLINED_FUNCTION_3_0();
  sub_197569AA4(v29);
  sub_197569AA4(&qword_1ED816CF0);
  OUTLINED_FUNCTION_4_10(&qword_1ED816C68, MEMORY[0x1E69E6180]);
  v30 = v34;
  v31 = v39;
  sub_1976156F0();
  (*(v40 + 8))(v26, v31);
  return (*(v35 + 8))(v24, v30);
}

uint64_t sub_197591148(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AF0, &unk_197622320);
  OUTLINED_FUNCTION_0();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  OUTLINED_FUNCTION_1_11();
  sub_197569AA4(v7);
  sub_197615820();
  swift_getKeyPath();
  sub_197615700();

  return (*(v3 + 8))(v6, v1);
}

unint64_t sub_197591288()
{
  result = qword_1ED816298;
  if (!qword_1ED816298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34BC8, &qword_19761BAE8);
    sub_197591314();
    sub_19757B7B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816298);
  }

  return result;
}

unint64_t sub_197591314()
{
  result = qword_1ED8162A8;
  if (!qword_1ED8162A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34BC0, &qword_19761BAE0);
    sub_19757D7C0(&qword_1ED816280);
    sub_19758F898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8162A8);
  }

  return result;
}

void sub_1975913B8()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_4_9();
  v0 = OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_5_2(v0);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_12_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B40, &unk_197622360);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_3_11();
  type metadata accessor for CoreDonationRecord(0);
  OUTLINED_FUNCTION_6_4();
  v5 = sub_19759152C(v3, v4, &protocol conformance descriptor for CoreDonationRecord);
  OUTLINED_FUNCTION_8_6(v5, MEMORY[0x1E69E7CC0]);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_5_9(KeyPath);

  OUTLINED_FUNCTION_9_5();
  v7 = OUTLINED_FUNCTION_2_9();
  v8(v7);
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_19_0();
}

__n128 sub_197591510(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_19759152C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1975915DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int *a6@<X5>, uint64_t *a7@<X8>)
{
  v91 = a6;
  v77 = a5;
  v90 = a4;
  v79 = a3;
  v78 = a2;
  v96 = a7;
  sub_1976157A0();
  OUTLINED_FUNCTION_0();
  v87 = v9;
  v88 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v85 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B20, &unk_19761E5E0);
  OUTLINED_FUNCTION_0();
  v92 = v11;
  v93 = v12;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_3();
  v84 = v14;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B30, &qword_19761E5F0);
  OUTLINED_FUNCTION_0();
  v89 = v15;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_3();
  v80 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B38, &qword_19761E620);
  OUTLINED_FUNCTION_0();
  v94 = v18;
  v95 = v19;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_3();
  v83 = v21;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BB0, &qword_19761BAD0);
  OUTLINED_FUNCTION_0();
  v76 = v22;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5_3();
  v74 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B28, &qword_19761B8C8);
  OUTLINED_FUNCTION_0();
  v27 = v26;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v65 - v29;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BB8, &qword_19761BAD8);
  OUTLINED_FUNCTION_0();
  v67 = v31;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v65 - v33;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BC0, &qword_19761BAE0);
  OUTLINED_FUNCTION_0();
  v73 = v35;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_3();
  v65 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BC8, &qword_19761BAE8);
  OUTLINED_FUNCTION_0();
  v81 = v38;
  v82 = v39;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5_3();
  v97 = v41;
  v71 = *a1;
  OUTLINED_FUNCTION_1_11();
  sub_197569AA4(v42);
  sub_197615820();
  swift_getKeyPath();
  sub_197615700();

  v43 = *(v27 + 8);
  v69 = v27 + 8;
  v70 = v43;
  v43(v30, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AF8, &qword_19761B850);
  type metadata accessor for CoreEventRecord(0);
  v68 = MEMORY[0x1E6968D58];
  sub_197569AA4(&unk_1ED816278);
  sub_197569AA4(&qword_1ED8164D0);
  v44 = v65;
  v45 = v66;
  sub_197615710();
  (*(v67 + 8))(v34, v45);
  v98 = v78;
  v99 = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34400, &qword_1976185C0);
  v46 = v74;
  sub_197615810();
  OUTLINED_FUNCTION_3_0();
  sub_197569AA4(v47);
  sub_197569AA4(&qword_1ED816CF0);
  OUTLINED_FUNCTION_4_10(&qword_1ED816C68, MEMORY[0x1E69E6180]);
  v48 = v72;
  v49 = v75;
  sub_1976156F0();
  (*(v76 + 8))(v46, v49);
  (*(v73 + 8))(v44, v48);
  sub_197615820();
  swift_getKeyPath();
  v50 = v80;
  sub_197615700();

  v70(v30, v25);
  sub_197615A60();
  v51 = v84;
  sub_197615810();
  v53 = v87;
  v52 = v88;
  v54 = v85;
  (*(v87 + 104))(v85, *v91, v88);
  sub_197569AA4(&qword_1ED8161F8);
  sub_197569AA4(&qword_1ED8164E0);
  sub_197567EDC(&qword_1ED816CD8);
  v55 = v83;
  v56 = v51;
  v57 = v86;
  v58 = v92;
  sub_197615760();
  (*(v53 + 8))(v54, v52);
  (*(v93 + 8))(v56, v58);
  (*(v89 + 8))(v50, v57);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BD0, &qword_19761BB40);
  v60 = v96;
  v96[3] = v59;
  v60[4] = sub_197591F9C();
  __swift_allocate_boxed_opaque_existential_0(v60);
  sub_197569AA4(&unk_1ED816178);
  sub_197569AA4(&unk_1ED816188);
  v61 = v97;
  v62 = v81;
  v63 = v94;
  sub_197615780();
  (*(v95 + 8))(v55, v63);
  return (*(v82 + 8))(v61, v62);
}

unint64_t sub_197591F9C()
{
  result = qword_1ED816180;
  if (!qword_1ED816180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34BD0, &qword_19761BB40);
    sub_197591288();
    sub_1975920D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816180);
  }

  return result;
}

unint64_t sub_197592028()
{
  result = qword_1ED816200;
  if (!qword_1ED816200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34B30, &qword_19761E5F0);
    sub_197559AAC(&qword_1ED8164B8, &qword_1EAF34B28, &qword_19761B8C8, MEMORY[0x1E6968DA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816200);
  }

  return result;
}

unint64_t sub_1975920D8()
{
  result = qword_1ED816218;
  if (!qword_1ED816218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34B38, &qword_19761E620);
    sub_197592028();
    sub_19758275C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816218);
  }

  return result;
}

uint64_t sub_19759220C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1975611B4(&qword_1ED817218, type metadata accessor for CoreEventRecord, &protocol conformance descriptor for CoreEventRecord);

  return MEMORY[0x1EEDD9288](v3, v4, v2, v5);
}

unint64_t sub_19759228C()
{
  result = qword_1ED815FD8;
  if (!qword_1ED815FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815FD8);
  }

  return result;
}

uint64_t TipsError.description.getter()
{
  v1 = *v0;

  return v1;
}

void sub_197592314()
{
  OUTLINED_FUNCTION_5_22();
  CoreTipRecord.status.getter();
  OUTLINED_FUNCTION_10_18();
  if (!v0 && (sub_197592490() & 1) != 0)
  {
    v1 = [objc_opt_self() standardUserDefaults];
    OUTLINED_FUNCTION_13_12();
    sub_1975578B4(0xD000000000000016, v2);
    v4 = v3;

    if (v4)
    {
      CoreTipRecord.id.getter(v5, v6, v7, v8, v9, v10, v11, v12, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47);
      v15 = sub_19757F524(v13, v14, v4);

      if (v15)
      {
        if (qword_1ED816C98 != -1)
        {
          OUTLINED_FUNCTION_5_0(&qword_1ED816C98);
        }

        v16 = type metadata accessor for logger(0);
        __swift_project_value_buffer(v16, qword_1ED816CA0);
        OUTLINED_FUNCTION_2_30();
        sub_197616A20();

        OUTLINED_FUNCTION_1_36(v17, v18, v19, v20, v21, v22, v23, v24, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48);
        MEMORY[0x19A8E2A50]();

        MEMORY[0x19A8E2A50](0xD000000000000023, 0x8000000197625780);
        OUTLINED_FUNCTION_6_17();
        sub_197558864(v25, v26, v27);

        OUTLINED_FUNCTION_3_30();
        sub_1975E92FC(v28);
      }
    }
  }
}

uint64_t sub_197592490()
{
  if (qword_1ED817510 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_1ED817510);
  }

  if (qword_1ED817298 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_1ED817298);
  }

  if (byte_1ED8172A1 == 2)
  {
    if (qword_1ED8174E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_1ED8174E0);
    }

    v0 = byte_1ED8174EA ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_197592568()
{
  OUTLINED_FUNCTION_16_0();
  result = sub_19759252C();
  *v0 = result;
  return result;
}

uint64_t sub_197592594(uint64_t a1)
{
  v3 = CoreRuleRecord.predicate.getter(a1);
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  sub_1975928D4(&qword_1ED817280, type metadata accessor for CoreRuleRecord, &protocol conformance descriptor for CoreRuleRecord);
  v5 = sub_197615DD0();
  if (!v5)
  {

    goto LABEL_10;
  }

  v6 = v5;
  if (!a1 || (v7 = &v4[OBJC_IVAR___Predicate_argument], v4[OBJC_IVAR___Predicate_argument + 16] >= 2u))
  {

    goto LABEL_8;
  }

  v9 = *v7;
  v8 = *(v7 + 1);

  v10 = OUTLINED_FUNCTION_0_29();
  sub_19759291C(v10, v11, v12);
  type metadata accessor for CoreEventRecord(0);
  sub_1975928D4(&qword_1ED817218, type metadata accessor for CoreEventRecord, &protocol conformance descriptor for CoreEventRecord);
  if (sub_197615E90())
  {
    v13 = OUTLINED_FUNCTION_0_29();
    sub_197580A80(v13, v14, v15);

LABEL_8:

LABEL_10:
    sub_197616A20();

    CoreRuleRecord.id.getter(v16, v17, v18, v19, v20, v21, v22, v23, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
    MEMORY[0x19A8E2A50]();

    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
    sub_19759228C();
    swift_allocError();
    *v24 = 0xD000000000000026;
    v24[1] = 0x8000000197624B50;
    return swift_willThrow();
  }

  type metadata accessor for CoreDonationRecord(0);
  sub_197593BC8(a1, v4, v6, &v43);
  if (v1)
  {
    v26 = OUTLINED_FUNCTION_0_29();
    sub_197580A80(v26, v27, v28);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AA0, &qword_19761E6B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_197618C10;
    *(inited + 32) = v9;
    *(inited + 40) = v8;
    sub_1975586C0(&v43, inited + 48);
    v30 = sub_1976160B0();
    v31 = sub_197593F84(v30);

    if (v31)
    {
      v32 = 2;
    }

    else
    {
      v32 = 1;
    }

    sub_197577DBC(v32);
    __swift_destroy_boxed_opaque_existential_0Tm(&v43);
  }
}

uint64_t sub_1975928D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19759291C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_197592934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v149 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B40, &unk_197622360);
  v146 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v139 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B08, &qword_19761B888);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v147 = &v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v139 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v145 = &v139 - v14;
  v160 = sub_197615A60();
  v15 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v152 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v156 = (&v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v153 = (&v139 - v20);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
  v164 = *(v170 - 8);
  v21 = MEMORY[0x1EEE9AC00](v170);
  v155 = &v139 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v154 = (&v139 - v24);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v161 = &v139 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v159 = &v139 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = (&v139 - v30);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v162 = &v139 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v150 = &v139 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v139 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37);
  v158 = &v139 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  MEMORY[0x1EEE9AC00](v42);
  v46 = *(a2 + OBJC_IVAR___Predicate_queries);
  if (!v46 || !*(v46 + 16))
  {
    v73 = v15;
    v150 = v44;
    v74 = CoreEventRecord.id.getter();
    v76 = v75;
    v77 = sub_19759041C();
    v146 = v31;
    sub_197593D50(v74, v76, v77, v78 & 1);

    v79 = *(a2 + OBJC_IVAR___Predicate_subpredicates);
    if (!v79)
    {
      v82 = 0;
LABEL_44:
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B48, &qword_19761B8D0);
      v168 = v101;
      v102 = sub_197559AAC(&qword_1ED816158, &qword_1EAF34B48, &qword_19761B8D0, MEMORY[0x1E69E6340]);
      v103 = MEMORY[0x1E69E7CC0];
      if (v82)
      {
        v103 = v82;
      }

      v169 = v102;
      v167[0] = v103;
      __swift_project_boxed_opaque_existential_1Tm(v167, v101);
      v104 = v150;
      v105 = v146;
      v106 = v170;
      v107 = v148;
      sub_1976163A0();
      v108 = v164;
      v109 = *(v164 + 8);
      v109(v105, v106);
      __swift_destroy_boxed_opaque_existential_0Tm(v167);
      v110 = v147;
      (*(v108 + 16))(v147, v104, v106);
      __swift_storeEnumTagSinglePayload(v110, 0, 1, v106);
      sub_1975913B8();
      v112 = v111;
      sub_197593F1C(v110);
      if (v107)
      {
        return v109(v104, v106);
      }

      v113 = sub_197590604();
      v109(v104, v106);
      if (v113 >= v112)
      {
        return v112;
      }

      else
      {
        return v113;
      }
    }

    v144 = a1;
    v80 = 0;
    v162 = *(v79 + 2);
    v153 = (v73 + 32);
    v151 = (v73 + 8);
    v81 = v79 + 48;
    v82 = MEMORY[0x1E69E7CC0];
    v157 = (v164 + 32);
    v158 = v79;
    v83 = v155;
    while (1)
    {
      if (v162 == v80)
      {
        goto LABEL_44;
      }

      if (v80 >= *(v79 + 2))
      {
        __break(1u);
LABEL_61:
        __break(1u);
        return result;
      }

      v85 = *(v81 - 2);
      v84 = *(v81 - 1);
      if ((*v81 & 1) == 0)
      {
        MEMORY[0x1EEE9AC00](result);
        *(&v139 - 2) = v85;
        *(&v139 - 1) = v84;
        v165 = v163;
        v91 = v161;
        sub_197615AE0();
        v92 = v91;
        v93 = *v157;
        v94 = v170;
        goto LABEL_36;
      }

      if (qword_1ED816850 != -1)
      {
        swift_once();
      }

      if (!qword_1ED81D1D0)
      {
        break;
      }

      swift_getKeyPath();
      v86 = v156;
      sub_1975DB5E0();

      if (__swift_getEnumTagSinglePayload(v86, 1, v160) == 1)
      {
        goto LABEL_34;
      }

      v87 = v152;
      v88 = v160;
      v89 = (*v153)(v152, v156, v160);
      MEMORY[0x1EEE9AC00](v89);
      *(&v139 - 4) = v87;
      *(&v139 - 3) = v85;
      *(&v139 - 2) = v84;
      v165 = v163;
      v90 = v154;
      sub_197615AE0();
      (*v151)(v87, v88);
LABEL_35:
      v93 = *v157;
      v92 = v161;
      v94 = v170;
      (*v157)(v161, v90, v170);
      v83 = v155;
LABEL_36:
      v95 = v159;
      v93(v159, v92, v94);
      v93(v83, v95, v94);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1975BBE80(0, *(v82 + 16) + 1, 1, v82);
        v82 = v98;
      }

      v97 = *(v82 + 16);
      v96 = *(v82 + 24);
      if (v97 >= v96 >> 1)
      {
        sub_1975BBE80(v96 > 1, v97 + 1, 1, v82);
        v82 = v99;
      }

      *(v82 + 16) = v97 + 1;
      result = (v93)(v82 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v97, v83, v94);
      v81 += 24;
      ++v80;
      v79 = v158;
    }

    __swift_storeEnumTagSinglePayload(v156, 1, 1, v160);
LABEL_34:
    v165 = v163;
    v90 = v154;
    sub_197615AE0();
    goto LABEL_35;
  }

  v142 = v13;
  v140 = v46;
  v143 = &v139 - v43;
  v147 = v5;
  v47 = v45;
  v48 = CoreEventRecord.id.getter();
  v50 = v49;
  v144 = a1;
  v51 = sub_19759041C();
  v141 = v47;
  sub_197593D50(v48, v50, v51, v52 & 1);

  v54 = *(a2 + OBJC_IVAR___Predicate_subpredicates);
  if (v54)
  {
    v139 = v7;
    v55 = 0;
    v159 = v54[2];
    v154 = (v15 + 8);
    v155 = (v15 + 32);
    v56 = v54 + 6;
    v57 = MEMORY[0x1E69E7CC0];
    v156 = (v164 + 32);
    v161 = ((v164 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
    v58 = v150;
    v157 = v54;
    v151 = v39;
    while (1)
    {
      if (v159 == v55)
      {
        v100 = v148;
        v7 = v139;
        goto LABEL_52;
      }

      if (v55 >= v54[2])
      {
        goto LABEL_61;
      }

      v59 = *(v56 - 2);
      v60 = *(v56 - 1);
      if ((*v56 & 1) == 0)
      {
        v65 = v58;
        MEMORY[0x1EEE9AC00](result);
        *(&v139 - 2) = v59;
        *(&v139 - 1) = v60;
        v165 = v163;
        sub_197615AE0();
        v66 = *v156;
        v67 = v170;
        goto LABEL_17;
      }

      if (qword_1ED816850 != -1)
      {
        swift_once();
      }

      if (!qword_1ED81D1D0)
      {
        break;
      }

      swift_getKeyPath();
      v61 = v153;
      sub_1975DB5E0();

      v58 = v150;
      if (__swift_getEnumTagSinglePayload(v61, 1, v160) == 1)
      {
        goto LABEL_15;
      }

      v62 = v152;
      v63 = v160;
      v64 = (*v155)(v152, v153, v160);
      MEMORY[0x1EEE9AC00](v64);
      *(&v139 - 4) = v62;
      *(&v139 - 3) = v59;
      *(&v139 - 2) = v60;
      v165 = v163;
      sub_197615AE0();
      (*v154)(v62, v63);
LABEL_16:
      v66 = *v156;
      v39 = v151;
      v65 = v58;
      v67 = v170;
      (*v156)(v151, v58, v170);
LABEL_17:
      v68 = v158;
      v66(v158, v39, v67);
      v66(v162, v68, v67);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1975BBE80(0, *(v57 + 16) + 1, 1, v57);
        v57 = v71;
      }

      v70 = *(v57 + 16);
      v69 = *(v57 + 24);
      v58 = v65;
      if (v70 >= v69 >> 1)
      {
        sub_1975BBE80(v69 > 1, v70 + 1, 1, v57);
        v57 = v72;
      }

      *(v57 + 16) = v70 + 1;
      result = (v66)(v57 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v70, v162, v170);
      v56 += 24;
      ++v55;
      v54 = v157;
    }

    __swift_storeEnumTagSinglePayload(v153, 1, 1, v160);
LABEL_15:
    v165 = v163;
    sub_197615AE0();
    goto LABEL_16;
  }

  v57 = 0;
  v100 = v148;
LABEL_52:
  v114 = MEMORY[0x1E69E7CC0];
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B48, &qword_19761B8D0);
  v168 = v115;
  v116 = sub_197559AAC(&qword_1ED816158, &qword_1EAF34B48, &qword_19761B8D0, MEMORY[0x1E69E6340]);
  if (v57)
  {
    v117 = v57;
  }

  else
  {
    v117 = v114;
  }

  v169 = v116;
  v167[0] = v117;
  __swift_project_boxed_opaque_existential_1Tm(v167, v115);
  v118 = v143;
  v119 = v141;
  v120 = v170;
  sub_1976163A0();
  v121 = v164;
  v122 = *(v164 + 8);
  v161 = v100;
  v162 = v122;
  (v122)(v119, v120);
  __swift_destroy_boxed_opaque_existential_0Tm(v167);
  v123 = v145;
  (*(v121 + 16))(v145, v118, v120);
  __swift_storeEnumTagSinglePayload(v123, 0, 1, v120);
  sub_19755FA5C(v123, v142, &qword_1EAF34B08, &qword_19761B888);
  v124 = sub_19759152C(&qword_1ED8171B0, type metadata accessor for CoreDonationRecord, &protocol conformance descriptor for CoreDonationRecord);
  v125 = v163;
  v126 = sub_197615D90();
  v127 = v7;
  MEMORY[0x1EEE9AC00](v126);
  *(&v139 - 2) = v125;
  *(&v139 - 1) = v124;
  swift_getKeyPath();
  v165 = 0;
  v166 = 1;
  swift_setAtWritableKeyPath();

  MEMORY[0x1EEE9AC00](v128);
  *(&v139 - 2) = v125;
  *(&v139 - 1) = v124;
  swift_getKeyPath();
  v165 = 0;
  v166 = 1;
  swift_setAtWritableKeyPath();

  MEMORY[0x1EEE9AC00](v129);
  *(&v139 - 2) = v125;
  *(&v139 - 1) = v124;
  swift_getKeyPath();
  LOBYTE(v165) = 0;
  swift_setAtWritableKeyPath();

  MEMORY[0x1EEE9AC00](v130);
  *(&v139 - 2) = v125;
  *(&v139 - 1) = v124;
  swift_getKeyPath();
  v131 = MEMORY[0x1E69E7CC0];
  v165 = MEMORY[0x1E69E7CC0];
  swift_setAtWritableKeyPath();

  MEMORY[0x1EEE9AC00](v132);
  *(&v139 - 2) = v125;
  *(&v139 - 1) = v124;
  swift_getKeyPath();
  v165 = v131;
  swift_setAtWritableKeyPath();

  MEMORY[0x1EEE9AC00](v133);
  *(&v139 - 2) = v125;
  *(&v139 - 1) = v124;
  swift_getKeyPath();
  v165 = v131;
  swift_setAtWritableKeyPath();

  v134 = v161;
  v135 = sub_197615C80();
  v146[1](v127, v147);
  sub_197593F1C(v123);
  if (v134)
  {
    return (v162)(v143, v120);
  }

  v136 = sub_1975BFB18(v140, v135);

  v137 = sub_197567E4C(v136);

  v138 = sub_197590604();
  (v162)(v143, v120);
  if (v138 >= v137)
  {
    return v137;
  }

  else
  {
    return v138;
  }
}

uint64_t sub_197593BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a2 + OBJC_IVAR___Predicate_argument + 16))
  {
    *&v8 = 0;
    *(&v8 + 1) = 0xE000000000000000;
    sub_197616A20();
    MEMORY[0x19A8E2A50](0x746E656D75677261, 0xEE00206570797420);
    sub_197616BC0();
    MEMORY[0x19A8E2A50](0xD00000000000001ELL, 0x80000001976243F0);
    sub_19759228C();
    swift_allocError();
    *v6 = v8;
    return swift_willThrow();
  }

  else
  {
    result = sub_197592934(a1, a2, a3);
    if (!v4)
    {
      a4[3] = MEMORY[0x1E69E6530];
      *a4 = result;
    }
  }

  return result;
}

uint64_t CoreEventRecord.persistentBackingData.setter(__int128 *a1)
{
  OUTLINED_FUNCTION_43_0(v1 + 24, v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 24));
  sub_1975558C4(a1, v1 + 24);
  return swift_endAccess();
}

uint64_t sub_197593D50(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_197615A60();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v23 - v16;
  if (a4)
  {
    v18 = MEMORY[0x1EEE9AC00](v15);
    *(&v23 - 2) = a1;
    *(&v23 - 1) = a2;
    v24 = v4;
    return OUTLINED_FUNCTION_7_4(v18, (&v23 - 4));
  }

  else
  {
    _s10Foundation4DateV10TipKitCoreE13bySubtracting17calendarComponent5count2toACSgAA8CalendarV0I0O_SiACtFZfA1__0();
    _s10Foundation4DateV10TipKitCoreE6addingyACSdF_0();
    v20 = *(v10 + 8);
    v21 = v20(v14, v8);
    v22 = MEMORY[0x1EEE9AC00](v21);
    *(&v23 - 4) = a1;
    *(&v23 - 3) = a2;
    *(&v23 - 2) = v17;
    v24 = v4;
    OUTLINED_FUNCTION_7_4(v22, (&v23 - 6));
    return v20(v17, v8);
  }
}

uint64_t sub_197593F1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B08, &qword_19761B888);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_197593F84(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR___Predicate_argument);
  v3 = *(v1 + OBJC_IVAR___Predicate_argument + 16);
  if (v3 > 1)
  {
    v10 = 0x8000000197624800;
    sub_19759228C();
    swift_allocError();
    *v11 = 0xD00000000000002DLL;
    v11[1] = 0x8000000197624800;
    swift_willThrow();
  }

  else
  {
    v5 = *v2;
    v4 = v2[1];
    *&v18 = 36;
    *(&v18 + 1) = 0xE100000000000000;
    sub_19759291C(v5, v4, v3);
    MEMORY[0x19A8E2A50](v5, v4);
    sub_197580A80(v5, v4, v3);
    v6 = OUTLINED_FUNCTION_5_12();
    MEMORY[0x19A8E2A50](v6);
    LOBYTE(v17[0]) = *(v1 + OBJC_IVAR___Predicate_operation);
    v7 = CoreRule.Predicate.Operator.rawValue.getter();
    MEMORY[0x19A8E2A50](v7);

    MEMORY[0x19A8E2A50](4203808, 0xE300000000000000);
    v8 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E30, &unk_19761E650);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_197618C10;
    sub_19755FA5C(v1 + OBJC_IVAR___Predicate_value, v17, &qword_1EAF34930, &unk_19761DB90);
    if (v17[3])
    {
      sub_1975586C0(v17, &v18);
      sub_19759425C(v17);
      sub_19756A94C(&v18, (v9 + 32));
    }

    else
    {
      sub_19755C404(v17, &qword_1EAF34930, &unk_19761DB90);
      v18 = 0u;
      v19 = 0u;
      v12 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
      v13 = [v12 init];
      *(v9 + 56) = sub_19755404C(0, &qword_1ED8164F8, 0x1E695DFB0);
      *(v9 + 32) = v13;
      if (*(&v19 + 1))
      {
        sub_19755C404(&v18, &qword_1EAF34340, &unk_19761C8E0);
      }
    }

    sub_19755404C(0, &qword_1ED816508, 0x1E696AE18);
    v10 = sub_19759428C(v8, *(&v8 + 1), v9);
    v14 = sub_1976160A0();
    v15 = [v10 predicateWithSubstitutionVariables_];

    LOBYTE(v10) = [v15 evaluateWithObject_];
  }

  return v10 & 1;
}

id sub_19759428C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1976161B0();

  if (a3)
  {
    v5 = sub_197616450();
  }

  else
  {
    v5 = 0;
  }

  v6 = [swift_getObjCClassFromMetadata() predicateWithFormat:v4 argumentArray:v5];

  return v6;
}

uint64_t sub_197594328(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1975945CC;

  return sub_1975943C0(a1, v1 + 16);
}

uint64_t sub_1975943C0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19759445C, 0, 0);
}

uint64_t sub_19759445C()
{
  v1 = v0[3];
  v2 = v0[4];
  type metadata accessor for CoreEvent();
  v3 = v1[3];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  OUTLINED_FUNCTION_0_14();
  v4(v3);
  static CoreEvent.modelIdentifiers.getter();
  sub_19756E674();

  v5 = sub_197615F50();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v5);
  sub_19756E748(v2);
  if (EnumTagSinglePayload == 1)
  {
    __swift_project_boxed_opaque_existential_1Tm(v0[3], v1[3]);
    type metadata accessor for CoreEventRecord(0);
    sub_19758E36C();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1975945CC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1975946C0()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_13();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_1(v0);
  *v1 = v2;
  v1[1] = sub_19755CDC8;
  v3 = OUTLINED_FUNCTION_1_13();

  return v4(v3);
}

uint64_t sub_197594764(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a3;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_197598C68;

  return v7();
}

uint64_t sub_19759485C(uint64_t a1, uint64_t *a2, uint64_t a3, int *a4)
{
  v8 = *a2;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_19755CDC8;

  return sub_197594764(a1, v8, a3, a4);
}

uint64_t sub_197594924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197594A5C, 0, 0);
}

uint64_t sub_1975949C4()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_13();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_1(v0);
  *v1 = v2;
  v1[1] = sub_19755CCE8;
  v3 = OUTLINED_FUNCTION_1_13();

  return sub_197594924(v3, v4, v5, v6, v7);
}

uint64_t sub_197594A5C()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  type metadata accessor for CoreDonationRecord(0);
  type metadata accessor for CoreEvent();
  static CoreEvent.modelIdentifiers.getter();
  sub_19756E674();

  sub_197594C4C(v4, v3, v1, v2, v5);
  v6 = v0[10];

  sub_19756E748(v6);

  OUTLINED_FUNCTION_3();

  return v7();
}

char *sub_197594C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  OUTLINED_FUNCTION_5_2(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  v14 = sub_197615A60();
  v15 = OUTLINED_FUNCTION_5_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_197594F68();
  if (v18)
  {
    v19 = v18;
    _s10Foundation4DateV10TipKitCoreE13bySubtracting17calendarComponent5count2toACSgAA8CalendarV0I0O_SiACtFZfA1__0();
    swift_allocObject();

    v17 = CoreDonationRecord.init(date:event:donationInfo:)(v17, v19, a4);
    sub_197596728(v13);
    if (v5)
    {
    }

    else
    {
      sub_19756E748(v13);
      if (sub_197615C20())
      {
        sub_197615C70();
      }

      sub_1975968B0();
      sub_1975968F4(a1, a2, a4);
      type metadata accessor for CoreRuleRecord(0);
      sub_197597C40(v19, a5);
      if (sub_197615C20())
      {
        sub_197615C70();
      }

      if (qword_1ED816C98 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for logger(0);
      __swift_project_value_buffer(v22, qword_1ED816CA0);
      v24 = 0;
      v25 = 0xE000000000000000;
      sub_197616A20();

      v24 = 0x646928746E657645;
      v25 = 0xEA0000000000203ALL;
      MEMORY[0x19A8E2A50](a1, a2);
      MEMORY[0x19A8E2A50](0xD000000000000010, 0x8000000197624300);
      sub_197558864(v24, v25, v23);
    }
  }

  else
  {
    sub_19759228C();
    swift_allocError();
    *v20 = 0xD00000000000002ELL;
    v20[1] = 0x80000001976242D0;
    swift_willThrow();
  }

  return v17;
}

void sub_197594F68()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_50(v3, v4, v5, v6, v7, v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC8, &unk_197622310);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_27_8();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC0, &qword_19761B6F0);
  v12 = OUTLINED_FUNCTION_5_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_103();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_107();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  OUTLINED_FUNCTION_5_2(v14);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_30_0();
  sub_197615F50();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_11_20();
  v17 = OUTLINED_FUNCTION_29_5();
  sub_19755F9A0(v17, v18, &qword_1EAF34AB8, &qword_197622080);
  OUTLINED_FUNCTION_45_0(v2);
  if (v19)
  {
    sub_19755C7C8(v2, &qword_1EAF34AB8, &qword_197622080);
  }

  else
  {
    v20 = OUTLINED_FUNCTION_48_0();
    v21(v20);
    type metadata accessor for CoreEventRecord(0);
    OUTLINED_FUNCTION_58_0();
    sub_19755FF88(v22, 255, v23, &protocol conformance descriptor for CoreEventRecord);
    OUTLINED_FUNCTION_33_6();
    if (sub_197615C00())
    {
      v32 = OUTLINED_FUNCTION_25_9();
      v33(v32);
    }

    else
    {
      OUTLINED_FUNCTION_105(0, v25, v26, v27, v28, v29, v30, v31, v53);
      MEMORY[0x1EEE9AC00](v34);
      OUTLINED_FUNCTION_19_11();
      OUTLINED_FUNCTION_61(v35, v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD0, &qword_19761B6F8);
      OUTLINED_FUNCTION_3_10();
      __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
      v41 = sub_19755F9A0(v1, v0, &qword_1EAF34AC0, &qword_19761B6F0);
      OUTLINED_FUNCTION_88(v41, MEMORY[0x1E69E7CC0]);
      OUTLINED_FUNCTION_47_0();
      MEMORY[0x1EEE9AC00](v42);
      OUTLINED_FUNCTION_3_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_47_0();
      MEMORY[0x1EEE9AC00](v43);
      OUTLINED_FUNCTION_3_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_21_12(v54);
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_47_0();
      MEMORY[0x1EEE9AC00](v44);
      OUTLINED_FUNCTION_3_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_20_11(v55);
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_47_0();
      MEMORY[0x1EEE9AC00](v45);
      OUTLINED_FUNCTION_3_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_125();
      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_47_0();
      MEMORY[0x1EEE9AC00](v46);
      OUTLINED_FUNCTION_3_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_46_0();

      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_47_0();
      MEMORY[0x1EEE9AC00](v47);
      OUTLINED_FUNCTION_3_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_33_6();
      v50 = sub_197615C80();
      v51 = OUTLINED_FUNCTION_15_15();
      v52(v51);
      sub_197595B38(v50);
      OUTLINED_FUNCTION_122();
      sub_19755C7C8(v1, &qword_1EAF34AC0, &qword_19761B6F0);
      v48 = OUTLINED_FUNCTION_25_9();
      v49(v48);
      OUTLINED_FUNCTION_94();
    }
  }

  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_14_9();
}

__n128 sub_19759547C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_53()
{

  return sub_197615E50();
}

uint64_t sub_197595528@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355A0, &qword_197622258);
  v5 = *(v4 - 8);
  v19 = v4;
  v20 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AF0, &unk_197622320);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C08, &qword_19761BD98);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v18 - v14;
  sub_197559AAC(&qword_1ED8164C0, &qword_1EAF34AF0, &unk_197622320, MEMORY[0x1E6968DA8]);
  sub_197615820();
  v21 = type metadata accessor for CoreEventRecord(0);
  v22 = sub_19755FF88(&qword_1ED817218, 255, type metadata accessor for CoreEventRecord, &protocol conformance descriptor for CoreEventRecord);
  swift_getKeyPath();
  sub_197615700();

  (*(v9 + 8))(v11, v8);
  sub_197615F50();
  sub_197615810();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355D0, &unk_197622390);
  a3[4] = sub_1975959BC();
  __swift_allocate_boxed_opaque_existential_0(a3);
  sub_197559AAC(&qword_1ED816000, &qword_1EAF34C08, &qword_19761BD98, MEMORY[0x1E6968D58]);
  sub_197559AAC(&qword_1ED816D10, &qword_1EAF355A0, &qword_197622258, MEMORY[0x1E6968D20]);
  sub_19755FF88(&qword_1ED816C88, 255, MEMORY[0x1E697BC90], MEMORY[0x1E697BCA8]);
  v16 = v19;
  sub_1976156F0();
  (*(v20 + 8))(v7, v16);
  return (*(v13 + 8))(v15, v12);
}

unint64_t sub_197595928(uint64_t a1)
{
  result = OUTLINED_FUNCTION_26(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    sub_197569AA4(&qword_1ED816CE8);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1975959BC()
{
  result = qword_1ED816010;
  if (!qword_1ED816010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF355D0, &unk_197622390);
    sub_197603A94();
    sub_197595A48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816010);
  }

  return result;
}

unint64_t sub_197595A48()
{
  result = qword_1ED816D18;
  if (!qword_1ED816D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF355A0, &qword_197622258);
    v1 = MEMORY[0x1E697BC90];
    sub_19755FF88(&qword_1ED816C80, 255, MEMORY[0x1E697BC90], MEMORY[0x1E697BCB0]);
    sub_19755FF88(&qword_1ED816C90, 255, v1, MEMORY[0x1E697BC98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816D18);
  }

  return result;
}

void *CoreDonationRecord.init(date:event:donationInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = sub_197615A60();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  v22 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_0();
  v11 = v10 - v9;
  *(v3 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349D8, &qword_19761B3B8);
  OUTLINED_FUNCTION_1_8();
  v14 = sub_197561290(v12, v13, &protocol conformance descriptor for CoreDonationRecord);
  *(v3 + 56) = OUTLINED_FUNCTION_15_3(v14);
  __swift_allocate_boxed_opaque_existential_1Tm((v3 + 24));
  sub_197615DC0();
  sub_197615A50();
  __swift_project_boxed_opaque_existential_1Tm((v4 + 24), *(v4 + 48));
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_8();
  sub_197561290(v15, v16, MEMORY[0x1E6969538]);
  sub_197615BE0();

  v17 = *(v7 + 8);
  v17(v11, v5);
  sub_197595E24((v4 + 24), (v4 + 16));
  __swift_project_boxed_opaque_existential_1Tm((v4 + 24), *(v4 + 48));
  swift_getKeyPath();
  type metadata accessor for CoreEventRecord(0);
  OUTLINED_FUNCTION_5_7();
  sub_197561290(v18, v19, &protocol conformance descriptor for CoreEventRecord);
  sub_197615BF0();

  *(v3 + 17) = 0;
  sub_197615B30();
  (*(v22 + 16))(v11, a1, v5);
  CoreDonationRecord.date.setter(v11);
  CoreDonationRecord.donationInfo.setter(a3);

  CoreDonationRecord.event.setter(v20);

  v17(a1, v5);
  return v3;
}

uint64_t sub_197595E24@<X0>(void *a2@<X1>, _BYTE *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A68, &qword_19761B690);
  sub_197615BC0();

  *a3 = 0;
  return result;
}

uint64_t CoreDonationRecord.date.setter(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_8();
  sub_197561290(v2, v3, &protocol conformance descriptor for CoreDonationRecord);
  sub_197615B10();

  sub_197615A60();
  OUTLINED_FUNCTION_13();
  return (*(v4 + 8))(a1);
}

uint64_t sub_197595FD8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_197561290(&qword_1ED8171B0, type metadata accessor for CoreDonationRecord, &protocol conformance descriptor for CoreDonationRecord);
  sub_197561290(&qword_1ED816D90, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_197615E70();
}

uint64_t CoreDonationRecord.persistentBackingData.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_35();
  swift_beginAccess();
  return sub_19755A560(v1 + 24, a1);
}

uint64_t sub_197596148@<X0>(uint64_t *a1@<X8>)
{
  result = CoreDonationRecord.donationInfo.getter();
  *a1 = result;
  return result;
}

uint64_t sub_197596178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_8();
  sub_197561290(v6, v7, &protocol conformance descriptor for CoreDonationRecord);
  sub_197615B10();

  return a4(a1);
}

uint64_t sub_197596254(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_197561290(&qword_1ED8171B0, type metadata accessor for CoreDonationRecord, &protocol conformance descriptor for CoreDonationRecord);
  sub_197615DF0();
}

uint64_t sub_197596328@<X0>(uint64_t *a1@<X8>)
{
  result = CoreDonationRecord.event.getter();
  *a1 = result;
  return result;
}

uint64_t sub_197596358(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_197561290(&qword_1ED8171B0, type metadata accessor for CoreDonationRecord, &protocol conformance descriptor for CoreDonationRecord);
  sub_197561290(&qword_1ED817218, type metadata accessor for CoreEventRecord, &protocol conformance descriptor for CoreEventRecord);
  sub_197615E80();
}

void *CoreDonationRecord.init(backingData:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_197615A60();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  v10 = v9 - v8;
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349D8, &qword_19761B3B8);
  OUTLINED_FUNCTION_1_8();
  v13 = sub_197561290(v11, v12, &protocol conformance descriptor for CoreDonationRecord);
  *(v1 + 56) = OUTLINED_FUNCTION_15_3(v13);
  __swift_allocate_boxed_opaque_existential_1Tm((v1 + 24));
  sub_197615DC0();
  sub_197615A50();
  __swift_project_boxed_opaque_existential_1Tm((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_8();
  sub_197561290(v14, v15, MEMORY[0x1E6969538]);
  sub_197615BE0();

  (*(v6 + 8))(v10, v4);
  sub_197595E24((v2 + 24), (v2 + 16));
  __swift_project_boxed_opaque_existential_1Tm((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  type metadata accessor for CoreEventRecord(0);
  OUTLINED_FUNCTION_5_7();
  sub_197561290(v16, v17, &protocol conformance descriptor for CoreEventRecord);
  sub_197615BF0();

  *(v1 + 17) = 0;
  sub_197615B30();
  *(v1 + 16) = 0;
  OUTLINED_FUNCTION_43_0(v1 + 24, v19);
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 24));
  sub_1975558C4(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t CoreDonationRecord.__allocating_init(backingData:)(__int128 *a1)
{
  v2 = swift_allocObject();
  CoreDonationRecord.init(backingData:)(a1);
  return v2;
}

uint64_t sub_197596728@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for CoreDonationRecord(0);
  sub_197567E50(&qword_1ED8171B0, type metadata accessor for CoreDonationRecord, &protocol conformance descriptor for CoreDonationRecord);
  if (sub_197615DD0())
  {
  }

  else
  {
    sub_197615CD0();
  }

  sub_197615DB0();
  v3 = sub_197615F50();
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v3);
}

uint64_t CoreDonationRecord.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  v1 = OBJC_IVAR____TtC10TipKitCore18CoreDonationRecord___observationRegistrar;
  sub_197615B40();
  OUTLINED_FUNCTION_13();
  (*(v2 + 8))(&v0[v1]);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

unint64_t sub_1975968B0()
{
  result = qword_1ED816020;
  if (!qword_1ED816020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED816020);
  }

  return result;
}

void sub_1975968F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_197596B10(a1, a2, a3);
  if (v5)
  {
    v11 = v5;
    if (qword_1ED815ED0 != -1)
    {
      swift_once();
    }

    if (byte_1ED8157A8[0] == 1)
    {
      v6 = sub_1975A35CC();
      [v6 sendEvent_];

      if (qword_1ED816C98 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for logger(0);
      __swift_project_value_buffer(v7, qword_1ED816CA0);
      sub_197616A20();

      MEMORY[0x19A8E2A50](a1, a2);
      MEMORY[0x19A8E2A50](0xD000000000000026, 0x8000000197623710);
      sub_197558864(0x646928746E657645, 0xEA0000000000203ALL, v8);
    }

    else
    {
      if (qword_1ED815ED8 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for logger(0);
      __swift_project_value_buffer(v9, qword_1ED815EE0);
      sub_197558864(0xD00000000000008ELL, 0x8000000197623680, v10);
    }
  }
}

id sub_197596B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (qword_1ED8174E0 != -1)
  {
    swift_once();
  }

  if (byte_1ED8174EA != 1)
  {
    return 0;
  }

  if (qword_1ED817298 != -1)
  {
    swift_once();
  }

  if (byte_1ED8172A5)
  {
    return 0;
  }

  if (qword_1ED816168 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED81D1A0;
  v8 = *algn_1ED81D1A8;
  if (!a3)
  {

LABEL_17:
    v14 = 0xF000000000000000;
    goto LABEL_18;
  }

  v9 = objc_opt_self();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
  v10 = sub_1976160A0();
  v19 = 0;
  v11 = [v9 dataWithJSONObject:v10 options:0 error:&v19];

  v12 = v19;
  if (!v11)
  {
    v15 = v12;
    v16 = sub_197615830();

    swift_willThrow();
    if (qword_1ED816C98 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for logger(0);
    __swift_project_value_buffer(v17, qword_1ED816CA0);
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_197616A20();
    MEMORY[0x19A8E2A50](0xD00000000000002DLL, 0x8000000197623740);
    swift_getErrorValue();
    sub_197616EB0();
    sub_197558864(v19, v20, v18);

    a3 = 0;
    goto LABEL_17;
  }

  a3 = sub_1976159A0();
  v14 = v13;

LABEL_18:
  objc_allocWithZone(MEMORY[0x1E698EBC0]);

  return sub_19759701C(a1, a2, 0, 0, v7, v8, a3, v14);
}

uint64_t sub_197596E14()
{
  if (qword_1ED817298 != -1)
  {
    swift_once();
  }

  v0 = 0xE300000000000000;
  v1 = 5459817;
  switch(byte_1ED8172A1)
  {
    case 1:
      v0 = 0xE500000000000000;
      v1 = 0x534F63616DLL;
      break;
    case 2:
      v0 = 0xE400000000000000;
      v1 = 1397716596;
      break;
    case 3:
      v0 = 0xE800000000000000;
      v1 = 0x534F6E6F69736976;
      break;
    case 4:
      v0 = 0xE700000000000000;
      v1 = 0x534F6863746177;
      break;
    default:
      break;
  }

  MEMORY[0x19A8E2A50](v1, v0);

  MEMORY[0x19A8E2A50](45, 0xE100000000000000);
  if (qword_1ED816170 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED81D1B0;
  v3 = *algn_1ED81D1B8;

  MEMORY[0x19A8E2A50](v2, v3);

  qword_1ED81D1A0 = 0;
  *algn_1ED81D1A8 = 0xE000000000000000;
  return result;
}

void sub_197596FA0()
{
  v0 = sub_1976161B0();
  v1 = MGGetStringAnswer();

  if (v1)
  {
    v2 = sub_1976161E0();
    v4 = v3;

    qword_1ED81D1B0 = v2;
    *algn_1ED81D1B8 = v4;
  }

  else
  {
    __break(1u);
  }
}

id sub_19759701C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  if (a2)
  {
    v13 = sub_1976161B0();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v13 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = sub_1976161B0();

  if (a6)
  {
LABEL_4:
    v15 = sub_1976161B0();

    goto LABEL_8;
  }

LABEL_7:
  v15 = 0;
LABEL_8:
  if (a8 >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_197615990();
    sub_197576558(a7, a8);
  }

  v17 = [v8 initWithContentIdentifier:v13 context:v14 osBuild:v15 userInfo:v16];

  return v17;
}

uint64_t sub_197597140(uint64_t a1, uint64_t a2)
{
  v4 = sub_197553EE0(0xD000000000000022, 0x8000000197625E80, &qword_1ED816F08, 0x1E695DEC8);
  if (v4)
  {
    v11 = sub_197553BF8(v4, v5, v6, v7, v8, v9, v10);

    if (v11)
    {
      v42 = a1;
      v43 = a2;
      MEMORY[0x1EEE9AC00](v12);
      OUTLINED_FUNCTION_2_0();
      *(v13 - 16) = &v42;
      v15 = sub_1975544B4(sub_1975F8D28, v14, v11);

      if (v15)
      {
        goto LABEL_41;
      }
    }
  }

  v16 = sub_197553EE0(0xD00000000000001ELL, 0x8000000197625EB0, &qword_1ED816F08, 0x1E695DEC8);
  if (v16)
  {
    v23 = sub_197553BF8(v16, v17, v18, v19, v20, v21, v22);

    if (v23)
    {
      v42 = a1;
      v43 = a2;
      MEMORY[0x1EEE9AC00](v24);
      OUTLINED_FUNCTION_2_0();
      *(v25 - 16) = &v42;
      v27 = sub_1975544B4(sub_1975F8D28, v26, v23);

      if (v27)
      {
        goto LABEL_41;
      }
    }
  }

  OUTLINED_FUNCTION_19();
  v28 = sub_1975975F4();
  if (v29)
  {
    v30 = v28;
    v31 = v29;
    if (v28 == 0x6972772D64616572 && v29 == 0xEA00000000006574)
    {
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_19();
    if (sub_197616EF0())
    {
      goto LABEL_40;
    }

    if (v30 == 0x6E6F2D6574697277 && v31 == 0xEA0000000000796CLL)
    {
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_19();
    v34 = sub_197616EF0();

    if (v34)
    {
LABEL_41:
      v40 = 1;
      return v40 & 1;
    }
  }

  if (qword_1ED817510 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_1ED817578)
  {
    v35 = qword_1ED817570;
    v36 = qword_1ED817578;
  }

  else
  {
    if (qword_1ED8174D8 != -1)
    {
      swift_once();
    }

    if (qword_1ED81D218)
    {
      v35 = qword_1ED81D210;
      v36 = qword_1ED81D218;
    }

    else
    {
      type metadata accessor for CFBundle(0);
      v37 = sub_1975A5740();
      if (v38)
      {
        v35 = v37;
      }

      else
      {
        v35 = 0;
      }

      if (v38)
      {
        v36 = v38;
      }

      else
      {
        v36 = 0xE000000000000000;
      }
    }
  }

  if (v35 == 0xD000000000000010 && 0x8000000197623CB0 == v36)
  {

LABEL_40:

    goto LABEL_41;
  }

  v40 = sub_197616EF0();

  return v40 & 1;
}

uint64_t sub_1975974C4()
{
  result = sub_197597140(0xD000000000000017, 0x8000000197623C60);
  byte_1ED8157A8[0] = result & 1;
  return result;
}

uint64_t sub_197597500(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = v2;
  v4 = a1 + 32;
  while (v2 != v1)
  {
    v5 = *(v4 + 8 * v1);
    if (sub_1975975B0(v5) != *(v5 + 16) || (v6 & 1) == 0)
    {
      sub_1975975B0(v5);
      return v1;
    }

    ++v1;
  }

  return v3;
}

uint64_t sub_1975975B0(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 16);
  result = v3;
  v5 = a1 + 32;
  while (v3 != v2)
  {
    if (*(*(v5 + 8 * v2) + 16))
    {
      return v2;
    }

    ++v2;
  }

  return result;
}

uint64_t sub_1975975F4()
{
  sub_1975976DC();
  if (!v0)
  {
    v21 = 0u;
    v22 = 0u;
    goto LABEL_8;
  }

  sub_197579604();

  if (!*(&v22 + 1))
  {
LABEL_8:
    sub_19755643C(&v21);
    return 0;
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34390, &qword_197618390);
  if (OUTLINED_FUNCTION_3_35(v1, v2, v3, v1, v4, v5, v6, v7, v16, v19, v21))
  {
    sub_197579604();

    if (OUTLINED_FUNCTION_3_35(v8, v9, v10, MEMORY[0x1E69E6158], v11, v12, v13, v14, v17, v20, v21))
    {
      return v18;
    }
  }

  return 0;
}

void sub_1975976DC()
{
  v0 = sub_197553EE0(0xD000000000000030, 0x8000000197625ED0, &qword_1ED816FC8, 0x1E695DF20);
  if (v0)
  {
    v1 = v0;
    v2 = v0 + 64;
    v3 = 1 << *(v0 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(v0 + 64);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_5:
    if (v5)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        v19 = 0;
        v20 = MEMORY[0x1E69E7CC0];
        v21 = *(v8 + 16);
        while (1)
        {
          while (1)
          {
            if (v21 == v19)
            {

              sub_1975F3370(v20);
              return;
            }

            if (v19 >= *(v8 + 16))
            {
              goto LABEL_43;
            }

            v22 = *(v8 + 8 * v19 + 32);
            if (*(v22 + 16))
            {
              break;
            }

LABEL_24:
            ++v19;
          }

          v23 = sub_19755C610(0x736D6165727453, 0xE700000000000000);
          if ((v24 & 1) == 0 || (sub_1975586C0(*(v22 + 56) + 32 * v23, v40), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34390, &qword_197618390), (swift_dynamicCast() & 1) == 0))
          {

            goto LABEL_24;
          }

          v37 = v20;
          v25 = *(v38 + 16);
          if (v25)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35480, &qword_197621CC8);
            v26 = swift_allocObject();
            v27 = _swift_stdlib_malloc_size(v26);
            *(v26 + 16) = v25;
            *(v26 + 24) = 2 * ((v27 - 32) / 48);
            v28 = sub_1975E9F00(v40, (v26 + 32), v25, v38);
            sub_1975A4D3C(v40[0]);
            if (v28 != v25)
            {
              goto LABEL_46;
            }
          }

          else
          {

            v26 = MEMORY[0x1E69E7CC0];
          }

          v29 = sub_1975B7DE4(v26);

          v30 = *(v29 + 16);
          v31 = *(v37 + 16);
          if (__OFADD__(v31, v30))
          {
            goto LABEL_44;
          }

          if (!swift_isUniquelyReferenced_nonNull_native() || (v32 = *(v37 + 24) >> 1, v32 < v31 + v30))
          {
            sub_1975BB55C();
            v37 = v33;
            v32 = *(v33 + 24) >> 1;
          }

          if (*(v29 + 16))
          {
            if (v32 - *(v37 + 16) < v30)
            {
              goto LABEL_47;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349B0, &qword_19761B200);
            swift_arrayInitWithCopy();

            v20 = v37;
            if (v30)
            {
              v34 = *(v37 + 16);
              v35 = __OFADD__(v34, v30);
              v36 = v34 + v30;
              if (v35)
              {
                goto LABEL_48;
              }

              *(v37 + 16) = v36;
            }
          }

          else
          {

            v20 = v37;
            if (v30)
            {
              goto LABEL_45;
            }
          }

          ++v19;
        }
      }

      v5 = *(v2 + 8 * v9);
      ++v7;
      if (v5)
      {
        v7 = v9;
LABEL_10:
        v10 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v11 = v10 | (v7 << 6);
        v12 = (*(v1 + 48) + 16 * v11);
        v14 = *v12;
        v13 = v12[1];
        sub_1975586C0(*(v1 + 56) + 32 * v11, &v41);
        v40[0] = v14;
        v40[1] = v13;
        v38 = v14;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34390, &qword_197618390);
        if ((swift_dynamicCast() & 1) != 0 && v39)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1975BB46C();
            v8 = v17;
          }

          v15 = *(v8 + 16);
          v16 = v15 + 1;
          if (v15 >= *(v8 + 24) >> 1)
          {
            sub_1975BB46C();
            v16 = v15 + 1;
            v8 = v18;
          }

          *(v8 + 16) = v16;
          *(v8 + 8 * v15 + 32) = v39;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }
}

uint64_t sub_197597B9C()
{
  v0 = type metadata accessor for logger(0);
  __swift_allocate_value_buffer(v0, qword_1ED815EE0);
  *OUTLINED_FUNCTION_13_18() = 4;
  if (qword_1ED817298 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_1ED817298);
  }

  OUTLINED_FUNCTION_16_14();
  if (v1)
  {
    OUTLINED_FUNCTION_17_14();
  }

  return OUTLINED_FUNCTION_7_20();
}

uint64_t sub_197597C40(uint64_t a1, uint64_t a2)
{
  result = sub_197597D94(a2);
  if (!v2)
  {
    v5 = result;
    result = sub_197567E4C(result);
    if (result)
    {
      v6 = result;
      for (i = 0; v6 != i; ++i)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x19A8E31E0](i, v5);
        }

        else
        {
          if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }
        }

        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          return result;
        }

        if (!sub_197576674())
        {
          goto LABEL_14;
        }

        if (CoreTipRecord.status.getter() == 2)
        {

LABEL_14:
        }

        sub_197592594(a1);
        sub_197577F90();
      }
    }
  }

  return result;
}

uint64_t sub_197597D94(uint64_t a1)
{
  v48 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D10, &unk_19761C4F0);
  OUTLINED_FUNCTION_0();
  v46 = v2;
  v47 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v45 = &v43 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D18, &unk_19761CC40);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v43 - v8;
  if (qword_1ED817510 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_1ED817578)
  {
    v9 = qword_1ED817570;
    v10 = qword_1ED817578;
  }

  else
  {
    if (qword_1ED8174D8 != -1)
    {
      OUTLINED_FUNCTION_4_3(&qword_1ED8174D8);
    }

    if (qword_1ED81D218)
    {
      v9 = qword_1ED81D210;
      v10 = qword_1ED81D218;
    }

    else
    {
      type metadata accessor for CFBundle(0);
      v11 = sub_1975A5740();
      if (v12)
      {
        v9 = v11;
      }

      else
      {
        v9 = 0;
      }

      if (v12)
      {
        v10 = v12;
      }

      else
      {
        v10 = 0xE000000000000000;
      }
    }
  }

  if (v9 == 0xD000000000000010 && 0x8000000197623CB0 == v10)
  {
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_21_3();
  v14 = sub_197616EF0();

  if (v14)
  {
    goto LABEL_46;
  }

  if (qword_1ED817578)
  {
    v15 = qword_1ED817570;
    v16 = qword_1ED817578;
  }

  else
  {
    if (qword_1ED8174D8 != -1)
    {
      OUTLINED_FUNCTION_4_3(&qword_1ED8174D8);
    }

    if (qword_1ED81D218)
    {
      v15 = qword_1ED81D210;
      v16 = qword_1ED81D218;
    }

    else
    {
      type metadata accessor for CFBundle(0);
      v17 = sub_1975A5740();
      v15 = v18 ? v17 : 0;
      v16 = v18 ? v18 : 0xE000000000000000;
    }
  }

  if (v15 == 0x6C7070612E6D6F63 && v16 == 0xEF64737069742E65)
  {
LABEL_45:
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    v20 = sub_197616EF0();

    if (v20 & 1) == 0 && (sub_19756F1CC())
    {
      v21 = CoreEventRecord.id.getter();
      v23 = v22;
      type metadata accessor for CoreRule();
      v24 = sub_19757536C();
      v25 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v25 = v21 & 0xFFFFFFFFFFFFLL;
      }

      if (v25)
      {
        v26 = *(v24 + 16);

        if (v26)
        {
          v27 = sub_19757536C();
          v43 = &v43;
          *(&v43 - 4) = MEMORY[0x1EEE9AC00](v27);
          *(&v43 - 3) = v21;
          *(&v43 - 2) = v23;
          v51 = type metadata accessor for CoreRuleRecord(0);
          v28 = v44;
          sub_197615AE0();

          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D20, &qword_19761C500);
          __swift_storeEnumTagSinglePayload(v28, 0, 1, v29);
          sub_19757D6D4(v28, v7);
          sub_1975611B4(&qword_1ED817280, type metadata accessor for CoreRuleRecord, &protocol conformance descriptor for CoreRuleRecord);
          v30 = v45;
          v31 = sub_197615D90();
          MEMORY[0x1EEE9AC00](v31);
          OUTLINED_FUNCTION_3_1();
          swift_getKeyPath();
          v49 = 0;
          v50 = 1;
          OUTLINED_FUNCTION_14_1();

          MEMORY[0x1EEE9AC00](v32);
          OUTLINED_FUNCTION_3_1();
          swift_getKeyPath();
          v49 = 0;
          v50 = 1;
          OUTLINED_FUNCTION_14_1();

          OUTLINED_FUNCTION_21_0();
          MEMORY[0x1EEE9AC00](v33);
          OUTLINED_FUNCTION_3_1();
          swift_getKeyPath();
          LOBYTE(v49) = 0;
          OUTLINED_FUNCTION_14_1();

          OUTLINED_FUNCTION_21_0();
          MEMORY[0x1EEE9AC00](v34);
          OUTLINED_FUNCTION_3_1();
          KeyPath = swift_getKeyPath();
          OUTLINED_FUNCTION_8_8(KeyPath);

          OUTLINED_FUNCTION_21_0();
          MEMORY[0x1EEE9AC00](v36);
          OUTLINED_FUNCTION_3_1();
          v37 = swift_getKeyPath();
          OUTLINED_FUNCTION_8_8(v37);

          OUTLINED_FUNCTION_21_0();
          MEMORY[0x1EEE9AC00](v38);
          OUTLINED_FUNCTION_3_1();
          v39 = swift_getKeyPath();
          OUTLINED_FUNCTION_8_8(v39);

          v40 = sub_197615C80();
          (*(v46 + 8))(v30, v47);
          sub_19755C820(v28, &qword_1EAF34D18, &unk_19761CC40);
          return v40;
        }
      }

      else
      {
      }

      return MEMORY[0x1E69E7CC0];
    }
  }

LABEL_46:
  CoreEventRecord.rules.getter();
  if (v41)
  {
    return v41;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

__n128 sub_197598428(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_197598484@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_27_3(a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BB0, &qword_19761BAD0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF350E8, &qword_19761F0A8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF350F0, &qword_19761F0B0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF350F8, &qword_19761F0B8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35080, &qword_19761EF78);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35088, &qword_19761EF80);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346F0, &qword_1976192E8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF350D8, &qword_19761F020);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_3(v11, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34730, &qword_197619350);
  OUTLINED_FUNCTION_32_3();
  sub_197615810();
  OUTLINED_FUNCTION_1_11();
  v13 = sub_1975D4F2C(v12);
  OUTLINED_FUNCTION_25_4(v13);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_20_6(KeyPath);

  v15 = OUTLINED_FUNCTION_16_8();
  v16(v15);
  OUTLINED_FUNCTION_3_21();
  sub_1975D4F2C(v17);
  OUTLINED_FUNCTION_7_12();
  sub_1975D4F2C(v18);
  OUTLINED_FUNCTION_5_15();
  sub_1975D4F2C(v19);
  OUTLINED_FUNCTION_9_11();
  v20 = OUTLINED_FUNCTION_24_5();
  v21(v20);
  v22 = OUTLINED_FUNCTION_22_6();
  v23(v22);
  OUTLINED_FUNCTION_26_5();
  v24 = swift_getKeyPath();
  OUTLINED_FUNCTION_19_5(v24);

  v25 = OUTLINED_FUNCTION_17_7();
  v26(v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AF8, &qword_19761B850);
  type metadata accessor for CoreEventRecord(0);
  sub_1975D4F2C(&unk_1ED815E98);
  v48 = sub_1975D4F2C(&qword_1ED8164D0);
  OUTLINED_FUNCTION_12_11(v48, v27, v28, v29, v30, v31, MEMORY[0x1E69E6158]);
  v32 = OUTLINED_FUNCTION_21_6();
  v33(v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34400, &qword_1976185C0);
  OUTLINED_FUNCTION_32_3();
  sub_197615810();
  OUTLINED_FUNCTION_3_0();
  sub_1975D4F2C(v34);
  sub_1975D4F2C(&qword_1ED816CF0);
  v35 = OUTLINED_FUNCTION_10_12(&qword_1ED816C68);
  OUTLINED_FUNCTION_11_11(v35);
  v36 = OUTLINED_FUNCTION_29_3();
  v37(v36);
  v38 = OUTLINED_FUNCTION_28_3();
  v39(v38);
  v50[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35100, &qword_19761F0E8);
  v50[4] = sub_19757D928(&unk_1ED815EC8);
  __swift_allocate_boxed_opaque_existential_0(v50);
  OUTLINED_FUNCTION_4_24();
  sub_1975D4F2C(v40);
  OUTLINED_FUNCTION_3_23();
  v42 = sub_1975D4F2C(v41);
  OUTLINED_FUNCTION_13_10(v42);
  v43 = OUTLINED_FUNCTION_31_3();
  v44(v43);
  v45 = OUTLINED_FUNCTION_30_5();
  return v46(v45);
}

unint64_t sub_197598BC4()
{
  result = qword_1ED815EC0;
  if (!qword_1ED815EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF350F0, &qword_19761F0B0);
    sub_1975D4E9C(&unk_1ED815EA0);
    sub_19758F898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815EC0);
  }

  return result;
}

uint64_t sub_197598C68()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_197598D54, 0, 0);
}

uint64_t sub_197598D54()
{
  OUTLINED_FUNCTION_1();
  swift_continuation_resume();
  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_197598DAC()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_197598ED0, 0, 0);
}

uint64_t sub_197598EF0(void *a1)
{
  v89 = sub_197615970();
  OUTLINED_FUNCTION_14();
  v87 = v3;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v86 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v86 - v7;
  v9 = sub_197615A60();
  OUTLINED_FUNCTION_14();
  v88 = v10;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v86 - v15;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_197617250();
  sub_1975586C0(v1, v93);
  v17 = sub_19755404C(0, &qword_1ED8164F8, 0x1E695DFB0);
  if (!OUTLINED_FUNCTION_3_3(v17, v18, v19, v17))
  {
    OUTLINED_FUNCTION_10_0();
    if (swift_dynamicCast())
    {
      goto LABEL_4;
    }

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34320, &qword_197618338);
    v23 = OUTLINED_FUNCTION_3_3(v20, v21, v22, v20);
    if (v23)
    {
      sub_1975558C4(v92, v90);
      __swift_project_boxed_opaque_existential_1Tm(v90, v90[3]);
      OUTLINED_FUNCTION_2_2();
      sub_197616140();
      __swift_destroy_boxed_opaque_existential_0Tm(v90);
    }

    else
    {
      v26 = OUTLINED_FUNCTION_3_3(v23, v24, v25, MEMORY[0x1E69E6370]);
      if (v26)
      {
        OUTLINED_FUNCTION_11_1();
        OUTLINED_FUNCTION_6();
        sub_197616FA0();
      }

      else
      {
        v29 = OUTLINED_FUNCTION_3_3(v26, v27, v28, MEMORY[0x1E69E6530]);
        if (v29)
        {
          OUTLINED_FUNCTION_11_1();
          OUTLINED_FUNCTION_2_2();
          sub_197616FD0();
        }

        else
        {
          v32 = OUTLINED_FUNCTION_3_3(v29, v30, v31, MEMORY[0x1E69E7230]);
          if (v32)
          {
            OUTLINED_FUNCTION_20_2();
            OUTLINED_FUNCTION_4_0();
            sub_197617000();
          }

          else
          {
            v35 = OUTLINED_FUNCTION_3_3(v32, v33, v34, MEMORY[0x1E69E7290]);
            if (v35)
            {
              OUTLINED_FUNCTION_20_2();
              OUTLINED_FUNCTION_4_0();
              sub_197617010();
            }

            else
            {
              v38 = OUTLINED_FUNCTION_3_3(v35, v36, v37, MEMORY[0x1E69E72F0]);
              if (v38)
              {
                OUTLINED_FUNCTION_11_1();
                OUTLINED_FUNCTION_6();
                sub_197617020();
              }

              else
              {
                v41 = OUTLINED_FUNCTION_3_3(v38, v39, v40, MEMORY[0x1E69E7360]);
                if (v41)
                {
                  OUTLINED_FUNCTION_11_1();
                  OUTLINED_FUNCTION_2_2();
                  sub_197617030();
                }

                else
                {
                  v44 = OUTLINED_FUNCTION_3_3(v41, v42, v43, MEMORY[0x1E69E6810]);
                  if (v44)
                  {
                    OUTLINED_FUNCTION_11_1();
                    OUTLINED_FUNCTION_2_2();
                    sub_197616FE0();
                  }

                  else
                  {
                    v47 = OUTLINED_FUNCTION_3_3(v44, v45, v46, MEMORY[0x1E69E7508]);
                    if (v47)
                    {
                      OUTLINED_FUNCTION_20_2();
                      OUTLINED_FUNCTION_4_0();
                      sub_197617040();
                    }

                    else
                    {
                      v50 = OUTLINED_FUNCTION_3_3(v47, v48, v49, MEMORY[0x1E69E75F8]);
                      if (v50)
                      {
                        OUTLINED_FUNCTION_20_2();
                        OUTLINED_FUNCTION_4_0();
                        sub_197617050();
                      }

                      else
                      {
                        v53 = OUTLINED_FUNCTION_3_3(v50, v51, v52, MEMORY[0x1E69E7668]);
                        if (v53)
                        {
                          OUTLINED_FUNCTION_11_1();
                          OUTLINED_FUNCTION_6();
                          sub_197617060();
                        }

                        else
                        {
                          v56 = OUTLINED_FUNCTION_3_3(v53, v54, v55, MEMORY[0x1E69E76D8]);
                          if (v56)
                          {
                            OUTLINED_FUNCTION_11_1();
                            OUTLINED_FUNCTION_2_2();
                            sub_197617070();
                          }

                          else
                          {
                            v59 = OUTLINED_FUNCTION_3_3(v56, v57, v58, MEMORY[0x1E69E6448]);
                            if (v59)
                            {
                              OUTLINED_FUNCTION_17();
                              OUTLINED_FUNCTION_15_1();
                              sub_197616FC0();
                            }

                            else
                            {
                              v62 = OUTLINED_FUNCTION_3_3(v59, v60, v61, MEMORY[0x1E69E63B0]);
                              if (v62)
                              {
                                OUTLINED_FUNCTION_17();
                                OUTLINED_FUNCTION_15_1();
                                sub_197616FB0();
                              }

                              else
                              {
                                if (OUTLINED_FUNCTION_3_3(v62, v63, v64, MEMORY[0x1E69E6158]))
                                {
                                  __swift_mutable_project_boxed_opaque_existential_1(v94, v95);
                                  sub_197616F90();
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_10_0();
                                  if (swift_dynamicCast())
                                  {
                                    (*(v88 + 32))(v14, v16, v9);
                                    OUTLINED_FUNCTION_17();
                                    sub_19759F44C(&qword_1ED816D90, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
                                    sub_197616FF0();
                                    (*(v88 + 8))(v14, v9);
                                    goto LABEL_33;
                                  }

                                  OUTLINED_FUNCTION_10_0();
                                  if (swift_dynamicCast())
                                  {
                                    (*(v87 + 32))(v86, v8, v89);
                                    OUTLINED_FUNCTION_17();
                                    sub_19759F44C(&qword_1ED8161F0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
                                    sub_197616FF0();
                                    (*(v87 + 8))(v86, v89);
                                    goto LABEL_33;
                                  }

                                  v66 = sub_19755404C(0, &qword_1ED816018, 0x1E696AD98);
                                  if (OUTLINED_FUNCTION_3_3(v66, v67, v68, v66))
                                  {
                                    v69 = v92[0];
                                    sub_19759DE6C(v92[0], v94);

                                    goto LABEL_33;
                                  }

                                  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34328, &qword_197618340);
                                  if (OUTLINED_FUNCTION_3_3(v70, v71, v72, v70))
                                  {
                                    sub_1975F3078(v92[0]);
                                    v74 = v73;

                                    v90[0] = v74;
                                    OUTLINED_FUNCTION_20_2();
                                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34360, &qword_19761E170);
                                    sub_19759F3C0();
                                  }

                                  else
                                  {
                                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34330, &qword_197618348);
                                    OUTLINED_FUNCTION_10_0();
                                    if ((swift_dynamicCast() & 1) == 0)
                                    {
                                      v83 = sub_197616A90();
                                      swift_allocError();
                                      v85 = v84;
                                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34338, &unk_197618350);
                                      sub_1975586C0(v1, v85);
                                      __swift_project_boxed_opaque_existential_1Tm(v94, v95);
                                      OUTLINED_FUNCTION_23();
                                      sub_197616F80();
                                      sub_197616A60();
                                      (*(*(v83 - 8) + 104))(v85, *MEMORY[0x1E69E6B30], v83);
                                      swift_willThrow();
                                      goto LABEL_33;
                                    }

                                    v89 = v90[0];
                                    v75 = *(v90[0] + 16);
                                    if (v75)
                                    {
                                      v91 = MEMORY[0x1E69E7CC0];
                                      sub_1975D1F14(0, v75, 0);
                                      v76 = v91;
                                      v77 = v89 + 32;
                                      do
                                      {
                                        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34340, &unk_19761C8E0);
                                        v79 = swift_allocObject();
                                        sub_19755F9A0(v77, v79 + 16, &qword_1EAF34340, &unk_19761C8E0);
                                        v91 = v76;
                                        v81 = v76[2];
                                        v80 = v76[3];
                                        if (v81 >= v80 >> 1)
                                        {
                                          sub_1975D1F14(v80 > 1, v81 + 1, 1);
                                          v76 = v91;
                                        }

                                        v76[2] = v81 + 1;
                                        v82 = &v76[4 * v81];
                                        v82[4] = v79;
                                        *(v82 + 5) = *v92;
                                        v82[7] = v78;
                                        v77 += 32;
                                        --v75;
                                      }

                                      while (v75);
                                    }

                                    else
                                    {

                                      v76 = MEMORY[0x1E69E7CC0];
                                    }

                                    v92[0] = v76;
                                    OUTLINED_FUNCTION_20_2();
                                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34348, &unk_197618360);
                                    sub_19759F2A0();
                                  }

                                  sub_197616FF0();
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
            }
          }
        }
      }
    }

LABEL_33:
    __swift_destroy_boxed_opaque_existential_0Tm(v93);
    return __swift_destroy_boxed_opaque_existential_0Tm(v94);
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v93);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_15_1();
  sub_197617080();
  return __swift_destroy_boxed_opaque_existential_0Tm(v94);
}

uint64_t sub_19759989C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = MEMORY[0x1E69E6158];
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1975998B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34400, &qword_1976185C0);
  a3[3] = result;
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t sub_1975998FC()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1975999BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1975999F4()
{
  v1 = sub_197616620();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_197599C04@<X0>(uint64_t *a1@<X8>)
{
  result = Configuration.bundleIdentifierOverride.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_197599C34@<X0>(_BYTE *a1@<X8>)
{
  result = Configuration.usesAppleDisplayFrequency.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_197599C8C@<X0>(_BYTE *a1@<X8>)
{
  result = Configuration.usesCoreAnalytics.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_197599CE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

__n128 sub_197599D38(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_197599E10(uint64_t a1, uint64_t a2)
{
  v2 = sub_197616D20();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_197599E5C(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 2036625250;
      break;
    case 2:
      result = OUTLINED_FUNCTION_36_0(0x69746361u);
      break;
    case 3:
      result = 1852793705;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_19759A1E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_19759A218()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19759A27C()
{

  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_19759A2D4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19759A30C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_19759A34C()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 89, 7);
}

uint64_t sub_19759A394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_197615A60();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_19759A440(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_197615A60();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

__n128 sub_19759A524(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_19759A5E4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_19759A68C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19759A6C8@<X0>(uint64_t *a1@<X8>)
{
  result = static CoreEvent.events.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19759A6F4@<X0>(uint64_t *a1@<X8>)
{
  result = static CoreEvent.modelIdentifiers.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19759A770@<X0>(uint64_t *a1@<X8>)
{
  result = static CoreParameter.parameters.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19759A79C@<X0>(uint64_t *a1@<X8>)
{
  result = static CoreParameter.modelIdentifiers.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19759A880@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1975CAF78(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_19759AA0C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1975D0B20(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_19759AAEC()
{
  OUTLINED_FUNCTION_16_0();
  result = CoreRuleRecord.status.getter();
  *v0 = result;
  return result;
}

uint64_t sub_19759AB68()
{
  OUTLINED_FUNCTION_16_0();
  result = CoreTip.presentationStyle.getter();
  *v0 = result;
  return result;
}

uint64_t sub_19759ABB8()
{
  OUTLINED_FUNCTION_16_0();
  result = CoreTip.isHidden.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_19759AC0C()
{
  OUTLINED_FUNCTION_16_0();
  result = CoreTip.activeViews.getter();
  *v0 = result;
  return result;
}

void *sub_19759AC5C()
{
  OUTLINED_FUNCTION_16_0();
  result = CoreTip.constellationContent.getter();
  *v0 = result;
  return result;
}

uint64_t sub_19759ACEC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_19759AD80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19759AFB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_19759AFF0()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

__n128 sub_19759B04C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_19759B084()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19759B0C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19759B11C()
{
  sub_197615A60();
  OUTLINED_FUNCTION_1_31();
  v2 = *(v1 + 80);
  v4 = *(v3 + 64);

  v5 = OUTLINED_FUNCTION_19_6();
  v6(v5);

  return MEMORY[0x1EEE6BDD0](v0, ((v2 + 32) & ~v2) + v4, v2 | 7);
}

uint64_t sub_19759B1C8()
{
  sub_197615A60();
  OUTLINED_FUNCTION_1_31();
  v2 = *(v1 + 80);
  v4 = (((*(v3 + 64) + ((v2 + 32) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v5 = OUTLINED_FUNCTION_19_6();
  v6(v5);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 47, v2 | 7);
}

uint64_t sub_19759B294()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30);
  OUTLINED_FUNCTION_20_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v6 = *(v5 + 64);

  v7 = sub_197615970();
  if (!OUTLINED_FUNCTION_31_4(v0 + v4))
  {
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v6, v3 | 7);
}

uint64_t sub_19759B38C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19759B3C4()
{
  sub_197615A60();
  OUTLINED_FUNCTION_1_31();
  v2 = *(v1 + 80);
  v4 = (*(v3 + 64) + ((v2 + 32) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = OUTLINED_FUNCTION_19_6();
  v6(v5);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 47, v2 | 7);
}

uint64_t sub_19759B488()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19759B4C0@<X0>(uint64_t *a1@<X8>)
{
  result = static CoreTip.tips.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19759B4EC@<X0>(uint64_t *a1@<X8>)
{
  result = static CoreTip.modelIdentifiers.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19759B570@<X0>(uint64_t *a1@<X8>)
{
  result = CoreTip.RecordStatus.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_19759B614(char a1)
{
  if (a1)
  {
    return 0x6579616C70736964;
  }

  else
  {
    return 0x4449706974;
  }
}

uint64_t sub_19759B67C()
{
  OUTLINED_FUNCTION_16_0();
  result = CoreTipRecord.status.getter();
  *v0 = result;
  return result;
}

uint64_t sub_19759B6CC()
{
  OUTLINED_FUNCTION_16_0();
  result = CoreTipRecord.invalidationReason.getter();
  *v0 = result;
  return result;
}

uint64_t sub_19759B76C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19759B7A4()
{
  v1 = sub_197615970();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  sub_197567790(*(v0 + 40), *(v0 + 48));
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_19759B908()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

__n128 sub_19759B954(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_19759B974(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_19759B980()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19759BA58(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 248)
  {
    v4 = *a1;
    if (v4 >= 8)
    {
      return v4 - 7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_197615BB0();
    v9 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

_BYTE *sub_19759BAD8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 248)
  {
    *result = a2 + 7;
  }

  else
  {
    v7 = sub_197615BB0();
    v8 = &v5[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19759BC5C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_19759BC98()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_108(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AE8, &qword_19761B848);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_27_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34710, &unk_197622260);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_30_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346E8, &qword_1976192E0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_14_11();
  v10 = sub_197559AAC(v7, v8, &unk_197622260, v9);
  OUTLINED_FUNCTION_70_0(v10);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_56_0(KeyPath);

  v12 = OUTLINED_FUNCTION_100();
  v13(v12);
  sub_197615810();
  v0[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35268, &unk_1976224A0);
  v0[4] = sub_1975710A4();
  __swift_allocate_boxed_opaque_existential_0(v0);
  OUTLINED_FUNCTION_4_20();
  sub_197559AAC(v14, &qword_1EAF346E8, &qword_1976192E0, v15);
  OUTLINED_FUNCTION_3_21();
  v18 = sub_197559AAC(v16, &qword_1EAF34AE8, &qword_19761B848, v17);
  OUTLINED_FUNCTION_44_0(v18, v19, v20, v21, v22, v18, MEMORY[0x1E69E6180]);
  v23 = OUTLINED_FUNCTION_42_3();
  v24(v23);
  v25 = OUTLINED_FUNCTION_98();
  v26(v25);
  OUTLINED_FUNCTION_14_9();
}

void sub_19759BF14()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_108(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AE8, &qword_19761B848);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_27_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D70, &unk_1976223F0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_30_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D78, &qword_19761CE28);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_14_11();
  v10 = sub_197559AAC(v7, v8, &unk_1976223F0, v9);
  OUTLINED_FUNCTION_70_0(v10);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_56_0(KeyPath);

  v12 = OUTLINED_FUNCTION_100();
  v13(v12);
  sub_197615810();
  v0[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D80, &qword_19761CE58);
  v0[4] = sub_197565BFC();
  __swift_allocate_boxed_opaque_existential_0(v0);
  OUTLINED_FUNCTION_4_20();
  sub_197559AAC(v14, &qword_1EAF34D78, &qword_19761CE28, v15);
  OUTLINED_FUNCTION_3_21();
  v18 = sub_197559AAC(v16, &qword_1EAF34AE8, &qword_19761B848, v17);
  OUTLINED_FUNCTION_44_0(v18, v19, v20, v21, v22, v18, MEMORY[0x1E69E6180]);
  v23 = OUTLINED_FUNCTION_42_3();
  v24(v23);
  v25 = OUTLINED_FUNCTION_98();
  v26(v25);
  OUTLINED_FUNCTION_14_9();
}

void sub_19759C190()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_108(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AE8, &qword_19761B848);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_27_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AF0, &unk_197622320);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_30_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AF8, &qword_19761B850);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_14_11();
  v10 = sub_197559AAC(v7, v8, &unk_197622320, v9);
  OUTLINED_FUNCTION_70_0(v10);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_56_0(KeyPath);

  v12 = OUTLINED_FUNCTION_100();
  v13(v12);
  sub_197615810();
  v0[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B00, &qword_19761B880);
  v0[4] = sub_19758F80C();
  __swift_allocate_boxed_opaque_existential_0(v0);
  OUTLINED_FUNCTION_4_20();
  sub_197559AAC(v14, &qword_1EAF34AF8, &qword_19761B850, v15);
  OUTLINED_FUNCTION_3_21();
  v18 = sub_197559AAC(v16, &qword_1EAF34AE8, &qword_19761B848, v17);
  OUTLINED_FUNCTION_44_0(v18, v19, v20, v21, v22, v18, MEMORY[0x1E69E6180]);
  v23 = OUTLINED_FUNCTION_42_3();
  v24(v23);
  v25 = OUTLINED_FUNCTION_98();
  v26(v25);
  OUTLINED_FUNCTION_14_9();
}

uint64_t sub_19759C43C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19759C484@<X0>(uint64_t *a1@<X8>)
{
  result = static MiniTipsDatastore.activeStores.getter();
  *a1 = result;
  return result;
}

__n128 sub_19759C524(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_19759C6C0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_19759C774()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19759C904@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1975F085C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_19759C930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19759C8D8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_19759C95C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_197616860();
  OUTLINED_FUNCTION_14();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  (*(v8 + 16))(&v16 - v10, a1, v6);
  if (__swift_getEnumTagSinglePayload(v11, 1, a2) == 1)
  {
    a3[3] = MEMORY[0x1E69E6158];
    *a3 = 0x3E6C6C756E3CLL;
    a3[1] = 0xE600000000000000;
  }

  else
  {
    a3[3] = a2;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    (*(*(a2 - 8) + 32))(boxed_opaque_existential_0, v11, a2);
  }

  v13 = OUTLINED_FUNCTION_21();
  return v14(v13);
}

uint64_t sub_19759CAB0()
{
  sub_1975586C0(v0, v10);
  if (swift_dynamicCast())
  {
    memset(v9, 0, 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34340, &unk_19761C8E0);
    sub_197616200();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF343D0, &qword_1976183D0);
    if (swift_dynamicCast())
    {
      sub_1975558C4(v9, v8);
      __swift_project_boxed_opaque_existential_1Tm(v8, v8[3]);
      sub_197616E80();
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
    }

    else
    {
      v1 = OUTLINED_FUNCTION_19();
      __swift_project_boxed_opaque_existential_1Tm(v1, v2);
      OUTLINED_FUNCTION_14();
      MEMORY[0x1EEE9AC00](v3);
      (*(v5 + 16))(&v8[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      OUTLINED_FUNCTION_19();
      sub_197616200();
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v10);
  return OUTLINED_FUNCTION_21();
}

uint64_t sub_19759CC64()
{
  sub_1975586C0(v0, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF343C8, &qword_1976183C8);
  if (swift_dynamicCast())
  {
    sub_1975558C4(&v5, v4);
    __swift_project_boxed_opaque_existential_1Tm(v4, v4[3]);
    v1 = sub_197616F00();
    MEMORY[0x19A8E2A50](v1);

    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
  }

  else
  {
    *&v5 = 0x6261646F43796E41;
    *(&v5 + 1) = 0xEB0000000028656CLL;
    v2 = sub_19759CAB0();
    MEMORY[0x19A8E2A50](v2);

    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v6);
  return OUTLINED_FUNCTION_21();
}

uint64_t sub_19759CD90()
{
  sub_197617190();
  sub_19759D83C(v1);
  return sub_1976171F0();
}

uint64_t sub_19759CDD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  OUTLINED_FUNCTION_23();
  sub_197617230();
  if (!v2)
  {
    v5 = v12;
    __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    OUTLINED_FUNCTION_23();
    if (sub_197616F70())
    {
      v6 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34428, &qword_1976185E8);
      v8 = v6 & 0xFFFFFFFFFFFFFF00;
    }

    else
    {
      v5 = v12;
      __swift_project_boxed_opaque_existential_1Tm(v10, v11);
      OUTLINED_FUNCTION_23();
      LOBYTE(v6) = sub_197616F20() & 1;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34420, &qword_1976185E0);
      v8 = 0;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    *a2 = v8 | v6;
    *(a2 + 8) = v13;
    *(a2 + 15) = BYTE6(v5);
    *(a2 + 13) = WORD2(v5);
    *(a2 + 9) = v5;
    *(a2 + 24) = v7;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_19759D3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_26_0(a1, a2, a3, a4);
  v11 = OUTLINED_FUNCTION_1_2(v4, v5, v6, MEMORY[0x1E69E6370], v7, v8, v9, v10, v127, v141, v157[0]);
  if (v11)
  {
    goto LABEL_2;
  }

  v18 = OUTLINED_FUNCTION_1_2(v11, v12, v13, MEMORY[0x1E69E6530], v14, v15, v16, v17, v128, v142, v157[0]);
  if (v18)
  {
LABEL_4:
    MEMORY[0x19A8E3940](v129);
    return __swift_destroy_boxed_opaque_existential_0Tm(v157);
  }

  v26 = OUTLINED_FUNCTION_1_2(v18, v19, v20, MEMORY[0x1E69E7230], v21, v22, v23, v24, v129, v143, v157[0]);
  if (!v26)
  {
    v33 = OUTLINED_FUNCTION_1_2(v26, v27, v28, MEMORY[0x1E69E7290], v29, v30, v31, v32, v130, v144, v157[0]);
    if (v33)
    {
LABEL_8:
      sub_1976171C0();
      return __swift_destroy_boxed_opaque_existential_0Tm(v157);
    }

    v40 = OUTLINED_FUNCTION_1_2(v33, v34, v35, MEMORY[0x1E69E72F0], v36, v37, v38, v39, v131, v145, v157[0]);
    if (v40)
    {
LABEL_10:
      sub_1976171D0();
      return __swift_destroy_boxed_opaque_existential_0Tm(v157);
    }

    v47 = OUTLINED_FUNCTION_1_2(v40, v41, v42, MEMORY[0x1E69E7360], v43, v44, v45, v46, v132, v146, v157[0]);
    if (v47)
    {
      goto LABEL_12;
    }

    v55 = OUTLINED_FUNCTION_1_2(v47, v48, v49, MEMORY[0x1E69E6810], v50, v51, v52, v53, v133, v147, v157[0]);
    if (v55)
    {
      goto LABEL_4;
    }

    v62 = OUTLINED_FUNCTION_1_2(v55, v56, v57, MEMORY[0x1E69E7508], v58, v59, v60, v61, v129, v148, v157[0]);
    if (!v62)
    {
      v69 = OUTLINED_FUNCTION_1_2(v62, v63, v64, MEMORY[0x1E69E75F8], v65, v66, v67, v68, v134, v149, v157[0]);
      if (v69)
      {
        goto LABEL_8;
      }

      v76 = OUTLINED_FUNCTION_1_2(v69, v70, v71, MEMORY[0x1E69E7668], v72, v73, v74, v75, v135, v150, v157[0]);
      if (v76)
      {
        goto LABEL_10;
      }

      v83 = OUTLINED_FUNCTION_1_2(v76, v77, v78, MEMORY[0x1E69E76D8], v79, v80, v81, v82, v136, v151, v157[0]);
      if (!v83)
      {
        v90 = OUTLINED_FUNCTION_1_2(v83, v84, v85, MEMORY[0x1E69E6448], v86, v87, v88, v89, v133, v152, v157[0]);
        if (v90)
        {
          goto LABEL_10;
        }

        v97 = OUTLINED_FUNCTION_1_2(v90, v91, v92, MEMORY[0x1E69E63B0], v93, v94, v95, v96, v137, v153, v157[0]);
        if (!v97)
        {
          if (OUTLINED_FUNCTION_1_2(v97, v98, v99, MEMORY[0x1E69E6158], v100, v101, v102, v103, v138, v154, v157[0]))
          {
            sub_197616260();
          }

          else
          {
            v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34360, &qword_19761E170);
            if (OUTLINED_FUNCTION_1_2(v105, v106, v107, v105, v108, v109, v110, v111, v139, v155, v157[0]))
            {
              v112 = OUTLINED_FUNCTION_19();
              sub_19759F710(v112, v113, v114, v115, v116);
            }

            else
            {
              v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34348, &unk_197618360);
              if (!OUTLINED_FUNCTION_1_2(v117, v118, v119, v117, v120, v121, v122, v123, v140, v156, v157[0]))
              {
                return __swift_destroy_boxed_opaque_existential_0Tm(v157);
              }

              v124 = OUTLINED_FUNCTION_19();
              sub_19759F6A8(v124, v125, v126);
            }
          }

          return __swift_destroy_boxed_opaque_existential_0Tm(v157);
        }

        v104 = *&v138;
        if (*&v138 == 0.0)
        {
          v104 = 0.0;
        }

        v54 = v104;
LABEL_13:
        MEMORY[0x19A8E3980](*&v54);
        return __swift_destroy_boxed_opaque_existential_0Tm(v157);
      }

LABEL_12:
      v54 = *&v133;
      goto LABEL_13;
    }
  }

LABEL_2:
  sub_1976171B0();
  return __swift_destroy_boxed_opaque_existential_0Tm(v157);
}

uint64_t sub_19759D5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_26_0(a1, a2, a3, a4);
  v11 = OUTLINED_FUNCTION_1_2(v4, v5, v6, MEMORY[0x1E69E6370], v7, v8, v9, v10, v127, v141, v157[0]);
  if (v11)
  {
    goto LABEL_2;
  }

  v18 = OUTLINED_FUNCTION_1_2(v11, v12, v13, MEMORY[0x1E69E6530], v14, v15, v16, v17, v128, v142, v157[0]);
  if (v18)
  {
LABEL_4:
    MEMORY[0x19A8E3940](v129);
    return __swift_destroy_boxed_opaque_existential_0Tm(v157);
  }

  v26 = OUTLINED_FUNCTION_1_2(v18, v19, v20, MEMORY[0x1E69E7230], v21, v22, v23, v24, v129, v143, v157[0]);
  if (!v26)
  {
    v33 = OUTLINED_FUNCTION_1_2(v26, v27, v28, MEMORY[0x1E69E7290], v29, v30, v31, v32, v130, v144, v157[0]);
    if (v33)
    {
LABEL_8:
      sub_1976171C0();
      return __swift_destroy_boxed_opaque_existential_0Tm(v157);
    }

    v40 = OUTLINED_FUNCTION_1_2(v33, v34, v35, MEMORY[0x1E69E72F0], v36, v37, v38, v39, v131, v145, v157[0]);
    if (v40)
    {
LABEL_10:
      sub_1976171D0();
      return __swift_destroy_boxed_opaque_existential_0Tm(v157);
    }

    v47 = OUTLINED_FUNCTION_1_2(v40, v41, v42, MEMORY[0x1E69E7360], v43, v44, v45, v46, v132, v146, v157[0]);
    if (v47)
    {
      goto LABEL_12;
    }

    v55 = OUTLINED_FUNCTION_1_2(v47, v48, v49, MEMORY[0x1E69E6810], v50, v51, v52, v53, v133, v147, v157[0]);
    if (v55)
    {
      goto LABEL_4;
    }

    v62 = OUTLINED_FUNCTION_1_2(v55, v56, v57, MEMORY[0x1E69E7508], v58, v59, v60, v61, v129, v148, v157[0]);
    if (!v62)
    {
      v69 = OUTLINED_FUNCTION_1_2(v62, v63, v64, MEMORY[0x1E69E75F8], v65, v66, v67, v68, v134, v149, v157[0]);
      if (v69)
      {
        goto LABEL_8;
      }

      v76 = OUTLINED_FUNCTION_1_2(v69, v70, v71, MEMORY[0x1E69E7668], v72, v73, v74, v75, v135, v150, v157[0]);
      if (v76)
      {
        goto LABEL_10;
      }

      v83 = OUTLINED_FUNCTION_1_2(v76, v77, v78, MEMORY[0x1E69E76D8], v79, v80, v81, v82, v136, v151, v157[0]);
      if (!v83)
      {
        v90 = OUTLINED_FUNCTION_1_2(v83, v84, v85, MEMORY[0x1E69E6448], v86, v87, v88, v89, v133, v152, v157[0]);
        if (v90)
        {
          goto LABEL_10;
        }

        v97 = OUTLINED_FUNCTION_1_2(v90, v91, v92, MEMORY[0x1E69E63B0], v93, v94, v95, v96, v137, v153, v157[0]);
        if (!v97)
        {
          if (OUTLINED_FUNCTION_1_2(v97, v98, v99, MEMORY[0x1E69E6158], v100, v101, v102, v103, v138, v154, v157[0]))
          {
            sub_197616260();
          }

          else
          {
            v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34370, &qword_197618370);
            if (OUTLINED_FUNCTION_1_2(v105, v106, v107, v105, v108, v109, v110, v111, v139, v155, v157[0]))
            {
              v112 = OUTLINED_FUNCTION_19();
              sub_19759F710(v112, v113, v114, v115, v116);
            }

            else
            {
              v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34378, &qword_197618378);
              if (!OUTLINED_FUNCTION_1_2(v117, v118, v119, v117, v120, v121, v122, v123, v140, v156, v157[0]))
              {
                return __swift_destroy_boxed_opaque_existential_0Tm(v157);
              }

              v124 = OUTLINED_FUNCTION_19();
              sub_19759F6A8(v124, v125, v126);
            }
          }

          return __swift_destroy_boxed_opaque_existential_0Tm(v157);
        }

        v104 = *&v138;
        if (*&v138 == 0.0)
        {
          v104 = 0.0;
        }

        v54 = v104;
LABEL_13:
        MEMORY[0x19A8E3980](*&v54);
        return __swift_destroy_boxed_opaque_existential_0Tm(v157);
      }

LABEL_12:
      v54 = *&v133;
      goto LABEL_13;
    }
  }

LABEL_2:
  sub_1976171B0();
  return __swift_destroy_boxed_opaque_existential_0Tm(v157);
}

uint64_t sub_19759D83C(const void *a1)
{
  v2 = v1;
  sub_1975586C0(v2, v8);
  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  if (swift_dynamicCast())
  {
LABEL_4:
    MEMORY[0x19A8E3940]();
    return __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
LABEL_8:
      sub_1976171C0();
      return __swift_destroy_boxed_opaque_existential_0Tm(v8);
    }

    if (swift_dynamicCast())
    {
LABEL_10:
      sub_1976171D0();
      return __swift_destroy_boxed_opaque_existential_0Tm(v8);
    }

    if (swift_dynamicCast())
    {
      goto LABEL_12;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_4;
    }

    if (!swift_dynamicCast())
    {
      if (swift_dynamicCast())
      {
        goto LABEL_8;
      }

      if (swift_dynamicCast())
      {
        goto LABEL_10;
      }

      if (!swift_dynamicCast())
      {
        if (swift_dynamicCast())
        {
          goto LABEL_10;
        }

        if (!swift_dynamicCast())
        {
          if (swift_dynamicCast())
          {
            sub_197616260();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34398, &qword_197618398);
            if (swift_dynamicCast())
            {
              sub_19759F710(a1, v7, sub_19759F898, sub_19759D83C, sub_19759425C);
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF343A0, &unk_1976183A0);
              if (!swift_dynamicCast())
              {
                return __swift_destroy_boxed_opaque_existential_0Tm(v8);
              }

              sub_19759F6A8(a1, v7, sub_19759D83C);
            }
          }

          return __swift_destroy_boxed_opaque_existential_0Tm(v8);
        }

        v6 = *&v7;
        if (*&v7 == 0.0)
        {
          v6 = 0.0;
        }

        v5 = v6;
LABEL_13:
        MEMORY[0x19A8E3980](*&v5);
        return __swift_destroy_boxed_opaque_existential_0Tm(v8);
      }

LABEL_12:
      v5 = *&v7;
      goto LABEL_13;
    }
  }

LABEL_2:
  sub_1976171B0();
  return __swift_destroy_boxed_opaque_existential_0Tm(v8);
}

uint64_t sub_19759DBA0(uint64_t a1)
{
  sub_197617190();
  sub_19759D83C(v2);
  return sub_1976171F0();
}

uint64_t sub_19759DBE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34380, &qword_197618380);
  a2[3] = result;
  *a2 = a1;
  return result;
}

uint64_t sub_19759DC20@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF343F0, &qword_1976185B0);
  a2[3] = result;
  *a2 = a1;
  return result;
}

uint64_t sub_19759DC68@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = MEMORY[0x1E69E6370];
  *a2 = result;
  return result;
}

uint64_t sub_19759DC7C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34420, &qword_1976185E0);
  *(a2 + 24) = result;
  *a2 = a1;
  return result;
}

uint64_t sub_19759DCC0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v3 = sub_19759E384(a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF343A8, &qword_19761C270);
  a1[3] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_19759DD18@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v3 = sub_19759E384(a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34440, &qword_1976185F0);
  a1[3] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_19759DD8C@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34408, &qword_1976185C8);
  *(a1 + 24) = result;
  *a1 = a2;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_19759DDE0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[3] = MEMORY[0x1E69E6530];
  *a2 = result;
  return result;
}

uint64_t sub_19759DDF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34418, &qword_1976185D8);
  *(a2 + 24) = result;
  *a2 = a1;
  *(a2 + 8) = 0;
  return result;
}

uint64_t *sub_19759DE54@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  a2[3] = MEMORY[0x1E69E6158];
  *a2 = v2;
  a2[1] = v3;
  return result;
}

uint64_t sub_19759DE6C(void *a1, void *a2)
{
  if ((*[a1 objCType] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = sub_197616250();
    v2 = v8;
    v9 = v7 == 66 && v8 == 0xE100000000000000;
    if (v9 || (v3 = v7, v4 = 0xE100000000000000, (OUTLINED_FUNCTION_5_4(66) & 1) != 0))
    {

      [a1 BOOLValue];
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_0_0();
      return sub_197616FA0();
    }

    v11 = v3 == 99 && v2 == 0xE100000000000000;
    if (v11 || (OUTLINED_FUNCTION_5_4(99) & 1) != 0)
    {

      [a1 charValue];
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_0_0();
      return sub_197617000();
    }

    v12 = v3 == 115 && v2 == 0xE100000000000000;
    if (v12 || (OUTLINED_FUNCTION_5_4(115) & 1) != 0)
    {

      [a1 shortValue];
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_0_0();
      return sub_197617010();
    }

    v13 = v3 == 105 && v2 == 0xE100000000000000;
    if (v13 || (OUTLINED_FUNCTION_5_4(105) & 1) != 0 || (v3 == 108 ? (v14 = v2 == 0xE100000000000000) : (v14 = 0), v14 || (OUTLINED_FUNCTION_5_4(108) & 1) != 0))
    {

      [a1 intValue];
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_0_0();
      return sub_197617020();
    }

    v15 = v3 == 113 && v2 == 0xE100000000000000;
    if (v15 || (OUTLINED_FUNCTION_5_4(113) & 1) != 0)
    {

      [a1 longLongValue];
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_0_0();
      return sub_197617030();
    }
  }

  v16 = v3 == 67 && v2 == v4;
  if (v16 || (OUTLINED_FUNCTION_5_4(67) & 1) != 0)
  {

    [a1 unsignedCharValue];
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_0_0();
    return sub_197617040();
  }

  v17 = v3 == 83 && v2 == v4;
  if (v17 || (OUTLINED_FUNCTION_5_4(83) & 1) != 0)
  {

    [a1 unsignedShortValue];
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_0_0();
    return sub_197617050();
  }

  v18 = v3 == 73 && v2 == v4;
  if (v18 || (OUTLINED_FUNCTION_5_4(73) & 1) != 0 || (v3 == 76 ? (v19 = v2 == v4) : (v19 = 0), v19 || (OUTLINED_FUNCTION_5_4(76) & 1) != 0))
  {

    [a1 unsignedIntValue];
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_0_0();
    return sub_197617060();
  }

  v20 = v3 == 81 && v2 == v4;
  if (v20 || (OUTLINED_FUNCTION_5_4(81) & 1) != 0)
  {

    [a1 unsignedLongLongValue];
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_0_0();
    return sub_197617070();
  }

  v21 = v3 == 102 && v2 == v4;
  if (v21 || (OUTLINED_FUNCTION_5_4(102) & 1) != 0)
  {

    [a1 floatValue];
    __swift_mutable_project_boxed_opaque_existential_1(a2, a2[3]);
    OUTLINED_FUNCTION_24();
    return sub_197616FC0();
  }

  if (v3 == 100 && v2 == v4)
  {
  }

  else
  {
    v23 = OUTLINED_FUNCTION_5_4(100);

    if ((v23 & 1) == 0)
    {
      v24 = sub_197616A90();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34338, &unk_197618350);
      v26[3] = sub_19755404C(0, &qword_1ED816018, 0x1E696AD98);
      *v26 = a1;
      __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
      v27 = a1;
      sub_197616F80();
      sub_197616A60();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6B30], v24);
      return swift_willThrow();
    }
  }

  [a1 doubleValue];
  __swift_mutable_project_boxed_opaque_existential_1(a2, a2[3]);
  OUTLINED_FUNCTION_24();
  return sub_197616FB0();
}

uint64_t default argument 1 of AsyncStream.init<A>(_:bufferingPolicy:observation:)@<X0>(uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x1E69E8650];
  sub_1976165F0();
  OUTLINED_FUNCTION_13();
  v6 = *(v5 + 104);

  return v6(a2, v3, v4);
}

uint64_t sub_19759E384(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF343B0, &qword_1976183B0);
    v3 = sub_197616C90();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_19759F074(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t default argument 5 of static PersistentModel.compactMap<A>(in:batchSize:fetchLimit:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:resetsContext:_:_:)()
{
  OUTLINED_FUNCTION_16_2();
  sub_197616AB0();
  OUTLINED_FUNCTION_16_2();

  return sub_1976164B0();
}

uint64_t default argument 2 of static PersistentModel.getOrCreate(in:includePendingChanges:relationshipPaths:sortBy:_:_:)()
{
  OUTLINED_FUNCTION_16_2();
  sub_197616AB0();
  OUTLINED_FUNCTION_16_2();

  return sub_1976164B0();
}

uint64_t default argument 1 of MiniTipsDatastore.init(id:bundleID:)()
{
  if (qword_1ED817510 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (!qword_1ED817578)
  {
    if (qword_1ED8174D8 != -1)
    {
      swift_once();
    }

    if (!qword_1ED81D218)
    {
      type metadata accessor for CFBundle(0);
      sub_1975A5740();
    }
  }

  return OUTLINED_FUNCTION_21();
}

uint64_t default argument 7 of static PersistentModel.compactMap<A>(in:batchSize:fetchLimit:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:resetsContext:_:_:)()
{
  OUTLINED_FUNCTION_16_2();
  sub_197615630();
  OUTLINED_FUNCTION_16_2();

  return sub_1976164B0();
}

uint64_t default argument 5 of static PersistentModel.get(in:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:_:)()
{
  OUTLINED_FUNCTION_16_2();
  sub_197615630();
  OUTLINED_FUNCTION_16_2();

  return sub_1976164B0();
}

uint64_t sub_19759E650(uint64_t a1, id *a2)
{
  result = sub_1976161C0();
  *a2 = 0;
  return result;
}

uint64_t sub_19759E6C8(uint64_t a1, id *a2)
{
  v3 = sub_1976161D0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_19759E748(uint64_t a1)
{
  sub_1976161E0();
  v1 = sub_1976161B0();

  return v1;
}

uint64_t sub_19759E790@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_19759E748(a1);
  *a2 = result;
  return result;
}

uint64_t sub_19759E7C4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1976161B0();

  *a2 = v3;
  return result;
}

uint64_t sub_19759E80C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1975E8DE8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_19759E838(uint64_t a1)
{
  v2 = sub_19759F44C(&qword_1EAF34430, type metadata accessor for NSValueTransformerName, &unk_197618520);
  v3 = sub_19759F44C(&qword_1EAF34438, type metadata accessor for NSValueTransformerName, &unk_1976184C0);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_19759E8F4(uint64_t a1)
{
  v1 = sub_1976161E0();
  v2 = MEMORY[0x19A8E2AA0](v1);

  return v2;
}

uint64_t sub_19759E92C(uint64_t a1, uint64_t a2)
{
  sub_1976161E0();
  sub_197616260();
}

uint64_t sub_19759E980(uint64_t a1, uint64_t a2)
{
  sub_1976161E0();
  sub_197617190();
  sub_197616260();
  v2 = sub_1976171F0();

  return v2;
}

unint64_t sub_19759EA30()
{
  result = qword_1EAF342B8;
  if (!qword_1EAF342B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF342B8);
  }

  return result;
}

unint64_t sub_19759EA94()
{
  result = qword_1EAF342C0;
  if (!qword_1EAF342C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF342C0);
  }

  return result;
}

unint64_t sub_19759EAF8()
{
  result = qword_1EAF342C8;
  if (!qword_1EAF342C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF342C8);
  }

  return result;
}

unint64_t sub_19759EB80()
{
  result = qword_1EAF342D0;
  if (!qword_1EAF342D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF342D0);
  }

  return result;
}

unint64_t sub_19759EBEC()
{
  result = qword_1EAF342D8;
  if (!qword_1EAF342D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF342D8);
  }

  return result;
}

unint64_t sub_19759EC40()
{
  result = qword_1EAF342E0;
  if (!qword_1EAF342E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF342E0);
  }

  return result;
}

uint64_t sub_19759ECAC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  a1[1] = sub_19759EBEC();
  a1[2] = sub_19759EC40();
  result = a4();
  a1[3] = result;
  return result;
}

unint64_t sub_19759ECEC()
{
  result = qword_1ED816918[0];
  if (!qword_1ED816918[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED816918);
  }

  return result;
}

unint64_t sub_19759ED40(void *a1)
{
  a1[1] = sub_19759ED90();
  a1[2] = sub_19759EDE4();
  a1[3] = sub_19759EE38();
  a1[4] = sub_19759EE8C();
  a1[5] = sub_19759EEE0();
  result = sub_19759EF34();
  a1[6] = result;
  return result;
}

unint64_t sub_19759ED90()
{
  result = qword_1EAF342E8;
  if (!qword_1EAF342E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF342E8);
  }

  return result;
}

unint64_t sub_19759EDE4()
{
  result = qword_1EAF342F0;
  if (!qword_1EAF342F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF342F0);
  }

  return result;
}

unint64_t sub_19759EE38()
{
  result = qword_1EAF342F8;
  if (!qword_1EAF342F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF342F8);
  }

  return result;
}

unint64_t sub_19759EE8C()
{
  result = qword_1EAF34300;
  if (!qword_1EAF34300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34300);
  }

  return result;
}

unint64_t sub_19759EEE0()
{
  result = qword_1EAF34308;
  if (!qword_1EAF34308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34308);
  }

  return result;
}

unint64_t sub_19759EF34()
{
  result = qword_1EAF34310;
  if (!qword_1EAF34310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34310);
  }

  return result;
}

unint64_t sub_19759EF88(uint64_t a1)
{
  result = sub_19759EFB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19759EFB0()
{
  result = qword_1EAF34318;
  if (!qword_1EAF34318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34318);
  }

  return result;
}

unint64_t sub_19759F004(uint64_t a1)
{
  result = sub_19759EB80();
  *(a1 + 8) = result;
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

uint64_t sub_19759F074(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  v7 = 0;
  v8 = a1 + 32;
  while (v7 < *(a1 + 16))
  {
    sub_19755F9A0(v8, v33, &qword_1EAF343B8, &qword_1976183B8);
    v30 = v33[0];
    v31 = v33[1];
    v32 = v34;
    sub_19756A94C(&v35, v29);
    v9 = *a3;
    v11 = sub_197586658(&v30);
    v12 = *(v9 + 16);
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v15 = v10;
    if (*(v9 + 24) >= v14)
    {
      if (a2)
      {
        if (v10)
        {
          goto LABEL_11;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF343C0, &qword_1976183C0);
        sub_197616C00();
        if (v15)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      sub_1975F5210(v14, a2 & 1);
      v16 = sub_197586658(&v30);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_22;
      }

      v11 = v16;
      if (v15)
      {
LABEL_11:
        v18 = *a3;
        sub_1975586C0(*(*a3 + 56) + 32 * v11, v28);
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
        sub_197587DC0(&v30);
        v19 = (*(v18 + 56) + 32 * v11);
        __swift_destroy_boxed_opaque_existential_0Tm(v19);
        sub_19756A94C(v28, v19);
        goto LABEL_15;
      }
    }

    v20 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v21 = v20[6] + 40 * v11;
    v22 = v30;
    v23 = v31;
    *(v21 + 32) = v32;
    *v21 = v22;
    *(v21 + 16) = v23;
    sub_19756A94C(v29, (v20[7] + 32 * v11));
    v24 = v20[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_21;
    }

    v20[2] = v26;
LABEL_15:
    ++v7;
    v8 += 72;
    a2 = 1;
    if (v4 == v7)
    {
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1976170F0();
  __break(1u);
  return result;
}

unint64_t sub_19759F2A0()
{
  result = qword_1EAF34350;
  if (!qword_1EAF34350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34348, &unk_197618360);
    sub_19759F36C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34350);
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

unint64_t sub_19759F36C()
{
  result = qword_1EAF34358;
  if (!qword_1EAF34358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34358);
  }

  return result;
}

unint64_t sub_19759F3C0()
{
  result = qword_1EAF34368;
  if (!qword_1EAF34368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34360, &qword_19761E170);
    sub_19759F36C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34368);
  }

  return result;
}

uint64_t sub_19759F44C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_19759F494()
{
  result = qword_1EAF33F20;
  if (!qword_1EAF33F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34370, &qword_197618370);
    sub_19759F520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF33F20);
  }

  return result;
}

unint64_t sub_19759F520()
{
  result = qword_1EAF341D8;
  if (!qword_1EAF341D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF341D8);
  }

  return result;
}

unint64_t sub_19759F574()
{
  result = qword_1EAF33F10;
  if (!qword_1EAF33F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34378, &qword_197618378);
    sub_19759F520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF33F10);
  }

  return result;
}

uint64_t sub_19759F6A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = *(a2 + 16);
  result = MEMORY[0x19A8E3940](v6);
  if (v6)
  {
    v8 = a2 + 32;
    do
    {
      result = a3(a1);
      v8 += 32;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_19759F710(const void *a1, uint64_t a2, void (*a3)(unint64_t, _BYTE *), void (*a4)(_BYTE *), uint64_t (*a5)(_OWORD *))
{
  v8 = a2 + 64;
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 64);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  v15 = 0;
  if (v11)
  {
    while (1)
    {
      v16 = v15;
LABEL_8:
      v17 = __clz(__rbit64(v11)) | (v16 << 6);
      v18 = *(*(a2 + 48) + 16 * v17 + 8);
      a3(*(a2 + 56) + 32 * v17, __dst);
      v21 = *__dst;
      v22 = *&__dst[16];

      if (!v18)
      {
        break;
      }

      v11 &= v11 - 1;
      v24[0] = v21;
      v24[1] = v22;
      memcpy(__dst, a1, sizeof(__dst));
      sub_197616260();

      a4(__dst);
      a5(v24);
      result = sub_1976171F0();
      v14 ^= result;
      v15 = v16;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x19A8E3940](v14);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v12)
      {
        goto LABEL_11;
      }

      v11 = *(v8 + 8 * v16);
      ++v15;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_19759F8DC(uint64_t a1, int a2)
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

uint64_t sub_19759F8FC(uint64_t result, int a2, int a3)
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
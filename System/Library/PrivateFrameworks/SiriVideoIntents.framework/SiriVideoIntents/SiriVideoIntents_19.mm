_BYTE *storeEnumTagSinglePayload for ResponseViewIDs(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2698327EC()
{
  result = qword_280326348;
  if (!qword_280326348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326348);
  }

  return result;
}

uint64_t sub_269832854(uint64_t a1, uint64_t a2)
{
  v69 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280326350, &unk_26986A998);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_16_28();
  v6 = sub_2698519E4();
  OUTLINED_FUNCTION_8();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v62 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2698590C0;
  v66 = objc_opt_self();
  *(inited + 32) = [v66 playVideoProtocol];
  v13 = sub_26975004C();
  v63 = v6;
  if (v13)
  {
    sub_26983159C(inited);
  }

  else
  {
    swift_setDeallocating();
    sub_269819CE8();
  }

  v14 = sub_269831FD4();
  OUTLINED_FUNCTION_3_52();
  v17 = sub_269834340(v15, v16, MEMORY[0x277D85378]);
  v18 = OUTLINED_FUNCTION_20_21(v17);
  v19 = sub_269854A64();
  v68 = 0;
  v20 = OUTLINED_FUNCTION_14_33(v19, sel_actionsConformingToSystemProtocols_logicalType_bundleIdentifier_error_);

  v21 = v68;
  if (!v20)
  {
    v31 = v68;
    v32 = sub_269851BD4();

    swift_willThrow();
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280326370, &unk_26986A9A8);
  sub_2698549E4();
  v22 = v21;

  OUTLINED_FUNCTION_19_20();
  sub_26982EB50();
  OUTLINED_FUNCTION_22_23();
  if (!v14)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_60();
  v23 = 0;
  v64 = v14;
  if (!v11)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v24 = v23;
LABEL_11:
    OUTLINED_FUNCTION_7_48();
    v67 = v14;
    v25 = [v67 systemProtocols];
    v26 = sub_269854CB4();

    v27 = OUTLINED_FUNCTION_18_23([v66 playVideoProtocol]);
    MEMORY[0x28223BE20](v27);
    OUTLINED_FUNCTION_11_41();
    sub_2698338AC(sub_269834320, v28, v26, sub_26975004C);
    v30 = v29;

    if (v30)
    {
      break;
    }

    v11 &= v11 - 1;

    v23 = v24;
    v14 = v64;
    if (!v11)
    {
LABEL_8:
      while (1)
      {
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v24 >= v3)
        {

          goto LABEL_16;
        }

        v11 = *(a1 + 8 * v24);
        ++v23;
        if (v11)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
    }
  }

  v35 = v67;
  v36 = [v67 systemProtocolMetadata];
  type metadata accessor for LNSystemProtocolIdentifier(0);
  v38 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280326378, &qword_26986A9B8);
  OUTLINED_FUNCTION_4_45();
  sub_269834340(v39, v40, &unk_269858048);
  OUTLINED_FUNCTION_19_20();
  v41 = sub_2698549E4();

  sub_26981D198(*MEMORY[0x277D23710], v41);
  OUTLINED_FUNCTION_22_23();
  v66 = v36;
  v42 = v63;
  if (!v36)
  {

    return 0;
  }

  objc_opt_self();
  v43 = swift_dynamicCastObjCClass();
  if (!v43)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v44 = [v43 supportedCategories];
  v45 = sub_269854CB4();

  OUTLINED_FUNCTION_8_39();
  v65 = MEMORY[0x277D84F90];
  v61 = v46;
LABEL_22:
  v47 = (v46 + 16 * v8);
  while (v38 != v8)
  {
    if (v8 >= *(v45 + 16))
    {
      goto LABEL_37;
    }

    v48 = *v47;

    OUTLINED_FUNCTION_17_26();
    sub_2698519D4();
    if (__swift_getEnumTagSinglePayload(v11, 1, v42) != 1)
    {
      v49 = OUTLINED_FUNCTION_10_34();
      v48(v49);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_13_32();
        sub_26977BF50();
        v65 = v53;
      }

      OUTLINED_FUNCTION_15_32();
      if (v51)
      {
        OUTLINED_FUNCTION_12_34(v50);
        sub_26977BF50();
        v65 = v54;
      }

      v52 = OUTLINED_FUNCTION_0_66();
      v48(v52);
      v46 = v61;
      goto LABEL_22;
    }

    sub_269698048(v11, &unk_280326350, &unk_26986A998);
    v47 += 2;
    ++v8;
  }

  sub_2697F1F88();
  v33 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242A8, &qword_26986A9C0);
  v57 = OUTLINED_FUNCTION_6_51(v56);
  *(v57 + 16) = xmmword_26985C7B0;
  v58 = *(v45 + 104);
  v58(v57 + v38, *MEMORY[0x277CB9E18], v42);
  v58(v47 + v57 + v38, *MEMORY[0x277CB9E10], v42);
  v58(v57 + v38 + 2 * v47, *MEMORY[0x277CB9E08], v42);
  v59 = sub_269833DB0(v57, v33);

  swift_unknownObjectRelease();
  swift_setDeallocating();
  sub_269819D28();
  if (v59)
  {
LABEL_16:

    return 0;
  }

  return v33;
}

uint64_t sub_269832F24(uint64_t a1, uint64_t a2)
{
  v69 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280326390, &qword_26986A9C8);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_16_28();
  v6 = sub_269851A04();
  OUTLINED_FUNCTION_8();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v62 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2698590C0;
  v66 = objc_opt_self();
  *(inited + 32) = [v66 showInAppStringSearchResultsProtocol];
  v13 = sub_26975004C();
  v63 = v6;
  if (v13)
  {
    sub_26983159C(inited);
  }

  else
  {
    swift_setDeallocating();
    sub_269819CE8();
  }

  v14 = sub_269831FD4();
  OUTLINED_FUNCTION_3_52();
  v17 = sub_269834340(v15, v16, MEMORY[0x277D85378]);
  v18 = OUTLINED_FUNCTION_20_21(v17);
  v19 = sub_269854A64();
  v68 = 0;
  v20 = OUTLINED_FUNCTION_14_33(v19, sel_actionsConformingToSystemProtocols_logicalType_bundleIdentifier_error_);

  v21 = v68;
  if (!v20)
  {
    v31 = v68;
    v32 = sub_269851BD4();

    swift_willThrow();
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280326370, &unk_26986A9A8);
  sub_2698549E4();
  v22 = v21;

  OUTLINED_FUNCTION_19_20();
  sub_26982EB50();
  OUTLINED_FUNCTION_22_23();
  if (!v14)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_60();
  v23 = 0;
  v64 = v14;
  if (!v11)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v24 = v23;
LABEL_11:
    OUTLINED_FUNCTION_7_48();
    v67 = v14;
    v25 = [v67 systemProtocols];
    v26 = sub_269854CB4();

    v27 = OUTLINED_FUNCTION_18_23([v66 showInAppStringSearchResultsProtocol]);
    MEMORY[0x28223BE20](v27);
    OUTLINED_FUNCTION_11_41();
    sub_2698338AC(sub_269834448, v28, v26, sub_26975004C);
    v30 = v29;

    if (v30)
    {
      break;
    }

    v11 &= v11 - 1;

    v23 = v24;
    v14 = v64;
    if (!v11)
    {
LABEL_8:
      while (1)
      {
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v24 >= v3)
        {

          goto LABEL_16;
        }

        v11 = *(a1 + 8 * v24);
        ++v23;
        if (v11)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
    }
  }

  v35 = v67;
  v36 = [v67 systemProtocolMetadata];
  type metadata accessor for LNSystemProtocolIdentifier(0);
  v38 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280326378, &qword_26986A9B8);
  OUTLINED_FUNCTION_4_45();
  sub_269834340(v39, v40, &unk_269858048);
  OUTLINED_FUNCTION_19_20();
  v41 = sub_2698549E4();

  sub_26981D198(*MEMORY[0x277D23718], v41);
  OUTLINED_FUNCTION_22_23();
  v66 = v36;
  v42 = v63;
  if (!v36)
  {

    return 0;
  }

  objc_opt_self();
  v43 = swift_dynamicCastObjCClass();
  if (!v43)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v44 = [v43 searchScopes];
  v45 = sub_269854CB4();

  OUTLINED_FUNCTION_8_39();
  v65 = MEMORY[0x277D84F90];
  v61 = v46;
LABEL_22:
  v47 = (v46 + 16 * v8);
  while (v38 != v8)
  {
    if (v8 >= *(v45 + 16))
    {
      goto LABEL_37;
    }

    v48 = *v47;

    OUTLINED_FUNCTION_17_26();
    sub_2698519F4();
    if (__swift_getEnumTagSinglePayload(v11, 1, v42) != 1)
    {
      v49 = OUTLINED_FUNCTION_10_34();
      v48(v49);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_13_32();
        sub_26977C020();
        v65 = v53;
      }

      OUTLINED_FUNCTION_15_32();
      if (v51)
      {
        OUTLINED_FUNCTION_12_34(v50);
        sub_26977C020();
        v65 = v54;
      }

      v52 = OUTLINED_FUNCTION_0_66();
      v48(v52);
      v46 = v61;
      goto LABEL_22;
    }

    sub_269698048(v11, &unk_280326390, &qword_26986A9C8);
    v47 += 2;
    ++v8;
  }

  sub_2697F20E0();
  v33 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242B0, &unk_26985F2F0);
  v57 = OUTLINED_FUNCTION_6_51(v56);
  *(v57 + 16) = xmmword_26985C7B0;
  v58 = *(v45 + 104);
  v58(v57 + v38, *MEMORY[0x277CB9FE0], v42);
  v58(v47 + v57 + v38, *MEMORY[0x277CB9FF0], v42);
  v58(v57 + v38 + 2 * v47, *MEMORY[0x277CB9FE8], v42);
  v59 = sub_26983406C(v57, v33);

  swift_unknownObjectRelease();
  swift_setDeallocating();
  sub_269819D40();
  if (v59)
  {
LABEL_16:

    return 0;
  }

  return v33;
}

uint64_t sub_2698335F4(void (*a1)(uint64_t *__return_ptr, void *))
{
  sub_2698343A8(v1, &v6);
  if (!v7)
  {
    return 2;
  }

  sub_26968E5D4(&v6, v5);
  a1(&v8, v5);
  if (v2)
  {
    result = __swift_destroy_boxed_opaque_existential_0(v5);
    __break(1u);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v5);
    return v8;
  }

  return result;
}

BOOL sub_2698336F0(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    v11 = *((a4)(0, a2) - 8);
    v12 = a1(a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v10);
    if (v4)
    {
      break;
    }

    v8 = v10 + 1;
  }

  while ((v12 & 1) == 0);
  return v9 != v10;
}

BOOL sub_2698337D4()
{
  OUTLINED_FUNCTION_9_40();
  v3 = (v2 + 40);
  v4 = *(v2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = *v3;
    v9[0] = *(v3 - 1);
    v9[1] = v5;

    v6 = v1(v9);
    if (v0)
    {

      return v4 != 0;
    }

    v7 = v6;
    v3 += 2;
  }

  while ((v7 & 1) == 0);
  return v4 != 0;
}

void sub_2698338AC(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a4(a3);
  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (v6 == v7)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x26D646120](v7, a3);
    }

    else
    {
      if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(a3 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v13 = v9;
    v11 = a1(&v13);

    if (!v4)
    {
      v7 = v8 + 1;
      if ((v11 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

uint64_t sub_2698339BC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 32))(v3, v4);
  LOBYTE(v3) = sub_269807CB4(0xD000000000000011, 0x800000026987B840, v5);

  *a2 = v3 & 1;
  return result;
}

uint64_t sub_269833A70(uint64_t a1, unint64_t a2, void (*a3)(uint64_t *__return_ptr, void *))
{
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2697ADE90(a1, a2, v8);
  LOBYTE(a3) = sub_2698335F4(a3);
  sub_269698048(v8, &unk_2803263B0, &unk_26985D0B0);
  return a3 & 1;
}

uint64_t sub_269833AFC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 32))(v3, v4);
  LOBYTE(v3) = sub_269807CB4(0xD000000000000016, 0x800000026987B860, v5);

  *a2 = v3 & 1;
  return result;
}

uint64_t sub_269833C58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_269834340(a4, a5, a6);
  return sub_269854A54() & 1;
}

uint64_t sub_269833D38()
{
  OUTLINED_FUNCTION_9_40();
  sub_269854664();
  return OUTLINED_FUNCTION_21_24() & 1;
}

uint64_t sub_269833D74()
{
  OUTLINED_FUNCTION_9_40();
  type metadata accessor for Content();
  return OUTLINED_FUNCTION_21_24() & 1;
}

uint64_t sub_269833DB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2698519E4();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  if (*(a2 + 16))
  {
    v22 = *(a1 + 16);
    if (v22)
    {
      v11 = a2;
      v12 = 0;
      v14 = *(v8 + 16);
      v13 = v8 + 16;
      v23 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
      v26 = *(v13 + 56);
      v27 = v14;
      v25 = v11 + 56;
      v15 = (v13 - 8);
      do
      {
        v24 = v12;
        v27(v10, v23 + v26 * v12, v4);
        if (*(v11 + 16))
        {
          sub_269834340(&unk_280326380, MEMORY[0x277CB9E20], MEMORY[0x277CB9E28]);
          v16 = sub_269854A24();
          v17 = ~(-1 << *(v11 + 32));
          while (1)
          {
            v18 = v16 & v17;
            if (((*(v25 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
            {
              break;
            }

            v27(v7, *(v11 + 48) + v18 * v26, v4);
            sub_269834340(&qword_2803256B8, MEMORY[0x277CB9E20], MEMORY[0x277CB9E30]);
            v19 = sub_269854A54();
            v20 = *v15;
            (*v15)(v7, v4);
            v16 = v18 + 1;
            if (v19)
            {
              v20(v10, v4);
              return 0;
            }
          }
        }

        v12 = v24 + 1;
        (*v15)(v10, v4);
      }

      while (v12 != v22);
    }
  }

  return 1;
}

uint64_t sub_26983406C(uint64_t a1, uint64_t a2)
{
  v4 = sub_269851A04();
  OUTLINED_FUNCTION_8();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v25 - v10;
  if (*(a2 + 16))
  {
    v25 = *(a1 + 16);
    if (v25)
    {
      v12 = a2;
      v13 = 0;
      v15 = *(v9 + 16);
      v14 = v9 + 16;
      v26 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
      v29 = *(v14 + 56);
      v30 = v15;
      v28 = v12 + 56;
      v16 = (v14 - 8);
      do
      {
        v27 = v13;
        v30(v11, v26 + v29 * v13, v4);
        if (*(v12 + 16))
        {
          OUTLINED_FUNCTION_2_45();
          sub_269834340(&unk_2803263A0, v17, MEMORY[0x277CBA008]);
          v18 = sub_269854A24();
          v19 = ~(-1 << *(v12 + 32));
          while (1)
          {
            v20 = v18 & v19;
            if (((*(v28 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
            {
              break;
            }

            v30(v8, *(v12 + 48) + v20 * v29, v4);
            OUTLINED_FUNCTION_2_45();
            sub_269834340(&qword_2803256C8, v21, MEMORY[0x277CBA010]);
            v22 = sub_269854A54();
            v23 = *v16;
            (*v16)(v8, v4);
            v18 = v20 + 1;
            if (v22)
            {
              v23(v11, v4);
              return 0;
            }
          }
        }

        v13 = v27 + 1;
        (*v16)(v11, v4);
      }

      while (v13 != v25);
    }
  }

  return 1;
}

uint64_t sub_269834340(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2698343A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803263B0, &unk_26985D0B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t OUTLINED_FUNCTION_0_66()
{
  v3 = *(v2 - 168);
  *(v3 + 16) = v1;
  return v3 + ((*(*(v2 - 208) + 80) + 32) & ~*(*(v2 - 208) + 80)) + *(*(v2 - 208) + 72) * v0;
}

double OUTLINED_FUNCTION_1_60()
{
  *(v2 - 208) = v0;
  *(v2 - 200) = v1;

  return result;
}

uint64_t OUTLINED_FUNCTION_6_51(uint64_t a1)
{

  return swift_allocObject();
}

double OUTLINED_FUNCTION_7_48()
{

  return result;
}

id OUTLINED_FUNCTION_14_33(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_20_21(uint64_t a1)
{
  *(v2 - 168) = v1;

  return sub_269854E34();
}

uint64_t OUTLINED_FUNCTION_21_24()
{

  return sub_269855064();
}

uint64_t OUTLINED_FUNCTION_22_23()
{
}

uint64_t sub_2698346F4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v118 = a3;
  v119 = sub_269854074();
  OUTLINED_FUNCTION_8();
  v114 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v116 = (v8 - v7);
  sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v120 = v9;
  v121 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v117 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v115 = &v108 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v108 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v108 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v108 - v21;
  v23 = sub_2698544B4();
  MEMORY[0x28223BE20](v23 - 8);
  OUTLINED_FUNCTION_3_1();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323488, &qword_26986AAD0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v108 - v25;
  v27 = sub_269853B44();
  OUTLINED_FUNCTION_8();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_1();
  v33 = (v32 - v31);
  v125 = 0;
  v123 = 0u;
  v124 = 0u;
  sub_2696CE464(a1, a2);
  sub_2698544A4();
  sub_269835384();
  sub_2698544C4();
  v112 = v17;
  v113 = v20;
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v27);
  (*(v29 + 4))(v33, v26, v27);
  v34 = sub_269853B54();
  v117 = v29;
  v35 = v33;
  v45 = v34;
  v46 = v120;
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  v47 = __swift_project_value_buffer(v46, qword_281571B38);
  v48 = *(v121 + 16);
  v49 = v22;
  v110 = v47;
  v111 = v48;
  v115 = (v121 + 16);
  (v48)(v22);

  v50 = sub_2698548B4();
  v51 = sub_269854F14();

  v52 = v35;
  if (os_log_type_enabled(v50, v51))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *&v123 = v54;
    *v53 = 136315138;
    v55 = sub_269853C44();
    v57 = sub_26974F520(v55, v56, &v123);
    v109 = v49;
    v58 = v57;
    v46 = v120;
    v59 = v117;

    *(v53 + 4) = v58;
    _os_log_impl(&dword_269684000, v50, v51, "Got USO graph for alternative entity: %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v60 = *(v121 + 8);
    v60(v109, v46);
  }

  else
  {

    v60 = *(v121 + 8);
    v60(v49, v46);
    v59 = v117;
  }

  v61 = v113;
  v62 = sub_269853D24();
  if (!v62)
  {
    v91 = v112;
    v111(v112, v110, v46);
    v92 = sub_2698548B4();
    v93 = sub_269854F14();
    if (os_log_type_enabled(v92, v93))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_20_7(&dword_269684000, v94, v95, "Unable to extract sports entity from USO graph");
      OUTLINED_FUNCTION_10();
    }

    v96 = v91;
    goto LABEL_46;
  }

  v63 = v62;

  sub_269853DB4();

  if (!*(&v124 + 1))
  {
    v120 = v45;
    sub_269698048(&v123, &qword_280322F88, qword_26985AB90);
LABEL_43:
    v111(v61, v110, v46);

    v97 = sub_2698548B4();
    v98 = sub_269854F14();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v116 = v60;
      v101 = v100;
      *&v123 = v100;
      *v99 = 136315138;
      v102 = sub_269853F54();
      v104 = sub_26974F520(v102, v103, &v123);
      v117 = v27;
      v105 = v104;

      *(v99 + 4) = v105;
      _os_log_impl(&dword_269684000, v97, v98, "Entity was not a sports entity but was a %s. Will ignore item", v99, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v101);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      v116(v113, v46);
      (*(v59 + 1))(v52, v117);
      goto LABEL_5;
    }

    v96 = v61;
LABEL_46:
    v60(v96, v46);
    (*(v59 + 1))(v52, v27);
    goto LABEL_5;
  }

  sub_269853E44();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v120 = v45;
    goto LABEL_43;
  }

  v115 = v52;
  v64 = v122;
  v65 = sub_269853E14();
  if (v65)
  {
    v66 = v65;
    v112 = v64;
    v113 = v63;
    v120 = v45;
    v117 = v27;
    sub_269853FA4();
    v67 = sub_26975004C();
    v68 = 0;
    v121 = v66 & 0xC000000000000001;
    v69 = v114;
    while (1)
    {
      if (v67 == v68)
      {

        (*(v59 + 1))(v115, v117);
        v107 = v118;
        v106 = v119;
        (*(v69 + 32))(v118, v116, v119);
        v41 = v107;
        v43 = 0;
        v42 = v106;
        return __swift_storeEnumTagSinglePayload(v41, v43, 1, v42);
      }

      if (v121)
      {
        MEMORY[0x26D646120](v68, v66);
      }

      else
      {
        if (v68 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }
      }

      if (__OFADD__(v68, 1))
      {
        break;
      }

      sub_269853CF4();
      if (v123)
      {

        sub_2698353DC();
        v71 = v70;

        switch(v71)
        {
          case 0:
            v72 = OUTLINED_FUNCTION_128();
            sub_2698356D0(v72, v73, 0);
            OUTLINED_FUNCTION_1_61();
            sub_269853F94();

            v74 = OUTLINED_FUNCTION_128();
            v76 = 0;
            goto LABEL_33;
          case 1:
            v85 = OUTLINED_FUNCTION_128();
            sub_2698356D0(v85, v86, 1u);
            OUTLINED_FUNCTION_1_61();
            sub_269853FE4();

            v74 = OUTLINED_FUNCTION_128();
            v76 = 1;
            goto LABEL_33;
          case 2:
            v79 = OUTLINED_FUNCTION_128();
            sub_2698356D0(v79, v80, 2u);
            OUTLINED_FUNCTION_1_61();
            sub_269853FC4();

            v74 = OUTLINED_FUNCTION_128();
            v76 = 2;
            goto LABEL_33;
          case 3:
            v81 = OUTLINED_FUNCTION_128();
            sub_2698356D0(v81, v82, 3u);
            OUTLINED_FUNCTION_1_61();
            sub_269854004();

            v74 = OUTLINED_FUNCTION_128();
            v76 = 3;
            goto LABEL_33;
          case 4:
            v77 = OUTLINED_FUNCTION_128();
            sub_2698356D0(v77, v78, 4u);
            OUTLINED_FUNCTION_1_61();
            sub_269854024();

            v74 = OUTLINED_FUNCTION_128();
            v76 = 4;
            goto LABEL_33;
          case 5:
            v87 = OUTLINED_FUNCTION_128();
            sub_2698356D0(v87, v88, 5u);
            OUTLINED_FUNCTION_1_61();
            sub_269854064();

            v74 = OUTLINED_FUNCTION_128();
            v76 = 5;
            goto LABEL_33;
          case 6:
            v89 = OUTLINED_FUNCTION_128();
            sub_2698356D0(v89, v90, 6u);
            OUTLINED_FUNCTION_1_61();
            sub_269854044();

            v74 = OUTLINED_FUNCTION_128();
            v76 = 6;
            goto LABEL_33;
          case 7:
            v83 = OUTLINED_FUNCTION_128();
            sub_2698356D0(v83, v84, 7u);
            OUTLINED_FUNCTION_1_61();
            sub_269853F74();

            v74 = OUTLINED_FUNCTION_128();
            v76 = 7;
LABEL_33:
            sub_2698356E8(v74, v75, v76);
            break;
          default:

            break;
        }

        v69 = v114;
      }

      else
      {
      }

      ++v68;
    }

    __break(1u);
LABEL_50:
    __break(1u);
    OUTLINED_FUNCTION_0_4(&qword_280322700);
    v36 = __swift_project_value_buffer(v69, qword_281571B38);
    v37 = v121;
    (*(v121 + 16))(v66, v36, v69);
    v38 = sub_2698548B4();
    v39 = sub_269854F14();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_269684000, v38, v39, "Unable to decode sports entity into USO object", v40, 2u);
      OUTLINED_FUNCTION_10();
    }

    (*(v37 + 8))(v66, v69);
    (*(v117 + 1))(v59, v68);
  }

  else
  {
    (*(v59 + 1))(v115, v27);
  }

LABEL_5:
  v41 = v118;
  v42 = v119;
  v43 = 1;
  return __swift_storeEnumTagSinglePayload(v41, v43, 1, v42);
}

unint64_t sub_269835384()
{
  result = qword_280323490;
  if (!qword_280323490)
  {
    sub_269853B44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323490);
  }

  return result;
}

uint64_t sub_2698353DC()
{
  if (sub_269853E34())
  {
    v0 = sub_269853E84();
    v2 = v1;
  }

  else
  {
    v0 = 0;
    v2 = 0;
  }

  v3 = sub_269853E24();
  if (!v2 || !v4)
  {
    goto LABEL_54;
  }

  v5 = v3;
  v6 = v0 == 0x74726F7073 && v2 == 0xE500000000000000;
  if (v6 || (sub_269855584() & 1) != 0 || (v0 == 0x69715F74726F7073 ? (v7 = v2 == 0xE900000000000064) : (v7 = 0), v7 || (sub_269855584() & 1) != 0 || (v0 == 0x65756761656CLL ? (v8 = v2 == 0xE600000000000000) : (v8 = 0), v8 || (sub_269855584() & 1) != 0 || (v0 == 0x715F65756761656CLL ? (v9 = v2 == 0xEA00000000006469) : (v9 = 0), v9 || (sub_269855584() & 1) != 0 || (v0 == 1835099508 ? (v10 = v2 == 0xE400000000000000) : (v10 = 0), v10 || (sub_269855584() & 1) != 0 || (v0 == 0x6469715F6D616574 ? (v11 = v2 == 0xE800000000000000) : (v11 = 0), v11 || (sub_269855584() & 1) != 0 || (v0 == 0x6574656C687461 ? (v12 = v2 == 0xE700000000000000) : (v12 = 0), v12 || (sub_269855584() & 1) != 0)))))))
  {

    return v5;
  }

  if (v0 == 0x5F6574656C687461 && v2 == 0xEB00000000646971)
  {

    return v5;
  }

  v14 = sub_269855584();

  if ((v14 & 1) == 0)
  {
LABEL_54:

    return 0;
  }

  return v5;
}

double sub_2698356D0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 7u)
  {
  }

  return result;
}

uint64_t sub_2698356E8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_2698356FC(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_2698356FC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 7u)
  {
  }

  return result;
}

void sub_269835724(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D47128]) init];
  v3 = sub_269854A94();
  sub_26983A7B8(v3, v4, v2);
  sub_269835870();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2698590C0;
  *(v5 + 32) = v2;
  v6 = v2;
  sub_2698531E4();
  sub_2698535A4();
  swift_allocObject();
  sub_269853594();
  sub_269853574();

  sub_269853584();

  sub_269853214();
}

uint64_t sub_269835870()
{
  v0 = sub_2698544F4();
  OUTLINED_FUNCTION_8();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803263C0, &qword_26986AAB0);
  OUTLINED_FUNCTION_8_9(v7);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v8);
  sub_269853224();
  OUTLINED_FUNCTION_18_24();
  sub_2698531F4();
  sub_269853204();
  sub_2698531B4();
  (*(v2 + 104))(v6, *MEMORY[0x277D56680], v0);
  sub_269854504();
  sub_269854514();
  OUTLINED_FUNCTION_24_4();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  return sub_269853194();
}

void sub_2698359E4()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v43 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803263D0, &qword_26986AAC0);
  OUTLINED_FUNCTION_8_9(v3);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v39 - v5;
  v49 = sub_269854934();
  OUTLINED_FUNCTION_8();
  v47 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_24_3();
  v46 = v9;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_13();
  v45 = v11;
  OUTLINED_FUNCTION_2_13();
  v12 = sub_269851DA4();
  OUTLINED_FUNCTION_8();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_1();
  v18 = v17 - v16;
  sub_269837CA4(v1);
  v42 = v19;
  sub_269837EBC();
  v41 = v20;
  sub_269851D94();
  v21 = sub_269851D54();
  v23 = v22;
  (*(v14 + 8))(v18, v12);
  v24 = sub_26975004C();
  v25 = 0;
  v26 = v1 & 0xC000000000000001;
  v27 = v1;
  v28 = v1 & 0xFFFFFFFFFFFFFF8;
  v44 = (v47 + 32);
  v48 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v24 == v25)
    {

      v50 = v42;
      sub_26980B9A4(v41);
      sub_2698387C8(v50, v48);

      OUTLINED_FUNCTION_21_0();
      return;
    }

    if (v26)
    {
      v29 = MEMORY[0x26D646120](v25, v27);
    }

    else
    {
      if (v25 >= *(v28 + 16))
      {
        goto LABEL_17;
      }

      v29 = *(v27 + 8 * v25 + 32);
    }

    v30 = v29;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    sub_2698380A8(v25, v29, v21, v23, v6);

    if (__swift_getEnumTagSinglePayload(v6, 1, v49) == 1)
    {
      sub_26969B0C0(v6, &qword_2803263D0, &qword_26986AAC0);
      ++v25;
    }

    else
    {
      v31 = *v44;
      (*v44)(v45, v6, v49);
      v40 = v31;
      v31(v46, v45, v49);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_3_5();
        sub_26977C684();
        v48 = v37;
      }

      v33 = *(v48 + 16);
      v32 = *(v48 + 24);
      if (v33 >= v32 >> 1)
      {
        OUTLINED_FUNCTION_9(v32);
        sub_26977C684();
        v48 = v38;
      }

      *(v48 + 16) = v33 + 1;
      OUTLINED_FUNCTION_3_53();
      v40(v35 + v34 + *(v36 + 72) * v33, v46, v49);
      ++v25;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_269835D5C()
{
  OUTLINED_FUNCTION_19_1();
  v2 = v1;
  v86[1] = v3;
  v95 = sub_269852FE4();
  OUTLINED_FUNCTION_8();
  v98 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v86[0] = v7 - v6;
  OUTLINED_FUNCTION_2_13();
  sub_269853714();
  OUTLINED_FUNCTION_8();
  v87 = v9;
  v88 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v90 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803263E8, &qword_26986AAD8);
  OUTLINED_FUNCTION_8_9(v12);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v13);
  v15 = v86 - v14;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324348, qword_26986AAE0);
  OUTLINED_FUNCTION_8();
  v91 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_24_3();
  v97 = v18;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_23_3();
  v96 = v20;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_23_3();
  v100 = v22;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_23_3();
  v92 = v24;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_17_27();
  MEMORY[0x28223BE20](v26);
  v28 = v86 - v27;
  v29 = *(v2 + 16);
  v30 = (v2 + 40);
  for (i = MEMORY[0x277D84F90]; v29; --v29)
  {
    v102 = *(v30 - 1);
    v103 = *v30;
    sub_269838D38(v15);
    if (__swift_getEnumTagSinglePayload(v15, 1, v101) == 1)
    {
      sub_26969B0C0(v15, &unk_2803263E8, &qword_26986AAD8);
    }

    else
    {
      sub_26983A8C8(v15, v28);
      sub_26983A8C8(v28, v0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = OUTLINED_FUNCTION_3_5();
        sub_26977CA9C(v36, v37, v38, i);
        i = v39;
      }

      v33 = *(i + 16);
      v32 = *(i + 24);
      if (v33 >= v32 >> 1)
      {
        v40 = OUTLINED_FUNCTION_9(v32);
        sub_26977CA9C(v40, v33 + 1, 1, i);
        i = v41;
      }

      *(i + 16) = v33 + 1;
      OUTLINED_FUNCTION_3_53();
      sub_26983A8C8(v0, i + v34 + *(v35 + 72) * v33);
    }

    v30 = (v30 + 24);
  }

  sub_2698536F4();
  v42 = *(i + 16);
  v89 = i;
  if (v42)
  {
    v102 = MEMORY[0x277D84F90];
    sub_2698151E4(0, v42, 0);
    v43 = v102;
    OUTLINED_FUNCTION_3_53();
    v45 = i + v44;
    v47 = *(v46 + 72);
    v48 = (v98 + 32);
    v93 = (v98 + 16);
    v94 = v47;
    v49 = v95;
    v50 = v86[0];
    do
    {
      v99 = v42;
      v51 = v100;
      sub_26983A938(v45, v100);
      v52 = v96;
      sub_26983A938(v51, v96);
      v53 = *(v101 + 48);
      v54 = *(v52 + v53);
      v55 = v43;
      v56 = v97;
      v57 = v52;
      v58 = *v48;
      (*v48)(v97, v57, v49);
      *(v56 + v53) = v54;
      (*v93)(v50, v56, v49);
      v59 = v56;
      v43 = v55;
      sub_26969B0C0(v59, &qword_280324348, qword_26986AAE0);
      sub_26969B0C0(v51, &qword_280324348, qword_26986AAE0);
      v102 = v55;
      v61 = *(v55 + 16);
      v60 = *(v55 + 24);
      if (v61 >= v60 >> 1)
      {
        v64 = OUTLINED_FUNCTION_9(v60);
        sub_2698151E4(v64, v61 + 1, 1);
        v50 = v86[0];
        v49 = v95;
        v43 = v102;
      }

      *(v43 + 16) = v61 + 1;
      OUTLINED_FUNCTION_3_53();
      v58(v43 + v62 + *(v63 + 72) * v61, v50, v49);
      v45 += v94;
      v42 = v99 - 1;
    }

    while (v99 != 1);
    i = v89;
  }

  v65 = v88;
  v66 = v90;
  v67 = sub_269853704();

  (*(v87 + 8))(v66, v65);
  v68 = *(i + 16);
  if (v68)
  {
    OUTLINED_FUNCTION_3_53();
    v70 = i + v69;
    v72 = *(v71 + 72);
    v73 = (v98 + 8);
    v74 = MEMORY[0x277D84F90];
    while (1)
    {
      v75 = v92;
      sub_26983A938(v70, v92);
      v76 = v75;
      v77 = v100;
      sub_26983A8C8(v76, v100);
      v78 = *(v77 + *(v101 + 48));
      (*v73)(v77, v95);
      v79 = *(v78 + 16);
      v80 = *(v74 + 16);
      if (__OFADD__(v80, v79))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v80 + v79 > *(v74 + 24) >> 1)
      {
        sub_26977C4D4();
        v74 = v81;
      }

      if (*(v78 + 16))
      {
        v82 = (*(v74 + 24) >> 1) - *(v74 + 16);
        sub_269852EF4();
        if (v82 < v79)
        {
          goto LABEL_34;
        }

        swift_arrayInitWithCopy();

        if (v79)
        {
          v83 = *(v74 + 16);
          v84 = __OFADD__(v83, v79);
          v85 = v83 + v79;
          if (v84)
          {
            goto LABEL_35;
          }

          *(v74 + 16) = v85;
        }
      }

      else
      {

        if (v79)
        {
          goto LABEL_33;
        }
      }

      v70 += v72;
      if (!--v68)
      {

        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {

    v74 = MEMORY[0x277D84F90];
LABEL_31:
    v102 = v74;
    sub_26980B9A4(v67);
    sub_2698387C8(v102, MEMORY[0x277D84F90]);

    OUTLINED_FUNCTION_21_0();
  }
}

void sub_269836430()
{
  OUTLINED_FUNCTION_19_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323C00, qword_26986AA30);
  v7 = OUTLINED_FUNCTION_8_9(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9_41();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_23_3();
  v85 = v9;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_13();
  v87 = v11;
  OUTLINED_FUNCTION_2_13();
  v98 = sub_269852FE4();
  OUTLINED_FUNCTION_8();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_24_3();
  v92 = v15;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_23_3();
  v84 = v17;
  OUTLINED_FUNCTION_22_0();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = v77 - v20;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_13();
  v90 = v22;
  OUTLINED_FUNCTION_2_13();
  v95 = sub_269852EF4();
  OUTLINED_FUNCTION_8();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_24_3();
  v80 = v26;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_17_27();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_13();
  v89 = v29;
  v30 = sub_26975004C();
  v31 = 0;
  v99 = v3 & 0xC000000000000001;
  v97 = v3 & 0xFFFFFFFFFFFFFF8;
  v82 = " was not built with an id value";
  v83 = "tWrapperFlow.swift";
  v77[1] = "com.apple.pegasus.video";
  v81 = (v13 + 16);
  v93 = (v13 + 32);
  v94 = (v13 + 8);
  v88 = (v24 + 32);
  v96 = MEMORY[0x277D84F90];
  v86 = v5;
  while (1)
  {
    if (v30 == v31)
    {
      v53 = v96;
      sub_269837EBC();
      v90 = v54;
      v55 = 0;
      v99 = *(v53 + 16);
      v97 = v24 + 16;
      v56 = (v24 + 8);
      v91 = MEMORY[0x277D84F90];
      v57 = v95;
      while (1)
      {
        if (v99 == v55)
        {

          v100 = v91;
          sub_26980B9A4(v90);
          sub_2698387C8(v100, MEMORY[0x277D84F90]);

          OUTLINED_FUNCTION_21_0();
          return;
        }

        if (v55 >= *(v53 + 16))
        {
          goto LABEL_35;
        }

        v58 = (*(v24 + 80) + 32) & ~*(v24 + 80);
        v59 = *(v24 + 72);
        (*(v24 + 16))(v1, v53 + v58 + v59 * v55, v57);
        sub_269852EC4();
        v60 = v98;
        if (__swift_getEnumTagSinglePayload(v0, 1, v98) == 1)
        {
          break;
        }

        v61 = v0;
        v62 = v92;
        v63 = v61;
        (*v93)(v92);
        v64 = v60;
        sub_269852F94();
        v66 = v65;
        (*v94)(v62, v64);
        if (v66)
        {

          v67 = *v88;
          (*v88)(v80, v1, v95);
          v68 = v91;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v100 = v68;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_269815128(0, *(v68 + 16) + 1, 1);
            v68 = v100;
          }

          v0 = v63;
          v71 = *(v68 + 16);
          v70 = *(v68 + 24);
          v72 = v71 + 1;
          v73 = v68;
          v57 = v95;
          v53 = v96;
          if (v71 >= v70 >> 1)
          {
            v74 = OUTLINED_FUNCTION_9(v70);
            v89 = v67;
            v91 = v75;
            v87 = v76;
            sub_269815128(v74, v75, 1);
            v72 = v91;
            v71 = v87;
            v67 = v89;
            v73 = v100;
          }

          ++v55;
          *(v73 + 16) = v72;
          v91 = v73;
          v67(v73 + v58 + v71 * v59, v80, v57);
        }

        else
        {
          v57 = v95;
          (*v56)(v1, v95);
          v0 = v63;
          v53 = v96;
LABEL_26:
          ++v55;
        }
      }

      (*v56)(v1, v57);
      sub_26969B0C0(v0, &qword_280323C00, qword_26986AA30);
      goto LABEL_26;
    }

    if (v99)
    {
      v32 = MEMORY[0x26D646120](v31, v3);
    }

    else
    {
      if (v31 >= *(v97 + 16))
      {
        goto LABEL_34;
      }

      v32 = *(v3 + 8 * v31 + 32);
    }

    v33 = v32;
    v34 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    sub_2697400A0(v32);
    if (v35)
    {
      v91 = v21;
      sub_269852F74();
      sub_2697400AC(v33);
      v79 = v3;
      if (v36)
      {
        v37 = v87;
        sub_269852F74();
        OUTLINED_FUNCTION_24_4();
        v38 = v98;
        __swift_storeEnumTagSinglePayload(v39, v40, v41, v98);
        (*v93)(v91, v37, v38);
      }

      else
      {
        v42 = v87;
        v38 = v98;
        __swift_storeEnumTagSinglePayload(v87, 1, 1, v98);
        sub_269852FD4();
        if (__swift_getEnumTagSinglePayload(v42, 1, v38) != 1)
        {
          sub_26969B0C0(v87, &qword_280323C00, qword_26986AA30);
        }
      }

      v78 = *v81;
      v78(v85, v90, v38);
      OUTLINED_FUNCTION_24_4();
      __swift_storeEnumTagSinglePayload(v43, v44, v45, v38);
      v78(v84, v91, v38);
      sub_269852ED4();

      v46 = *v94;
      (*v94)(v91, v38);
      v46(v90, v38);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_3_5();
        sub_26977C4D4();
        v96 = v51;
      }

      v3 = v79;
      v48 = *(v96 + 16);
      v47 = *(v96 + 24);
      v21 = v91;
      if (v48 >= v47 >> 1)
      {
        OUTLINED_FUNCTION_9(v47);
        sub_26977C4D4();
        v96 = v52;
      }

      v49 = v95;
      v50 = v96;
      *(v96 + 16) = v48 + 1;
      (*(v24 + 32))(v50 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v48, v89, v49);
      v31 = v34;
    }

    else
    {

      ++v31;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_269836BCC()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v20 = sub_269852EF4();
  OUTLINED_FUNCTION_8();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 - v5;
  v21 = v1;
  v8 = sub_26975004C();
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = v8;
    v23 = MEMORY[0x277D84F90];
    sub_269815128(0, v8 & ~(v8 >> 63), 0);
    if ((v10 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v9 = v23;
      v12 = v10;
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if ((v21 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x26D646120](v11, v21);
        }

        else
        {
          if (v11 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v14 = *(v21 + 8 * v11 + 32);
        }

        v15 = v14;
        v22 = v14;
        sub_269839140(&v22, v7);

        v23 = v9;
        v17 = *(v9 + 16);
        v16 = *(v9 + 24);
        if (v17 >= v16 >> 1)
        {
          v18 = OUTLINED_FUNCTION_9(v16);
          sub_269815128(v18, v17 + 1, 1);
          v9 = v23;
        }

        *(v9 + 16) = v17 + 1;
        (*(v3 + 32))(v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v17, v7, v20);
        ++v11;
        if (v13 == v12)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    sub_269837EBC();
    v23 = v9;
    sub_26980B9A4(v19);
    sub_2698387C8(v23, MEMORY[0x277D84F90]);

    OUTLINED_FUNCTION_21_0();
  }
}

uint64_t sub_269836DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_269853C34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_269853C04();
  sub_269853E04();
  swift_allocObject();
  v8 = sub_269853DF4();
  sub_269853DE4();
  if (sub_269853DD4())
  {
    sub_269853BE4();
  }

  (*(v5 + 8))(v7, v4);
  return v8;
}

void sub_269836F4C()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803263D0, &qword_26986AAC0);
  OUTLINED_FUNCTION_8_9(v2);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v36 - v4;
  v43 = sub_269854934();
  OUTLINED_FUNCTION_8();
  v41 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_24_3();
  v40 = v8;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_13();
  v39 = v10;
  OUTLINED_FUNCTION_2_13();
  v11 = sub_269851DA4();
  OUTLINED_FUNCTION_8();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v17 = v16 - v15;
  sub_269851D94();
  v18 = sub_269851D54();
  v20 = v19;
  (*(v13 + 8))(v17, v11);
  v21 = sub_26975004C();
  v22 = 0;
  v23 = v1 & 0xC000000000000001;
  v24 = v1;
  v25 = v1 & 0xFFFFFFFFFFFFFF8;
  v38 = (v41 + 32);
  v42 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v21 == v22)
    {

      OUTLINED_FUNCTION_21_0();
      return;
    }

    if (v23)
    {
      v26 = MEMORY[0x26D646120](v22, v24);
    }

    else
    {
      if (v22 >= *(v25 + 16))
      {
        goto LABEL_17;
      }

      v26 = *(v24 + 8 * v22 + 32);
    }

    v27 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    sub_26983727C(v22, v26, v18, v20, v5);

    if (__swift_getEnumTagSinglePayload(v5, 1, v43) == 1)
    {
      sub_26969B0C0(v5, &qword_2803263D0, &qword_26986AAC0);
      ++v22;
    }

    else
    {
      v28 = *v38;
      (*v38)(v39, v5, v43);
      v37 = v28;
      v28(v40, v39, v43);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_3_5();
        sub_26977C684();
        v42 = v34;
      }

      v30 = *(v42 + 16);
      v29 = *(v42 + 24);
      if (v30 >= v29 >> 1)
      {
        OUTLINED_FUNCTION_9(v29);
        sub_26977C684();
        v42 = v35;
      }

      *(v42 + 16) = v30 + 1;
      OUTLINED_FUNCTION_3_53();
      v37(v32 + v31 + *(v33 + 72) * v30, v40, v43);
      v22 = v27;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_26983727C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v53[1] = a1;
  v53[2] = a4;
  v53[0] = a3;
  v54 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803263D8, &qword_26986AAC8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v53 - v7;
  v9 = sub_2698548D4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v53 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v53 - v17;
  v19 = sub_2696CB408();
  if (!v20)
  {
    if (qword_2803226E0 != -1)
    {
      swift_once();
    }

    v29 = v9;
    v30 = __swift_project_value_buffer(v9, qword_28033D910);
    (*(v10 + 16))(v13, v30, v9);

    v31 = sub_2698548B4();
    v32 = sub_269854F14();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v55 = a2;
      v56 = v34;
      *v33 = 136315138;
      sub_269854404();
      sub_26983A880(&qword_2803263E0, MEMORY[0x277D55380], MEMORY[0x277D55390]);
      v35 = sub_269855544();
      v37 = sub_26974F520(v35, v36, &v56);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_269684000, v31, v32, "Unable to extract app name for rrEntity creation from: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x26D647170](v34, -1, -1);
      MEMORY[0x26D647170](v33, -1, -1);
    }

    (*(v10 + 8))(v13, v29);
    goto LABEL_15;
  }

  v21 = v19;
  v22 = v20;
  v23 = sub_2698543F4();
  if (!v24)
  {

    if (qword_2803226E0 != -1)
    {
      swift_once();
    }

    v38 = v9;
    v39 = __swift_project_value_buffer(v9, qword_28033D910);
    (*(v10 + 16))(v16, v39, v9);

    v40 = sub_2698548B4();
    v41 = sub_269854F14();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v55 = a2;
      v56 = v43;
      *v42 = 136315138;
      sub_269854404();
      sub_26983A880(&qword_2803263E0, MEMORY[0x277D55380], MEMORY[0x277D55390]);
      v44 = sub_269855544();
      v46 = sub_26974F520(v44, v45, &v56);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_269684000, v40, v41, "Unable to extract app id for rrEntity creation from: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x26D647170](v43, -1, -1);
      MEMORY[0x26D647170](v42, -1, -1);
    }

    (*(v10 + 8))(v16, v38);
    goto LABEL_15;
  }

  v25 = sub_269836DDC(v23, v24, v21, v22);

  if (!MEMORY[0x26D644CA0](v25))
  {

    if (qword_2803226E0 != -1)
    {
      swift_once();
    }

    v49 = __swift_project_value_buffer(v9, qword_28033D910);
    (*(v10 + 16))(v18, v49, v9);
    v50 = sub_2698548B4();
    v51 = sub_269854F24();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_269684000, v50, v51, "Error converting common app entity builder to common app entity", v52, 2u);
      MEMORY[0x26D647170](v52, -1, -1);
    }

    else
    {
    }

    (*(v10 + 8))(v18, v9);
LABEL_15:
    v28 = 1;
    v27 = v54;
    goto LABEL_16;
  }

  v26 = sub_269854904();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v26);

  v27 = v54;
  sub_269854914();

  sub_2698548F4();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v26);
  sub_269854924();

  v28 = 0;
LABEL_16:
  v47 = sub_269854934();
  return __swift_storeEnumTagSinglePayload(v27, v28, 1, v47);
}

void sub_269837944()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v2 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v29 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 - v5;
  v8 = sub_2698544F4();
  OUTLINED_FUNCTION_8();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803263C0, &qword_26986AAB0);
  OUTLINED_FUNCTION_8_9(v15);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v16);
  sub_269853224();
  OUTLINED_FUNCTION_18_24();

  sub_269853204();
  sub_2698531B4();
  sub_2698531C4();

  sub_269853174();
  sub_2698531F4();

  sub_269853184();
  (*(v10 + 104))(v14, *MEMORY[0x277D56680], v8);
  sub_269854504();
  sub_269854514();
  OUTLINED_FUNCTION_24_4();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  sub_269853194();
  if (qword_2803226E0 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v2, qword_28033D910);
  (*(v29 + 16))(v7, v21, v2);

  v22 = sub_2698548B4();
  v23 = sub_269854F14();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v30 = v25;
    *v24 = 136315138;
    v26 = sub_2697F02D0(v1);
    v28 = sub_26974F520(v26, v27, &v30);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_269684000, v22, v23, "displayHints for makeDisambigutationUpdate: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x26D647170](v25, -1, -1);
    MEMORY[0x26D647170](v24, -1, -1);
  }

  (*(v29 + 8))(v7, v2);
  OUTLINED_FUNCTION_21_0();
}

void sub_269837CA4(unint64_t a1)
{
  v18 = sub_269852EF4();
  v2 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_269855324())
  {
    v20 = MEMORY[0x277D84F90];
    sub_269815128(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return;
    }

    v6 = 0;
    v7 = v20;
    v15 = a1 & 0xFFFFFFFFFFFFFF8;
    v16 = v2 + 32;
    v17 = a1 & 0xC000000000000001;
    v8 = a1;
    while (1)
    {
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v17)
      {
        v10 = MEMORY[0x26D646120](v6, a1);
      }

      else
      {
        if (v6 >= *(v15 + 16))
        {
          goto LABEL_16;
        }

        v10 = *(a1 + 8 * v6 + 32);
      }

      v11 = v10;
      v19 = v10;
      sub_2698393F0(&v19, v4);

      v20 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_269815128(v12 > 1, v13 + 1, 1);
        v7 = v20;
      }

      *(v7 + 16) = v13 + 1;
      (*(v2 + 32))(v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v13, v4, v18);
      ++v6;
      a1 = v8;
      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

void sub_269837EBC()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803263C8, &qword_26986AAB8);
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v2);
  v22 = (&v21 - v3);
  v4 = 0;
  v24 = v1;
  v5 = *(v1 + 16);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v5 == v4)
    {
      OUTLINED_FUNCTION_21_0();
      return;
    }

    v7 = sub_269852EF4();
    OUTLINED_FUNCTION_4_3();
    v9 = *(v8 + 16);
    v10 = v24 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v4;
    v11 = v22;
    v12 = *(v23 + 48);
    *v22 = v4;
    v9(v11 + v12, v10, v7);
    v13 = v5;
    v14 = sub_269839750(v4, v11 + v12, v5);
    sub_26969B0C0(v11, &qword_2803263C8, &qword_26986AAB8);
    v15 = *(v14 + 16);
    v16 = *(v6 + 16);
    if (__OFADD__(v16, v15))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v16 + v15 > *(v6 + 24) >> 1)
    {
      sub_26977C4D4();
      v6 = v17;
    }

    if (*(v14 + 16))
    {
      if ((*(v6 + 24) >> 1) - *(v6 + 16) < v15)
      {
        goto LABEL_17;
      }

      swift_arrayInitWithCopy();

      if (v15)
      {
        v18 = *(v6 + 16);
        v19 = __OFADD__(v18, v15);
        v20 = v18 + v15;
        if (v19)
        {
          goto LABEL_18;
        }

        *(v6 + 16) = v20;
      }
    }

    else
    {

      if (v15)
      {
        goto LABEL_16;
      }
    }

    ++v4;
    v5 = v13;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_2698380A8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a1;
  v52 = a4;
  v50 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803263D8, &qword_26986AAC8);
  MEMORY[0x28223BE20](v7 - 8);
  v49 = &v46 - v8;
  v9 = sub_269853C34();
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x28223BE20](v9);
  v55 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_269853E74();
  v12 = *(v11 - 8);
  v53 = v11;
  v54 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2698544B4();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323488, &qword_26986AAD0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v46 - v17;
  v19 = sub_269853B44();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [a2 resultEntity];
  if (!v23)
  {
LABEL_7:
    sub_26977E46C(a2);
    if (v30)
    {
      sub_26977E470(a2);
      if (v31)
      {
        v58 = a5;
        sub_269853ED4();
        swift_allocObject();
        v32 = sub_269853EC4();
        sub_269853F04();
        swift_allocObject();
        sub_269853EF4();
        v33 = v53;
        v34 = v54;
        (*(v54 + 104))(v14, *MEMORY[0x277D5EDB8], v53);
        sub_269853EE4();
        (*(v34 + 8))(v14, v33);

        sub_269853EA4();

        sub_269853EB4();

        v35 = v55;
        sub_269853C04();
        sub_269853BE4();
        (*(v56 + 8))(v35, v57);
        v36 = MEMORY[0x26D644CA0](v32);

        if (!v36)
        {
          v44 = sub_269854934();
          __swift_storeEnumTagSinglePayload(v58, 1, 1, v44);
        }

        v37 = v58;
        goto LABEL_11;
      }
    }

    v40 = sub_269854934();
    v41 = a5;
    v42 = 1;
    return __swift_storeEnumTagSinglePayload(v41, v42, 1, v40);
  }

  v24 = v23;
  v48 = sub_2697B6AA4(v24);
  if (!v25)
  {

    goto LABEL_7;
  }

  v58 = a5;
  v26 = sub_26983A81C(v24);
  if (v27 >> 60 == 15)
  {

    a5 = v58;
    goto LABEL_7;
  }

  v28 = v27;
  v47 = v14;
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v29 = v26;
  sub_2696CE464(v26, v27);
  sub_2698544A4();
  sub_26983A880(&qword_280323490, MEMORY[0x277D5DAD8], MEMORY[0x277D5DAD0]);
  sub_2698544C4();
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v19);
  (*(v20 + 32))(v22, v18, v19);
  sub_269853B54();
  v45 = sub_269853D24();

  sub_2696CE4BC(v29, v28);

  (*(v20 + 8))(v22, v19);
  if (!v45)
  {

    a5 = v58;
    v14 = v47;
    goto LABEL_7;
  }

  v37 = v58;
LABEL_11:

  v38 = v49;
  sub_2698548F4();
  v39 = sub_269854904();
  __swift_storeEnumTagSinglePayload(v38, 0, 1, v39);
  sub_269854914();

  v40 = sub_269854934();
  v41 = v37;
  v42 = 0;
  return __swift_storeEnumTagSinglePayload(v41, v42, 1, v40);
}

uint64_t sub_2698387C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2698544F4();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v51 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803263C0, &qword_26986AAB0);
  MEMORY[0x28223BE20](v6 - 8);
  v50 = &v43 - v7;
  v8 = sub_2698548D4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - v13;
  sub_269853224();
  sub_2698531D4();
  sub_2698531B4();
  sub_2698531A4();
  sub_2698531C4();
  sub_269853204();
  sub_2698531F4();

  sub_269853184();
  if (qword_2803226E0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, qword_28033D910);
  v48 = *(v9 + 16);
  v49 = v15;
  v48(v14);

  v16 = sub_2698548B4();
  v17 = sub_269854F14();
  v47 = v14;
  v18 = v17;
  if (os_log_type_enabled(v16, v17))
  {
    v19 = swift_slowAlloc();
    v46 = v12;
    v20 = v19;
    v44 = swift_slowAlloc();
    v54 = v44;
    *v20 = 134218242;
    *(v20 + 4) = *(a2 + 16);

    *(v20 + 12) = 2080;
    v21 = sub_2697F02E8(a2);
    v45 = a2;
    v23 = v9;
    v24 = v8;
    v25 = sub_26974F520(v21, v22, &v54);

    *(v20 + 14) = v25;
    v8 = v24;
    v9 = v23;
    _os_log_impl(&dword_269684000, v16, v18, "Donating %ld RREntities: %s", v20, 0x16u);
    v26 = v44;
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x26D647170](v26, -1, -1);
    v27 = v20;
    v12 = v46;
    MEMORY[0x26D647170](v27, -1, -1);
  }

  else
  {
  }

  v28 = *(v9 + 8);
  v28(v47, v8);

  sub_269853174();
  (v48)(v12, v49, v8);

  v29 = sub_2698548B4();
  v30 = sub_269854F14();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v49 = v8;
    v32 = v31;
    v33 = swift_slowAlloc();
    v54 = v33;
    *v32 = 136315138;
    v34 = sub_2697F02D0(a1);
    v36 = v12;
    v37 = sub_26974F520(v34, v35, &v54);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_269684000, v29, v30, "displayHints for makeDisambigutationUpdate: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x26D647170](v33, -1, -1);
    MEMORY[0x26D647170](v32, -1, -1);

    v38 = v36;
    v39 = v49;
  }

  else
  {

    v38 = v12;
    v39 = v8;
  }

  v28(v38, v39);
  (*(v52 + 104))(v51, *MEMORY[0x277D56680], v53);
  v40 = v50;
  sub_269854504();
  v41 = sub_269854514();
  __swift_storeEnumTagSinglePayload(v40, 0, 1, v41);
  return sub_269853194();
}

uint64_t sub_269838D38@<X0>(uint64_t a2@<X8>)
{
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323C00, qword_26986AA30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_269852FE4();
  v29 = *(v5 - 8);
  v6 = v29;
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v33 = &v25 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v28 = &v25 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  sub_269792A6C();
  sub_269852F74();

  sub_269852F84();

  sub_269852F84();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324348, qword_26986AAE0);
  v30 = *(v15 + 48);
  v31 = v15;
  v16 = *(v6 + 16);
  v16(v34, v14, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324310, &qword_26985F380);
  sub_269852EF4();
  v17 = swift_allocObject();
  v26 = v14;
  v27 = v17;
  *(v17 + 16) = xmmword_2698580D0;
  v16(v4, v14, v5);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  v18 = v32;
  v19 = v28;
  v16(v32, v28, v5);
  sub_269852ED4();
  v16(v4, v14, v5);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  v20 = v33;
  v16(v18, v33, v5);
  sub_269852ED4();
  v21 = *(v29 + 8);
  v21(v20, v5);
  v21(v19, v5);
  v21(v26, v5);
  v22 = v34;
  v23 = v31;
  *(v34 + v30) = v27;
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v23);
}

uint64_t sub_269839140@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323C00, qword_26986AA30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v21 - v4;
  v6 = sub_269852FE4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v21 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v21 - v14;
  v16 = *a1;
  sub_269852FD4();
  sub_269852FD4();
  sub_269852F64();
  sub_26973F87C(v16);
  sub_269852FA4();
  sub_269852FC4();
  sub_26973F888(v16);
  if (v17)
  {
    sub_269852F64();
    sub_269852FA4();
    sub_269852FC4();
  }

  v18 = *(v7 + 16);
  v18(v5, v15, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  v18(v10, v13, v6);
  sub_269852ED4();
  v19 = *(v7 + 8);
  v19(v13, v6);
  return (v19)(v15, v6);
}

uint64_t sub_2698393F0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323C00, qword_26986AA30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v22 - v4;
  v6 = sub_269852FE4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v22 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v22 - v14;
  v16 = *a1;
  sub_269852FD4();
  sub_269852FD4();
  sub_26977DBD8(v16);
  if (v17)
  {

    sub_269852F64();
    sub_26977DBD8(v16);
    sub_269852FA4();
    sub_269852FC4();
    sub_269852F64();
    sub_26977E46C(v16);
    sub_269852FA4();
LABEL_5:
    sub_269852FC4();
    goto LABEL_6;
  }

  sub_269852F64();
  sub_26977E470(v16);
  sub_269852FA4();
  sub_269852FC4();
  sub_26977E46C(v16);
  if (v18)
  {
    sub_269852F64();
    sub_269852FA4();
    goto LABEL_5;
  }

LABEL_6:
  v19 = *(v7 + 16);
  v19(v5, v15, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  v19(v10, v13, v6);
  sub_269852ED4();
  v20 = *(v7 + 8);
  v20(v13, v6);
  return (v20)(v15, v6);
}

uint64_t sub_269839750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v100 = a3;
  v101 = a1;
  v102 = sub_269852EF4();
  v3 = *(v102 - 8);
  v4 = MEMORY[0x28223BE20](v102);
  v92 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v96 = &v88 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v91 = &v88 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v95 = &v88 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v90 = &v88 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v94 = &v88 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v93 = &v88 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v88 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323C00, qword_26986AA30);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v88 - v24;
  v26 = sub_269852FE4();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v103 = &v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v88 - v30;
  sub_269852EE4();
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    sub_26969B0C0(v25, &qword_280323C00, qword_26986AA30);
LABEL_55:
    result = sub_269855354();
    __break(1u);
    return result;
  }

  v32 = *(v27 + 32);
  (v32)(v31, v25, v26);
  sub_269852EC4();
  if (__swift_getEnumTagSinglePayload(v23, 1, v26) == 1)
  {
    sub_26969B0C0(v23, &qword_280323C00, qword_26986AA30);
    goto LABEL_55;
  }

  (v32)(v103, v23, v26);
  sub_269852F94();
  v34 = v33;
  v97 = v26;
  v98 = v31;
  v99 = v27;
  v35 = v101;
  if (v33)
  {

    if (v35 > 24)
    {
      v19 = 1;
      goto LABEL_14;
    }

LABEL_7:
    if (v35 <= 0x18)
    {
      v36 = &unk_287A395D0 + 16 * v35;
      v37 = *(v36 + 4);
      v38 = *(v36 + 5);
      v32 = (v36 + 32);

      sub_26983A18C(v31, v37, v38);

      sub_26977C4D4();
      v40 = v39;
      v27 = *(v39 + 16);
      v35 = v27 + 1;
      if (v27 < *(v39 + 24) >> 1)
      {
        goto LABEL_9;
      }

      goto LABEL_52;
    }

    goto LABEL_51;
  }

  if (v101 < 25)
  {
    goto LABEL_7;
  }

  v19 = 0;
LABEL_14:
  v40 = MEMORY[0x277D84F90];
  v34 = v100;
  while (__OFSUB__(v34, 3))
  {
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    sub_26977C4D4();
    v40 = v77;
LABEL_9:
    *(v40 + 16) = v35;
    v89 = v3;
    v42 = v3 + 32;
    v41 = *(v3 + 32);
    v43 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v44 = *(v42 + 40);
    v41(v40 + v43 + v44 * v27, v19, v102);
    if (v34)
    {
      v45 = *v32;
      v46 = *(v32 + 8);

      v47 = v93;
      sub_26983A18C(v103, v45, v46);

      v32 = *(v40 + 16);
      if (v32 >= *(v40 + 24) >> 1)
      {
        sub_26977C4D4();
        v40 = v84;
      }

      v34 = v100;
      *(v40 + 16) = v32 + 1;
      v41(v40 + v43 + v32 * v44, v47, v102);
      v19 = 1;
      v3 = v89;
      v26 = v97;
      v31 = v98;
      v27 = v99;
    }

    else
    {
      v19 = 0;
      v3 = v89;
      v26 = v97;
      v31 = v98;
      v27 = v99;
      v34 = v100;
    }

    v35 = v101;
  }

  if (v34 - 3 == v35)
  {
    LODWORD(v93) = v19;
    sub_26983A18C(v31, 0x4C6F546472696874, 0xEB00000000747361);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26977C4D4();
      v40 = v78;
    }

    v48 = *(v40 + 16);
    if (v48 >= *(v40 + 24) >> 1)
    {
      sub_26977C4D4();
      v40 = v79;
    }

    *(v40 + 16) = v48 + 1;
    v49 = v3;
    v50 = *(v3 + 32);
    v51 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v52 = *(v3 + 72);
    v50(v40 + v51 + v52 * v48, v94, v102);
    if (v93)
    {
      v53 = v90;
      sub_26983A18C(v103, 0x4C6F546472696874, 0xEB00000000747361);
      v54 = *(v40 + 16);
      if (v54 >= *(v40 + 24) >> 1)
      {
        sub_26977C4D4();
        v40 = v85;
      }

      LODWORD(v19) = v93;
      *(v40 + 16) = v54 + 1;
      v50(v40 + v51 + v54 * v52, v53, v102);
      v3 = v49;
      v26 = v97;
      v31 = v98;
      v27 = v99;
      v34 = v100;
      v35 = v101;
    }

    else
    {
      v3 = v49;
      v26 = v97;
      v31 = v98;
      v27 = v99;
      v34 = v100;
      v35 = v101;
      LODWORD(v19) = 0;
    }
  }

  if (v34 - 2 == v35)
  {
    sub_26983A18C(v31, 0x6F54646E6F636573, 0xEC0000007473614CLL);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26977C4D4();
      v40 = v80;
    }

    v55 = *(v40 + 16);
    if (v55 >= *(v40 + 24) >> 1)
    {
      sub_26977C4D4();
      v40 = v81;
    }

    *(v40 + 16) = v55 + 1;
    v56 = v3;
    v57 = *(v3 + 32);
    v58 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v59 = *(v3 + 72);
    v57(v40 + v58 + v59 * v55, v95, v102);
    if (v19)
    {
      v60 = v91;
      sub_26983A18C(v103, 0x6F54646E6F636573, 0xEC0000007473614CLL);
      v61 = *(v40 + 16);
      if (v61 >= *(v40 + 24) >> 1)
      {
        sub_26977C4D4();
        v40 = v86;
      }

      *(v40 + 16) = v61 + 1;
      v57(v40 + v58 + v61 * v59, v60, v102);
    }

    v3 = v56;
    v26 = v97;
    v31 = v98;
    v27 = v99;
    v34 = v100;
    v35 = v101;
  }

  if (v34 - 1 == v35)
  {
    sub_26983A18C(v31, 1953718636, 0xE400000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26977C4D4();
      v40 = v82;
    }

    v62 = *(v40 + 16);
    if (v62 >= *(v40 + 24) >> 1)
    {
      sub_26977C4D4();
      v40 = v83;
    }

    *(v40 + 16) = v62 + 1;
    v65 = *(v3 + 32);
    v64 = v3 + 32;
    v63 = v65;
    v66 = (*(v64 + 48) + 32) & ~*(v64 + 48);
    v67 = *(v64 + 40);
    v65(v40 + v66 + v67 * v62, v96, v102);
    if (v19)
    {
      v68 = v92;
      sub_26983A18C(v103, 1953718636, 0xE400000000000000);
      v70 = *(v40 + 16);
      v69 = *(v40 + 24);
      v101 = v70 + 1;
      if (v70 >= v69 >> 1)
      {
        sub_26977C4D4();
        v40 = v87;
      }

      v71 = *(v99 + 8);
      v72 = v97;
      v71(v103, v97);
      v71(v98, v72);
      v73 = v102;
      *(v40 + 16) = v101;
      v63(v40 + v66 + v70 * v67, v68, v73);
    }

    else
    {
      v75 = *(v99 + 8);
      v75(v103, v26);
      v75(v98, v26);
    }
  }

  else
  {
    v74 = *(v27 + 8);
    v74(v103, v26);
    v74(v31, v26);
  }

  return v40;
}

uint64_t sub_26983A18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323C00, qword_26986AA30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_269852FE4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  sub_269852FD4();
  sub_269852F64();

  sub_269852FA4();
  sub_269852FC4();
  v14 = *(v8 + 16);
  v14(v6, a1, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v14(v11, v13, v7);
  sub_269852ED4();
  return (*(v8 + 8))(v13, v7);
}

void DisplayHint.description.getter()
{
  OUTLINED_FUNCTION_19_1();
  v1 = 0x3E6C696E3CLL;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323C00, qword_26986AA30);
  v3 = OUTLINED_FUNCTION_8_9(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_9_41();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v21 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_269855204();

  v21 = 0xD000000000000012;
  v22 = 0x80000002698818E0;
  sub_269852EE4();
  v13 = sub_269852FE4();
  v14 = OUTLINED_FUNCTION_19_21(v12);
  sub_26969B0C0(v12, &qword_280323C00, qword_26986AA30);
  if (v14 == 1)
  {
    v15 = 0xE500000000000000;
    v16 = 0x3E6C696E3CLL;
  }

  else
  {
    sub_269852EE4();
    if (OUTLINED_FUNCTION_19_21(v10) == 1)
    {
      __break(1u);
      goto LABEL_11;
    }

    v16 = SemanticValue.description.getter();
    v15 = v17;
    (*(*(v13 - 8) + 8))(v10, v13);
  }

  MEMORY[0x26D645A60](v16, v15);

  MEMORY[0x26D645A60](0x79616C706964202CLL, 0xEA0000000000203ALL);
  sub_269852EC4();
  v18 = OUTLINED_FUNCTION_19_21(v7);
  sub_26969B0C0(v7, &qword_280323C00, qword_26986AA30);
  if (v18 == 1)
  {
    v19 = 0xE500000000000000;
LABEL_9:
    MEMORY[0x26D645A60](v1, v19);

    MEMORY[0x26D645A60](32032, 0xE200000000000000);
    OUTLINED_FUNCTION_21_0();
    return;
  }

  sub_269852EC4();
  if (OUTLINED_FUNCTION_19_21(v0) != 1)
  {
    v1 = SemanticValue.description.getter();
    v19 = v20;
    (*(*(v13 - 8) + 8))(v0, v13);
    goto LABEL_9;
  }

LABEL_11:
  __break(1u);
}

uint64_t SemanticValue.description.getter()
{
  sub_269855204();
  MEMORY[0x26D645A60](0xD000000000000019, 0x8000000269881900);
  v0 = sub_269852F94();
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v0 = 0x3E6C696E3CLL;
    v2 = 0xE500000000000000;
  }

  MEMORY[0x26D645A60](v0, v2);

  MEMORY[0x26D645A60](0x6C6562616C202C22, 0xEB0000000022203ALL);
  v3 = sub_269852F54();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v3 = 0x3E6C696E3CLL;
    v5 = 0xE500000000000000;
  }

  MEMORY[0x26D645A60](v3, v5);

  MEMORY[0x26D645A60](0x4365646F6E202C22, 0xEF22203A7373616CLL);
  v6 = sub_269852FB4();
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v6 = 0x3E6C696E3CLL;
    v8 = 0xE500000000000000;
  }

  MEMORY[0x26D645A60](v6, v8);

  MEMORY[0x26D645A60](8200226, 0xE300000000000000);
  return 0;
}

void sub_26983A7B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();

  [a3 setReason_];
}

uint64_t sub_26983A81C(void *a1)
{
  v1 = [a1 usoEntity];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_269851C94();

  return v3;
}

uint64_t sub_26983A880(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26983A8C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324348, qword_26986AAE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26983A938(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324348, qword_26986AAE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_18_24()
{

  return sub_2698531D4();
}

uint64_t OUTLINED_FUNCTION_19_21(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

void sub_26983AA20()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D20, &qword_269860000);
  OUTLINED_FUNCTION_8_9(v8);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v9);
  v11 = v22 - v10;
  sub_26969B138(v5, v22 - v10, &qword_280324D20, &qword_269860000);
  v12 = sub_269854DB4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_26969B0C0(v11, &qword_280324D20, &qword_269860000);
  }

  else
  {
    sub_269854DA4();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_269854D34();
    v17 = v16;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v18 = sub_269854B04() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = v3;
      *(v19 + 24) = v1;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v20 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v22[1] = 7;
      v22[2] = v20;
      v22[3] = v18;
      swift_task_create();

      sub_26969B0C0(v5, &qword_280324D20, &qword_269860000);

      goto LABEL_14;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_26969B0C0(v5, &qword_280324D20, &qword_269860000);
  v21 = swift_allocObject();
  *(v21 + 16) = v3;
  *(v21 + 24) = v1;
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_26983ACEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtCC16SiriVideoIntents20VideoPlaybackMonitorP33_773551337043E4A575C4156C447B20D66Client_didSucceedPriorToWait) = 0;
  v7 = OBJC_IVAR____TtCC16SiriVideoIntents20VideoPlaybackMonitorP33_773551337043E4A575C4156C447B20D66Client_continuation;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280326498, &qword_26986ABA8);
  __swift_storeEnumTagSinglePayload(v3 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCC16SiriVideoIntents20VideoPlaybackMonitorP33_773551337043E4A575C4156C447B20D66Client_id;
  v10 = sub_269851DA4();
  (*(*(v10 - 8) + 32))(v3 + v9, a1, v10);
  v11 = (v3 + OBJC_IVAR____TtCC16SiriVideoIntents20VideoPlaybackMonitorP33_773551337043E4A575C4156C447B20D66Client_watchBundleId);
  *v11 = a2;
  v11[1] = a3;
  return v3;
}

uint64_t sub_26983ADB8()
{
  v1 = OBJC_IVAR____TtCC16SiriVideoIntents20VideoPlaybackMonitorP33_773551337043E4A575C4156C447B20D66Client_id;
  v2 = sub_269851DA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_26969B0C0(v0 + OBJC_IVAR____TtCC16SiriVideoIntents20VideoPlaybackMonitorP33_773551337043E4A575C4156C447B20D66Client_continuation, &qword_2803264A0, &qword_26986ABE8);
  return v0;
}

uint64_t sub_26983AE4C()
{
  v0 = sub_26983ADB8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

id *sub_26983AEA0(uint64_t a1)
{
  type metadata accessor for VideoPlaybackMonitor();
  swift_allocObject();
  result = sub_26983AFA0();
  qword_28033D908 = result;
  return result;
}

id sub_26983AF10()
{
  v0 = [objc_opt_self() localDestination];
  v1 = [objc_allocWithZone(MEMORY[0x277D279C0]) initWithDestination_];

  [v1 setRequestPlaybackState_];
  [v1 setWantsChangeCallbacksDuringInitialLoad_];
  return v1;
}

id *sub_26983AFA0()
{
  swift_defaultActor_initialize();
  sub_269851DA4();
  type metadata accessor for VideoPlaybackMonitor.Client(0);
  sub_269841138(&qword_2803264B0, MEMORY[0x277CC9600]);
  *(v0 + 112) = sub_269854A04();
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  v1 = sub_26983AF10();
  v2 = [objc_allocWithZone(MEMORY[0x277D279B8]) initWithConfiguration_];

  *(v0 + 120) = v2;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for VideoPlaybackMonitor();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  [v3[15] setDelegate_];
  return v3;
}

void sub_26983B0BC()
{
  OUTLINED_FUNCTION_19_1();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803264A0, &qword_26986ABE8);
  OUTLINED_FUNCTION_8_9(v3);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_29_16();
  v121 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280326498, &qword_26986ABA8);
  OUTLINED_FUNCTION_8();
  v8 = v7;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_29_16();
  v115 = v10;
  v11 = sub_269851DA4();
  OUTLINED_FUNCTION_8();
  v110 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_23_3();
  v122 = v18;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_13();
  v108 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803264B8, &qword_26986AC50);
  v22 = OUTLINED_FUNCTION_8_9(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_12();
  v117 = v23 - v24;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7_13();
  v116 = v26;
  v27 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_12();
  v113 = v31 - v32;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v33);
  v35 = &v90 - v34;
  if (qword_280322700 != -1)
  {
LABEL_23:
    OUTLINED_FUNCTION_0_45();
    swift_once();
  }

  v103 = v16;
  OUTLINED_FUNCTION_33_0(v27, qword_281571B38);
  v36 = OUTLINED_FUNCTION_148();
  v101 = v37;
  v100 = v38;
  v99 = v39;
  (v39)(v36);
  v40 = sub_2698548B4();
  v41 = sub_269854F14();
  v42 = OUTLINED_FUNCTION_23_14(v41);
  v119 = v11;
  if (v42)
  {
    v43 = OUTLINED_FUNCTION_16_2();
    *v43 = 0;
    _os_log_impl(&dword_269684000, v40, v1, "VideoPlaybackObserver: deinitializing cancelling all clients", v43, 2u);
    v11 = v119;
    OUTLINED_FUNCTION_10();
  }

  v44 = *(v29 + 8);
  v114 = v27;
  v102 = v29 + 8;
  v98 = v44;
  v44(v35, v27);
  OUTLINED_FUNCTION_1_4((v2 + 14), &v125);
  v91 = v2;
  v45 = v2[14] + 64;
  OUTLINED_FUNCTION_16_29();
  v29 = v46 >> 6;
  v118 = (v110 + 16);
  v120 = (v110 + 32);
  v97 = v8 + 32;
  v112 = (v110 + 8);
  v96 = v8 + 8;
  v109 = v47;

  v27 = 0;
  *&v48 = 136315138;
  v92 = v48;
  v16 = v6;
  v107 = v45;
  v106 = v29;
  v104 = v6;
  while (1)
  {
    if (!v1)
    {
      v6 = &qword_2803264C0;
      while (1)
      {
        v50 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v50 >= v29)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803264C0, &qword_26986AC58);
          v62 = v117;
          OUTLINED_FUNCTION_57();
          __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
          v1 = 0;
          goto LABEL_13;
        }

        v1 = *(v45 + 8 * v50);
        ++v27;
        if (v1)
        {
          v49 = v16;
          v27 = v50;
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_23;
    }

    v49 = v16;
LABEL_12:
    OUTLINED_FUNCTION_62_4();
    v53 = v52 | (v51 << 6);
    v54 = v109;
    v55 = v110;
    v56 = v108;
    (*(v110 + 16))(v108, *(v109 + 48) + *(v110 + 72) * v53, v11);
    v35 = *(*(v54 + 56) + 8 * v53);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803264C0, &qword_26986AC58);
    v58 = v11;
    v59 = *(v57 + 48);
    v60 = *(v55 + 32);
    v61 = v117;
    v60(v117, v56, v58);
    *(v61 + v59) = v35;
    v62 = v61;
    OUTLINED_FUNCTION_24_4();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v57);

    v16 = v49;
    v45 = v107;
    v29 = v106;
LABEL_13:
    v66 = v62;
    v67 = v116;
    sub_2698410C8(v66, v116);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803264C0, &qword_26986AC58);
    v68 = OUTLINED_FUNCTION_89();
    if (__swift_getEnumTagSinglePayload(v68, 1, v35) == 1)
    {
      break;
    }

    v69 = *(v67 + *(v35 + 12));
    v8 = v119;
    (*v120)(v122, v67, v119);
    v70 = OBJC_IVAR____TtCC16SiriVideoIntents20VideoPlaybackMonitorP33_773551337043E4A575C4156C447B20D66Client_continuation;
    OUTLINED_FUNCTION_1_4(v69 + OBJC_IVAR____TtCC16SiriVideoIntents20VideoPlaybackMonitorP33_773551337043E4A575C4156C447B20D66Client_continuation, &v124);
    v71 = v69 + v70;
    v35 = v121;
    v2 = &qword_2803264A0;
    sub_26969B138(v71, v121, &qword_2803264A0, &qword_26986ABE8);
    if (__swift_getEnumTagSinglePayload(v35, 1, v16) == 1)
    {
      (*v112)(v122, v8);

      sub_26969B0C0(v121, &qword_2803264A0, &qword_26986ABE8);
      v11 = v8;
    }

    else
    {
      OUTLINED_FUNCTION_7_4();
      v72(v115, v121, v16);
      v99(v113, v101, v114);
      v2 = v103;
      (*v118)(v103, v122, v8);
      v73 = sub_2698548B4();
      v105 = sub_269854F14();
      v74 = os_log_type_enabled(v73, v105);
      v75 = v112;
      v111 = v112 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v11 = v8;
      if (v74)
      {
        v76 = OUTLINED_FUNCTION_27_2();
        v94 = v76;
        v95 = OUTLINED_FUNCTION_9_3();
        v123 = v95;
        *v76 = v92;
        OUTLINED_FUNCTION_1_62();
        sub_269841138(&qword_2803264C8, v77);
        v93 = v73;
        v78 = v75;
        v79 = sub_269855544();
        v8 = *v78;
        (*v78)(v2, v119);
        v80 = OUTLINED_FUNCTION_25_2();
        sub_26974F520(v80, v81, v82);
        OUTLINED_FUNCTION_89();
        v11 = v119;

        v2 = v94;
        *(v94 + 4) = v79;
        v83 = v93;
        _os_log_impl(&dword_269684000, v93, v105, "VideoPlaybackObserver: cancel active continuation for %s", v2, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v95);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();
      }

      else
      {

        v8 = *v75;
        (*v75)(v2, v11);
      }

      v98(v113, v114);
      LOBYTE(v123) = 0;
      v16 = v104;
      v35 = v115;
      sub_269854D54();

      OUTLINED_FUNCTION_7_4();
      v84(v35, v16);
      v8(v122, v11);
    }
  }

  v89 = v91;

  swift_defaultActor_destroy();
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_26983B940()
{
  sub_26983B0BC();

  return MEMORY[0x282200960](v0);
}

void sub_26983B96C()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v3 = v2;
  v46 = v4;
  v6 = v5;
  v7 = sub_269851DA4();
  OUTLINED_FUNCTION_8();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12();
  v45 = v11 - v12;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v16 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_1();
  v47 = v21 - v20;
  sub_269851D94();
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_45();
    swift_once();
  }

  OUTLINED_FUNCTION_33_0(v16, qword_281571B38);
  (*(v18 + 16))(v47);
  v43 = v18;
  v44 = *(v9 + 16);
  v44(v15, v6, v7);

  v22 = v16;
  v23 = sub_2698548B4();
  v24 = sub_269854F04();

  v42 = v24;
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v41 = v1;
    v26 = v25;
    v49 = swift_slowAlloc();
    *v26 = 136315394;
    OUTLINED_FUNCTION_1_62();
    sub_269841138(v27, v28);
    v40 = v22;
    sub_269855544();
    (*(v9 + 8))(v15, v7);
    v29 = OUTLINED_FUNCTION_7_16();
    v32 = sub_26974F520(v29, v30, v31);
    v33 = v46;

    *(v26 + 4) = v32;
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_26974F520(v33, v3, &v49);
    _os_log_impl(&dword_269684000, v23, v42, "VideoPlaybackObserver: startWatchingPlayback for %s for %s", v26, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    v1 = v41;
    OUTLINED_FUNCTION_10();

    (*(v43 + 8))(v47, v40);
  }

  else
  {

    (*(v9 + 8))(v15, v7);
    (*(v43 + 8))(v47, v22);
  }

  v34 = OUTLINED_FUNCTION_2_6();
  v35(v34);
  type metadata accessor for VideoPlaybackMonitor.Client(0);
  swift_allocObject();
  v36 = OUTLINED_FUNCTION_89();
  v37 = v6;
  v38 = sub_26983ACEC(v36, v46, v3);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = *(v1 + 112);
  sub_269840930(v38, v37, isUniquelyReferenced_nonNull_native);
  *(v1 + 112) = v48;
  swift_endAccess();
  sub_26983E5F4();
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_26983BD74()
{
  OUTLINED_FUNCTION_2_7();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = sub_269851DA4();
  v1[8] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[9] = v5;
  v1[10] = swift_task_alloc();
  v6 = sub_2698548D4();
  v1[11] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v1[12] = v7;
  v1[13] = swift_task_alloc();
  v8 = sub_269854824();
  v1[14] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v1[15] = v9;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_26983BED8()
{
  OUTLINED_FUNCTION_34();
  if (qword_280322710 != -1)
  {
    swift_once();
  }

  v1 = sub_269854854();
  __swift_project_value_buffer(v1, qword_28033D958);
  sub_269854814();
  v2 = sub_269854844();
  v3 = sub_269854FF4();
  if (sub_269855074())
  {
    v4 = OUTLINED_FUNCTION_16_2();
    *v4 = 0;
    v5 = sub_269854804();
    _os_signpost_emit_with_name_impl(&dword_269684000, v2, v3, v5, "waitForPlayback", "enableTelemetry=YES", v4, 2u);
    OUTLINED_FUNCTION_10();
  }

  v6 = v0[17];
  v7 = v0[14];
  v8 = v0[15];

  v9 = OUTLINED_FUNCTION_148();
  v10(v9, v6, v7);
  sub_269854894();
  swift_allocObject();
  v0[18] = sub_269854884();
  (*(v8 + 8))(v6, v7);

  return MEMORY[0x2822009F8](sub_26983C074);
}

uint64_t sub_26983C074()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_1_4(v1 + 112, v0 + 16);
  *(v0 + 152) = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_26983C0F0);
}

uint64_t sub_26983C0F0()
{
  v39 = v0;
  v1 = sub_26981D5B8(v0[5], v0[19]);

  if (v1 && (v2 = *(v1 + OBJC_IVAR____TtCC16SiriVideoIntents20VideoPlaybackMonitorP33_773551337043E4A575C4156C447B20D66Client_didSucceedPriorToWait), , v2 == 1))
  {
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_45();
      swift_once();
    }

    v4 = v0[12];
    v3 = v0[13];
    v5 = v0[10];
    v6 = v0[8];
    v7 = v0[9];
    v8 = v0[5];
    OUTLINED_FUNCTION_33_0(v0[11], qword_281571B38);
    (*(v4 + 16))(v3);
    (*(v7 + 16))(v5, v8, v6);
    v9 = sub_2698548B4();
    v10 = sub_269854F04();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[12];
    v12 = v0[13];
    v14 = v0[11];
    v15 = v0[8];
    if (v11)
    {
      v37 = v0[11];
      v16 = OUTLINED_FUNCTION_27_2();
      v35 = v10;
      v17 = OUTLINED_FUNCTION_9_3();
      v38 = v17;
      *v16 = 136315138;
      OUTLINED_FUNCTION_1_62();
      sub_269841138(v18, v19);
      v20 = sub_269855544();
      v36 = v12;
      v22 = v21;
      v23 = OUTLINED_FUNCTION_52_6();
      v24(v23, v15);
      v25 = sub_26974F520(v20, v22, &v38);

      *(v16 + 4) = v25;
      _os_log_impl(&dword_269684000, v9, v35, "VideoPlaybackObserver: waitForAnticipatedPlayback for %s, app is already playing, returning success", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_16_9();

      (*(v13 + 8))(v36, v37);
    }

    else
    {

      v32 = OUTLINED_FUNCTION_52_6();
      v33(v32, v15);
      (*(v13 + 8))(v12, v14);
    }

    return MEMORY[0x2822009F8](sub_26983C458);
  }

  else
  {
    v26 = v0[6];
    v27 = v0[5];
    v28 = swift_allocObject();
    v0[20] = v28;
    swift_weakInit();
    v29 = swift_task_alloc();
    v0[21] = v29;
    v29[2] = v28;
    v29[3] = v27;
    v29[4] = v26;
    v30 = swift_task_alloc();
    v0[22] = v30;
    *v30 = v0;
    v30[1] = sub_26983C560;
    v31 = MEMORY[0x277D839B0];

    return MEMORY[0x2822007B8](v0 + 23, 0, 0, 0xD000000000000027, 0x8000000269881C20, sub_2698411EC, v29, v31);
  }
}

uint64_t sub_26983C458()
{
  OUTLINED_FUNCTION_2_7();
  sub_26983E4A4(*(v0 + 40));
  v1 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v1);
}

uint64_t sub_26983C4B8()
{
  OUTLINED_FUNCTION_34();
  sub_26983C728(*(v0 + 144));

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_26983C560()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_26983C67C()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 184);
  sub_26983C728(*(v0 + 144));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_26983C728(uint64_t a1)
{
  v1 = sub_269854864();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269854824();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322710 != -1)
  {
    swift_once();
  }

  v9 = sub_269854854();
  __swift_project_value_buffer(v9, qword_28033D958);
  v10 = sub_269854844();
  sub_269854874();
  v11 = sub_269854FE4();
  if (sub_269855074())
  {

    sub_2698548A4();

    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_269854804();
    _os_signpost_emit_with_name_impl(&dword_269684000, v10, v11, v14, "waitForPlayback", v12, v13, 2u);
    MEMORY[0x26D647170](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_26983C9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v5 = sub_269851DA4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v36 = v7;
  v34 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280326498, &qword_26986ABA8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D20, &qword_269860000);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v28 - v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v33 = sub_269854DB4();
    v31 = v15;
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v33);
    (*(v9 + 16))(v12, a1, v8);
    v32 = *(v6 + 16);
    v28 = v12;
    v18 = v34;
    v32(v34, v37, v5);
    v19 = *(v9 + 80);
    v29 = v5;
    v20 = (v19 + 40) & ~v19;
    v21 = *(v6 + 80);
    v30 = v21 | 7;
    v22 = swift_allocObject();
    *(v22 + 2) = 0;
    *(v22 + 3) = 0;
    *(v22 + 4) = v17;
    (*(v9 + 32))(&v22[v20], v28, v8);
    v23 = *(v6 + 32);
    v24 = v29;
    v23(&v22[(v10 + v21 + v20) & ~v21], v18, v29);

    v25 = v31;
    sub_26983AA20();

    __swift_storeEnumTagSinglePayload(v25, 1, 1, v33);
    v32(v18, v37, v24);
    v26 = swift_allocObject();
    *(v26 + 2) = 0;
    *(v26 + 3) = 0;
    *(v26 + 4) = v35;
    *(v26 + 5) = v17;
    v23(&v26[(v21 + 48) & ~v21], v18, v24);
    sub_26983AA20();
  }

  else
  {
    v38 = 0;
    return sub_269854D54();
  }
}

uint64_t sub_26983CD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_26983CD90);
}

uint64_t sub_26983CD90()
{
  OUTLINED_FUNCTION_2_7();
  sub_26983D01C();
  OUTLINED_FUNCTION_7_7();

  return v0();
}

uint64_t sub_26983CDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_26983CE10);
}

uint64_t sub_26983CE10(uint64_t a1)
{
  if (is_mul_ok(*(v1 + 16), 0x3B9ACA00uLL))
  {
    OUTLINED_FUNCTION_2_7();
    v5 = v3 * v4;
    v6 = swift_task_alloc();
    *(v1 + 40) = v6;
    *v6 = v1;
    v6[1] = sub_26983CEC0;
    a1 = v5;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200480](a1);
}

uint64_t sub_26983CEC0()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_14_6();
  v2 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v3 = v2;

  if (v0)
  {
  }

  return MEMORY[0x2822009F8](sub_26983CFC4);
}

uint64_t sub_26983CFC4()
{
  OUTLINED_FUNCTION_2_7();
  sub_26983D3B4();
  OUTLINED_FUNCTION_7_7();

  return v0();
}

void sub_26983D01C()
{
  OUTLINED_FUNCTION_19_1();
  v3 = v2;
  v5 = v4;
  v6 = sub_269851DA4();
  OUTLINED_FUNCTION_8();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v12 = v11 - v10;
  v13 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v47 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_1();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803264A0, &qword_26986ABE8);
  OUTLINED_FUNCTION_8_9(v19);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_34_14();
  v21 = *(v0 + 112);

  v22 = sub_26981D5B8(v3, v21);

  if (v22)
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280326498, &qword_26986ABA8);
    OUTLINED_FUNCTION_4_3();
    (*(v24 + 16))(v1, v5, v23);
    OUTLINED_FUNCTION_24_4();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v23);
    v28 = OBJC_IVAR____TtCC16SiriVideoIntents20VideoPlaybackMonitorP33_773551337043E4A575C4156C447B20D66Client_continuation;
    swift_beginAccess();
    sub_26984117C(v1, v22 + v28);
    swift_endAccess();
  }

  else
  {
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_45();
      swift_once();
    }

    OUTLINED_FUNCTION_33_0(v13, qword_281571B38);
    (*(v47 + 16))(v18);
    (*(v8 + 16))(v12, v3, v6);
    v29 = sub_2698548B4();
    v30 = sub_269854F24();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = OUTLINED_FUNCTION_27_2();
      v46 = OUTLINED_FUNCTION_9_3();
      v48 = v46;
      *v31 = 136315138;
      OUTLINED_FUNCTION_1_62();
      sub_269841138(v32, v33);
      v34 = sub_269855544();
      v36 = v35;
      v37 = OUTLINED_FUNCTION_24_6();
      v38(v37);
      v39 = sub_26974F520(v34, v36, &v48);

      *(v31 + 4) = v39;
      _os_log_impl(&dword_269684000, v29, v30, "VideoPlaybackObserver: storeContinuation unable to find client for %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_16_9();

      v40 = OUTLINED_FUNCTION_2_6();
      v41(v40);
    }

    else
    {

      v42 = OUTLINED_FUNCTION_24_6();
      v43(v42);
      v44 = OUTLINED_FUNCTION_2_6();
      v45(v44);
    }
  }

  OUTLINED_FUNCTION_21_0();
}

void sub_26983D3B4()
{
  OUTLINED_FUNCTION_19_1();
  v3 = v2;
  v4 = sub_269851DA4();
  OUTLINED_FUNCTION_8();
  v47 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  v10 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v48 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803264A0, &qword_26986ABE8);
  OUTLINED_FUNCTION_8_9(v16);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280326498, &qword_26986ABA8);
  OUTLINED_FUNCTION_8();
  v49 = v21;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_34_14();
  v23 = *(v0 + 112);
  if (*(v23 + 16))
  {

    v24 = sub_26973D434();
    if (v25)
    {
      v46 = v3;
      v26 = *(*(v23 + 56) + 8 * v24);

      v27 = OBJC_IVAR____TtCC16SiriVideoIntents20VideoPlaybackMonitorP33_773551337043E4A575C4156C447B20D66Client_continuation;
      OUTLINED_FUNCTION_1_4(v26 + OBJC_IVAR____TtCC16SiriVideoIntents20VideoPlaybackMonitorP33_773551337043E4A575C4156C447B20D66Client_continuation, &v51);
      sub_26969B138(v26 + v27, v19, &qword_2803264A0, &qword_26986ABE8);
      if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
      {
        sub_26969B0C0(v19, &qword_2803264A0, &qword_26986ABE8);
      }

      else
      {
        v45 = v26;
        (*(v49 + 32))(v1, v19, v20);
        if (qword_280322700 != -1)
        {
          OUTLINED_FUNCTION_0_45();
          swift_once();
        }

        OUTLINED_FUNCTION_33_0(v10, qword_281571B38);
        (*(v48 + 16))(v15);
        v28 = v47;
        (*(v47 + 16))(v9, v46, v4);
        v29 = sub_2698548B4();
        v44 = sub_269854F04();
        if (os_log_type_enabled(v29, v44))
        {
          v30 = OUTLINED_FUNCTION_27_2();
          v42 = v30;
          v43 = OUTLINED_FUNCTION_9_3();
          v50 = v43;
          *v30 = 136315138;
          OUTLINED_FUNCTION_1_62();
          sub_269841138(v31, v32);
          v41 = v29;
          v33 = sub_269855544();
          (*(v28 + 8))(v9, v4);
          v34 = OUTLINED_FUNCTION_25_2();
          sub_26974F520(v34, v35, v36);
          OUTLINED_FUNCTION_89();

          v38 = v41;
          v37 = v42;
          *(v42 + 1) = v33;
          _os_log_impl(&dword_269684000, v38, v44, "VideoPlaybackObserver: timeoutClient timing out %s", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v43);
          OUTLINED_FUNCTION_10();
          OUTLINED_FUNCTION_10();
        }

        else
        {

          (*(v28 + 8))(v9, v4);
        }

        v39 = OUTLINED_FUNCTION_24_6();
        v40(v39);
        LOBYTE(v50) = 0;
        sub_269854D54();
        (*(v49 + 8))(v1, v20);
      }

      sub_26983E4A4(v46);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_21_0();
}

void sub_26983D82C()
{
  OUTLINED_FUNCTION_19_1();
  v1 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v128 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803264A0, &qword_26986ABE8);
  OUTLINED_FUNCTION_8_9(v11);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_29_16();
  v145 = v13;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280326498, &qword_26986ABA8);
  OUTLINED_FUNCTION_8();
  v15 = v14;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_29_16();
  v138 = v17;
  v18 = sub_269851DA4();
  OUTLINED_FUNCTION_8();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_12();
  v24 = v22 - v23;
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v128 - v27;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_23_3();
  v137 = v29;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_23_3();
  v136 = v31;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_23_3();
  v159 = v33;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7_13();
  v152 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803264B8, &qword_26986AC50);
  v37 = OUTLINED_FUNCTION_8_9(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_12();
  v156 = v38 - v39;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_7_13();
  v162 = v41;
  OUTLINED_FUNCTION_1_4(v0 + 112, &v166);
  v163 = v0;
  v42 = *(v0 + 112);
  if (!*(v42 + 16))
  {
LABEL_45:
    OUTLINED_FUNCTION_21_0();
    return;
  }

  v161 = v18;
  v135 = v24;
  v134 = v10;
  v149 = v7;
  v150 = v1;
  v43 = v42 + 64;
  OUTLINED_FUNCTION_16_29();
  v45 = v44 >> 6;
  v157 = (v20 + 16);
  v160 = (v20 + 32);
  v133 = v15 + 32;
  v144 = v3 + 16;
  v153 = v20;
  v158 = (v20 + 8);
  v143 = v3 + 8;
  v132 = v15 + 8;
  v154 = v46;

  v47 = 0;
  v139 = MEMORY[0x277D84F90];
  *&v48 = 136315138;
  v140 = v48;
  v147 = v28;
  v49 = v156;
  v151 = v43;
  v155 = v45;
LABEL_3:
  v50 = v159;
  v51 = v162;
  if (!v10)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    OUTLINED_FUNCTION_62_4();
    v55 = v54 | (v53 << 6);
    v57 = v153;
    v56 = v154;
    (*(v153 + 16))(v152, *(v154 + 48) + *(v153 + 72) * v55, v161);
    v58 = *(*(v56 + 56) + 8 * v55);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803264C0, &qword_26986AC58);
    v60 = *(v59 + 48);
    v49 = v156;
    (*(v57 + 32))();
    *(v49 + v60) = v58;
    OUTLINED_FUNCTION_24_4();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v59);

    v50 = v159;
    v51 = v162;
    v43 = v151;
LABEL_10:
    sub_2698410C8(v49, v51);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803264C0, &qword_26986AC58);
    if (__swift_getEnumTagSinglePayload(v51, 1, v64) == 1)
    {

      v118 = v139;
      v119 = *(v139 + 16);
      v120 = v161;
      if (v119)
      {
        OUTLINED_FUNCTION_59_4();
        v122 = v118 + v121;
        v124 = *(v123 + 72);
        v125 = *(v123 + 16);
        v126 = v135;
        v127 = v158;
        do
        {
          v125(v126, v122, v120);
          sub_26983E4A4(v126);
          (*v127)(v126, v120);
          v122 += v124;
          --v119;
        }

        while (v119);
      }

      goto LABEL_45;
    }

    v65 = *(v51 + *(v64 + 48));
    v66 = v161;
    v67 = *v160;
    (*v160)(v50, v51, v161);
    if (*(v163 + 128) != 1)
    {

      v45 = v155;
LABEL_25:
      (*v158)(v50, v66);
      goto LABEL_29;
    }

    v68 = *(v163 + 144);
    v45 = v155;
    if (!v68 || (*(v163 + 136) == *(v65 + OBJC_IVAR____TtCC16SiriVideoIntents20VideoPlaybackMonitorP33_773551337043E4A575C4156C447B20D66Client_watchBundleId) ? (v69 = v68 == *(v65 + OBJC_IVAR____TtCC16SiriVideoIntents20VideoPlaybackMonitorP33_773551337043E4A575C4156C447B20D66Client_watchBundleId + 8)) : (v69 = 0), !v69 && (sub_269855584() & 1) == 0))
    {

      goto LABEL_25;
    }

    v142 = v67;
    v70 = OBJC_IVAR____TtCC16SiriVideoIntents20VideoPlaybackMonitorP33_773551337043E4A575C4156C447B20D66Client_continuation;
    OUTLINED_FUNCTION_1_4(v65 + OBJC_IVAR____TtCC16SiriVideoIntents20VideoPlaybackMonitorP33_773551337043E4A575C4156C447B20D66Client_continuation, &v165);
    v148 = v65;
    v71 = v65 + v70;
    v72 = v145;
    sub_26969B138(v71, v145, &qword_2803264A0, &qword_26986ABE8);
    if (__swift_getEnumTagSinglePayload(v72, 1, v146) != 1)
    {
      OUTLINED_FUNCTION_7_4();
      v91(v138, v72, v146);
      if (qword_280322700 != -1)
      {
        OUTLINED_FUNCTION_0_45();
        swift_once();
      }

      OUTLINED_FUNCTION_33_0(v150, qword_281571B38);
      OUTLINED_FUNCTION_7_4();
      v92 = v134;
      v93(v134);
      v141 = *v157;
      v141(v136, v50, v66);
      v94 = sub_2698548B4();
      v95 = sub_269854F04();
      v131 = v94;
      if (os_log_type_enabled(v94, v95))
      {
        v96 = OUTLINED_FUNCTION_27_2();
        v128 = v96;
        v129 = OUTLINED_FUNCTION_9_3();
        v164 = v129;
        *v96 = v140;
        OUTLINED_FUNCTION_1_62();
        sub_269841138(&qword_2803264C8, v97);
        v98 = sub_269855544();
        v100 = v99;
        v101 = OUTLINED_FUNCTION_33_18();
        v102(v101);
        v103 = sub_26974F520(v98, v100, &v164);
        v49 = v156;

        v104 = v128;
        *(v128 + 1) = v103;
        v105 = v131;
        _os_log_impl(&dword_269684000, v131, v95, "VideoPlaybackObserver: updateClients, target app is playing for %s, returning success for the client", v104, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v129);
        OUTLINED_FUNCTION_16_9();
        OUTLINED_FUNCTION_10();

        OUTLINED_FUNCTION_7_4();
        v107 = v134;
      }

      else
      {

        v108 = OUTLINED_FUNCTION_33_18();
        v109(v108);
        OUTLINED_FUNCTION_7_4();
        v107 = v92;
      }

      v106(v107, v150);
      LOBYTE(v164) = 1;
      sub_269854D54();
      v141(v137, v159, v66);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26977D41C();
        v139 = v116;
      }

      v110 = v130;
      v111 = *(v139 + 16);
      if (v111 >= *(v139 + 24) >> 1)
      {
        sub_26977D41C();
        v139 = v117;
      }

      OUTLINED_FUNCTION_7_4();
      v112(v138, v146);
      v110(v159, v66);
      *(v139 + 16) = v111 + 1;
      OUTLINED_FUNCTION_59_4();
      (v142)(v114 + v113 + *(v115 + 72) * v111, v137, v66);
      goto LABEL_3;
    }

    sub_26969B0C0(v72, &qword_2803264A0, &qword_26986ABE8);
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_45();
      swift_once();
    }

    OUTLINED_FUNCTION_33_0(v150, qword_281571B38);
    OUTLINED_FUNCTION_7_4();
    v73(v149);
    v74 = v147;
    (*v157)(v147, v50, v66);
    v75 = sub_2698548B4();
    v76 = sub_269854F04();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = OUTLINED_FUNCTION_27_2();
      v141 = OUTLINED_FUNCTION_9_3();
      v164 = v141;
      *v77 = v140;
      OUTLINED_FUNCTION_1_62();
      sub_269841138(&qword_2803264C8, v78);
      v79 = sub_269855544();
      v81 = v80;
      v142 = *v158;
      v142(v147, v66);
      v82 = sub_26974F520(v79, v81, &v164);

      *(v77 + 4) = v82;
      _os_log_impl(&dword_269684000, v75, v76, "VideoPlaybackObserver: updateClients, target app is playing for %s, but app did not start waiting yet, let's mark it and keep it in our list", v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v141);
      OUTLINED_FUNCTION_10();
      v49 = v156;
      OUTLINED_FUNCTION_10();

      OUTLINED_FUNCTION_7_4();
      v83(v149, v150);
      v50 = v159;
      v142(v159, v66);
    }

    else
    {

      v88 = *v158;
      (*v158)(v74, v66);
      OUTLINED_FUNCTION_7_4();
      v89(v149, v150);
      v90 = v159;
      v88(v159, v66);
      v50 = v90;
    }

    *(v148 + OBJC_IVAR____TtCC16SiriVideoIntents20VideoPlaybackMonitorP33_773551337043E4A575C4156C447B20D66Client_didSucceedPriorToWait) = 1;

LABEL_29:
    v51 = v162;
  }

  while (v10);
LABEL_5:
  while (1)
  {
    v52 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v52 >= v45)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803264C0, &qword_26986AC58);
      OUTLINED_FUNCTION_57();
      __swift_storeEnumTagSinglePayload(v84, v85, v86, v87);
      v10 = 0;
      goto LABEL_10;
    }

    v10 = *(v43 + 8 * v52);
    ++v47;
    if (v10)
    {
      v47 = v52;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_26983E4A4(uint64_t a1)
{
  swift_beginAccess();
  sub_26983FFD0();
  swift_endAccess();

  if (!*(*(v1 + 112) + 16))
  {
    sub_26983E74C();
  }
}

void sub_26983E520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(BYTE4(a3))
  {
    case 1:
      *(v3 + 136) = a1;
      *(v3 + 144) = a2;

      break;
    case 2:
      *(v3 + 128) = a1;
      goto LABEL_4;
    case 3:
      *(v3 + 136) = 0;
      *(v3 + 144) = 0;

      *(v3 + 128) = 0;
      break;
    default:
      v4 = a3;
      *(v3 + 136) = a1;
      *(v3 + 144) = a2;

      *(v3 + 128) = v4;
LABEL_4:

      sub_26983D82C();
      break;
  }
}

void sub_26983E5F4()
{
  OUTLINED_FUNCTION_39_3();
  v1 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_27();
  if ((*(v0 + 152) & 1) == 0)
  {
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_45();
      swift_once();
    }

    OUTLINED_FUNCTION_33_0(v1, qword_281571B38);
    v3 = OUTLINED_FUNCTION_148();
    v4(v3);
    v5 = sub_2698548B4();
    v6 = sub_269854F04();
    if (OUTLINED_FUNCTION_23_14(v6))
    {
      *OUTLINED_FUNCTION_16_2() = 0;
      OUTLINED_FUNCTION_39_8();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      OUTLINED_FUNCTION_10();
    }

    v12 = OUTLINED_FUNCTION_25_2();
    v13(v12);
    [*(v0 + 120) beginLoadingUpdates];
    *(v0 + 152) = 1;
  }

  OUTLINED_FUNCTION_38_10();
}

void sub_26983E74C()
{
  OUTLINED_FUNCTION_39_3();
  v1 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_27();
  if (*(v0 + 152) == 1)
  {
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_45();
      swift_once();
    }

    OUTLINED_FUNCTION_33_0(v1, qword_281571B38);
    v3 = OUTLINED_FUNCTION_148();
    v4(v3);
    v5 = sub_2698548B4();
    v6 = sub_269854F04();
    if (OUTLINED_FUNCTION_23_14(v6))
    {
      *OUTLINED_FUNCTION_16_2() = 0;
      OUTLINED_FUNCTION_39_8();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      OUTLINED_FUNCTION_10();
    }

    v12 = OUTLINED_FUNCTION_25_2();
    v13(v12);
    [*(v0 + 120) endLoadingUpdates];
    *(v0 + 152) = 0;
  }

  OUTLINED_FUNCTION_38_10();
}

void sub_26983E8A4()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D20, &qword_269860000);
  OUTLINED_FUNCTION_8_9(v4);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - v6;
  v8 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_27();
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_45();
    swift_once();
  }

  OUTLINED_FUNCTION_33_0(v8, qword_281571B38);
  v12 = OUTLINED_FUNCTION_148();
  v13(v12);
  v14 = v3;
  v15 = sub_2698548B4();
  v16 = sub_269854F04();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_27_2();
    v36 = v7;
    v18 = v17;
    v34 = OUTLINED_FUNCTION_9_3();
    v37 = v34;
    *v18 = 136315138;
    v19 = [v14 debugDescription];
    v20 = sub_269854A94();
    v35 = v8;
    v21 = v20;
    v23 = v22;

    v24 = sub_26974F520(v21, v23, &v37);
    v1 = v0;

    *(v18 + 4) = v24;
    _os_log_impl(&dword_269684000, v15, v16, "VideoPlaybackObserver: didLoadResponse with response: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (*(v10 + 8))(v0, v35);
  }

  else
  {

    v25 = OUTLINED_FUNCTION_7_16();
    v27(v25, v26);
  }

  sub_269854DB4();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = v1;
  v32[5] = v14;
  v33 = v14;

  OUTLINED_FUNCTION_15_33();
  sub_26983AA20();

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_26983EB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_26983EB6C);
}

uint64_t sub_26983EB6C()
{
  OUTLINED_FUNCTION_2_7();
  v1 = [*(v0 + 24) playerPath];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 client];

    if (v3)
    {
      v1 = sub_2696B6BAC(v3);
      goto LABEL_6;
    }

    v1 = 0;
  }

  v4 = 0;
LABEL_6:
  *(v0 + 32) = v1;
  *(v0 + 40) = v4;
  *(v0 + 48) = [*(v0 + 24) playbackState];

  return MEMORY[0x2822009F8](sub_26983EC34);
}

uint64_t sub_26983EC34()
{
  OUTLINED_FUNCTION_2_7();
  sub_26983E520(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  OUTLINED_FUNCTION_7_7();

  return v1();
}

void sub_26983ED08()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D20, &qword_269860000);
  OUTLINED_FUNCTION_8_9(v6);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v7);
  v8 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_27();
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_45();
    swift_once();
  }

  OUTLINED_FUNCTION_33_0(v8, qword_281571B38);
  v12 = OUTLINED_FUNCTION_148();
  v13(v12);
  v14 = sub_2698548B4();
  v15 = sub_269854F04();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109376;
    *(v16 + 4) = v5;
    *(v16 + 8) = 1024;
    *(v16 + 10) = v3;
    _os_log_impl(&dword_269684000, v14, v15, "VideoPlaybackObserver: playbackStateChanged from: %u to: %u", v16, 0xEu);
    OUTLINED_FUNCTION_10();
  }

  (*(v10 + 8))(v0, v8);
  sub_269854DB4();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = v1;
  *(v21 + 40) = v3;

  OUTLINED_FUNCTION_15_33();
  sub_26983AA20();

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_26983EF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(v5 + 24) = a5;
  *(v5 + 16) = a4;
  return MEMORY[0x2822009F8](sub_26983EF50);
}

uint64_t sub_26983EF50()
{
  OUTLINED_FUNCTION_2_7();
  *(*(v0 + 16) + 128) = *(v0 + 24);
  sub_26983D82C();
  OUTLINED_FUNCTION_7_7();

  return v1();
}

void sub_26983F018()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D20, &qword_269860000);
  OUTLINED_FUNCTION_8_9(v4);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v8 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_27();
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_45();
    swift_once();
  }

  OUTLINED_FUNCTION_33_0(v8, qword_281571B38);
  v10 = OUTLINED_FUNCTION_148();
  v11(v10);
  v12 = v3;
  v13 = sub_2698548B4();
  v14 = sub_269854F04();

  if (os_log_type_enabled(v13, v14))
  {
    v37 = v12;
    v35 = v7;
    v15 = OUTLINED_FUNCTION_27_2();
    v16 = OUTLINED_FUNCTION_9_3();
    v38 = v16;
    *v15 = 136315138;
    v36 = v3;
    if (v3)
    {
      v17 = [v37 debugDescription];
      v34 = v0;
      v18 = v17;
      sub_269854A94();

      v1 = v34;
    }

    v21 = OUTLINED_FUNCTION_2_6();
    v24 = sub_26974F520(v21, v22, v23);

    *(v15 + 4) = v24;
    _os_log_impl(&dword_269684000, v13, v14, "VideoPlaybackObserver: playerPathDidChange playerPath: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v25 = OUTLINED_FUNCTION_52_6();
    v26(v25, v8);
    v3 = v36;
    v12 = v37;
  }

  else
  {

    v19 = OUTLINED_FUNCTION_52_6();
    v20(v19, v8);
  }

  sub_269854DB4();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v1;
  v31[5] = v3;
  v32 = v12;

  OUTLINED_FUNCTION_15_33();
  sub_26983AA20();

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_26983F2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_26983F2FC);
}

uint64_t sub_26983F2FC()
{
  OUTLINED_FUNCTION_2_7();
  v1 = v0[3];
  if (v1 && (v1 = [v1 client]) != 0)
  {
    v1 = sub_2696B6BAC(v1);
  }

  else
  {
    v2 = 0;
  }

  v0[4] = v1;
  v0[5] = v2;

  return MEMORY[0x2822009F8](sub_26983F388);
}

uint64_t sub_26983F388()
{
  OUTLINED_FUNCTION_2_7();
  sub_26983E520(*(v0 + 32), *(v0 + 40), 0x100000000);

  OUTLINED_FUNCTION_7_7();

  return v1();
}

void sub_26983F45C()
{
  OUTLINED_FUNCTION_39_3();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D20, &qword_269860000);
  OUTLINED_FUNCTION_8_9(v2);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v3);
  v4 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_27();
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_45();
    swift_once();
  }

  OUTLINED_FUNCTION_33_0(v4, qword_281571B38);
  v8 = OUTLINED_FUNCTION_148();
  v9(v8);
  v10 = sub_2698548B4();
  v11 = sub_269854F04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_16_2();
    *v12 = 0;
    _os_log_impl(&dword_269684000, v10, v11, "VideoPlaybackObserver: controllerWillReloadForInvalidation, resetting current state", v12, 2u);
    OUTLINED_FUNCTION_16_9();
  }

  (*(v6 + 8))(v0, v4);
  sub_269854DB4();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v1;

  OUTLINED_FUNCTION_15_33();
  sub_26983AA20();

  OUTLINED_FUNCTION_38_10();
}

uint64_t sub_26983F670()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *(v0 + 16);
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;

  *(v1 + 128) = 0;
  OUTLINED_FUNCTION_7_7();

  return v2();
}

void sub_26983F720()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v2 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_27();
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_45();
    swift_once();
  }

  OUTLINED_FUNCTION_33_0(v2, qword_281571B38);
  v4 = OUTLINED_FUNCTION_148();
  v5(v4);
  v6 = v1;
  v7 = sub_2698548B4();
  v8 = sub_269854F04();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_27_2();
    v10 = OUTLINED_FUNCTION_9_3();
    v22 = v10;
    *v9 = 136315138;
    v11 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v12 = sub_269854AE4();
    v14 = sub_26974F520(v12, v13, &v22);

    *(v9 + 4) = v14;
    OUTLINED_FUNCTION_39_8();
    _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_16_9();
    OUTLINED_FUNCTION_10();
  }

  v20 = OUTLINED_FUNCTION_7_16();
  v21(v20);
  OUTLINED_FUNCTION_21_0();
}

uint64_t type metadata accessor for VideoPlaybackMonitor.Client(uint64_t a1)
{
  result = qword_280326480;
  if (!qword_280326480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26983F9C8(uint64_t a1)
{
  sub_269851DA4();
  if (v1 <= 0x3F)
  {
    sub_26983FAA8(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_26983FAA8(uint64_t a1)
{
  if (!qword_280326490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280326498, &qword_26986ABA8);
    v1 = sub_2698550A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280326490);
    }
  }
}

uint64_t sub_26983FB0C()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_63_2();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_10_20(v2);
  *v3 = v4;
  v3[1] = sub_2696DAF80;
  v5 = OUTLINED_FUNCTION_28_15();

  return sub_26983F650(v5, v6, v7, v1);
}

uint64_t sub_26983FBA4()
{
  OUTLINED_FUNCTION_8_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_10_20(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_14(v1);

  return v4(v3);
}

uint64_t sub_26983FC38()
{
  OUTLINED_FUNCTION_8_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_10_20(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_14(v1);

  return v4(v3);
}

uint64_t sub_26983FCCC()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_63_2();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_10_20(v3);
  *v4 = v5;
  v4[1] = sub_2696DAF80;
  v6 = OUTLINED_FUNCTION_28_15();

  return sub_26983F2DC(v6, v7, v8, v2, v1);
}

uint64_t sub_26983FD70@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_26983FDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_26973CEF8(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803258A8, &unk_26986ACD0);
    sub_2698552E4();

    v8 = *(v16 + 56);
    v9 = sub_269854204();
    OUTLINED_FUNCTION_4_3();
    (*(v10 + 32))(a3, v8 + *(v10 + 72) * v7, v9);
    sub_269855304();
    *v3 = v16;
    OUTLINED_FUNCTION_24_4();
    v14 = v9;
  }

  else
  {
    sub_269854204();
    OUTLINED_FUNCTION_57();
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_26983FED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = sub_26973D3A8(a1, a2, a3, a4);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = v6;
  swift_isUniquelyReferenced_nonNull_native();
  v11 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324E88, &qword_269863348);
  sub_2698552E4();

  v9 = *(*(v11 + 56) + 8 * v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803241A0, &qword_26985F1E0);
  sub_2696B2880();
  sub_269855304();
  *v5 = v11;
  return v9;
}

uint64_t sub_26983FFD0()
{
  v1 = v0;
  v2 = sub_26973D434();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803264A8, &qword_26986AC48);
  sub_2698552E4();
  v5 = *(v9 + 48);
  v6 = sub_269851DA4();
  (*(*(v6 - 8) + 8))(v5 + *(*(v6 - 8) + 72) * v4, v6);
  v7 = *(*(v9 + 56) + 8 * v4);
  type metadata accessor for VideoPlaybackMonitor.Client(0);
  sub_269841138(&qword_2803264B0, MEMORY[0x277CC9600]);
  sub_269855304();
  *v1 = v9;
  return v7;
}

void sub_2698400FC()
{
  OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_32_15(v4, v5, v6);
  OUTLINED_FUNCTION_4_46();
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280326500, &unk_2698577E0);
  OUTLINED_FUNCTION_18_25();
  if ((sub_2698552E4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_26973CEF8(v2, v0);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_11:
    sub_2698555F4();
    __break(1u);
    return;
  }

  v10 = v12;
LABEL_5:
  if (v11)
  {
    *(*(*v3 + 56) + 8 * v10) = v1;
    OUTLINED_FUNCTION_38_10();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_53_3();
    sub_269840BC8(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_38_10();
  }
}

void sub_2698401D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39_3();
  v12 = v11;
  v14 = v13;
  v16 = OUTLINED_FUNCTION_22_24(v15, v13);
  sub_26973CEF8(v16, v17);
  OUTLINED_FUNCTION_4_46();
  if (v19)
  {
    __break(1u);
LABEL_13:
    sub_2698555F4();
    __break(1u);
    return;
  }

  v20 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803258A8, &unk_26986ACD0);
  OUTLINED_FUNCTION_18_25();
  if (sub_2698552E4())
  {
    sub_26973CEF8(v14, v12);
    OUTLINED_FUNCTION_19_22();
    if (!v21)
    {
      goto LABEL_13;
    }
  }

  if (v20)
  {
    sub_269854204();
    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_38_10();

    v25(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }

  else
  {
    v30 = OUTLINED_FUNCTION_24_6();
    sub_269840BEC(v30, v31, v12, v10, v32);
    OUTLINED_FUNCTION_38_10();
  }
}

void sub_269840310()
{
  OUTLINED_FUNCTION_39_3();
  v3 = v2;
  v5 = v4;
  v7 = OUTLINED_FUNCTION_22_24(v6, v4);
  sub_26973CEF8(v7, v8);
  OUTLINED_FUNCTION_4_46();
  if (v11)
  {
    __break(1u);
LABEL_14:
    sub_2698555F4();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280326520, &qword_26986ACC8);
  OUTLINED_FUNCTION_18_25();
  if (sub_2698552E4())
  {
    sub_26973CEF8(v5, v3);
    OUTLINED_FUNCTION_19_22();
    if (!v15)
    {
      goto LABEL_14;
    }

    v12 = v14;
  }

  if (v13)
  {
    OUTLINED_FUNCTION_38_10();

    memcpy(v16, v17, v18);
  }

  else
  {
    sub_269840C9C(v12, v5, v3, v0, *v1);
    OUTLINED_FUNCTION_38_10();
  }
}

void sub_26984044C()
{
  OUTLINED_FUNCTION_19_1();
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_32_15(v8, v9, v10);
  OUTLINED_FUNCTION_4_46();
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v5);
  OUTLINED_FUNCTION_18_25();
  if ((sub_2698552E4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_26973CEF8(v2, v0);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    sub_2698555F4();
    __break(1u);
    return;
  }

  v14 = v16;
LABEL_5:
  if (v15)
  {
    *(*(*v3 + 56) + 8 * v14) = v1;
    OUTLINED_FUNCTION_21_0();
  }

  else
  {
    v19 = OUTLINED_FUNCTION_53_3();
    sub_269840BC8(v19, v20, v21, v22, v23);
    OUTLINED_FUNCTION_21_0();
  }
}

unint64_t sub_269840550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39_3();
  v13 = v12;
  v15 = OUTLINED_FUNCTION_22_24(v14, v12);
  sub_26973ED38(v15);
  OUTLINED_FUNCTION_4_46();
  if (v18)
  {
    __break(1u);
LABEL_14:
    result = sub_2698555F4();
    __break(1u);
    return result;
  }

  v19 = v16;
  v20 = v17;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803264D8, &qword_26986AC88);
  if (OUTLINED_FUNCTION_64_3(v21))
  {
    sub_26973ED38(v13);
    OUTLINED_FUNCTION_40_8();
    if (!v23)
    {
      goto LABEL_14;
    }

    v19 = v22;
  }

  if (v20)
  {
    *(*(*v11 + 56) + 8 * v19) = v10;
    OUTLINED_FUNCTION_38_10();
  }

  else
  {
    OUTLINED_FUNCTION_38_10();

    return sub_269840D10(v26, v27, v28, v29);
  }
}

id sub_26984063C(uint64_t a1, void *a2, char a3)
{
  sub_26973D178();
  OUTLINED_FUNCTION_4_46();
  if (v7)
  {
    __break(1u);
LABEL_14:
    sub_269854664();
    result = sub_2698555F4();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803264E0, &qword_26986AC90);
  if (sub_2698552E4())
  {
    sub_26973D178();
    OUTLINED_FUNCTION_40_8();
    if (!v11)
    {
      goto LABEL_14;
    }

    v8 = v10;
  }

  v12 = *v3;
  if (v9)
  {
    v13 = v12[7];
    v14 = type metadata accessor for DeviceSelectionDonationAggregations(0);
    OUTLINED_FUNCTION_8_9(v14);
    v16 = v13 + *(v15 + 72) * v8;

    return sub_269841444(a1, v16);
  }

  else
  {
    sub_269840D54(v8, a2, a1, v12);

    return a2;
  }
}

void sub_26984076C()
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_27_17(v3, v4, v5, v6);
  OUTLINED_FUNCTION_4_46();
  if (v8)
  {
    __break(1u);
LABEL_13:
    sub_2698555F4();
    __break(1u);
    return;
  }

  v9 = v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280326510, &unk_26986ACB8);
  v11 = OUTLINED_FUNCTION_65_4(v10);
  if (v11)
  {
    sub_26973CEF8(v1, v0);
    OUTLINED_FUNCTION_19_22();
    if (!v16)
    {
      goto LABEL_13;
    }
  }

  if (v9)
  {
    OUTLINED_FUNCTION_50_7(v11, v12, v13, v14, v15, *v2);
    OUTLINED_FUNCTION_21_0();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_46_5();
    sub_269840DE8(v18, v19, v20, v21, v22, v23);
    OUTLINED_FUNCTION_21_0();
  }
}

void sub_269840844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39_3();
  v13 = v12;
  v15 = OUTLINED_FUNCTION_22_24(v14, v12);
  sub_26973ED38(v15);
  OUTLINED_FUNCTION_4_46();
  if (v18)
  {
    __break(1u);
LABEL_14:
    sub_2698555F4();
    __break(1u);
    return;
  }

  v19 = v16;
  v20 = v17;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324018, &unk_26985E5C0);
  if (OUTLINED_FUNCTION_64_3(v21))
  {
    sub_26973ED38(v13);
    OUTLINED_FUNCTION_40_8();
    if (!v23)
    {
      goto LABEL_14;
    }

    v19 = v22;
  }

  if (v20)
  {
    *(*(*v11 + 56) + 8 * v19) = v10;
    OUTLINED_FUNCTION_38_10();
  }

  else
  {
    OUTLINED_FUNCTION_38_10();

    sub_269840D10(v26, v27, v28, v29);
  }
}

uint64_t sub_269840930(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_269851DA4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v12 = sub_26973D434();
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803264A8, &qword_26986AC48);
  if ((sub_2698552E4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_26973D434();
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    result = sub_2698555F4();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    *(v18[7] + 8 * v14) = a1;
  }

  else
  {
    (*(v8 + 16))(v10, a2, v7);
    return sub_269840E34(v14, v10, a1, v18);
  }
}

void sub_269840AF0()
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_27_17(v3, v4, v5, v6);
  OUTLINED_FUNCTION_4_46();
  if (v8)
  {
    __break(1u);
LABEL_13:
    sub_2698555F4();
    __break(1u);
    return;
  }

  v9 = v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803264D0, &qword_26986AC80);
  v11 = OUTLINED_FUNCTION_65_4(v10);
  if (v11)
  {
    sub_26973CEF8(v1, v0);
    OUTLINED_FUNCTION_19_22();
    if (!v16)
    {
      goto LABEL_13;
    }
  }

  if (v9)
  {
    OUTLINED_FUNCTION_50_7(v11, v12, v13, v14, v15, *v2);
    OUTLINED_FUNCTION_21_0();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_46_5();
    sub_269840DE8(v18, v19, v20, v21, v22, v23);
    OUTLINED_FUNCTION_21_0();
  }
}

unint64_t sub_269840BC8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_36_11(a1, a2, a3, a4, a5);
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v7;
  }

  return result;
}

uint64_t sub_269840BEC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_269854204();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_269840C9C(unint64_t a1, uint64_t a2, uint64_t a3, void *__src, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = memcpy((a5[7] + 72 * a1), __src, 0x48uLL);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_269840D10(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_269840D54(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for DeviceSelectionDonationAggregations(0);
  result = sub_2697070F4(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_269840DE8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_269840E34(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_269851DA4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_7_16();

  return MEMORY[0x2821FE8E8](v0, v1, 7);
}

uint64_t sub_269840F34()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_63_2();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_10_20(v3);
  *v4 = v5;
  v4[1] = sub_2696DAF80;
  v6 = OUTLINED_FUNCTION_28_15();

  return sub_26983EF2C(v6, v7, v8, v1, v2);
}

uint64_t objectdestroy_38Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_269841024()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_63_2();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_10_20(v3);
  *v4 = v5;
  v4[1] = sub_2696DAF80;
  v6 = OUTLINED_FUNCTION_28_15();

  return sub_26983EB4C(v6, v7, v8, v2, v1);
}

uint64_t sub_2698410C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803264B8, &qword_26986AC50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269841138(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_269851DA4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26984117C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803264A0, &qword_26986ABE8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2698411F8(uint64_t a1)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280326498, &qword_26986ABA8);
  OUTLINED_FUNCTION_5_12(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = sub_269851DA4();
  OUTLINED_FUNCTION_8_9(v10);
  v12 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_2696DAF80;

  return sub_26983CD6C(a1, v13, v14, v15, v1 + v7, v1 + v12);
}

uint64_t sub_269841358()
{
  v1 = sub_269851DA4();
  OUTLINED_FUNCTION_8_9(v1);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_10_20(v4);
  *v5 = v6;
  v5[1] = sub_2696DA938;
  v7 = OUTLINED_FUNCTION_28_15();

  return sub_26983CDEC(v7, v8, v9, v2, v3, v10);
}

uint64_t sub_269841444(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceSelectionDonationAggregations(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t OUTLINED_FUNCTION_27_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_26973CEF8(a3, a4);
}

unint64_t OUTLINED_FUNCTION_32_15(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26973CEF8(a2, a3);
}

uint64_t OUTLINED_FUNCTION_33_18()
{
  result = v0;
  *(v1 - 432) = **(v1 - 192);
  return result;
}

uint64_t OUTLINED_FUNCTION_34_14()
{

  return swift_beginAccess();
}

unint64_t OUTLINED_FUNCTION_36_11(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(*(a5 + 56) + 8 * result) = a4;
  return result;
}

uint64_t OUTLINED_FUNCTION_50_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = (*(a6 + 56) + 16 * v8);
  result = v9[1];
  *v9 = v7;
  v9[1] = v6;
  return result;
}

uint64_t OUTLINED_FUNCTION_64_3(uint64_t a1)
{

  return sub_2698552E4();
}

uint64_t OUTLINED_FUNCTION_65_4(uint64_t a1)
{

  return sub_2698552E4();
}

uint64_t sub_269841714()
{
  v0 = sub_2698548D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269830114();
  if (v4)
  {
    sub_269852C24();
    sub_269852BF4();
    sub_26982F6E0();
    sub_269852C14();

    swift_unknownObjectRelease();

    v5 = sub_269852C04();

    return v5;
  }

  else
  {
    if (qword_280322700 != -1)
    {
      swift_once();
    }

    v7 = __swift_project_value_buffer(v0, qword_281571B38);
    (*(v1 + 16))(v3, v7, v0);
    v8 = sub_2698548B4();
    v9 = sub_269854F34();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_269684000, v8, v9, "Unable to get localized string for OPEN_TV label", v10, 2u);
      MEMORY[0x26D647170](v10, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_26984194C()
{
  sub_269841A9C();
  result = sub_269855084();
  qword_281571B68 = result;
  return result;
}

uint64_t sub_269841A24(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2698548D4();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_2698548C4();
}

unint64_t sub_269841A9C()
{
  result = qword_2815718B0;
  if (!qword_2815718B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2815718B0);
  }

  return result;
}

void sub_269841AE0(uint64_t a1)
{
  sub_2697BA560(319);
  if (v1 <= 0x3F)
  {
    sub_2698550A4();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_269841BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_18();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v28 = v27;
  v164 = v29;
  v165 = v30;
  v32 = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  v34 = OUTLINED_FUNCTION_8_9(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_24_3();
  v158 = v35;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_15_1(v37);
  v161 = sub_269851D34();
  OUTLINED_FUNCTION_8();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_15_1(v41);
  v42 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v44 = v43;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_24_3();
  v157 = v46;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  v51 = MEMORY[0x28223BE20](v50);
  v53 = &v150 - v52;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_12_35();
  OUTLINED_FUNCTION_23();
  v54 = swift_allocObject();
  v159 = v28;
  *(v54 + 16) = v28;
  *(v54 + 24) = v26;
  v162 = v54;
  v163 = v26;
  v55 = qword_280322708;

  if (v55 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_280322708);
  }

  v56 = __swift_project_value_buffer(v42, qword_281571B50);
  v57 = *(v44 + 16);
  v166 = v56;
  v167 = v57;
  v168 = v44 + 16;
  v57(v22);
  v58 = sub_2698548B4();
  v59 = sub_269854F14();
  v60 = os_log_type_enabled(v58, v59);
  v153 = v39;
  v160 = v32;
  if (v60)
  {
    v61 = OUTLINED_FUNCTION_27_2();
    v62 = OUTLINED_FUNCTION_9_3();
    v151 = v44;
    v63 = v62;
    v169[0] = v62;
    *v61 = 136315138;
    v171 = v164;
    v172 = v32 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280326528, &qword_26986ADC8);
    v64 = sub_269854AE4();
    v66 = sub_26974F520(v64, v65, v169);

    *(v61 + 4) = v66;
    _os_log_impl(&dword_269684000, v58, v59, "AtomicValue#computeIfAbsent startTimeMaxSecondsAgo: %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_17_28();

    v67 = v151;
    v68 = v151;
  }

  else
  {

    v68 = v44;
    v67 = v44;
  }

  v69 = *(v67 + 8);
  v69(v22, v42);
  v70 = v165;
  v71 = *(v165 + 16);
  [v71 lock];
  OUTLINED_FUNCTION_14_34();
  v72();
  v73 = sub_2698548B4();
  v74 = sub_269854F14();
  if (OUTLINED_FUNCTION_16_30(v74))
  {
    v75 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_16_6(v75);
    OUTLINED_FUNCTION_8_40();
    _os_log_impl(v76, v77, v78, v79, v80, 2u);
    OUTLINED_FUNCTION_4_16();
  }

  v81 = v68 + 8;
  v69(v53, v42);
  if ((v160 & 1) == 0)
  {
    v82 = qword_281571B90;
    OUTLINED_FUNCTION_1_4(v70 + qword_281571B90, v169);
    OUTLINED_FUNCTION_61_3(v70 + v82, &unk_280322D50, &unk_2698583F0, &a16);
    v83 = OUTLINED_FUNCTION_27_6();
    v84 = v161;
    OUTLINED_FUNCTION_25_22(v83, v85);
    if (v86)
    {
      v90 = v152;
      sub_269851CA4();
      v87 = OUTLINED_FUNCTION_27_6();
      OUTLINED_FUNCTION_25_22(v87, v88);
      v89 = v153;
      if (!v86)
      {
        sub_26969B0C0(v73, &unk_280322D50, &unk_2698583F0);
      }
    }

    else
    {
      v89 = v153;
      v90 = v152;
      (*(v153 + 32))(v152, v73, v84);
    }

    sub_269851CE4();
    (*(v89 + 8))(v90, v84);
    OUTLINED_FUNCTION_41_7();
    if (!(v91 ^ v92 | v86))
    {
      OUTLINED_FUNCTION_14_34();
      v93();
      v94 = sub_2698548B4();
      v95 = sub_269854F14();
      if (OUTLINED_FUNCTION_16_30(v95))
      {
        v96 = OUTLINED_FUNCTION_30_12();
        v97 = OUTLINED_FUNCTION_4_47(v96, 3.8521e-34);
        *(v97 + 14) = v164;
        OUTLINED_FUNCTION_8_40();
        _os_log_impl(v98, v99, v100, v101, v102, 0x16u);
        OUTLINED_FUNCTION_4_16();
      }

      v69(v154, v42);
      *(v70 + 24) = 0;
    }
  }

  if (*(v70 + 24) == 1)
  {
    [v71 unlock];
    v103 = v155;
    OUTLINED_FUNCTION_14_34();
    v104();
    v105 = sub_2698548B4();
    v106 = sub_269854F14();
    if (OUTLINED_FUNCTION_16_30(v106))
    {
      v107 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_16_6(v107);
      OUTLINED_FUNCTION_8_40();
      _os_log_impl(v108, v109, v110, v111, v112, 2u);
      OUTLINED_FUNCTION_4_16();
    }

    v69(v103, v42);
    v113 = v157;
    OUTLINED_FUNCTION_14_34();
    v114();

    v115 = sub_2698548B4();
    sub_269854F14();
    OUTLINED_FUNCTION_58_3();
    if (OUTLINED_FUNCTION_7_46())
    {
      v116 = OUTLINED_FUNCTION_27_2();
      v117 = OUTLINED_FUNCTION_9_3();
      OUTLINED_FUNCTION_50_8(v117);
      *v116 = 136315138;
      v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F58, &unk_26986ADF0);
      v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F60, &qword_269858DF0);
      v119 = OUTLINED_FUNCTION_60_2(v118);
      v121 = sub_26974F520(v119, v120, &v171);

      *(v116 + 4) = v121;
      OUTLINED_FUNCTION_7_5();
      _os_log_impl(v122, v123, v124, v125, v126, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v70);
      v70 = v165;
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_17_28();
    }

    v69(v113, v42);
    v171 = *(v70 + *(*v70 + 112));

    sub_2696B48A0(&v171, v159, v163);
  }

  else
  {
    v127 = v156;
    OUTLINED_FUNCTION_14_34();
    v128();

    v129 = sub_2698548B4();
    sub_269854F14();
    OUTLINED_FUNCTION_58_3();
    if (OUTLINED_FUNCTION_7_46())
    {
      v130 = OUTLINED_FUNCTION_27_2();
      v131 = OUTLINED_FUNCTION_9_3();
      OUTLINED_FUNCTION_50_8(v131);
      *v130 = 136315138;
      v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F58, &unk_26986ADF0);
      v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F60, &qword_269858DF0);
      v133 = OUTLINED_FUNCTION_60_2(v132);
      v135 = sub_26974F520(v133, v134, &v171);
      v168 = v81;
      v136 = v135;

      *(v130 + 4) = v136;
      OUTLINED_FUNCTION_7_5();
      _os_log_impl(v137, v138, v139, v140, v141, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v70);
      v70 = v165;
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_17_28();
    }

    v69(v127, v42);
    v142 = v158;
    sub_269851D24();
    v143 = OUTLINED_FUNCTION_23_22();
    __swift_storeEnumTagSinglePayload(v143, v144, v145, v161);
    v146 = qword_281571B90;
    swift_beginAccess();
    sub_2696B6234(v142, v70 + v146);
    swift_endAccess();
    v147 = *(v70 + *(*v70 + 120));
    OUTLINED_FUNCTION_51_4();
    v148 = swift_allocObject();
    v148[2] = v70;
    v148[3] = sub_269845C4C;
    v148[4] = v162;

    v149 = OUTLINED_FUNCTION_126();
    v147(v149);
  }

  OUTLINED_FUNCTION_28_20();
}

void sub_269842524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_29_18();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v130 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  v16 = OUTLINED_FUNCTION_8_9(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_24_3();
  v122 = v17;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7_13();
  v118 = v19;
  v131 = sub_269851D34();
  OUTLINED_FUNCTION_8();
  v124 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_24_3();
  v127 = v28;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_23_3();
  v121 = v30;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_23_3();
  v120 = v32;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_23_3();
  v119 = v34;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_23_3();
  v125 = v36;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_12_35();
  OUTLINED_FUNCTION_23();
  v38 = swift_allocObject();
  v123 = v9;
  *(v38 + 16) = v9;
  *(v38 + 24) = v7;
  v128 = v38;
  v129 = v7;
  v39 = qword_280322708;

  if (v39 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_280322708);
  }

  v40 = __swift_project_value_buffer(v24, qword_281571B50);
  v41 = *(v26 + 16);
  v133 = v40;
  v134 = v41;
  v135 = v26 + 16;
  (v41)(v5);
  v42 = sub_2698548B4();
  v43 = sub_269854F14();
  v44 = os_log_type_enabled(v42, v43);
  v117 = v23;
  LODWORD(v126) = v13;
  if (v44)
  {
    OUTLINED_FUNCTION_27_2();
    v45 = OUTLINED_FUNCTION_15_34();
    v116 = v11;
    v46 = v45;
    v138[0] = v45;
    *v23 = 136315138;
    v139[0] = v130;
    LOBYTE(v139[1]) = v13 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280326528, &qword_26986ADC8);
    v47 = sub_269854AE4();
    v49 = sub_26974F520(v47, v48, v138);

    *(v23 + 4) = v49;
    OUTLINED_FUNCTION_39_9(&dword_269684000, v42, v43, "AtomicValue#computeIfAbsent startTimeMaxSecondsAgo: %s", v115);
    __swift_destroy_boxed_opaque_existential_0(v46);
    v11 = v116;
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v50 = v26;
  v132 = *(v26 + 8);
  v132(v5, v24);
  v51 = v24;
  v52 = *(v11 + 16);
  [v52 lock];
  v134(v125, v133, v24);
  v53 = sub_2698548B4();
  v54 = sub_269854F14();
  v55 = OUTLINED_FUNCTION_19_4(v54);
  v56 = v127;
  if (v55)
  {
    v57 = OUTLINED_FUNCTION_16_2();
    *v57 = 0;
    OUTLINED_FUNCTION_49_9();
    _os_log_impl(v58, v59, v60, v61, v57, 2u);
    OUTLINED_FUNCTION_17_28();
  }

  v62 = v26 + 8;
  OUTLINED_FUNCTION_48_9();
  v63();
  v64 = 0x281571000uLL;
  v65 = v131;
  if ((v126 & 1) == 0)
  {
    v66 = qword_281571B90;
    OUTLINED_FUNCTION_1_4(v11 + qword_281571B90, &v136);
    v67 = v11 + v66;
    v68 = v118;
    sub_26969B138(v67, v118, &unk_280322D50, &unk_2698583F0);
    v69 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_54_5(v69, v70);
    if (v71)
    {
      v74 = v117;
      sub_269851CA4();
      v72 = OUTLINED_FUNCTION_27_6();
      OUTLINED_FUNCTION_54_5(v72, v73);
      if (!v71)
      {
        sub_26969B0C0(v68, &unk_280322D50, &unk_2698583F0);
      }
    }

    else
    {
      v74 = v117;
      (*(v124 + 32))(v117, v68, v65);
    }

    sub_269851CE4();
    (*(v124 + 8))(v74, v65);
    OUTLINED_FUNCTION_41_7();
    v64 = 0x281571000;
    if (!(v75 ^ v76 | v71))
    {
      v126 = v50 + 8;
      OUTLINED_FUNCTION_22_25();
      v77();
      v78 = sub_2698548B4();
      v79 = sub_269854F14();
      if (OUTLINED_FUNCTION_19_4(v79))
      {
        v80 = OUTLINED_FUNCTION_30_12();
        v81 = OUTLINED_FUNCTION_4_47(v80, 3.8521e-34);
        *(v81 + 14) = v130;
        OUTLINED_FUNCTION_49_9();
        _os_log_impl(v82, v83, v84, v85, v80, 0x16u);
        v64 = 0x281571000uLL;
        OUTLINED_FUNCTION_10();
      }

      v62 = v126;
      v132(v119, v51);
      *(v11 + 24) = 0;
    }
  }

  if (*(v11 + 24) == 1)
  {
    [v52 unlock];
    v86 = v120;
    OUTLINED_FUNCTION_22_25();
    v87();
    v88 = sub_2698548B4();
    v89 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_4(v89))
    {
      v90 = OUTLINED_FUNCTION_16_2();
      *v90 = 0;
      _os_log_impl(&dword_269684000, v88, v89, "AtomicValue#computeIfAbsent lock released", v90, 2u);
      OUTLINED_FUNCTION_17_28();
    }

    OUTLINED_FUNCTION_48_9();
    v91();
    OUTLINED_FUNCTION_22_25();
    v92();

    v93 = sub_2698548B4();
    v94 = sub_269854F14();

    if (os_log_type_enabled(v93, v94))
    {
      OUTLINED_FUNCTION_27_2();
      v95 = OUTLINED_FUNCTION_15_34();
      v135 = v51;
      v96 = v95;
      v139[0] = v95;
      *v62 = 136315138;
      v138[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322E10, &qword_269858A38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F98, &qword_26986ADC0);
      v97 = sub_269854AE4();
      sub_26974F520(v97, v98, v139);
      OUTLINED_FUNCTION_53_4();

      *(v62 + 4) = v11;
      v11 = v56;
      OUTLINED_FUNCTION_39_9(&dword_269684000, v93, v94, "AtomicValue#computeIfAbsent using pre-computed value for: %s", v115);
      __swift_destroy_boxed_opaque_existential_0(v96);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      v132(v86, v135);
    }

    else
    {

      OUTLINED_FUNCTION_48_9();
      v108();
    }

    v109 = *(*v11 + 112);
    memcpy(v138, (v11 + v109), sizeof(v138));
    memcpy(v137, (v11 + v109), sizeof(v137));
    sub_26969B138(v138, v139, &qword_280322E10, &qword_269858A38);
    sub_2696A3FC0(v137);
    memcpy(v139, v137, 0x68uLL);
    sub_26969B0C0(v139, &qword_280322E10, &qword_269858A38);
  }

  else
  {
    v99 = v121;
    OUTLINED_FUNCTION_22_25();
    v100();

    v101 = sub_2698548B4();
    v102 = sub_269854F14();

    if (os_log_type_enabled(v101, v102))
    {
      OUTLINED_FUNCTION_27_2();
      v126 = v62;
      v103 = OUTLINED_FUNCTION_15_34();
      v135 = v51;
      v104 = v103;
      v139[0] = v103;
      *v62 = 136315138;
      v138[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322E10, &qword_269858A38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F98, &qword_26986ADC0);
      v105 = sub_269854AE4();
      sub_26974F520(v105, v106, v139);
      OUTLINED_FUNCTION_53_4();

      *(v62 + 4) = v11;
      v11 = v99;
      OUTLINED_FUNCTION_39_9(&dword_269684000, v101, v102, "AtomicValue#computeIfAbsent computing value for: %s", v115);
      __swift_destroy_boxed_opaque_existential_0(v104);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      v107 = v65;
      v65 = v131;
      v132(v107, v135);
    }

    else
    {

      OUTLINED_FUNCTION_48_9();
      v110();
    }

    v111 = v122;
    sub_269851D24();
    __swift_storeEnumTagSinglePayload(v111, 0, 1, v65);
    v112 = *(v64 + 2960);
    OUTLINED_FUNCTION_45_7(v11 + v112);
    sub_2696B6234(v111, v11 + v112);
    swift_endAccess();
    v113 = *(v11 + *(*v11 + 120));
    OUTLINED_FUNCTION_51_4();
    v114 = swift_allocObject();
    v114[2] = v11;
    v114[3] = sub_269845AB4;
    v114[4] = v128;

    v113(sub_269845B80, v114);
  }

  OUTLINED_FUNCTION_28_20();
}

void sub_269842F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_18();
  a21 = v24;
  a22 = v25;
  v27 = v26;
  v146 = v28;
  v145 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  v31 = OUTLINED_FUNCTION_8_9(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_24_3();
  v143 = v32;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_15_1(v34);
  v144 = sub_269851D34();
  OUTLINED_FUNCTION_8();
  v138 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_15_1(v37);
  v38 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v40 = v39;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_24_3();
  v142 = v42;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_23_3();
  v141 = v44;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_23_3();
  v140 = v46;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_23_3();
  v139 = v48;
  OUTLINED_FUNCTION_22_0();
  v50 = MEMORY[0x28223BE20](v49);
  v52 = &v135 - v51;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_12_35();
  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_280322708);
  }

  v53 = __swift_project_value_buffer(v38, qword_281571B50);
  v54 = *(v40 + 16);
  v148 = v53;
  v149 = v54;
  (v54)(v22);
  v55 = sub_2698548B4();
  v56 = sub_269854F14();
  v57 = os_log_type_enabled(v55, v56);
  v147 = v27;
  if (v57)
  {
    OUTLINED_FUNCTION_27_2();
    v58 = OUTLINED_FUNCTION_15_34();
    v136 = v38;
    v59 = v58;
    v150[0] = v58;
    *v23 = 136315138;
    v152 = v145;
    v153 = v146 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280326528, &qword_26986ADC8);
    v60 = sub_269854AE4();
    v62 = sub_26974F520(v60, v61, v150);

    *(v23 + 4) = v62;
    OUTLINED_FUNCTION_39_9(&dword_269684000, v55, v56, "AtomicValue#computeIfAbsent startTimeMaxSecondsAgo: %s", v135);
    __swift_destroy_boxed_opaque_existential_0(v59);
    v38 = v136;
    OUTLINED_FUNCTION_10();
    v27 = v147;
    OUTLINED_FUNCTION_10();
  }

  v63 = *(v40 + 8);
  v63(v22, v38);
  v64 = *(v27 + 16);
  [v64 lock];
  v149(v52, v148, v38);
  v65 = sub_2698548B4();
  v66 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_4(v66))
  {
    v67 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_16_6(v67);
    OUTLINED_FUNCTION_49_9();
    _os_log_impl(v68, v69, v70, v71, v27, 2u);
    OUTLINED_FUNCTION_4_16();
  }

  v63(v52, v38);
  v72 = 0x281571000uLL;
  v73 = v147;
  if ((v146 & 1) == 0)
  {
    v74 = qword_281571B90;
    OUTLINED_FUNCTION_1_4(v147 + qword_281571B90, v150);
    OUTLINED_FUNCTION_61_3(v73 + v74, &unk_280322D50, &unk_2698583F0, &a20);
    v75 = OUTLINED_FUNCTION_27_6();
    v76 = v144;
    OUTLINED_FUNCTION_25_22(v75, v77);
    if (v78)
    {
      v82 = v137;
      sub_269851CA4();
      v79 = OUTLINED_FUNCTION_27_6();
      OUTLINED_FUNCTION_25_22(v79, v80);
      v81 = v138;
      if (!v78)
      {
        sub_26969B0C0(v65, &unk_280322D50, &unk_2698583F0);
      }
    }

    else
    {
      v81 = v138;
      v82 = v137;
      (*(v138 + 32))(v137, v65, v76);
    }

    sub_269851CE4();
    (*(v81 + 8))(v82, v76);
    OUTLINED_FUNCTION_41_7();
    v72 = 0x281571000uLL;
    if (!(v83 ^ v84 | v78))
    {
      v149(v139, v148, v38);
      v85 = sub_2698548B4();
      v86 = sub_269854F14();
      if (OUTLINED_FUNCTION_16_30(v86))
      {
        v87 = OUTLINED_FUNCTION_30_12();
        v88 = OUTLINED_FUNCTION_4_47(v87, 3.8521e-34);
        *(v88 + 14) = v145;
        OUTLINED_FUNCTION_8_40();
        _os_log_impl(v89, v90, v91, v92, v93, 0x16u);
        OUTLINED_FUNCTION_4_16();
      }

      v63(v139, v38);
      *(v73 + 24) = 0;
    }
  }

  if (*(v73 + 24) == 1)
  {
    [v64 unlock];
    v94 = v140;
    v149(v140, v148, v38);
    v95 = sub_2698548B4();
    v96 = sub_269854F14();
    if (OUTLINED_FUNCTION_16_30(v96))
    {
      v97 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_16_6(v97);
      OUTLINED_FUNCTION_8_40();
      _os_log_impl(v98, v99, v100, v101, v102, 2u);
      OUTLINED_FUNCTION_4_16();
    }

    v63(v94, v38);
    v103 = v142;
    v149(v142, v148, v38);

    v104 = sub_2698548B4();
    sub_269854F14();

    if (OUTLINED_FUNCTION_55_7())
    {
      OUTLINED_FUNCTION_27_2();
      v105 = OUTLINED_FUNCTION_15_34();
      OUTLINED_FUNCTION_50_8(v105);
      *v73 = 136315138;
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280326530, &qword_26986ADE0);
      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280326538, &qword_26986ADE8);
      v107 = OUTLINED_FUNCTION_60_2(v106);
      sub_26974F520(v107, v108, &v152);
      OUTLINED_FUNCTION_56_7();
      *(v73 + 4) = v94;
      OUTLINED_FUNCTION_13_33();
      _os_log_impl(v109, v110, v111, v112, v113, 0xCu);
      OUTLINED_FUNCTION_11_42();
      v73 = v147;
      OUTLINED_FUNCTION_10();
    }

    v63(v103, v38);
    v152 = *(v73 + *(*v73 + 112));
    sub_2696A5DDC(&v152);
  }

  else
  {
    v114 = v141;
    v149(v141, v148, v38);

    v115 = sub_2698548B4();
    sub_269854F14();

    if (OUTLINED_FUNCTION_55_7())
    {
      OUTLINED_FUNCTION_27_2();
      v116 = OUTLINED_FUNCTION_15_34();
      OUTLINED_FUNCTION_50_8(v116);
      *v73 = 136315138;
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280326530, &qword_26986ADE0);
      v117 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280326538, &qword_26986ADE8);
      v118 = OUTLINED_FUNCTION_60_2(v117);
      sub_26974F520(v118, v119, &v152);
      OUTLINED_FUNCTION_56_7();
      *(v73 + 4) = v64;
      OUTLINED_FUNCTION_13_33();
      _os_log_impl(v120, v121, v122, v123, v124, 0xCu);
      OUTLINED_FUNCTION_11_42();
      v73 = v147;
      OUTLINED_FUNCTION_10();

      v125 = v114;
      v72 = 0x281571000;
    }

    else
    {

      v125 = v114;
    }

    v63(v125, v38);
    v127 = v143;
    v126 = v144;
    sub_269851D24();
    v128 = OUTLINED_FUNCTION_23_22();
    __swift_storeEnumTagSinglePayload(v128, v129, v130, v126);
    v131 = *(v72 + 2960);
    swift_beginAccess();
    sub_2696B6234(v127, v73 + v131);
    swift_endAccess();
    v132 = *(v73 + *(*v73 + 120));
    OUTLINED_FUNCTION_51_4();
    v133 = swift_allocObject();
    v133[2] = v73;
    v133[3] = sub_2696A5DDC;
    v133[4] = 0;

    v134 = OUTLINED_FUNCTION_126();
    v132(v134);
  }

  OUTLINED_FUNCTION_28_20();
}

void sub_2698437DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, const void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_29_18();
  v30 = v29;
  v32 = v31;
  v155 = v33;
  v35 = v34;
  v37 = v36;
  v157 = v38;
  v154 = v39;
  v152 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  v42 = OUTLINED_FUNCTION_8_9(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_15_1(v44);
  v149 = sub_269851D34();
  OUTLINED_FUNCTION_8();
  v141 = v45;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_15_1(v47);
  v48 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v148 = v49;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_12_35();
  v57 = swift_allocObject();
  v147 = v37;
  *(v57 + 16) = v37;
  *(v57 + 24) = v35;
  *(v57 + 32) = v155;
  *(v57 + 40) = v32;
  *(v57 + 48) = v30;
  *(v57 + 56) = a23 & 1;
  *(v57 + 64) = a24;
  *(v57 + 72) = a25;
  memcpy((v57 + 80), a26, 0x68uLL);
  *(v57 + 184) = a27;
  *(v57 + 192) = a28;
  OUTLINED_FUNCTION_23();
  v58 = swift_allocObject();
  *(v58 + 16) = sub_269845BF4;
  *(v58 + 24) = v57;
  v151 = v58;
  v153 = v32;

  v156 = v30;

  sub_2696AA664(a24, a25);
  sub_2696A6DC0(a26, &v161);
  v59 = qword_280322708;

  if (v59 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_280322708);
  }

  __swift_project_value_buffer(v48, qword_281571B50);
  v60 = v148[2];
  (v60)(v28);
  v61 = sub_2698548B4();
  v62 = sub_269854F14();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = OUTLINED_FUNCTION_27_2();
    v64 = OUTLINED_FUNCTION_9_3();
    v159[0] = v64;
    *v63 = 136315138;
    v161 = v152;
    LOBYTE(v162[0]) = v154 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280326528, &qword_26986ADC8);
    v65 = sub_269854AE4();
    v67 = sub_26974F520(v65, v66, v159);

    *(v63 + 4) = v67;
    v68 = v48;
    _os_log_impl(&dword_269684000, v61, v62, "AtomicValue#computeIfAbsent startTimeMaxSecondsAgo: %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {
    v68 = v48;
  }

  v69 = v148[1];
  (v69)(v28, v68);
  v70 = v157;
  v71 = *(v157 + 16);
  [v71 lock];
  OUTLINED_FUNCTION_40_9();
  (v60)();
  v72 = sub_2698548B4();
  v73 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_4(v73))
  {
    v74 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_16_6(v74);
    _os_log_impl(&dword_269684000, v72, v73, "AtomicValue#computeIfAbsent lock acquired", v68, 2u);
    v68 = v48;
    OUTLINED_FUNCTION_10();
  }

  (v69)(v158, v68);
  v75 = v150;
  if ((v154 & 1) == 0)
  {
    v76 = qword_281571B90;
    OUTLINED_FUNCTION_1_4(v157 + qword_281571B90, v159);
    OUTLINED_FUNCTION_61_3(v157 + v76, &unk_280322D50, &unk_2698583F0, &v160);
    v77 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_54_5(v77, v78);
    if (v79)
    {
      v83 = v139;
      sub_269851CA4();
      v80 = OUTLINED_FUNCTION_27_6();
      OUTLINED_FUNCTION_54_5(v80, v81);
      v82 = v141;
      if (!v79)
      {
        sub_26969B0C0(v72, &unk_280322D50, &unk_2698583F0);
      }
    }

    else
    {
      v82 = v141;
      v83 = v139;
      (*(v141 + 32))(v139, v72, v149);
    }

    sub_269851CE4();
    (*(v82 + 8))(v83, v149);
    OUTLINED_FUNCTION_41_7();
    v75 = v150;
    if (!(v84 ^ v85 | v79))
    {
      v86 = OUTLINED_FUNCTION_37_10(v162);
      (v60)(v86);
      v87 = sub_2698548B4();
      v88 = sub_269854F14();
      if (OUTLINED_FUNCTION_19_4(v88))
      {
        v89 = OUTLINED_FUNCTION_30_12();
        *(OUTLINED_FUNCTION_4_47(v89, 3.8521e-34) + 14) = v152;
        OUTLINED_FUNCTION_49_9();
        _os_log_impl(v90, v91, v92, v93, v89, 0x16u);
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_34_15();
      v69();
      *(v157 + 24) = 0;
    }
  }

  if (*(v157 + 24) == 1)
  {
    [v71 unlock];
    OUTLINED_FUNCTION_40_9();
    (v60)();
    v94 = sub_2698548B4();
    v95 = sub_269854F14();
    if (OUTLINED_FUNCTION_16_30(v95))
    {
      v96 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_16_6(v96);
      OUTLINED_FUNCTION_8_40();
      _os_log_impl(v97, v98, v99, v100, v101, 2u);
      OUTLINED_FUNCTION_10();
    }

    OUTLINED_FUNCTION_34_15();
    v69();
    OUTLINED_FUNCTION_40_9();
    (v60)();

    v102 = sub_2698548B4();
    sub_269854F14();

    if (OUTLINED_FUNCTION_55_7())
    {
      OUTLINED_FUNCTION_27_2();
      v70 = OUTLINED_FUNCTION_15_34();
      v161 = v70;
      *v60 = 136315138;
      v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280326530, &qword_26986ADE0);
      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280326538, &qword_26986ADE8);
      v104 = OUTLINED_FUNCTION_59_5(v103);
      sub_26974F520(v104, v105, &v161);
      OUTLINED_FUNCTION_56_7();
      *(v60 + 4) = v75;
      OUTLINED_FUNCTION_13_33();
      _os_log_impl(v106, v107, v108, v109, v110, 0xCu);
      OUTLINED_FUNCTION_11_42();
      OUTLINED_FUNCTION_10();
    }

    OUTLINED_FUNCTION_34_15();
    v69();
    OUTLINED_FUNCTION_7_49();
    v120 = *(v157 + *(*v157 + 112));
    v121 = OUTLINED_FUNCTION_37_10(v163);
    (v60)(v121);

    sub_2696AA664(a24, a25);
    sub_2696A6DC0(v70, &v161);

    v122 = sub_2698548B4();
    v123 = sub_269854F44();
    if (OUTLINED_FUNCTION_16_30(v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 67109120;
      v124[1] = v120 != 0;

      OUTLINED_FUNCTION_13_33();
      _os_log_impl(v125, v126, v127, v128, v129, 8u);
      v60 = v153;
      OUTLINED_FUNCTION_10();
    }

    else
    {
    }

    OUTLINED_FUNCTION_34_15();
    v69();
    v137 = a25;
    v138 = a24;
    HIDWORD(v146) = a23 & 1;
    sub_2696B19C8(v120, v147, v75, v155, v60, v156, a23 & 1, a24, a25, v70, a27, a28, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);

    sub_2696AC148(a24, a25);
    sub_2696A8048(v70);
  }

  else
  {
    OUTLINED_FUNCTION_40_9();
    (v60)();

    v111 = sub_2698548B4();
    sub_269854F14();

    if (OUTLINED_FUNCTION_55_7())
    {
      OUTLINED_FUNCTION_27_2();
      v70 = OUTLINED_FUNCTION_15_34();
      v161 = v70;
      *v60 = 136315138;
      v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280326530, &qword_26986ADE0);
      v112 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280326538, &qword_26986ADE8);
      v113 = OUTLINED_FUNCTION_59_5(v112);
      sub_26974F520(v113, v114, &v161);
      OUTLINED_FUNCTION_56_7();
      *(v60 + 4) = v144;
      OUTLINED_FUNCTION_13_33();
      _os_log_impl(v115, v116, v117, v118, v119, 0xCu);
      OUTLINED_FUNCTION_11_42();
      OUTLINED_FUNCTION_10();
    }

    OUTLINED_FUNCTION_34_15();
    v69();
    OUTLINED_FUNCTION_7_49();
    sub_269851D24();
    v130 = OUTLINED_FUNCTION_23_22();
    __swift_storeEnumTagSinglePayload(v130, v131, v132, v149);
    v133 = qword_281571B90;
    OUTLINED_FUNCTION_45_7(v157 + qword_281571B90);
    sub_2696B6234(v145, v157 + v133);
    swift_endAccess();
    v134 = *(v157 + *(*v157 + 120));
    OUTLINED_FUNCTION_51_4();
    v135 = swift_allocObject();
    v135[2] = v157;
    v135[3] = sub_269845C38;
    v135[4] = v151;

    v136 = OUTLINED_FUNCTION_126();
    v134(v136);

    v137 = a25;
    v138 = a24;
  }

  sub_2696AC148(v138, v137);
  sub_2696A8048(v70);

  OUTLINED_FUNCTION_28_20();
}

void sub_269844528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_29_18();
  a21 = v27;
  a22 = v28;
  v30 = v29;
  v168 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v171 = v38;
  v167 = v39;
  v166 = v40;
  v41 = a25;
  v42 = a26;
  v43 = a23;
  v172 = a24;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  v45 = OUTLINED_FUNCTION_8_9(v44);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_15_1(v47);
  v162 = sub_269851D34();
  OUTLINED_FUNCTION_8();
  v159 = v48;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_15_1(v50);
  v51 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v160 = v52;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_12_35();
  v59 = swift_allocObject();
  memcpy((v59 + 16), v37, 0x68uLL);
  v158 = v35;
  *(v59 + 120) = v35;
  *(v59 + 128) = v33;
  *(v59 + 136) = v168;
  *(v59 + 144) = v30;
  *(v59 + 152) = v43;
  v60 = v172 & 1;
  *(v59 + 160) = v60;
  v157 = v41;
  *(v59 + 168) = v41;
  *(v59 + 176) = v42;
  v163 = v59;
  v164 = v37;
  sub_2696A6DC0(v37, &v176);
  v61 = qword_280322708;
  v165 = v33;

  if (v61 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_280322708);
  }

  v173 = __swift_project_value_buffer(v51, qword_281571B50);
  v169 = *(v160 + 16);
  v169(v26);
  v62 = sub_2698548B4();
  v63 = sub_269854F14();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = OUTLINED_FUNCTION_27_2();
    v174[0] = OUTLINED_FUNCTION_9_3();
    *v64 = 136315138;
    v176 = v166;
    LOBYTE(v177) = v167 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280326528, &qword_26986ADC8);
    v65 = sub_269854AE4();
    v148 = v51;
    v67 = sub_26974F520(v65, v66, v174);

    *(v64 + 4) = v67;
    _os_log_impl(&dword_269684000, v62, v63, "AtomicValue#computeIfAbsent startTimeMaxSecondsAgo: %s", v64, 0xCu);
    OUTLINED_FUNCTION_11_42();
    OUTLINED_FUNCTION_4_16();

    v68 = *(v160 + 8);
    v69 = v51;
    (v68)(v26, v51);
  }

  else
  {

    v68 = *(v160 + 8);
    (v68)(v26, v51);
    v69 = v51;
  }

  v70 = v171;
  v161 = *(v171 + 16);
  [v161 lock];
  v71 = OUTLINED_FUNCTION_21_25(&a9);
  v72 = v169;
  v169(v71);
  v73 = v62;
  v74 = sub_2698548B4();
  v75 = sub_269854F14();
  if (OUTLINED_FUNCTION_17_2(v75))
  {
    *OUTLINED_FUNCTION_16_2() = 0;
    OUTLINED_FUNCTION_7_5();
    _os_log_impl(v76, v77, v78, v79, v80, 2u);
    v72 = v169;
    OUTLINED_FUNCTION_10();
  }

  (v68)(v62, v69);
  if ((v167 & 1) == 0)
  {
    v62 = v68;
    v81 = v60;
    v82 = qword_281571B90;
    OUTLINED_FUNCTION_1_4(v171 + qword_281571B90, v174);
    OUTLINED_FUNCTION_61_3(v171 + v82, &unk_280322D50, &unk_2698583F0, &v178);
    v83 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_25_22(v83, v84);
    if (v85)
    {
      v88 = v150;
      sub_269851CA4();
      v86 = OUTLINED_FUNCTION_27_6();
      OUTLINED_FUNCTION_25_22(v86, v87);
      if (!v85)
      {
        sub_26969B0C0(v73, &unk_280322D50, &unk_2698583F0);
      }
    }

    else
    {
      v88 = v150;
      (*(v159 + 32))(v150, v73, v162);
    }

    sub_269851CE4();
    (*(v159 + 8))(v88, v162);
    OUTLINED_FUNCTION_41_7();
    v60 = v81;
    if (!(v89 ^ v90 | v85))
    {
      v91 = OUTLINED_FUNCTION_37_10(&v179);
      v72(v91);
      v92 = sub_2698548B4();
      v93 = sub_269854F14();
      if (OUTLINED_FUNCTION_17_2(v93))
      {
        v94 = OUTLINED_FUNCTION_30_12();
        *(OUTLINED_FUNCTION_4_47(v94, 3.8521e-34) + 14) = v166;
        OUTLINED_FUNCTION_10_12();
        _os_log_impl(v95, v96, v97, v98, v99, 0x16u);
        v72 = v169;
        OUTLINED_FUNCTION_10();
      }

      (v68)(v152, v69);
      *(v171 + 24) = 0;
    }
  }

  if (*(v171 + 24) == 1)
  {
    v170 = v60;
    [v161 unlock];
    v100 = OUTLINED_FUNCTION_21_25(&v180);
    v72(v100);
    v101 = sub_2698548B4();
    v102 = sub_269854F14();
    if (OUTLINED_FUNCTION_17_2(v102))
    {
      *OUTLINED_FUNCTION_16_2() = 0;
      OUTLINED_FUNCTION_10_12();
      _os_log_impl(v103, v104, v105, v106, v107, 2u);
      OUTLINED_FUNCTION_10();
    }

    (v68)(v62, v69);
    v108 = OUTLINED_FUNCTION_21_25(v181);
    v72(v108);

    v109 = sub_2698548B4();
    sub_269854F14();
    OUTLINED_FUNCTION_58_3();
    if (OUTLINED_FUNCTION_7_46())
    {
      v110 = OUTLINED_FUNCTION_27_2();
      v111 = v69;
      v69 = OUTLINED_FUNCTION_9_3();
      v176 = v69;
      *v110 = 136315138;
      v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322FA0, &unk_26986ADD0);
      v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322FA8, &qword_269858E18);
      v113 = OUTLINED_FUNCTION_59_5(v112);
      v114 = v62;
      v62 = v115;
      v70 = sub_26974F520(v113, v115, &v176);

      *(v110 + 4) = v70;
      OUTLINED_FUNCTION_10_12();
      _os_log_impl(v116, v117, v118, v119, v120, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v69);
      OUTLINED_FUNCTION_17_28();
      OUTLINED_FUNCTION_10();

      v121 = v114;
      v122 = v111;
    }

    else
    {

      v121 = v62;
      v122 = v69;
    }

    (v68)(v121, v122);
    OUTLINED_FUNCTION_31_18();
    v138 = (v171 + *(*v171 + 112));
    v140 = v138[1];
    v176 = *v138;
    v139 = v176;
    v177 = v140;
    sub_2696AA664(v176, v140);
    sub_2696B1508(&v176, v164, v158, v165, v168, v69, v62, v170, v157, v70, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v161);
    sub_2696AC148(v139, v140);

    sub_2696A8048(v164);
  }

  else
  {
    (v72)(v154, v173, v69);

    v123 = sub_2698548B4();
    sub_269854F14();
    OUTLINED_FUNCTION_58_3();
    if (OUTLINED_FUNCTION_7_46())
    {
      v124 = OUTLINED_FUNCTION_27_2();
      v125 = v69;
      v126 = OUTLINED_FUNCTION_9_3();
      v176 = v126;
      *v124 = 136315138;
      v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322FA0, &unk_26986ADD0);
      v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322FA8, &qword_269858E18);
      v128 = OUTLINED_FUNCTION_59_5(v127);
      v130 = sub_26974F520(v128, v129, &v176);

      *(v124 + 4) = v130;
      OUTLINED_FUNCTION_10_12();
      _os_log_impl(v131, v132, v133, v134, v135, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v126);
      OUTLINED_FUNCTION_17_28();
      OUTLINED_FUNCTION_10();

      v136 = v154;
      v137 = v125;
    }

    else
    {

      v136 = v154;
      v137 = v69;
    }

    (v68)(v136, v137);
    OUTLINED_FUNCTION_31_18();
    sub_269851D24();
    v141 = OUTLINED_FUNCTION_23_22();
    __swift_storeEnumTagSinglePayload(v141, v142, v143, v162);
    v144 = qword_281571B90;
    OUTLINED_FUNCTION_45_7(v171 + qword_281571B90);
    sub_2696B6234(v156, v171 + v144);
    swift_endAccess();
    v145 = *(v171 + *(*v171 + 120));
    OUTLINED_FUNCTION_51_4();
    v146 = swift_allocObject();
    v146[2] = v171;
    v146[3] = sub_269845B8C;
    v146[4] = v163;

    v147 = OUTLINED_FUNCTION_126();
    v145(v147);

    sub_2696A8048(v37);
  }

  OUTLINED_FUNCTION_28_20();
}

uint64_t sub_269845068(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *))
{
  v6 = sub_2698548D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 24) = 1;
  v10 = *(*a2 + 112);
  *(a2 + v10) = a1;

  v11 = *(a2 + 16);

  [v11 unlock];
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, qword_281571B50);
  (*(v7 + 16))(v9, v12, v6);
  v13 = sub_2698548B4();
  v14 = sub_269854F14();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_269684000, v13, v14, "AtomicValue#computeIfAbsent lock released", v15, 2u);
    MEMORY[0x26D647170](v15, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v18 = *(a2 + v10);

  a3(&v18);
}

uint64_t sub_269845284(const void *a1, uint64_t a2, void (*a3)(_BYTE *), uint64_t a4)
{
  v17[1] = a4;
  v18 = a3;
  v6 = sub_2698548D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 24) = 1;
  v10 = *(*a2 + 112);
  memcpy(__dst, (a2 + v10), 0x68uLL);
  memcpy((a2 + v10), a1, 0x68uLL);
  sub_26969B0C0(__dst, &qword_280322E10, &qword_269858A38);
  v11 = *(a2 + 16);
  sub_26969B138(a1, v21, &qword_280322E10, &qword_269858A38);
  [v11 unlock];
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, qword_281571B50);
  (*(v7 + 16))(v9, v12, v6);
  v13 = sub_2698548B4();
  v14 = sub_269854F14();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_269684000, v13, v14, "AtomicValue#computeIfAbsent lock released", v15, 2u);
    MEMORY[0x26D647170](v15, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  memcpy(v20, (a2 + v10), sizeof(v20));
  memcpy(v19, (a2 + v10), sizeof(v19));
  sub_26969B138(v20, v21, &qword_280322E10, &qword_269858A38);
  v18(v19);
  memcpy(v21, v19, sizeof(v21));
  return sub_26969B0C0(v21, &qword_280322E10, &qword_269858A38);
}

uint64_t sub_26984552C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *))
{
  v6 = sub_2698548D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 24) = 1;
  v10 = *(*a2 + 112);
  *(a2 + v10) = a1;

  v11 = *(a2 + 16);

  [v11 unlock];
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, qword_281571B50);
  (*(v7 + 16))(v9, v12, v6);
  v13 = sub_2698548B4();
  v14 = sub_269854F14();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_269684000, v13, v14, "AtomicValue#computeIfAbsent lock released", v15, 2u);
    MEMORY[0x26D647170](v15, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v18 = *(a2 + v10);

  a3(&v18);
}

uint64_t sub_269845748(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  v8 = sub_2698548D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a3 + 24) = 1;
  v12 = (a3 + *(*a3 + 112));
  v13 = *v12;
  v14 = v12[1];
  *v12 = a1;
  v12[1] = a2;
  sub_2696AC148(v13, v14);
  v15 = *(a3 + 16);
  sub_2696AA664(a1, a2);
  [v15 unlock];
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, qword_281571B50);
  (*(v9 + 16))(v11, v16, v8);
  v17 = sub_2698548B4();
  v18 = sub_269854F14();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_269684000, v17, v18, "AtomicValue#computeIfAbsent lock released", v19, 2u);
    MEMORY[0x26D647170](v19, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v21 = v12[1];
  v23[0] = *v12;
  v20 = v23[0];
  v23[1] = v21;
  sub_2696AA664(v23[0], v21);
  a4(v23);
  return sub_2696AC148(v20, v21);
}

id *sub_269845978()
{
  sub_26969B0C0(v0 + qword_281571B90, &unk_280322D50, &unk_2698583F0);
  v1 = *(*v0 + 14);
  sub_2698550A4();
  OUTLINED_FUNCTION_4_3();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_269845A44()
{
  sub_269845978();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_269845AE4(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t OUTLINED_FUNCTION_4_47(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v2;
  *(result + 12) = 2048;
  return result;
}

void OUTLINED_FUNCTION_11_42()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x26D647170);
}

uint64_t OUTLINED_FUNCTION_15_34()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_16_30(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_17_28()
{

  JUMPOUT(0x26D647170);
}

void OUTLINED_FUNCTION_39_9(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_45_7(uint64_t a1)
{

  return swift_beginAccess();
}

BOOL OUTLINED_FUNCTION_55_7()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_56_7()
{
}

uint64_t OUTLINED_FUNCTION_58_3()
{
}

uint64_t OUTLINED_FUNCTION_59_5(uint64_t a1)
{

  return sub_269854AE4();
}

uint64_t OUTLINED_FUNCTION_60_2(uint64_t a1)
{

  return sub_269854AE4();
}

uint64_t OUTLINED_FUNCTION_61_3@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *(a4 - 256);

  return sub_26969B138(a1, v5, a2, a3);
}

uint64_t sub_269845F4C()
{
  sub_269841A9C();
  result = sub_269855084();
  qword_281571B70 = result;
  return result;
}

uint64_t sub_26984600C(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = sub_2698548D4();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return sub_2698548E4();
}

uint64_t sub_269846098(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_269854954();
  OUTLINED_FUNCTION_8();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_269854994();
  OUTLINED_FUNCTION_8();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v18[2] = v3;
  v18[3] = a1;
  v18[4] = a2;
  aBlock[4] = sub_269846ADC;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2696A8DD0;
  aBlock[3] = &block_descriptor_28;
  v19 = _Block_copy(aBlock);

  sub_269854974();
  v21[1] = MEMORY[0x277D84F90];
  sub_269694DF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
  sub_269694E4C();
  sub_269855174();
  MEMORY[0x26D645EA0](0, v17, v11, v19);
  _Block_release(v19);
  (*(v8 + 8))(v11, v6);
  (*(v14 + 8))(v17, v12);
}

uint64_t sub_269846304()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_269846394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AtomicGetOnce.RunState(319, *(a1 + 80), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_269846454()
{
  v1 = *v0;

  v2 = *(*v0 + 96);
  v5 = type metadata accessor for AtomicGetOnce.RunState(0, *(v1 + 80), v3, v4);
  (*(*(v5 - 8) + 8))(v0 + v2, v5);

  return v0;
}

uint64_t sub_269846520()
{
  sub_269846454();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2698465B0(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_26984660C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 2;
  v7 = *(*(v4 - 8) + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
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

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 > v6)
  {
    v12 = 8 * v7;
    if (v7 <= 3)
    {
      v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v14))
      {
        v13 = *(a1 + v7);
        if (!v13)
        {
          goto LABEL_30;
        }

        goto LABEL_22;
      }

      if (v14 > 0xFF)
      {
        v13 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_30;
        }

        goto LABEL_22;
      }

      if (v14 < 2)
      {
LABEL_30:
        if (!v6)
        {
          return 0;
        }

        goto LABEL_31;
      }
    }

    v13 = *(a1 + v7);
    if (!*(a1 + v7))
    {
      goto LABEL_30;
    }

LABEL_22:
    v15 = (v13 - 1) << v12;
    if (v7 > 3)
    {
      v15 = 0;
    }

    if (v7)
    {
      if (v7 > 3)
      {
        LODWORD(v7) = 4;
      }

      switch(v7)
      {
        case 2:
          LODWORD(v7) = *a1;
          break;
        case 3:
          LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
          break;
        case 4:
          LODWORD(v7) = *a1;
          break;
        default:
          LODWORD(v7) = *a1;
          break;
      }
    }

    return v6 + (v7 | v15) + 1;
  }

LABEL_31:
  if (!v5)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  v17 = EnumTagSinglePayload >= 2;
  result = EnumTagSinglePayload - 2;
  if (result == 0 || !v17)
  {
    return 0;
  }

  return result;
}

void sub_2698467D4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = v8;
  if (v7 <= 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v7 - 2;
  }

  if (v7 <= 1)
  {
    if (v8 <= 3)
    {
      v13 = (~(-1 << v9) - v7 + 2) >> v9;
      if (v13 > 0xFFFE)
      {
        v12 = 4;
      }

      else
      {
        v14 = 1;
        if (v13 >= 0xFF)
        {
          v14 = 2;
        }

        if (v13)
        {
          v12 = v14;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }

    v10 = v12 + v8;
  }

  v15 = 8 * v10;
  v16 = a3 >= v11;
  v17 = a3 - v11;
  if (v17 != 0 && v16)
  {
    if (v10 <= 3)
    {
      v21 = ((v17 + ~(-1 << v15)) >> v15) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v11 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_38;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_38;
        }

        break;
      case 3:
LABEL_64:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_37;
      default:
LABEL_37:
        if (a2)
        {
LABEL_38:
          if (a2 + 2 <= v7)
          {
            v28 = a2 + 2;

            __swift_storeEnumTagSinglePayload(a1, v28, v7, v6);
          }

          else
          {
            v24 = -1 << v9;
            if (v8 <= 3)
            {
              v25 = ~v24;
            }

            else
            {
              v25 = -1;
            }

            if (v8)
            {
              v26 = v25 & (a2 - v7 + 1);
              if (v8 <= 3)
              {
                v27 = v8;
              }

              else
              {
                v27 = 4;
              }

              bzero(a1, v8);
              switch(v27)
              {
                case 2:
                  *a1 = v26;
                  break;
                case 3:
                  *a1 = v26;
                  a1[2] = BYTE2(v26);
                  break;
                case 4:
                  *a1 = v26;
                  break;
                default:
                  *a1 = v26;
                  break;
              }
            }
          }
        }

        break;
    }
  }

  else
  {
    v19 = ~v11 + a2;
    if (v10 < 4)
    {
      v20 = (v19 >> v15) + 1;
      if (v10)
      {
        v23 = v19 & ~(-1 << v15);
        bzero(a1, v10);
        if (v10 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v10 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v10] = v20;
        break;
      case 2:
        *&a1[v10] = v20;
        break;
      case 3:
        goto LABEL_64;
      case 4:
        *&a1[v10] = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_269846ADC()
{
  v1 = *(v0 + 16);
  if ((*(v1 + 16) & 1) == 0)
  {
    result = (*(v0 + 24))();
    *(v1 + 16) = 1;
  }

  return result;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_269846B34()
{
  v0 = sub_2698548D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_269854854();
  __swift_allocate_value_buffer(v4, qword_28033D958);
  __swift_project_value_buffer(v4, qword_28033D958);
  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_281571B38);
  (*(v1 + 16))(v3, v5, v0);
  return sub_269854834();
}

id sub_269846C70()
{
  v1 = [v0 content];

  return v1;
}

void sub_269846CA8(void *a1)
{
  [v1 setContent_];
}

uint64_t PlayVideoContentUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 7) < 0xFFFFFFFFFFFFFFFALL)
  {
    return 0;
  }

  return result;
}

id PlayVideoIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlayVideoIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id PlayVideoIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for PlayVideoIntent();
  v9 = OUTLINED_FUNCTION_0_67(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id PlayVideoIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_269854A64();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id PlayVideoIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_269854A64();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for PlayVideoIntent();
  v12 = OUTLINED_FUNCTION_0_67(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id PlayVideoIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_63(a1, a2);

  v5 = sub_269854A64();

  if (v3)
  {
    v6 = sub_2698549D4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v2) initWithDomain:v4 verb:v5 parametersByName:v6];

  return v7;
}

id PlayVideoIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_63(a1, a2);

  v5 = sub_269854A64();

  if (v3)
  {
    v6 = sub_2698549D4();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for PlayVideoIntent();
  v7 = objc_msgSendSuper2(&v9, sel_initWithDomain_verb_parametersByName_, v4, v5, v6);

  return v7;
}

unint64_t PlayVideoIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result - 100 >= 5)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_269847210@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = PlayVideoIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t PlayVideoIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___PlayVideoIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2698472D4(uint64_t a1)
{
  v3 = OBJC_IVAR___PlayVideoIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *PlayVideoIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___PlayVideoIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id PlayVideoIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PlayVideoIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___PlayVideoIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlayVideoIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id PlayVideoIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PlayVideoIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___PlayVideoIntentResponse_code) = 0;
  v13 = type metadata accessor for PlayVideoIntentResponse();
  v9 = OUTLINED_FUNCTION_0_67(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id PlayVideoIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id PlayVideoIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___PlayVideoIntentResponse_code) = 0;
  v13 = type metadata accessor for PlayVideoIntentResponse();
  v9 = OUTLINED_FUNCTION_0_67(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id PlayVideoIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_2698549D4();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id PlayVideoIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___PlayVideoIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_2698549D4();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for PlayVideoIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_269847838@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = PlayVideoContentUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static PlayVideoContentResolutionResult.unsupported(forReason:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() unsupportedWithReason_];

  return v1;
}

id PlayVideoContentResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2698549D4();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id PlayVideoContentResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2698549D4();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for PlayVideoContentResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_269847ACC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_269847B08()
{
  result = qword_280326648;
  if (!qword_280326648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326648);
  }

  return result;
}

unint64_t sub_269847B60()
{
  result = qword_280326650;
  if (!qword_280326650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326650);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_63(uint64_t a1, uint64_t a2)
{

  return sub_269854A64();
}

id AddToWatchListIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t AddToWatchListContentUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 7) < 0xFFFFFFFFFFFFFFFALL)
  {
    return 0;
  }

  return result;
}

id AddToWatchListIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AddToWatchListIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id AddToWatchListIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AddToWatchListIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for AddToWatchListIntent();
  v9 = OUTLINED_FUNCTION_0_67(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id AddToWatchListIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_269854A64();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id AddToWatchListIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_269854A64();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for AddToWatchListIntent();
  v12 = OUTLINED_FUNCTION_0_67(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id AddToWatchListIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_63(a1, a2);

  v5 = sub_269854A64();

  if (v3)
  {
    v6 = sub_2698549D4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v2) initWithDomain:v4 verb:v5 parametersByName:v6];

  return v7;
}

id AddToWatchListIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_63(a1, a2);

  v5 = sub_269854A64();

  if (v3)
  {
    v6 = sub_2698549D4();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for AddToWatchListIntent();
  v7 = objc_msgSendSuper2(&v9, sel_initWithDomain_verb_parametersByName_, v4, v5, v6);

  return v7;
}

unint64_t AddToWatchListIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result == 100)
  {
    v1 = 100;
  }

  else
  {
    v1 = 0;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_269848180@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = AddToWatchListIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t AddToWatchListIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___AddToWatchListIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_269848244(uint64_t a1)
{
  v3 = OBJC_IVAR___AddToWatchListIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *AddToWatchListIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___AddToWatchListIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id AddToWatchListIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___AddToWatchListIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AddToWatchListIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id AddToWatchListIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___AddToWatchListIntentResponse_code) = 0;
  v13 = type metadata accessor for AddToWatchListIntentResponse();
  v9 = OUTLINED_FUNCTION_0_67(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id AddToWatchListIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id AddToWatchListIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___AddToWatchListIntentResponse_code) = 0;
  v13 = type metadata accessor for AddToWatchListIntentResponse();
  v9 = OUTLINED_FUNCTION_0_67(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id AddToWatchListIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_2698549D4();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id AddToWatchListIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___AddToWatchListIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_2698549D4();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for AddToWatchListIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_269848734@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = AddToWatchListContentUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static AddToWatchListContentResolutionResult.unsupported(forReason:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() unsupportedWithReason_];

  return v1;
}

id AddToWatchListContentResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2698549D4();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id AddToWatchListContentResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2698549D4();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for AddToWatchListContentResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_2698489C8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_269848A04()
{
  result = qword_280326660;
  if (!qword_280326660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326660);
  }

  return result;
}

unint64_t sub_269848A5C()
{
  result = qword_280326668;
  if (!qword_280326668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326668);
  }

  return result;
}

id RemoveFromWatchListIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t RemoveFromWatchListContentUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 7) < 0xFFFFFFFFFFFFFFFALL)
  {
    return 0;
  }

  return result;
}

id RemoveFromWatchListIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RemoveFromWatchListIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id RemoveFromWatchListIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id RemoveFromWatchListIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for RemoveFromWatchListIntent();
  v9 = OUTLINED_FUNCTION_0_67(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id RemoveFromWatchListIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_269854A64();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id RemoveFromWatchListIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_269854A64();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for RemoveFromWatchListIntent();
  v12 = OUTLINED_FUNCTION_0_67(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id RemoveFromWatchListIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_63(a1, a2);

  v5 = sub_269854A64();

  if (v3)
  {
    v6 = sub_2698549D4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v2) initWithDomain:v4 verb:v5 parametersByName:v6];

  return v7;
}

id RemoveFromWatchListIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_63(a1, a2);

  v5 = sub_269854A64();

  if (v3)
  {
    v6 = sub_2698549D4();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for RemoveFromWatchListIntent();
  v7 = objc_msgSendSuper2(&v9, sel_initWithDomain_verb_parametersByName_, v4, v5, v6);

  return v7;
}

unint64_t RemoveFromWatchListIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result == 100)
  {
    v1 = 100;
  }

  else
  {
    v1 = 0;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_269849050@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = RemoveFromWatchListIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t RemoveFromWatchListIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___RemoveFromWatchListIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_269849114(uint64_t a1)
{
  v3 = OBJC_IVAR___RemoveFromWatchListIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *RemoveFromWatchListIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___RemoveFromWatchListIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id RemoveFromWatchListIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___RemoveFromWatchListIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RemoveFromWatchListIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id RemoveFromWatchListIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___RemoveFromWatchListIntentResponse_code) = 0;
  v13 = type metadata accessor for RemoveFromWatchListIntentResponse();
  v9 = OUTLINED_FUNCTION_0_67(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id RemoveFromWatchListIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id RemoveFromWatchListIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___RemoveFromWatchListIntentResponse_code) = 0;
  v13 = type metadata accessor for RemoveFromWatchListIntentResponse();
  v9 = OUTLINED_FUNCTION_0_67(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id RemoveFromWatchListIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_2698549D4();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id RemoveFromWatchListIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___RemoveFromWatchListIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_2698549D4();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for RemoveFromWatchListIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_269849604@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = RemoveFromWatchListContentUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static RemoveFromWatchListContentResolutionResult.unsupported(forReason:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() unsupportedWithReason_];

  return v1;
}

id RemoveFromWatchListContentResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2698549D4();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id RemoveFromWatchListContentResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2698549D4();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for RemoveFromWatchListContentResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_269849898(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2698498D4()
{
  result = qword_280326678;
  if (!qword_280326678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326678);
  }

  return result;
}

unint64_t sub_26984992C()
{
  result = qword_280326680;
  if (!qword_280326680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326680);
  }

  return result;
}

id PlayLiveServiceIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t PlayLiveServiceLiveServiceUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

id PlayLiveServiceIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlayLiveServiceIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id PlayLiveServiceIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PlayLiveServiceIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for PlayLiveServiceIntent();
  v9 = OUTLINED_FUNCTION_0_67(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id PlayLiveServiceIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_269854A64();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id PlayLiveServiceIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_269854A64();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for PlayLiveServiceIntent();
  v12 = OUTLINED_FUNCTION_0_67(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id PlayLiveServiceIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_63(a1, a2);

  v5 = sub_269854A64();

  if (v3)
  {
    v6 = sub_2698549D4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v2) initWithDomain:v4 verb:v5 parametersByName:v6];

  return v7;
}

id PlayLiveServiceIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_63(a1, a2);

  v5 = sub_269854A64();

  if (v3)
  {
    v6 = sub_2698549D4();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for PlayLiveServiceIntent();
  v7 = objc_msgSendSuper2(&v9, sel_initWithDomain_verb_parametersByName_, v4, v5, v6);

  return v7;
}

unint64_t PlayLiveServiceIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_269849F14@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = PlayLiveServiceIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t PlayLiveServiceIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___PlayLiveServiceIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_269849FD8(uint64_t a1)
{
  v3 = OBJC_IVAR___PlayLiveServiceIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *PlayLiveServiceIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___PlayLiveServiceIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id PlayLiveServiceIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___PlayLiveServiceIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlayLiveServiceIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id PlayLiveServiceIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___PlayLiveServiceIntentResponse_code) = 0;
  v13 = type metadata accessor for PlayLiveServiceIntentResponse();
  v9 = OUTLINED_FUNCTION_0_67(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id PlayLiveServiceIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id PlayLiveServiceIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___PlayLiveServiceIntentResponse_code) = 0;
  v13 = type metadata accessor for PlayLiveServiceIntentResponse();
  v9 = OUTLINED_FUNCTION_0_67(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id PlayLiveServiceIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_2698549D4();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id PlayLiveServiceIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___PlayLiveServiceIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_2698549D4();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for PlayLiveServiceIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_26984A4C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = PlayLiveServiceLiveServiceUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static PlayLiveServiceLiveServiceResolutionResult.unsupported(forReason:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() unsupportedWithReason_];

  return v1;
}

id PlayLiveServiceLiveServiceResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2698549D4();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id PlayLiveServiceLiveServiceResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2698549D4();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for PlayLiveServiceLiveServiceResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_26984A758(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_26984A794()
{
  result = qword_280326690;
  if (!qword_280326690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326690);
  }

  return result;
}

unint64_t sub_26984A7EC()
{
  result = qword_280326698;
  if (!qword_280326698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326698);
  }

  return result;
}

id WatchSportsEventIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WatchSportsEventIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WatchSportsEventIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id WatchSportsEventIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id WatchSportsEventIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for WatchSportsEventIntent();
  v9 = OUTLINED_FUNCTION_0_67(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id WatchSportsEventIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_269854A64();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id WatchSportsEventIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_269854A64();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for WatchSportsEventIntent();
  v12 = OUTLINED_FUNCTION_0_67(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id WatchSportsEventIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_63(a1, a2);

  v5 = sub_269854A64();

  if (v3)
  {
    v6 = sub_2698549D4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v2) initWithDomain:v4 verb:v5 parametersByName:v6];

  return v7;
}

id WatchSportsEventIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_63(a1, a2);

  v5 = sub_269854A64();

  if (v3)
  {
    v6 = sub_2698549D4();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for WatchSportsEventIntent();
  v7 = objc_msgSendSuper2(&v9, sel_initWithDomain_verb_parametersByName_, v4, v5, v6);

  return v7;
}

unint64_t WatchSportsEventIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_26984ADB8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = WatchSportsEventIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t WatchSportsEventIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___WatchSportsEventIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26984AE7C(uint64_t a1)
{
  v3 = OBJC_IVAR___WatchSportsEventIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *WatchSportsEventIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___WatchSportsEventIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id WatchSportsEventIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___WatchSportsEventIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WatchSportsEventIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id WatchSportsEventIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___WatchSportsEventIntentResponse_code) = 0;
  v13 = type metadata accessor for WatchSportsEventIntentResponse();
  v9 = OUTLINED_FUNCTION_0_67(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id WatchSportsEventIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id WatchSportsEventIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___WatchSportsEventIntentResponse_code) = 0;
  v13 = type metadata accessor for WatchSportsEventIntentResponse();
  v9 = OUTLINED_FUNCTION_0_67(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id WatchSportsEventIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_2698549D4();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id WatchSportsEventIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___WatchSportsEventIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_2698549D4();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for WatchSportsEventIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_26984B35C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_26984B398()
{
  result = qword_2803266A8;
  if (!qword_2803266A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803266A8);
  }

  return result;
}

unint64_t OrdinalReference.init(rawValue:)(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_26984B418@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = OrdinalReference.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static OrdinalReferenceResolutionResult.success(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];

  return v1;
}

id static OrdinalReferenceResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v1;
}

id OrdinalReferenceResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2698549D4();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id OrdinalReferenceResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2698549D4();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for OrdinalReferenceResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id OrdinalReferenceResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OrdinalReferenceResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_26984B758()
{
  result = qword_2803266B0;
  if (!qword_2803266B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803266B0);
  }

  return result;
}

unint64_t ContentType.init(rawValue:)(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_26984B7D0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ContentType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static ContentTypeResolutionResult.success(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];

  return v1;
}

id static ContentTypeResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v1;
}

id ContentTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2698549D4();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id ContentTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2698549D4();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for ContentTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id ContentTypeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContentTypeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_26984BB10()
{
  result = qword_2803266B8;
  if (!qword_2803266B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803266B8);
  }

  return result;
}

unint64_t PersonRole.init(rawValue:)(unint64_t result)
{
  if (result > 8)
  {
    return 0;
  }

  return result;
}

unint64_t sub_26984BB88@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = PersonRole.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static PersonRoleResolutionResult.success(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];

  return v1;
}

id static PersonRoleResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v1;
}

id PersonRoleResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2698549D4();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id PersonRoleResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2698549D4();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for PersonRoleResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id PersonRoleResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PersonRoleResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_26984BEC8()
{
  result = qword_2803266C0;
  if (!qword_2803266C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803266C0);
  }

  return result;
}

unint64_t ContentSort.init(rawValue:)(unint64_t result)
{
  if (result > 9)
  {
    return 0;
  }

  return result;
}

unint64_t sub_26984BF40@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ContentSort.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static ContentSortResolutionResult.success(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];

  return v1;
}

id static ContentSortResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v1;
}

id ContentSortResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2698549D4();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id ContentSortResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2698549D4();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for ContentSortResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id ContentSortResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContentSortResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_26984C280()
{
  result = qword_2803266C8;
  if (!qword_2803266C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803266C8);
  }

  return result;
}

unint64_t ImageType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_26984C2F8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ImageType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static ImageTypeResolutionResult.success(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];

  return v1;
}

id static ImageTypeResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v1;
}

id ImageTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2698549D4();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id ImageTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2698549D4();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for ImageTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id ImageTypeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImageTypeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_26984C638()
{
  result = qword_2803266D0;
  if (!qword_2803266D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803266D0);
  }

  return result;
}

id static ContentResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___ContentResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id static ContentResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_26984C7F8();

    sub_269855364();
  }

  else
  {

    sub_269855594();
    sub_26984C7F8();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_26984C7F8();
  v2 = sub_269854CA4();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___ContentResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

unint64_t sub_26984C7F8()
{
  result = qword_2803266D8;
  if (!qword_2803266D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803266D8);
  }

  return result;
}

id static ContentResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___ContentResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id Content.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_64();
  if (v2)
  {
    v3 = sub_269854A64();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_269854A64();

  if (v1)
  {
    v5 = sub_269854A64();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id Content.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_64();
  if (v2)
  {
    v3 = sub_269854A64();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_269854A64();

  if (v1)
  {
    v5 = sub_269854A64();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for Content();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id Content.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id Content.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for Content();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id ContentResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2698549D4();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id ContentResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2698549D4();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for ContentResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_26984CFCC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_269855354();
}

id ContentImage.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_64();
  if (v2)
  {
    v3 = sub_269854A64();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_269854A64();

  if (v1)
  {
    v5 = sub_269854A64();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id ContentImage.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_64();
  if (v2)
  {
    v3 = sub_269854A64();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_269854A64();

  if (v1)
  {
    v5 = sub_269854A64();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for ContentImage();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id ContentImage.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ContentImage.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ContentImage();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id static ContentImageResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___ContentImageResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id static ContentImageResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_26984C7F8();

    sub_269855364();
  }

  else
  {

    sub_269855594();
    sub_26984C7F8();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_26984C7F8();
  v2 = sub_269854CA4();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___ContentImageResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id static ContentImageResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___ContentImageResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id ContentImageResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2698549D4();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id ContentImageResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2698549D4();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for ContentImageResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_26984D92C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_69(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_269855354();
}

id ContentSearch.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_64();
  if (v2)
  {
    v3 = sub_269854A64();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_269854A64();

  if (v1)
  {
    v5 = sub_269854A64();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id ContentSearch.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_64();
  if (v2)
  {
    v3 = sub_269854A64();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_269854A64();

  if (v1)
  {
    v5 = sub_269854A64();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for ContentSearch();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id ContentSearch.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ContentSearch.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ContentSearch();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id static ContentSearchResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___ContentSearchResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id static ContentSearchResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_26984C7F8();

    sub_269855364();
  }

  else
  {

    sub_269855594();
    sub_26984C7F8();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_26984C7F8();
  v2 = sub_269854CA4();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___ContentSearchResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id static ContentSearchResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___ContentSearchResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id ContentSearchResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2698549D4();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id ContentSearchResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2698549D4();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for ContentSearchResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_26984E278(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_269855354();
}

id Person.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_64();
  if (v2)
  {
    v3 = sub_269854A64();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_269854A64();

  if (v1)
  {
    v5 = sub_269854A64();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id Person.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_64();
  if (v2)
  {
    v3 = sub_269854A64();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_269854A64();

  if (v1)
  {
    v5 = sub_269854A64();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for Person();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id Person.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id Person.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for Person();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id static PersonResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___PersonResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id static PersonResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_26984C7F8();

    sub_269855364();
  }

  else
  {

    sub_269855594();
    sub_26984C7F8();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_26984C7F8();
  v2 = sub_269854CA4();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___PersonResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id static PersonResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___PersonResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id PersonResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2698549D4();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id PersonResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2698549D4();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for PersonResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_26984EBC4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_71(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_269855354();
}

id SearchAttributes.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_64();
  if (v2)
  {
    v3 = sub_269854A64();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_269854A64();

  if (v1)
  {
    v5 = sub_269854A64();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id SearchAttributes.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_64();
  if (v2)
  {
    v3 = sub_269854A64();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_269854A64();

  if (v1)
  {
    v5 = sub_269854A64();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for SearchAttributes();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id SearchAttributes.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SearchAttributes.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SearchAttributes();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id static SearchAttributesResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___SearchAttributesResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id static SearchAttributesResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_26984C7F8();

    sub_269855364();
  }

  else
  {

    sub_269855594();
    sub_26984C7F8();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_26984C7F8();
  v2 = sub_269854CA4();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___SearchAttributesResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id static SearchAttributesResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___SearchAttributesResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id SearchAttributesResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2698549D4();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id SearchAttributesResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2698549D4();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SearchAttributesResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_26984F510(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_72(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_269855354();
}

id static LiveServiceResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___LiveServiceResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id static LiveServiceResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_26984C7F8();

    sub_269855364();
  }

  else
  {

    sub_269855594();
    sub_26984C7F8();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_26984C7F8();
  v2 = sub_269854CA4();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___LiveServiceResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id static LiveServiceResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___LiveServiceResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id LiveService.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_64();
  if (v2)
  {
    v3 = sub_269854A64();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_269854A64();

  if (v1)
  {
    v5 = sub_269854A64();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id LiveService.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_64();
  if (v2)
  {
    v3 = sub_269854A64();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_269854A64();

  if (v1)
  {
    v5 = sub_269854A64();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for LiveService();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id LiveService.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id LiveService.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LiveService();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id LiveServiceResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2698549D4();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id LiveServiceResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2698549D4();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for LiveServiceResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_26984FE5C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_73(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_269855354();
}

id UtsSearchParam.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_64();
  if (v2)
  {
    v3 = sub_269854A64();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_269854A64();

  if (v1)
  {
    v5 = sub_269854A64();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id UtsSearchParam.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_64();
  if (v2)
  {
    v3 = sub_269854A64();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_269854A64();

  if (v1)
  {
    v5 = sub_269854A64();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for UtsSearchParam();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id UtsSearchParam.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id UtsSearchParam.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for UtsSearchParam();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id static UtsSearchParamResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___UtsSearchParamResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id static UtsSearchParamResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_26984C7F8();

    sub_269855364();
  }

  else
  {

    sub_269855594();
    sub_26984C7F8();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_26984C7F8();
  v2 = sub_269854CA4();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___UtsSearchParamResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id static UtsSearchParamResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___UtsSearchParamResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id UtsSearchParamResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2698549D4();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id UtsSearchParamResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2698549D4();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for UtsSearchParamResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_2698507A8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_269855354();
}

id ResultEntity.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_64();
  if (v2)
  {
    v3 = sub_269854A64();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_269854A64();

  if (v1)
  {
    v5 = sub_269854A64();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id ResultEntity.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_64();
  if (v2)
  {
    v3 = sub_269854A64();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_269854A64();

  if (v1)
  {
    v5 = sub_269854A64();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for ResultEntity();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id ResultEntity.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ResultEntity.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ResultEntity();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id static ResultEntityResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___ResultEntityResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id static ResultEntityResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_26984C7F8();

    sub_269855364();
  }

  else
  {

    sub_269855594();
    sub_26984C7F8();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_26984C7F8();
  v2 = sub_269854CA4();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___ResultEntityResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id static ResultEntityResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___ResultEntityResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id ResultEntityResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2698549D4();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id ResultEntityResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2698549D4();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for ResultEntityResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_2698510F4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}
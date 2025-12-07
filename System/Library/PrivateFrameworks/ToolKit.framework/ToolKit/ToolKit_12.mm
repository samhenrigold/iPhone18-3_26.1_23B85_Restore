void sub_1C8D90894()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_8_19(v2, v3, v4);
  OUTLINED_FUNCTION_23_12();
  v6 = v5;
  sub_1C906474C();
  OUTLINED_FUNCTION_25_9();
  if (v7)
  {
    v8 = 0;
    v9 = 1 << *(v1 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v1 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    if (v11)
    {
      while (1)
      {
        OUTLINED_FUNCTION_22();
LABEL_12:
        v18 = *(*(v1 + 48) + 8 * (v14 | (v8 << 6)));
        sub_1C9064D6C();
        OUTLINED_FUNCTION_51_5();
        if (((-1 << v20) & ~*(v13 + 8 * v19)) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_5_2();
LABEL_22:
        OUTLINED_FUNCTION_2_0();
        *(v13 + v25) |= v26;
        *(*(v6 + 48) + 8 * v27) = v18;
        OUTLINED_FUNCTION_24_12();
        if (!v11)
        {
          goto LABEL_7;
        }
      }

      OUTLINED_FUNCTION_4_0();
      while (1)
      {
        OUTLINED_FUNCTION_26_5();
        if (v24)
        {
          if (v22)
          {
            break;
          }
        }

        if (v21 == v23)
        {
          v21 = 0;
        }

        if (*(v13 + 8 * v21) != -1)
        {
          OUTLINED_FUNCTION_3_5();
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_7:
      v15 = v8;
      while (1)
      {
        v8 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v8 >= v12)
        {
          goto LABEL_24;
        }

        ++v15;
        if (*(v1 + 56 + 8 * v8))
        {
          OUTLINED_FUNCTION_10_6();
          v11 = v17 & v16;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_24:

    *v0 = v6;
    OUTLINED_FUNCTION_163();
  }
}

uint64_t sub_1C8D909E4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1C906204C();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314620, &qword_1C9074818);
  v7 = sub_1C906474C();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_1C8D90F38(&qword_1EDA666F0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        result = sub_1C9063E6C();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1C8D90EC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312DD0, &qword_1C9072940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8D90F38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *OUTLINED_FUNCTION_37_10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return memmove(a1, v2, 8 * a2);
}

void OUTLINED_FUNCTION_56_5(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *v5 = a1;
  *(v5 + 8) = a2;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  v7 = *(a5 + 32);
  *(v5 + 32) = v7;

  sub_1C8D54590(a1, a2, a3, a4, v7);
}

uint64_t OUTLINED_FUNCTION_57_6()
{

  return sub_1C8D07168(v1, v0);
}

uint64_t AssistantEntitySchemaDefinition.init(protobuf:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v4);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  v78 = &v62 - v6;
  v7 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v75 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v77 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F18, &unk_1C9072A20);
  OUTLINED_FUNCTION_9(v11);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v62 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F20, &unk_1C9074D20);
  OUTLINED_FUNCTION_9(v15);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v62 - v17;
  v19 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  v20 = a1;
  v21 = sub_1C8CC0620(a1 + *(v19 + 20), v18, &qword_1EC313F20, &unk_1C9074D20);
  sub_1C8D60A64(v21, v22, v23);
  v24 = v81;
  sub_1C906351C();
  if (v24)
  {
    OUTLINED_FUNCTION_0_36();
    return sub_1C8D919F8(a1, v25);
  }

  else
  {
    v68 = v19;
    v74 = v14;
    v81 = 0;
    v27 = v86;
    v66 = v89;
    v67 = v88;
    v28 = v90;
    v29 = *a1;
    v30 = *(*v20 + 16);
    v31 = MEMORY[0x1E69E7CC0];
    if (v30)
    {
      v62 = v86;
      v63 = v90;
      v64 = v87;
      v65 = v20;
      v82 = MEMORY[0x1E69E7CC0];
      v69 = v30;
      result = sub_1C8D09884(0, v30, 0);
      v32 = 0;
      v33 = v82;
      v34 = v75;
      v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v73 = v29;
      v72 = v29 + v35;
      v37 = v76;
      v36 = v77;
      v38 = v78;
      v71 = a2;
      v70 = v7;
      while (v32 < *(v73 + 16))
      {
        v80 = v33;
        sub_1C8D91994(v72 + *(v34 + 72) * v32, v37);
        sub_1C8D91994(v37, v36);
        v79 = *v36;
        v39 = v7;
        v41 = v36[1];
        v40 = v36[2];
        v42 = v36[3];
        v43 = sub_1C8CC0620(v36 + *(v39 + 24), v38, &qword_1EC312A58, &unk_1C9074CC0);
        sub_1C8D1FD40(v43, v44, v45);

        v46 = v81;
        sub_1C906351C();
        if (v46)
        {

          sub_1C8D919F8(v36, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
          sub_1C8D919F8(v37, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);

          OUTLINED_FUNCTION_0_36();
          sub_1C8D919F8(v65, v52);
        }

        v81 = 0;
        sub_1C8D919F8(v36, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
        result = sub_1C8D919F8(v37, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
        v47 = v91;
        v33 = v80;
        v82 = v80;
        v49 = *(v80 + 16);
        v48 = *(v80 + 24);
        if (v49 >= v48 >> 1)
        {
          result = sub_1C8D09884((v48 > 1), v49 + 1, 1);
          v33 = v82;
        }

        ++v32;
        *(v33 + 16) = v49 + 1;
        v50 = (v33 + 40 * v49);
        v38 = v78;
        v50[4] = v79;
        v50[5] = v41;
        v50[6] = v40;
        v50[7] = v42;
        v50[8] = v47;
        a2 = v71;
        v7 = v70;
        v37 = v76;
        v36 = v77;
        v51 = v74;
        v34 = v75;
        if (v69 == v32)
        {
          v31 = v33;
          v20 = v65;
          v53 = v64;
          v28 = v63;
          v27 = v62;
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
      v53 = v87;
      v51 = v74;
LABEL_13:
      v54 = sub_1C8CC0620(v20 + *(v68 + 24), v51, &qword_1EC313F18, &unk_1C9072A20);
      sub_1C8D60FB8(v54, v55, v56);
      v57 = v81;
      sub_1C906351C();
      if (v57)
      {
        sub_1C8D919F8(v20, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
      }

      else
      {
        result = sub_1C8D919F8(v20, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
        v58 = v82;
        v59 = v83;
        v60 = v85;
        *a2 = v27;
        *(a2 + 8) = v53;
        v61 = v66;
        *(a2 + 16) = v67;
        *(a2 + 32) = v61;
        *(a2 + 48) = v28;
        *(a2 + 56) = v31;
        *(a2 + 64) = v58;
        *(a2 + 72) = v59;
        *(a2 + 80) = v84;
        *(a2 + 96) = v60;
      }
    }
  }

  return result;
}

uint64_t AssistantEntitySchemaDefinition.protobuf(useCase:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v50 = a1;
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F18, &unk_1C9072A20);
  OUTLINED_FUNCTION_9(v3);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F28, &qword_1C9072058);
  OUTLINED_FUNCTION_9(v6);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F20, &unk_1C9074D20);
  OUTLINED_FUNCTION_9(v10);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v40 - v12);
  v14 = *v2;
  v15 = v2[1];
  v48 = *(v2 + 1);
  v16 = v2[4];
  v17 = v2[5];
  v18 = v2[6];
  v49 = v2[7];
  v19 = v2[8];
  v42 = v2[9];
  v43 = v19;
  v20 = v2[10];
  v41 = v2[11];
  v44 = v2[12];
  v45 = v20;
  type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);

  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v9 = v48;
  *(v9 + 2) = v16;
  OUTLINED_FUNCTION_6_10(v9, 0);
  v21 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v22 = *(v21 + 24);
  OUTLINED_FUNCTION_6_10(v13 + v22, 1);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v13 = v14;
  v13[1] = v15;
  sub_1C8D61094(v9, v13 + v22, &qword_1EC313F28, &qword_1C9072058);
  v13[2] = v17;
  v13[3] = v18;
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v21);
  v52 = v50;
  v23 = v53;
  sub_1C8D3FE00(sub_1C8D91A50, v51, v49, v24, v25, v26, v27, v28, v40, v41);
  if (v23)
  {
    return sub_1C8D6102C(v13);
  }

  v31 = v29;
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v32 = v41;

  v33 = v44;

  v34 = v42;

  v35 = v46;
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v35 = v43;
  v35[1] = v34;
  v35[3] = v45;
  v35[4] = v32;
  v35[2] = v33;
  OUTLINED_FUNCTION_6_10(v35, 0);
  v36 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  v37 = *(v36 + 20);
  v38 = v47;
  __swift_storeEnumTagSinglePayload(v47 + v37, 1, 1, v21);
  v39 = *(v36 + 24);
  OUTLINED_FUNCTION_6_10(v38 + v39, 1);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  sub_1C8D61094(v13, v38 + v37, &qword_1EC313F20, &unk_1C9074D20);
  *v38 = v31;
  return sub_1C8D61094(v35, v38 + v39, &qword_1EC313F18, &unk_1C9072A20);
}

void sub_1C8D91910(uint64_t a1, uint64_t a2, void *a3)
{
  EntityPropertyDefinition.protobuf(useCase:)();
  if (v3)
  {
    *a3 = v3;
  }
}

uint64_t sub_1C8D91994(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8D919F8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C8D91A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314688;
  if (!qword_1EC314688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314688);
  }

  return result;
}

uint64_t sub_1C8D91AC8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
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

uint64_t sub_1C8D91B08(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

double sub_1C8D91B68@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1C8D922EC(a1, a3, a4);
  sub_1C9062E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3146A8, &unk_1C9074990);
  v5 = sub_1C8D92340();
  sub_1C8D923A4(v5, v6, v7);
  sub_1C9062E1C();

  *a2 = v10;
  *(a2 + 16) = v11;
  result = *&v12;
  *(a2 + 32) = v12;
  *(a2 + 48) = v13;
  *(a2 + 64) = v9;
  return result;
}

uint64_t sub_1C8D91C48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C90CA3C0 == a2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73657361726870 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8D91D18(char a1)
{
  if (a1)
  {
    return 0x73657361726870;
  }

  else
  {
    return 0xD000000000000010;
  }
}

void *sub_1C8D91D54@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314690, &qword_1C9074988);
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D92104(v5, v6, v7);
  v8 = sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = 0;
  sub_1C8D92158(v8, v9, v10);
  sub_1C9064A6C();
  v33 = v27;
  v34 = v28;
  v11 = v30;
  v35 = v29;
  v12 = v32;
  v17 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3146A8, &unk_1C9074990);
  v36 = 1;
  sub_1C8D921AC();
  sub_1C9064A6C();
  v13 = OUTLINED_FUNCTION_29();
  v14(v13);
  v15 = v26;
  v19[0] = v33;
  v19[1] = v34;
  *&v19[2] = v35;
  *(&v19[2] + 1) = v11;
  *&v19[3] = v17;
  *(&v19[3] + 1) = v12;
  *&v19[4] = v26;
  sub_1C8D92284(v19, v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v20[0] = v33;
  v20[1] = v34;
  v21 = v35;
  v22 = v11;
  v23 = v17;
  v24 = v12;
  v25 = v15;
  sub_1C8D922BC(v20);
  return memcpy(a2, v19, 0x48uLL);
}

uint64_t sub_1C8D91FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D91C48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D92000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D92104(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D9203C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D92104(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void *sub_1C8D92078@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C8D91D54(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x48uLL);
  }

  return result;
}

unint64_t sub_1C8D92104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314698;
  if (!qword_1EC314698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314698);
  }

  return result;
}

unint64_t sub_1C8D92158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3146A0;
  if (!qword_1EC3146A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3146A0);
  }

  return result;
}

unint64_t sub_1C8D921AC()
{
  result = qword_1EC3146B0;
  if (!qword_1EC3146B0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3146A8, &unk_1C9074990);
    sub_1C8D92230(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3146B0);
  }

  return result;
}

unint64_t sub_1C8D92230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3146B8;
  if (!qword_1EC3146B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3146B8);
  }

  return result;
}

unint64_t sub_1C8D922EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3146C0;
  if (!qword_1EC3146C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3146C0);
  }

  return result;
}

unint64_t sub_1C8D92340()
{
  result = qword_1EC3146C8;
  if (!qword_1EC3146C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3146A8, &unk_1C9074990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3146C8);
  }

  return result;
}

unint64_t sub_1C8D923A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3146D0;
  if (!qword_1EC3146D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3146D0);
  }

  return result;
}

uint64_t sub_1C8D923F8@<X0>(uint64_t a1@<X0>, uint64_t a6@<X8>)
{
  v6 = a1;
  v29 = *(a1 + 64);
  v8 = *(v29 + 16);
  if (v8)
  {
    v9 = ( + 72);
    v10 = MEMORY[0x1E69E7CC0];
    v11 = MEMORY[0x1E69E7CC0];
    do
    {
      if (*(v9 - 16))
      {
        v13 = *(v9 - 1);
        v12 = *v9;
        if (*(v9 - 16) == 1)
        {
          swift_bridgeObjectRetain_n();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C8D00CA4();
            v11 = v20;
          }

          v15 = *(v11 + 16);
          v14 = *(v11 + 24);
          v16 = v15 + 1;
          if (v15 >= v14 >> 1)
          {
            OUTLINED_FUNCTION_1_32(v14);
            sub_1C8D00CA4();
            v17 = v21;
            v11 = v21;
          }

          else
          {
            v17 = v11;
          }
        }

        else
        {
          swift_bridgeObjectRetain_n();
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v17 = v10;
          }

          else
          {
            sub_1C8D00CA4();
            v17 = v22;
          }

          v15 = *(v17 + 16);
          v18 = *(v17 + 24);
          v16 = v15 + 1;
          if (v15 >= v18 >> 1)
          {
            OUTLINED_FUNCTION_1_32(v18);
            sub_1C8D00CA4();
            v17 = v23;
            v10 = v23;
          }

          else
          {
            v10 = v17;
          }
        }

        *(v17 + 16) = v16;
        v19 = v17 + 16 * v15;
        *(v19 + 32) = v13;
        *(v19 + 40) = v12;
      }

      v9 += 6;
      --v8;
    }

    while (v8);
    sub_1C8D925B0(&v29);
    v6 = a1;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
    v11 = MEMORY[0x1E69E7CC0];
  }

  v28 = *(v6 + 48);
  v24 = v28;
  sub_1C8D29F88(&v28, v27);
  result = sub_1C8D922BC(v6);
  *a6 = v11;
  *(a6 + 8) = v24;
  *(a6 + 24) = v10;
  return result;
}

uint64_t sub_1C8D925B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3146A8, &unk_1C9074990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for FetchedSampleInvocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8D926F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3146D8;
  if (!qword_1EC3146D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3146D8);
  }

  return result;
}

unint64_t sub_1C8D92750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3146E0;
  if (!qword_1EC3146E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3146E0);
  }

  return result;
}

unint64_t sub_1C8D927A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3146E8;
  if (!qword_1EC3146E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3146E8);
  }

  return result;
}

uint64_t sub_1C8D927FC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ToolKitProtoIndexingLogEntry(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  result = os_variant_has_internal_content();
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    *(&v16 - 2) = a1;
    *(&v16 - 1) = a2;
    sub_1C8D94044(qword_1EDA64C68, type metadata accessor for ToolKitProtoIndexingLogEntry, &protocol conformance descriptor for ToolKitProtoIndexingLogEntry);
    sub_1C9063ACC();
    v12 = [*(v2 + 16) source];
    sub_1C8CE919C(v10, v7);
    v13 = type metadata accessor for IndexingLog.Entry(0);
    v14 = objc_allocWithZone(v13);
    sub_1C8CE919C(v7, v14 + OBJC_IVAR____TtCC7ToolKit11IndexingLog5Entry_protoEntry);
    v17.receiver = v14;
    v17.super_class = v13;
    v15 = objc_msgSendSuper2(&v17, sel_init);
    sub_1C8CE9200(v7);
    [v12 sendEvent_];

    return sub_1C8CE9200(v10);
  }

  return result;
}

uint64_t sub_1C8D929E8(uint64_t a1, double (*a2)(__n128))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  a2(v5);
  v8 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  return sub_1C8D93FDC(v7, a1, &qword_1EC3141D8, &qword_1C909DFF0);
}

uint64_t sub_1C8D92AFC()
{
  sub_1C906359C();
  sub_1C8D94044(&qword_1EDA62BD8, MEMORY[0x1E69E0838], &protocol conformance descriptor for ToolKitIndexingReason);
  sub_1C90636EC();
  type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C8D92C0C()
{
  sub_1C90636AC();
  sub_1C8D94044(&qword_1EDA62BC8, MEMORY[0x1E69E08A0], &protocol conformance descriptor for ToolKitIndexingRequest);
  sub_1C90636EC();
  type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C8D92D18@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141E0, &unk_1C90729F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_1C906200C();
  v9 = v8;
  sub_1C906357C();
  sub_1C8D94044(&qword_1EDA666B8, MEMORY[0x1E69E0830], &protocol conformance descriptor for ToolKitIndexingReason.Changeset);
  sub_1C90636EC();
  v10 = type metadata accessor for ToolKitProtoChangeset(0);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
  v11 = *(type metadata accessor for ToolKitProtoIndexingPolicyResolution(0) + 24);
  __swift_storeEnumTagSinglePayload(a2 + v11, 1, 1, v10);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a2 = v7;
  a2[1] = v9;
  sub_1C8D93FDC(v6, a2 + v11, &qword_1EC3141E0, &unk_1C90729F0);
  a2[2] = a1;
  type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C8D92F14()
{
  type metadata accessor for ToolKitProtoIndexingEvent(0);
  sub_1C8D94044(&qword_1EC3146F0, type metadata accessor for ToolKitProtoIndexingEvent, &protocol conformance descriptor for ToolKitProtoIndexingEvent);
  sub_1C9063ACC();
  type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C8D92FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C906200C();
  v9 = v8;

  *a1 = v7;
  *(a1 + 8) = v9;
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  LOBYTE(v9) = *(a1 + 32);

  sub_1C8D93F28(v11, v10, v9);
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = 0;
  result = sub_1C8CE5490(*(a1 + 40), *(a1 + 48));
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_1C8D930F0()
{
  type metadata accessor for ToolKitProtoIndexingEvent(0);
  sub_1C8D94044(&qword_1EC3146F0, type metadata accessor for ToolKitProtoIndexingEvent, &protocol conformance descriptor for ToolKitProtoIndexingEvent);
  sub_1C9063ACC();
  type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C8D931BC(uint64_t a1)
{
  v2 = sub_1C906200C();
  v4 = v3;

  *a1 = v2;
  *(a1 + 8) = v4;
  v5 = TypeIdentifier.debugDescription.getter();
  v7 = v6;
  sub_1C8D93F28(*(a1 + 16), *(a1 + 24), *(a1 + 32));
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = 1;
  result = sub_1C8CE5490(*(a1 + 40), *(a1 + 48));
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_1C8D93264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[2] = a3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a4;
  v7[6] = a5;
  return sub_1C8D927FC(a6, v7);
}

uint64_t sub_1C8D93298()
{
  type metadata accessor for ToolKitProtoIndexingEvent(0);
  sub_1C8D94044(&qword_1EC3146F0, type metadata accessor for ToolKitProtoIndexingEvent, &protocol conformance descriptor for ToolKitProtoIndexingEvent);
  sub_1C9063ACC();
  type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C8D933B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7)
{
  v13 = sub_1C906200C();
  v15 = v14;

  *a1 = v13;
  *(a1 + 8) = v15;
  v17 = *(a1 + 16);
  v16 = *(a1 + 24);
  LOBYTE(v15) = *(a1 + 32);

  sub_1C8D93F28(v17, v16, v15);
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a7;
  if (a6)
  {
    v18 = a5;
  }

  else
  {
    v18 = 0;
  }

  if (a6)
  {
    v19 = a6;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  v21 = *(a1 + 40);
  v20 = *(a1 + 48);

  result = sub_1C8CE5490(v21, v20);
  *(a1 + 40) = v18;
  *(a1 + 48) = v19;
  return result;
}

uint64_t sub_1C8D934B8()
{
  type metadata accessor for ToolKitProtoIndexingResponse(0);
  sub_1C8D94044(qword_1EDA61708, type metadata accessor for ToolKitProtoIndexingResponse, &protocol conformance descriptor for ToolKitProtoIndexingResponse);
  sub_1C9063ACC();
  type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C8D93584(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C906369C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C906200C();
  v11 = v10;

  *a1 = v9;
  a1[1] = v11;
  (*(v6 + 16))(v8, a3, v5);
  v12 = (*(v6 + 88))(v8, v5);
  v13 = 0;
  if (v12 == *MEMORY[0x1E69E0890])
  {
    goto LABEL_4;
  }

  if (v12 == *MEMORY[0x1E69E0898])
  {
    v13 = 1;
LABEL_4:
    result = sub_1C8D93ECC(a1[2], a1[3]);
    a1[2] = 0;
    a1[3] = v13;
    return result;
  }

  result = sub_1C9064C1C();
  __break(1u);
  return result;
}

uint64_t sub_1C8D9371C()
{
  type metadata accessor for ToolKitProtoIndexingResponse(0);
  sub_1C8D94044(qword_1EDA61708, type metadata accessor for ToolKitProtoIndexingResponse, &protocol conformance descriptor for ToolKitProtoIndexingResponse);
  sub_1C9063ACC();
  type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C8D937E8(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = sub_1C906200C();
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
  v8 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316420, &qword_1C90729E0);
  v9 = sub_1C9063F4C();
  v11 = v10;
  result = sub_1C8D93ECC(a1[2], a1[3]);
  a1[2] = v9;
  a1[3] = v11;
  return result;
}

uint64_t sub_1C8D9395C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  type metadata accessor for ToolKitProtoWALOperationEnd(0);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 20) = a4;
  *(a6 + 24) = BYTE4(a4) & 1;
  *(a6 + 28) = a5;
  *(a6 + 32) = BYTE4(a5) & 1;
  type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  *(a6 + 40) = 0;
  *(a6 + 48) = 0;
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C8D93A7C()
{
  v0 = OUTLINED_FUNCTION_1_33();
  type metadata accessor for ToolKitProtoWALOperationEnd(v0);
  sub_1C8D94044(qword_1EDA617E0, type metadata accessor for ToolKitProtoWALOperationEnd, &protocol conformance descriptor for ToolKitProtoWALOperationEnd);
  OUTLINED_FUNCTION_0_3();
  sub_1C9063ACC();
  type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C8D93B4C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{

  *a1 = a2;
  a1[1] = a3;
  v9 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316420, &qword_1C90729E0);
  v10 = sub_1C9063F4C();
  v12 = v11;

  a1[5] = v10;
  a1[6] = v12;
  return result;
}

uint64_t sub_1C8D93C3C()
{
  v3 = OUTLINED_FUNCTION_1_33();
  v4(v3);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v2 = v1;
  v2[1] = v0;
  type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C8D93D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for ToolKitProtoVacuumOperationEnd(0);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  a3[2] = 0;
  a3[3] = 0;
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C8D93DD4@<X0>(id a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X8>)
{
  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316420, &qword_1C90729E0);
  v8 = sub_1C9063F4C();
  v10 = v9;
  type metadata accessor for ToolKitProtoVacuumOperationEnd(0);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a4 = a2;
  a4[1] = a3;
  a4[2] = v8;
  a4[3] = v10;
  type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C8D93ECC(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_1C8D93EDC(a1, a2);
  }

  return a1;
}

uint64_t sub_1C8D93EDC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1C8D93F28(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return OUTLINED_FUNCTION_265(a1, a2);
  }

  return a1;
}

uint64_t sub_1C8D93FDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C8D94044(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C8D940B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D94240(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D940F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D94240(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t SuggestedPredicate.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3146F8, &qword_1C9074AC0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - v4;
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D94240(v6, v7, v8);
  sub_1C9064E1C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1C8D94240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63580;
  if (!qword_1EDA63580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63580);
  }

  return result;
}

unint64_t sub_1C8D9432C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D9436C(a1, a2, a3);
  a1[1] = v4;
  v7 = sub_1C8D943C0(v4, v5, v6);
  a1[2] = v7;
  v10 = sub_1C8D94414(v7, v8, v9);
  a1[3] = v10;
  result = sub_1C8D94468(v10, v11, v12);
  a1[4] = result;
  return result;
}

unint64_t sub_1C8D9436C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314700;
  if (!qword_1EC314700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314700);
  }

  return result;
}

unint64_t sub_1C8D943C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63560;
  if (!qword_1EDA63560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63560);
  }

  return result;
}

unint64_t sub_1C8D94414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63568;
  if (!qword_1EDA63568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63568);
  }

  return result;
}

unint64_t sub_1C8D94468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314708;
  if (!qword_1EC314708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314708);
  }

  return result;
}

unint64_t sub_1C8D944C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314710;
  if (!qword_1EC314710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314710);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SuggestedPredicate(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C8D94604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63570;
  if (!qword_1EDA63570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63570);
  }

  return result;
}

unint64_t sub_1C8D9465C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63578;
  if (!qword_1EDA63578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63578);
  }

  return result;
}

void ToolKitProtoDisplayRepresentation.init(title:subtitle:altText:image:synonyms:snippetPluginModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_301_0();
  v30 = v8;
  v10 = v9;
  v12 = v11;
  v13 = OUTLINED_FUNCTION_214_1();
  type metadata accessor for ToolKitProtoDisplayRepresentation(v13);
  type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  type metadata accessor for ToolKitProtoPluginModelData(0);
  OUTLINED_FUNCTION_356_0();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v7 = v12;
  v7[1] = v10;
  sub_1C8DB483C();
  sub_1C8DB483C();
  sub_1C8DB483C();
  v7[2] = v30;
  sub_1C8DB483C();
  OUTLINED_FUNCTION_183_0();
}

void ToolKitProtoDisplayRepresentation.Image.Static.Symbol.init(name:tintColorData:configurationData:)()
{
  OUTLINED_FUNCTION_422();
  OUTLINED_FUNCTION_119_3();
  *(v6 + 1) = xmmword_1C9065DB0;
  *(v6 + 2) = xmmword_1C9065DB0;
  type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v6 = v5;
  v6[1] = v4;
  sub_1C8CE7BD0(v6[2], v6[3]);
  v6[2] = v3;
  v6[3] = v2;
  sub_1C8CE7BD0(v6[4], v6[5]);
  v6[4] = v1;
  v6[5] = v0;
  OUTLINED_FUNCTION_421();
}

uint64_t sub_1C8D9496C()
{
  v3 = OUTLINED_FUNCTION_75_1();
  v4(v3);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v2 = v1;
  v2[1] = v0;
  return result;
}

void ToolKitProtoQuery.init(predicate:sort:limit:)()
{
  OUTLINED_FUNCTION_422();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = *v6;
  v8 = type metadata accessor for ToolKitProtoQuery(0);
  type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = &v5[*(v8 + 24)];
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  sub_1C8DB483C();
  *v5 = v7;
  *v13 = v3;
  v13[8] = v1 & 1;
  OUTLINED_FUNCTION_421();
}

void ToolKitProtoTypedValue.CollectionValue.init(type:values:typeInstance:)()
{
  OUTLINED_FUNCTION_422();
  v2 = OUTLINED_FUNCTION_64_1();
  type metadata accessor for ToolKitProtoTypedValue.CollectionValue(v2);
  OUTLINED_FUNCTION_311_0();
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_353_0(v7, v8, v9, v10);
  sub_1C8DB483C();
  *v1 = v0;
  OUTLINED_FUNCTION_364_0();
  OUTLINED_FUNCTION_421();
}

void ToolKitProtoTypedValue.EntityValue.init(type:identifier:properties:displayRepresentation:hydratedAppEntity:siriKitEntity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_299_0();
  v48 = v30;
  v46 = v31;
  v47 = v32;
  OUTLINED_FUNCTION_237_0();
  v34 = v33;
  v35 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  OUTLINED_FUNCTION_107_2();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  v44 = v34 + *(v35 + 32);
  *v44 = xmmword_1C9065DB0;
  v45 = v34 + *(v35 + 36);
  *v45 = xmmword_1C9065DB0;
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  sub_1C8DB483C();
  *v34 = v29;
  v34[1] = v28;
  v34[2] = v27;
  sub_1C8DB483C();
  sub_1C8CE7BD0(*v44, *(v44 + 1));
  *v44 = v46;
  *(v44 + 1) = v47;
  sub_1C8CE7BD0(*v45, *(v45 + 1));
  *v45 = v48;
  *(v45 + 1) = a27;
  OUTLINED_FUNCTION_296_0();
}

void sub_1C8D94EE4()
{
  OUTLINED_FUNCTION_164();
  v4 = v3;
  OUTLINED_FUNCTION_63_4();
  v5(0);
  v4(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_107_2();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_253_0();
  sub_1C8DB483C();
  *v2 = v1;
  v2[1] = v0;
  sub_1C8DB483C();
  OUTLINED_FUNCTION_163();
}

void ToolKitProtoTypedValue.PrimitiveValue.File.init(file:displayRepresentation:url:)()
{
  OUTLINED_FUNCTION_422();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_74_1();
  v7 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(v6);
  OUTLINED_FUNCTION_107_2();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = (v3 + *(v7 + 24));
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v3 = v2;
  v3[1] = v1;
  sub_1C8DB483C();
  *v12 = v0;
  v12[1] = v5;
  OUTLINED_FUNCTION_421();
}

void ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.init(type:identificationHint:displayRepresentation:)()
{
  OUTLINED_FUNCTION_422();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = *v6;
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  OUTLINED_FUNCTION_107_2();
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_353_0(v8, v9, v10, v11);
  *v5 = v7;
  *(v5 + 8) = v3;
  *(v5 + 16) = v1;
  OUTLINED_FUNCTION_364_0();
  OUTLINED_FUNCTION_421();
}

void ToolKitProtoTypedValue.PrimitiveValue.Decimal.Mantissa.init(_0:_1:_2:_3:_4:_5:_6:_7:)()
{
  OUTLINED_FUNCTION_164();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal.Mantissa(0);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v17 = v15;
  v17[1] = v13;
  v17[2] = v11;
  v17[3] = v9;
  v17[4] = v7;
  v17[5] = v5;
  v17[6] = v3;
  v17[7] = v1;
  OUTLINED_FUNCTION_163();
}

void ToolKitProtoTypedValue.PrimitiveValue.Decimal.init(sign:exponent:isCompact:length:mantissa:)()
{
  OUTLINED_FUNCTION_422();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = *v8;
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal.Mantissa(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v7 = v9;
  *(v7 + 4) = v5;
  *(v7 + 8) = v3;
  *(v7 + 12) = v1;
  sub_1C8DB483C();
  OUTLINED_FUNCTION_421();
}

void ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.init(namePrefix:givenName:middleName:familyName:nameSuffix:nickname:phoneticRepresentation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_299_0();
  v42 = v32;
  v40 = v33;
  v41 = v34;
  OUTLINED_FUNCTION_73_1();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents(0);
  v35 = OUTLINED_FUNCTION_251_0();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation(v35);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_345_0();
  *(v31 + 32) = v30;
  *(v31 + 40) = v40;
  *(v31 + 48) = v41;
  *(v31 + 56) = v42;
  *(v31 + 64) = a27;
  *(v31 + 80) = a28;
  *(v31 + 88) = a29;
  sub_1C8DB483C();
  OUTLINED_FUNCTION_296_0();
}

__n128 ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.init(namePrefix:givenName:middleName:familyName:nameSuffix:nickname:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_301_0();
  v35 = v29;
  v31 = v30;
  v33 = v32;
  OUTLINED_FUNCTION_73_1();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation(0);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_345_0();
  *(v28 + 32) = v27;
  *(v28 + 40) = v33;
  *(v28 + 48) = v31;
  *(v28 + 56) = v35;
  *(v28 + 64) = a25;
  *(v28 + 80) = a26;
  *(v28 + 88) = a27;
  OUTLINED_FUNCTION_183_0();
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.Handle.init(value:type:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a3;
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle(0);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *(a6 + 8) = a1;
  *(a6 + 16) = a2;
  *a6 = v11;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.init(person:displayRepresentation:handle:nameComponents:displayName:image:contactIdentifier:customIdentifier:relationship:contactSuggestion:isMe:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, char a18)
{
  *(a9 + 24) = xmmword_1C9065DB0;
  v19 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  OUTLINED_FUNCTION_107_2();
  v20 = OUTLINED_FUNCTION_77_1();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  v24 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle(0);
  OUTLINED_FUNCTION_53_5(v24);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  v29 = a9 + v19[10];
  *v29 = xmmword_1C9065DB0;
  v30 = (a9 + v19[11]);
  v31 = (a9 + v19[12]);
  v32 = v19[14];
  v33 = (a9 + v19[13]);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  sub_1C8CE7BD0(*(a9 + 24), *(a9 + 32));
  *(a9 + 24) = a1;
  *(a9 + 32) = a2;
  sub_1C8DB483C();
  sub_1C8DB483C();
  sub_1C8DB483C();
  *a9 = a6;
  *(a9 + 8) = a7;
  result = sub_1C8CE7BD0(*v29, *(v29 + 8));
  *v29 = a8;
  *(v29 + 8) = a10;
  *v30 = a11;
  v30[1] = a12;
  *v31 = a13;
  v31[1] = a14;
  *v33 = a15;
  v33[1] = a16;
  *(a9 + v32) = a17;
  *(a9 + 16) = a18;
  return result;
}

void ToolKitProtoTypedValue.PrimitiveValue.Placemark.init(placemark:displayRepresentation:type:)()
{
  OUTLINED_FUNCTION_422();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = *v6;
  *(v4 + 8) = xmmword_1C9065DB0;
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(0);
  OUTLINED_FUNCTION_107_2();
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_353_0(v8, v9, v10, v11);
  sub_1C8CE7BD0(*(v5 + 8), *(v5 + 16));
  *(v5 + 8) = v3;
  *(v5 + 16) = v1;
  OUTLINED_FUNCTION_364_0();
  *v5 = v7;
  OUTLINED_FUNCTION_421();
}

void sub_1C8D957E0()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_285_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7(0);
  v0(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v6 = v4;
  v6[1] = v2;
  OUTLINED_FUNCTION_253_0();
  sub_1C8DB483C();
  OUTLINED_FUNCTION_163();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.init(identifier:timeZoneIdentifier:localeIdentifier:firstWeekday:minimumDaysInFirstWeek:)()
{
  OUTLINED_FUNCTION_422();
  OUTLINED_FUNCTION_285_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = *v11;
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v10 = v12;
  *(v10 + 8) = v8;
  *(v10 + 16) = v6;
  *(v10 + 40) = v4;
  *(v10 + 48) = v2;
  *(v10 + 24) = v1;
  *(v10 + 32) = v0;
  OUTLINED_FUNCTION_421();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.init(calendar:timeZoneIdentifier:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, char a32)
{
  v33 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  v36 = OUTLINED_FUNCTION_52_6(a9, v34, v35, v33);
  v37 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v36);
  v38 = (a9 + v37[5]);
  v39 = a9 + v37[6];
  v40 = a9 + v37[7];
  v41 = a9 + v37[8];
  v42 = a9 + v37[9];
  v43 = a9 + v37[10];
  v44 = a9 + v37[11];
  v45 = a9 + v37[12];
  v46 = a9 + v37[13];
  v49 = (a9 + v37[14]);
  v47 = (a9 + v37[15]);
  v51 = (a9 + v37[16]);
  v48 = (a9 + v37[17]);
  v52 = (a9 + v37[18]);
  v50 = (a9 + v37[19]);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  sub_1C8DB483C();
  *v38 = a2;
  v38[1] = a3;
  *v39 = a4;
  *(v39 + 8) = a5 & 1;
  *v40 = a6;
  *(v40 + 8) = a7 & 1;
  *v41 = a8;
  *(v41 + 8) = a10 & 1;
  *v42 = a11;
  *(v42 + 8) = a12 & 1;
  *v43 = a13;
  *(v43 + 8) = a14 & 1;
  *v44 = a15;
  *(v44 + 8) = a16 & 1;
  *v45 = a17;
  *(v45 + 8) = a18 & 1;
  *v46 = a19;
  *(v46 + 8) = a20 & 1;
  *v49 = a21;
  OUTLINED_FUNCTION_266_0(a22);
  *v47 = a23;
  OUTLINED_FUNCTION_266_0(a24);
  *v51 = a25;
  OUTLINED_FUNCTION_266_0(a26);
  *v48 = a27;
  OUTLINED_FUNCTION_266_0(a28);
  *v52 = a29;
  OUTLINED_FUNCTION_266_0(a30);
  *v50 = a31;
  OUTLINED_FUNCTION_266_0(a32);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Measurement.init(unit:value:unitType:)(double a1)
{
  OUTLINED_FUNCTION_223();
  v5 = v4;
  v7 = *v6;
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v5 = v2;
  *(v5 + 8) = v1;
  *(v5 + 16) = a1;
  *(v5 + 24) = v7;
  return result;
}

void ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.init(occurences:date:never:)()
{
  OUTLINED_FUNCTION_422();
  OUTLINED_FUNCTION_292_0();
  v4 = OUTLINED_FUNCTION_79_2();
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd(v4);
  sub_1C906378C();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = *(v5 + 24);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v3 = v2;
  *(v3 + 8) = v1 & 1;
  sub_1C8DB483C();
  *(v3 + v10) = v0;
  OUTLINED_FUNCTION_421();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday.init(recurrenceRuleWeekdayWeekday:recurrenceRuleWeekdayEvery:recurrenceRuleWeekdayNth:)()
{
  OUTLINED_FUNCTION_292_0();
  v4 = v3;
  v6 = *v5;
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday(0);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v4 = v6;
  *(v4 + 1) = v2;
  *(v4 + 8) = v1;
  *(v4 + 16) = v0 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 1) = 2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday(0);
  OUTLINED_FUNCTION_177_2();
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a1 = 0;
  return result;
}

__n128 ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.init(calendar:frequency:interval:end:matchingPolicy:repeatedTimePolicy:months:daysOfTheYear:daysOfTheMonth:weeks:weekdays:hours:minutes:seconds:setPositions:)@<Q0>(char *a2@<X1>, uint64_t a3@<X2>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __n128 a12, uint64_t a13)
{
  v15 = *a2;
  v16 = *a5;
  v17 = *a6;
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(0);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  sub_1C8DB483C();
  *a9 = v15;
  *(a9 + 8) = a3;
  sub_1C8DB483C();
  *(a9 + 16) = v16;
  *(a9 + 17) = v17;
  *(a9 + 24) = a7;
  *(a9 + 32) = a8;
  *(a9 + 40) = a10;
  *(a9 + 56) = a11;
  result = a12;
  *(a9 + 72) = a12;
  *(a9 + 88) = a13;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Duration.init(seconds:attoSeconds:)()
{
  v3 = OUTLINED_FUNCTION_75_1();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Duration(v3);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v2 = v1;
  v2[1] = v0;
  return result;
}

void ToolKitProtoTypedValue.PrimitiveValue.DateInterval.init(start:end:duration:)()
{
  OUTLINED_FUNCTION_164();
  v3 = v2;
  OUTLINED_FUNCTION_65_2();
  v4 = sub_1C906378C();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateInterval(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v4);
  v12 = v1 + *(v8 + 24);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_361_0();
  OUTLINED_FUNCTION_361_0();
  *v12 = v0;
  *(v12 + 8) = v3 & 1;
  OUTLINED_FUNCTION_163();
}

void ToolKitProtoTypedValue.DeferredValue.init(type:expectedTypeInstance:storage:)()
{
  OUTLINED_FUNCTION_422();
  v1 = v0;
  OUTLINED_FUNCTION_144_1();
  v5 = OUTLINED_FUNCTION_52_6(v1, v2, v3, v4);
  type metadata accessor for ToolKitProtoTypedValue.DeferredValue(v5);
  OUTLINED_FUNCTION_311_0();
  OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_119();
  sub_1C8DB483C();
  sub_1C8DB483C();
  sub_1C8DB483C();
  OUTLINED_FUNCTION_421();
}

uint64_t sub_1C8D9628C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OUTLINED_FUNCTION_65_2();
  v10(v9);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v7 = v6;
  v7[1] = v5;
  v7[2] = v4;
  v7[3] = a4;
  return result;
}

uint64_t ToolKitProtoRuntimePlatformVersion.init(major:minor:patch:isWildcard:)@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a5 = a1;
  *(a5 + 4) = a2;
  *(a5 + 8) = a3;
  *(a5 + 12) = a4;
  return result;
}

uint64_t ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt.init(key:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

void ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.init(platform:introducingVersion:deprecatingVersion:obsoletingVersion:)()
{
  OUTLINED_FUNCTION_164();
  v1 = v0;
  v3 = *v2;
  type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  v4 = OUTLINED_FUNCTION_306_0();
  v5 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(v4);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v5);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v5);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v1 = v3;
  sub_1C8DB483C();
  sub_1C8DB483C();
  sub_1C8DB483C();
  OUTLINED_FUNCTION_163();
}

uint64_t ToolKitProtoRuntimeRequirement.FeatureFlag.init(domain:feature:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = OUTLINED_FUNCTION_74_1();
  type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(v11);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v9 = v8;
  *(v9 + 8) = v7;
  *(v9 + 16) = v6;
  *(v9 + 24) = v5;
  *(v9 + 32) = a5;
  return result;
}

uint64_t ToolKitProtoTypeDisplayRepresentation.init(name:numericFormat:synonyms:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = OUTLINED_FUNCTION_74_1();
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(v11);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v9 = v8;
  v9[1] = v7;
  v9[3] = v6;
  v9[4] = v5;
  v9[2] = a5;
  return result;
}

void ToolKitProtoTypeDefinition.Version1.Entity.init(identifier:properties:runtimeRequirements:displayRepresentation:sampleInvocations:systemProtocols:runtimeFlags:coercions:)()
{
  OUTLINED_FUNCTION_259_0();
  v18 = v2;
  v19 = v3;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_237_0();
  v9 = v8;
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  sub_1C8DB483C();
  *v9 = v1;
  v9[1] = v0;
  sub_1C8DB483C();
  v9[2] = v7;
  v9[3] = v5;
  v9[4] = v18;
  v9[5] = v19;
  OUTLINED_FUNCTION_258_0();
}

uint64_t ToolKitProtoCoercionDefinition.init(direction:typeInstance:)@<X0>(char *a1@<X0>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  type metadata accessor for ToolKitProtoCoercionDefinition(0);
  OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_263_0();
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a3 = v4;
  return sub_1C8DB483C();
}

void sub_1C8D968E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_259_0();
  v29 = v28;
  OUTLINED_FUNCTION_63_4();
  v30(0);
  v29(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v27 = v26;
  v27[1] = v25;
  v27[2] = v24;
  v27[3] = v23;
  sub_1C8DB483C();
  OUTLINED_FUNCTION_258_0();
}

void ToolKitProtoTypeDefinition.Version1.Enumeration.init(identifier:cases:runtimeRequirements:displayRepresentation:kind:systemProtocols:)()
{
  OUTLINED_FUNCTION_164();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = *v8;
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  sub_1C8DB483C();
  *v7 = v5;
  *(v7 + 8) = v3;
  sub_1C8DB483C();
  *(v7 + 16) = v9;
  *(v7 + 24) = v1;
  OUTLINED_FUNCTION_163();
}

void sub_1C8D96B2C()
{
  OUTLINED_FUNCTION_422();
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_144_1();
  v6 = OUTLINED_FUNCTION_52_6(v2, v3, v4, v5);
  v1(v6);
  v7 = OUTLINED_FUNCTION_306_0();
  v0(v7);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  sub_1C8DB483C();
  OUTLINED_FUNCTION_253_0();
  sub_1C8DB483C();
  OUTLINED_FUNCTION_421();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.init(comparison:stringSearch:idSearch:all:suggested:sampleInvocations:searchableItem:valid:valueSearch:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a6@<X5>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  type metadata accessor for ToolKitProtoStringSearchPredicate.Template(0);
  v12 = OUTLINED_FUNCTION_77_1();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  type metadata accessor for ToolKitProtoIdSearchPredicate.Template(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  type metadata accessor for ToolKitProtoAllPredicate(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  type metadata accessor for ToolKitProtoSearchableItemPredicate.Template(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  type metadata accessor for ToolKitProtoValidPredicate(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  type metadata accessor for ToolKitProtoValueSearchPredicate.Template(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.PredicateMetadata(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a9 = a1;
  sub_1C8DB483C();
  sub_1C8DB483C();
  sub_1C8DB483C();
  sub_1C8DB483C();
  a9[1] = a6;
  sub_1C8DB483C();
  sub_1C8DB483C();
  sub_1C8DB483C();
  return sub_1C8DB483C();
}

void ToolKitProtoToolInvocation.init(identifier:toolIdentifier:target:parameterValues:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_259_0();
  v13 = v12;
  OUTLINED_FUNCTION_63_4();
  type metadata accessor for ToolKitProtoToolInvocation(0);
  type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  type metadata accessor for ToolKitProtoToolInvocationOptions(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  v11[1] = v10;
  v11[2] = v9;
  v11[3] = v8;
  v11[4] = v7;
  sub_1C8DB483C();
  *v11 = v13;
  sub_1C8DB483C();
  OUTLINED_FUNCTION_258_0();
}

void ToolKitProtoToolInvocationOptions.init(interactionMode:locale:requestIdentifier:interfaceIdiom:shortcutOutput:)()
{
  OUTLINED_FUNCTION_422();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = *v12;
  v15 = *v14;
  *v10 = 5;
  v10[40] = 11;
  type metadata accessor for ToolKitProtoToolInvocationOptions(0);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v11 = v13;
  *(v11 + 1) = v9;
  *(v11 + 2) = v7;
  *(v11 + 3) = v5;
  *(v11 + 4) = v3;
  v11[40] = v15;
  v11[41] = v1;
  OUTLINED_FUNCTION_421();
}

void sub_1C8D97178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_259_0();
  v28 = v27;
  v36 = v29;
  OUTLINED_FUNCTION_63_4();
  v30(0);
  v31 = OUTLINED_FUNCTION_220_0();
  v28(v31);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v26 = v25;
  v26[1] = v24;
  sub_1C8DB483C();
  v26[2] = v23;
  v26[3] = v36;
  OUTLINED_FUNCTION_258_0();
}

uint64_t sub_1C8D97284(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = OUTLINED_FUNCTION_79_2();
  v7 = v6(v5);
  v10 = OUTLINED_FUNCTION_52_6(v3, v8, v9, v7);
  a3(v10);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_253_0();
  return sub_1C8DB483C();
}

uint64_t ToolKitProtoCompoundPredicate.init(operator:operands:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  type metadata accessor for ToolKitProtoCompoundPredicate(0);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a3 = v5;
  *(a3 + 8) = a2;
  return result;
}

uint64_t ToolKitProtoTypeInstance.Optional.init(value:defaultValue:)()
{
  v1 = OUTLINED_FUNCTION_75_1();
  v2 = type metadata accessor for ToolKitProtoTypeInstance(v1);
  v5 = OUTLINED_FUNCTION_52_6(v0, v3, v4, v2);
  type metadata accessor for ToolKitProtoTypeInstance.Optional(v5);
  v6 = OUTLINED_FUNCTION_286_0();
  type metadata accessor for ToolKitProtoTypedValue(v6);
  OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_209();
  sub_1C8DB483C();
  return sub_1C8DB483C();
}

uint64_t sub_1C8D97430@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  a2(0);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a3 = a1;
  return result;
}

void sub_1C8D97584()
{
  OUTLINED_FUNCTION_422();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6(0);
  v7 = OUTLINED_FUNCTION_306_0();
  v1(v7);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_253_0();
  sub_1C8DB483C();
  *v5 = v3;
  OUTLINED_FUNCTION_421();
}

uint64_t ToolKitProtoRestrictionContext.InSet.init(definition:templates:)()
{
  v1 = OUTLINED_FUNCTION_75_1();
  v2 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(v1);
  v5 = OUTLINED_FUNCTION_52_6(v0, v3, v4, v2);
  type metadata accessor for ToolKitProtoRestrictionContext.InSet(v5);
  v6 = OUTLINED_FUNCTION_286_0();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(v6);
  OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_209();
  sub_1C8DB483C();
  return sub_1C8DB483C();
}

void ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery.init(parameterKey:queryIdentifier:actionIdentifier:)()
{
  OUTLINED_FUNCTION_422();
  OUTLINED_FUNCTION_119_3();
  type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v6 = v5;
  v6[1] = v4;
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v1;
  v6[5] = v0;
  OUTLINED_FUNCTION_421();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.init(contentItemClass:propertyName:)()
{
  v3 = OUTLINED_FUNCTION_64_1();
  type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(v3);
  OUTLINED_FUNCTION_311_0();
  type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  result = sub_1C8DB483C();
  *v2 = v1;
  v2[1] = v0;
  return result;
}

uint64_t ToolKitProtoRestrictionContext.InInclusiveRange.init(lowerBound:upperBound:)()
{
  OUTLINED_FUNCTION_292_0();
  v5 = OUTLINED_FUNCTION_79_2();
  type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange(v5);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v4 = v3;
  *(v4 + 8) = v2 & 1;
  *(v4 + 16) = v1;
  *(v4 + 24) = v0 & 1;
  return result;
}

uint64_t ToolKitProtoRestrictionContext.MeasurementExpressibleAs.init(unit:unitAdjustForLocale:supportsNegativeNumbers:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = OUTLINED_FUNCTION_79_2();
  type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs(v9);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *(v5 + 8) = v4;
  *(v5 + 16) = a2;
  *v5 = a3;
  *(v5 + 1) = a4;
  return result;
}

void ToolKitProtoRestrictionContext.TextTypedWith.init(multilineAllowed:smartQuotesEnabled:smartDashesEnabled:keyboardType:autocorrectionType:capitalizationType:)()
{
  OUTLINED_FUNCTION_422();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = *v8;
  v11 = *v10;
  v13 = *v12;
  type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v7 = v5;
  v7[1] = v3;
  v7[2] = v1;
  v7[3] = v9;
  v7[4] = v11;
  v7[5] = v13;
  OUTLINED_FUNCTION_421();
}

void sub_1C8D97B28()
{
  OUTLINED_FUNCTION_422();
  v2 = OUTLINED_FUNCTION_64_1();
  v3(v2);
  OUTLINED_FUNCTION_311_0();
  type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_353_0(v8, v9, v10, v11);
  sub_1C8DB483C();
  *v1 = v0;
  OUTLINED_FUNCTION_364_0();
  OUTLINED_FUNCTION_421();
}

uint64_t sub_1C8D97C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C8DC0F50(a1, a2, a3);

  return MEMORY[0x1EEE15710](a1, a2, v5);
}

uint64_t sub_1C8D97DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C8DC0EFC(a1, a2, a3);

  return MEMORY[0x1EEE15710](a1, a2, v5);
}

uint64_t ToolKitProtoTypeIdentifier.Primitive.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeIdentifier.Primitive.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 47;
  type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  OUTLINED_FUNCTION_210_0();
  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

BOOL static ToolKitProtoTypeIdentifier.ToolKitProtoPrimitiveKind.== infix(_:_:)(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  switch(*a1)
  {
    case 0x17:
      if (v2 == 23)
      {
        goto LABEL_49;
      }

      goto LABEL_51;
    case 0x18:
      if (v2 != 24)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x19:
      if (v2 != 25)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x1A:
      if (v2 != 26)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x1B:
      if (v2 != 27)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x1C:
      if (v2 != 28)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x1D:
      if (v2 != 29)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x1E:
      if (v2 != 30)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x1F:
      if (v2 != 31)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x20:
      if (v2 != 32)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x21:
      if (v2 != 33)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x22:
      if (v2 != 34)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x23:
      if (v2 != 35)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x24:
      if (v2 != 36)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x25:
      if (v2 != 37)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x26:
      if (v2 != 38)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x27:
      if (v2 != 39)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x28:
      if (v2 != 40)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x29:
      if (v2 != 41)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x2A:
      if (v2 != 42)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x2B:
      if (v2 != 43)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x2C:
      if (v2 != 44)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x2D:
      if (v2 != 45)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    case 0x2E:
      if (v2 != 46)
      {
        goto LABEL_51;
      }

LABEL_49:
      result = 1;
      break;
    default:
      if ((v2 - 23) >= 0x18)
      {
        result = *a1 == v2;
      }

      else
      {
LABEL_51:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t ToolKitProtoTypeIdentifier.Custom.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeIdentifier.Custom(v0);
  return OUTLINED_FUNCTION_104();
}

unint64_t ToolKitProtoTypeIdentifier.Builtin.builtinKind.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_1C8D9815C(v2);
}

unint64_t sub_1C8D9815C(unint64_t result)
{
  if (result != 16)
  {
    return sub_1C8D3F120(result);
  }

  return result;
}

unint64_t ToolKitProtoTypeIdentifier.Builtin.builtinKind.setter(unint64_t *a1)
{
  v2 = *a1;
  result = sub_1C8D98198(*v1);
  *v1 = v2;
  return result;
}

unint64_t sub_1C8D98198(unint64_t result)
{
  if (result != 16)
  {
    return sub_1C8D3F130(result);
  }

  return result;
}

uint64_t sub_1C8D981E0()
{
  v0 = OUTLINED_FUNCTION_61_0();
  v1(v0);
  sub_1C90637EC();
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_60_4();

  return v3(v2);
}

uint64_t sub_1C8D98284()
{
  v0 = OUTLINED_FUNCTION_258();
  v1(v0);
  sub_1C90637EC();
  OUTLINED_FUNCTION_24_1();
  v2 = OUTLINED_FUNCTION_168_2();

  return v3(v2);
}

uint64_t ToolKitProtoTypeIdentifier.Builtin.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeIdentifier.Builtin(v0);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoTypeIdentifier.ToolKitProtoBuiltinKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_422();
  OUTLINED_FUNCTION_223();
  v2 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v3 = OUTLINED_FUNCTION_9(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_16_12();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_66();
  v5 = *v1;
  v6 = *v0;
  switch(v5)
  {
    case 0uLL:
      if (v6)
      {
        goto LABEL_35;
      }

      sub_1C8D3F130(0);
      v7 = 0;
      goto LABEL_38;
    case 1uLL:
      if (v6 != 1)
      {
        goto LABEL_35;
      }

      sub_1C8D3F130(1uLL);
      v7 = 1;
      goto LABEL_38;
    case 2uLL:
      if (v6 != 2)
      {
        goto LABEL_35;
      }

      sub_1C8D3F130(2uLL);
      v7 = 2;
      goto LABEL_38;
    case 3uLL:
      if (v6 != 3)
      {
        goto LABEL_35;
      }

      sub_1C8D3F130(3uLL);
      v7 = 3;
      goto LABEL_38;
    case 4uLL:
      if (v6 != 4)
      {
        goto LABEL_35;
      }

      sub_1C8D3F130(4uLL);
      v7 = 4;
      goto LABEL_38;
    case 5uLL:
      if (v6 != 5)
      {
        goto LABEL_35;
      }

      sub_1C8D3F130(5uLL);
      v7 = 5;
      goto LABEL_38;
    case 6uLL:
      if (v6 != 6)
      {
        goto LABEL_35;
      }

      sub_1C8D3F130(6uLL);
      v7 = 6;
      goto LABEL_38;
    case 7uLL:
      if (v6 != 7)
      {
        goto LABEL_35;
      }

      sub_1C8D3F130(7uLL);
      v7 = 7;
      goto LABEL_38;
    case 8uLL:
      if (v6 != 8)
      {
        goto LABEL_35;
      }

      sub_1C8D3F130(8uLL);
      v7 = 8;
      goto LABEL_38;
    case 9uLL:
      if (v6 != 9)
      {
        goto LABEL_35;
      }

      sub_1C8D3F130(9uLL);
      v7 = 9;
      goto LABEL_38;
    case 0xAuLL:
      if (v6 != 10)
      {
        goto LABEL_35;
      }

      sub_1C8D3F130(0xAuLL);
      v7 = 10;
      goto LABEL_38;
    case 0xBuLL:
      if (v6 != 11)
      {
        goto LABEL_35;
      }

      sub_1C8D3F130(0xBuLL);
      v7 = 11;
      goto LABEL_38;
    case 0xCuLL:
      if (v6 != 12)
      {
        goto LABEL_35;
      }

      sub_1C8D3F130(0xCuLL);
      v7 = 12;
      goto LABEL_38;
    case 0xDuLL:
      if (v6 != 13)
      {
        goto LABEL_35;
      }

      sub_1C8D3F130(0xDuLL);
      v7 = 13;
      goto LABEL_38;
    case 0xEuLL:
      if (v6 != 14)
      {
        goto LABEL_35;
      }

      sub_1C8D3F130(0xEuLL);
      v7 = 14;
      goto LABEL_38;
    case 0xFuLL:
      if (v6 != 15)
      {
        goto LABEL_35;
      }

      sub_1C8D3F130(0xFuLL);
      v7 = 15;
      goto LABEL_38;
    default:
      if (v6 >= 0x10)
      {
        swift_projectBox();
        swift_projectBox();
        sub_1C8D990E8();
        sub_1C8D990E8();
        sub_1C8D3F120(v6);
        sub_1C8D3F120(v5);
        v8 = OUTLINED_FUNCTION_112();
        static ToolKitProtoTypeIdentifier.== infix(_:_:)(v8, v9);
        sub_1C8D9913C();
        sub_1C8D9913C();
        sub_1C8D3F130(v5);
        v7 = v6;
LABEL_38:
        sub_1C8D3F130(v7);
      }

      else
      {
LABEL_35:
        sub_1C8D3F120(v6);
        sub_1C8D3F120(v5);
        sub_1C8D3F130(v5);
        sub_1C8D3F130(v6);
      }

      OUTLINED_FUNCTION_421();
      return;
  }
}

uint64_t ToolKitProtoTypeIdentifier.Attributed.sourceContainer.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeIdentifier.Attributed(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeIdentifier.Attributed.attributionContainer.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeIdentifier.Attributed(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeIdentifier.Attributed.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeIdentifier.Attributed(v0);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoTypeIdentifier.Attributed.init()()
{
  v0 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoTypeIdentifier.Attributed(v0);
  v1 = OUTLINED_FUNCTION_231_0();
  v2 = type metadata accessor for ToolKitProtoContainerDefinition(v1);
  v3 = OUTLINED_FUNCTION_77_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  OUTLINED_FUNCTION_115();
  v9 = __swift_storeEnumTagSinglePayload(v6, v7, v8, v2);
  OUTLINED_FUNCTION_289_0(v9);
  OUTLINED_FUNCTION_145_0();
}

void ToolKitProtoTypeIdentifier.Attributed.init(sourceContainer:attributionContainer:typeName:)()
{
  OUTLINED_FUNCTION_164();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_65_2();
  type metadata accessor for ToolKitProtoTypeIdentifier.Attributed(v4);
  v5 = OUTLINED_FUNCTION_306_0();
  v6 = type metadata accessor for ToolKitProtoContainerDefinition(v5);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v6);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_361_0();
  OUTLINED_FUNCTION_361_0();
  *v1 = v0;
  v1[1] = v3;
  OUTLINED_FUNCTION_163();
}

uint64_t ToolKitProtoTypeIdentifier.Codable.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeIdentifier.Codable(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeIdentifier.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeIdentifier(v0);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoTypeIdentifierKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v29 = v1;
  v3 = v2;
  type metadata accessor for ToolKitProtoTypeIdentifier.Codable(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  v27 = v5;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_147();
  v28 = v7;
  v8 = OUTLINED_FUNCTION_111();
  v9 = type metadata accessor for ToolKitProtoTypeIdentifier.Attributed(v8);
  v10 = OUTLINED_FUNCTION_9(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_120_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_156_0();
  v12 = type metadata accessor for ToolKitProtoTypeIdentifier.Builtin(0);
  v13 = OUTLINED_FUNCTION_9(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16_12();
  MEMORY[0x1EEE9AC00](v14);
  type metadata accessor for ToolKitProtoTypeIdentifier.Custom(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25();
  v18 = (v16 - v17);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_233_0();
  v20 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  v21 = OUTLINED_FUNCTION_9(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_228();
  v23 = *v29;
  switch(*v3 >> 61)
  {
    case 1:
      if (v23 >> 61 == 1)
      {
        swift_projectBox();
        swift_projectBox();
        sub_1C8D990E8();
        sub_1C8D990E8();
        v25 = *v0 == *v18 && v0[1] == v18[1];
        if (v25 || (sub_1C9064C2C()) && (v0[2] == v18[2] ? (v26 = v0[3] == v18[3]) : (v26 = 0), v26 || (sub_1C9064C2C()))
        {
          sub_1C90637EC();
          sub_1C8D99190();

          OUTLINED_FUNCTION_253_0();
          sub_1C9063EAC();
        }

        else
        {
        }

        OUTLINED_FUNCTION_199_2();
        sub_1C8D9913C();
        OUTLINED_FUNCTION_365_0();
        goto LABEL_33;
      }

      break;
    case 2:
      if (v23 >> 61 == 2)
      {
        swift_projectBox();
        OUTLINED_FUNCTION_252_0();
        swift_projectBox();
        sub_1C8D990E8();
        OUTLINED_FUNCTION_249();
        sub_1C8D990E8();

        OUTLINED_FUNCTION_181();
        static ToolKitProtoTypeIdentifier.Builtin.== infix(_:_:)();
        sub_1C8D9913C();
        goto LABEL_15;
      }

      break;
    case 3:
      if (v23 >> 61 == 3)
      {
        swift_projectBox();
        OUTLINED_FUNCTION_252_0();
        swift_projectBox();
        sub_1C8D990E8();
        sub_1C8D990E8();

        static ToolKitProtoTypeIdentifier.Attributed.== infix(_:_:)();
        sub_1C8D9913C();
        goto LABEL_15;
      }

      break;
    case 4:
      if (v23 >> 61 == 4)
      {
        swift_projectBox();
        swift_projectBox();
        sub_1C8D990E8();
        sub_1C8D990E8();
        v24 = *v28 == *v27 && v28[1] == v27[1];
        if (v24 || (sub_1C9064C2C() & 1) != 0)
        {
          OUTLINED_FUNCTION_287_0();
          sub_1C8D99190();
          OUTLINED_FUNCTION_252_0();

          OUTLINED_FUNCTION_253_0();
          sub_1C9063EAC();
        }

        else
        {
        }

        OUTLINED_FUNCTION_200_2();
        sub_1C8D9913C();
        OUTLINED_FUNCTION_93();
        sub_1C8D9913C();
        goto LABEL_33;
      }

      break;
    default:
      if (!(v23 >> 61))
      {
        swift_projectBox();
        swift_projectBox();
        sub_1C8D990E8();
        OUTLINED_FUNCTION_93();
        sub_1C8D990E8();

        static ToolKitProtoTypeIdentifier.Primitive.== infix(_:_:)();
        OUTLINED_FUNCTION_203_1();
        sub_1C8D9913C();
LABEL_15:
        sub_1C8D9913C();
LABEL_33:
      }

      break;
  }

  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8D990E8()
{
  OUTLINED_FUNCTION_223();
  v1(0);
  OUTLINED_FUNCTION_24_1();
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);
  return v0;
}

uint64_t sub_1C8D9913C()
{
  v1 = OUTLINED_FUNCTION_258();
  v2(v1);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1C8D99190()
{
  result = qword_1EC312920;
  if (!qword_1EC312920)
  {
    sub_1C90637EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312920);
  }

  return result;
}

uint64_t ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity(v0);
  return OUTLINED_FUNCTION_104();
}

void sub_1C8D9932C()
{
  v0 = OUTLINED_FUNCTION_61_0();
  v1(v0);
  OUTLINED_FUNCTION_210_0();
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_145_0();
}

uint64_t ToolKitProtoSystemTypeProtocol.AssistantSchema.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoSystemTypeProtocol.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoSystemTypeProtocol(v0);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoSystemTypeProtocolKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v4 = v3;
  type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_0();
  v6 = OUTLINED_FUNCTION_111();
  v7 = type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema(v6);
  v8 = OUTLINED_FUNCTION_9(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_7_0();
  v13 = OUTLINED_FUNCTION_111();
  type metadata accessor for ToolKitProtoSystemTypeProtocolKind(v13);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_161_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_160_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_84();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314720, &qword_1C9074DB8);
  OUTLINED_FUNCTION_9(v17);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_142();
  sub_1C8D990E8();
  sub_1C8D990E8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_68_2();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_257_0() != 1)
      {
        goto LABEL_41;
      }

      sub_1C8D99B98();
      static ToolKitProtoSystemTypeProtocol.AssistantSchema.== infix(_:_:)(v1, v11);
      sub_1C8D9913C();
      OUTLINED_FUNCTION_181();
      sub_1C8D9913C();
      OUTLINED_FUNCTION_87_2();
      goto LABEL_52;
    case 2u:
      OUTLINED_FUNCTION_68_2();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_257_0() != 2)
      {
        OUTLINED_FUNCTION_23_13();
        goto LABEL_41;
      }

      sub_1C8D99B98();
      v19 = OUTLINED_FUNCTION_343_0();
      sub_1C8CEB10C(v19, v20);
      if (v21)
      {
        OUTLINED_FUNCTION_287_0();
        v22 = sub_1C8D99190();
        v23 = OUTLINED_FUNCTION_407(v22);
        OUTLINED_FUNCTION_23_13();
        sub_1C8D9913C();
        if (v23)
        {
          OUTLINED_FUNCTION_23_13();
          goto LABEL_50;
        }
      }

      else
      {
        OUTLINED_FUNCTION_23_13();
        sub_1C8D9913C();
      }

      OUTLINED_FUNCTION_23_13();
      goto LABEL_57;
    case 3u:
      if (OUTLINED_FUNCTION_257_0() == 3)
      {
        goto LABEL_51;
      }

      goto LABEL_42;
    case 4u:
      if (OUTLINED_FUNCTION_257_0() == 4)
      {
        goto LABEL_51;
      }

      goto LABEL_42;
    case 5u:
      if (OUTLINED_FUNCTION_257_0() == 5)
      {
        goto LABEL_51;
      }

      goto LABEL_42;
    case 6u:
      if (OUTLINED_FUNCTION_257_0() == 6)
      {
        goto LABEL_51;
      }

      goto LABEL_42;
    case 7u:
      if (OUTLINED_FUNCTION_257_0() == 7)
      {
        goto LABEL_51;
      }

      goto LABEL_42;
    case 8u:
      if (OUTLINED_FUNCTION_257_0() == 8)
      {
        goto LABEL_51;
      }

      goto LABEL_42;
    case 9u:
      if (OUTLINED_FUNCTION_257_0() == 9)
      {
        goto LABEL_51;
      }

      goto LABEL_42;
    case 0xAu:
      if (OUTLINED_FUNCTION_257_0() == 10)
      {
        goto LABEL_51;
      }

      goto LABEL_42;
    case 0xBu:
      if (OUTLINED_FUNCTION_257_0() == 11)
      {
        goto LABEL_51;
      }

      goto LABEL_42;
    case 0xCu:
      if (OUTLINED_FUNCTION_257_0() == 12)
      {
        goto LABEL_51;
      }

      goto LABEL_42;
    case 0xDu:
      if (OUTLINED_FUNCTION_257_0() == 13)
      {
        goto LABEL_51;
      }

      goto LABEL_42;
    case 0xEu:
      if (OUTLINED_FUNCTION_257_0() == 14)
      {
        goto LABEL_51;
      }

      goto LABEL_42;
    case 0xFu:
      if (OUTLINED_FUNCTION_257_0() == 15)
      {
        goto LABEL_51;
      }

      goto LABEL_42;
    case 0x10u:
      if (OUTLINED_FUNCTION_257_0() == 16)
      {
        goto LABEL_51;
      }

      goto LABEL_42;
    case 0x11u:
      if (OUTLINED_FUNCTION_257_0() == 17)
      {
        goto LABEL_51;
      }

      goto LABEL_42;
    default:
      OUTLINED_FUNCTION_68_2();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_257_0())
      {
        OUTLINED_FUNCTION_24_13();
LABEL_41:
        sub_1C8D9913C();
LABEL_42:
        sub_1C8D16D78(v0, &qword_1EC314720, &qword_1C9074DB8);
        goto LABEL_52;
      }

      sub_1C8D99B98();
      OUTLINED_FUNCTION_222_0();
      v26 = v26 && v24 == v25;
      if (!v26 && (sub_1C9064C2C() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_13();
        sub_1C8D9913C();
LABEL_56:
        OUTLINED_FUNCTION_24_13();
LABEL_57:
        sub_1C8D9913C();
        OUTLINED_FUNCTION_87_2();
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_287_0();
      v27 = sub_1C8D99190();
      v30 = OUTLINED_FUNCTION_278_0(v2 + v4, v28, v29, v27);
      OUTLINED_FUNCTION_24_13();
      sub_1C8D9913C();
      if ((v30 & 1) == 0)
      {
        goto LABEL_56;
      }

      OUTLINED_FUNCTION_24_13();
LABEL_50:
      sub_1C8D9913C();
LABEL_51:
      OUTLINED_FUNCTION_87_2();
LABEL_52:
      OUTLINED_FUNCTION_267_0();
      OUTLINED_FUNCTION_163();
      return;
  }
}

uint64_t sub_1C8D99B98()
{
  OUTLINED_FUNCTION_223();
  v1(0);
  OUTLINED_FUNCTION_24_1();
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);
  return v0;
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.identifier.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8D99E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C8DC0EA8(a1, a2, a3);

  return MEMORY[0x1EEE15710](a1, a2, v5);
}

uint64_t sub_1C8D99F20()
{
  v0 = OUTLINED_FUNCTION_32_6();
  v1(v0);
  return OUTLINED_FUNCTION_121_1();
}

uint64_t sub_1C8D99F80()
{
  v0 = OUTLINED_FUNCTION_46_5();
  v1(v0);
  return OUTLINED_FUNCTION_122_2();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.Property.type.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8D9A010()
{
  v0 = OUTLINED_FUNCTION_61_0();
  v1(v0);
  OUTLINED_FUNCTION_304_0();
  sub_1C90637EC();
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_60_4();

  return v3(v2);
}

uint64_t sub_1C8D9A090()
{
  v0 = OUTLINED_FUNCTION_258();
  v1(v0);
  OUTLINED_FUNCTION_304_0();
  sub_1C90637EC();
  OUTLINED_FUNCTION_24_1();
  v2 = OUTLINED_FUNCTION_168_2();

  return v3(v2);
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.Property.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(v1);
  v2 = OUTLINED_FUNCTION_251_0();
  v3 = type metadata accessor for ToolKitProtoTypeIdentifier(v2);
  OUTLINED_FUNCTION_53_5(v3);
  v4 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  OUTLINED_FUNCTION_53_5(v4);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  v6 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = v6;
  v0[2] = v6;
  v0[3] = v6;
  v0[4] = v6;
  v0[5] = v6;
  return result;
}

uint64_t ToolKitProtoTypeDefinition.Version1.Enumeration.identifier.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Enumeration.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8D9A3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C8DC0E54(a1, a2, a3);

  return MEMORY[0x1EEE15710](a1, a2, v5);
}

uint64_t sub_1C8D9A498()
{
  v0 = OUTLINED_FUNCTION_32_6();
  v1(v0);
  return OUTLINED_FUNCTION_121_1();
}

uint64_t sub_1C8D9A4F8()
{
  v0 = OUTLINED_FUNCTION_46_5();
  v1(v0);
  return OUTLINED_FUNCTION_122_2();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Enumeration.Case.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8D9A588()
{
  v0 = OUTLINED_FUNCTION_61_0();
  v1(v0);
  OUTLINED_FUNCTION_220_0();
  sub_1C90637EC();
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_60_4();

  return v3(v2);
}

uint64_t sub_1C8D9A608()
{
  v0 = OUTLINED_FUNCTION_258();
  v1(v0);
  OUTLINED_FUNCTION_220_0();
  sub_1C90637EC();
  OUTLINED_FUNCTION_24_1();
  v2 = OUTLINED_FUNCTION_168_2();

  return v3(v2);
}

uint64_t ToolKitProtoTypeDefinition.Version1.Enumeration.Case.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Enumeration.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Enumeration.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(v1);
  v2 = OUTLINED_FUNCTION_293_0();
  v3 = type metadata accessor for ToolKitProtoTypeIdentifier(v2);
  OUTLINED_FUNCTION_53_5(v3);
  v4 = OUTLINED_FUNCTION_303_0();
  v5 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(v4);
  v6 = OUTLINED_FUNCTION_53_5(v5);
  result = OUTLINED_FUNCTION_362_0(v6);
  v8 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  *(v0 + 8) = v8;
  *(v0 + 16) = 0;
  *(v0 + 24) = v8;
  return result;
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.templates.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.stringSearch.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.idSearch.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8D9A9D8()
{
  v0 = OUTLINED_FUNCTION_32_6();
  v1(v0);
  return OUTLINED_FUNCTION_121_1();
}

uint64_t sub_1C8D9AA38()
{
  v0 = OUTLINED_FUNCTION_46_5();
  v1(v0);
  return OUTLINED_FUNCTION_122_2();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.all.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8D9AAD8()
{
  v0 = OUTLINED_FUNCTION_32_6();
  v1(v0);
  return OUTLINED_FUNCTION_121_1();
}

uint64_t sub_1C8D9AB38()
{
  v0 = OUTLINED_FUNCTION_46_5();
  v1(v0);
  return OUTLINED_FUNCTION_122_2();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.suggested.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8D9ABD8()
{
  v0 = OUTLINED_FUNCTION_32_6();
  v1(v0);
  return OUTLINED_FUNCTION_121_1();
}

uint64_t sub_1C8D9AC38()
{
  v0 = OUTLINED_FUNCTION_46_5();
  v1(v0);
  return OUTLINED_FUNCTION_122_2();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.searchableItem.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8D9ACD8()
{
  v0 = OUTLINED_FUNCTION_32_6();
  v1(v0);
  return OUTLINED_FUNCTION_121_1();
}

uint64_t sub_1C8D9AD38()
{
  v0 = OUTLINED_FUNCTION_46_5();
  v1(v0);
  return OUTLINED_FUNCTION_122_2();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.valid.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.valueSearch.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.metadata.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(v0);
  return OUTLINED_FUNCTION_283_0();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.metadata.setter()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(v0);
  return OUTLINED_FUNCTION_294_0();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.metadata.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.PredicateMetadata.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.PredicateMetadata(v0);
  return OUTLINED_FUNCTION_104();
}

void sub_1C8D9AFB8()
{
  v0 = OUTLINED_FUNCTION_61_0();
  v1(v0);
  OUTLINED_FUNCTION_221_0();
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_93_2();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(v0);
  sub_1C90637EC();
  OUTLINED_FUNCTION_13_1();
  v1 = OUTLINED_FUNCTION_60_4();

  return v2(v1);
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(v0);
  sub_1C90637EC();
  OUTLINED_FUNCTION_24_1();
  v1 = OUTLINED_FUNCTION_168_2();

  return v2(v1);
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(v1);
  v2 = OUTLINED_FUNCTION_134_1();
  v3 = type metadata accessor for ToolKitProtoStringSearchPredicate.Template(v2);
  OUTLINED_FUNCTION_53_5(v3);
  v4 = type metadata accessor for ToolKitProtoIdSearchPredicate.Template(0);
  OUTLINED_FUNCTION_53_5(v4);
  v5 = OUTLINED_FUNCTION_340_0();
  v6 = type metadata accessor for ToolKitProtoAllPredicate(v5);
  OUTLINED_FUNCTION_53_5(v6);
  v7 = OUTLINED_FUNCTION_303_0();
  v8 = type metadata accessor for ToolKitProtoSuggestedPredicate(v7);
  OUTLINED_FUNCTION_53_5(v8);
  v9 = type metadata accessor for ToolKitProtoSearchableItemPredicate.Template(0);
  OUTLINED_FUNCTION_53_5(v9);
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  OUTLINED_FUNCTION_53_5(valid);
  v11 = type metadata accessor for ToolKitProtoValueSearchPredicate.Template(0);
  OUTLINED_FUNCTION_53_5(v11);
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.PredicateMetadata(0);
  OUTLINED_FUNCTION_53_5(v12);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  v14 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = v14;
  return result;
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Codable.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Codable(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Codable.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Codable(v0);
  return OUTLINED_FUNCTION_104();
}

void sub_1C8D9B3B0()
{
  v1 = OUTLINED_FUNCTION_47_5();
  v2(v1);
  v3 = OUTLINED_FUNCTION_162_2();
  v0(v3);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_263_0();
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_346_0();
}

uint64_t ToolKitProtoTypeDefinition.Version1.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1(v0);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v3 = OUTLINED_FUNCTION_339_0(v1, v2);
  v4 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Codable(v3);
  v5 = OUTLINED_FUNCTION_9(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_0();
  v6 = OUTLINED_FUNCTION_111();
  v7 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(v6);
  v8 = OUTLINED_FUNCTION_9(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7_0();
  v9 = OUTLINED_FUNCTION_111();
  v10 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(v9);
  v11 = OUTLINED_FUNCTION_9(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_7_0();
  v12 = OUTLINED_FUNCTION_111();
  v13 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(v12);
  v14 = OUTLINED_FUNCTION_9(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_7_0();
  v15 = OUTLINED_FUNCTION_111();
  v16 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(v15);
  v17 = OUTLINED_FUNCTION_9(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_40_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_160_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_282_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_66();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314728, &qword_1C9074DC8);
  OUTLINED_FUNCTION_9(v23);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_142();
  sub_1C8D990E8();
  sub_1C8D990E8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_20_11();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_334_0() != 1)
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_169_1();
      OUTLINED_FUNCTION_302_0();
      sub_1C8D99B98();
      static ToolKitProtoTypeDefinition.Version1.Entity.== infix(_:_:)();
      sub_1C8D9913C();
      goto LABEL_16;
    case 2u:
      OUTLINED_FUNCTION_20_11();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_334_0() == 2)
      {
        OUTLINED_FUNCTION_169_1();
        sub_1C8D99B98();
        static ToolKitProtoTypeDefinition.Version1.Enumeration.== infix(_:_:)();
        sub_1C8D9913C();
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_255_0();
      goto LABEL_14;
    case 3u:
      OUTLINED_FUNCTION_20_11();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_334_0() != 3)
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_169_1();
      OUTLINED_FUNCTION_338_0();
      sub_1C8D99B98();
      OUTLINED_FUNCTION_276();
      static ToolKitProtoTypeDefinition.Version1.Query.== infix(_:_:)();
      sub_1C8D9913C();
      OUTLINED_FUNCTION_209();
      goto LABEL_16;
    case 4u:
      OUTLINED_FUNCTION_20_11();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_334_0() == 4)
      {
        OUTLINED_FUNCTION_169_1();
        sub_1C8D99B98();
        static ToolKitProtoTypeDefinition.Version1.Codable.== infix(_:_:)();
        sub_1C8D9913C();
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_153_1();
      goto LABEL_14;
    default:
      OUTLINED_FUNCTION_20_11();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_334_0())
      {
        OUTLINED_FUNCTION_158_3();
LABEL_14:
        sub_1C8D9913C();
        sub_1C8D16D78(v0, &qword_1EC314728, &qword_1C9074DC8);
      }

      else
      {
        OUTLINED_FUNCTION_169_1();
        sub_1C8D99B98();
        static ToolKitProtoTypeIdentifier.Primitive.== infix(_:_:)();
        OUTLINED_FUNCTION_203_1();
        sub_1C8D9913C();
LABEL_16:
        sub_1C8D9913C();
        OUTLINED_FUNCTION_231();
        sub_1C8D9913C();
      }

      OUTLINED_FUNCTION_163();
      return;
  }
}

uint64_t ToolKitProtoTypedValue.typedValueKind.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_1C8CD1784(v2);
}

uint64_t ToolKitProtoTypedValue.typedValueKind.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_1C8CD0FB0(*v1);
  *v1 = v2;
  return result;
}

uint64_t ToolKitProtoTypedValue.ID.typeInstance.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.ID(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.ID.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.ID(v0);
  return OUTLINED_FUNCTION_104();
}

double ToolKitProtoTypedValue.ID.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoTypedValue.ID(v1);
  v2 = OUTLINED_FUNCTION_134_1();
  v3 = type metadata accessor for ToolKitProtoTypeInstance(v2);
  v4 = OUTLINED_FUNCTION_53_5(v3);
  OUTLINED_FUNCTION_289_0(v4);
  result = 0.0;
  *v0 = xmmword_1C9074C90;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Decimal.mantissa.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8D9BDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C8DC0E00(a1, a2, a3);

  return MEMORY[0x1EEE15710](a1, a2, v5);
}

uint64_t sub_1C8D9BF98()
{
  v0 = OUTLINED_FUNCTION_61_0();
  v1(v0);
  sub_1C90637EC();
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_60_4();

  return v3(v2);
}

uint64_t sub_1C8D9C01C()
{
  v0 = OUTLINED_FUNCTION_258();
  v1(v0);
  sub_1C90637EC();
  OUTLINED_FUNCTION_24_1();
  v2 = OUTLINED_FUNCTION_168_2();

  return v3(v2);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Decimal.Mantissa.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal.Mantissa(v0);
  return OUTLINED_FUNCTION_104();
}

double ToolKitProtoTypedValue.PrimitiveValue.Decimal.Mantissa.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal.Mantissa(v1);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Decimal.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Decimal.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(v1);
  v2 = OUTLINED_FUNCTION_293_0();
  v3 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal.Mantissa(v2);
  OUTLINED_FUNCTION_53_5(v3);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v0 = 0;
  *(v0 + 4) = 0;
  *(v0 + 8) = 0;
  *(v0 + 12) = 0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Measurement.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(v0);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoTypedValue.PrimitiveValue.Measurement.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(v1);
  OUTLINED_FUNCTION_177_2();
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_145_0();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount.amount.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.identificationHint.setter()
{
  OUTLINED_FUNCTION_127_0();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8D9C608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C8DC0DAC(a1, a2, a3);

  return MEMORY[0x1EEE15710](a1, a2, v5);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(v1);
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  v2 = OUTLINED_FUNCTION_220_0();
  v3 = type metadata accessor for ToolKitProtoDisplayRepresentation(v2);
  v4 = OUTLINED_FUNCTION_53_5(v3);
  result = OUTLINED_FUNCTION_289_0(v4);
  *v0 = 0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Placemark.placemark.setter()
{
  OUTLINED_FUNCTION_127_0();
  result = sub_1C8CE7BD0(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Placemark.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8D9C858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C8DC0D58(a1, a2, a3);

  return MEMORY[0x1EEE15710](a1, a2, v5);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Placemark.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Placemark.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = xmmword_1C9065DB0;
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(0);
  v2 = OUTLINED_FUNCTION_134_1();
  v3 = type metadata accessor for ToolKitProtoDisplayRepresentation(v2);
  v4 = OUTLINED_FUNCTION_53_5(v3);
  result = OUTLINED_FUNCTION_289_0(v4);
  *a1 = 0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.person.setter()
{
  OUTLINED_FUNCTION_127_0();
  result = sub_1C8CE7BD0(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t sub_1C8D9CA5C()
{
  v0 = OUTLINED_FUNCTION_32_6();
  v1(v0);
  return OUTLINED_FUNCTION_121_1();
}

uint64_t sub_1C8D9CABC()
{
  v0 = OUTLINED_FUNCTION_46_5();
  v1(v0);
  return OUTLINED_FUNCTION_122_2();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.handle.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.nameComponents.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.image.setter()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(v0);
  return OUTLINED_FUNCTION_360_0(*(v1 + 40));
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.image.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.contactIdentifier.getter()
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  OUTLINED_FUNCTION_27_6();
  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.contactIdentifier.setter()
{
  v3 = OUTLINED_FUNCTION_55_3();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(v3);
  result = OUTLINED_FUNCTION_264_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.contactIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.customIdentifier.getter()
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  OUTLINED_FUNCTION_27_6();
  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.customIdentifier.setter()
{
  v3 = OUTLINED_FUNCTION_55_3();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(v3);
  result = OUTLINED_FUNCTION_264_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.customIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.relationship.getter()
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  OUTLINED_FUNCTION_27_6();
  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.relationship.setter()
{
  v3 = OUTLINED_FUNCTION_55_3();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(v3);
  result = OUTLINED_FUNCTION_264_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.relationship.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.contactSuggestion.setter(char a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.contactSuggestion.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.Handle.label.setter()
{
  OUTLINED_FUNCTION_127_0();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t sub_1C8D9D04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C8DC0D04(a1, a2, a3);

  return MEMORY[0x1EEE15710](a1, a2, v5);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.Handle.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.Handle.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle(v1);
  OUTLINED_FUNCTION_281_0();
  OUTLINED_FUNCTION_177_2();
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v0 = 0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.namePrefix.setter()
{
  OUTLINED_FUNCTION_127_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.givenName.setter()
{
  OUTLINED_FUNCTION_127_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.middleName.setter()
{
  OUTLINED_FUNCTION_127_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.familyName.setter()
{
  OUTLINED_FUNCTION_127_0();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.nameSuffix.setter()
{
  OUTLINED_FUNCTION_127_0();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.phoneticRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.nickname.setter()
{
  OUTLINED_FUNCTION_127_0();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t sub_1C8D9D56C()
{
  v0 = OUTLINED_FUNCTION_61_0();
  v1(v0);
  OUTLINED_FUNCTION_251_0();
  sub_1C90637EC();
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_60_4();

  return v3(v2);
}

uint64_t sub_1C8D9D5EC()
{
  v0 = OUTLINED_FUNCTION_258();
  v1(v0);
  OUTLINED_FUNCTION_251_0();
  sub_1C90637EC();
  OUTLINED_FUNCTION_24_1();
  v2 = OUTLINED_FUNCTION_168_2();

  return v3(v2);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.init()()
{
  v0 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation(v0);
  OUTLINED_FUNCTION_337_0();
  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.init()()
{
  v0 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents(v0);
  OUTLINED_FUNCTION_337_0();
  v1 = OUTLINED_FUNCTION_251_0();
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation(v1);
  OUTLINED_FUNCTION_53_5(v2);
  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(v0);
  sub_1C90637EC();
  OUTLINED_FUNCTION_13_1();
  v1 = OUTLINED_FUNCTION_60_4();

  return v2(v1);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(v0);
  sub_1C90637EC();
  OUTLINED_FUNCTION_24_1();
  v1 = OUTLINED_FUNCTION_168_2();

  return v2(v1);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(v0);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoTypedValue.PrimitiveValue.Person.init()(uint64_t a1@<X8>)
{
  *(a1 + 24) = xmmword_1C9065DB0;
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  v3 = OUTLINED_FUNCTION_304_0();
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation(v3);
  OUTLINED_FUNCTION_53_5(v4);
  v5 = OUTLINED_FUNCTION_340_0();
  v6 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle(v5);
  OUTLINED_FUNCTION_53_5(v6);
  v7 = OUTLINED_FUNCTION_303_0();
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents(v7);
  OUTLINED_FUNCTION_53_5(v8);
  *(a1 + v2[10]) = xmmword_1C9065DB0;
  OUTLINED_FUNCTION_40_5(v2[11]);
  OUTLINED_FUNCTION_40_5(v2[12]);
  OUTLINED_FUNCTION_40_5(v2[13]);
  *(a1 + v2[14]) = 2;
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_145_0();
  *(a1 + 16) = 0;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.File.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.File.url.getter()
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0);
  OUTLINED_FUNCTION_27_6();
  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.File.url.setter()
{
  v3 = OUTLINED_FUNCTION_55_3();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(v3);
  result = OUTLINED_FUNCTION_264_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.File.url.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.File.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(v0);
  return OUTLINED_FUNCTION_104();
}

double ToolKitProtoTypedValue.PrimitiveValue.File.init()()
{
  v2 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(v2);
  v3 = OUTLINED_FUNCTION_240_0();
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation(v3);
  OUTLINED_FUNCTION_53_5(v4);
  OUTLINED_FUNCTION_40_5(*(v1 + 24));
  OUTLINED_FUNCTION_289_0(v5);
  result = 0.0;
  *v0 = xmmword_1C9074C90;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.App.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.App.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Shortcut.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Shortcut(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Shortcut.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Shortcut(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.timeZoneIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.era.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.year.setter()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  OUTLINED_FUNCTION_30_11(*(v1 + 28));
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.year.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.month.setter()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  OUTLINED_FUNCTION_30_11(*(v1 + 32));
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.month.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.day.setter()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  OUTLINED_FUNCTION_30_11(*(v1 + 36));
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.day.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.hour.setter()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  OUTLINED_FUNCTION_30_11(*(v1 + 40));
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.hour.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.minute.setter()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  OUTLINED_FUNCTION_30_11(*(v1 + 44));
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.minute.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.second.setter()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  OUTLINED_FUNCTION_30_11(*(v1 + 48));
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.second.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.nanosecond.setter()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  OUTLINED_FUNCTION_30_11(*(v1 + 52));
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.nanosecond.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekday.setter()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  OUTLINED_FUNCTION_30_11(*(v1 + 56));
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekday.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekdayOrdinal.setter()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  OUTLINED_FUNCTION_30_11(*(v1 + 60));
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekdayOrdinal.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.quarter.setter()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  OUTLINED_FUNCTION_30_11(*(v1 + 64));
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.quarter.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekOfMonth.setter()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  OUTLINED_FUNCTION_30_11(*(v1 + 68));
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekOfMonth.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekOfYear.setter()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  OUTLINED_FUNCTION_30_11(*(v1 + 72));
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekOfYear.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.yearForWeekOfYear.setter()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  OUTLINED_FUNCTION_30_11(*(v1 + 76));
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.yearForWeekOfYear.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8D9E834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C8DC0CB0(a1, a2, a3);

  return MEMORY[0x1EEE15710](a1, a2, v5);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.timeZoneIdentifier.setter()
{
  OUTLINED_FUNCTION_127_0();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.localeIdentifier.setter()
{
  OUTLINED_FUNCTION_127_0();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t sub_1C8D9EA10()
{
  v0 = OUTLINED_FUNCTION_61_0();
  v1(v0);
  sub_1C90637EC();
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_60_4();

  return v3(v2);
}

uint64_t sub_1C8D9EA94()
{
  v0 = OUTLINED_FUNCTION_258();
  v1(v0);
  sub_1C90637EC();
  OUTLINED_FUNCTION_24_1();
  v2 = OUTLINED_FUNCTION_168_2();

  return v3(v2);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(v1);
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0xE000000000000000;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  sub_1C90637EC();
  OUTLINED_FUNCTION_13_1();
  v1 = OUTLINED_FUNCTION_60_4();

  return v2(v1);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  sub_1C90637EC();
  OUTLINED_FUNCTION_24_1();
  v1 = OUTLINED_FUNCTION_168_2();

  return v2(v1);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(v1);
  v5 = OUTLINED_FUNCTION_52_6(v0, v3, v4, v2);
  v6 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v5);
  OUTLINED_FUNCTION_40_5(*(v6 + 20));
  OUTLINED_FUNCTION_58_5(*(v7 + 24));
  OUTLINED_FUNCTION_58_5(*(v8 + 28));
  OUTLINED_FUNCTION_58_5(*(v9 + 32));
  OUTLINED_FUNCTION_58_5(*(v10 + 36));
  OUTLINED_FUNCTION_58_5(*(v11 + 40));
  OUTLINED_FUNCTION_58_5(*(v12 + 44));
  OUTLINED_FUNCTION_58_5(*(v13 + 48));
  OUTLINED_FUNCTION_58_5(*(v14 + 52));
  OUTLINED_FUNCTION_58_5(*(v15 + 56));
  OUTLINED_FUNCTION_58_5(*(v16 + 60));
  OUTLINED_FUNCTION_58_5(*(v17 + 64));
  OUTLINED_FUNCTION_58_5(*(v18 + 68));
  OUTLINED_FUNCTION_58_5(*(v19 + 72));
  OUTLINED_FUNCTION_58_5(*(v20 + 76));
  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.months.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.daysOfTheYear.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.daysOfTheMonth.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.weeks.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.weekdays.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.hours.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.minutes.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.seconds.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.setPositions.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.calendar.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(v0);
  return OUTLINED_FUNCTION_283_0();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.calendar.setter()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(v0);
  return OUTLINED_FUNCTION_294_0();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.calendar.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.end.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(v0);
  return OUTLINED_FUNCTION_283_0();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.end.setter()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(v0);
  return OUTLINED_FUNCTION_294_0();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.end.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8D9F234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C8DC0C5C(a1, a2, a3);

  return MEMORY[0x1EEE15710](a1, a2, v5);
}

uint64_t sub_1C8D9F2AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C8DC0C08(a1, a2, a3);

  return MEMORY[0x1EEE15710](a1, a2, v5);
}

uint64_t sub_1C8D9F334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C8DC0BB4(a1, a2, a3);

  return MEMORY[0x1EEE15710](a1, a2, v5);
}

uint64_t sub_1C8D9F3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C8DC0B60(a1, a2, a3);

  return MEMORY[0x1EEE15710](a1, a2, v5);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.occurences.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.date.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.never.setter(char a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.never.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_344_1(a1);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd(0);
  OUTLINED_FUNCTION_240_0();
  v3 = sub_1C906378C();
  v4 = OUTLINED_FUNCTION_53_5(v3);
  *(v1 + *(v2 + 24)) = 2;
  return OUTLINED_FUNCTION_289_0(v4);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(v0);
  sub_1C90637EC();
  OUTLINED_FUNCTION_13_1();
  v1 = OUTLINED_FUNCTION_60_4();

  return v2(v1);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(v0);
  sub_1C90637EC();
  OUTLINED_FUNCTION_24_1();
  v1 = OUTLINED_FUNCTION_168_2();

  return v2(v1);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(v1);
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  OUTLINED_FUNCTION_53_5(v2);
  v3 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd(0);
  OUTLINED_FUNCTION_53_5(v3);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = v5;
  *(v0 + 40) = v5;
  *(v0 + 48) = v5;
  *(v0 + 56) = v5;
  *(v0 + 64) = v5;
  *(v0 + 72) = v5;
  *(v0 + 80) = v5;
  *(v0 + 88) = v5;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateInterval.end.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateInterval(v0);
  return OUTLINED_FUNCTION_104();
}

void sub_1C8D9FB00()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v2 = v1(v0);
  OUTLINED_FUNCTION_30_11(*(v2 + 24));
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateInterval.duration.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateInterval(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateInterval.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateInterval(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateInterval.init()()
{
  OUTLINED_FUNCTION_386();
  v1 = sub_1C906378C();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateInterval(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v1);
  v9 = v0 + *(v5 + 24);
  *v9 = 0;
  *(v9 + 8) = 1;
  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Duration.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Duration(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Duration.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Duration(v1);
  OUTLINED_FUNCTION_221_0();
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(v0);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_164();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Duration(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_7_0();
  v25 = OUTLINED_FUNCTION_27_0(v24);
  v26 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents(v25);
  v27 = OUTLINED_FUNCTION_9(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_7_0();
  v29 = OUTLINED_FUNCTION_27_0(v28);
  v30 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateInterval(v29);
  v31 = OUTLINED_FUNCTION_9(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_7_0();
  v33 = OUTLINED_FUNCTION_27_0(v32);
  v34 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(v33);
  v35 = OUTLINED_FUNCTION_9(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_7_0();
  v37 = OUTLINED_FUNCTION_27_0(v36);
  v38 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Shortcut(v37);
  v39 = OUTLINED_FUNCTION_9(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_7_0();
  v41 = OUTLINED_FUNCTION_27_0(v40);
  v42 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v41);
  v43 = OUTLINED_FUNCTION_9(v42);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_7_0();
  v45 = OUTLINED_FUNCTION_27_0(v44);
  v46 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(v45);
  v47 = OUTLINED_FUNCTION_9(v46);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_7_0();
  v49 = OUTLINED_FUNCTION_27_0(v48);
  v50 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(v49);
  v51 = OUTLINED_FUNCTION_9(v50);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_7_0();
  v53 = OUTLINED_FUNCTION_27_0(v52);
  v54 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(v53);
  v55 = OUTLINED_FUNCTION_9(v54);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_7_0();
  v57 = OUTLINED_FUNCTION_27_0(v56);
  v58 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(v57);
  v59 = OUTLINED_FUNCTION_9(v58);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_7_0();
  v61 = OUTLINED_FUNCTION_27_0(v60);
  v62 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(v61);
  v63 = OUTLINED_FUNCTION_9(v62);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_7_0();
  v65 = OUTLINED_FUNCTION_27_0(v64);
  v66 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(v65);
  v67 = OUTLINED_FUNCTION_9(v66);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_7_0();
  v69 = OUTLINED_FUNCTION_27_0(v68);
  v70 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(v69);
  v71 = OUTLINED_FUNCTION_9(v70);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_27_0(v72);
  v73 = sub_1C906378C();
  v134 = *(v73 - 8);
  v135 = v73;
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_7_0();
  v75 = OUTLINED_FUNCTION_27_0(v74);
  v76 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(v75);
  v77 = OUTLINED_FUNCTION_9(v76);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_7_0();
  v79 = OUTLINED_FUNCTION_27_0(v78);
  type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(v79);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_161_2();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_59_5();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_216();
  v133 = v98;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_97_2();
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_311();
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_120_1();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_228();
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314730, &qword_1C9074DD8);
  OUTLINED_FUNCTION_9(v104);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_51();
  v107 = (v21 + *(v106 + 56));
  sub_1C8D990E8();
  sub_1C8D990E8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() != 1)
      {
        goto LABEL_76;
      }

      goto LABEL_17;
    case 2u:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() == 2)
      {
        goto LABEL_17;
      }

      goto LABEL_76;
    case 3u:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() != 3)
      {
        goto LABEL_75;
      }

      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_261();
      OUTLINED_FUNCTION_100();
      static ToolKitProtoTypedValue.PrimitiveValue.Decimal.== infix(_:_:)();
      goto LABEL_57;
    case 4u:
      OUTLINED_FUNCTION_1_34();
      v114 = v21;
      OUTLINED_FUNCTION_95_0();
      sub_1C8D990E8();
      v116 = *v20;
      v115 = v20[1];
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_11;
      }

      goto LABEL_29;
    case 5u:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() == 5)
      {
        (*(v134 + 32))(v131, v20, v135);
        sub_1C906374C();
        v125 = *(v134 + 8);
        v126 = OUTLINED_FUNCTION_212();
        v125(v126);
        (v125)(v133, v135);
        goto LABEL_17;
      }

      (*(v134 + 8))(v133, v135);
      goto LABEL_76;
    case 6u:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      v108 = v21;
      if (OUTLINED_FUNCTION_327_0() != 6)
      {
        goto LABEL_43;
      }

      goto LABEL_5;
    case 7u:
      OUTLINED_FUNCTION_1_34();
      v114 = v21;
      OUTLINED_FUNCTION_276();
      sub_1C8D990E8();
      v116 = *v22;
      v115 = v22[1];
      if (swift_getEnumCaseMultiPayload() != 7)
      {
LABEL_29:

        v21 = v114;
        goto LABEL_76;
      }

LABEL_11:
      v117 = *v107;
      v118 = v107[1];
      if (v116 != v117 || v115 != v118)
      {
        v120 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_335_0(v120, v121, v122);
      }

      goto LABEL_17;
    case 8u:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      v108 = v21;
      if (OUTLINED_FUNCTION_327_0() != 8)
      {
        goto LABEL_43;
      }

      goto LABEL_5;
    case 9u:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() != 9)
      {
        goto LABEL_75;
      }

      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_261();
      v123 = OUTLINED_FUNCTION_100();
      static ToolKitProtoTypedValue.PrimitiveValue.Measurement.== infix(_:_:)(v123);
      goto LABEL_57;
    case 0xAu:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() != 10)
      {
        goto LABEL_75;
      }

      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_261();
      OUTLINED_FUNCTION_100();
      static ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount.== infix(_:_:)();
      goto LABEL_57;
    case 0xBu:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() != 11)
      {
        goto LABEL_75;
      }

      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_261();
      OUTLINED_FUNCTION_100();
      static ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.== infix(_:_:)();
      goto LABEL_57;
    case 0xCu:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() != 12)
      {
        goto LABEL_75;
      }

      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_261();
      OUTLINED_FUNCTION_100();
      static ToolKitProtoTypedValue.PrimitiveValue.Placemark.== infix(_:_:)();
      goto LABEL_57;
    case 0xDu:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() != 13)
      {
        goto LABEL_75;
      }

      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_261();
      OUTLINED_FUNCTION_100();
      static ToolKitProtoTypedValue.PrimitiveValue.Person.== infix(_:_:)();
      goto LABEL_57;
    case 0xEu:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() != 14)
      {
        goto LABEL_75;
      }

      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_261();
      OUTLINED_FUNCTION_100();
      static ToolKitProtoTypedValue.PrimitiveValue.File.== infix(_:_:)();
      goto LABEL_57;
    case 0xFu:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() != 15)
      {
        goto LABEL_75;
      }

      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_261();
      OUTLINED_FUNCTION_100();
      static ToolKitProtoTypedValue.PrimitiveValue.App.== infix(_:_:)();
      goto LABEL_57;
    case 0x10u:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      v108 = v21;
      if (OUTLINED_FUNCTION_327_0() == 16)
      {
LABEL_5:
        v109 = OUTLINED_FUNCTION_94();
        MEMORY[0x1CCA7F9A0](v109);
        v110 = OUTLINED_FUNCTION_249();
        sub_1C8CE7B78(v110, v111);
        v112 = OUTLINED_FUNCTION_94();
        sub_1C8CE7B78(v112, v113);
        OUTLINED_FUNCTION_9_14();
        goto LABEL_80;
      }

LABEL_43:
      v127 = OUTLINED_FUNCTION_94();
      sub_1C8CE7B78(v127, v128);
      v21 = v108;
      goto LABEL_76;
    case 0x11u:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() != 17)
      {
        goto LABEL_75;
      }

      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_261();
      v124 = OUTLINED_FUNCTION_100();
      static ToolKitProtoTypedValue.PrimitiveValue.DateComponents.== infix(_:_:)(v124);
      goto LABEL_57;
    case 0x12u:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() != 18)
      {
        goto LABEL_75;
      }

      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_261();
      OUTLINED_FUNCTION_100();
      static ToolKitProtoTypedValue.PrimitiveValue.Shortcut.== infix(_:_:)();
      goto LABEL_57;
    case 0x13u:
      OUTLINED_FUNCTION_0_37();
      OUTLINED_FUNCTION_348_0();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() != 19)
      {
        goto LABEL_75;
      }

      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_261();
      OUTLINED_FUNCTION_100();
      static ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.== infix(_:_:)();
      goto LABEL_57;
    case 0x14u:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() != 20)
      {
        goto LABEL_75;
      }

      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_261();
      OUTLINED_FUNCTION_100();
      static ToolKitProtoTypedValue.PrimitiveValue.DateInterval.== infix(_:_:)();
      goto LABEL_57;
    case 0x15u:
      OUTLINED_FUNCTION_0_37();
      OUTLINED_FUNCTION_350_0();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() != 21)
      {
        goto LABEL_75;
      }

      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_261();
      OUTLINED_FUNCTION_100();
      static ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.== infix(_:_:)();
LABEL_57:
      sub_1C8D9913C();
      OUTLINED_FUNCTION_93();
      sub_1C8D9913C();
      goto LABEL_17;
    case 0x16u:
      OUTLINED_FUNCTION_0_37();
      OUTLINED_FUNCTION_349_0();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2() == 22)
      {
        OUTLINED_FUNCTION_159();
        sub_1C8D99B98();
        if (*v22 == *v132 && v22[1] == v132[1])
        {
          sub_1C90637EC();
          v129 = OUTLINED_FUNCTION_270_1();
          v130 = OUTLINED_FUNCTION_123_2(v129);
          OUTLINED_FUNCTION_25_10();
          sub_1C8D9913C();
          if (v130)
          {
            OUTLINED_FUNCTION_25_10();
            sub_1C8D9913C();
LABEL_17:
            OUTLINED_FUNCTION_9_14();
            goto LABEL_80;
          }
        }

        else
        {
          OUTLINED_FUNCTION_25_10();
          sub_1C8D9913C();
        }

        OUTLINED_FUNCTION_25_10();
        sub_1C8D9913C();
        OUTLINED_FUNCTION_9_14();
LABEL_80:
        sub_1C8D9913C();
        goto LABEL_77;
      }

      OUTLINED_FUNCTION_25_10();
LABEL_75:
      sub_1C8D9913C();
LABEL_76:
      sub_1C8D16D78(v21, &qword_1EC314730, &qword_1C9074DD8);
LABEL_77:
      OUTLINED_FUNCTION_163();
      return;
    case 0x17u:
      if (swift_getEnumCaseMultiPayload() == 23)
      {
        goto LABEL_17;
      }

      goto LABEL_76;
    default:
      OUTLINED_FUNCTION_0_37();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_135_2())
      {
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_9_14();
      sub_1C8D9913C();
      goto LABEL_77;
  }
}

uint64_t ToolKitProtoTypedValue.EnumerationValue.caseValue.setter()
{
  OUTLINED_FUNCTION_127_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitProtoTypedValue.EnumerationValue.type.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.EnumerationValue.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.EnumerationValue.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(v0);
  return OUTLINED_FUNCTION_104();
}

void sub_1C8DA0FEC()
{
  v1 = OUTLINED_FUNCTION_47_5();
  v2(v1);
  v3 = OUTLINED_FUNCTION_162_2();
  v0(v3);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_107_2();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_346_0();
}

uint64_t ToolKitProtoTypedValue.EntityValue.properties.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t ToolKitProtoTypedValue.EntityValue.type.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.EntityValue(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.EntityValue.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.EntityValue(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.EntityValue.hydratedAppEntity.setter()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(v0);
  return OUTLINED_FUNCTION_360_0(*(v1 + 32));
}

uint64_t ToolKitProtoTypedValue.EntityValue.hydratedAppEntity.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.EntityValue(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.EntityValue.siriKitEntity.setter()
{
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(v0);
  return OUTLINED_FUNCTION_360_0(*(v1 + 36));
}

uint64_t ToolKitProtoTypedValue.EntityValue.siriKitEntity.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.EntityValue(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.EntityValue.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.EntityValue(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.EntityValue.init()()
{
  v2 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoTypedValue.EntityValue(v2);
  v3 = OUTLINED_FUNCTION_134_1();
  v4 = type metadata accessor for ToolKitProtoTypeIdentifier(v3);
  OUTLINED_FUNCTION_53_5(v4);
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v6 = OUTLINED_FUNCTION_53_5(v5);
  *(v0 + *(v1 + 32)) = xmmword_1C9065DB0;
  *(v0 + *(v1 + 36)) = xmmword_1C9065DB0;
  OUTLINED_FUNCTION_362_0(v6);
  OUTLINED_FUNCTION_145_0();
  type metadata accessor for ToolKitProtoTypedValue(0);
  result = sub_1C9063E2C();
  *(v0 + 16) = result;
  return result;
}

uint64_t ToolKitProtoTypedValue.CodableValue.data.getter()
{
  v0 = OUTLINED_FUNCTION_94();
  sub_1C8CE9144(v0, v1);
  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoTypedValue.CodableValue.data.setter()
{
  OUTLINED_FUNCTION_127_0();
  result = sub_1C8CE7B78(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ToolKitProtoTypedValue.CodableValue.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.CodableValue(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.CodableValue.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.CodableValue(v0);
  return OUTLINED_FUNCTION_104();
}

double ToolKitProtoTypedValue.CodableValue.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoTypedValue.CodableValue(v1);
  v2 = OUTLINED_FUNCTION_134_1();
  v3 = type metadata accessor for ToolKitProtoDisplayRepresentation(v2);
  v4 = OUTLINED_FUNCTION_53_5(v3);
  OUTLINED_FUNCTION_289_0(v4);
  OUTLINED_FUNCTION_145_0();
  result = 0.0;
  *(v0 + 16) = xmmword_1C9074C90;
  return result;
}

uint64_t ToolKitProtoTypedValue.CollectionValue.values.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ToolKitProtoTypedValue.CollectionValue.type.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.CollectionValue(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.CollectionValue.typeInstance.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.CollectionValue(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.CollectionValue.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.CollectionValue(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.QueryValue.query.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.QueryValue(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.QueryValue.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.QueryValue(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8DA19FC(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  v6 = OUTLINED_FUNCTION_214_1();
  v8 = v7(v6);
  v11 = OUTLINED_FUNCTION_52_6(v3, v9, v10, v8);
  a2(v11);
  v12 = OUTLINED_FUNCTION_231_0();
  a3(v12);
  OUTLINED_FUNCTION_356_0();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

uint64_t ToolKitProtoTypedValue.EntityIdentifierValue.type.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.EntityIdentifierValue.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.EntityIdentifierValue.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.DeferredValue.expectedTypeInstance.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.DeferredValue(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.DeferredValue.storage.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.DeferredValue(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage.data.getter()
{
  v0 = OUTLINED_FUNCTION_94();
  sub_1C8CE9144(v0, v1);
  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage.data.setter()
{
  OUTLINED_FUNCTION_127_0();
  result = sub_1C8CE7B78(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v0;
  return result;
}

uint64_t ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage.propertyKey.setter()
{
  OUTLINED_FUNCTION_127_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.DeferredValue.Storage.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(v0);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v5 = OUTLINED_FUNCTION_236_0();
  type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage(v5);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_29_9();
  type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage(v7);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v9 = OUTLINED_FUNCTION_288_0();
  type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind(v9);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_16_12();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_233_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314738, &qword_1C9074DE8);
  OUTLINED_FUNCTION_9(v12);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_142();
  sub_1C8D990E8();
  OUTLINED_FUNCTION_326_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_159();
    sub_1C8D990E8();
    OUTLINED_FUNCTION_249_0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_169_1();
      sub_1C8D99B98();
      OUTLINED_FUNCTION_232_0();
      v16 = v16 && v14 == v15;
      if (v16 || (sub_1C9064C2C() & 1) != 0)
      {
        v17 = *(v2 + 16) == *(v1 + 16) && *(v2 + 24) == *(v1 + 24);
        if (v17 || (sub_1C9064C2C() & 1) != 0)
        {
          sub_1C90637EC();
          v18 = sub_1C8D99190();
          OUTLINED_FUNCTION_226_0(v18);
        }
      }

      OUTLINED_FUNCTION_202_1();
      sub_1C8D9913C();
LABEL_27:
      sub_1C8D9913C();
      OUTLINED_FUNCTION_231();
      sub_1C8D9913C();
      goto LABEL_28;
    }
  }

  else
  {
    OUTLINED_FUNCTION_159();
    sub_1C8D990E8();
    OUTLINED_FUNCTION_249_0();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_169_1();
      sub_1C8D99B98();
      if (MEMORY[0x1CCA7F9A0](*v4, v4[1], *v3, v3[1]))
      {
        v19 = v4[2] == v3[2] && v4[3] == v3[3];
        if (v19 || (sub_1C9064C2C() & 1) != 0)
        {
          OUTLINED_FUNCTION_318_0();
          v20 = sub_1C8D99190();
          OUTLINED_FUNCTION_358_0(v20);
        }
      }

      OUTLINED_FUNCTION_201_0();
      sub_1C8D9913C();
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_255_0();
  }

  sub_1C8D9913C();
  sub_1C8D16D78(v0, &qword_1EC314738, &qword_1C9074DE8);
LABEL_28:
  OUTLINED_FUNCTION_163();
}

uint64_t ToolKitProtoTypedValue.DeferredValue.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue.DeferredValue(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypedValue.DeferredValue.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoTypeIdentifier(v1);
  v5 = OUTLINED_FUNCTION_52_6(v0, v3, v4, v2);
  type metadata accessor for ToolKitProtoTypedValue.DeferredValue(v5);
  v6 = OUTLINED_FUNCTION_240_0();
  v7 = type metadata accessor for ToolKitProtoTypeInstance(v6);
  OUTLINED_FUNCTION_53_5(v7);
  v8 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
  v9 = OUTLINED_FUNCTION_53_5(v8);
  return OUTLINED_FUNCTION_289_0(v9);
}

uint64_t ToolKitProtoTypedValue.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypedValue(v0);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoTypedValueKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v36 = v4;
  v6 = v5;
  v7 = type metadata accessor for ToolKitProtoTypedValue.CodableValue(0);
  v8 = OUTLINED_FUNCTION_9(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_147();
  v10 = OUTLINED_FUNCTION_111();
  v11 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(v10);
  v12 = OUTLINED_FUNCTION_9(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_147();
  v14 = OUTLINED_FUNCTION_111();
  v15 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(v14);
  v16 = OUTLINED_FUNCTION_9(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_147();
  v18 = OUTLINED_FUNCTION_111();
  Value = type metadata accessor for ToolKitProtoTypedValue.QueryValue(v18);
  v20 = OUTLINED_FUNCTION_9(Value);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_95_1();
  v22 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
  v23 = OUTLINED_FUNCTION_9(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_16_12();
  MEMORY[0x1EEE9AC00](v24);
  v25 = OUTLINED_FUNCTION_351_0();
  v26 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(v25);
  v27 = OUTLINED_FUNCTION_9(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_160_2();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_66();
  v29 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  v30 = OUTLINED_FUNCTION_9(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_84();
  v32 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(0);
  v33 = OUTLINED_FUNCTION_9(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_120_1();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_156_0();
  v35 = *v36;
  switch(*v6 >> 61)
  {
    case 1:
      if (v35 >> 61 == 1)
      {
        swift_projectBox();
        swift_projectBox();
        sub_1C8D990E8();
        sub_1C8D990E8();

        static ToolKitProtoTypedValue.EnumerationValue.== infix(_:_:)(v1, v0);
        sub_1C8D9913C();
        goto LABEL_19;
      }

      break;
    case 2:
      if (v35 >> 61 == 2)
      {
        OUTLINED_FUNCTION_230_0();
        OUTLINED_FUNCTION_330_0();
        sub_1C8D990E8();
        OUTLINED_FUNCTION_206();
        sub_1C8D990E8();

        OUTLINED_FUNCTION_254();
        static ToolKitProtoTypedValue.EntityValue.== infix(_:_:)();
        sub_1C8D9913C();
        goto LABEL_19;
      }

      break;
    case 3:
      if (v35 >> 61 == 3)
      {
        OUTLINED_FUNCTION_230_0();
        swift_projectBox();
        sub_1C8D990E8();
        OUTLINED_FUNCTION_249();
        sub_1C8D990E8();

        OUTLINED_FUNCTION_253();
        static ToolKitProtoTypedValue.CollectionValue.== infix(_:_:)();
        sub_1C8D9913C();
        OUTLINED_FUNCTION_94();
        goto LABEL_19;
      }

      break;
    case 4:
      if (v35 >> 61 == 4)
      {
        OUTLINED_FUNCTION_230_0();
        OUTLINED_FUNCTION_330_0();
        sub_1C8D990E8();
        sub_1C8D990E8();

        OUTLINED_FUNCTION_206();
        static ToolKitProtoTypedValue.QueryValue.== infix(_:_:)();
        sub_1C8D9913C();
        goto LABEL_19;
      }

      break;
    case 5:
      if (v35 >> 61 == 5)
      {
        OUTLINED_FUNCTION_230_0();
        OUTLINED_FUNCTION_330_0();
        sub_1C8D990E8();
        sub_1C8D990E8();

        OUTLINED_FUNCTION_119();
        static ToolKitProtoTypedValue.EntityIdentifierValue.== infix(_:_:)();
        goto LABEL_18;
      }

      break;
    case 6:
      if (v35 >> 61 == 6)
      {
        OUTLINED_FUNCTION_230_0();
        OUTLINED_FUNCTION_330_0();
        sub_1C8D990E8();
        sub_1C8D990E8();

        OUTLINED_FUNCTION_119();
        static ToolKitProtoTypedValue.DeferredValue.== infix(_:_:)();
        goto LABEL_18;
      }

      break;
    case 7:
      if (v35 >> 61 == 7)
      {
        OUTLINED_FUNCTION_230_0();
        OUTLINED_FUNCTION_330_0();
        sub_1C8D990E8();
        sub_1C8D990E8();

        OUTLINED_FUNCTION_119();
        static ToolKitProtoTypedValue.CodableValue.== infix(_:_:)();
LABEL_18:
        sub_1C8D9913C();
        goto LABEL_19;
      }

      break;
    default:
      if (!(v35 >> 61))
      {
        swift_projectBox();
        OUTLINED_FUNCTION_330_0();
        sub_1C8D990E8();
        sub_1C8D990E8();

        static ToolKitProtoTypedValue.PrimitiveValue.== infix(_:_:)(v3, v2);
        sub_1C8D9913C();
LABEL_19:
        sub_1C8D9913C();
      }

      break;
  }

  OUTLINED_FUNCTION_163();
}

uint64_t ToolKitProtoTypeInstance.Optional.defaultValue.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeInstance.Optional(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeInstance.Optional.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeInstance.Optional(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeInstance.Union.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeInstance.Union(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8DA2F70()
{
  v1 = OUTLINED_FUNCTION_61_0();
  v2(v1);
  OUTLINED_FUNCTION_210_0();
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v0 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t ToolKitProtoTypeInstance.Restricted.identifier.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeInstance.Restricted(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeInstance.Restricted.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeInstance.Restricted(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeInstance.Deferred.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeInstance.Deferred(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeInstance.Constrained.instance.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeInstance.Constrained(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoTypeInstance.Constrained.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeInstance.Constrained(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8DA3358()
{
  v2 = OUTLINED_FUNCTION_47_5();
  v3(v2);
  v4 = OUTLINED_FUNCTION_162_2();
  v0(v4);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_263_0();
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v1 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t ToolKitProtoTypeInstance.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoTypeInstance(v0);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoTypeInstanceKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v42 = v1;
  v3 = v2;
  v4 = type metadata accessor for ToolKitProtoTypeInstance.Constrained(0);
  v5 = OUTLINED_FUNCTION_9(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v41[6] = v6;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_147();
  v41[5] = v8;
  v9 = OUTLINED_FUNCTION_111();
  v10 = type metadata accessor for ToolKitProtoTypeInstance.Deferred(v9);
  v11 = OUTLINED_FUNCTION_9(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12();
  v41[4] = v12;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_147();
  v41[3] = v14;
  v15 = OUTLINED_FUNCTION_111();
  v16 = type metadata accessor for ToolKitProtoTypeInstance.Restricted(v15);
  v17 = OUTLINED_FUNCTION_9(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_228();
  type metadata accessor for ToolKitProtoTypeInstance.Union(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_12();
  v41[1] = v20;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_147();
  v41[2] = v22;
  v23 = OUTLINED_FUNCTION_111();
  v24 = type metadata accessor for ToolKitProtoTypeInstance.Optional(v23);
  v25 = OUTLINED_FUNCTION_9(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_16_12();
  MEMORY[0x1EEE9AC00](v26);
  v27 = OUTLINED_FUNCTION_351_0();
  v28 = type metadata accessor for ToolKitProtoTypeInstance(v27);
  v29 = OUTLINED_FUNCTION_9(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_282_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_66();
  v31 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v32 = OUTLINED_FUNCTION_9(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v33);
  v35 = v41 - v34;
  v36 = *v42;
  switch(*v3 >> 61)
  {
    case 1:
      if (v36 >> 61 == 1)
      {
        OUTLINED_FUNCTION_247_0();
        OUTLINED_FUNCTION_252_0();
        swift_projectBox();
        sub_1C8D990E8();
        OUTLINED_FUNCTION_209();
        sub_1C8D990E8();

        v38 = OUTLINED_FUNCTION_212();
        static ToolKitProtoTypeInstance.== infix(_:_:)(v38, v39);
        goto LABEL_18;
      }

      break;
    case 2:
      if (v36 >> 61 == 2)
      {
        OUTLINED_FUNCTION_247_0();
        swift_projectBox();
        sub_1C8D990E8();
        OUTLINED_FUNCTION_249();
        sub_1C8D990E8();

        OUTLINED_FUNCTION_253();
        static ToolKitProtoTypeInstance.Optional.== infix(_:_:)();
        sub_1C8D9913C();
        OUTLINED_FUNCTION_145();
        goto LABEL_19;
      }

      break;
    case 3:
      if (v36 >> 61 == 3)
      {
        swift_projectBox();
        swift_projectBox();
        sub_1C8D990E8();
        sub_1C8D990E8();

        OUTLINED_FUNCTION_145();
        sub_1C8CEFFC8();
        if (v37)
        {
          sub_1C90637EC();
          sub_1C8D99190();
          sub_1C9063EAC();
        }

        OUTLINED_FUNCTION_192_2();
        sub_1C8D9913C();
        OUTLINED_FUNCTION_365_0();
        goto LABEL_20;
      }

      break;
    case 4:
      if (v36 >> 61 == 4)
      {
        OUTLINED_FUNCTION_247_0();
        OUTLINED_FUNCTION_252_0();
        swift_projectBox();
        sub_1C8D990E8();
        sub_1C8D990E8();

        static ToolKitProtoTypeInstance.Restricted.== infix(_:_:)();
        sub_1C8D9913C();
        goto LABEL_19;
      }

      break;
    case 5:
      if (v36 >> 61 == 5)
      {
        OUTLINED_FUNCTION_247_0();
        OUTLINED_FUNCTION_252_0();
        swift_projectBox();
        sub_1C8D990E8();
        OUTLINED_FUNCTION_342_0();
        sub_1C8D990E8();

        v40 = OUTLINED_FUNCTION_112();
        static ToolKitProtoTypeInstance.Deferred.== infix(_:_:)(v40);
        goto LABEL_18;
      }

      break;
    case 6:
      if (v36 >> 61 == 6)
      {
        OUTLINED_FUNCTION_247_0();
        OUTLINED_FUNCTION_252_0();
        swift_projectBox();
        sub_1C8D990E8();
        sub_1C8D990E8();

        OUTLINED_FUNCTION_112();
        static ToolKitProtoTypeInstance.Constrained.== infix(_:_:)();
LABEL_18:
        sub_1C8D9913C();
        goto LABEL_19;
      }

      break;
    default:
      if (!(v36 >> 61))
      {
        swift_projectBox();
        swift_projectBox();
        sub_1C8D990E8();
        sub_1C8D990E8();

        static ToolKitProtoTypeIdentifier.== infix(_:_:)(v35, v0);
        sub_1C8D9913C();
LABEL_19:
        sub_1C8D9913C();
LABEL_20:
      }

      break;
  }

  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8DA3B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C8DC0B0C(a1, a2, a3);

  return MEMORY[0x1EEE15710](a1, a2, v5);
}

uint64_t sub_1C8DA3C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C8DC0AB8(a1, a2, a3);

  return MEMORY[0x1EEE15710](a1, a2, v5);
}

uint64_t ToolKitProtoRestrictionContext.InSet.templates.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoRestrictionContext.InSet(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8DA3E00(uint64_t (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_27_6();
  return OUTLINED_FUNCTION_94();
}

uint64_t sub_1C8DA3E50()
{
  v3 = OUTLINED_FUNCTION_55_3();
  v4(v3);
  result = OUTLINED_FUNCTION_264_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.bundleIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.contentItemClass.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(v0);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(v1);
  OUTLINED_FUNCTION_177_2();
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_93_2();
  *(v0 + 32) = 0;
  *(v0 + 40) = v2;
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(v1);
  v5 = OUTLINED_FUNCTION_52_6(v0, v3, v4, v2);
  v6 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(v5);
  OUTLINED_FUNCTION_40_5(*(v6 + 20));
  OUTLINED_FUNCTION_221_0();
  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.init(bundleIdentifier:)()
{
  v3 = OUTLINED_FUNCTION_75_1();
  v4 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(v3);
  v7 = OUTLINED_FUNCTION_52_6(v2, v5, v6, v4);
  v8 = (v2 + *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(v7) + 20));
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v8 = v1;
  v8[1] = v0;
  return result;
}

void static ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v6 = OUTLINED_FUNCTION_339_0(v4, v5);
  type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration(v6);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_0();
  v8 = OUTLINED_FUNCTION_111();
  v9 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(v8);
  v10 = OUTLINED_FUNCTION_9(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_147();
  v12 = OUTLINED_FUNCTION_111();
  v13 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(v12);
  v14 = OUTLINED_FUNCTION_9(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15();
  v15 = OUTLINED_FUNCTION_284_0();
  type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration(v15);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_7_0();
  v17 = OUTLINED_FUNCTION_111();
  type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(v17);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_12();
  v41 = v19;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_311();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_120_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_160_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_96_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_95_1();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314740, &qword_1C9074DF8);
  OUTLINED_FUNCTION_9(v25);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_142();
  v28 = (v0 + *(v27 + 56));
  sub_1C8D990E8();
  sub_1C8D990E8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_10_16();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_331_0() == 1)
      {
        OUTLINED_FUNCTION_256_0();
        sub_1C8D99B98();
        static ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.== infix(_:_:)();
        sub_1C8D9913C();
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_273();
      goto LABEL_35;
    case 2u:
      OUTLINED_FUNCTION_10_16();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_331_0() != 2)
      {
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_174_2();
      OUTLINED_FUNCTION_302_0();
      sub_1C8D99B98();
      v30 = OUTLINED_FUNCTION_276();
      static ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery.== infix(_:_:)(v30);
      OUTLINED_FUNCTION_211_0();
      sub_1C8D9913C();
      OUTLINED_FUNCTION_181();
      goto LABEL_17;
    case 3u:
      OUTLINED_FUNCTION_10_16();
      sub_1C8D990E8();
      v32 = *v3;
      v31 = v3[1];
      if (OUTLINED_FUNCTION_331_0() != 3)
      {

        goto LABEL_36;
      }

      v33 = v32 == *v28 && v31 == v28[1];
      if (!v33)
      {
        OUTLINED_FUNCTION_206();
        sub_1C9064C2C();
      }

LABEL_52:
      OUTLINED_FUNCTION_86_1();
      break;
    case 4u:
      OUTLINED_FUNCTION_10_16();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_331_0() == 4)
      {
        OUTLINED_FUNCTION_174_2();
        OUTLINED_FUNCTION_341_0();
        sub_1C8D99B98();
        v29 = OUTLINED_FUNCTION_288();
        static ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery.== infix(_:_:)(v29);
        OUTLINED_FUNCTION_211_0();
        sub_1C8D9913C();
LABEL_17:
        sub_1C8D9913C();
        OUTLINED_FUNCTION_86_1();
      }

      else
      {
        OUTLINED_FUNCTION_59_3();
LABEL_35:
        sub_1C8D9913C();
LABEL_36:
        sub_1C8D16D78(v0, &qword_1EC314740, &qword_1C9074DF8);
      }

      break;
    case 5u:
      OUTLINED_FUNCTION_10_16();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_331_0() != 5)
      {
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_256_0();
      OUTLINED_FUNCTION_342_0();
      sub_1C8D99B98();
      OUTLINED_FUNCTION_159_3();
      v36 = v33 && v34 == v35;
      if (v36 || (sub_1C9064C2C() & 1) != 0)
      {
        v37 = *(v41 + 16) == *(v2 + 16) && *(v41 + 24) == *(v2 + 24);
        if (v37 || (sub_1C9064C2C() & 1) != 0)
        {
          OUTLINED_FUNCTION_318_0();
          v38 = sub_1C8D99190();
          OUTLINED_FUNCTION_407(v38);
        }
      }

      OUTLINED_FUNCTION_190_3();
      sub_1C8D9913C();
      goto LABEL_51;
    default:
      OUTLINED_FUNCTION_10_16();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_331_0())
      {
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_256_0();
      OUTLINED_FUNCTION_349_0();
      sub_1C8D99B98();
      v39 = *v1 == *type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind && v1[1] == loc_1C8DA4348;
      if (v39 || (sub_1C9064C2C() & 1) != 0)
      {
        v40 = v1[2] == loc_1C8DA4350 && v1[3] == loc_1C8DA4358;
        if (v40 || (sub_1C9064C2C() & 1) != 0)
        {
          sub_1C90637EC();
          sub_1C8D99190();
          OUTLINED_FUNCTION_356_0();
          sub_1C9063EAC();
        }
      }

      OUTLINED_FUNCTION_191_3();
      sub_1C8D9913C();
LABEL_51:
      sub_1C8D9913C();
      goto LABEL_52;
  }

  OUTLINED_FUNCTION_267_0();
  OUTLINED_FUNCTION_163();
}

uint64_t ToolKitProtoRestrictionContext.InSet.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoRestrictionContext.InSet(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoRestrictionContext.InInclusiveRange.upperBound.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoRestrictionContext.InInclusiveRange.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoRestrictionContext.InInclusiveRange.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_344_1(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange(0);
  OUTLINED_FUNCTION_221_0();
  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

uint64_t ToolKitProtoRestrictionContext.RepresentableAs.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoRestrictionContext.MeasurementExpressibleAs.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoRestrictionContext.MeasurementExpressibleAs.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs(v1);
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  OUTLINED_FUNCTION_177_2();
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v0 = 0;
  return result;
}

uint64_t sub_1C8DA4E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C8DC0A64(a1, a2, a3);

  return MEMORY[0x1EEE15710](a1, a2, v5);
}

uint64_t sub_1C8DA4F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C8DC0A10(a1, a2, a3);

  return MEMORY[0x1EEE15710](a1, a2, v5);
}

uint64_t sub_1C8DA4F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C8DC09BC(a1, a2, a3);

  return MEMORY[0x1EEE15710](a1, a2, v5);
}

uint64_t ToolKitProtoRestrictionContext.TextTypedWith.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoRestrictionContext.TextTypedWith.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(v1);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *(v0 + 4) = 0;
  *v0 = 0;
  return result;
}

uint64_t ToolKitProtoRestrictionContext.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoRestrictionContext(v0);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoRestrictionContextKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v23 = v3;
  v4 = OUTLINED_FUNCTION_258();
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange(v4);
  v6 = OUTLINED_FUNCTION_9(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_147();
  v8 = OUTLINED_FUNCTION_111();
  v9 = type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs(v8);
  v10 = OUTLINED_FUNCTION_9(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_161_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_233_0();
  v12 = type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0);
  v13 = OUTLINED_FUNCTION_9(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_228();
  type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_120_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_84();
  v17 = type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
  v18 = OUTLINED_FUNCTION_9(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_16_12();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_95_1();
  v20 = *v0;
  v21 = *v23;
  switch(v20 >> 61)
  {
    case 1uLL:
      if (v21 >> 61 == 1)
      {
        swift_projectBox();
        swift_projectBox();
        sub_1C8D990E8();
        sub_1C8D990E8();
        sub_1C8CEB10C(*v1, *v2);
        if (v22)
        {
          sub_1C90637EC();
          sub_1C8D99190();

          sub_1C9063EAC();
          sub_1C8D9913C();
          OUTLINED_FUNCTION_347();
        }

        else
        {

          sub_1C8D9913C();
        }

        sub_1C8D9913C();
      }

      break;
    case 2uLL:
    case 3uLL:
      break;
    case 4uLL:
      if (v21 >> 61 == 4)
      {
        swift_projectBox();
        swift_projectBox();
        sub_1C8D990E8();
        sub_1C8D990E8();

        static ToolKitProtoRestrictionContext.TextTypedWith.== infix(_:_:)();
        sub_1C8D9913C();
        goto LABEL_15;
      }

      break;
    case 5uLL:
      if (v21 >> 61 == 5)
      {
        swift_projectBox();
        swift_projectBox();
        sub_1C8D990E8();
        sub_1C8D990E8();

        OUTLINED_FUNCTION_125();
        static ToolKitProtoRestrictionContext.MeasurementExpressibleAs.== infix(_:_:)();
        sub_1C8D9913C();
        sub_1C8D9913C();
        goto LABEL_12;
      }

      break;
    case 6uLL:
      if (v21 >> 61 == 6)
      {
        swift_projectBox();
        swift_projectBox();
        sub_1C8D990E8();
        sub_1C8D990E8();

        static ToolKitProtoRestrictionContext.InInclusiveRange.== infix(_:_:)();
        sub_1C8D9913C();
LABEL_15:
        sub_1C8D9913C();

        goto LABEL_16;
      }

      break;
    default:
      if (!(v21 >> 61))
      {
        swift_projectBox();
        swift_projectBox();
        sub_1C8D990E8();
        OUTLINED_FUNCTION_112();
        sub_1C8D990E8();

        OUTLINED_FUNCTION_249();
        static ToolKitProtoRestrictionContext.InSet.== infix(_:_:)();
        sub_1C8D9913C();
        OUTLINED_FUNCTION_206();
        sub_1C8D9913C();
LABEL_12:

LABEL_16:
      }

      break;
  }

  OUTLINED_FUNCTION_163();
}

uint64_t ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoContentItemClassDescriptor.LinkCodableContentItemClass.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkCodableContentItemClass(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoContentItemClassDescriptor.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoContentItemClassDescriptor(v0);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoContentItemClassDescriptorKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkCodableContentItemClass(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_0();
  v6 = OUTLINED_FUNCTION_111();
  type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass(v6);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_0();
  v48 = v8;
  v9 = OUTLINED_FUNCTION_111();
  type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass(v9);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7_0();
  v47 = v11;
  v12 = OUTLINED_FUNCTION_111();
  type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(v12);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_40_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_96_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_59_5();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_95_1();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314748, &qword_1C9074E08);
  OUTLINED_FUNCTION_9(v17);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_142();
  v20 = (v0 + *(v19 + 56));
  sub_1C8D990E8();
  OUTLINED_FUNCTION_181();
  sub_1C8D990E8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_35_8();
      sub_1C8D990E8();
      OUTLINED_FUNCTION_287();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_39;
      }

      sub_1C8D99B98();
      OUTLINED_FUNCTION_222_0();
      v38 = v25 && v36 == v37;
      if (v38 || (sub_1C9064C2C() & 1) != 0)
      {
        v39 = *(v3 + 16) == *(v47 + 16) && *(v3 + 24) == *(v47 + 24);
        if (v39 || (sub_1C9064C2C() & 1) != 0)
        {
          OUTLINED_FUNCTION_318_0();
          v40 = sub_1C8D99190();
          OUTLINED_FUNCTION_278_0(v1 + v3, v41, v42, v40);
        }
      }

      OUTLINED_FUNCTION_186_2();
      sub_1C8D9913C();
      goto LABEL_50;
    case 2u:
      OUTLINED_FUNCTION_35_8();
      sub_1C8D990E8();
      OUTLINED_FUNCTION_287();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        OUTLINED_FUNCTION_273();
        goto LABEL_39;
      }

      sub_1C8D99B98();
      OUTLINED_FUNCTION_222_0();
      v25 = v25 && v23 == v24;
      if (v25 || (sub_1C9064C2C() & 1) != 0)
      {
        v26 = *(v2 + 16) == *(v48 + 16) && *(v2 + 24) == *(v48 + 24);
        if (v26 || (sub_1C9064C2C() & 1) != 0)
        {
          OUTLINED_FUNCTION_318_0();
          v27 = sub_1C8D99190();
          OUTLINED_FUNCTION_278_0(v1 + v2, v28, v29, v27);
        }
      }

      OUTLINED_FUNCTION_188_1();
      sub_1C8D9913C();
      goto LABEL_50;
    case 3u:
      OUTLINED_FUNCTION_35_8();
      sub_1C8D990E8();
      OUTLINED_FUNCTION_287();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        OUTLINED_FUNCTION_153_1();
LABEL_39:
        sub_1C8D9913C();
        goto LABEL_40;
      }

      sub_1C8D99B98();
      OUTLINED_FUNCTION_222_0();
      v32 = v25 && v30 == v31;
      if (v32 || (sub_1C9064C2C() & 1) != 0)
      {
        OUTLINED_FUNCTION_287_0();
        v33 = sub_1C8D99190();
        OUTLINED_FUNCTION_278_0(v1 + v4, v34, v35, v33);
      }

      OUTLINED_FUNCTION_187_2();
      sub_1C8D9913C();
LABEL_50:
      sub_1C8D9913C();
      goto LABEL_51;
    default:
      OUTLINED_FUNCTION_35_8();
      sub_1C8D990E8();
      v22 = *v1;
      v21 = v1[1];
      OUTLINED_FUNCTION_287();
      if (swift_getEnumCaseMultiPayload())
      {

LABEL_40:
        sub_1C8D16D78(v0, &qword_1EC314748, &qword_1C9074E08);
      }

      else
      {
        if (v22 != *v20 || v21 != v20[1])
        {
          v44 = OUTLINED_FUNCTION_254();
          OUTLINED_FUNCTION_335_0(v44, v45, v46);
        }

LABEL_51:
        OUTLINED_FUNCTION_231();
        sub_1C8D9913C();
      }

      OUTLINED_FUNCTION_163();
      return;
  }
}

uint64_t ToolKitProtoComparisonPredicate.property.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoComparisonPredicate(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoComparisonPredicate.comparison.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoComparisonPredicate(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoComparisonPredicate.contentItemClass.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoComparisonPredicate(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.Pair.second.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.Pair.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.Pair.init()()
{
  v0 = OUTLINED_FUNCTION_386();
  v1 = type metadata accessor for ToolKitProtoTypedValue(v0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.Pair.init(first:second:)()
{
  v0 = OUTLINED_FUNCTION_75_1();
  v1 = type metadata accessor for ToolKitProtoTypedValue(v0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  OUTLINED_FUNCTION_311_0();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_209();
  sub_1C8DB483C();
  return sub_1C8DB483C();
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.Template.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template(v0);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v3 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v4 = OUTLINED_FUNCTION_9(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_216();
  v45 = v13;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_216();
  v44 = v15;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_147();
  v20 = OUTLINED_FUNCTION_27_0(v19);
  type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(v20);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44_8();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_91_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_92_2();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_96_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_40_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_59_5();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_97_2();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_311();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_66();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC314770, &qword_1C9074E30);
  OUTLINED_FUNCTION_9(v34);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_51();
  sub_1C8D990E8();
  sub_1C8D990E8();
  OUTLINED_FUNCTION_209();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_18();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_151_2() != 1)
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_5_18();
      sub_1C8D99B98();
      v38 = OUTLINED_FUNCTION_100();
      static ToolKitProtoTypeInstance.== infix(_:_:)(v38, v39);
      OUTLINED_FUNCTION_15_13();
      sub_1C8D9913C();
      goto LABEL_34;
    case 2u:
      OUTLINED_FUNCTION_4_18();
      sub_1C8D990E8();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_36;
      }

      sub_1C8D99B98();
      v36 = OUTLINED_FUNCTION_253();
      static ToolKitProtoTypeInstance.== infix(_:_:)(v36, v37);
      OUTLINED_FUNCTION_15_13();
      sub_1C8D9913C();
      OUTLINED_FUNCTION_94();
      sub_1C8D9913C();
      OUTLINED_FUNCTION_71_3();
      goto LABEL_35;
    case 3u:
      OUTLINED_FUNCTION_4_18();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_151_2() != 3)
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_5_18();
      sub_1C8D99B98();
      static ToolKitProtoTypeInstance.== infix(_:_:)(v1, v44);
      OUTLINED_FUNCTION_15_13();
      sub_1C8D9913C();
      goto LABEL_34;
    case 4u:
      OUTLINED_FUNCTION_4_18();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_151_2() != 4)
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_5_18();
      sub_1C8D99B98();
      static ToolKitProtoTypeInstance.== infix(_:_:)(v2, v45);
      OUTLINED_FUNCTION_15_13();
      sub_1C8D9913C();
      goto LABEL_34;
    case 5u:
      OUTLINED_FUNCTION_4_18();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_151_2() != 5)
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_5_18();
      sub_1C8D99B98();
      v40 = OUTLINED_FUNCTION_347();
      static ToolKitProtoTypeInstance.== infix(_:_:)(v40, v41);
      OUTLINED_FUNCTION_15_13();
      sub_1C8D9913C();
      goto LABEL_34;
    case 6u:
      OUTLINED_FUNCTION_4_18();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_151_2() == 6)
      {
        goto LABEL_33;
      }

      goto LABEL_36;
    case 7u:
      OUTLINED_FUNCTION_4_18();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_151_2() == 7)
      {
        goto LABEL_33;
      }

      goto LABEL_36;
    case 8u:
      OUTLINED_FUNCTION_4_18();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_151_2() == 8)
      {
        goto LABEL_33;
      }

      goto LABEL_36;
    case 9u:
      OUTLINED_FUNCTION_4_18();
      OUTLINED_FUNCTION_349_0();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_151_2() == 9)
      {
        goto LABEL_33;
      }

      goto LABEL_36;
    case 0xAu:
      OUTLINED_FUNCTION_4_18();
      OUTLINED_FUNCTION_302_0();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_151_2() == 10)
      {
        goto LABEL_33;
      }

      goto LABEL_36;
    case 0xBu:
      OUTLINED_FUNCTION_4_18();
      OUTLINED_FUNCTION_341_0();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_151_2() == 11)
      {
        goto LABEL_33;
      }

      goto LABEL_36;
    case 0xCu:
      OUTLINED_FUNCTION_4_18();
      OUTLINED_FUNCTION_338_0();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_151_2() == 12)
      {
        goto LABEL_33;
      }

      goto LABEL_36;
    case 0xDu:
      if (OUTLINED_FUNCTION_328_0() == 13)
      {
        goto LABEL_27;
      }

      goto LABEL_37;
    case 0xEu:
      if (OUTLINED_FUNCTION_328_0() != 14)
      {
        goto LABEL_37;
      }

      goto LABEL_27;
    case 0xFu:
      if (OUTLINED_FUNCTION_328_0() != 15)
      {
        goto LABEL_37;
      }

LABEL_27:
      OUTLINED_FUNCTION_71_3();
      sub_1C8D9913C();
      goto LABEL_38;
    default:
      OUTLINED_FUNCTION_4_18();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_151_2())
      {
LABEL_36:
        OUTLINED_FUNCTION_158_3();
        sub_1C8D9913C();
LABEL_37:
        sub_1C8D16D78(v0, &dword_1EC314770, &qword_1C9074E30);
      }

      else
      {
LABEL_33:
        OUTLINED_FUNCTION_5_18();
        sub_1C8D99B98();
        v42 = OUTLINED_FUNCTION_212();
        static ToolKitProtoTypeInstance.== infix(_:_:)(v42, v43);
        OUTLINED_FUNCTION_15_13();
        sub_1C8D9913C();
LABEL_34:
        sub_1C8D9913C();
        OUTLINED_FUNCTION_71_3();
LABEL_35:
        sub_1C8D9913C();
      }

LABEL_38:
      OUTLINED_FUNCTION_163();
      return;
  }
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoComparisonPredicate.Comparison(v0);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_164();
  v102 = v23;
  v103 = v22;
  v24 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  v25 = OUTLINED_FUNCTION_9(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_7_0();
  v97 = v26;
  v27 = OUTLINED_FUNCTION_111();
  v28 = type metadata accessor for ToolKitProtoTypedValue(v27);
  v29 = OUTLINED_FUNCTION_9(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_12();
  v96 = v30;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_216();
  v95 = v32;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_216();
  v94 = v34;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_216();
  v93 = v36;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_216();
  v92 = v38;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_216();
  v91 = v40;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_216();
  v90 = v42;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_216();
  v89 = v44;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_216();
  v88 = v46;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_216();
  v87[3] = v48;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_216();
  v87[2] = v50;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_147();
  v53 = OUTLINED_FUNCTION_27_0(v52);
  type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(v53);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_12();
  v101 = v55;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_44_8();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_91_1();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_92_2();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_216();
  v100 = v60;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_216();
  v99 = v62;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_216();
  v98 = v64;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_97_2();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_120_1();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_40_0();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_282_0();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_311();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_84();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314778, &qword_1C9074E38);
  OUTLINED_FUNCTION_9(v71);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v72);
  v74 = v87 - v73;
  v76 = *(v75 + 56);
  sub_1C8D990E8();
  v103 = v76;
  sub_1C8D990E8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_3_23();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_152_2() != 1)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    case 2u:
      OUTLINED_FUNCTION_3_23();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_152_2() != 2)
      {
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_6_16();
      sub_1C8D99B98();
      v78 = OUTLINED_FUNCTION_249();
      static ToolKitProtoTypedValue.== infix(_:_:)(v78, v79);
      OUTLINED_FUNCTION_14_17();
      sub_1C8D9913C();
      goto LABEL_35;
    case 3u:
      OUTLINED_FUNCTION_3_23();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_152_2() != 3)
      {
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_6_16();
      v80 = v88;
      sub_1C8D99B98();
      static ToolKitProtoTypedValue.== infix(_:_:)(v21, v80);
      OUTLINED_FUNCTION_14_17();
      sub_1C8D9913C();
      goto LABEL_35;
    case 4u:
      OUTLINED_FUNCTION_3_23();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_152_2() != 4)
      {
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_6_16();
      v77 = v89;
      sub_1C8D99B98();
      static ToolKitProtoTypedValue.== infix(_:_:)(v20, v77);
      OUTLINED_FUNCTION_14_17();
      sub_1C8D9913C();
      goto LABEL_35;
    case 5u:
      OUTLINED_FUNCTION_3_23();
      sub_1C8D990E8();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_6_16();
      sub_1C8D99B98();
      v81 = OUTLINED_FUNCTION_253();
      static ToolKitProtoTypedValue.== infix(_:_:)(v81, v82);
      OUTLINED_FUNCTION_14_17();
      sub_1C8D9913C();
      OUTLINED_FUNCTION_145();
      goto LABEL_35;
    case 6u:
      OUTLINED_FUNCTION_3_23();
      OUTLINED_FUNCTION_348_0();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_152_2() == 6)
      {
        goto LABEL_33;
      }

      goto LABEL_36;
    case 7u:
      OUTLINED_FUNCTION_3_23();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_152_2() == 7)
      {
        goto LABEL_33;
      }

      goto LABEL_36;
    case 8u:
      OUTLINED_FUNCTION_3_23();
      OUTLINED_FUNCTION_350_0();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_152_2() == 8)
      {
        goto LABEL_33;
      }

      goto LABEL_36;
    case 9u:
      OUTLINED_FUNCTION_3_23();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_152_2() == 9)
      {
        goto LABEL_33;
      }

      goto LABEL_36;
    case 0xAu:
      OUTLINED_FUNCTION_3_23();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_152_2() == 10)
      {
        goto LABEL_33;
      }

      goto LABEL_36;
    case 0xBu:
      OUTLINED_FUNCTION_3_23();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_152_2() != 11)
      {
        goto LABEL_36;
      }

LABEL_33:
      OUTLINED_FUNCTION_6_16();
      sub_1C8D99B98();
      v83 = OUTLINED_FUNCTION_100();
      static ToolKitProtoTypedValue.== infix(_:_:)(v83, v84);
      OUTLINED_FUNCTION_14_17();
      goto LABEL_34;
    case 0xCu:
      OUTLINED_FUNCTION_3_23();
      OUTLINED_FUNCTION_342_0();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_152_2() != 12)
      {
        goto LABEL_36;
      }

      sub_1C8D99B98();
      OUTLINED_FUNCTION_100();
      static ToolKitProtoComparisonPredicate.Comparison.Pair.== infix(_:_:)();
LABEL_34:
      sub_1C8D9913C();
      goto LABEL_35;
    case 0xDu:
      if (OUTLINED_FUNCTION_329_0() == 13)
      {
        goto LABEL_27;
      }

      goto LABEL_37;
    case 0xEu:
      if (OUTLINED_FUNCTION_329_0() != 14)
      {
        goto LABEL_37;
      }

      goto LABEL_27;
    case 0xFu:
      if (OUTLINED_FUNCTION_329_0() != 15)
      {
        goto LABEL_37;
      }

LABEL_27:
      OUTLINED_FUNCTION_158_3();
      sub_1C8D9913C();
      goto LABEL_38;
    default:
      OUTLINED_FUNCTION_3_23();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_152_2())
      {
LABEL_3:
        OUTLINED_FUNCTION_13_13();
LABEL_36:
        sub_1C8D9913C();
LABEL_37:
        sub_1C8D16D78(v74, &qword_1EC314778, &qword_1C9074E38);
      }

      else
      {
        OUTLINED_FUNCTION_6_16();
        OUTLINED_FUNCTION_261();
        v85 = OUTLINED_FUNCTION_347();
        static ToolKitProtoTypedValue.== infix(_:_:)(v85, v86);
        OUTLINED_FUNCTION_14_17();
        sub_1C8D9913C();
LABEL_35:
        sub_1C8D9913C();
        OUTLINED_FUNCTION_158_3();
        sub_1C8D9913C();
      }

LABEL_38:
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_163();
      return;
  }
}

uint64_t ToolKitProtoComparisonPredicate.Template.property.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoComparisonPredicate.Template(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoComparisonPredicate.Template.comparisonTemplate.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoComparisonPredicate.Template(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoComparisonPredicate.Template.contentItemClass.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoComparisonPredicate.Template(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoComparisonPredicate.Template.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoComparisonPredicate.Template(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8DA79E4()
{
  v0 = OUTLINED_FUNCTION_61_0();
  v1(v0);
  sub_1C90637EC();
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_60_4();

  return v3(v2);
}

uint64_t sub_1C8DA7A68()
{
  v0 = OUTLINED_FUNCTION_258();
  v1(v0);
  sub_1C90637EC();
  OUTLINED_FUNCTION_24_1();
  v2 = OUTLINED_FUNCTION_168_2();

  return v3(v2);
}

uint64_t ToolKitProtoComparisonPredicate.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoComparisonPredicate(v0);
  return OUTLINED_FUNCTION_104();
}

void sub_1C8DA7B40()
{
  v1 = OUTLINED_FUNCTION_47_5();
  v2(v1);
  v3 = OUTLINED_FUNCTION_162_2();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(v3);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v0(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_346_0();
}

void sub_1C8DA7C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_259_0();
  v24 = v23;
  v43 = v25;
  v27 = v26;
  v29 = v28;
  v30(0);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  v24(0);
  OUTLINED_FUNCTION_317_0();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  sub_1C8DB483C();
  sub_1C8DB483C();
  *v29 = v27;
  v29[1] = v43;
  sub_1C8DB483C();
  OUTLINED_FUNCTION_258_0();
}

uint64_t sub_1C8DA7D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C8DC0968(a1, a2, a3);

  return MEMORY[0x1EEE15710](a1, a2, v5);
}

uint64_t ToolKitProtoCompoundPredicate.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoCompoundPredicate(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoCompoundPredicate.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoCompoundPredicate(v1);
  OUTLINED_FUNCTION_221_0();
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v0 = 0;
  *(v0 + 8) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t ToolKitProtoStringSearchPredicate.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoStringSearchPredicate(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoIdSearchPredicate.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoIdSearchPredicate(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoValueSearchPredicate.Template.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoValueSearchPredicate.Template(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoValueSearchPredicate.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoValueSearchPredicate(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoSearchableItemPredicate.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoSearchableItemPredicate(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoQuery.predicate.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoQuery(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoQuery.limit.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoQuery(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8DA84DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C8DC0914(a1, a2, a3);

  return MEMORY[0x1EEE15710](a1, a2, v5);
}

uint64_t ToolKitProtoQuery.AnyPredicate.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoQuery.AnyPredicate(v0);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoQuery.ToolKitProtoAnyPredicateKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  type metadata accessor for ToolKitProtoValueSearchPredicate(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_0();
  v7 = OUTLINED_FUNCTION_111();
  valid = type metadata accessor for ToolKitProtoValidPredicate(v7);
  v9 = OUTLINED_FUNCTION_9(valid);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_7_0();
  v10 = OUTLINED_FUNCTION_111();
  type metadata accessor for ToolKitProtoSearchableItemPredicate(v10);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_7_0();
  v12 = OUTLINED_FUNCTION_111();
  v13 = type metadata accessor for ToolKitProtoSuggestedPredicate(v12);
  v14 = OUTLINED_FUNCTION_9(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_7_0();
  v15 = OUTLINED_FUNCTION_111();
  v16 = type metadata accessor for ToolKitProtoAllPredicate(v15);
  v17 = OUTLINED_FUNCTION_9(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_7_0();
  v18 = OUTLINED_FUNCTION_111();
  type metadata accessor for ToolKitProtoIdSearchPredicate(v18);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_7_0();
  v20 = OUTLINED_FUNCTION_111();
  type metadata accessor for ToolKitProtoStringSearchPredicate(v20);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_7_0();
  v22 = OUTLINED_FUNCTION_111();
  v58 = type metadata accessor for ToolKitProtoCompoundPredicate(v22);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_7_0();
  v59 = v24;
  v25 = OUTLINED_FUNCTION_111();
  v26 = type metadata accessor for ToolKitProtoComparisonPredicate(v25);
  v27 = OUTLINED_FUNCTION_9(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_7_0();
  v28 = OUTLINED_FUNCTION_111();
  type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(v28);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_161_2();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44_8();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_311();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_97_2();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_91_1();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_59_5();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_228();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314790, &unk_1C9074E50);
  OUTLINED_FUNCTION_9(v38);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_51();
  sub_1C8D990E8();
  sub_1C8D990E8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_8_20();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_280_0() != 1)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_241_0();
      sub_1C8D99B98();
      if (*v5 == *v59)
      {
        sub_1C8CEF548(*(v5 + 1), *(v59 + 1));
        if (v51)
        {
          v52 = *(v58 + 24);
          sub_1C90637EC();
          v53 = OUTLINED_FUNCTION_270_1();
          OUTLINED_FUNCTION_269_1(&v5[v52], v54, v55, v53);
        }
      }

      OUTLINED_FUNCTION_180_0();
      sub_1C8D9913C();
      goto LABEL_51;
    case 2u:
      OUTLINED_FUNCTION_8_20();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_280_0() != 2)
      {
        OUTLINED_FUNCTION_255_0();
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_241_0();
      sub_1C8D99B98();
      OUTLINED_FUNCTION_222_0();
      v42 = v42 && v40 == v41;
      if (v42 || (sub_1C9064C2C() & 1) != 0)
      {
        OUTLINED_FUNCTION_279_0();
        v43 = OUTLINED_FUNCTION_270_1();
        OUTLINED_FUNCTION_269_1(v4 + v0, v44, v45, v43);
      }

      OUTLINED_FUNCTION_181_3();
      sub_1C8D9913C();
LABEL_51:
      sub_1C8D9913C();
      OUTLINED_FUNCTION_22_15();
      sub_1C8D9913C();
      goto LABEL_52;
    case 3u:
      OUTLINED_FUNCTION_8_20();
      OUTLINED_FUNCTION_302_0();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_280_0() != 3)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_241_0();
      OUTLINED_FUNCTION_348_0();
      sub_1C8D99B98();
      OUTLINED_FUNCTION_159_3();
      v48 = v42 && v46 == v47;
      if (v48 || (sub_1C9064C2C() & 1) != 0)
      {
        sub_1C8CEB10C(v3[2], v2[2]);
        if (v49)
        {
          sub_1C90637EC();
          v50 = OUTLINED_FUNCTION_270_1();
          OUTLINED_FUNCTION_123_2(v50);
        }
      }

      goto LABEL_37;
    case 4u:
      OUTLINED_FUNCTION_8_20();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_280_0() != 4)
      {
        OUTLINED_FUNCTION_231();
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_241_0();
      sub_1C8D99B98();
      sub_1C90637EC();
      sub_1C8D99190();
      OUTLINED_FUNCTION_117();
      sub_1C9063EAC();
      sub_1C8D9913C();
      OUTLINED_FUNCTION_94();
LABEL_23:
      sub_1C8D9913C();
      OUTLINED_FUNCTION_22_15();
      goto LABEL_48;
    case 5u:
      OUTLINED_FUNCTION_8_20();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_280_0() == 5)
      {
        OUTLINED_FUNCTION_241_0();
        sub_1C8D99B98();
        sub_1C90637EC();
        sub_1C8D99190();
        OUTLINED_FUNCTION_287();
        sub_1C9063EAC();
        sub_1C8D9913C();
        OUTLINED_FUNCTION_93();
        sub_1C8D9913C();
        OUTLINED_FUNCTION_22_15();
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_59_3();
      goto LABEL_44;
    case 6u:
      OUTLINED_FUNCTION_8_20();
      OUTLINED_FUNCTION_341_0();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_280_0() != 6)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_241_0();
      OUTLINED_FUNCTION_350_0();
      sub_1C8D99B98();
      if (MEMORY[0x1CCA7F9A0](*v3, v3[1], *v2, v2[1]))
      {
        goto LABEL_36;
      }

      goto LABEL_37;
    case 7u:
      OUTLINED_FUNCTION_8_20();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_280_0() != 7)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_241_0();
      sub_1C8D99B98();
      sub_1C90637EC();
      sub_1C8D99190();
      sub_1C9063EAC();
      sub_1C8D9913C();
      goto LABEL_23;
    case 8u:
      OUTLINED_FUNCTION_8_20();
      OUTLINED_FUNCTION_338_0();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_280_0() != 8)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_241_0();
      sub_1C8D99B98();
      OUTLINED_FUNCTION_343_0();
      sub_1C8CEE9DC();
      if (v56)
      {
LABEL_36:
        OUTLINED_FUNCTION_279_0();
        v57 = OUTLINED_FUNCTION_270_1();
        OUTLINED_FUNCTION_123_2(v57);
      }

LABEL_37:
      sub_1C8D9913C();
      goto LABEL_51;
    default:
      OUTLINED_FUNCTION_8_20();
      sub_1C8D990E8();
      if (OUTLINED_FUNCTION_280_0())
      {
        OUTLINED_FUNCTION_153_1();
LABEL_44:
        sub_1C8D9913C();
        sub_1C8D16D78(v1, &qword_1EC314790, &unk_1C9074E50);
      }

      else
      {
        OUTLINED_FUNCTION_241_0();
        sub_1C8D99B98();
        static ToolKitProtoComparisonPredicate.== infix(_:_:)();
        sub_1C8D9913C();
        sub_1C8D9913C();
        OUTLINED_FUNCTION_22_15();
LABEL_48:
        sub_1C8D9913C();
      }

LABEL_52:
      OUTLINED_FUNCTION_267_0();
      OUTLINED_FUNCTION_163();
      return;
  }
}

uint64_t ToolKitProtoQuery.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoQuery(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoQuery.init()()
{
  v2 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoQuery(v2);
  v3 = OUTLINED_FUNCTION_240_0();
  type metadata accessor for ToolKitProtoQuery.AnyPredicate(v3);
  OUTLINED_FUNCTION_115();
  v8 = __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v9 = &v0[*(v1 + 24)];
  *v9 = 0;
  v9[8] = 1;
  result = OUTLINED_FUNCTION_289_0(v8);
  *v0 = 0;
  return result;
}

uint64_t ToolKitProtoRuntimePlatformVersion.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoRuntimePlatformVersion(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoRuntimePlatformVersion.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoRuntimePlatformVersion(v1);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *(v0 + 5) = 0;
  *v0 = 0;
  return result;
}

uint64_t sub_1C8DA9324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C8DC08C0(a1, a2, a3);

  return MEMORY[0x1EEE15710](a1, a2, v5);
}

uint64_t ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.introducingVersion.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.deprecatingVersion.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.obsoletingVersion.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(v1);
  v2 = OUTLINED_FUNCTION_231_0();
  v3 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(v2);
  v4 = OUTLINED_FUNCTION_77_1();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v3);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v3);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v0 = 0;
  return result;
}

uint64_t sub_1C8DA96D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C8DC086C(a1, a2, a3);

  return MEMORY[0x1EEE15710](a1, a2, v5);
}

uint64_t ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(v0);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(v1);
  OUTLINED_FUNCTION_221_0();
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_145_0();
  *(v0 + 16) = 0;
}

uint64_t ToolKitProtoRuntimeRequirement.DeviceCapability.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability(v0);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_164();
  a19 = v22;
  a20 = v23;
  v24 = OUTLINED_FUNCTION_290_0();
  type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(v24);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v25);
  v26 = OUTLINED_FUNCTION_29_9();
  type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind(v26);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &a9 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314798, &qword_1C9074E68);
  OUTLINED_FUNCTION_9(v31);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_142();
  sub_1C8D990E8();
  OUTLINED_FUNCTION_325_0();
  OUTLINED_FUNCTION_117();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_159();
    sub_1C8D990E8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D9913C();
      goto LABEL_15;
    }

LABEL_6:
    sub_1C8D16D78(v20, &qword_1EC314798, &qword_1C9074E68);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_159();
  sub_1C8D990E8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_59_3();
    sub_1C8D9913C();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_314_0();
  sub_1C8D99B98();
  OUTLINED_FUNCTION_232_0();
  v35 = v35 && v33 == v34;
  if (v35 || (sub_1C9064C2C()) && v30[16] == *(v21 + 16))
  {
    sub_1C90637EC();
    v36 = sub_1C8D99190();
    OUTLINED_FUNCTION_226_0(v36);
  }

  OUTLINED_FUNCTION_179_1();
  sub_1C8D9913C();
  OUTLINED_FUNCTION_119();
  sub_1C8D9913C();
  OUTLINED_FUNCTION_231();
  sub_1C8D9913C();
LABEL_15:
  OUTLINED_FUNCTION_163();
}

uint64_t ToolKitProtoRuntimeRequirement.FeatureFlag.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(v0);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoRuntimeRequirement.FeatureFlag.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(v1);
  OUTLINED_FUNCTION_177_2();
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_93_2();
  *(v0 + 32) = 0;
}

uint64_t ToolKitProtoRuntimeRequirement.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoRuntimeRequirement(v0);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoRuntimeRequirementKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v6 = OUTLINED_FUNCTION_339_0(v4, v5);
  v7 = type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(v6);
  v8 = OUTLINED_FUNCTION_9(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7_0();
  v9 = OUTLINED_FUNCTION_111();
  v10 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability(v9);
  v11 = OUTLINED_FUNCTION_9(v10);
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_29_9();
  v13 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(v12);
  v14 = OUTLINED_FUNCTION_9(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15();
  v15 = OUTLINED_FUNCTION_284_0();
  type metadata accessor for ToolKitProtoRuntimeRequirementKind(v15);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_160_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_120_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_59_5();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_228();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147A0, &qword_1C9074E70);
  OUTLINED_FUNCTION_9(v20);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_142();
  sub_1C8D990E8();
  sub_1C8D990E8();
  OUTLINED_FUNCTION_117();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_34_8();
      sub_1C8D990E8();
      OUTLINED_FUNCTION_262_0();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_169_1();
      sub_1C8D99B98();
      static ToolKitProtoRuntimeRequirement.DeviceCapability.== infix(_:_:)(v3, v1);
      sub_1C8D9913C();
      goto LABEL_13;
    case 2u:
      OUTLINED_FUNCTION_34_8();
      sub_1C8D990E8();
      OUTLINED_FUNCTION_262_0();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_169_1();
      sub_1C8D99B98();
      static ToolKitProtoRuntimeRequirement.FeatureFlag.== infix(_:_:)(v2);
      sub_1C8D9913C();
      goto LABEL_13;
    case 3u:
      OUTLINED_FUNCTION_34_8();
      sub_1C8D990E8();
      OUTLINED_FUNCTION_262_0();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    default:
      OUTLINED_FUNCTION_34_8();
      sub_1C8D990E8();
      OUTLINED_FUNCTION_262_0();
      if (swift_getEnumCaseMultiPayload())
      {
        OUTLINED_FUNCTION_153_1();
LABEL_10:
        sub_1C8D9913C();
LABEL_11:
        sub_1C8D16D78(v0, &qword_1EC3147A0, &qword_1C9074E70);
      }

      else
      {
        OUTLINED_FUNCTION_169_1();
        sub_1C8D99B98();
        static ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.== infix(_:_:)();
        sub_1C8D9913C();
LABEL_13:
        sub_1C8D9913C();
LABEL_14:
        OUTLINED_FUNCTION_231();
        sub_1C8D9913C();
      }

      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_163();
      return;
  }
}

uint64_t ToolKitProtoToolSummaryString.Component.componentKind.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1C8D06DE0(v2, v3, v4);
}

uint64_t ToolKitProtoToolSummaryString.Component.componentKind.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1C8D06DF8(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t ToolKitProtoToolSummaryString.Component.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoToolSummaryString.Component(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoToolSummaryString.Component.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  type metadata accessor for ToolKitProtoToolSummaryString.Component(0);
  OUTLINED_FUNCTION_210_0();
  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

uint64_t static ToolKitProtoToolSummaryString.ToolKitProtoComponentKind.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v16 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        v9 = OUTLINED_FUNCTION_335_0(v16, v2, v5);
        v18 = OUTLINED_FUNCTION_100();
        v19 = OUTLINED_FUNCTION_143_1(v18);
        OUTLINED_FUNCTION_143_1(v19);
        j_j__OUTLINED_FUNCTION_265();
        OUTLINED_FUNCTION_100();
        goto LABEL_16;
      }

      v22 = OUTLINED_FUNCTION_143_1(v16);
      OUTLINED_FUNCTION_143_1(v22);
      j_j__OUTLINED_FUNCTION_265();
      OUTLINED_FUNCTION_95_0();
      j_j__OUTLINED_FUNCTION_265();
      return 1;
    }

LABEL_9:
    v12 = OUTLINED_FUNCTION_100();
    v13 = OUTLINED_FUNCTION_143_1(v12);
    OUTLINED_FUNCTION_143_1(v13);
    j_j__OUTLINED_FUNCTION_265();
    OUTLINED_FUNCTION_100();
    j_j__OUTLINED_FUNCTION_265();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 == v5 && v2 == v4)
  {
    v14 = 1;
    v20 = OUTLINED_FUNCTION_56_1();
    j_j__OUTLINED_FUNCTION_264(v20);
    v21 = OUTLINED_FUNCTION_56_1();
    j_j__OUTLINED_FUNCTION_264(v21);
    OUTLINED_FUNCTION_56_1();
    j_j__OUTLINED_FUNCTION_265();
    OUTLINED_FUNCTION_56_1();
    j_j__OUTLINED_FUNCTION_265();
    return v14;
  }

  v7 = OUTLINED_FUNCTION_95_0();
  v9 = OUTLINED_FUNCTION_335_0(v7, v8, v5);
  v10 = OUTLINED_FUNCTION_100();
  j_j__OUTLINED_FUNCTION_264(v10);
  v11 = OUTLINED_FUNCTION_56_1();
  j_j__OUTLINED_FUNCTION_264(v11);
  OUTLINED_FUNCTION_56_1();
  j_j__OUTLINED_FUNCTION_265();
  OUTLINED_FUNCTION_100();
LABEL_16:
  j_j__OUTLINED_FUNCTION_265();
  return v9 & 1;
}

uint64_t ToolKitProtoToolSummaryString.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoToolSummaryString(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoToolInvocationSignature.ListOfRelations.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoToolInvocationSignature.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoToolInvocationSignature(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoToolInvocationSignature.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoToolInvocationSignature(v1);
  OUTLINED_FUNCTION_177_2();
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  v2 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = v2;
  type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0);
  result = sub_1C9063E2C();
  v0[2] = result;
  return result;
}

uint64_t sub_1C8DAA74C()
{
  v4 = OUTLINED_FUNCTION_64_1();
  v5(v4);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v3 = v2;
  v3[1] = v1;
  v3[2] = v0;
  return result;
}

uint64_t ToolKitProtoSampleInvocationDefinition.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoSampleInvocationDefinition(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoSampleInvocationDefinition.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoSampleInvocationDefinition(v1);
  v0[2] = 0;
  v0[3] = 0;
  OUTLINED_FUNCTION_177_2();
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  v3 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = v3;
  return result;
}

uint64_t ToolKitProtoSampleInvocationDefinition.init(phrases:expectedResult:negativePhrases:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OUTLINED_FUNCTION_65_2();
  type metadata accessor for ToolKitProtoSampleInvocationDefinition(v9);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  v7[2] = v5;
  v7[3] = v4;
  *v7 = v6;
  v7[1] = a4;
  return result;
}

uint64_t ToolKitProtoAssistantSchemaVersion.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoAssistantSchemaVersion(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoAssistantSchemaVersion.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoAssistantSchemaVersion(v1);
  OUTLINED_FUNCTION_177_2();
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v0 = 0;
  v0[1] = 0;
  v0[2] = 0;
  return result;
}

uint64_t ToolKitProtoAssistantSchemaIdentifier.version.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoAssistantSchemaIdentifier.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(v0);
  return OUTLINED_FUNCTION_104();
}

void sub_1C8DAAB60()
{
  v2 = OUTLINED_FUNCTION_47_5();
  v3(v2);
  v0(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_346_0();
  *(v1 + 16) = 0;
  *(v1 + 24) = v8;
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.identifier.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.description_p.getter()
{
  type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
  OUTLINED_FUNCTION_27_6();
  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.description_p.setter()
{
  v3 = OUTLINED_FUNCTION_55_3();
  type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(v3);
  result = OUTLINED_FUNCTION_264_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.description_p.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.outputType.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(v0);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoAssistantToolSchemaDefinition.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(v1);
  v3 = OUTLINED_FUNCTION_304_0();
  v4 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(v3);
  OUTLINED_FUNCTION_53_5(v4);
  OUTLINED_FUNCTION_40_5(*(v2 + 32));
  v5 = OUTLINED_FUNCTION_303_0();
  v6 = type metadata accessor for ToolKitProtoTypeInstance(v5);
  v7 = OUTLINED_FUNCTION_53_5(v6);
  OUTLINED_FUNCTION_362_0(v7);
  OUTLINED_FUNCTION_145_0();
  v8 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = v8;
}

void ToolKitProtoAssistantToolSchemaDefinition.init(identifier:name:description_p:parameters:sampleInvocations:outputType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_301_0();
  v28 = v12;
  v27 = v13;
  v15 = v14;
  OUTLINED_FUNCTION_237_0();
  v16 = OUTLINED_FUNCTION_214_1();
  v17 = type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(v16);
  type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = (v8 + *(v17 + 32));
  OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  sub_1C8DB483C();
  *v8 = v11;
  v8[1] = v10;
  *v22 = v9;
  v22[1] = v15;
  v8[2] = v27;
  v8[3] = v28;
  sub_1C8DB483C();
  OUTLINED_FUNCTION_183_0();
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.Entity.identifier.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.Entity.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.Entity.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8DAB20C(uint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  v6 = OUTLINED_FUNCTION_214_1();
  v7(v6);
  v8 = OUTLINED_FUNCTION_286_0();
  a2(v8);
  OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  a3(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v3 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.Enumeration.identifier.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.Enumeration.displayRepresentation.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.Enumeration.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition(v0);
  return OUTLINED_FUNCTION_104();
}

void static ToolKitProtoAssistantTypeSchemaDefinitionKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v1 = OUTLINED_FUNCTION_290_0();
  v2 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(v1);
  v3 = OUTLINED_FUNCTION_9(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v4 = OUTLINED_FUNCTION_31();
  v5 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(v4);
  v6 = OUTLINED_FUNCTION_9(v5);
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_29_9();
  type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(v7);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16_12();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_66();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147B0, &unk_1C9074E80);
  OUTLINED_FUNCTION_9(v10);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_142();
  sub_1C8D990E8();
  OUTLINED_FUNCTION_325_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_159();
    sub_1C8D990E8();
    if (OUTLINED_FUNCTION_359_0() == 1)
    {
      OUTLINED_FUNCTION_314_0();
      sub_1C8D99B98();
      OUTLINED_FUNCTION_119();
      static ToolKitProtoAssistantTypeSchemaDefinition.Enumeration.== infix(_:_:)();
      sub_1C8D9913C();
      OUTLINED_FUNCTION_100();
LABEL_8:
      sub_1C8D9913C();
      OUTLINED_FUNCTION_231();
      sub_1C8D9913C();
      goto LABEL_9;
    }
  }

  else
  {
    OUTLINED_FUNCTION_159();
    sub_1C8D990E8();
    if (OUTLINED_FUNCTION_359_0() != 1)
    {
      OUTLINED_FUNCTION_314_0();
      sub_1C8D99B98();
      v12 = OUTLINED_FUNCTION_212();
      static ToolKitProtoAssistantTypeSchemaDefinition.Entity.== infix(_:_:)(v12, v13);
      sub_1C8D9913C();
      OUTLINED_FUNCTION_254();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_158_3();
  }

  sub_1C8D9913C();
  sub_1C8D16D78(v0, &qword_1EC3147B0, &unk_1C9074E80);
LABEL_9:
  OUTLINED_FUNCTION_163();
}

uint64_t ToolKitProtoSystemToolProtocol.ConditionallyEnabled.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoSystemToolProtocol.ConditionallyEnabled.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(v1);
  OUTLINED_FUNCTION_210_0();
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v0 = 0;
  return result;
}

uint64_t ToolKitProtoSystemToolProtocol.ConditionallyEnabled.init(persistState:)@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a2 = a1;
  return result;
}

uint64_t ToolKitProtoSystemToolProtocol.PlayVideo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoSystemToolProtocol.EntityUpdating.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoSystemToolProtocol.PropertyUpdater.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoSystemToolProtocol.SiriKitIntent.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent(v0);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoSystemToolProtocol.IntentSideEffect.intentSideEffectKind.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 5);
  *(a1 + 4) = *(v1 + 4);
  *a1 = v2;
  *(a1 + 5) = v3;
}

int *ToolKitProtoSystemToolProtocol.IntentSideEffect.intentSideEffectKind.setter(int *result)
{
  v2 = *result;
  v3 = *(result + 5);
  *(v1 + 4) = *(result + 4);
  *v1 = v2;
  *(v1 + 5) = v3;
  return result;
}

uint64_t ToolKitProtoSystemToolProtocol.IntentSideEffect.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoSystemToolProtocol.IntentSideEffect.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 4) = 256;
  *a1 = 0;
  type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(0);
  OUTLINED_FUNCTION_210_0();
  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

uint64_t static ToolKitProtoSystemToolProtocol.ToolKitProtoIntentSideEffectKind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 4);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 4) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}
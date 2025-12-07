unint64_t sub_1C7450B38()
{
  result = qword_1EC21C138;
  if (!qword_1EC21C138)
  {
    result = swift_getWitnessTable(byte_1C758C744, &type metadata for AssetStateDiagnosticsGenerator.AnnotatedAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21C138);
  }

  return result;
}

unint64_t sub_1C7450B90()
{
  result = qword_1EC21C140;
  if (!qword_1EC21C140)
  {
    result = swift_getWitnessTable(aP_0, &type metadata for AssetStateDiagnosticsGenerator.AnnotatedAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21C140);
  }

  return result;
}

unint64_t sub_1C7450BE8()
{
  result = qword_1EC21C148;
  if (!qword_1EC21C148)
  {
    result = swift_getWitnessTable(aUa_0, &type metadata for AssetStateDiagnosticsGenerator.AnnotatedAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21C148);
  }

  return result;
}

void sub_1C7450C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a1;
  v8 = *(a1 + 16);
  if (v8)
  {
    v49 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v8, 0, a4, a5, a6, a7);
    v46 = v49;
    v10 = sub_1C70D4544();
    v12 = v11;
    v13 = 0;
    v14 = v7 + 64;
    v40 = v11;
    v41 = v8;
    v39 = v7 + 72;
    v42 = v7 + 64;
    v43 = v7;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v7 + 32))
    {
      v15 = v10 >> 6;
      if ((*(v14 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_45;
      }

      if (*(v7 + 36) != v12)
      {
        goto LABEL_46;
      }

      v44 = v9;
      v45 = v13 + 1;
      v16 = *(*(v7 + 48) + v10);
      sub_1C75504FC();
      v17 = 0xE400000000000000;
      v18 = 1701736302;
      switch(v16)
      {
        case 1:
          v17 = 0xE600000000000000;
          v19 = 1936876912;
          goto LABEL_25;
        case 2:
          v18 = 0x67416E6F73726570;
          v21 = 0x6570795465;
          goto LABEL_16;
        case 3:
          v18 = 1702125924;
          break;
        case 4:
          v17 = 0xE900000000000079;
          v18 = 0x6144664F74726170;
          break;
        case 5:
          v17 = 0xEA00000000006B65;
          v18 = 0x6557664F74726170;
          break;
        case 6:
          v17 = 0xE600000000000000;
          v19 = 1935762803;
LABEL_25:
          v18 = v19 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
          break;
        case 7:
          v17 = 0xE800000000000000;
          v20 = 1633906540;
          goto LABEL_20;
        case 8:
          v18 = 0x4C636972656E6567;
          v17 = 0xEF6E6F697461636FLL;
          break;
        case 9:
          v18 = 1952540791;
          break;
        case 10:
          v18 = 0x764563696C627570;
          v17 = 0xEB00000000746E65;
          break;
        case 11:
          v18 = 0x6C616E6F73726570;
          v21 = 0x746E657645;
LABEL_16:
          v17 = v21 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 12:
          v18 = 0x746954636973756DLL;
          v17 = 0xEA0000000000656CLL;
          break;
        case 13:
          v17 = 0xEB00000000747369;
          v18 = 0x747241636973756DLL;
          break;
        case 14:
          v17 = 0xEA00000000006572;
          v18 = 0x6E6547636973756DLL;
          break;
        case 15:
          v18 = 1685024621;
          break;
        case 16:
          v17 = 0xE800000000000000;
          v20 = 1634891108;
LABEL_20:
          v18 = v20 | 0x6E6F697400000000;
          break;
        case 17:
          v17 = 0xE600000000000000;
          v18 = 0x706972547369;
          break;
        case 18:
          v18 = 0x6D69546C6C417369;
          v17 = 0xE900000000000065;
          break;
        case 19:
          v17 = 0xE900000000000072;
          v18 = 0x6564724F74726F73;
          break;
        default:
          break;
      }

      v47 = v18;
      v48 = v17;
      MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
      v22 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v22);

      v27 = v46;
      v29 = *(v46 + 16);
      v28 = *(v46 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1C6F7ED9C(v28 > 1, v29 + 1, 1, v23, v24, v25, v26);
        v27 = v46;
      }

      *(v27 + 16) = v29 + 1;
      v30 = v27 + 16 * v29;
      *(v30 + 32) = v47;
      *(v30 + 40) = v48;
      v7 = v43;
      v31 = 1 << *(v43 + 32);
      if (v10 >= v31)
      {
        goto LABEL_47;
      }

      v14 = v42;
      v32 = *(v42 + 8 * v15);
      if ((v32 & (1 << v10)) == 0)
      {
        goto LABEL_48;
      }

      v46 = v27;
      if (*(v43 + 36) != v12)
      {
        goto LABEL_49;
      }

      v33 = v32 & (-2 << (v10 & 0x3F));
      if (v33)
      {
        v31 = __clz(__rbit64(v33)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v34 = v15 << 6;
        v35 = v15 + 1;
        v36 = (v39 + 8 * v15);
        while (v35 < (v31 + 63) >> 6)
        {
          v38 = *v36++;
          v37 = v38;
          v34 += 64;
          ++v35;
          if (v38)
          {
            sub_1C6F9ED50(v10, v12, v44 & 1);
            v31 = __clz(__rbit64(v37)) + v34;
            goto LABEL_42;
          }
        }

        sub_1C6F9ED50(v10, v12, v44 & 1);
      }

LABEL_42:
      v9 = 0;
      v10 = v31;
      v12 = v40;
      v13 = v45;
      if (v45 == v41)
      {
        return;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }
}

void sub_1C74510F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 16);
  if (v8)
  {
    v48 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v8, 0, a4, a5, a6, a7);
    v39 = v48;
    v11 = sub_1C70D4544();
    v12 = 0;
    v38 = a1 + 64;
    v33 = v9;
    v34 = v8;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v13 = v11 >> 6;
      if ((*(v38 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_23;
      }

      v36 = v12;
      v37 = v9;
      v35 = v10;
      v14 = (*(a1 + 48) + 120 * v11);
      memcpy(__dst, v14, sizeof(__dst));
      memcpy(__src, v14, sizeof(__src));
      v40 = *(*(a1 + 56) + 16 * v11);
      memmove(v43, v14, 0x78uLL);
      memcpy(v44, __src, sizeof(v44));
      v45 = v40;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_1C6FCA6E4(__dst, v46);
      sub_1C6FCA6E4(v43, v46);
      sub_1C6FD7FC8(v44, &qword_1EC21C150, &unk_1C758C868);
      memcpy(v46, v43, sizeof(v46));
      v47 = v40;
      MEMORY[0x1CCA5CD70](v46[2], v46[3]);
      MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
      v15 = sub_1C745210C();
      MEMORY[0x1CCA5CD70](v15);

      MEMORY[0x1CCA5CD70](32032, 0xE200000000000000);
      sub_1C6FD7FC8(v46, &qword_1EC21C150, &unk_1C758C868);
      v20 = v39;
      v48 = v39;
      v22 = *(v39 + 16);
      v21 = *(v39 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1C6F7ED9C(v21 > 1, v22 + 1, 1, v16, v17, v18, v19);
        v20 = v48;
      }

      *(v20 + 16) = v22 + 1;
      v23 = v20 + 16 * v22;
      *(v23 + 32) = 8315;
      *(v23 + 40) = 0xE200000000000000;
      v24 = 1 << *(a1 + 32);
      if (v11 >= v24)
      {
        goto LABEL_24;
      }

      v25 = *(v38 + 8 * v13);
      if ((v25 & (1 << v11)) == 0)
      {
        goto LABEL_25;
      }

      v39 = v20;
      if (*(a1 + 36) != v37)
      {
        goto LABEL_26;
      }

      v26 = v25 & (-2 << (v11 & 0x3F));
      if (v26)
      {
        v24 = __clz(__rbit64(v26)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v27 = v34;
      }

      else
      {
        v28 = v13 << 6;
        v29 = v13 + 1;
        v30 = (a1 + 72 + 8 * v13);
        v27 = v34;
        while (v29 < (v24 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            sub_1C6F9ED50(v11, v37, v35 & 1);
            v24 = __clz(__rbit64(v31)) + v28;
            goto LABEL_19;
          }
        }

        sub_1C6F9ED50(v11, v37, v35 & 1);
      }

LABEL_19:
      v10 = 0;
      v12 = v36 + 1;
      v11 = v24;
      v9 = v33;
      if (v36 + 1 == v27)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t QueryAssetsRetrievalProcessor.performPersonalEventQueryTokenAssetsRetrieval(with:eventRecorder:diagnosticContext:)()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  *(v1 + 904) = v0;
  *(v1 + 896) = v4;
  *(v1 + 888) = v5;
  *(v1 + 880) = v6;
  v7 = sub_1C754F38C();
  *(v1 + 912) = v7;
  *(v1 + 920) = *(v7 - 8);
  *(v1 + 928) = swift_task_alloc();
  *(v1 + 820) = *v3;
  *(v1 + 936) = *(v3 + 8);
  *(v1 + 821) = *(v3 + 24);
  *(v1 + 822) = *(v3 + 25);
  *(v1 + 952) = *(v3 + 32);
  *(v1 + 818) = *(v3 + 40);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1C7451580()
{
  v1 = *(v0 + 936);
  v2 = OUTLINED_FUNCTION_57_0();
  __swift_project_boxed_opaque_existential_1(v2, v3);
  OUTLINED_FUNCTION_134_10("QueryAssetsRetrievalProcessor.personalEventAssetsRetrieval", 58);
  v4 = OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_70(v4, v5);
  sub_1C754F15C();
  v6 = MEMORY[0x1E69E7CC8];
  *(v0 + 864) = MEMORY[0x1E69E7CC8];
  *(v0 + 872) = v6;
  v7 = *(v1 + 16);
  *(v0 + 960) = v7;
  if (!v7)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_21:
    if (!*(v9 + 16))
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 824));

      OUTLINED_FUNCTION_8_89();
      v28 = OUTLINED_FUNCTION_57_0();
      v29(v28);

      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_129();

      __asm { BRAA            X1, X16 }
    }

    v41 = *(v0 + 818);
    v19 = *(v0 + 952);
    v40 = *(v0 + 822);
    OUTLINED_FUNCTION_74_16();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C706D154();
    OUTLINED_FUNCTION_56_30();
    *(v0 + 673) = v40;
    *(v0 + 680) = v19;
    OUTLINED_FUNCTION_28_38(v20, v41);
    v21 = swift_task_alloc();
    *(v0 + 1000) = v21;
    *v21 = v0;
    OUTLINED_FUNCTION_12_79(v21);
    OUTLINED_FUNCTION_129();

    sub_1C7453770(v22, v23, v24, v25, v26);
    return;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    *(v0 + 976) = v9;
    *(v0 + 968) = v8;
    if (v8 >= v7)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_71_19(v8);
    sub_1C6FCA6E4(v0 + 168, v0 + 288);
    if (qword_1EDD0E0A0 != -1)
    {
      OUTLINED_FUNCTION_38();
      swift_once();
    }

    TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
    __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E0A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215040, &qword_1C7570ED0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C755BAB0;
    OUTLINED_FUNCTION_54_32((inited + 32));
    v12 = swift_task_alloc();
    OUTLINED_FUNCTION_80_15(v12);
    v13 = OUTLINED_FUNCTION_19_73();
    swift_setDeallocating();
    sub_1C6FDC98C();

    if (!v13)
    {
      sub_1C6FDD548(v0 + 168);
      goto LABEL_18;
    }

    if (!*(v0 + 200))
    {
      v14 = OUTLINED_FUNCTION_26_46();
      goto LABEL_12;
    }

    if (*(v0 + 200) != 2)
    {
      break;
    }

    v14 = 0xD000000000000013;
LABEL_12:
    v15 = OUTLINED_FUNCTION_53_36(v14);

    if (v15)
    {
      goto LABEL_29;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_50_33();
      v9 = v17;
    }

    if (*(v9 + 16) >= *(v9 + 24) >> 1)
    {
      OUTLINED_FUNCTION_49_32();
      v9 = v18;
    }

    OUTLINED_FUNCTION_51_29();
LABEL_18:
    OUTLINED_FUNCTION_60_26();
    if (v16)
    {
      goto LABEL_21;
    }

    v7 = *(*(v0 + 936) + 16);
  }

LABEL_29:
  v32 = *(v0 + 820);
  OUTLINED_FUNCTION_54_32((v0 + 528));
  *(v0 + 776) = v32;
  OUTLINED_FUNCTION_46_37(*(v0 + 936));
  v33 = swift_task_alloc();
  *(v0 + 984) = v33;
  *v33 = v0;
  OUTLINED_FUNCTION_13_86(v33);
  OUTLINED_FUNCTION_129();

  sub_1C7452230(v34, v35, v36, v37, v38);
}

uint64_t sub_1C7451984()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 992) = v0;

  if (v0)
  {
  }

  else
  {
    sub_1C6FDD548(v3 + 168);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7451A8C(uint64_t a1)
{
  v2 = *(v1 + 976);
  while (1)
  {
    OUTLINED_FUNCTION_60_26();
    if (v4)
    {
      break;
    }

    v5 = *(*(v1 + 936) + 16);
    *(v1 + 976) = v2;
    *(v1 + 968) = v3;
    if (v3 >= v5)
    {
      __break(1u);
LABEL_26:

LABEL_27:
      v28 = *(v1 + 820);
      OUTLINED_FUNCTION_54_32((v1 + 528));
      *(v1 + 776) = v28;
      OUTLINED_FUNCTION_46_37(*(v1 + 936));
      v29 = swift_task_alloc();
      *(v1 + 984) = v29;
      *v29 = v1;
      OUTLINED_FUNCTION_13_86(v29);
      OUTLINED_FUNCTION_94_1();

      return sub_1C7452230(v30, v31, v32, v33, v34);
    }

    OUTLINED_FUNCTION_71_19(v3);
    sub_1C6FCA6E4(v1 + 168, v1 + 288);
    if (qword_1EDD0E0A0 != -1)
    {
      OUTLINED_FUNCTION_38();
      swift_once();
    }

    TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
    __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E0A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215040, &qword_1C7570ED0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C755BAB0;
    OUTLINED_FUNCTION_54_32((inited + 32));
    v8 = swift_task_alloc();
    OUTLINED_FUNCTION_80_15(v8);
    v9 = OUTLINED_FUNCTION_19_73();
    swift_setDeallocating();
    sub_1C6FDC98C();

    if (v9)
    {
      if (*(v1 + 200))
      {
        if (*(v1 + 200) != 2)
        {
          goto LABEL_26;
        }

        v10 = 0xD000000000000013;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_26_46();
      }

      v11 = OUTLINED_FUNCTION_53_36(v10);

      if (v11)
      {
        goto LABEL_27;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_50_33();
        v2 = v12;
      }

      if (*(v2 + 16) >= *(v2 + 24) >> 1)
      {
        OUTLINED_FUNCTION_49_32();
        v2 = v13;
      }

      OUTLINED_FUNCTION_51_29();
    }

    else
    {
      sub_1C6FDD548(v1 + 168);
    }
  }

  if (!*(v2 + 16))
  {
    __swift_destroy_boxed_opaque_existential_1((v1 + 824));

    OUTLINED_FUNCTION_8_89();
    v24 = OUTLINED_FUNCTION_57_0();
    v25(v24);

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_94_1();

    __asm { BRAA            X1, X16 }
  }

  v37 = *(v1 + 818);
  v14 = *(v1 + 952);
  v36 = *(v1 + 822);
  OUTLINED_FUNCTION_74_16();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C706D154();
  OUTLINED_FUNCTION_56_30();
  *(v1 + 673) = v36;
  *(v1 + 680) = v14;
  OUTLINED_FUNCTION_28_38(v15, v37);
  v16 = swift_task_alloc();
  *(v1 + 1000) = v16;
  *v16 = v1;
  OUTLINED_FUNCTION_12_79(v16);
  OUTLINED_FUNCTION_94_1();

  return sub_1C7453770(v17, v18, v19, v20, v21);
}

uint64_t sub_1C7451E04()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 1008) = v0;

  if (v0)
  {
  }

  else
  {
    sub_1C74583AC(v3 + 648);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7451F14()
{
  OUTLINED_FUNCTION_123();
  __swift_destroy_boxed_opaque_existential_1((v0 + 824));
  OUTLINED_FUNCTION_8_89();
  v1 = OUTLINED_FUNCTION_57_0();
  v2(v1);

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_1C7451F9C()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 888);
  __swift_destroy_boxed_opaque_existential_1((v0 + 824));

  sub_1C6FDD548(v0 + 168);
  OUTLINED_FUNCTION_70(v1, v1[3]);
  sub_1C754F1AC();
  v2 = OUTLINED_FUNCTION_47_25();
  v3(v2);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C745205C()
{
  OUTLINED_FUNCTION_49_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + 824));
  sub_1C74583AC(v0 + 648);
  v1 = OUTLINED_FUNCTION_57_0();
  __swift_project_boxed_opaque_existential_1(v1, v2);
  sub_1C754F1AC();
  v3 = OUTLINED_FUNCTION_47_25();
  v4(v3);

  OUTLINED_FUNCTION_43();

  return v5();
}

unint64_t sub_1C745210C()
{
  sub_1C755180C();

  v0 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v0);

  MEMORY[0x1CCA5CD70](0x73746E656D6F6D20, 0xEA0000000000202CLL);
  v1 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v1);

  MEMORY[0x1CCA5CD70](0x73746573736120, 0xE700000000000000);
  return 0xD00000000000001BLL;
}

uint64_t sub_1C7452230(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[36] = a5;
  v6[37] = v5;
  v6[34] = a2;
  v6[35] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50, &qword_1C75606A0);
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v9 = sub_1C754DABC();
  v6[40] = v9;
  v6[41] = *(v9 - 8);
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = type metadata accessor for QueryTokenCategoryType(0);
  v6[46] = swift_task_alloc();
  v6[47] = type metadata accessor for PersonalEventBackingItem(0);
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v6[50] = *(type metadata accessor for QueryTokenSuggestion(0) - 8);
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v10 = sub_1C754F38C();
  v6[54] = v10;
  v6[55] = *(v10 - 8);
  v6[56] = swift_task_alloc();
  memcpy(v6 + 2, a1, 0x78uLL);
  v6[57] = *(a3 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1C74524B0, 0, 0);
}

uint64_t sub_1C74524B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  __swift_project_boxed_opaque_existential_1(*(v20 + 280), *(*(v20 + 280) + 24));
  OUTLINED_FUNCTION_134_10("QueryAssetsRetrievalProcessor.disambiguatedPersonalEventAssetsRetrieval", 71);
  v21 = sub_1C75504FC();
  v22 = sub_1C71CD938(v21);
  sub_1C6FDE498(v22);
  v24 = v23;
  *(v20 + 464) = v23;

  v26 = 0;
  v27 = *(v20 + 96);
  v28 = *(v27 + 16);
  while (1)
  {
    if (v28 == v26)
    {

      goto LABEL_20;
    }

    if (v26 >= *(v27 + 16))
    {
      __break(1u);
      return result;
    }

    OUTLINED_FUNCTION_1_137();
    sub_1C745844C(v29, v30, v31);
    if (qword_1EDD0E0A0 != -1)
    {
      OUTLINED_FUNCTION_38();
      swift_once();
    }

    __swift_project_value_buffer(*(v20 + 360), qword_1EDD0E0A8);
    static QueryTokenCategoryType.~= infix(_:_:)();
    if (v32)
    {
      break;
    }

    OUTLINED_FUNCTION_0_188();
    result = sub_1C74584AC(v33, v34);
    ++v26;
  }

  v36 = *(v20 + 416);
  v35 = *(v20 + 424);
  v37 = *(v20 + 368);
  sub_1C74583EC(*(v20 + 408), v36, type metadata accessor for QueryTokenSuggestion);
  sub_1C74583EC(v36, v35, type metadata accessor for QueryTokenSuggestion);
  sub_1C745844C(v35, v37, type metadata accessor for QueryTokenCategoryType);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    v39 = *(v20 + 384);
    v38 = *(v20 + 392);
    v40 = *(v20 + 368);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0, &qword_1C7580730);
    sub_1C74583EC(v40 + *(v41 + 48), v38, type metadata accessor for PersonalEventBackingItem);
    sub_1C6FD7FC8(v40, &qword_1EC216320, &unk_1C7563B80);
    sub_1C745844C(v38, v39, type metadata accessor for PersonalEventBackingItem);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v85 = *(v20 + 320);
        v86 = *(v20 + 312);
        (*(*(v20 + 328) + 32))(*(v20 + 352), *(v20 + 384), v85);
        __swift_storeEnumTagSinglePayload(v86, 1, 1, v85);
        static StoryGenerationUtilities.dateComponentsAttributedQueryStringWithAdjustedRange(withStartDateComponents:endDateComponents:localizedText:)();
        v88 = v87;
        *(v20 + 472) = v87;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
        v89 = swift_allocObject();
        *(v20 + 480) = v89;
        *(v89 + 16) = xmmword_1C7565670;
        *(v89 + 32) = v88;
        *(v20 + 553) = 0;
        v90 = v88;
        sub_1C6FDC2F0(v20 + 232);
        v91 = swift_task_alloc();
        *(v20 + 488) = v91;
        *v91 = v20;
        v91[1] = sub_1C7452C00;
        goto LABEL_24;
      case 2u:
        v49 = *(v20 + 384);
        v50 = *(v20 + 344);
        v100 = *(v20 + 336);
        v51 = *(v20 + 320);
        v52 = *(v20 + 328);
        v53 = *(v20 + 304);
        v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216298, &unk_1C7580760) + 48);
        v55 = *(v52 + 32);
        v55(v50, v49, v51);
        v55(v100, v49 + v54, v51);
        (*(v52 + 16))(v53, v100, v51);
        __swift_storeEnumTagSinglePayload(v53, 0, 1, v51);
        static StoryGenerationUtilities.dateComponentsAttributedQueryStringWithAdjustedRange(withStartDateComponents:endDateComponents:localizedText:)();
        v57 = v56;
        *(v20 + 512) = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
        v58 = swift_allocObject();
        *(v20 + 520) = v58;
        *(v58 + 16) = xmmword_1C7565670;
        *(v58 + 32) = v57;
        *(v20 + 552) = 0;
        v59 = v57;
        sub_1C6FDC2F0(v20 + 192);
        v60 = swift_task_alloc();
        *(v20 + 528) = v60;
        *v60 = v20;
        v60[1] = sub_1C74531A0;
LABEL_24:
        OUTLINED_FUNCTION_64_22();
        OUTLINED_FUNCTION_20_4();

        return sub_1C71074E0();
      case 3u:

        v43 = MEMORY[0x1E69E7CD0];
        goto LABEL_15;
      default:
        sub_1C7457FC0(**(v20 + 384), v24, *(v20 + 280));
        v43 = v42;

        sub_1C75504FC();
LABEL_15:
        type metadata accessor for QueryAssetsRetrievalProcessor(0);
        sub_1C75504FC();
        v61 = sub_1C754FEEC();
        v62 = sub_1C755117C();
        if (OUTLINED_FUNCTION_128(v62))
        {
          v63 = OUTLINED_FUNCTION_41_0();
          *v63 = 134217984;
          v64 = *(v43 + 16);

          *(v63 + 4) = v64;

          OUTLINED_FUNCTION_52_2(&dword_1C6F5C000, v65, v62, "There are %ld event suggestion assets from the user disambiguation");
          OUTLINED_FUNCTION_109();
        }

        else
        {
          swift_bridgeObjectRelease_n();
        }

        v66 = *(v20 + 424);
        v67 = *(v20 + 392);
        v68 = *(v20 + 272);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DA0, &unk_1C7571010);
        inited = swift_initStackObject();
        OUTLINED_FUNCTION_40_46(inited, xmmword_1C755BAB0);
        inited[3].n128_u64[0] = v43;
        sub_1C75504FC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
        v70 = sub_1C75504DC();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        a17 = *v68;
        sub_1C6FC7AB4(v70, v20 + 16, isUniquelyReferenced_nonNull_native);
        *v68 = a17;
        OUTLINED_FUNCTION_2_128();
        sub_1C74584AC(v67, v72);
        OUTLINED_FUNCTION_0_188();
        v48 = v66;
        break;
    }
  }

  else
  {
    v44 = *(v20 + 368);
    OUTLINED_FUNCTION_0_188();
    sub_1C74584AC(v45, v46);

    v47 = type metadata accessor for QueryTokenCategoryType;
    v48 = v44;
  }

  sub_1C74584AC(v48, v47);
LABEL_20:
  OUTLINED_FUNCTION_21_61();
  v93 = v74;
  v94 = v73;
  v95 = *(v20 + 368);
  v96 = *(v20 + 352);
  v97 = *(v20 + 344);
  v98 = *(v20 + 336);
  v99 = *(v20 + 312);
  v101 = *(v20 + 304);
  OUTLINED_FUNCTION_16_66();
  v75 = OUTLINED_FUNCTION_39_41();
  v76(v75);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20_4();

  return v78(v77, v78, v79, v80, v81, v82, v83, v84, v93, v94, v95, v96, v97, v98, v99, v101, a17, a18, a19, a20);
}

uint64_t sub_1C7452C00()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  v5[62] = v0;

  if (!v0)
  {
    v5[63] = v3;
  }

  __swift_destroy_boxed_opaque_existential_1(v5 + 29);

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C7452D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_127_1();
  v23 = v22[63];
  v24 = v22[59];
  v65 = v22[44];
  v25 = v22[40];
  v26 = v22[41];
  v27 = v22[39];
  v29 = v22[36];
  v28 = v22[37];
  v30 = swift_task_alloc();
  *(v30 + 16) = v28;
  *(v30 + 24) = v29;
  sub_1C6FDE6CC(MEMORY[0x1E69E7CD0], sub_1C7458630, v30, v23);
  v32 = v31;

  sub_1C6FD7FC8(v27, &qword_1EC218C50, &qword_1C75606A0);
  (*(v26 + 8))(v65, v25);
  type metadata accessor for QueryAssetsRetrievalProcessor(0);
  OUTLINED_FUNCTION_29_20();
  swift_bridgeObjectRetain_n();
  v33 = sub_1C754FEEC();
  v34 = sub_1C755117C();
  if (OUTLINED_FUNCTION_128(v34))
  {
    v35 = OUTLINED_FUNCTION_41_0();
    *v35 = 134217984;
    v36 = *(v32 + 16);

    *(v35 + 4) = v36;

    OUTLINED_FUNCTION_52_2(&dword_1C6F5C000, v37, v34, "There are %ld event suggestion assets from the user disambiguation");
    OUTLINED_FUNCTION_109();
  }

  else
  {
    OUTLINED_FUNCTION_29_20();
    swift_bridgeObjectRelease_n();
  }

  v38 = v22[53];
  v39 = v22[49];
  v40 = v22[34];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DA0, &unk_1C7571010);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_40_46(inited, xmmword_1C755BAB0);
  inited[3].n128_u64[0] = v32;
  sub_1C75504FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
  sub_1C75504DC();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_41_44(isUniquelyReferenced_nonNull_native);
  *v40 = a18;
  OUTLINED_FUNCTION_2_128();
  sub_1C74584AC(v39, v43);
  OUTLINED_FUNCTION_0_188();
  sub_1C74584AC(v38, v44);
  OUTLINED_FUNCTION_21_61();
  v58 = v46;
  v59 = v45;
  v60 = v22[46];
  v61 = v22[44];
  v62 = v22[43];
  v63 = v22[42];
  v64 = v22[39];
  v66 = v22[38];
  OUTLINED_FUNCTION_16_66();
  v47 = OUTLINED_FUNCTION_39_41();
  v48(v47);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_128_0();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, v58, v59, v60, v61, v62, v63, v64, v66, a18, a19, a20, a21, a22);
}

uint64_t sub_1C7453014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  v21 = *(v20 + 328);
  v22 = *(v20 + 312);

  sub_1C6FD7FC8(v22, &qword_1EC218C50, &qword_1C75606A0);
  v48 = *(v20 + 496);
  v23 = *(v20 + 440);
  v24 = *(v20 + 448);
  v25 = *(v20 + 424);
  v26 = *(v20 + 432);
  v40 = *(v20 + 416);
  v41 = *(v20 + 408);
  v27 = *(v20 + 392);
  v42 = *(v20 + 384);
  v43 = *(v20 + 368);
  v44 = *(v20 + 344);
  v45 = *(v20 + 336);
  v46 = *(v20 + 312);
  v47 = *(v20 + 304);
  v28 = *(v20 + 280);
  (*(v21 + 8))(*(v20 + 352), *(v20 + 320));
  OUTLINED_FUNCTION_2_128();
  sub_1C74584AC(v27, v29);
  OUTLINED_FUNCTION_0_188();
  sub_1C74584AC(v25, v30);
  OUTLINED_FUNCTION_70(v28, v28[3]);
  sub_1C754F1AC();
  (*(v23 + 8))(v24, v26);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_20_4();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, v41, v42, v43, v44, v45, v46, v47, v48, a18, a19, a20);
}

uint64_t sub_1C74531A0()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  v5[67] = v0;

  if (!v0)
  {
    v5[68] = v3;
  }

  __swift_destroy_boxed_opaque_existential_1(v5 + 24);

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C74532F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_127_1();
  v23 = v22[68];
  v24 = v22[64];
  v65 = v22[42];
  v67 = v22[43];
  v25 = v22[40];
  v26 = v22[41];
  v27 = v22[37];
  v28 = v22[38];
  v29 = v22[36];
  v30 = swift_task_alloc();
  *(v30 + 16) = v27;
  *(v30 + 24) = v29;
  sub_1C6FDE6CC(MEMORY[0x1E69E7CD0], sub_1C7458504, v30, v23);
  v32 = v31;

  sub_1C6FD7FC8(v28, &qword_1EC218C50, &qword_1C75606A0);
  v33 = *(v26 + 8);
  v33(v65, v25);
  v33(v67, v25);
  type metadata accessor for QueryAssetsRetrievalProcessor(0);
  OUTLINED_FUNCTION_29_20();
  swift_bridgeObjectRetain_n();
  v34 = sub_1C754FEEC();
  v35 = sub_1C755117C();
  if (OUTLINED_FUNCTION_128(v35))
  {
    v36 = OUTLINED_FUNCTION_41_0();
    *v36 = 134217984;
    v37 = *(v32 + 16);

    *(v36 + 4) = v37;

    OUTLINED_FUNCTION_52_2(&dword_1C6F5C000, v38, v35, "There are %ld event suggestion assets from the user disambiguation");
    OUTLINED_FUNCTION_109();
  }

  else
  {
    OUTLINED_FUNCTION_29_20();
    swift_bridgeObjectRelease_n();
  }

  v39 = v22[53];
  v40 = v22[49];
  v41 = v22[34];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DA0, &unk_1C7571010);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_40_46(inited, xmmword_1C755BAB0);
  inited[3].n128_u64[0] = v32;
  sub_1C75504FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
  sub_1C75504DC();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_41_44(isUniquelyReferenced_nonNull_native);
  *v41 = a18;
  OUTLINED_FUNCTION_2_128();
  sub_1C74584AC(v40, v44);
  OUTLINED_FUNCTION_0_188();
  sub_1C74584AC(v39, v45);
  OUTLINED_FUNCTION_21_61();
  v59 = v47;
  v60 = v46;
  v61 = v22[46];
  v62 = v22[44];
  v63 = v22[43];
  v64 = v22[42];
  v66 = v22[39];
  v68 = v22[38];
  OUTLINED_FUNCTION_16_66();
  v48 = OUTLINED_FUNCTION_39_41();
  v49(v48);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_128_0();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, v59, v60, v61, v62, v63, v64, v66, v68, a18, a19, a20, a21, a22);
}

uint64_t sub_1C74535CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  v22 = *(v20 + 328);
  v21 = *(v20 + 336);
  v23 = *(v20 + 320);
  v24 = *(v20 + 304);

  sub_1C6FD7FC8(v24, &qword_1EC218C50, &qword_1C75606A0);
  v25 = *(v22 + 8);
  v25(v21, v23);
  v51 = *(v20 + 536);
  v26 = *(v20 + 440);
  v27 = *(v20 + 448);
  v28 = *(v20 + 424);
  v29 = *(v20 + 432);
  v43 = *(v20 + 416);
  v44 = *(v20 + 408);
  v30 = *(v20 + 392);
  v45 = *(v20 + 384);
  v46 = *(v20 + 368);
  v47 = *(v20 + 352);
  v48 = *(v20 + 336);
  v49 = *(v20 + 312);
  v50 = *(v20 + 304);
  v31 = *(v20 + 280);
  v25(*(v20 + 344), *(v20 + 320));
  OUTLINED_FUNCTION_2_128();
  sub_1C74584AC(v30, v32);
  OUTLINED_FUNCTION_0_188();
  sub_1C74584AC(v28, v33);
  OUTLINED_FUNCTION_70(v31, v31[3]);
  sub_1C754F1AC();
  (*(v26 + 8))(v27, v29);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_20_4();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, v44, v45, v46, v47, v48, v49, v50, v51, a18, a19, a20);
}

uint64_t sub_1C7453770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 408) = a5;
  *(v6 + 416) = v5;
  *(v6 + 392) = a3;
  *(v6 + 400) = a4;
  *(v6 + 384) = a2;
  *(v6 + 424) = *(type metadata accessor for QueryTokenSuggestion(0) - 8);
  *(v6 + 432) = swift_task_alloc();
  *(v6 + 440) = swift_task_alloc();
  *(v6 + 448) = swift_task_alloc();
  *(v6 + 456) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216320, &unk_1C7563B80);
  v8 = swift_task_alloc();
  v9 = *(a1 + 16);
  *(v6 + 464) = v8;
  *(v6 + 472) = v9;
  *(v6 + 576) = *(a1 + 24);
  *(v6 + 577) = *(a1 + 25);
  *(v6 + 480) = *(a1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1C74538B0, 0, 0);
}

uint64_t sub_1C74538B0()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 480);
  OUTLINED_FUNCTION_70(*(v0 + 400), *(*(v0 + 400) + 24));
  sub_1C754F15C();
  v3 = sub_1C7454A8C(v2, v1);
  v5 = v4;
  v7 = v6;
  *(v0 + 496) = v3;
  *(v0 + 504) = v4;
  *(v0 + 512) = v6;
  v8 = sub_1C75504FC();
  v9 = sub_1C71CD938(v8);
  sub_1C6FDE498(v9);
  v11 = v10;
  *(v0 + 520) = v10;

  v12 = swift_task_alloc();
  *(v0 + 528) = v12;
  *v12 = v0;
  v12[1] = sub_1C74539F8;
  v13 = *(v0 + 408);

  return sub_1C7455A18(v3, v5, v7, v11, v0 + 312, v13);
}

uint64_t sub_1C74539F8()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 536) = v5;
  *(v3 + 544) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1C7453B2C()
{
  v79 = v0;
  if (*(v0 + 577) == 1)
  {
    v2 = swift_task_alloc();
    *(v0 + 552) = v2;
    *v2 = v0;
    v2[1] = sub_1C7454138;
    OUTLINED_FUNCTION_12_30();

    sub_1C7456B8C(v3, v4, v5, v6, v7);
    return;
  }

  v10 = *(v0 + 504);
  v9 = *(v0 + 512);

  sub_1C6FDE390();
  v11 = sub_1C75504DC();
  OUTLINED_FUNCTION_48_29();
  v76 = v12;
  v77 = v13;
  if (!v12)
  {

LABEL_39:
    OUTLINED_FUNCTION_30_46();

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_12_30();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_57_28();
  v75 = 0;
  v15 = (v14 + 32);
  v72 = xmmword_1C755BAB0;
  while (v9 < *(v77 + 16))
  {
    OUTLINED_FUNCTION_72_24();
    memcpy(__dst, v15, sizeof(__dst));
    sub_1C6FCA6E4(v0 + 16, v0 + 136);
    QueryToken.personalEvent()();
    if (*(v11 + 16))
    {
      sub_1C6FC2A70();
      if (v16)
      {
        v17 = *(v0 + 456);
        v73 = *(v0 + 464);
        v74 = *(v0 + 448);
        OUTLINED_FUNCTION_32_41();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DA0, &unk_1C7571010);
        inited = swift_initStackObject();
        OUTLINED_FUNCTION_33_40(inited, v19, v20, v21, v22, v23, v24, v25, v72);
        sub_1C75504FC();
        sub_1C6FCA460(v0 + 352, v0 + 368);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
        v26 = sub_1C75504DC();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        __dst[0] = *v1;
        sub_1C6FC7AB4(v26, v0 + 16, isUniquelyReferenced_nonNull_native);
        *v1 = __dst[0];
        v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0, &qword_1C7580730) + 48);
        sub_1C7458520(v73, v17);
        *(v17 + v28) = v10;
        type metadata accessor for PersonalEventBackingItem(0);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for QueryTokenCategoryType(0);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_1_137();
        sub_1C745844C(v17, v74, v29);
        OUTLINED_FUNCTION_61_22(v75);
        OUTLINED_FUNCTION_63_25();
        __dst[0] = v28;
        sub_1C6FC2A70();
        OUTLINED_FUNCTION_11_74();
        if (v32)
        {
          goto LABEL_47;
        }

        v10 = v30;
        v33 = v31;
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215310, &qword_1C755CC08);
        if (OUTLINED_FUNCTION_75_19(v34))
        {
          v35 = sub_1C6FC2A70();
          if ((v33 & 1) != (v36 & 1))
          {
            goto LABEL_42;
          }

          v10 = v35;
        }

        OUTLINED_FUNCTION_62_26();
        if (v33)
        {
          sub_1C6FDD548(v0 + 16);
        }

        else
        {
          OUTLINED_FUNCTION_65_28();
          sub_1C6FCABD4();
        }

        v60 = OUTLINED_FUNCTION_73_23();
        OUTLINED_FUNCTION_34_42(v60, v61, v62, v63, v64, v65);
        OUTLINED_FUNCTION_0_188();
        sub_1C74584AC(v17, v66);
        sub_1C6FD7FC8(v33, &qword_1EC216320, &unk_1C7563B80);
        OUTLINED_FUNCTION_22_64();
        OUTLINED_FUNCTION_3_117();
        sub_1C74583EC(v1, v67, v68);
        v75 = sub_1C6FC0A88;
        goto LABEL_36;
      }
    }

    v37 = *(v0 + 48);
    if (*(v0 + 48))
    {
      if (v37 == 1)
      {
        v10 = "son";
      }

      else
      {
        v10 = "userDisambiguation";
      }

      if (v37 == 1)
      {
        v38 = 0xD000000000000012;
      }

      else
      {
        v38 = 0xD000000000000013;
      }

      v39 = OUTLINED_FUNCTION_24_47(v38);

      if ((v39 & 1) == 0)
      {
        sub_1C6FD7FC8(*(v0 + 464), &qword_1EC216320, &unk_1C7563B80);
        sub_1C6FDD548(v0 + 16);
        goto LABEL_36;
      }
    }

    else
    {
      OUTLINED_FUNCTION_79_19();
    }

    v40 = *(v0 + 464);
    v42 = *(v0 + 432);
    v41 = *(v0 + 440);
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0, &qword_1C7580730) + 48);
    sub_1C7458520(v40, v41);
    type metadata accessor for PersonalEventBackingItem(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for QueryTokenCategoryType(0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_137();
    sub_1C745844C(v41, v42, v44);
    OUTLINED_FUNCTION_61_22(v1);
    OUTLINED_FUNCTION_63_25();
    __dst[0] = v40;
    sub_1C6FC2A70();
    OUTLINED_FUNCTION_11_74();
    if (v32)
    {
      goto LABEL_46;
    }

    v10 = v45;
    v47 = v46;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215310, &qword_1C755CC08);
    if (OUTLINED_FUNCTION_75_19(v48))
    {
      v49 = sub_1C6FC2A70();
      if ((v47 & 1) != (v50 & 1))
      {
LABEL_42:
        OUTLINED_FUNCTION_12_30();

        sub_1C7551E4C();
        return;
      }

      v10 = v49;
    }

    OUTLINED_FUNCTION_62_26();
    if (v47)
    {
      sub_1C6FDD548(v0 + 16);
    }

    else
    {
      OUTLINED_FUNCTION_65_28();
      sub_1C6FCABD4();
    }

    v51 = OUTLINED_FUNCTION_78_17();
    OUTLINED_FUNCTION_34_42(v51, v52, v53, v54, v55, v56);
    OUTLINED_FUNCTION_0_188();
    sub_1C74584AC(v42, v57);
    sub_1C6FD7FC8(v47, &qword_1EC216320, &unk_1C7563B80);
    OUTLINED_FUNCTION_22_64();
    OUTLINED_FUNCTION_3_117();
    sub_1C74583EC(v43, v58, v59);
    OUTLINED_FUNCTION_17_77();
LABEL_36:
    ++v9;
    v15 += 120;
    if (v76 == v9)
    {

      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t sub_1C7454138()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 560) = v5;
  *(v3 + 568) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1C745428C()
{
  v94 = v0;
  v2 = *(v0 + 416);
  type metadata accessor for QueryAssetsRetrievalProcessor(0);
  sub_1C75504FC();
  sub_1C75504FC();
  v3 = sub_1C754FEEC();
  v4 = sub_1C75511BC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 560);
    v6 = *(v0 + 472);
    v7 = swift_slowAlloc();
    __dst[0] = swift_slowAlloc();
    *v7 = 136315394;
    sub_1C74510F8(v5, v8, v9, v10, v11, v12, v13);
    v14 = MEMORY[0x1CCA5D090]();
    v1 = v15;

    v16 = sub_1C6F765A4(v14, v1, __dst);

    *(v7 + 4) = v16;
    *(v7 + 12) = 2080;
    sub_1C7450C3C(v6, v17, v18, v19, v20, v21, v22);
    v24 = v23;

    v25 = MEMORY[0x1CCA5D090](v24, MEMORY[0x1E69E6158]);
    v27 = v26;

    v2 = sub_1C6F765A4(v25, v27, __dst);

    *(v7 + 14) = v2;
    _os_log_impl(&dword_1C6F5C000, v3, v4, "Grounding result via the graph for the personal event query tokens = %s,\nscoped with %s", v7, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
    v7 = *(v0 + 472);
  }

  v28 = *(v0 + 560);
  OUTLINED_FUNCTION_48_29();
  v91 = v29;
  v92 = v30;
  if (!v29)
  {
LABEL_36:

    OUTLINED_FUNCTION_30_46();

    OUTLINED_FUNCTION_25();

    v86();
    return;
  }

  OUTLINED_FUNCTION_57_28();
  v90 = 0;
  v32 = (v31 + 32);
  v87 = xmmword_1C755BAB0;
  while (1)
  {
    if (v7 >= *(v92 + 16))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_72_24();
    memcpy(__dst, v32, 0x78uLL);
    sub_1C6FCA6E4(v0 + 16, v0 + 136);
    QueryToken.personalEvent()();
    if (*(v28 + 16))
    {
      sub_1C6FC2A70();
      if (v33)
      {
        v34 = *(v0 + 456);
        v88 = *(v0 + 464);
        v89 = *(v0 + 448);
        OUTLINED_FUNCTION_32_41();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DA0, &unk_1C7571010);
        inited = swift_initStackObject();
        OUTLINED_FUNCTION_33_40(inited, v36, v37, v38, v39, v40, v41, v42, v87);
        sub_1C75504FC();
        sub_1C6FCA460(v0 + 352, v0 + 368);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
        v43 = sub_1C75504DC();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        __dst[0] = *v1;
        sub_1C6FC7AB4(v43, v0 + 16, isUniquelyReferenced_nonNull_native);
        *v1 = __dst[0];
        v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0, &qword_1C7580730) + 48);
        sub_1C7458520(v88, v34);
        *(v34 + v45) = v2;
        type metadata accessor for PersonalEventBackingItem(0);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for QueryTokenCategoryType(0);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_1_137();
        sub_1C745844C(v34, v89, v46);
        OUTLINED_FUNCTION_61_22(v90);
        OUTLINED_FUNCTION_63_25();
        __dst[0] = v45;
        sub_1C6FC2A70();
        OUTLINED_FUNCTION_11_74();
        if (v49)
        {
          goto LABEL_44;
        }

        v2 = v47;
        v50 = v48;
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215310, &qword_1C755CC08);
        if (OUTLINED_FUNCTION_76_21(v51))
        {
          v52 = sub_1C6FC2A70();
          if ((v50 & 1) != (v53 & 1))
          {
            goto LABEL_39;
          }

          v2 = v52;
        }

        OUTLINED_FUNCTION_62_26();
        if (v50)
        {
          sub_1C6FDD548(v0 + 16);
        }

        else
        {
          OUTLINED_FUNCTION_65_28();
          sub_1C6FCABD4();
        }

        v77 = OUTLINED_FUNCTION_73_23();
        OUTLINED_FUNCTION_34_42(v77, v78, v79, v80, v81, v82);
        OUTLINED_FUNCTION_0_188();
        sub_1C74584AC(v34, v83);
        sub_1C6FD7FC8(v50, &qword_1EC216320, &unk_1C7563B80);
        OUTLINED_FUNCTION_22_64();
        OUTLINED_FUNCTION_3_117();
        sub_1C74583EC(v1, v84, v85);
        v90 = sub_1C6FC0A88;
        goto LABEL_35;
      }
    }

    v54 = *(v0 + 48);
    if (!*(v0 + 48))
    {
      break;
    }

    if (v54 == 1)
    {
      v2 = "son";
    }

    else
    {
      v2 = "userDisambiguation";
    }

    if (v54 == 1)
    {
      v55 = 0xD000000000000012;
    }

    else
    {
      v55 = 0xD000000000000013;
    }

    v56 = OUTLINED_FUNCTION_24_47(v55);

    if (v56)
    {
      goto LABEL_25;
    }

    sub_1C6FD7FC8(*(v0 + 464), &qword_1EC216320, &unk_1C7563B80);
    sub_1C6FDD548(v0 + 16);
LABEL_35:
    ++v7;
    v32 += 120;
    if (v91 == v7)
    {
      goto LABEL_36;
    }
  }

  OUTLINED_FUNCTION_79_19();
LABEL_25:
  v57 = *(v0 + 464);
  v59 = *(v0 + 432);
  v58 = *(v0 + 440);
  v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0, &qword_1C7580730) + 48);
  sub_1C7458520(v57, v58);
  type metadata accessor for PersonalEventBackingItem(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for QueryTokenCategoryType(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_1_137();
  sub_1C745844C(v58, v59, v61);
  OUTLINED_FUNCTION_61_22(v1);
  OUTLINED_FUNCTION_63_25();
  __dst[0] = v57;
  sub_1C6FC2A70();
  OUTLINED_FUNCTION_11_74();
  if (v49)
  {
    goto LABEL_43;
  }

  v2 = v62;
  v64 = v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215310, &qword_1C755CC08);
  if ((OUTLINED_FUNCTION_76_21(v65) & 1) == 0)
  {
LABEL_29:
    OUTLINED_FUNCTION_62_26();
    if (v64)
    {
      sub_1C6FDD548(v0 + 16);
    }

    else
    {
      OUTLINED_FUNCTION_65_28();
      sub_1C6FCABD4();
    }

    v68 = OUTLINED_FUNCTION_78_17();
    OUTLINED_FUNCTION_34_42(v68, v69, v70, v71, v72, v73);
    OUTLINED_FUNCTION_0_188();
    sub_1C74584AC(v59, v74);
    sub_1C6FD7FC8(v64, &qword_1EC216320, &unk_1C7563B80);
    OUTLINED_FUNCTION_22_64();
    OUTLINED_FUNCTION_3_117();
    sub_1C74583EC(v60, v75, v76);
    OUTLINED_FUNCTION_17_77();
    goto LABEL_35;
  }

  v66 = sub_1C6FC2A70();
  if ((v64 & 1) == (v67 & 1))
  {
    v2 = v66;
    goto LABEL_29;
  }

LABEL_39:

  sub_1C7551E4C();
}

uint64_t sub_1C7454960()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_83_11();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C74549E8()
{
  OUTLINED_FUNCTION_123();

  OUTLINED_FUNCTION_83_11();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C7454A8C(uint64_t a1, int a2)
{
  v127 = a2;
  v3 = sub_1C754F24C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v114 = &v111 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216358, &qword_1C7563B98);
  MEMORY[0x1EEE9AC00](v9);
  v121 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v111 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216320, &unk_1C7563B80);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v126 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v128 = &v111 - v17;
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](&v111 - v22);
  v140 = &v111 - v27;
  v28 = MEMORY[0x1E69E7CC0];
  v125 = *(a1 + 16);
  if (v125)
  {
    v131 = v23;
    v116 = v26;
    v120 = v25;
    v112 = v24;
    v143 = sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
    v29 = 0;
    v124 = a1 + 32;
    v123 = *MEMORY[0x1E69C1808];
    v132 = (v4 + 104);
    v119 = (v4 + 32);
    v133 = (v4 + 8);
    v118 = *MEMORY[0x1E69C1818];
    v122 = v6;
    *&v30 = 136643075;
    v111 = v30;
    v115 = xmmword_1C7565670;
    v129 = MEMORY[0x1E69E7CC8];
    v130 = v13;
    v135 = v28;
    v136 = MEMORY[0x1E69E7CC8];
    v113 = v3;
    v117 = v9;
    while (1)
    {
      v134 = v29;
      v31 = (v124 + 120 * v29);
      memcpy(__dst, v31, 0x78uLL);
      memcpy(v149, v31, sizeof(v149));
      sub_1C6FCA6E4(__dst, v148);
      v32 = v140;
      QueryToken.personalEvent()();
      v33 = v131;
      v34 = *v132;
      (*v132)(v131, v123, v3);
      __swift_storeEnumTagSinglePayload(v33, 0, 1, v3);
      v35 = *(v9 + 48);
      sub_1C7458520(v32, v13);
      sub_1C7458520(v33, &v13[v35]);
      if (__swift_getEnumTagSinglePayload(v13, 1, v3) == 1)
      {
        break;
      }

      v38 = v116;
      sub_1C7458520(v13, v116);
      if (__swift_getEnumTagSinglePayload(&v13[v35], 1, v3) == 1)
      {
        sub_1C6FD7FC8(v131, &qword_1EC216320, &unk_1C7563B80);
        (*v133)(v38, v3);
LABEL_8:
        sub_1C6FD7FC8(v13, &qword_1EC216358, &qword_1C7563B98);
        goto LABEL_9;
      }

      v44 = v114;
      (*v119)(v114, &v13[v35], v3);
      sub_1C74585C8();
      v45 = sub_1C755063C();
      v46 = *v133;
      (*v133)(v44, v3);
      sub_1C6FD7FC8(v131, &qword_1EC216320, &unk_1C7563B80);
      v46(v38, v3);
      v13 = v130;
      sub_1C6FD7FC8(v130, &qword_1EC216320, &unk_1C7563B80);
      if (v45)
      {
        goto LABEL_18;
      }

LABEL_9:
      v39 = v120;
      v34(v120, v118, v3);
      __swift_storeEnumTagSinglePayload(v39, 0, 1, v3);
      v40 = *(v9 + 48);
      v41 = v121;
      sub_1C7458520(v140, v121);
      sub_1C7458520(v39, v41 + v40);
      if (__swift_getEnumTagSinglePayload(v41, 1, v3) == 1)
      {
        sub_1C6FD7FC8(v39, &qword_1EC216320, &unk_1C7563B80);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41 + v40, 1, v3);
        v37 = v41;
        if (EnumTagSinglePayload != 1)
        {
          goto LABEL_14;
        }

LABEL_11:
        sub_1C6FD7FC8(v37, &qword_1EC216320, &unk_1C7563B80);
LABEL_18:
        sub_1C6FCA6E4(__dst, v149);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB3514();
          v135 = v109;
        }

        v52 = *(v135 + 16);
        if (v52 >= *(v135 + 24) >> 1)
        {
          sub_1C6FB3514();
          v135 = v110;
        }

        v53 = v135;
        *(v135 + 16) = v52 + 1;
        memcpy((v53 + 120 * v52 + 32), __dst, 0x78uLL);
        goto LABEL_23;
      }

      v43 = v112;
      sub_1C7458520(v41, v112);
      if (__swift_getEnumTagSinglePayload(v41 + v40, 1, v3) == 1)
      {
        sub_1C6FD7FC8(v120, &qword_1EC216320, &unk_1C7563B80);
        (*v133)(v43, v3);
LABEL_14:
        sub_1C6FD7FC8(v121, &qword_1EC216358, &qword_1C7563B98);
        goto LABEL_23;
      }

      v47 = v114;
      (*v119)(v114, (v41 + v40), v3);
      sub_1C74585C8();
      v48 = sub_1C755063C();
      v49 = v41;
      v50 = *v133;
      v51 = v47;
      v13 = v130;
      (*v133)(v51, v3);
      sub_1C6FD7FC8(v120, &qword_1EC216320, &unk_1C7563B80);
      v50(v43, v3);
      sub_1C6FD7FC8(v49, &qword_1EC216320, &unk_1C7563B80);
      if (v48)
      {
        goto LABEL_18;
      }

LABEL_23:
      v146 = MEMORY[0x1E69E7CD0];
      v147 = MEMORY[0x1E69E7CD0];
      sub_1C75504FC();
      v54 = sub_1C7073450();
      v55 = v128;
      sub_1C7458520(v140, v128);
      v56 = __swift_getEnumTagSinglePayload(v55, 1, v3);
      v137 = v54;
      if (v56 == 1)
      {
        sub_1C6FD7FC8(v55, &qword_1EC216320, &unk_1C7563B80);
        v57 = v54;
        sub_1C70F4C68(v149, v57);

        sub_1C70F4C68(v149, v57);
      }

      else
      {
        (*v119)(v122, v55, v3);
        sub_1C754F20C();
        sub_1C706D154();
        v59 = v58;
        v148[0] = v58;
        v60 = sub_1C754F1FC();
        if (v61)
        {
          sub_1C70F082C(v149, v60, v61);

          v62 = v148[0];
        }

        else
        {
          v62 = v59;
        }

        v63 = *(v62 + 16);
        if (v63)
        {
          v149[0] = MEMORY[0x1E69E7CC0];
          v139 = v62;
          sub_1C755195C();
          v65 = sub_1C719D92C();
          result = v139;
          v68 = v67;
          v69 = 0;
          v145 = v139 + 56;
          v141 = v67;
          v142 = v63;
          v138 = v139 + 64;
          while ((v65 & 0x8000000000000000) == 0 && v65 < 1 << *(result + 32))
          {
            v70 = v65 >> 6;
            if ((*(v145 + 8 * (v65 >> 6)) & (1 << v65)) == 0)
            {
              goto LABEL_71;
            }

            if (*(result + 36) != v68)
            {
              goto LABEL_72;
            }

            v71 = result;
            v144 = v64;
            sub_1C75504FC();
            sub_1C7073450();
            sub_1C755192C();
            sub_1C755196C();
            sub_1C755197C();
            result = sub_1C755193C();
            if (v144)
            {
              goto LABEL_76;
            }

            v72 = 1 << *(v71 + 32);
            if (v65 >= v72)
            {
              goto LABEL_73;
            }

            v73 = *(v145 + 8 * v70);
            if ((v73 & (1 << v65)) == 0)
            {
              goto LABEL_74;
            }

            result = v71;
            if (*(v71 + 36) != v68)
            {
              goto LABEL_75;
            }

            v74 = v73 & (-2 << (v65 & 0x3F));
            if (v74)
            {
              v72 = __clz(__rbit64(v74)) | v65 & 0x7FFFFFFFFFFFFFC0;
              v75 = v142;
            }

            else
            {
              v76 = v70 << 6;
              v77 = v70 + 1;
              v78 = (v138 + 8 * v70);
              v75 = v142;
              while (v77 < (v72 + 63) >> 6)
              {
                v80 = *v78++;
                v79 = v80;
                v76 += 64;
                ++v77;
                if (v80)
                {
                  sub_1C6F9ED50(v65, v68, 0);
                  result = v139;
                  v72 = __clz(__rbit64(v79)) + v76;
                  goto LABEL_45;
                }
              }

              sub_1C6F9ED50(v65, v68, 0);
              result = v139;
            }

LABEL_45:
            v64 = 0;
            ++v69;
            v65 = v72;
            v68 = v141;
            if (v69 == v75)
            {

              v81 = v149[0];
              v3 = v113;
              v82 = v122;
              v9 = v117;
              v13 = v130;
              goto LABEL_48;
            }
          }

          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
          return result;
        }

        v81 = MEMORY[0x1E69E7CC0];
        v82 = v122;
LABEL_48:
        v83 = sub_1C75504FC();
        sub_1C7397E58(v83);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
        inited = swift_initStackObject();
        *(inited + 16) = v115;
        v85 = v137;
        *(inited + 32) = v137;
        v149[0] = inited;
        v86 = v85;
        sub_1C6FD2528(v81);
        sub_1C7397E58(v149[0]);
        (*v133)(v82, v3);
      }

      v87 = v126;
      sub_1C7458520(v140, v126);
      if (__swift_getEnumTagSinglePayload(v87, 1, v3) == 1)
      {
        sub_1C6FD7FC8(v87, &qword_1EC216320, &unk_1C7563B80);
      }

      else
      {
        v88 = sub_1C754F23C();
        v90 = v89;
        v91 = (*v133)(v87, v3);
        sub_1C745788C(v91, v92, v149);
        if (v149[1])
        {
          v148[0] = v149[0];
          v148[1] = v149[1];
          v148[2] = v149[2];
          v93 = PersonalEventQueryExpansionDataSource.localizedExpansionQueries(for:)(v88, v90);

          type metadata accessor for QueryAssetsRetrievalProcessor(0);
          sub_1C75504FC();
          sub_1C75504FC();
          v94 = sub_1C754FEEC();
          v95 = sub_1C755117C();

          if (os_log_type_enabled(v94, v95))
          {
            v96 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            v149[0] = v97;
            *v96 = v111;
            v98 = MEMORY[0x1CCA5D090](v93, MEMORY[0x1E69E6158]);
            v100 = sub_1C6F765A4(v98, v99, v149);

            *(v96 + 4) = v100;
            v3 = v113;
            *(v96 + 12) = 2085;
            v101 = sub_1C6F765A4(v88, v90, v149);

            *(v96 + 14) = v101;
            _os_log_impl(&dword_1C6F5C000, v94, v95, "Adding personal event expansion queries %{sensitive}s to broaden the assets retrieval for meaning label %{sensitive}s", v96, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1CCA5F8E0](v97, -1, -1);
            MEMORY[0x1CCA5F8E0](v96, -1, -1);
          }

          else
          {
          }

          v102 = MEMORY[0x1E69E7CC0];
          v103 = *(v93 + 16);
          if (v103)
          {
            v149[0] = MEMORY[0x1E69E7CC0];
            sub_1C755195C();
            v104 = v93 + 40;
            do
            {
              sub_1C75504FC();
              sub_1C7073450();
              sub_1C755192C();
              sub_1C755196C();
              sub_1C755197C();
              sub_1C755193C();
              v104 += 16;
              --v103;
            }

            while (v103);

            v105 = v149[0];
          }

          else
          {

            v105 = v102;
          }

          v106 = sub_1C75504FC();
          sub_1C7397E58(v106);
          sub_1C7397E58(v105);
          v9 = v117;
        }

        else
        {
        }

        v13 = v130;
      }

      sub_1C739C9A4(v147);

      v107 = v136;
      swift_isUniquelyReferenced_nonNull_native();
      v149[0] = v107;
      sub_1C6FC8DEC();
      v136 = v149[0];
      if (v127)
      {
        sub_1C739C9A4(v146);

        v108 = v129;
        swift_isUniquelyReferenced_nonNull_native();
        v149[0] = v108;
        sub_1C6FC8DEC();
        sub_1C6FDD548(__dst);

        sub_1C6FD7FC8(v140, &qword_1EC216320, &unk_1C7563B80);
        v129 = v149[0];
      }

      else
      {
        sub_1C6FDD548(__dst);

        sub_1C6FD7FC8(v140, &qword_1EC216320, &unk_1C7563B80);
      }

      v29 = v134 + 1;
      if (v134 + 1 == v125)
      {
        return v135;
      }
    }

    sub_1C6FD7FC8(v33, &qword_1EC216320, &unk_1C7563B80);
    v36 = __swift_getEnumTagSinglePayload(&v13[v35], 1, v3);
    v37 = v13;
    if (v36 == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v135 = MEMORY[0x1E69E7CC0];
  v136 = MEMORY[0x1E69E7CC8];
  v129 = MEMORY[0x1E69E7CC8];
  return v135;
}

uint64_t sub_1C7455A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[30] = a6;
  v7[31] = v6;
  v7[28] = a4;
  v7[29] = a5;
  v7[26] = a2;
  v7[27] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1C7455A40, 0, 0);
}

void sub_1C7455A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_127_1();
  v23 = *(v22 + 208);
  OUTLINED_FUNCTION_70(*(v22 + 232), *(*(v22 + 232) + 24));
  sub_1C754F15C();
  *(v22 + 200) = MEMORY[0x1E69E7CC8];
  if (*(v23 + 16))
  {
    v24 = *(v22 + 208);
    v27 = *(v24 + 64);
    v26 = v24 + 64;
    v25 = v27;
    v104 = v22 + 136;
    v28 = -1;
    v29 = -1 << *(*(v22 + 208) + 32);
    if (-v29 < 64)
    {
      v28 = ~(-1 << -v29);
    }

    v30 = v28 & v25;
    v31 = (63 - v29) >> 6;
    v114 = *(v22 + 208);
    sub_1C75504FC();
    v32 = 0;
    v33 = MEMORY[0x1E69E7CC0];
    v111 = v31;
    v112 = v26;
    v109 = v22;
    while (1)
    {
      *(v22 + 256) = v33;
      if (!v30)
      {
        while (1)
        {
          v34 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          if (v34 >= v31)
          {

            *(v22 + 320) = 0;
            sub_1C6FDC2F0(v22 + 56);
            v57 = swift_task_alloc();
            *(v22 + 264) = v57;
            *v57 = v22;
            v57[1] = sub_1C745627C;
            OUTLINED_FUNCTION_64_22();
            goto LABEL_85;
          }

          v30 = *(v26 + 8 * v34);
          ++v32;
          if (v30)
          {
            v32 = v34;
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_89;
      }

LABEL_10:
      v35 = *(*(v114 + 56) + ((v32 << 9) | (8 * __clz(__rbit64(v30)))));
      v36 = v35 >> 62;
      if (v35 >> 62)
      {
        v37 = sub_1C75516BC();
      }

      else
      {
        v37 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v38 = v33 >> 62;
      if (v33 >> 62)
      {
        v39 = sub_1C75516BC();
      }

      else
      {
        v39 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v40 = v39 + v37;
      if (__OFADD__(v39, v37))
      {
        goto LABEL_90;
      }

      sub_1C75504FC();
      v118 = v37;
      v120 = v35;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v38)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_26_4();
      if (v41 < v40)
      {
        goto LABEL_21;
      }

LABEL_22:
      v30 &= v30 - 1;
      v43 = *(v42 + 16);
      v44 = v41 - v43;
      v45 = v42 + 8 * v43;
      v116 = v42;
      if (v36)
      {
        v47 = sub_1C75516BC();
        if (!v47)
        {
          goto LABEL_36;
        }

        v48 = v47;
        v107 = sub_1C75516BC();
        if (v44 < v107)
        {
          goto LABEL_96;
        }

        if (v48 < 1)
        {
          goto LABEL_97;
        }

        v105 = v33;
        OUTLINED_FUNCTION_0_181();
        sub_1C7099594(&qword_1EC2155C8, &qword_1EC215050, &unk_1C755EAB0, v49);
        for (i = 0; i != v48; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215050, &unk_1C755EAB0);
          v51 = sub_1C6FDD09C(v104, i, v120);
          v53 = *v52;
          v51(v104, 0);
          *(v45 + 32 + 8 * i) = v53;
        }

        v46 = v107;
        v22 = v109;
        v33 = v105;
LABEL_32:

        v31 = v111;
        v26 = v112;
        if (v46 < v118)
        {
          goto LABEL_91;
        }

        if (v46 > 0)
        {
          v54 = *(v116 + 16);
          v55 = __OFADD__(v54, v46);
          v56 = v54 + v46;
          if (v55)
          {
            goto LABEL_92;
          }

          *(v116 + 16) = v56;
        }
      }

      else
      {
        v46 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v46)
        {
          if (v44 < v46)
          {
            goto LABEL_95;
          }

          sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
          swift_arrayInitWithCopy();
          goto LABEL_32;
        }

LABEL_36:

        v31 = v111;
        v26 = v112;
        if (v118 > 0)
        {
          goto LABEL_91;
        }
      }
    }

    if (v38)
    {
LABEL_20:
      sub_1C75516BC();
    }

LABEL_21:
    v33 = sub_1C75518CC();
    OUTLINED_FUNCTION_26_4();
    goto LABEL_22;
  }

  if (!*(*(v22 + 216) + 16))
  {
    __swift_destroy_boxed_opaque_existential_1((v22 + 16));
    OUTLINED_FUNCTION_58_30();
    OUTLINED_FUNCTION_128_0();

    v63(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
    return;
  }

  v106 = v22 + 168;
  *(v22 + 120) = &type metadata for EmbeddingSearchThresholdingModels.VersionHandlingEmbeddingSearchThresholdModel;
  *(v22 + 128) = &off_1F46ACFD0;
  v58 = [objc_opt_self() currentUnifiedEmbeddingVersion];
  v59 = v58;
  if (v58)
  {
    v60 = [v58 integerValue];
  }

  else
  {
    v60 = 0;
  }

  v69 = *(v22 + 216);
  *(v22 + 96) = 5;
  *(v22 + 104) = v60;
  *(v22 + 112) = v59 == 0;
  v70 = v69 + 64;
  OUTLINED_FUNCTION_10();
  v73 = v72 & v71;
  v75 = (63 - v74) >> 6;
  v119 = v76;
  sub_1C75504FC();
  v77 = 0;
  v78 = MEMORY[0x1E69E7CC0];
  v115 = v75;
  v117 = v70;
  v110 = v22;
  while (1)
  {
    *(v22 + 288) = v78;
    if (!v73)
    {
      break;
    }

LABEL_54:
    v80 = *(*(v119 + 56) + ((v77 << 9) | (8 * __clz(__rbit64(v73)))));
    if (v80 >> 62)
    {
      v81 = sub_1C75516BC();
    }

    else
    {
      v81 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v82 = v78 >> 62;
    if (v78 >> 62)
    {
      v83 = OUTLINED_FUNCTION_81_22();
    }

    else
    {
      v83 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v84 = v83 + v81;
    if (__OFADD__(v83, v81))
    {
      goto LABEL_93;
    }

    sub_1C75504FC();
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v82)
      {
LABEL_64:
        OUTLINED_FUNCTION_81_22();
      }

LABEL_65:
      v78 = sub_1C75518CC();
      OUTLINED_FUNCTION_26_4();
      goto LABEL_66;
    }

    if (v82)
    {
      goto LABEL_64;
    }

    OUTLINED_FUNCTION_26_4();
    if (v85 < v84)
    {
      goto LABEL_65;
    }

LABEL_66:
    v73 &= v73 - 1;
    v87 = *(v86 + 16);
    v88 = v85 - v87;
    v89 = v86 + 8 * v87;
    v121 = v86;
    if (v80 >> 62)
    {
      v92 = sub_1C75516BC();
      if (v92)
      {
        v93 = v92;
        v94 = sub_1C75516BC();
        if (v88 < v94)
        {
          goto LABEL_100;
        }

        if (v93 < 1)
        {
          goto LABEL_101;
        }

        v108 = v94;
        v113 = v78;
        OUTLINED_FUNCTION_0_181();
        sub_1C7099594(&qword_1EC2155C8, &qword_1EC215050, &unk_1C755EAB0, v95);
        for (j = 0; j != v93; ++j)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215050, &unk_1C755EAB0);
          v97 = sub_1C6FDD09C(v106, j, v80);
          v99 = *v98;
          v97(v106, 0);
          *(v89 + 32 + 8 * j) = v99;
        }

        v78 = v113;
        v22 = v110;
        v91 = v108;
        goto LABEL_76;
      }

LABEL_80:

      v75 = v115;
      v70 = v117;
      if (v81 > 0)
      {
        goto LABEL_94;
      }
    }

    else
    {
      v90 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v90)
      {
        goto LABEL_80;
      }

      if (v88 < v90)
      {
        goto LABEL_99;
      }

      v91 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
      swift_arrayInitWithCopy();
LABEL_76:

      v75 = v115;
      v70 = v117;
      if (v91 < v81)
      {
        goto LABEL_94;
      }

      if (v91 > 0)
      {
        v100 = *(v121 + 16);
        v55 = __OFADD__(v100, v91);
        v101 = v100 + v91;
        if (v55)
        {
          goto LABEL_98;
        }

        *(v121 + 16) = v101;
      }
    }
  }

  while (1)
  {
    v79 = v77 + 1;
    if (__OFADD__(v77, 1))
    {
      break;
    }

    if (v79 >= v75)
    {

      *(v22 + 321) = 1;
      v102 = swift_task_alloc();
      *(v22 + 296) = v102;
      *v102 = v22;
      OUTLINED_FUNCTION_15_80(v102);
      OUTLINED_FUNCTION_64_22();
LABEL_85:
      OUTLINED_FUNCTION_128_0();

      sub_1C71074E0();
      return;
    }

    v73 = *(v70 + 8 * v79);
    ++v77;
    if (v73)
    {
      v77 = v79;
      goto LABEL_54;
    }
  }

LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
}

uint64_t sub_1C745627C()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  v5[34] = v0;

  if (v0)
  {

    __swift_destroy_boxed_opaque_existential_1(v5 + 7);
  }

  else
  {
    v5[35] = v3;
    __swift_destroy_boxed_opaque_existential_1(v5 + 7);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C74563A8()
{
  v1 = v0;
  v2 = *(v0 + 280);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 208);
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  sub_1C6FDE6CC(MEMORY[0x1E69E7CC8], sub_1C7458590, v6, v2);
  v8 = v7;

  sub_1C7108C18(v5, v8, (v0 + 200));

  if (!*(*(v0 + 216) + 16))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v12 = *(v0 + 200);
    v13 = *(v0 + 8);

    v13(v12);
    return;
  }

  v49 = v0 + 168;
  *(v0 + 120) = &type metadata for EmbeddingSearchThresholdingModels.VersionHandlingEmbeddingSearchThresholdModel;
  *(v0 + 128) = &off_1F46ACFD0;
  v9 = [objc_opt_self() currentUnifiedEmbeddingVersion];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 integerValue];
  }

  else
  {
    v11 = 0;
  }

  v14 = *(v0 + 216);
  *(v0 + 96) = 5;
  *(v0 + 104) = v11;
  *(v0 + 112) = v10 == 0;
  v15 = v14 + 64;
  OUTLINED_FUNCTION_10();
  v18 = v17 & v16;
  v20 = (63 - v19) >> 6;
  sub_1C75504FC();
  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  v54 = v20;
  v55 = v14 + 64;
  v50 = v0;
  v51 = v14;
  while (1)
  {
    *(v1 + 288) = v22;
    if (!v18)
    {
      break;
    }

LABEL_14:
    v24 = *(*(v14 + 56) + ((v21 << 9) | (8 * __clz(__rbit64(v18)))));
    if (v24 >> 62)
    {
      v25 = sub_1C75516BC();
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v26 = v22 >> 62;
    if (v22 >> 62)
    {
      v27 = OUTLINED_FUNCTION_81_22();
    }

    else
    {
      v27 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 = v27 + v25;
    if (__OFADD__(v27, v25))
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      return;
    }

    sub_1C75504FC();
    v57 = v25;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v26)
      {
LABEL_24:
        OUTLINED_FUNCTION_81_22();
      }

LABEL_25:
      v22 = sub_1C75518CC();
      OUTLINED_FUNCTION_26_4();
      goto LABEL_26;
    }

    if (v26)
    {
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_26_4();
    if (v29 < v28)
    {
      goto LABEL_25;
    }

LABEL_26:
    v18 &= v18 - 1;
    v31 = *(v30 + 16);
    v32 = v29 - v31;
    v33 = v30 + 8 * v31;
    v56 = v30;
    if (v24 >> 62)
    {
      v36 = sub_1C75516BC();
      if (!v36)
      {
        goto LABEL_40;
      }

      v37 = v36;
      v38 = sub_1C75516BC();
      if (v32 < v38)
      {
        goto LABEL_52;
      }

      if (v37 < 1)
      {
        goto LABEL_53;
      }

      v52 = v38;
      v53 = v22;
      v39 = v33 + 32;
      OUTLINED_FUNCTION_0_181();
      sub_1C7099594(&qword_1EC2155C8, &qword_1EC215050, &unk_1C755EAB0, v40);
      for (i = 0; i != v37; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215050, &unk_1C755EAB0);
        v42 = sub_1C6FDD09C(v49, i, v24);
        v44 = *v43;
        v42(v49, 0);
        *(v39 + 8 * i) = v44;
      }

      v1 = v50;
      v14 = v51;
      v22 = v53;
      v35 = v52;
LABEL_36:

      v20 = v54;
      v15 = v55;
      if (v35 < v57)
      {
        goto LABEL_49;
      }

      if (v35 > 0)
      {
        v45 = *(v56 + 16);
        v46 = __OFADD__(v45, v35);
        v47 = v45 + v35;
        if (v46)
        {
          goto LABEL_50;
        }

        *(v56 + 16) = v47;
      }
    }

    else
    {
      v34 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34)
      {
        if (v32 < v34)
        {
          goto LABEL_51;
        }

        v35 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
        swift_arrayInitWithCopy();
        goto LABEL_36;
      }

LABEL_40:

      v20 = v54;
      v15 = v55;
      if (v57 > 0)
      {
        goto LABEL_49;
      }
    }
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v23 >= v20)
    {
      break;
    }

    v18 = *(v15 + 8 * v23);
    ++v21;
    if (v18)
    {
      v21 = v23;
      goto LABEL_14;
    }
  }

  *(v1 + 321) = 1;
  v48 = swift_task_alloc();
  *(v1 + 296) = v48;
  *v48 = v1;
  OUTLINED_FUNCTION_15_80(v48);
  OUTLINED_FUNCTION_64_22();

  sub_1C71074E0();
}

uint64_t sub_1C74568A4()
{
  OUTLINED_FUNCTION_123();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 304) = v0;

  if (v0)
  {
  }

  else
  {
    *(v4 + 312) = v3;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C74569E0()
{
  v1 = v0[39];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[27];
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  sub_1C6FDE6CC(MEMORY[0x1E69E7CC8], sub_1C74585AC, v5, v1);
  v7 = v6;

  sub_1C7108C18(v4, v7, v0 + 25);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v8 = OUTLINED_FUNCTION_58_30();

  return v9(v8);
}

uint64_t sub_1C7456ACC()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C7456B28()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C7456B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[52] = a5;
  v6[53] = v5;
  v6[50] = a3;
  v6[51] = a4;
  v6[48] = a1;
  v6[49] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C7456BB4, 0, 0);
}

void sub_1C7456BB4()
{
  v42 = v0;
  v1 = *(v0 + 392);
  v2 = *(v1 + 16);
  if (*(*(v0 + 384) + 16))
  {
    v3 = v2 > 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    sub_1C6FDE390();
    sub_1C75504DC();
  }

  else
  {
    v4 = *(v0 + 424);
    sub_1C710D7C4(v1);
    v6 = v5;
    v7 = *v4;
    *(v0 + 432) = *v4;
    *(v0 + 480) = *(v4 + 8);
    sub_1C75504FC();
    if (!v2)
    {
      v16 = static StoryGenerationUtilities.mePersonUUID(in:)(v7);
      if (v17)
      {
        v18 = v16;
        v9 = v17;
        v19 = *(v0 + 424);

        v20 = *v19;
        v21 = *(v19 + 16);
        v22 = *(v4 + 8);
        sub_1C75504FC();
        v23 = v20;

        v24 = objc_autoreleasePoolPush();
        sub_1C71C7E5C(v18, v9, v23, v22, v21, &v40);
        objc_autoreleasePoolPop(v24);
        swift_bridgeObjectRelease_n();

        v8 = v40;
        type metadata accessor for QueryAssetsRetrievalProcessor(0);
        sub_1C75504FC();
        v35 = sub_1C754FEEC();
        v36 = sub_1C755117C();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = OUTLINED_FUNCTION_41_0();
          v38 = swift_slowAlloc();
          v40 = v38;
          *v37 = 136315138;
          *(v37 + 4) = sub_1C6F765A4(v18, v9, &v40);
          _os_log_impl(&dword_1C6F5C000, v35, v36, "Scoped the personal event moment grounding to Me person %s", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v38);
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_109();
        }

LABEL_10:
        *(v0 + 440) = v9;
        *(v0 + 448) = v8;
        type metadata accessor for QueryAssetsRetrievalProcessor(0);
        v10 = sub_1C754FEEC();
        v11 = sub_1C75511BC();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = OUTLINED_FUNCTION_41_0();
          v13 = swift_slowAlloc();
          v39 = v13;
          *v12 = 136315138;
          if (v8)
          {
            v14 = 0xE400000000000000;
            v15 = 1701736302;
          }

          else
          {
            v40 = 0;
            v41 = 0xE000000000000000;
            *(v0 + 376) = 0;
            v30 = sub_1C7551D8C();
            MEMORY[0x1CCA5CD70](v30);

            v15 = v40;
            v14 = v41;
          }

          v31 = sub_1C6F765A4(v15, v14, &v39);

          *(v12 + 4) = v31;
          _os_log_impl(&dword_1C6F5C000, v10, v11, "Grounded personal event query tokens via xpc call, scoped with %s assets", v12, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v13);
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_109();
        }

        OUTLINED_FUNCTION_70((*(v0 + 424) + 64), *(*(v0 + 424) + 88));
        sub_1C75504FC();
        v32 = swift_task_alloc();
        *(v0 + 456) = v32;
        *v32 = v0;
        v32[1] = sub_1C74570E8;
        OUTLINED_FUNCTION_94_1();

        __asm { BRAA            X8, X16 }
      }
    }

    if (v6)
    {
      v8 = *(v0 + 400);
      v9 = v6;
      goto LABEL_10;
    }

    type metadata accessor for QueryAssetsRetrievalProcessor(0);
    v25 = sub_1C754FEEC();
    v26 = sub_1C755117C();
    if (OUTLINED_FUNCTION_128(v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1C6F5C000, v25, v26, "No associated person uuid for personal event grounding via the graph, immediately return", v27, 2u);
      OUTLINED_FUNCTION_109();
    }

    sub_1C6FDE390();
    sub_1C75504DC();
  }

  OUTLINED_FUNCTION_94_1();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1C74570E8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 464) = v5;
  *(v3 + 472) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1C74571F8()
{
  v51 = v0;
  v1 = *(v0 + 464);
  v2 = *(v0 + 448);
  static StoryGenerationUtilities.assetIdentifiersFetchOptions(for:sharingFilter:wantsIncrementalChangeDetails:)(*(v0 + 432), *(v0 + 480), 0);
  v3 = 0;
  OUTLINED_FUNCTION_10();
  v6 = v5 & v4;
  v8 = (63 - v7) >> 6;
  v44 = *(v0 + 472);
  v47 = v9;
  v48 = MEMORY[0x1E69E7CC8];
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    do
    {
      if (!v6)
      {
        while (1)
        {
          v11 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            break;
          }

          if (v11 >= v8)
          {

            OUTLINED_FUNCTION_130_0();

            __asm { BRAA            X2, X16 }
          }

          v6 = *(v1 + 64 + 8 * v11);
          ++v3;
          if (v6)
          {
            v3 = v11;
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_30:
        OUTLINED_FUNCTION_130_0();
        return;
      }

LABEL_7:
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v13 = v12 | (v3 << 6);
      memcpy((v0 + 16), (*(v1 + 48) + 120 * v13), 0x78uLL);
      v14 = *(*(v1 + 56) + 8 * v13);
    }

    while (!*(v14 + 16));
    v49 = v10;
    v38 = v2;
    if (v2)
    {
      v40 = *(v0 + 448);
      sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1C75604F0;
      *(v15 + 56) = MEMORY[0x1E69E6158];
      *(v15 + 64) = sub_1C6F6D524();
      *(v15 + 32) = 1684632949;
      *(v15 + 40) = 0xE400000000000000;
      *(v15 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
      OUTLINED_FUNCTION_40_2();
      *(v15 + 104) = sub_1C7099594(&qword_1EDD0CEE0, &unk_1EC215BF0, &qword_1C755C2F0, v16);
      *(v15 + 72) = v40;
      sub_1C75504FC();
      sub_1C6FCA6E4(v0 + 16, v0 + 256);
      sub_1C75504FC();
      OUTLINED_FUNCTION_13_67();
      sub_1C755112C();
      MEMORY[0x1CCA5D040]();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C7550B9C();
      }

      sub_1C7550BEC();
    }

    else
    {
      sub_1C6FCA6E4(v0 + 16, v0 + 136);
      sub_1C75504FC();
    }

    sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1C75604F0;
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = sub_1C6F6D524();
    *(v17 + 32) = 0x752E746E656D6F6DLL;
    *(v17 + 40) = 0xEB00000000646975;
    *(v17 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
    OUTLINED_FUNCTION_40_2();
    *(v17 + 104) = sub_1C7099594(&qword_1EDD0CEE0, &unk_1EC215BF0, &qword_1C755C2F0, v18);
    *(v17 + 72) = v14;
    sub_1C75504FC();
    OUTLINED_FUNCTION_13_67();
    v19 = sub_1C755112C();
    MEMORY[0x1CCA5D040]();
    if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C7550B9C();
    }

    v42 = *(v0 + 424);
    v37 = v19;
    sub_1C7550BEC();
    sub_1C6F65BE8(0, &qword_1EDD0FA80, 0x1E696AB28);
    v20 = sub_1C6F6E5C4(v49);
    [v47 setInternalPredicate_];

    v39 = *v42;
    LOWORD(v42) = *(v42 + 8);
    v21 = v47;
    v22 = objc_autoreleasePoolPush();
    sub_1C71C8640(v14, v47, v39, v42, &v50);
    objc_autoreleasePoolPop(v22);
    if (v44)
    {
      goto LABEL_30;
    }

    v41 = v50;
    swift_isUniquelyReferenced_nonNull_native();
    v50 = v48;
    v45 = sub_1C6FC2A70();
    v43 = v23;
    if (__OFADD__(v48[2], (v23 & 1) == 0))
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C158, &qword_1C758C878);
    v24 = sub_1C7551A2C();
    v25 = v50;
    if (v24)
    {
      v26 = sub_1C6FC2A70();
      v28 = v43;
      v2 = v38;
      if ((v43 & 1) != (v27 & 1))
      {
        OUTLINED_FUNCTION_130_0();

        sub_1C7551E4C();
        return;
      }
    }

    else
    {
      v2 = v38;
      v26 = v45;
      v28 = v43;
    }

    v10 = MEMORY[0x1E69E7CC0];
    v48 = v25;
    if (v28)
    {
      v29 = (v25[7] + 16 * v26);
      *v29 = v14;
      v29[1] = v41;

      sub_1C6FDD548(v0 + 16);
    }

    else
    {
      v25[(v26 >> 6) + 8] |= 1 << v26;
      v46 = v26;
      memcpy((v25[6] + 120 * v26), (v0 + 16), 0x78uLL);
      v30 = (v25[7] + 16 * v46);
      *v30 = v14;
      v30[1] = v41;
      v31 = v25[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_35;
      }

      v25[2] = v33;
    }

    v44 = 0;
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1C7457824()
{
  OUTLINED_FUNCTION_42();

  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_43();

  return v0();
}

double sub_1C745788C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = sub_1C70A98F0(a1, a2);
  result = 1.35441148e-306;
  *a3 = xmmword_1C758C7C0;
  *(a3 + 16) = v4;
  return result;
}

void sub_1C7457A20(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 16))
  {
    type metadata accessor for QueryAssetsRetrievalProcessor(0);
    sub_1C6FDE42C(v4, 1);
    v7 = v5;
    sub_1C6FDE42C(v4, 1);
    v8 = v7;
    v9 = sub_1C754FEEC();
    v10 = sub_1C755119C();

    sub_1C6FDE438(v4, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138478083;
      *(v11 + 4) = v8;
      *v12 = v8;
      *(v11 + 12) = 2112;
      sub_1C6FDE42C(v4, 1);
      v13 = v8;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v14;
      v12[1] = v14;
      _os_log_impl(&dword_1C6F5C000, v9, v10, "Metadata retrieval failed for '%{private}@' personal event token: %@", v11, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215190, &qword_1C755C730);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
      MEMORY[0x1CCA5F8E0](v11, -1, -1);
    }

    if (a4)
    {
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD000000000000024, 0x80000001C7597F90);
      v15 = [v8 description];
      v16 = sub_1C755068C();
      v18 = v17;

      MEMORY[0x1CCA5CD70](v16, v18);

      MEMORY[0x1CCA5CD70](0xD000000000000016, 0x80000001C75B0F00);
      sub_1C7161CDC(0, 0xE000000000000000);

      sub_1C6FDE438(v4, 1);
    }

    else
    {

      sub_1C6FDE438(v4, 1);
    }
  }

  else
  {
    sub_1C6FDE42C(*(a2 + 8), 0);
    sub_1C6FDE42C(v4, 0);
    v20 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v21 = *a1;
    sub_1C6FC7AC8(v4, v20);
    sub_1C6FDE438(v4, 0);

    *a1 = v21;
  }
}

void sub_1C7457CF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 16))
  {
    type metadata accessor for QueryAssetsRetrievalProcessor(0);
    sub_1C6FDE42C(v4, 1);
    v7 = v5;
    sub_1C6FDE42C(v4, 1);
    v8 = v7;
    v9 = sub_1C754FEEC();
    v10 = sub_1C755119C();

    sub_1C6FDE438(v4, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138478083;
      *(v11 + 4) = v8;
      *v12 = v8;
      *(v11 + 12) = 2112;
      sub_1C6FDE42C(v4, 1);
      v13 = v8;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v14;
      v12[1] = v14;
      _os_log_impl(&dword_1C6F5C000, v9, v10, "Embedding retrieval failed for '%{private}@' personal event token: %@", v11, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215190, &qword_1C755C730);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
      MEMORY[0x1CCA5F8E0](v11, -1, -1);
    }

    if (a4)
    {
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD000000000000025, 0x80000001C75A2CF0);
      v15 = [v8 description];
      v16 = sub_1C755068C();
      v18 = v17;

      MEMORY[0x1CCA5CD70](v16, v18);

      MEMORY[0x1CCA5CD70](0xD000000000000016, 0x80000001C75B0F00);
      sub_1C7161CDC(0, 0xE000000000000000);

      sub_1C6FDE438(v4, 1);
    }

    else
    {

      sub_1C6FDE438(v4, 1);
    }
  }

  else
  {
    sub_1C6FDE42C(*(a2 + 8), 0);
    sub_1C6FDE42C(v4, 0);
    v20 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v21 = *a1;
    sub_1C6FC7AC8(v4, v20);
    sub_1C6FDE438(v4, 0);

    *a1 = v21;
  }
}

void sub_1C7457FC0(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 16))
  {
    v7 = *v3;
    v8 = *(v3 + 8);
    v9 = *(v3 + 16);
    v15 = v7;
    v16 = v8;
    v17 = v9;
    v10 = v7;

    static QueryDisambiguationAssetFetcher.fetchEventSuggestionAssetUUIDs(forMomentUUIDs:shouldApplyCurationFilter:storyPhotoLibraryContext:eventRecorder:)(a1, 0, &v15, a3);
    v11 = v15;

    if (a2)
    {

      sub_1C7069A44();
    }
  }

  else
  {
    type metadata accessor for QueryAssetsRetrievalProcessor(0);
    v12 = sub_1C754FEEC();
    v13 = sub_1C755119C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C6F5C000, v12, v13, "There are no selected moments from user that can be used to fetch the assets", v14, 2u);
      MEMORY[0x1CCA5F8E0](v14, -1, -1);
    }
  }
}

void sub_1C7458104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 8);
  if (*(a2 + 16))
  {
    v6 = *a2;
    type metadata accessor for QueryAssetsRetrievalProcessor(0);
    sub_1C6FDE42C(v4, 1);
    v7 = v6;
    sub_1C6FDE42C(v4, 1);
    v8 = v7;
    v9 = sub_1C754FEEC();
    v10 = sub_1C755119C();

    sub_1C6FDE438(v4, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138478083;
      *(v11 + 4) = v8;
      *v12 = v8;
      *(v11 + 12) = 2112;
      sub_1C6FDE42C(v4, 1);
      v13 = v8;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v14;
      v12[1] = v14;
      _os_log_impl(&dword_1C6F5C000, v9, v10, "Metadata retrieval failed for '%{private}@' personal event token that is disambiguated via the date picker: %@", v11, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215190, &qword_1C755C730);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
      MEMORY[0x1CCA5F8E0](v11, -1, -1);
    }

    if (a4)
    {
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD000000000000024, 0x80000001C7597F90);
      v15 = [v8 description];
      v16 = sub_1C755068C();
      v18 = v17;

      MEMORY[0x1CCA5CD70](v16, v18);

      MEMORY[0x1CCA5CD70](0xD00000000000003ALL, 0x80000001C75B0E50);
      sub_1C7161CDC(0, 0xE000000000000000);

      sub_1C6FDE438(v4, 1);
    }

    else
    {

      sub_1C6FDE438(v4, 1);
    }
  }

  else
  {
    v19 = sub_1C75504FC();
    sub_1C73978C4(v19);
  }
}

void *sub_1C745838C(uint64_t a1, const void *a2)
{
  v3 = *v2;
  *(v3 + 16) = a1 + 1;
  return memcpy((v3 + 120 * a1 + 32), a2, 0x78uLL);
}

uint64_t sub_1C74583EC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C745844C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C74584AC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C7458520(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216320, &unk_1C7563B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C74585C8()
{
  result = qword_1EC216370;
  if (!qword_1EC216370)
  {
    v3 = sub_1C754F24C();
    result = swift_getWitnessTable(MEMORY[0x1E69C1838], v3, v0, v1);
    atomic_store(result, &qword_1EC216370);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_24_47(uint64_t a1)
{

  return sub_1C7551DBC();
}

__n128 OUTLINED_FUNCTION_32_41()
{
  result = v0[2];
  v0[22] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_46(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  result = *(v3 + 40);
  *(v2 + 32) = *(v3 + 32);
  *(v2 + 40) = result;
  return result;
}

void OUTLINED_FUNCTION_50_33()
{

  sub_1C6FB3514();
}

uint64_t OUTLINED_FUNCTION_53_36(uint64_t a1)
{

  return sub_1C7551DBC();
}

void *OUTLINED_FUNCTION_54_32(void *a1)
{

  return memcpy(a1, (v1 + 168), 0x78uLL);
}

void OUTLINED_FUNCTION_56_30()
{
  *(v0 + 648) = v4;
  *(v0 + 656) = v2;
  *(v0 + 664) = v1;
  *(v0 + 672) = v3;
}

uint64_t OUTLINED_FUNCTION_61_22(uint64_t a1)
{
  sub_1C6F6E5B4(a1, 0);

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_74_16()
{

  static StoryGenerationUtilities.queryTokenPersonUUIDs(from:)();
}

uint64_t OUTLINED_FUNCTION_75_19(uint64_t a1)
{

  return sub_1C7551A2C();
}

uint64_t OUTLINED_FUNCTION_76_21(uint64_t a1)
{

  return sub_1C7551A2C();
}

uint64_t OUTLINED_FUNCTION_78_17()
{

  return sub_1C6FB0BE4();
}

uint64_t OUTLINED_FUNCTION_79_19()
{
}

uint64_t OUTLINED_FUNCTION_80_15(uint64_t a1)
{
  *(a1 + 16) = v1;

  return sub_1C6FCA6E4(v2 + 168, v2 + 408);
}

uint64_t OUTLINED_FUNCTION_81_22()
{

  return sub_1C75516BC();
}

uint64_t sub_1C7458888(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1C745E8CC(a1, sub_1C745EB60, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

void *StoryMusicCurator.packageMaestroKeywords(using:)(uint64_t a1)
{
  if (sub_1C6FB6304() >= 1)
  {
    v2 = 0;
    v24 = sub_1C6FB6304();
    v3 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v24 == v2)
      {
        return v3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1CCA5DDD0](v2, a1);
      }

      else
      {
        if (v2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v4 = *(a1 + 8 * v2 + 32);
      }

      if (__OFADD__(v2, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v6 = *(v4 + 16);
      v5 = *(v4 + 24);
      v7 = *(v4 + 32);
      swift_isUniquelyReferenced_nonNull_native();
      v8 = sub_1C6F78124(v6, v5);
      if (__OFADD__(v3[2], (v9 & 1) == 0))
      {
        goto LABEL_27;
      }

      v10 = v8;
      v11 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215340, &unk_1C755CC40);
      if (sub_1C7551A2C())
      {
        v12 = sub_1C6F78124(v6, v5);
        if ((v11 & 1) != (v13 & 1))
        {
          result = sub_1C7551E4C();
          __break(1u);
          return result;
        }

        v10 = v12;
      }

      v14 = v7;
      if (v11)
      {
        *(v3[7] + 4 * v10) = v14;
      }

      else
      {
        v3[(v10 >> 6) + 8] |= 1 << v10;
        v15 = (v3[6] + 16 * v10);
        *v15 = v6;
        v15[1] = v5;
        *(v3[7] + 4 * v10) = v14;
        v16 = v3[2];
        v17 = __OFADD__(v16, 1);
        v18 = v16 + 1;
        if (v17)
        {
          goto LABEL_28;
        }

        v3[2] = v18;
        sub_1C75504FC();
      }

      ++v2;
    }
  }

  if (qword_1EDD0ED88 != -1)
  {
LABEL_29:
    OUTLINED_FUNCTION_0_46(&qword_1EDD0ED88);
  }

  v20 = sub_1C754FF1C();
  __swift_project_value_buffer(v20, &dword_1EDD28D48);
  v21 = sub_1C754FEEC();
  v22 = sub_1C755117C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1C6F5C000, v21, v22, "(Keywords) No maestro keywords found for curation. Falling back to generic", v23, 2u);
    OUTLINED_FUNCTION_109();
  }

  return sub_1C75504DC();
}

uint64_t sub_1C7458BF0()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C7458CB0;
  OUTLINED_FUNCTION_88_0();

  return StoryMusicCurator.generateMusicKeywords(forStoryPrompt:keywords:with:shouldTokenizeInput:eventRecorder:)();
}

uint64_t sub_1C7458CB0()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 24) = v0;

  if (!v0)
  {
    *(v5 + 32) = v3;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C7458DBC()
{
  v5 = v0;
  v1 = *(v0 + 24);
  static StoryMusicEmbeddingTerms.filterKeywordsBelowTermThreshold(from:minScoreThreshold:)(*(v0 + 32), 0x3FE4CCCCCCCCCCCDLL, 0);
  OUTLINED_FUNCTION_24_2();

  v2 = sub_1C75504FC();
  v4 = sub_1C71CC894(v2);
  sub_1C70CCDF0(&v4);
  if (v1)
  {
  }

  else
  {

    OUTLINED_FUNCTION_116();

    v3();
  }
}

uint64_t sub_1C7458E94()
{
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_46(&qword_1EDD0ED88);
  }

  v1 = *(v0 + 24);
  v2 = sub_1C754FF1C();
  __swift_project_value_buffer(v2, &dword_1EDD28D48);
  v3 = v1;
  v4 = sub_1C754FEEC();
  v5 = sub_1C755119C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 24);
    v7 = OUTLINED_FUNCTION_41_0();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    OUTLINED_FUNCTION_52_2(&dword_1C6F5C000, v11, v5, "(Keywords) Falling back to generic curation since generateMusicKeywords failed with error: %@");
    sub_1C6FC15D8(v8);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_109();
  }

  v12 = *(v0 + 24);

  OUTLINED_FUNCTION_116();
  v14 = MEMORY[0x1E69E7CC0];

  return v13(v14);
}

uint64_t StoryMusicCurator.generateMusicKeywords(forStoryPrompt:keywords:with:shouldTokenizeInput:eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  *(v1 + 176) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  *(v1 + 64) = v6;
  *(v1 + 72) = v7;
  sub_1C754F2FC();
  *(v1 + 112) = swift_task_alloc();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C745907C()
{
  OUTLINED_FUNCTION_75_1();
  v1 = *(v0 + 104);
  v7 = *(v0 + 80);
  __swift_project_boxed_opaque_existential_1(*(v0 + 96), *(*(v0 + 96) + 24));
  sub_1C754F15C();
  v2 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v7;
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  v5 = type metadata accessor for MusicKeywordsGeneratorEmbedded();
  *v4 = v0;
  v4[1] = sub_1C74591E0;

  return MEMORY[0x1EEE2A6A0](v0 + 56, "MusicCurator.initEmbeddings", 27, 2, &unk_1C758C920, v3, v2, v5);
}

uint64_t sub_1C74591E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C74592E0()
{
  OUTLINED_FUNCTION_42();
  sub_1C754F30C();
  v0[18] = v0[7];
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_1C74593B4;

  return sub_1C743E970();
}

uint64_t sub_1C74593B4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 160) = v4;
  *(v2 + 168) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C74594B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_87_0();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_75_1();
  a16 = v18;
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_46(&qword_1EDD0ED88);
  }

  v21 = sub_1C754FF1C();
  __swift_project_value_buffer(v21, &dword_1EDD28D48);
  sub_1C75504FC();
  sub_1C75504FC();
  v22 = sub_1C754FEEC();
  v23 = sub_1C755118C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = v18[20];
    v25 = v18[10];
    v26 = swift_slowAlloc();
    v27 = OUTLINED_FUNCTION_20_1();
    a9 = v27;
    *v26 = 134218242;
    *(v26 + 4) = *(v25 + 16);

    *(v26 + 12) = 2080;
    v28 = type metadata accessor for MusicKeywordCompletion();
    v29 = MEMORY[0x1CCA5D090](v24, v28);
    v31 = sub_1C6F765A4(v29, v30, &a9);

    *(v26 + 14) = v31;
    _os_log_impl(&dword_1C6F5C000, v22, v23, "(Keywords) Music keyword generation against %ld keywords returned keywords: %s", v26, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v18 + 2);

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_88_0();

  return v34(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
}

uint64_t StoryMusicCurator.postProcess(keywords:with:deviceRegion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_46(&qword_1EDD0ED88);
  }

  v8 = sub_1C754FF1C();
  __swift_project_value_buffer(v8, &dword_1EDD28D48);
  sub_1C75504FC();
  v9 = sub_1C754FEEC();
  v10 = sub_1C755118C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_41_0();
    v50 = OUTLINED_FUNCTION_20_1();
    *v11 = 136315138;
    v12 = type metadata accessor for MusicKeywordCompletion();
    v13 = MEMORY[0x1CCA5D090](a1, v12);
    v15 = a2;
    v16 = a3;
    v17 = a4;
    v18 = sub_1C6F765A4(v13, v14, &v50);

    *(v11 + 4) = v18;
    a4 = v17;
    a3 = v16;
    a2 = v15;
    _os_log_impl(&dword_1C6F5C000, v9, v10, "(Keywords) Filtered maestro keywords before post-processing: %s", v11, 0xCu);
    OUTLINED_FUNCTION_56_2();
    OUTLINED_FUNCTION_109();
  }

  v19 = sub_1C745C260(a1, a2);
  v20 = sub_1C745CC10(v19, a3, a4);
  v22 = v21;
  if (!v20)
  {

    v30 = sub_1C745D530(v19, v23, v24, v25, v26, v27, v28, v29);
    v22 = v31;
    if (!v30)
    {

      v39 = sub_1C745D880(v19, v32, v33, v34, v35, v36, v37, v38);
      v22 = v40;
      if ((v39 & 1) == 0)
      {

        sub_1C745DDD4(v19, v41, v42, v43, v44, v45, v46, v47);
        v22 = v48;
      }
    }
  }

  return v22;
}

uint64_t StoryMusicCurator.appendMoodKeywords(to:for:)(uint64_t a1, const void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  MusicMood.moodsMaestroKeywordsDictionary(shouldIncludeCompatibleMoods:shouldIncludeIncompatibleMoods:)(1);
  OUTLINED_FUNCTION_24_2();
  v2 = sub_1C75504FC();
  return sub_1C7458888(v2, __dst);
}

uint64_t StoryMusicCurator.curateMaestroKeywords(in:eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = sub_1C754F38C();
  v1[8] = v4;
  v1[9] = *(v4 - 8);
  v1[10] = swift_task_alloc();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C7459974()
{
  v30 = v0;
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  v3 = *(v2 + 56);
  if (v3)
  {
    v4 = qword_1EDD0ED88;
    sub_1C75504FC();
    if (v4 != -1)
    {
      OUTLINED_FUNCTION_0_46(&qword_1EDD0ED88);
    }

    v5 = sub_1C754FF1C();
    __swift_project_value_buffer(v5, &dword_1EDD28D48);
    OUTLINED_FUNCTION_24_2();
    sub_1C75504FC();
    v6 = sub_1C754FEEC();
    sub_1C755117C();
    OUTLINED_FUNCTION_31_44();
    if (OUTLINED_FUNCTION_262_0())
    {
      OUTLINED_FUNCTION_41_0();
      v29 = OUTLINED_FUNCTION_17_6();
      *v2 = 136315138;
      v7 = type metadata accessor for MusicKeywordCompletion();
      v8 = MEMORY[0x1CCA5D090](v3, v7);
      v10 = sub_1C6F765A4(v8, v9, &v29);

      *(v2 + 4) = v10;
      OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v11, v12, "(Keywords) Using cached keywords: %s");
      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_10_1();
    }

    __swift_project_boxed_opaque_existential_1(v0[6], v1[3]);
    OUTLINED_FUNCTION_17_18();
    sub_1C754F1AC();
    v13 = OUTLINED_FUNCTION_18_64();
    v14(v13);

    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_20_3();

    __asm { BRAA            X2, X16 }
  }

  v17 = v0[5];
  v18 = *(v17 + *(type metadata accessor for StoryMusicCurationOptions(0) + 88) + 168);
  if (v18 && *(v18 + 16))
  {
    v19 = swift_task_alloc();
    v0[11] = v19;
    *v19 = v0;
    v19[1] = sub_1C7459C24;
    OUTLINED_FUNCTION_20_3();

    return sub_1C745A3EC(v20, v21, v22);
  }

  else
  {
    v25 = swift_task_alloc();
    v0[14] = v25;
    *v25 = v0;
    OUTLINED_FUNCTION_1_138(v25);
    OUTLINED_FUNCTION_20_3();

    return sub_1C745AE04(v26, v27);
  }
}

uint64_t sub_1C7459C24()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 96) = v4;
  *(v2 + 104) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C7459D28()
{
  OUTLINED_FUNCTION_49_0();
  if (*(v0 + 96))
  {
    __swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));
    OUTLINED_FUNCTION_17_18();
    sub_1C754F1AC();
    v1 = OUTLINED_FUNCTION_18_64();
    v2(v1);

    v3 = OUTLINED_FUNCTION_53();

    return v4(v3);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 112) = v6;
    *v6 = v0;
    v7 = OUTLINED_FUNCTION_1_138(v6);

    return sub_1C745AE04(v7, v8);
  }
}

uint64_t sub_1C7459E28()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 120) = v4;
  *(v2 + 128) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1C7459F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24_4();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_31();
  a20 = v22;
  type metadata accessor for MaestroKeywordResolver();
  v27 = OUTLINED_FUNCTION_17_18();
  v28 = static MaestroKeywordResolver.resolveLLMKeywordsToMaestro(for:)(v27);
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_46(&qword_1EDD0ED88);
  }

  v29 = sub_1C754FF1C();
  __swift_project_value_buffer(v29, &dword_1EDD28D48);
  OUTLINED_FUNCTION_24_2();
  sub_1C75504FC();
  v30 = sub_1C754FEEC();
  sub_1C755118C();
  OUTLINED_FUNCTION_31_44();
  if (os_log_type_enabled(v30, v23))
  {
    OUTLINED_FUNCTION_41_0();
    a10 = OUTLINED_FUNCTION_17_6();
    *v24 = 136315138;
    v31 = type metadata accessor for MusicKeywordCompletion();
    v32 = MEMORY[0x1CCA5D090](v28, v31);
    v34 = sub_1C6F765A4(v32, v33, &a10);

    *(v24 + 4) = v34;
    _os_log_impl(&dword_1C6F5C000, v30, v23, "(Keywords) Pre-trimmed maestro keywords: %s", v24, 0xCu);
    OUTLINED_FUNCTION_56_2();
    OUTLINED_FUNCTION_10_1();
  }

  v35 = *(v22 + 128);
  v36 = sub_1C75504FC();
  a10 = sub_1C71CC894(v36);
  sub_1C70CCDF0(&a10);
  if (v35)
  {

    OUTLINED_FUNCTION_17_1();

    return;
  }

  v38 = *(v22 + 40);

  v39 = *(v38 + 8);
  if (v39 < 0)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v38 = sub_1C70340A0(v39, a10);
  v28 = v40;
  v23 = v41;
  v24 = v42;
  if ((v42 & 1) == 0)
  {
LABEL_11:
    sub_1C739C81C(v38, v28, v23, v24);
    v44 = v43;
LABEL_18:
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  sub_1C7551DEC();
  swift_unknownObjectRetain_n();
  v45 = swift_dynamicCastClass();
  if (!v45)
  {
    swift_unknownObjectRelease();
    v45 = MEMORY[0x1E69E7CC0];
  }

  v46 = *(v45 + 16);

  if (__OFSUB__(v24 >> 1, v23))
  {
    goto LABEL_25;
  }

  if (v46 != (v24 >> 1) - v23)
  {
LABEL_26:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v44 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v44)
  {
    v44 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

LABEL_19:
  v47 = *(v22 + 56);
  *(v47 + 56) = v44;

  v48 = v47 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
  OUTLINED_FUNCTION_58_13(v47 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics, v22 + 16);
  *(v48 + *(type metadata accessor for StoryMusicCurationDiagnostics(0) + 36)) = v44;
  swift_retain_n();

  v49 = sub_1C754FEEC();
  v50 = sub_1C755117C();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = OUTLINED_FUNCTION_41_0();
    v52 = OUTLINED_FUNCTION_20_1();
    a10 = v52;
    *v51 = 136315138;
    v53 = type metadata accessor for MusicKeywordCompletion();
    v54 = MEMORY[0x1CCA5D090](v44, v53);
    v56 = sub_1C6F765A4(v54, v55, &a10);

    *(v51 + 4) = v56;
    OUTLINED_FUNCTION_52_2(&dword_1C6F5C000, v57, v50, "(Keywords) cachedMaestroKeywords updated and returning: %s");
    __swift_destroy_boxed_opaque_existential_1(v52);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_109();
  }

  __swift_project_boxed_opaque_existential_1(*(v22 + 48), *(*(v22 + 48) + 24));
  OUTLINED_FUNCTION_17_18();
  sub_1C754F1AC();
  v58 = OUTLINED_FUNCTION_18_64();
  v59(v58);

  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_17_1();

  v62(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C745A2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_28_39();
  (*(v12 + 8))(v10, v11);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C745A368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_28_39();
  (*(v12 + 8))(v10, v11);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C745A3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C745A410, 0, 0);
}

uint64_t sub_1C745A410()
{
  v63 = v0;
  if (qword_1EDD0ED88 != -1)
  {
LABEL_29:
    OUTLINED_FUNCTION_0_46(&qword_1EDD0ED88);
  }

  v1 = sub_1C754FF1C();
  *(v0 + 152) = __swift_project_value_buffer(v1, &dword_1EDD28D48);
  sub_1C75504FC();
  v2 = sub_1C754FEEC();
  v3 = sub_1C755117C();

  v57 = v0;
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 120);
    v5 = OUTLINED_FUNCTION_41_0();
    v59 = OUTLINED_FUNCTION_20_1();
    *v5 = 136315138;
    v6 = MEMORY[0x1CCA5D090](v4, MEMORY[0x1E69E6158]);
    v8 = sub_1C6F765A4(v6, v7, &v59);

    *(v5 + 4) = v8;
    OUTLINED_FUNCTION_52_2(&dword_1C6F5C000, v9, v3, "(Keywords)(Pre-curated) Preparing pre-curated keywords: %s");
    OUTLINED_FUNCTION_56_2();
    OUTLINED_FUNCTION_109();
  }

  v10 = 0;
  v11 = *(v0 + 120);
  v12 = MEMORY[0x1E69E7CC0];
  v58 = MEMORY[0x1E69E7CC0];
  v13 = *(v11 + 16);
  v14 = v11 + 40;
  v55 = v11 + 40;
LABEL_5:
  v56 = v12;
  *(v0 + 160) = v12;
  v15 = (v14 + 16 * v10);
  while (v13 != v10)
  {
    if (v10 >= v13)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v0 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_28;
    }

    v16 = *(v15 - 1);
    v17 = *v15;
    static StoryMusicEmbeddingTerms.termByDisplayName(_:)();
    v18 = v60;
    if (v60)
    {
      v22 = v61;
      v23 = v62;
      v24 = v59;
      type metadata accessor for MusicKeywordCompletion();
      swift_allocObject();
      MusicKeywordCompletion.init(keyword:score:)(v22, v23, 0.99);
      sub_1C75504FC();
      v25 = sub_1C72B9804(v24, v18);
      MEMORY[0x1CCA5D040](v25);
      if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C7550B9C();
      }

      sub_1C7550BEC();
      v12 = v58;
      v10 = v0;
      v0 = v57;
      v14 = v55;
      goto LABEL_5;
    }

    sub_1C75504FC();
    v19 = sub_1C754FEEC();
    v20 = sub_1C755119C();

    if (os_log_type_enabled(v19, v20))
    {
      v0 = OUTLINED_FUNCTION_41_0();
      v21 = OUTLINED_FUNCTION_20_1();
      v59 = v21;
      *v0 = 136315138;
      *(v0 + 4) = sub_1C6F765A4(v16, v17, &v59);
      _os_log_impl(&dword_1C6F5C000, v19, v20, "(Keywords)(Pre-curated) Unable to map keyword -> %s", v0, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    ++v10;
    v15 += 2;
  }

  v26 = v56;
  if (sub_1C6FB6304())
  {
    sub_1C75504FC();
    v27 = sub_1C754FEEC();
    v28 = sub_1C755117C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = OUTLINED_FUNCTION_41_0();
      v30 = OUTLINED_FUNCTION_20_1();
      v59 = v30;
      *v29 = 136315138;
      v31 = type metadata accessor for MusicKeywordCompletion();
      v32 = MEMORY[0x1CCA5D090](v56, v31);
      v34 = sub_1C6F765A4(v32, v33, &v59);
      v26 = v56;

      *(v29 + 4) = v34;
      OUTLINED_FUNCTION_52_2(&dword_1C6F5C000, v35, v28, "(Keywords)(Pre-curated) Resolved keywords via direct mapping: %s");
      __swift_destroy_boxed_opaque_existential_1(v30);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v36 = v57[18] + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
    OUTLINED_FUNCTION_58_13(v36, (v57 + 2));
    v37 = type metadata accessor for StoryMusicCurationDiagnostics(0);
    *(v36 + *(v37 + 36)) = v26;
    sub_1C75504FC();

    swift_beginAccess();
    v38 = *(v37 + 140);
    sub_1C6FB0600();
    v39 = v26;
    v40 = *(*(v36 + v38) + 16);
    sub_1C6FB0EFC();
    v41 = *(v36 + v38);
    *(v41 + 16) = v40 + 1;
    v42 = v41 + 16 * v40;
    *(v42 + 32) = 0xD00000000000002ELL;
    *(v42 + 40) = 0x80000001C75B0F40;
    *(v36 + v38) = v41;
    swift_endAccess();
    OUTLINED_FUNCTION_116();

    return v43(v39);
  }

  else
  {
    v45 = sub_1C754FEEC();
    v46 = sub_1C755119C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1C6F5C000, v45, v46, "(Keywords)(Pre-curated) No direct mapping found. Try to use embeddings for keywords", v47, 2u);
      OUTLINED_FUNCTION_109();
    }

    v48 = v57[15];

    v57[14] = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C703328C();
    v49 = sub_1C75505FC();
    v51 = v50;
    v57[21] = v50;
    v52 = swift_task_alloc();
    v57[22] = v52;
    *v52 = v57;
    v52[1] = sub_1C745AA2C;
    v53 = v57[17];
    v54 = v57[16];

    return sub_1C71F58BC(v49, v51, v54, v53);
  }
}

uint64_t sub_1C745AA2C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 184) = v5;
  *(v3 + 192) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C745AB34()
{
  OUTLINED_FUNCTION_75_1();
  v24 = v0;
  if (sub_1C6FB6304())
  {
    sub_1C75504FC();
    v1 = sub_1C754FEEC();
    v2 = sub_1C755117C();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = v0[23];
      v4 = OUTLINED_FUNCTION_41_0();
      v5 = OUTLINED_FUNCTION_20_1();
      v23 = v5;
      *v4 = 136315138;
      v6 = type metadata accessor for MusicKeywordCompletion();
      v7 = MEMORY[0x1CCA5D090](v3, v6);
      v9 = sub_1C6F765A4(v7, v8, &v23);

      *(v4 + 4) = v9;
      _os_log_impl(&dword_1C6F5C000, v1, v2, "(Keywords)(Pre-curated) Resolved keywords via embedding lookup: %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_109();
    }

    v10 = v0[20];
    v11 = v0[18] + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
    OUTLINED_FUNCTION_58_13(v11, (v0 + 8));
    v12 = type metadata accessor for StoryMusicCurationDiagnostics(0);
    *(v11 + *(v12 + 36)) = v10;

    swift_beginAccess();
    v13 = *(v12 + 140);
    sub_1C6FB0600();
    v14 = *(*(v11 + v13) + 16);
    sub_1C6FB0EFC();
    v15 = *(v11 + v13);
    *(v15 + 16) = v14 + 1;
    v16 = v15 + 16 * v14;
    *(v16 + 32) = 0xD000000000000038;
    *(v16 + 40) = 0x80000001C75B0F70;
    *(v11 + v13) = v15;
    swift_endAccess();
  }

  else
  {

    v17 = sub_1C754FEEC();
    v18 = sub_1C755119C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1C6F5C000, v17, v18, "(Keywords)(Pre-curated) Unable to get keywords curated so continuing with normal flow", v19, 2u);
      OUTLINED_FUNCTION_109();
    }
  }

  v20 = OUTLINED_FUNCTION_53();

  return v21(v20);
}

uint64_t sub_1C745ADA0()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C745AE04(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C745AE28, 0, 0);
}

uint64_t sub_1C745AE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v15 = v14[7];
  v16 = sub_1C745BCC0(v14[5]);
  v14[8] = v16;
  v17 = MEMORY[0x1CCA5D090]();
  v19 = v18;
  v20 = v15 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
  OUTLINED_FUNCTION_58_13(v20, (v14 + 2));
  v21 = type metadata accessor for StoryMusicCurationDiagnostics(0);
  v22 = (v20 + *(v21 + 28));
  *v22 = v17;
  v22[1] = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217C40, &unk_1C756E220);
  *(v20 + *(v21 + 32)) = sub_1C75504DC();

  v23 = *(v16 + 16);
  v24 = (v16 + 32);
  while (v23)
  {
    v16 = 0xEF7374696172546CLL;
    if (*v24)
    {
      if (*v24 != 1)
      {

LABEL_17:
        v28 = swift_task_alloc();
        v14[9] = v28;
        *v28 = v14;
        OUTLINED_FUNCTION_1_138(v28);
        OUTLINED_FUNCTION_17_1();

        return sub_1C71F5110(v29, v30);
      }

      v16 = 0x80000001C7595FC0;
    }

    v19 = sub_1C7551DBC();

    ++v24;
    --v23;
    if (v19)
    {
      goto LABEL_17;
    }
  }

  v14[11] = MEMORY[0x1E69E7CC0];
  v25 = -*(v14[8] + 16);
  v26 = 32;
  while (v25 + v26 != 32)
  {
    v27 = *(v14[8] + v26);
    if (v27 == 1)
    {
      v16 = 0x80000001C7595FC0;
    }

    else
    {
      v16 = 0xEE0074706D6F7250;
      if (v27 != 2)
      {

LABEL_27:
        v36 = swift_task_alloc();
        v14[12] = v36;
        *v36 = v14;
        OUTLINED_FUNCTION_10_80(v36);
        OUTLINED_FUNCTION_17_1();

        return sub_1C70CBD54(v37, v38, v39);
      }
    }

    v19 = sub_1C7551DBC();

    ++v26;
    if (v19)
    {
      goto LABEL_27;
    }
  }

  OUTLINED_FUNCTION_30_47(MEMORY[0x1E69E7CC0]);
  while (1)
  {
    v33 = v14[8];
    if (v19 + v26 == 32)
    {
      break;
    }

    v34 = 0xEF7374696172546CLL;
    v35 = 0x61626F6C47657375;
    if (*(v33 + v26))
    {
      if (*(v33 + v26) != 2)
      {

LABEL_38:

        v59 = swift_task_alloc();
        v14[15] = v59;
        *v59 = v14;
        OUTLINED_FUNCTION_1_138(v59);
        OUTLINED_FUNCTION_17_1();

        return sub_1C74931B4();
      }

      v34 = 0xEE0074706D6F7250;
      v35 = 0x79726F7453657375;
    }

    v16 = OUTLINED_FUNCTION_36_37(v35, v34);

    ++v26;
    if (v16)
    {
      goto LABEL_38;
    }
  }

  OUTLINED_FUNCTION_15_81();
  sub_1C6FD2F68(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_40_47();
  OUTLINED_FUNCTION_27_51();
  OUTLINED_FUNCTION_43_37();
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_46(&qword_1EDD0ED88);
  }

  v41 = sub_1C754FF1C();
  __swift_project_value_buffer(v41, &dword_1EDD28D48);
  OUTLINED_FUNCTION_24_2();
  sub_1C75504FC();
  v42 = sub_1C754FEEC();
  sub_1C755117C();
  OUTLINED_FUNCTION_31_44();
  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_47_4();
    OUTLINED_FUNCTION_26_47(4.8149e-34);
    OUTLINED_FUNCTION_39_42(v43, v44, v45, v46, v47, v48);
    OUTLINED_FUNCTION_42_37();
    MEMORY[0x61626F6C47657379] = v16;
    OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v49, v50, "keywordsCuratedClean = %s");
    OUTLINED_FUNCTION_56_2();
    OUTLINED_FUNCTION_10_1();
  }

  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_17_1();

  return v53(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C745B2C0()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;

  if (v0)
  {

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 80) = v3;
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1C745B3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v14[11] = v14[10];
  v16 = -*(v14[8] + 16);
  v17 = 32;
  while (v16 + v17 != 32)
  {
    v18 = *(v14[8] + v17);
    if (v18 != 1 && v18 != 2)
    {

LABEL_14:
      v20 = swift_task_alloc();
      v14[12] = v20;
      *v20 = v14;
      OUTLINED_FUNCTION_10_80(v20);
      OUTLINED_FUNCTION_17_1();

      return sub_1C70CBD54(v21, v22, v23);
    }

    v15 = sub_1C7551DBC();

    ++v17;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_30_47(MEMORY[0x1E69E7CC0]);
  while (1)
  {
    v19 = v14[8];
    if (v16 + v17 == 32)
    {
      break;
    }

    if (*(v19 + v17) && *(v19 + v17) != 2)
    {

LABEL_25:

      v44 = swift_task_alloc();
      v14[15] = v44;
      *v44 = v14;
      OUTLINED_FUNCTION_1_138(v44);
      OUTLINED_FUNCTION_17_1();

      return sub_1C74931B4();
    }

    v15 = sub_1C7551DBC();

    ++v17;
    if (v15)
    {
      goto LABEL_25;
    }
  }

  OUTLINED_FUNCTION_15_81();
  sub_1C6FD2F68(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_40_47();
  OUTLINED_FUNCTION_27_51();
  OUTLINED_FUNCTION_43_37();
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_46(&qword_1EDD0ED88);
  }

  v26 = sub_1C754FF1C();
  __swift_project_value_buffer(v26, &dword_1EDD28D48);
  OUTLINED_FUNCTION_24_2();
  sub_1C75504FC();
  v27 = sub_1C754FEEC();
  sub_1C755117C();
  OUTLINED_FUNCTION_31_44();
  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_47_4();
    OUTLINED_FUNCTION_26_47(4.8149e-34);
    OUTLINED_FUNCTION_39_42(v28, v29, v30, v31, v32, v33);
    OUTLINED_FUNCTION_42_37();
    *(v15 + 4) = 0x79726F7453657375;
    OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v34, v35, "keywordsCuratedClean = %s");
    OUTLINED_FUNCTION_56_2();
    OUTLINED_FUNCTION_10_1();
  }

  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_17_1();

  return v38(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C745B724()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 104) = v3;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C745B814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v14[14] = v14[13];
  v15 = -*(v14[8] + 16);
  v16 = 32;
  while (1)
  {
    v17 = v14[8];
    if (v15 + v16 == 32)
    {
      break;
    }

    if (*(v17 + v16))
    {
      if (*(v17 + v16) != 2)
      {

LABEL_17:

        v40 = swift_task_alloc();
        v14[15] = v40;
        *v40 = v14;
        OUTLINED_FUNCTION_1_138(v40);
        OUTLINED_FUNCTION_17_1();

        return sub_1C74931B4();
      }

      v18 = 0xEE0074706D6F7250;
      v19 = 0x79726F7453657375;
    }

    else
    {
      v18 = 0xEF7374696172546CLL;
      v19 = 0x61626F6C47657375;
    }

    v20 = OUTLINED_FUNCTION_36_37(v19, v18);

    ++v16;
    if (v20)
    {
      goto LABEL_17;
    }
  }

  OUTLINED_FUNCTION_15_81();
  sub_1C6FD2F68(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_40_47();
  OUTLINED_FUNCTION_27_51();
  OUTLINED_FUNCTION_43_37();
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_46(&qword_1EDD0ED88);
  }

  v21 = sub_1C754FF1C();
  __swift_project_value_buffer(v21, &dword_1EDD28D48);
  OUTLINED_FUNCTION_24_2();
  sub_1C75504FC();
  v22 = sub_1C754FEEC();
  sub_1C755117C();
  OUTLINED_FUNCTION_31_44();
  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_47_4();
    OUTLINED_FUNCTION_26_47(4.8149e-34);
    OUTLINED_FUNCTION_39_42(v23, v24, v25, v26, v27, v28);
    OUTLINED_FUNCTION_42_37();
    *(v16 + 4) = 0xEF7374696172546CLL;
    OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v29, v30, "keywordsCuratedClean = %s");
    OUTLINED_FUNCTION_56_2();
    OUTLINED_FUNCTION_10_1();
  }

  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_17_1();

  return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C745BA58()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;

  if (v0)
  {

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 128) = v3;
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1C745BB9C()
{
  v3 = *(v0 + 128);
  OUTLINED_FUNCTION_15_81();
  sub_1C6FD2F68(v3);
  OUTLINED_FUNCTION_40_47();
  OUTLINED_FUNCTION_27_51();
  OUTLINED_FUNCTION_43_37();
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_46(&qword_1EDD0ED88);
  }

  v4 = sub_1C754FF1C();
  __swift_project_value_buffer(v4, &dword_1EDD28D48);
  OUTLINED_FUNCTION_24_2();
  sub_1C75504FC();
  v5 = sub_1C754FEEC();
  sub_1C755117C();
  OUTLINED_FUNCTION_31_44();
  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_47_4();
    OUTLINED_FUNCTION_26_47(4.8149e-34);
    OUTLINED_FUNCTION_39_42(v6, v7, v8, v9, v10, v11);
    OUTLINED_FUNCTION_42_37();
    *(v1 + 4) = v2;
    OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v12, v13, "keywordsCuratedClean = %s");
    OUTLINED_FUNCTION_56_2();
    OUTLINED_FUNCTION_10_1();
  }

  v14 = OUTLINED_FUNCTION_53();

  return v15(v14);
}

uint64_t sub_1C745BCC0(uint64_t a1)
{
  v2 = [objc_opt_self() storyMusicMaestroEmbeddingApproach];
  v3 = sub_1C755068C();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      v9 = byte_1F46A9458[v7 + 32];
      v23[0] = v3;
      v23[1] = v5;
      sub_1C6FB5E8C();
      v10 = sub_1C75515AC();

      if (v10)
      {
        v24 = v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C716EDF4(0, *(v8 + 16) + 1, 1);
          v8 = v24;
        }

        v12 = *(v8 + 16);
        v11 = *(v8 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1C716EDF4(v11 > 1, v12 + 1, 1);
          v8 = v24;
        }

        *(v8 + 16) = v12 + 1;
        *(v8 + v12 + 32) = v9;
      }

      ++v7;
    }

    while (v7 != 3);
    if (qword_1EDD0ED88 != -1)
    {
      swift_once();
    }

    v13 = sub_1C754FF1C();
    __swift_project_value_buffer(v13, &dword_1EDD28D48);
    sub_1C75504FC();

    v14 = sub_1C754FEEC();
    v15 = sub_1C755118C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23[0] = v17;
      *v16 = 136315394;
      v18 = sub_1C6F765A4(v3, v5, v23);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2080;
      v19 = MEMORY[0x1CCA5D090](v8, &type metadata for MusicKeywordCurationApproach);
      v21 = sub_1C6F765A4(v19, v20, v23);

      *(v16 + 14) = v21;
      _os_log_impl(&dword_1C6F5C000, v14, v15, "[keywordCurationApproach] Using defaults override for the keyword curation: %s -> %s ", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v17, -1, -1);
      MEMORY[0x1CCA5F8E0](v16, -1, -1);
    }

    else
    {
    }
  }

  else
  {

    v8 = *(a1 + 32);
    sub_1C75504FC();
  }

  return v8;
}

uint64_t sub_1C745C030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C745C054, 0, 0);
}

uint64_t sub_1C745C054()
{
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 24) + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_storyMusicCache);
  *(v0 + 72) = 0;
  v3 = *(v1 + 8);
  type metadata accessor for MusicKeywordsGeneratorEmbedded();
  swift_allocObject();
  v4 = v2;
  sub_1C75504FC();
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_1C745C154;
  v6 = *(v0 + 32);

  return MusicKeywordsGeneratorEmbedded.init(usingCache:embeddingType:with:maxKeywords:)(v2, (v0 + 72), v6, v3);
}

uint64_t sub_1C745C154()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 56) = v0;

  if (!v0)
  {
    *(v5 + 64) = v3;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t *sub_1C745C260(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MaestroKeywordResolver();
  static MaestroKeywordResolver.tripMaestroKeywords()(v4, v5, v6, v7, v8, v9, v10, v11);
  v12 = a2 + *(type metadata accessor for StoryMusicCurationOptions(0) + 88);
  i = MEMORY[0x1E69E7CC0];
  if (*(v12 + 48))
  {
    v14 = *(v12 + 64);
    if (v14 >> 8 != 2)
    {
      if (qword_1EDD0ED88 != -1)
      {
        swift_once();
      }

      v31 = sub_1C754FF1C();
      __swift_project_value_buffer(v31, &dword_1EDD28D48);
      v32 = sub_1C754FEEC();
      v33 = sub_1C755117C();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v65 = v64;
        *v34 = 136315394;
        if ((v14 >> 8))
        {
          v35 = 0x6465746365746564;
        }

        else
        {
          v35 = 0xD000000000000013;
        }

        if ((v14 >> 8))
        {
          v36 = 0xE800000000000000;
        }

        else
        {
          v36 = 0x80000001C75B0FF0;
        }

        if ((v14 >> 8))
        {
          v37 = 1885693259;
        }

        else
        {
          v37 = 0x65766F6D6552;
        }

        if ((v14 >> 8))
        {
          v38 = 0xE400000000000000;
        }

        else
        {
          v38 = 0xE600000000000000;
        }

        v39 = sub_1C6F765A4(v35, v36, &v65);

        *(v34 + 4) = v39;
        *(v34 + 12) = 2080;
        v40 = sub_1C6F765A4(v37, v38, &v65);

        *(v34 + 14) = v40;
        _os_log_impl(&dword_1C6F5C000, v32, v33, "(Keywords) PostProcessing: Trip is %s by QU. %s isForTrip keywords.", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v64, -1, -1);
        MEMORY[0x1CCA5F8E0](v34, -1, -1);
      }

      if ((v14 & 0x100) != 0)
      {

        goto LABEL_39;
      }

      v67 = MEMORY[0x1E69E7CC0];
      v56 = sub_1C6FB6304();
      for (i = 0; v56 != i; i = (i + 1))
      {
        sub_1C6FB6330();
        if ((a1 & 0xC000000000000001) != 0)
        {
          v58 = MEMORY[0x1CCA5DDD0](i, a1);
          v57 = v58;
        }

        else
        {
          v57 = *(a1 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v59 = *(v57 + 24);
        v65 = *(v57 + 16);
        v66 = v59;
        MEMORY[0x1EEE9AC00](v58);
        sub_1C75504FC();
        v60 = sub_1C70735F4();

        if (v60)
        {
        }

        else
        {
          sub_1C755192C();
          sub_1C755196C();
          sub_1C755197C();
          sub_1C755193C();
        }
      }

      goto LABEL_80;
    }
  }

  if (qword_1EDD0ED88 != -1)
  {
LABEL_86:
    swift_once();
  }

  v15 = sub_1C754FF1C();
  __swift_project_value_buffer(v15, &dword_1EDD28D48);
  v16 = sub_1C754FEEC();
  v17 = sub_1C755117C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1C6F5C000, v16, v17, "(Keywords) PostProcessing: QU returns nil for isTrip.", v18, 2u);
    MEMORY[0x1CCA5F8E0](v18, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  *(inited + 32) = 1885958772;
  *(inited + 40) = 0xE400000000000000;
  v67 = i;
  v63 = sub_1C6FB6304();
  v20 = 0;
  v21 = a1 & 0xC000000000000001;
  i = &v65;
  while (v63 != v20)
  {
    sub_1C6FB6330();
    if (v21)
    {
      v23 = MEMORY[0x1CCA5DDD0](v20, a1);
      v22 = v23;
    }

    else
    {
      v22 = *(a1 + 8 * v20 + 32);
    }

    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v24 = *(v22 + 24);
    v65 = *(v22 + 16);
    v66 = v24;
    MEMORY[0x1EEE9AC00](v23);
    sub_1C75504FC();
    v25 = sub_1C70735F4();

    if (v25)
    {
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
    }

    else
    {
    }

    ++v20;
  }

  swift_setDeallocating();
  sub_1C6FDC9DC();
  v26 = sub_1C6FB6304();

  if (v26 <= 0)
  {
    v41 = 0;
    v67 = MEMORY[0x1E69E7CC0];
    i = &v65;
    while (v63 != v41)
    {
      sub_1C6FB6330();
      if (v21)
      {
        v43 = MEMORY[0x1CCA5DDD0](v41, a1);
        v42 = v43;
      }

      else
      {
        v42 = *(a1 + 8 * v41 + 32);
      }

      if (__OFADD__(v41, 1))
      {
        goto LABEL_83;
      }

      v44 = *(v42 + 24);
      v65 = *(v42 + 16);
      v66 = v44;
      MEMORY[0x1EEE9AC00](v43);
      sub_1C75504FC();
      v45 = sub_1C70735F4();

      if (v45)
      {
        sub_1C755192C();
        sub_1C755196C();
        sub_1C755197C();
        sub_1C755193C();
      }

      else
      {
      }

      ++v41;
    }

    v46 = v67;
    if (sub_1C6FB6304() == 1 && sub_1C6FB6304())
    {
      sub_1C6FB6330();
      if ((v46 & 0xC000000000000001) != 0)
      {
        v62 = MEMORY[0x1CCA5DDD0](0, v46);

        v48 = *(v62 + 32);
        swift_unknownObjectRelease();
      }

      else
      {
        v47 = v46[4];

        v48 = *(v47 + 32);
      }

      if (v48 > 0.975)
      {

        v27 = sub_1C754FEEC();
        v28 = sub_1C755117C();
        if (!os_log_type_enabled(v27, v28))
        {
          goto LABEL_20;
        }

        v29 = swift_slowAlloc();
        *v29 = 0;
        v30 = "(Keywords) PostProcessing: Only one isForTrip keyword is found with very high score. Keep isForTrip keywords.";
        goto LABEL_19;
      }
    }

    else
    {
    }

    v49 = sub_1C754FEEC();
    v50 = sub_1C755117C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1C6F5C000, v49, v50, "(Keywords) PostProcessing: None of the conditions in removeForTripKeywordsIfTripAbsent satisfied. Remove isForTrip keywords.", v51, 2u);
      MEMORY[0x1CCA5F8E0](v51, -1, -1);
    }

    i = 0;
    v67 = MEMORY[0x1E69E7CC0];
    while (v63 != i)
    {
      sub_1C6FB6330();
      if (v21)
      {
        v53 = MEMORY[0x1CCA5DDD0](i, a1);
        v52 = v53;
      }

      else
      {
        v52 = *(a1 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        goto LABEL_84;
      }

      v54 = *(v52 + 24);
      v65 = *(v52 + 16);
      v66 = v54;
      MEMORY[0x1EEE9AC00](v53);
      sub_1C75504FC();
      v55 = sub_1C70735F4();

      if (v55)
      {
      }

      else
      {
        sub_1C755192C();
        sub_1C755196C();
        sub_1C755197C();
        sub_1C755193C();
      }

      i = (i + 1);
    }

LABEL_80:

    return v67;
  }

  v27 = sub_1C754FEEC();
  v28 = sub_1C755117C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
LABEL_19:
    _os_log_impl(&dword_1C6F5C000, v27, v28, v30, v29, 2u);
    MEMORY[0x1CCA5F8E0](v29, -1, -1);
  }

LABEL_20:

LABEL_39:
  sub_1C75504FC();
  return a1;
}

BOOL sub_1C745CC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 == 20035 && a3 == 0xE200000000000000;
  if (!v4 && (sub_1C7551DBC() & 1) == 0)
  {
LABEL_26:
    sub_1C75504FC();
    return 0;
  }

  static StoryMusicEmbeddingTerms.termByEngineeringName(_:)(&v70, 0x1000000000000016, 0x80000001C75B0FB0);
  v5 = v71;
  if (!v71)
  {
LABEL_22:
    if (qword_1EDD0ED88 != -1)
    {
LABEL_98:
      swift_once();
    }

    v17 = sub_1C754FF1C();
    __swift_project_value_buffer(v17, &dword_1EDD28D48);
    v18 = sub_1C754FEEC();
    v19 = sub_1C755119C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1C6F5C000, v18, v19, "Unable to find keywords for boosting", v20, 2u);
      MEMORY[0x1CCA5F8E0](v20, -1, -1);
    }

    goto LABEL_26;
  }

  v6 = v70;
  static StoryMusicEmbeddingTerms.termByEngineeringName(_:)(&v70, 0x1000000000000010, 0x80000001C75B0FD0);
  v7 = v71;
  if (!v71)
  {
    sub_1C72B9804(v6, v5);
    goto LABEL_22;
  }

  v68 = v70;
  v69 = v6;
  v8 = sub_1C6FB6304();
  v9 = 0;
  v10 = a1 & 0xC000000000000001;
  v11 = a1;
  v12 = a1 & 0xFFFFFFFFFFFFFF8;
  do
  {
    v13 = v9;
    if (v8 == v9)
    {
      break;
    }

    if (v10)
    {
      v14 = MEMORY[0x1CCA5DDD0](v9, v11);
    }

    else
    {
      if (v9 >= *(v12 + 16))
      {
        goto LABEL_93;
      }

      v14 = *(v11 + 8 * v9 + 32);
    }

    if (__OFADD__(v13, 1))
    {
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    if (*(v14 + 16) == v69 && v5 == *(v14 + 24))
    {

      break;
    }

    v16 = sub_1C7551DBC();

    v9 = v13 + 1;
  }

  while ((v16 & 1) == 0);
  v66 = v5;
  v22 = 0;
  while (v8 != v22)
  {
    if (v10)
    {
      v23 = MEMORY[0x1CCA5DDD0](v22, v11);
    }

    else
    {
      if (v22 >= *(v12 + 16))
      {
        goto LABEL_95;
      }

      v23 = *(v11 + 8 * v22 + 32);
    }

    if (__OFADD__(v22, 1))
    {
      goto LABEL_94;
    }

    if (*(v23 + 16) == v68 && v7 == *(v23 + 24))
    {

      goto LABEL_45;
    }

    v25 = sub_1C7551DBC();

    ++v22;
    if (v25)
    {
      goto LABEL_45;
    }
  }

  if (v8 == v13)
  {
    sub_1C75504FC();
    sub_1C72B9804(v68, v7);
    sub_1C72B9804(v69, v66);
    return 0;
  }

LABEL_45:
  if (qword_1EDD0ED88 != -1)
  {
    swift_once();
  }

  v26 = sub_1C754FF1C();
  __swift_project_value_buffer(v26, &dword_1EDD28D48);
  v27 = sub_1C754FEEC();
  v28 = sub_1C755117C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1C6F5C000, v27, v28, "(Keywords) Boosting Chinese New Year keywords", v29, 2u);
    MEMORY[0x1CCA5F8E0](v29, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  *(inited + 32) = v69;
  *(inited + 40) = v66;
  sub_1C75504FC();
  sub_1C706D154();
  v32 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_1C7565670;
  v65 = type metadata accessor for MusicKeywordCompletion();
  swift_allocObject();
  v34 = MusicKeywordCompletion.init(keyword:score:)(v69, v66, 1.0);
  sub_1C75504FC();
  sub_1C72B9804(v69, v66);
  *(v33 + 32) = v34;
  v70 = v11;
  sub_1C75504FC();
  sub_1C6FD2F68(v33);
  v21 = sub_1C745E128(v70, v32, MEMORY[0x1E69E7CD0], 0.975, 1.0);
  v36 = v35;

  if (v21)
  {
    v67 = v21;
    v37 = MEMORY[0x1E69E7CC0];
    v70 = MEMORY[0x1E69E7CC0];
    v38 = sub_1C6FB6304();
    sub_1C75504FC();
    v39 = 0;
    v40 = v68;
    while (v38 != v39)
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x1CCA5DDD0](v39, v36);
      }

      else
      {
        if (v39 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_91;
        }

        v41 = *(v36 + 8 * v39 + 32);
      }

      if (__OFADD__(v39, 1))
      {
        __break(1u);
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      v42 = *(v41 + 16) == v40 && v7 == *(v41 + 24);
      if (v42 || (sub_1C7551DBC() & 1) != 0)
      {
      }

      else
      {
        sub_1C755192C();
        sub_1C755196C();
        sub_1C755197C();
        sub_1C755193C();
        v40 = v68;
      }

      ++v39;
    }

    sub_1C72B9804(v40, v7);
    swift_bridgeObjectRelease_n();
    v43 = v70;
    static StoryMusicEmbeddingTerms.termByEngineeringName(_:)(&v70, 0x616D747369726843, 0xED00007961442073);
    v44 = v71;
    if (v71)
    {
      v45 = v70;
      v70 = v37;
      v46 = sub_1C6FB6304();
      sub_1C75504FC();
      for (i = 0; v46 != i; ++i)
      {
        if ((v43 & 0xC000000000000001) != 0)
        {
          v48 = MEMORY[0x1CCA5DDD0](i, v43);
        }

        else
        {
          if (i >= *(v43 + 16))
          {
            goto LABEL_97;
          }

          v48 = *(v43 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          goto LABEL_96;
        }

        v49 = *(v48 + 16) == v45 && v44 == *(v48 + 24);
        if (v49 || (sub_1C7551DBC() & 1) != 0)
        {
        }

        else
        {
          sub_1C755192C();
          sub_1C755196C();
          sub_1C755197C();
          sub_1C755193C();
        }
      }

      sub_1C72B9804(v45, v44);
    }

    v50 = sub_1C754FEEC();
    v51 = sub_1C755117C();
    v21 = v67;
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1C6F5C000, v50, v51, "(Keywords) Removed Christmas keywords due to Chinese New Year boosting", v52, 2u);
      MEMORY[0x1CCA5F8E0](v52, -1, -1);
    }
  }

  else
  {
    sub_1C72B9804(v68, v7);
  }

  v53 = sub_1C754FEEC();
  v54 = sub_1C755117C();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = v21;
    v57 = swift_slowAlloc();
    v70 = v57;
    *v55 = 136315138;
    v58 = sub_1C75504FC();
    v59 = MEMORY[0x1CCA5D090](v58, v65);
    v61 = v60;

    v62 = sub_1C6F765A4(v59, v61, &v70);

    *(v55 + 4) = v62;
    _os_log_impl(&dword_1C6F5C000, v53, v54, "(Keywords) After boosting Chinese New Year keywords: %s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v57);
    v63 = v57;
    v21 = v56;
    MEMORY[0x1CCA5F8E0](v63, -1, -1);
    MEMORY[0x1CCA5F8E0](v55, -1, -1);
  }

  return v21;
}

BOOL sub_1C745D530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  static StoryMusicEmbeddingTerms.termsByTags(_:matchAnyTags:)(&unk_1F46A8A40, 0, a3, a4, a5, a6, a7, a8, v65, a1, v69, v71, v72, v73);
  v13 = v12;
  v14 = *(v12 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v71 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v14, 0, v8, v9, v10, v11);
    v16 = v71;
    v17 = (v13 + 40);
    do
    {
      v19 = *(v17 - 1);
      v18 = *v17;
      v71 = v16;
      v20 = *(v16 + 16);
      v21 = *(v16 + 24);
      sub_1C75504FC();
      if (v20 >= v21 >> 1)
      {
        sub_1C6F7ED9C(v21 > 1, v20 + 1, 1, v22, v23, v24, v25);
        v16 = v71;
      }

      *(v16 + 16) = v20 + 1;
      v26 = v16 + 16 * v20;
      *(v26 + 32) = v19;
      *(v26 + 40) = v18;
      v17 += 6;
      --v14;
    }

    while (v14);
  }

  sub_1C706D154();
  static StoryMusicEmbeddingTerms.termsByTags(_:matchAnyTags:)(&unk_1F46A8A68, 0, v27, v28, v29, v30, v31, v32, v66, v67, v70, v71, v72, v73);
  v38 = v37;
  v39 = *(v37 + 16);
  if (v39)
  {
    v71 = v15;
    sub_1C6F7ED9C(0, v39, 0, v33, v34, v35, v36);
    v40 = v15;
    v41 = (v38 + 40);
    do
    {
      v43 = *(v41 - 1);
      v42 = *v41;
      v71 = v40;
      v44 = *(v40 + 16);
      v45 = *(v40 + 24);
      sub_1C75504FC();
      if (v44 >= v45 >> 1)
      {
        sub_1C6F7ED9C(v45 > 1, v44 + 1, 1, v46, v47, v48, v49);
        v40 = v71;
      }

      *(v40 + 16) = v44 + 1;
      v50 = v40 + 16 * v44;
      *(v50 + 32) = v43;
      *(v50 + 40) = v42;
      v41 += 6;
      --v39;
    }

    while (v39);
  }

  sub_1C70739AC();
  v52 = sub_1C745E128(v68, v51, MEMORY[0x1E69E7CD0], 0.975, 1.0);

  if (qword_1EDD0ED88 != -1)
  {
    swift_once();
  }

  v53 = sub_1C754FF1C();
  __swift_project_value_buffer(v53, &dword_1EDD28D48);
  sub_1C75504FC();
  v54 = sub_1C754FEEC();
  v55 = sub_1C755117C();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v71 = v57;
    *v56 = 136315138;
    v58 = type metadata accessor for MusicKeywordCompletion();
    v59 = sub_1C75504FC();
    v60 = MEMORY[0x1CCA5D090](v59, v58);
    v62 = v61;

    v63 = sub_1C6F765A4(v60, v62, &v71);

    *(v56 + 4) = v63;
    _os_log_impl(&dword_1C6F5C000, v54, v55, "(Keywords) After boosting celebration/holiday keywords: %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v57);
    MEMORY[0x1CCA5F8E0](v57, -1, -1);
    MEMORY[0x1CCA5F8E0](v56, -1, -1);
  }

  return v52;
}

unint64_t sub_1C745D880(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  static StoryMusicEmbeddingTerms.termsByTags(_:matchAnyTags:)(&unk_1F46A8A90, 0, a3, a4, a5, a6, a7, a8, v75, v78, v80, v82, v85, v86);
  v14 = v13;
  v15 = *(v13 + 16);
  if (v15)
  {
    v81 = a1;
    v85 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v15, 0, v9, v10, v11, v12);
    v16 = v85;
    v17 = (v14 + 40);
    do
    {
      v19 = *(v17 - 1);
      v18 = *v17;
      v85 = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      sub_1C75504FC();
      if (v21 >= v20 >> 1)
      {
        sub_1C6F7ED9C(v20 > 1, v21 + 1, 1, v22, v23, v24, v25);
        v16 = v85;
      }

      *(v16 + 16) = v21 + 1;
      v26 = v16 + 16 * v21;
      *(v26 + 32) = v19;
      *(v26 + 40) = v18;
      v17 += 6;
      --v15;
    }

    while (v15);

    a1 = v81;
  }

  else
  {
  }

  sub_1C706D154();
  v28 = v27;
  v29 = sub_1C745E128(a1, v27, MEMORY[0x1E69E7CD0], 0.87, 1.0);
  LOBYTE(a1) = v29;
  if (v29)
  {
    v83 = v30;
    HIDWORD(v76) = v29;
    type metadata accessor for MusicKeywordCompletion();
    swift_allocObject();
    v31 = MusicKeywordCompletion.init(keyword:score:)(0x796C696D6166, 0xE600000000000000, 0.95);
    static StoryMusicEmbeddingTerms.termsByTags(_:matchAnyTags:)(&unk_1F46A8AB8, 1, v32, v33, v34, v35, v36, v37, v76, v79, v31, v83, v85, v86);
    v39 = v38;
    v40 = 0;
    v41 = *(v38 + 16);
    v42 = (v38 + 40);
    v43 = MEMORY[0x1E69E7CC0];
    while (v41 != v40)
    {
      if (v40 >= *(v39 + 16))
      {
        __break(1u);
        goto LABEL_41;
      }

      v45 = *(v42 - 1);
      v44 = *v42;
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v43 = v47;
      }

      a1 = *(v43 + 16);
      if (a1 >= *(v43 + 24) >> 1)
      {
        sub_1C6FB1814();
        v43 = v48;
      }

      *(v43 + 16) = a1 + 1;
      v46 = v43 + 16 * a1;
      *(v46 + 32) = v45;
      *(v46 + 40) = v44;
      v42 += 6;
      ++v40;
    }

    sub_1C706D154();
    v50 = sub_1C7238810(v28, v49);

    v51 = sub_1C6FB6304();
    if (!v51)
    {

LABEL_35:
      LOBYTE(a1) = v77;
      goto LABEL_36;
    }

    v52 = v51;
    v87 = MEMORY[0x1E69E7CC0];
    sub_1C75504FC();
    result = sub_1C755195C();
    if ((v52 & 0x8000000000000000) == 0)
    {
      v54 = 0;
      do
      {
        if ((v84 & 0xC000000000000001) != 0)
        {
          v55 = MEMORY[0x1CCA5DDD0](v54, v84);
        }

        else
        {
          v55 = *(v84 + 32 + 8 * v54);
        }

        if (*(v50 + 16))
        {
          v56 = *(v55 + 16);
          v57 = *(v55 + 24);
          sub_1C7551F3C();
          sub_1C75505AC();
          v58 = sub_1C7551FAC();
          v59 = ~(-1 << *(v50 + 32));
          do
          {
            v60 = v58 & v59;
            if (((*(v50 + 56 + (((v58 & v59) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v58 & v59)) & 1) == 0)
            {
              break;
            }

            v61 = (*(v50 + 48) + 16 * v60);
            if (*v61 == v56 && v61[1] == v57)
            {
              break;
            }

            v63 = sub_1C7551DBC();
            v58 = v60 + 1;
          }

          while ((v63 & 1) == 0);
        }

        ++v54;

        sub_1C755192C();
        sub_1C755196C();
        sub_1C755197C();
        sub_1C755193C();
      }

      while (v54 != v52);

      swift_bridgeObjectRelease_n();

      goto LABEL_35;
    }

    __break(1u);
  }

  else
  {

LABEL_36:
    if (qword_1EDD0ED88 != -1)
    {
LABEL_41:
      swift_once();
    }

    v64 = sub_1C754FF1C();
    __swift_project_value_buffer(v64, &dword_1EDD28D48);
    v65 = sub_1C754FEEC();
    v66 = sub_1C755117C();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v85 = v68;
      *v67 = 136315138;
      v69 = type metadata accessor for MusicKeywordCompletion();
      v70 = sub_1C75504FC();
      v71 = MEMORY[0x1CCA5D090](v70, v69);
      v73 = v72;

      v74 = sub_1C6F765A4(v71, v73, &v85);

      *(v67 + 4) = v74;
      _os_log_impl(&dword_1C6F5C000, v65, v66, "(Keywords) After boosting child keywords: %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v68);
      MEMORY[0x1CCA5F8E0](v68, -1, -1);
      MEMORY[0x1CCA5F8E0](v67, -1, -1);
    }

    return a1 & 1;
  }

  return result;
}

BOOL sub_1C745DDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  static StoryMusicEmbeddingTerms.termsByTags(_:matchAnyTags:)(&unk_1F46A8AE0, 1, a3, a4, a5, a6, a7, a8, v60, a1, v62, v63[0], v63[1], v63[2]);
  v13 = v12;
  v14 = *(v12 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v63[0] = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v14, 0, v8, v9, v10, v11);
    v16 = v63[0];
    v17 = (v13 + 40);
    do
    {
      v19 = *(v17 - 1);
      v18 = *v17;
      v63[0] = v16;
      v20 = *(v16 + 16);
      v21 = *(v16 + 24);
      sub_1C75504FC();
      if (v20 >= v21 >> 1)
      {
        sub_1C6F7ED9C(v21 > 1, v20 + 1, 1, v22, v23, v24, v25);
        v16 = v63[0];
      }

      *(v16 + 16) = v20 + 1;
      v26 = v16 + 16 * v20;
      *(v26 + 32) = v19;
      *(v26 + 40) = v18;
      v17 += 6;
      --v14;
    }

    while (v14);
  }

  sub_1C706D154();
  v28 = v27;
  v33 = static StoryMusicEmbeddingTerms.allTerms(matching:)(0x796C696D6146, 0xE600000000000000);
  v34 = *(v33 + 16);
  if (v34)
  {
    v63[0] = v15;
    sub_1C6F7ED9C(0, v34, 0, v29, v30, v31, v32);
    v35 = v15;
    v36 = (v33 + 40);
    do
    {
      v38 = *(v36 - 1);
      v37 = *v36;
      v63[0] = v35;
      v39 = *(v35 + 16);
      v40 = *(v35 + 24);
      sub_1C75504FC();
      if (v39 >= v40 >> 1)
      {
        sub_1C6F7ED9C(v40 > 1, v39 + 1, 1, v41, v42, v43, v44);
        v35 = v63[0];
      }

      *(v35 + 16) = v39 + 1;
      v45 = v35 + 16 * v39;
      *(v45 + 32) = v38;
      *(v45 + 40) = v37;
      v36 += 6;
      --v34;
    }

    while (v34);
  }

  sub_1C706D154();
  v47 = sub_1C745E128(v61, v28, v46, 0.975, 1.0);

  if (qword_1EDD0ED88 != -1)
  {
    swift_once();
  }

  v48 = sub_1C754FF1C();
  __swift_project_value_buffer(v48, &dword_1EDD28D48);
  sub_1C75504FC();
  v49 = sub_1C754FEEC();
  v50 = sub_1C755117C();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v63[0] = v52;
    *v51 = 136315138;
    v53 = type metadata accessor for MusicKeywordCompletion();
    v54 = sub_1C75504FC();
    v55 = MEMORY[0x1CCA5D090](v54, v53);
    v57 = v56;

    v58 = sub_1C6F765A4(v55, v57, v63);

    *(v51 + 4) = v58;
    _os_log_impl(&dword_1C6F5C000, v49, v50, "(Keywords) After boosting trip keywords: %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v52);
    MEMORY[0x1CCA5F8E0](v52, -1, -1);
    MEMORY[0x1CCA5F8E0](v51, -1, -1);
  }

  return v47;
}

BOOL sub_1C745E128(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v74 = MEMORY[0x1E69E7CC0];
  v10 = sub_1C6FB6304();
  v11 = 0;
  v70 = a1 & 0xFFFFFFFFFFFFFF8;
  v72 = a1 & 0xC000000000000001;
  v67 = a1;
  v68 = a1 + 32;
  v12 = a2 + 56;
LABEL_2:
  while (v11 != v10)
  {
    if (v72)
    {
      v13 = MEMORY[0x1CCA5DDD0](v11, v67);
    }

    else
    {
      if (v11 >= *(v70 + 16))
      {
        goto LABEL_70;
      }

      v13 = *(v68 + 8 * v11);
    }

    if (__OFADD__(v11++, 1))
    {
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      swift_once();
LABEL_51:
      v46 = sub_1C754FF1C();
      __swift_project_value_buffer(v46, &dword_1EDD28D48);
      sub_1C75504FC();
      sub_1C75504FC();
      v47 = sub_1C754FEEC();
      v48 = sub_1C755118C();

      if (os_log_type_enabled(v47, v48))
      {
        v66 = v11;
        v49 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v73[0] = v69;
        *v49 = 136315394;
        v50 = sub_1C7550F9C();
        v52 = sub_1C6F765A4(v50, v51, v73);

        v53 = 0;
        *(v49 + 4) = v52;
        *(v49 + 12) = 2080;
        v54 = MEMORY[0x1E69E7CC0];
        while (v10 != v53)
        {
          if (v72)
          {
            v55 = MEMORY[0x1CCA5DDD0](v53, v12);
          }

          else
          {
            if (v53 >= *(v70 + 16))
            {
              goto LABEL_72;
            }

            v55 = *(v12 + 8 * v53 + 32);
          }

          if (__OFADD__(v53, 1))
          {
            goto LABEL_71;
          }

          v56 = *(v55 + 16);
          v57 = *(v55 + 24);
          sub_1C75504FC();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB1814();
            v54 = v59;
          }

          v11 = *(v54 + 16);
          if (v11 >= *(v54 + 24) >> 1)
          {
            sub_1C6FB1814();
            v54 = v60;
          }

          *(v54 + 16) = v11 + 1;
          v58 = v54 + 16 * v11;
          *(v58 + 32) = v56;
          *(v58 + 40) = v57;
          ++v53;
          v12 = v67;
        }

        v61 = MEMORY[0x1CCA5D090](v54, MEMORY[0x1E69E6158]);
        v63 = v62;

        v64 = sub_1C6F765A4(v61, v63, v73);

        *(v49 + 14) = v64;
        _os_log_impl(&dword_1C6F5C000, v47, v48, "(Keywords) No boosting needed: %s are not found in %s", v49, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v69, -1, -1);
        MEMORY[0x1CCA5F8E0](v49, -1, -1);

        v11 = v66;
      }

      else
      {
      }

      sub_1C75504FC();
      return v11 > 0;
    }

    if (*(a2 + 16))
    {
      v16 = *(v13 + 16);
      v15 = *(v13 + 24);
      sub_1C7551F3C();
      sub_1C75504FC();
      sub_1C75505AC();
      v17 = sub_1C7551FAC();
      v18 = ~(-1 << *(a2 + 32));
      while (1)
      {
        v19 = v17 & v18;
        if (((*(v12 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
        {
          break;
        }

        v20 = (*(a2 + 48) + 16 * v19);
        if (*v20 != v16 || v20[1] != v15)
        {
          v22 = sub_1C7551DBC();
          v17 = v19 + 1;
          if ((v22 & 1) == 0)
          {
            continue;
          }
        }

        sub_1C755192C();
        sub_1C755196C();
        sub_1C755197C();
        sub_1C755193C();
        goto LABEL_2;
      }
    }
  }

  v11 = sub_1C6FB6304();

  if (v11 <= 0)
  {
    v12 = v67;
    if (qword_1EDD0ED88 != -1)
    {
      goto LABEL_74;
    }

    goto LABEL_51;
  }

  v23 = sub_1C6FB6304();
  if (!v23)
  {
    return v11 > 0;
  }

  v10 = v23;
  v74 = MEMORY[0x1E69E7CC0];
  sub_1C755195C();
  if (v10 < 0)
  {
    goto LABEL_73;
  }

  v24 = 0;
  v71 = v10;
  do
  {
    if (v72)
    {
      v25 = MEMORY[0x1CCA5DDD0](v24, v67);
    }

    else
    {
      v25 = *(v68 + 8 * v24);
    }

    v27 = *(v25 + 16);
    v26 = *(v25 + 24);
    if (*(a2 + 16))
    {
      sub_1C7551F3C();
      sub_1C75505AC();
      v28 = sub_1C7551FAC();
      v29 = ~(-1 << *(a2 + 32));
      while (1)
      {
        v30 = v28 & v29;
        if (((*(v12 + (((v28 & v29) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v28 & v29)) & 1) == 0)
        {
          break;
        }

        v31 = (*(a2 + 48) + 16 * v30);
        if (*v31 != v27 || v31[1] != v26)
        {
          v33 = sub_1C7551DBC();
          v28 = v30 + 1;
          if ((v33 & 1) == 0)
          {
            continue;
          }
        }

        v34 = *(v25 + 16);
        v35 = *(v25 + 24);
        type metadata accessor for MusicKeywordCompletion();
        swift_allocObject();
        v36 = v34;
        v37 = v35;
        v38 = a5;
        goto LABEL_47;
      }

      v27 = *(v25 + 16);
      v26 = *(v25 + 24);
    }

    if (*(a3 + 16))
    {
      sub_1C7551F3C();
      sub_1C75505AC();
      v39 = sub_1C7551FAC();
      v40 = ~(-1 << *(a3 + 32));
      while (1)
      {
        v41 = v39 & v40;
        if (((*(a3 + 56 + (((v39 & v40) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v39 & v40)) & 1) == 0)
        {
          break;
        }

        v42 = (*(a3 + 48) + 16 * v41);
        if (*v42 != v27 || v42[1] != v26)
        {
          v44 = sub_1C7551DBC();
          v39 = v41 + 1;
          if ((v44 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_48;
      }

      v27 = *(v25 + 16);
      v26 = *(v25 + 24);
    }

    v45 = *(v25 + 32) * a4;
    type metadata accessor for MusicKeywordCompletion();
    swift_allocObject();
    v36 = v27;
    v37 = v26;
    v38 = v45;
LABEL_47:
    MusicKeywordCompletion.init(keyword:score:)(v36, v37, v38);
    sub_1C75504FC();

LABEL_48:
    ++v24;
    sub_1C755192C();
    sub_1C755196C();
    sub_1C755197C();
    sub_1C755193C();
  }

  while (v24 != v71);
  return v11 > 0;
}

uint64_t sub_1C745E81C()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1C6F738F4;

  return sub_1C745C030(v3, v4, v5, v6);
}

void sub_1C745E8CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1C6F78034(v42);
  v6 = v42[1];
  v7 = v42[3];
  v8 = v42[4];
  v33 = v42[5];
  v34 = v42[0];
  v9 = (v42[2] + 64) >> 6;
  sub_1C75504FC();

  if (v8)
  {
    while (1)
    {
      v35 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v34 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v34 + 56) + 4 * v12);
      v40[0] = *v13;
      v40[1] = v14;
      v41 = v15;
      sub_1C75504FC();
      v33(&v37, v40);

      v16 = v37;
      v17 = v38;
      v18 = v39;
      v19 = *a5;
      v21 = sub_1C6F78124(v37, v38);
      v22 = v19[2];
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v25 = v20;
      if (v19[3] >= v24)
      {
        if ((v35 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215340, &unk_1C755CC40);
          sub_1C7551A3C();
        }
      }

      else
      {
        sub_1C735488C(v24, v35 & 1);
        v26 = sub_1C6F78124(v16, v17);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_24;
        }

        v21 = v26;
      }

      v8 &= v8 - 1;
      v28 = *a5;
      if (v25)
      {

        *(v28[7] + 4 * v21) = v18;
      }

      else
      {
        v28[(v21 >> 6) + 8] |= 1 << v21;
        v29 = (v28[6] + 16 * v21);
        *v29 = v16;
        v29[1] = v17;
        *(v28[7] + 4 * v21) = v18;
        v30 = v28[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_23;
        }

        v28[2] = v32;
      }

      a4 = 1;
      v7 = v10;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_1C6F61E88(v34);

        return;
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v35 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_1C7551E4C();
  __break(1u);
}

float sub_1C745EB60@<S0>(uint64_t a1@<X8>)
{
  v2 = sub_1C73D92AC();
  result = v5;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_47()
{

  return type metadata accessor for MusicKeywordCompletion();
}

uint64_t OUTLINED_FUNCTION_42_37()
{
}

uint64_t OUTLINED_FUNCTION_43_37()
{
}

void static GlobalTraitDiagnosticsGenerator.save(globalTraits:rejectedGlobalTraits:in:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (PFOSVariantHasInternalDiagnostics())
  {
    sub_1C754DBCC();
    swift_allocObject();
    sub_1C754DBBC();
    sub_1C754DB9C();
    v11[0] = a1;
    sub_1C75504FC();
    sub_1C745EDEC(v11);
    if (v3)
    {

      __break(1u);
    }

    else
    {
      v6 = v11[0];
      v11[0] = a2;
      sub_1C75504FC();
      sub_1C745EDEC(v11);
      v7 = v11[0];
      v11[0] = v6;
      v11[1] = v7;
      sub_1C745EE94();
      v8 = sub_1C754DBAC();
      v10 = v9;

      sub_1C7161C08();
      sub_1C6FC1640(v8, v10);
    }
  }
}

void sub_1C745EDEC(uint64_t *a1)
{
  v2 = *(type metadata accessor for GlobalTrait(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422D74();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1C745FC3C(v6);
  *a1 = v3;
}

unint64_t sub_1C745EE94()
{
  result = qword_1EDD09BF8;
  if (!qword_1EDD09BF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GlobalTraitDiagnostics, &type metadata for GlobalTraitDiagnostics, v0, v1);
    atomic_store(result, &qword_1EDD09BF8);
  }

  return result;
}

unint64_t sub_1C745EEE8()
{
  result = qword_1EC21C160;
  if (!qword_1EC21C160)
  {
    result = swift_getWitnessTable(byte_1C758CC00, &unk_1F46C8EB0, v0, v1);
    atomic_store(result, &qword_1EC21C160);
  }

  return result;
}

uint64_t sub_1C745EF4C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001ALL && 0x80000001C75B10C0 == a2;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001C75B10E0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

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

unint64_t sub_1C745F020(char a1)
{
  if (a1)
  {
    return 0xD000000000000022;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_1C745F060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C745EF4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C745F088(uint64_t a1)
{
  v2 = sub_1C745F2A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C745F0C4(uint64_t a1)
{
  v2 = sub_1C745F2A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void GlobalTraitDiagnostics.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C168, &unk_1C758C960);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  v10 = *(v0 + 8);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v9 = sub_1C745F2A4();
  sub_1C75504FC();
  sub_1C755200C();
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216848, &unk_1C7577970);
  sub_1C745F4EC(&qword_1EDD06BE8, &qword_1EDD0C510, protocol conformance descriptor for GlobalTrait, MEMORY[0x1E69E6300]);
  OUTLINED_FUNCTION_6_8();

  if (!v9)
  {
    v11 = 1;
    OUTLINED_FUNCTION_6_8();
  }

  (*(v5 + 8))(v8, v3);
  OUTLINED_FUNCTION_125();
}

unint64_t sub_1C745F2A4()
{
  result = qword_1EDD09C10;
  if (!qword_1EDD09C10)
  {
    result = swift_getWitnessTable(asc_1C758CBB0, &type metadata for GlobalTraitDiagnostics.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09C10);
  }

  return result;
}

void GlobalTraitDiagnostics.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_124();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C170, &unk_1C758C970);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_1C745F2A4();
  sub_1C7551FFC();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216848, &unk_1C7577970);
    sub_1C745F4EC(&qword_1EC219348, &qword_1EDD0C508, protocol conformance descriptor for GlobalTrait, MEMORY[0x1E69E6330]);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_52();
    v16 = OUTLINED_FUNCTION_282();
    v17(v16);
    *v14 = a10;
    v14[1] = a10;
    sub_1C75504FC();
    sub_1C75504FC();
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C745F4EC(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC216848, &unk_1C7577970);
    v10 = sub_1C745F574(a2, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C745F574(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for GlobalTrait(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GlobalTraitDiagnosticsGenerator.makeGlobalTraits(from:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8, &unk_1C7564890);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C73C6860(0xD000000000000010, 0x80000001C75B1010, v5);
  if (!v1)
  {
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      sub_1C7044B24(v5);
      return 0;
    }

    else
    {
      (*(v8 + 32))(v11, v5, v6);
      sub_1C754DB8C();
      swift_allocObject();
      sub_1C754DB7C();
      sub_1C754DD6C();
      sub_1C745F85C();
      sub_1C754DB5C();
      v13 = OUTLINED_FUNCTION_0_57();
      v14(v13);
      v15 = OUTLINED_FUNCTION_282();
      sub_1C6FC1640(v15, v16);

      a1 = v17;
    }
  }

  return a1;
}

unint64_t sub_1C745F85C()
{
  result = qword_1EC21C178;
  if (!qword_1EC21C178)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GlobalTraitDiagnostics, &type metadata for GlobalTraitDiagnostics, v0, v1);
    atomic_store(result, &qword_1EC21C178);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GlobalTraitDiagnosticsGenerator(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for GlobalTraitDiagnostics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_18PhotosIntelligence31GlobalTraitDiagnosticsGeneratorO5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C745FA58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C745FAA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_1C745FB00(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1C745FB38()
{
  result = qword_1EC21C180;
  if (!qword_1EC21C180)
  {
    result = swift_getWitnessTable(byte_1C758CB88, &type metadata for GlobalTraitDiagnostics.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21C180);
  }

  return result;
}

unint64_t sub_1C745FB90()
{
  result = qword_1EDD09C00;
  if (!qword_1EDD09C00)
  {
    result = swift_getWitnessTable(byte_1C758CAF8, &type metadata for GlobalTraitDiagnostics.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09C00);
  }

  return result;
}

unint64_t sub_1C745FBE8()
{
  result = qword_1EDD09C08;
  if (!qword_1EDD09C08)
  {
    result = swift_getWitnessTable(byte_1C758CB20, &type metadata for GlobalTraitDiagnostics.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09C08);
  }

  return result;
}

void sub_1C745FC3C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (sub_1C7551D7C() < v1)
  {
    if (v1 >= -1)
    {
      v2 = v1 / 2;
      if (v1 <= 1)
      {
        v3 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for GlobalTrait(0);
        v3 = sub_1C7550BBC();
        *(v3 + 16) = v2;
      }

      type metadata accessor for GlobalTrait(0);
      sub_1C745FF6C();
      *(v3 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v1 < 0)
  {
    goto LABEL_12;
  }

  if (v1)
  {
    sub_1C745FD6C();
  }
}

void sub_1C745FD6C()
{
  OUTLINED_FUNCTION_124();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v33 = type metadata accessor for GlobalTrait(0);
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26[-v15];
  v28 = v5;
  if (v3 != v5)
  {
    v17 = *v1;
    v18 = *(v14 + 72);
    v19 = *v1 + v18 * (v3 - 1);
    v20 = -v18;
    v21 = v7 - v3;
    v27 = v18;
    v22 = v17 + v18 * v3;
    while (2)
    {
      v31 = v19;
      v32 = v3;
      v29 = v22;
      v30 = v21;
      while (1)
      {
        sub_1C7258AD4(v22, v16);
        sub_1C7258AD4(v19, v12);
        if (*v16 == *v12 && v16[1] == v12[1])
        {
          break;
        }

        v24 = sub_1C7551DBC();
        sub_1C7285288(v12);
        sub_1C7285288(v16);
        if (v24)
        {
          if (!v17)
          {
            __break(1u);
            return;
          }

          sub_1C7285088(v22, v9);
          swift_arrayInitWithTakeFrontToBack();
          sub_1C7285088(v9, v19);
          v19 += v20;
          v22 += v20;
          if (!__CFADD__(v21++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_1C7285288(v12);
      sub_1C7285288(v16);
LABEL_14:
      v3 = v32 + 1;
      v19 = v31 + v27;
      v21 = v30 - 1;
      v22 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_125();
}

void sub_1C745FF6C()
{
  OUTLINED_FUNCTION_124();
  v146 = v0;
  v2 = v1;
  v4 = v3;
  v132 = v5;
  type metadata accessor for GlobalTrait(0);
  OUTLINED_FUNCTION_3_0();
  v140 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v135 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_130();
  v147 = v10;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v127 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v127 - v15);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_130();
  v144 = v18;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_130();
  v143 = v20;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_130();
  v131 = v22;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v23);
  v130 = (&v127 - v24);
  v142 = v4;
  v25 = v4[1];
  if (v25 < 1)
  {
    v27 = MEMORY[0x1E69E7CC0];
LABEL_115:
    v2 = *v132;
    if (!*v132)
    {
      goto LABEL_155;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_117:
      v119 = (v27 + 16);
      for (i = *(v27 + 2); i >= 2; *v119 = i)
      {
        if (!*v142)
        {
          goto LABEL_152;
        }

        v121 = &v27[16 * i];
        v122 = *v121;
        v123 = &v119[2 * i];
        v124 = *(v123 + 1);
        v125 = v146;
        sub_1C74607F8(*v142 + *(v140 + 72) * *v121, *v142 + *(v140 + 72) * *v123, *v142 + *(v140 + 72) * v124, v2, v115, v116, v117, v118, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138);
        v146 = v125;
        if (v125)
        {
          break;
        }

        if (v124 < v122)
        {
          goto LABEL_140;
        }

        if (i - 2 >= *v119)
        {
          goto LABEL_141;
        }

        *v121 = v122;
        *(v121 + 1) = v124;
        v126 = *v119 - i;
        if (*v119 < i)
        {
          goto LABEL_142;
        }

        i = *v119 - 1;
        sub_1C7423CF4(v123 + 16, v126, v123);
      }

LABEL_113:

      OUTLINED_FUNCTION_125();
      return;
    }

LABEL_149:
    v27 = sub_1C7420830();
    goto LABEL_117;
  }

  v128 = v2;
  v26 = 0;
  v27 = MEMORY[0x1E69E7CC0];
  v136 = v13;
  v137 = v16;
  while (1)
  {
    v28 = v26++;
    v133 = v28;
    if (v26 < v25)
    {
      v29 = *v142;
      v30 = *(v140 + 72);
      v31 = v130;
      sub_1C7258AD4(*v142 + v30 * v26, v130);
      v141 = v30;
      v32 = v29 + v30 * v28;
      v33 = v131;
      sub_1C7258AD4(v32, v131);
      if (*v31 == *v33 && v31[1] == v33[1])
      {
        LODWORD(v139) = 0;
      }

      else
      {
        LODWORD(v139) = sub_1C7551DBC();
      }

      v129 = v27;
      sub_1C7285288(v131);
      sub_1C7285288(v130);
      v35 = v28 + 2;
      v36 = v141 * (v28 + 2);
      v37 = v29 + v36;
      v38 = v141 * v26;
      v39 = v29 + v141 * v26;
      v138 = v25;
      while (1)
      {
        v40 = v26;
        v41 = v38;
        v2 = v36;
        v145 = v35;
        if (v35 >= v25)
        {
          break;
        }

        v42 = v143;
        sub_1C7258AD4(v37, v143);
        v43 = v144;
        sub_1C7258AD4(v39, v144);
        if (*v42 == *v43 && v42[1] == v43[1])
        {
          v45 = 0;
        }

        else
        {
          v45 = sub_1C7551DBC();
        }

        sub_1C7285288(v144);
        sub_1C7285288(v143);
        v46 = v139 ^ v45;
        v47 = v145;
        v35 = v145 + 1;
        v37 += v141;
        v39 += v141;
        v26 = v40 + 1;
        v38 = v41 + v141;
        v36 = v2 + v141;
        v25 = v138;
        if (v46)
        {
          goto LABEL_21;
        }
      }

      v47 = v35;
LABEL_21:
      if (v139)
      {
        v28 = v133;
        if (v47 < v133)
        {
          goto LABEL_146;
        }

        if (v133 >= v47)
        {
          v26 = v47;
          v27 = v129;
          goto LABEL_39;
        }

        v48 = v133 * v141;
        do
        {
          if (v28 != v40)
          {
            v49 = *v142;
            if (!*v142)
            {
              goto LABEL_153;
            }

            sub_1C7285088(v49 + v48, v135);
            v50 = v48 < v41 || v49 + v48 >= (v49 + v2);
            if (v50)
            {
              OUTLINED_FUNCTION_10_81();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v48 != v41)
            {
              OUTLINED_FUNCTION_10_81();
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1C7285088(v135, v49 + v41);
            v47 = v145;
          }

          ++v28;
          v41 -= v141;
          v2 -= v141;
          v48 += v141;
        }

        while (v28 < v40--);
      }

      v26 = v47;
      v27 = v129;
      v28 = v133;
    }

LABEL_39:
    v52 = v142[1];
    if (v26 < v52)
    {
      if (__OFSUB__(v26, v28))
      {
        goto LABEL_145;
      }

      if (v26 - v28 < v128)
      {
        break;
      }
    }

LABEL_62:
    if (v26 < v28)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC(0, *(v27 + 2) + 1, 1, v27);
      v27 = v113;
    }

    v69 = *(v27 + 2);
    v68 = *(v27 + 3);
    v70 = v69 + 1;
    if (v69 >= v68 >> 1)
    {
      sub_1C6FB17EC(v68 > 1, v69 + 1, 1, v27);
      v27 = v114;
    }

    *(v27 + 2) = v70;
    v71 = v27 + 32;
    v72 = &v27[16 * v69 + 32];
    *v72 = v133;
    *(v72 + 1) = v26;
    v145 = *v132;
    if (!v145)
    {
      goto LABEL_154;
    }

    if (v69)
    {
      while (1)
      {
        v73 = v70 - 1;
        v74 = &v71[16 * v70 - 16];
        v75 = &v27[16 * v70];
        if (v70 >= 4)
        {
          break;
        }

        if (v70 == 3)
        {
          v76 = *(v27 + 4);
          v77 = *(v27 + 5);
          v86 = __OFSUB__(v77, v76);
          v78 = v77 - v76;
          v79 = v86;
LABEL_82:
          if (v79)
          {
            goto LABEL_131;
          }

          v91 = *v75;
          v90 = *(v75 + 1);
          v92 = __OFSUB__(v90, v91);
          v93 = v90 - v91;
          v94 = v92;
          if (v92)
          {
            goto LABEL_134;
          }

          v95 = *(v74 + 1);
          v96 = v95 - *v74;
          if (__OFSUB__(v95, *v74))
          {
            goto LABEL_137;
          }

          if (__OFADD__(v93, v96))
          {
            goto LABEL_139;
          }

          if (v93 + v96 >= v78)
          {
            if (v78 < v96)
            {
              v73 = v70 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v70 < 2)
        {
          goto LABEL_133;
        }

        v98 = *v75;
        v97 = *(v75 + 1);
        v86 = __OFSUB__(v97, v98);
        v93 = v97 - v98;
        v94 = v86;
LABEL_97:
        if (v94)
        {
          goto LABEL_136;
        }

        v100 = *v74;
        v99 = *(v74 + 1);
        v86 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v86)
        {
          goto LABEL_138;
        }

        if (v101 < v93)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v73 - 1 >= v70)
        {
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
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
          goto LABEL_148;
        }

        if (!*v142)
        {
          goto LABEL_151;
        }

        v105 = v26;
        v106 = v27;
        v107 = &v71[16 * v73 - 16];
        v108 = *v107;
        v109 = v73;
        v110 = &v71[16 * v73];
        v111 = *(v110 + 1);
        v112 = v146;
        sub_1C74607F8(*v142 + *(v140 + 72) * *v107, *v142 + *(v140 + 72) * *v110, *v142 + *(v140 + 72) * v111, v145, v64, v65, v66, v67, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138);
        v146 = v112;
        if (v112)
        {
          goto LABEL_113;
        }

        if (v111 < v108)
        {
          goto LABEL_126;
        }

        v2 = *(v106 + 2);
        if (v109 > v2)
        {
          goto LABEL_127;
        }

        *v107 = v108;
        *(v107 + 1) = v111;
        if (v109 >= v2)
        {
          goto LABEL_128;
        }

        v70 = v2 - 1;
        sub_1C7423CF4(v110 + 16, v2 - 1 - v109, v110);
        v27 = v106;
        *(v106 + 2) = v2 - 1;
        v26 = v105;
        v13 = v136;
        v16 = v137;
        if (v2 <= 2)
        {
          goto LABEL_111;
        }
      }

      v80 = &v71[16 * v70];
      v81 = *(v80 - 8);
      v82 = *(v80 - 7);
      v86 = __OFSUB__(v82, v81);
      v83 = v82 - v81;
      if (v86)
      {
        goto LABEL_129;
      }

      v85 = *(v80 - 6);
      v84 = *(v80 - 5);
      v86 = __OFSUB__(v84, v85);
      v78 = v84 - v85;
      v79 = v86;
      if (v86)
      {
        goto LABEL_130;
      }

      v87 = *(v75 + 1);
      v88 = v87 - *v75;
      if (__OFSUB__(v87, *v75))
      {
        goto LABEL_132;
      }

      v86 = __OFADD__(v78, v88);
      v89 = v78 + v88;
      if (v86)
      {
        goto LABEL_135;
      }

      if (v89 >= v83)
      {
        v103 = *v74;
        v102 = *(v74 + 1);
        v86 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v86)
        {
          goto LABEL_143;
        }

        if (v78 < v104)
        {
          v73 = v70 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v25 = v142[1];
    if (v26 >= v25)
    {
      goto LABEL_115;
    }
  }

  if (__OFADD__(v28, v128))
  {
    goto LABEL_147;
  }

  if (v28 + v128 >= v52)
  {
    v53 = v142[1];
  }

  else
  {
    v53 = v28 + v128;
  }

  if (v53 < v28)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v26 == v53)
  {
    goto LABEL_62;
  }

  v129 = v27;
  v54 = v26;
  v55 = *v142;
  v56 = *(v140 + 72);
  v57 = *v142 + v56 * (v54 - 1);
  v58 = -v56;
  v59 = v28 - v54;
  v145 = v54;
  v134 = v56;
  v60 = v55 + v54 * v56;
  v138 = v53;
LABEL_49:
  v2 = v60;
  v139 = v59;
  v141 = v57;
  while (1)
  {
    sub_1C7258AD4(v2, v16);
    sub_1C7258AD4(v57, v13);
    if (*v16 == *v13 && v16[1] == v13[1])
    {
      sub_1C7285288(v13);
      sub_1C7285288(v16);
LABEL_60:
      v57 = v141 + v134;
      v59 = v139 - 1;
      v60 += v134;
      if (++v145 == v138)
      {
        v26 = v138;
        v27 = v129;
        v28 = v133;
        goto LABEL_62;
      }

      goto LABEL_49;
    }

    v62 = sub_1C7551DBC();
    sub_1C7285288(v13);
    sub_1C7285288(v16);
    if ((v62 & 1) == 0)
    {
      goto LABEL_60;
    }

    if (!v55)
    {
      break;
    }

    v63 = v147;
    sub_1C7285088(v2, v147);
    swift_arrayInitWithTakeFrontToBack();
    sub_1C7285088(v63, v57);
    v57 += v58;
    v2 += v58;
    v50 = __CFADD__(v59++, 1);
    if (v50)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}

void sub_1C74607F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v77 = type metadata accessor for GlobalTrait(0);
  MEMORY[0x1EEE9AC00](v77);
  v76 = (v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32);
  v75 = (v71 - v33);
  MEMORY[0x1EEE9AC00](v34);
  v36 = (v71 - v35);
  MEMORY[0x1EEE9AC00](v37);
  v39 = (v71 - v38);
  v41 = *(v40 + 72);
  if (!v41)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  v42 = v28 - v30;
  v43 = v28 - v30 == 0x8000000000000000 && v41 == -1;
  if (v43)
  {
    goto LABEL_72;
  }

  v44 = v26 - v28;
  if (v26 - v28 == 0x8000000000000000 && v41 == -1)
  {
    goto LABEL_73;
  }

  v71[1] = v20;
  v46 = v42 / v41;
  a10 = v30;
  v79 = v24;
  v47 = v44 / v41;
  if (v42 / v41 < v44 / v41)
  {
    sub_1C741E3B0(v30, v42 / v41, v24);
    v48 = v24 + v46 * v41;
    v78 = v48;
    while (1)
    {
      if (v24 >= v48 || v28 >= v26)
      {
        goto LABEL_70;
      }

      sub_1C7258AD4(v28, v39);
      sub_1C7258AD4(v24, v36);
      if (*v39 == *v36 && v39[1] == v36[1])
      {
        sub_1C7285288(v36);
        sub_1C7285288(v39);
      }

      else
      {
        v51 = sub_1C7551DBC();
        sub_1C7285288(v36);
        sub_1C7285288(v39);
        if (v51)
        {
          if (v30 < v28 || v30 >= v28 + v41)
          {
            OUTLINED_FUNCTION_225();
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v30 != v28)
          {
            OUTLINED_FUNCTION_225();
            swift_arrayInitWithTakeBackToFront();
          }

          v28 += v41;
          goto LABEL_40;
        }
      }

      if (v30 < v24 || v30 >= v24 + v41)
      {
        OUTLINED_FUNCTION_225();
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v30 != v24)
      {
        OUTLINED_FUNCTION_225();
        swift_arrayInitWithTakeBackToFront();
      }

      v79 = v24 + v41;
      v24 += v41;
LABEL_40:
      v30 += v41;
      a10 = v30;
    }
  }

  sub_1C741E3B0(v28, v44 / v41, v24);
  v54 = v24 + v47 * v41;
  v55 = -v41;
  v56 = v54;
LABEL_42:
  v57 = v28 + v55;
  v58 = v26;
  v71[0] = v56;
  v73 = v28 + v55;
  v74 = v28;
  while (1)
  {
    if (v54 <= v24)
    {
      a10 = v28;
      v78 = v56;
      goto LABEL_70;
    }

    if (v28 <= v30)
    {
      break;
    }

    v72 = v56;
    v59 = v54 + v55;
    v60 = v75;
    sub_1C7258AD4(v54 + v55, v75);
    v61 = v57;
    v62 = v76;
    sub_1C7258AD4(v61, v76);
    if (*v60 == *v62 && v60[1] == v62[1])
    {
      v64 = 0;
    }

    else
    {
      v64 = sub_1C7551DBC();
    }

    v26 = v58 + v55;
    sub_1C7285288(v76);
    sub_1C7285288(v75);
    if (v64)
    {
      if (v58 < v74 || v26 >= v74)
      {
        v67 = v73;
        OUTLINED_FUNCTION_225();
        swift_arrayInitWithTakeFrontToBack();
        v56 = v72;
        v28 = v67;
      }

      else
      {
        v68 = v73;
        v56 = v72;
        v28 = v73;
        if (v58 != v74)
        {
          OUTLINED_FUNCTION_225();
          v70 = v69;
          swift_arrayInitWithTakeBackToFront();
          v28 = v68;
          v56 = v70;
        }
      }

      goto LABEL_42;
    }

    if (v58 < v54 || v26 >= v54)
    {
      OUTLINED_FUNCTION_225();
      swift_arrayInitWithTakeFrontToBack();
      v58 += v55;
      v54 += v55;
      v56 = v59;
      v57 = v73;
      v28 = v74;
    }

    else
    {
      v56 = v54 + v55;
      v43 = v54 == v58;
      v58 += v55;
      v54 += v55;
      v57 = v73;
      v28 = v74;
      if (!v43)
      {
        OUTLINED_FUNCTION_225();
        swift_arrayInitWithTakeBackToFront();
        v58 = v26;
        v54 = v59;
        v56 = v59;
      }
    }
  }

  a10 = v28;
  v78 = v71[0];
LABEL_70:
  sub_1C74208CC(&a10, &v79, &v78);
  OUTLINED_FUNCTION_125();
}

uint64_t QueryUnderstandingStatistics.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 31) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(result + 72) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = v1;
  *(result + 64) = 0;
  return result;
}

uint64_t UserPromptAmbiguityState.description.getter()
{
  OUTLINED_FUNCTION_14_69();
  v2 = 0x756F756769626D61;
  if (!v3)
  {
    v2 = 0x6769626D61736964;
  }

  if (v0)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

PhotosIntelligence::UserPromptAmbiguityState_optional __swiftcall UserPromptAmbiguityState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1C7460CF8@<X0>(uint64_t *a1@<X8>)
{
  result = UserPromptAmbiguityState.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C7460DFC(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_2_57(v2 + 16, a2);
  *(v2 + 16) = a1;
  return result;
}

uint64_t sub_1C7460EB0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_57(v2 + 40, a2);
  *(v2 + 40) = a1;
}

uint64_t sub_1C7460F14(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_2_57(v2 + 48, a2);
  *(v2 + 48) = a1;
  return result;
}

uint64_t sub_1C7460F70(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_2_57(v2 + 49, a2);
  *(v2 + 49) = a1;
  return result;
}

uint64_t sub_1C7461010(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_2_57(v2 + 50, a2);
  *(v2 + 50) = a1;
  return result;
}

uint64_t sub_1C74610B0(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_2_57(v2 + 51, a2);
  *(v2 + 51) = a1;
  return result;
}

uint64_t sub_1C7461150(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_2_57(v2 + 52, a2);
  *(v2 + 52) = a1;
  return result;
}

uint64_t sub_1C74611F0(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_2_57(v2 + 53, a2);
  *(v2 + 53) = a1;
  return result;
}

uint64_t sub_1C7461290(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_2_57(v2 + 54, a2);
  *(v2 + 54) = a1;
  return result;
}

uint64_t sub_1C7461330(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_2_57(v2 + 55, a2);
  *(v2 + 55) = a1;
  return result;
}

uint64_t sub_1C74613D0(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_2_57(v2 + 56, a2);
  *(v2 + 56) = a1;
  return result;
}

uint64_t sub_1C7461470(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_2_57(v2 + 57, a2);
  *(v2 + 57) = a1;
  return result;
}

uint64_t sub_1C7461510(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_2_57(v2 + 58, a2);
  *(v2 + 58) = a1;
  return result;
}

uint64_t sub_1C74615B0(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_2_57(v2 + 59, a2);
  *(v2 + 59) = a1;
  return result;
}

uint64_t sub_1C7461650(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_2_57(v2 + 60, a2);
  *(v2 + 60) = a1;
  return result;
}

uint64_t sub_1C74616F0(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_2_57(v2 + 61, a2);
  *(v2 + 61) = a1;
  return result;
}

uint64_t sub_1C7461790(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_2_57(v2 + 62, a2);
  *(v2 + 62) = a1;
  return result;
}

uint64_t sub_1C7461830(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_2_57(v2 + 63, a2);
  *(v2 + 63) = a1;
  return result;
}

uint64_t sub_1C74618D0(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_2_57(v2 + 64, a2);
  *(v2 + 64) = a1;
  return result;
}

uint64_t sub_1C7461970(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_2_57(v2 + 65, a2);
  *(v2 + 65) = a1;
  return result;
}

uint64_t sub_1C7461A10(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_2_57(v2 + 72, a2);
  *(v2 + 72) = a1;
  return result;
}

uint64_t QueryUnderstandingStatistics.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 31) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 72) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 40) = v2;
  *(v0 + 64) = 0;
  return result;
}

void sub_1C7461AB4(uint64_t a1)
{
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v43 = *(TokenSuggestion - 8);
  MEMORY[0x1EEE9AC00](TokenSuggestion - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(a1 + 16);
  if (v36)
  {
    v10 = 0;
    v35 = a1 + 32;
    v37 = TokenCategoryType;
    do
    {
      v11 = (v35 + 120 * v10);
      v12 = v11[10];
      v13 = *(v12 + 16);
      if (v13)
      {
        v42 = v10;
        v14 = v11[1];
        v15 = v11[3];
        v17 = v11[13];
        v16 = v11[14];
        v44 = v11[2];
        v45 = v17;
        v46 = v11[12];
        v18 = v11[8];
        v47 = v11[9];
        v48 = v15;
        v19 = v12 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
        v38 = v16;
        sub_1C75504FC();
        v40 = v12;
        swift_bridgeObjectRetain_n();
        v41 = v14;
        sub_1C75504FC();
        sub_1C75504FC();
        v39 = v18;
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        OUTLINED_FUNCTION_58_13(v1 + 48, v66);
        OUTLINED_FUNCTION_58_13(v1 + 49, v65);
        OUTLINED_FUNCTION_58_13(v1 + 53, v64);
        OUTLINED_FUNCTION_58_13(v1 + 54, v63);
        OUTLINED_FUNCTION_58_13(v1 + 55, v62);
        OUTLINED_FUNCTION_58_13(v1 + 56, v61);
        OUTLINED_FUNCTION_58_13(v1 + 57, v60);
        OUTLINED_FUNCTION_58_13(v1 + 58, &v59);
        OUTLINED_FUNCTION_58_13(v1 + 50, &v58);
        OUTLINED_FUNCTION_58_13(v1 + 51, &v57);
        OUTLINED_FUNCTION_58_13(v1 + 52, &v56);
        OUTLINED_FUNCTION_58_13(v1 + 61, &v55);
        OUTLINED_FUNCTION_58_13(v1 + 60, &v54);
        OUTLINED_FUNCTION_58_13(v1 + 62, &v53);
        OUTLINED_FUNCTION_58_13(v1 + 63, &v52);
        OUTLINED_FUNCTION_58_13(v1 + 59, &v51);
        OUTLINED_FUNCTION_58_13(v1 + 64, &v50);
        OUTLINED_FUNCTION_58_13(v1 + 65, &v49);
        v20 = *(v43 + 72);
        do
        {
          sub_1C71AC0CC(v19, v9, type metadata accessor for QueryTokenSuggestion);
          sub_1C71AC0CC(v9, v6, type metadata accessor for QueryTokenCategoryType);
          sub_1C743D9F8(v9, type metadata accessor for QueryTokenSuggestion);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              OUTLINED_FUNCTION_0_189();
              *(v1 + 49) = 1;
              break;
            case 2u:
              v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CC0, &qword_1C7563B90) + 48);
              *(v1 + 53) = 1;
              sub_1C6FD7FC8(&v6[v30], &qword_1EC218C50, &qword_1C75606A0);
              v27 = v6;
              v28 = &qword_1EC218C50;
              v29 = &qword_1C75606A0;
              goto LABEL_28;
            case 3u:
              OUTLINED_FUNCTION_0_189();
              *(v1 + 54) = 1;
              break;
            case 4u:
              *(v1 + 55) = 1;
              sub_1C754F09C();
              goto LABEL_25;
            case 5u:
              *(v1 + 56) = 1;
              sub_1C754F5FC();
LABEL_25:
              OUTLINED_FUNCTION_12();
              (*(v31 + 8))(v6);
              break;
            case 6u:
              OUTLINED_FUNCTION_0_189();
              *(v1 + 57) = 1;
              break;
            case 7u:
              *(v1 + 58) = 1;
              sub_1C743D9F8(v6, type metadata accessor for GroundedGenericLocation);
              break;
            case 8u:
              *(v1 + 51) = 1;
              v27 = v6;
              v28 = &qword_1EC216328;
              v29 = &qword_1C7575BE0;
              goto LABEL_28;
            case 9u:
              v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0, &qword_1C7580730) + 48);
              *(v1 + 52) = 1;
              sub_1C743D9F8(&v6[v32], type metadata accessor for PersonalEventBackingItem);
              v27 = v6;
              v28 = &qword_1EC216320;
              v29 = &unk_1C7563B80;
LABEL_28:
              sub_1C6FD7FC8(v27, v28, v29);
              break;
            case 0xAu:
              v26 = *(*v6 + 16);

              *(v1 + 63) = v26 != 0;
              break;
            case 0xBu:
              break;
            case 0xCu:
              OUTLINED_FUNCTION_0_189();
              *(v1 + 59) = 1;
              break;
            case 0xDu:
              *(v1 + 65) = 1;
              break;
            case 0xEu:
              *(v1 + 50) = 1;
              swift_beginAccess();
              v21 = *(v1 + 40);
              sub_1C75504FC();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v1 + 40) = v21;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1C6FB1814();
                v21 = v33;
                *(v1 + 40) = v33;
              }

              v23 = *(v21 + 16);
              if (v23 >= *(v21 + 24) >> 1)
              {
                sub_1C6FB1814();
                v21 = v34;
              }

              *(v21 + 16) = v23 + 1;
              v24 = v21 + 16 * v23;
              v25 = v48;
              *(v24 + 32) = v44;
              *(v24 + 40) = v25;
              *(v1 + 40) = v21;
              swift_endAccess();
              break;
            case 0xFu:
              *(v1 + 61) = 1;
              break;
            case 0x10u:
              *(v1 + 60) = 1;
              break;
            case 0x11u:
              *(v1 + 62) = 1;
              break;
            case 0x12u:
              *(v1 + 64) = 1;
              break;
            default:
              OUTLINED_FUNCTION_0_189();
              *(v1 + 48) = 1;
              break;
          }

          v19 += v20;
          --v13;
        }

        while (v13);

        swift_bridgeObjectRelease_n();

        v10 = v42;
      }

      ++v10;
    }

    while (v10 != v36);
  }
}

void sub_1C74620A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C754D84C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  sub_1C754D7FC();
  sub_1C754D7EC();
  sub_1C754D80C();
  v16 = *(v7 + 8);
  v16(v9, v6);
  v38 = v16;
  v39 = v6;
  v16(v12, v6);
  v40[0] = a1;
  v40[1] = a2;
  sub_1C6FB5E8C();
  v17 = sub_1C755151C();
  v18 = 0;
  v19 = *(v17 + 16);
  v20 = v17 + 40;
  v21 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v22 = (v20 + 16 * v18);
  while (1)
  {
    if (v19 == v18)
    {

      v38(v15, v39);
      v34 = *(v21 + 16);

      OUTLINED_FUNCTION_58_13(v3 + 72, v40);
      *(v3 + 72) = v34;
      return;
    }

    if (v18 >= *(v17 + 16))
    {
      break;
    }

    ++v18;
    v23 = *(v22 - 1);
    v24 = *v22;
    v22 += 2;
    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      sub_1C75504FC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40[0] = v21;
      v36 = v20;
      v37 = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C6F7ED9C(0, *(v21 + 16) + 1, 1, v27, v28, v29, v30);
        v21 = v40[0];
      }

      v32 = *(v21 + 16);
      v31 = *(v21 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1C6F7ED9C(v31 > 1, v32 + 1, 1, v27, v28, v29, v30);
        v21 = v40[0];
      }

      *(v21 + 16) = v32 + 1;
      v33 = v21 + 16 * v32;
      *(v33 + 32) = v23;
      *(v33 + 40) = v24;
      v20 = v36;
      v3 = v37;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t sub_1C7462320()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158D8, &unk_1C755FCE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C758CC40;
  OUTLINED_FUNCTION_3_1();
  *(v2 + 32) = 0xD000000000000018;
  *(v2 + 40) = v3;
  sub_1C755104C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 48) = v4;
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = v5;
  OUTLINED_FUNCTION_5(v0 + 32, v55);
  sub_1C7550C7C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 72) = v6;
  *(inited + 80) = 0xD000000000000018;
  *(inited + 88) = v7;
  *(inited + 96) = sub_1C755104C();
  *(inited + 104) = sub_1C755068C();
  *(inited + 112) = v8;
  OUTLINED_FUNCTION_5(v0 + 40, v54);
  sub_1C75504FC();
  v9 = sub_1C7550B3C();

  *(inited + 120) = v9;
  *(inited + 128) = sub_1C755068C();
  *(inited + 136) = v10;
  OUTLINED_FUNCTION_5(v0 + 48, v53);
  *(inited + 144) = sub_1C7550C7C();
  *(inited + 152) = sub_1C755068C();
  *(inited + 160) = v11;
  OUTLINED_FUNCTION_5(v0 + 50, v52);
  *(inited + 168) = sub_1C7550C7C();
  *(inited + 176) = sub_1C755068C();
  *(inited + 184) = v12;
  OUTLINED_FUNCTION_5(v0 + 53, v51);
  *(inited + 192) = sub_1C7550C7C();
  *(inited + 200) = sub_1C755068C();
  *(inited + 208) = v13;
  OUTLINED_FUNCTION_5(v0 + 57, v50);
  *(inited + 216) = sub_1C7550C7C();
  *(inited + 224) = sub_1C755068C();
  *(inited + 232) = v14;
  OUTLINED_FUNCTION_5(v0 + 59, v49);
  *(inited + 240) = sub_1C7550C7C();
  *(inited + 248) = sub_1C755068C();
  *(inited + 256) = v15;
  OUTLINED_FUNCTION_5(v0 + 60, v48);
  *(inited + 264) = sub_1C7550C7C();
  *(inited + 272) = sub_1C755068C();
  *(inited + 280) = v16;
  OUTLINED_FUNCTION_5(v0 + 61, v47);
  *(inited + 288) = sub_1C7550C7C();
  *(inited + 296) = sub_1C755068C();
  *(inited + 304) = v17;
  OUTLINED_FUNCTION_5(v0 + 62, v46);
  *(inited + 312) = sub_1C7550C7C();
  *(inited + 320) = sub_1C755068C();
  *(inited + 328) = v18;
  OUTLINED_FUNCTION_5(v0 + 63, v45);
  sub_1C7550C7C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 336) = v19;
  *(inited + 344) = 0xD000000000000017;
  *(inited + 352) = v20;
  OUTLINED_FUNCTION_5(v0 + 58, v44);
  sub_1C7550C7C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 360) = v21;
  *(inited + 368) = 0xD000000000000013;
  *(inited + 376) = v22;
  OUTLINED_FUNCTION_5(v0 + 51, v43);
  sub_1C7550C7C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 384) = v23;
  *(inited + 392) = 0xD000000000000015;
  *(inited + 400) = v24;
  OUTLINED_FUNCTION_5(v0 + 52, v42);
  sub_1C7550C7C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 408) = v25;
  *(inited + 416) = 0xD000000000000015;
  *(inited + 424) = v26;
  OUTLINED_FUNCTION_5(v0 + 49, v41);
  *(inited + 432) = sub_1C7550C7C();
  *(inited + 440) = 0x7361487972657571;
  *(inited + 448) = 0xEF656D69546C6C41;
  OUTLINED_FUNCTION_5(v0 + 64, v40);
  sub_1C7550C7C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 456) = v27;
  *(inited + 464) = 0xD000000000000011;
  *(inited + 472) = v28;
  OUTLINED_FUNCTION_5(v0 + 65, v39);
  sub_1C7550C7C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 480) = v29;
  *(inited + 488) = 0xD000000000000011;
  *(inited + 496) = v30;
  OUTLINED_FUNCTION_5(v0 + 54, v38);
  sub_1C7550C7C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 504) = v31;
  *(inited + 512) = 0xD000000000000012;
  *(inited + 520) = v32;
  OUTLINED_FUNCTION_5(v0 + 55, v37);
  *(inited + 528) = sub_1C7550C7C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 536) = 0xD000000000000013;
  *(inited + 544) = v33;
  OUTLINED_FUNCTION_5(v0 + 56, v36);
  *(inited + 552) = sub_1C7550C7C();
  strcpy((inited + 560), "queryWordCount");
  *(inited + 575) = -18;
  OUTLINED_FUNCTION_1_139(v0 + 72, v34);
  *(inited + 576) = sub_1C755104C();
  sub_1C6FEAF80();
  return sub_1C75504DC();
}

uint64_t sub_1C74627B4()
{
  v78[0] = 0;
  v78[1] = 0xE000000000000000;
  sub_1C755180C();
  v79 = 0;
  v80 = 0xE000000000000000;
  MEMORY[0x1CCA5CD70](0xD000000000000010, 0x80000001C75B1110);
  OUTLINED_FUNCTION_5(v0 + 16, v78);
  v1 = OUTLINED_FUNCTION_5_98(*(v0 + 16));
  if (v2)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v1, v3);

  MEMORY[0x1CCA5CD70](0x656972746572202CLL, 0xED0000203A646576);
  v77[0] = *(v0 + 24);
  v4 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v4);

  MEMORY[0x1CCA5CD70](0x756769626D61202CLL, 0xED0000203A73756FLL);
  OUTLINED_FUNCTION_5(v0 + 32, v77);
  v5 = OUTLINED_FUNCTION_5_98(*(v0 + 32));
  if (v2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v5, v6);

  MEMORY[0x1CCA5CD70](0xD00000000000001CLL, 0x80000001C75B1130);
  OUTLINED_FUNCTION_14_69();
  v10 = 0xE900000000000073;
  v11 = 0x756F756769626D61;
  if (!v2)
  {
    v11 = 0x6769626D61736964;
    v10 = 0xED00006465746175;
  }

  if (v7)
  {
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  if (v7)
  {
    v13 = v10;
  }

  else
  {
    v13 = v8;
  }

  MEMORY[0x1CCA5CD70](v12, v13);

  MEMORY[0x1CCA5CD70](0x3A55514D4C4C202CLL, 0xE900000000000020);
  v14 = OUTLINED_FUNCTION_5_98(*(v0 + 34));
  if (v2)
  {
    v15 = 0xE500000000000000;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v14, v15);

  MEMORY[0x1CCA5CD70](0x7265507361680A2CLL, 0xED0000203A6E6F73);
  OUTLINED_FUNCTION_5(v0 + 48, v76);
  v16 = OUTLINED_FUNCTION_5_98(*(v0 + 48));
  if (v2)
  {
    v17 = 0xE500000000000000;
  }

  else
  {
    v17 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v16, v17);

  MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C75B1150);
  OUTLINED_FUNCTION_5(v0 + 49, v75);
  v18 = OUTLINED_FUNCTION_5_98(*(v0 + 49));
  if (v2)
  {
    v19 = 0xE500000000000000;
  }

  else
  {
    v19 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v18, v19);

  v20 = OUTLINED_FUNCTION_13_87();
  MEMORY[0x1CCA5CD70](v20 | 0x6D69547300000000, 0xEB00000000203A65);
  OUTLINED_FUNCTION_5(v0 + 53, v74);
  v21 = OUTLINED_FUNCTION_5_98(*(v0 + 53));
  if (v2)
  {
    v22 = 0xE500000000000000;
  }

  else
  {
    v22 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v21, v22);

  OUTLINED_FUNCTION_12_80();
  OUTLINED_FUNCTION_5(v0 + 54, v73);
  v23 = OUTLINED_FUNCTION_5_98(*(v0 + 54));
  if (v2)
  {
    v24 = 0xE500000000000000;
  }

  else
  {
    v24 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v23, v24);

  MEMORY[0x1CCA5CD70](0xD000000000000011, 0x80000001C75B1190);
  OUTLINED_FUNCTION_5(v0 + 55, v72);
  v25 = OUTLINED_FUNCTION_5_98(*(v0 + 55));
  if (v2)
  {
    v26 = 0xE500000000000000;
  }

  else
  {
    v26 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v25, v26);

  v27 = OUTLINED_FUNCTION_13_87();
  MEMORY[0x1CCA5CD70](v27 | 0x6165537300000000, 0xED0000203A6E6F73);
  OUTLINED_FUNCTION_5(v0 + 56, v71);
  v28 = OUTLINED_FUNCTION_5_98(*(v0 + 56));
  if (v2)
  {
    v29 = 0xE500000000000000;
  }

  else
  {
    v29 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v28, v29);

  v30 = OUTLINED_FUNCTION_13_87();
  MEMORY[0x1CCA5CD70](v30 | 0x636F4C7300000000, 0xEF203A6E6F697461);
  OUTLINED_FUNCTION_5(v0 + 57, v70);
  v31 = OUTLINED_FUNCTION_5_98(*(v0 + 57));
  if (v2)
  {
    v32 = 0xE500000000000000;
  }

  else
  {
    v32 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v31, v32);

  MEMORY[0x1CCA5CD70](0x7463417361680A2CLL, 0xEF203A7974697669);
  OUTLINED_FUNCTION_5(v0 + 50, v69);
  v33 = OUTLINED_FUNCTION_5_98(*(v0 + 50));
  if (v2)
  {
    v34 = 0xE500000000000000;
  }

  else
  {
    v34 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v33, v34);

  MEMORY[0x1CCA5CD70](0xD000000000000016, 0x80000001C75B11B0);
  OUTLINED_FUNCTION_5(v0 + 58, v68);
  v35 = OUTLINED_FUNCTION_5_98(*(v0 + 58));
  if (v2)
  {
    v36 = 0xE500000000000000;
  }

  else
  {
    v36 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v35, v36);

  MEMORY[0x1CCA5CD70](0xD000000000000012, 0x80000001C75B11D0);
  OUTLINED_FUNCTION_5(v0 + 51, v67);
  v37 = OUTLINED_FUNCTION_5_98(*(v0 + 51));
  if (v2)
  {
    v38 = 0xE500000000000000;
  }

  else
  {
    v38 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v37, v38);

  MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C75B11F0);
  OUTLINED_FUNCTION_5(v0 + 52, v66);
  v39 = OUTLINED_FUNCTION_5_98(*(v0 + 52));
  if (v2)
  {
    v40 = 0xE500000000000000;
  }

  else
  {
    v40 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v39, v40);

  MEMORY[0x1CCA5CD70](0x7069725473690A2CLL, 0xEA0000000000203ALL);
  OUTLINED_FUNCTION_5(v0 + 59, v65);
  v41 = OUTLINED_FUNCTION_5_98(*(v0 + 59));
  if (v2)
  {
    v42 = 0xE500000000000000;
  }

  else
  {
    v42 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v41, v42);

  v43 = OUTLINED_FUNCTION_13_87();
  MEMORY[0x1CCA5CD70](v43 | 0x6C6C417300000000, 0xEE00203A656D6954);
  OUTLINED_FUNCTION_5(v0 + 64, v64);
  v44 = OUTLINED_FUNCTION_5_98(*(v0 + 64));
  if (v2)
  {
    v45 = 0xE500000000000000;
  }

  else
  {
    v45 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v44, v45);

  OUTLINED_FUNCTION_12_80();
  OUTLINED_FUNCTION_5(v0 + 65, v63);
  v46 = OUTLINED_FUNCTION_5_98(*(v0 + 65));
  if (v2)
  {
    v47 = 0xE500000000000000;
  }

  else
  {
    v47 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v46, v47);

  MEMORY[0x1CCA5CD70](0xD000000000000012, 0x80000001C75B1230);
  OUTLINED_FUNCTION_5(v0 + 60, v62);
  v48 = OUTLINED_FUNCTION_5_98(*(v0 + 60));
  if (v2)
  {
    v49 = 0xE500000000000000;
  }

  else
  {
    v49 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v48, v49);

  v50 = OUTLINED_FUNCTION_13_87();
  MEMORY[0x1CCA5CD70](v50 | 0x6E6F537300000000, 0xEB00000000203A67);
  OUTLINED_FUNCTION_5(v0 + 61, v61);
  v51 = OUTLINED_FUNCTION_5_98(*(v0 + 61));
  if (v2)
  {
    v52 = 0xE500000000000000;
  }

  else
  {
    v52 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v51, v52);

  v53 = OUTLINED_FUNCTION_13_87();
  MEMORY[0x1CCA5CD70](v53 | 0x6E65477300000000, 0xEC000000203A6572);
  OUTLINED_FUNCTION_5(v0 + 62, v60);
  v54 = OUTLINED_FUNCTION_5_98(*(v0 + 62));
  if (v2)
  {
    v55 = 0xE500000000000000;
  }

  else
  {
    v55 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v54, v55);

  OUTLINED_FUNCTION_12_80();
  OUTLINED_FUNCTION_1_139(v0 + 63, v56);
  v57 = OUTLINED_FUNCTION_5_98(*(v0 + 63));
  if (v2)
  {
    v58 = 0xE500000000000000;
  }

  else
  {
    v58 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v57, v58);

  return v79;
}
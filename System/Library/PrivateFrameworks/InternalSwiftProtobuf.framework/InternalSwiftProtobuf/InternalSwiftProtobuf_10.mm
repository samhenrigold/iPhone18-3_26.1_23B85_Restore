uint64_t sub_1AC4F7D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  if ((~v7 & 0x3000000000000000) != 0 || v8 != 255)
  {
    v9 = (v7 >> 60) & 3;
    v10 = (v8 & 1) != 0 ? 4 : 0;
    if ((v10 | v9) == 2)
    {
      return (*(a4 + 112))(result, v6, 3, a3);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC4F7E00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  v5 = *(result + 24);
  if ((~v4 & 0x3000000000000000) != 0 || v5 != 255)
  {
    v6 = (v4 >> 60) & 3;
    v7 = (v5 & 1) != 0 ? 4 : 0;
    if ((v7 | v6) == 3)
    {
      return (*(a4 + 104))(*result & 1, 4, a3);
    }
  }

  __break(1u);
  return result;
}

__int128 *sub_1AC4F7E7C(__int128 *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(result + 2);
  v7 = *(result + 24);
  if (((~v6 & 0x3000000000000000) != 0 || v7 != 255) && ((v7 & 1) == 0 ? (v8 = 0) : (v8 = 4), (v8 | (v6 >> 60) & 3) == 4))
  {
    v11 = *result;
    v12 = v6 & 0xCFFFFFFFFFFFFFFFLL;
    v9 = *(a4 + 136);
    v10 = sub_1AC4D5050();
    return v9(&v11, 5, &type metadata for Google_Protobuf_Struct, v10, a3, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

__int128 *sub_1AC4F7F44(__int128 *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(result + 2);
  v7 = *(result + 24);
  if (((~v6 & 0x3000000000000000) != 0 || v7 != 255) && ((v7 & 1) == 0 ? (v8 = 0) : (v8 = 4), (v8 | (v6 >> 60) & 3) == 5))
  {
    v11 = *result;
    v12 = v6 & 0xCFFFFFFFFFFFFFFFLL;
    v9 = *(a4 + 136);
    v10 = sub_1AC4D4FA8();
    return v9(&v11, 6, &type metadata for Google_Protobuf_ListValue, v10, a3, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Google_Protobuf_Value.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *(a2 + 24);
  v9 = a2[4];
  v10 = a2[5];
  if ((~v3 & 0x3000000000000000) == 0 && v4 == 255)
  {
    v76 = a2[5];
    v77 = a2[4];
    v11 = OUTLINED_FUNCTION_4_20();
    sub_1AC48541C(v11, v12, v13, 255);
    if ((~v7 & 0x3000000000000000) == 0 && v8 == 255)
    {
      v14 = OUTLINED_FUNCTION_6_21();
      sub_1AC48541C(v14, v15, v16, 255);
      v17 = OUTLINED_FUNCTION_4_20();
      sub_1AC4854E8(v17, v18, v19, 255);
LABEL_10:
      v58 = OUTLINED_FUNCTION_93_0();
      sub_1AC4578F4(v58, v59);
      sub_1AC4578F4(v77, v76);
      v60 = OUTLINED_FUNCTION_93_0();
      v61 = MEMORY[0x1AC5B4070](v60);
      sub_1AC4513F8(v77, v76);
      v62 = OUTLINED_FUNCTION_93_0();
      sub_1AC4513F8(v62, v63);
      return v61 & 1;
    }

    v65 = OUTLINED_FUNCTION_6_21();
    sub_1AC48541C(v65, v66, v67, v8);
    goto LABEL_12;
  }

  v80[0] = *a1;
  v80[1] = v2;
  v80[2] = v3;
  v81 = v4;
  if ((~v7 & 0x3000000000000000) == 0 && v8 == 255)
  {
    v20 = OUTLINED_FUNCTION_3_26();
    sub_1AC48541C(v20, v21, v22, v23);
    v24 = OUTLINED_FUNCTION_6_21();
    sub_1AC48541C(v24, v25, v26, 255);
    v27 = OUTLINED_FUNCTION_3_26();
    sub_1AC48541C(v27, v28, v29, v30);
    v31 = OUTLINED_FUNCTION_4_20();
    sub_1AC48550C(v31, v32, v33, v34);
LABEL_12:
    v68 = OUTLINED_FUNCTION_3_26();
    sub_1AC4854E8(v68, v69, v70, v71);
    v72 = OUTLINED_FUNCTION_6_21();
    sub_1AC4854E8(v72, v73, v74, v8);
    return 0;
  }

  v76 = v10;
  v77 = v9;
  v78[0] = v5;
  v78[1] = v6;
  v78[2] = v7;
  v75 = v8 & 1;
  v79 = v8 & 1;
  v35 = OUTLINED_FUNCTION_3_26();
  sub_1AC48541C(v35, v36, v37, v38);
  v39 = OUTLINED_FUNCTION_6_21();
  sub_1AC48541C(v39, v40, v41, v8);
  v42 = OUTLINED_FUNCTION_3_26();
  sub_1AC48541C(v42, v43, v44, v45);
  v46 = static Google_Protobuf_Value.OneOf_Kind.== infix(_:_:)(v80, v78);
  v47 = OUTLINED_FUNCTION_6_21();
  sub_1AC48550C(v47, v48, v49, v75);
  v50 = OUTLINED_FUNCTION_4_20();
  sub_1AC48550C(v50, v51, v52, v53);
  v54 = OUTLINED_FUNCTION_3_26();
  sub_1AC4854E8(v54, v55, v56, v57);
  if (v46)
  {
    goto LABEL_10;
  }

  return 0;
}

uint64_t Google_Protobuf_Value.hashValue.getter()
{
  v1 = v0[1];
  v32 = *v0;
  v33 = v1;
  v34 = v0[2];
  v2 = sub_1AC51F468();
  OUTLINED_FUNCTION_109(v2, v3, v4, v5, v6, v7, v8, v9, v19, v21, v23[0], v24, v25, v26, v27, v28, v29, v30, v31);
  v10 = sub_1AC4F7938(v23);
  OUTLINED_FUNCTION_108(v10, v11, v12, v13, v14, v15, v16, v17, v20, v22, v23[0], v24, v25, v26, v27, v28, v29, v30, v31);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4F8340(uint64_t a1)
{
  v2 = v1[1];
  v6 = *v1;
  v7 = v2;
  v8 = v1[2];
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC4F7938(__dst);
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_ListValue._protobuf_nameMap.getter()
{
  if (qword_1EB557F10 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB559C88);
}

uint64_t sub_1AC4F84B0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  v11 = *(a3 + 16);
  while (1)
  {
    result = v11(a2, a3);
    if (v5 || (v13 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1AC4F8540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 416);
  v8 = sub_1AC4D51A0();
  return v7(a2, &type metadata for Google_Protobuf_Value, v8, a3, a4);
}

void sub_1AC4F85C0()
{
  OUTLINED_FUNCTION_17_13();
  if (!v3 || (sub_1AC50B7FC(), !v0))
  {
    switch(v1 >> 62)
    {
      case 1uLL:
        v4 = v2;
        v5 = v2 >> 32;
        goto LABEL_8;
      case 2uLL:
        v4 = *(v2 + 16);
        v5 = *(v2 + 24);
LABEL_8:
        if (v4 != v5)
        {
          goto LABEL_9;
        }

        return;
      case 3uLL:
        return;
      default:
        if ((v1 & 0xFF000000000000) == 0)
        {
          return;
        }

LABEL_9:
        sub_1AC51EC58();
        break;
    }
  }
}

void Google_Protobuf_ListValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  v8 = v3[1];
  v10 = v3[2];
  if (!*(*v3 + 16) || (v11 = *(a3 + 280), v12 = sub_1AC4D51A0(), v11(v9, 1, &type metadata for Google_Protobuf_Value, v12, a2, a3), !v4))
  {
    v13 = OUTLINED_FUNCTION_93_0();
    sub_1AC4578F4(v13, v14);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    sub_1AC4513F8(v8, v10);
  }
}

uint64_t sub_1AC4F875C(uint64_t (*a1)(char *))
{
  v3 = *v1;
  v4 = sub_1AC51F468();
  v12 = OUTLINED_FUNCTION_109(v4, v5, v6, v7, v8, v9, v10, v11, v30, v33, v36, v39, v41, v43, v45, v47, v49, v51, v53);
  v20 = OUTLINED_FUNCTION_20_11(v12, v13, v14, v15, v16, v17, v18, v19, v31, v34, v37);
  v21 = a1(v20);
  if (v3)
  {
    v21 = MEMORY[0x1AC5B4BA0](v3);
  }

  OUTLINED_FUNCTION_108(v21, v22, v23, v24, v25, v26, v27, v28, v32, v35, v38, v40, v42, v44, v46, v48, v50, v52, v54);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4F8848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v6 = *v4;
  v7 = sub_1AC51F468();
  v15 = OUTLINED_FUNCTION_109(v7, v8, v9, v10, v11, v12, v13, v14, v33, v36, v39, v42, v44, v46, v48, v50, v52, v54, v56);
  v23 = OUTLINED_FUNCTION_20_11(v15, v16, v17, v18, v19, v20, v21, v22, v34, v37, v40);
  v24 = a4(v23);
  if (v6)
  {
    v24 = MEMORY[0x1AC5B4BA0](v6);
  }

  OUTLINED_FUNCTION_108(v24, v25, v26, v27, v28, v29, v30, v31, v35, v38, v41, v43, v45, v47, v49, v51, v53, v55, v57);
  return sub_1AC51F4C8();
}

void sub_1AC4F88B4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v2 = 0;
    v3 = *(a1 + 64);
    v48 = a1 + 64;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & v3;
    v7 = (v4 + 63) >> 6;
    v49 = v7;
    if ((v5 & v3) != 0)
    {
      while (1)
      {
        v8 = __clz(__rbit64(v6));
        v9 = (v6 - 1) & v6;
LABEL_12:
        v12 = v8 | (v2 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v14 = v13[1];
        v52 = *v13;
        v15 = *(a1 + 56) + 48 * v12;
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        v19 = *(v15 + 24);
        v21 = *(v15 + 32);
        v20 = *(v15 + 40);

        v53 = v17;
        v22 = v17;
        v23 = v18;
        v24 = v18;
        v25 = v19;
        sub_1AC48541C(v16, v22, v24, v19);
        v54 = v21;
        v55 = v20;
        sub_1AC4578F4(v21, v20);
        if (!v14)
        {
          break;
        }

        v51 = v9;
        v61[0] = v16;
        v61[1] = v53;
        v61[2] = v23;
        v26 = v19;
        v62 = v19;
        v63 = v54;
        v64 = v20;
        v27 = sub_1AC4EFE58(v52, v14);
        v29 = v28;

        if ((v29 & 1) == 0)
        {
          sub_1AC4854E8(v16, v53, v23, v25);
          sub_1AC4513F8(v54, v20);
          return;
        }

        v30 = *(a2 + 56) + 48 * v27;
        v31 = *(v30 + 8);
        v32 = *(v30 + 16);
        v33 = *(v30 + 32);
        v34 = *(v30 + 40);
        v57[0] = *v30;
        v57[1] = v31;
        v57[2] = v32;
        v58 = *(v30 + 24);
        v59 = v33;
        v60 = v34;
        v35 = OUTLINED_FUNCTION_30_6();
        sub_1AC48541C(v35, v36, v37, v38);
        v39 = OUTLINED_FUNCTION_1_1();
        sub_1AC4578F4(v39, v40);
        v41 = static Google_Protobuf_Value.== infix(_:_:)(v57, v61);
        v42 = OUTLINED_FUNCTION_30_6();
        sub_1AC4854E8(v42, v43, v44, v45);
        v46 = OUTLINED_FUNCTION_1_1();
        sub_1AC4513F8(v46, v47);
        sub_1AC4854E8(v16, v53, v23, v26);
        sub_1AC4513F8(v54, v55);
        if ((v41 & 1) == 0)
        {
          return;
        }

        v7 = v49;
        v6 = v51;
        if (!v51)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v10 = v2;
      while (1)
      {
        v2 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v2 >= v7)
        {
          return;
        }

        v11 = *(v48 + 8 * v2);
        ++v10;
        if (v11)
        {
          v8 = __clz(__rbit64(v11));
          v9 = (v11 - 1) & v11;
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

unint64_t sub_1AC4F8B00()
{
  result = qword_1EB559CB0;
  if (!qword_1EB559CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559CB0);
  }

  return result;
}

unint64_t sub_1AC4F8B80()
{
  result = qword_1ED6E4058;
  if (!qword_1ED6E4058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6E4058);
  }

  return result;
}

unint64_t sub_1AC4F8BD4()
{
  result = qword_1ED6E4050;
  if (!qword_1ED6E4050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6E4050);
  }

  return result;
}

unint64_t sub_1AC4F8C2C()
{
  result = qword_1EB559CB8;
  if (!qword_1EB559CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB559CC0, &qword_1AC529C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559CB8);
  }

  return result;
}

unint64_t sub_1AC4F8C94()
{
  result = qword_1ED6E4130;
  if (!qword_1ED6E4130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6E4130);
  }

  return result;
}

unint64_t sub_1AC4F8CE8(uint64_t a1)
{
  result = sub_1AC4F8D10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4F8D10()
{
  result = qword_1EB557AD0;
  if (!qword_1EB557AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557AD0);
  }

  return result;
}

unint64_t sub_1AC4F8D90()
{
  result = qword_1EB559CC8;
  if (!qword_1EB559CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559CC8);
  }

  return result;
}

unint64_t sub_1AC4F8DE8()
{
  result = qword_1EB559CD0;
  if (!qword_1EB559CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559CD0);
  }

  return result;
}

unint64_t sub_1AC4F8E3C(uint64_t a1)
{
  result = sub_1AC4F8E64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4F8E64()
{
  result = qword_1EB557C28;
  if (!qword_1EB557C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557C28);
  }

  return result;
}

unint64_t sub_1AC4F8EE8()
{
  result = qword_1EB559CD8;
  if (!qword_1EB559CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559CD8);
  }

  return result;
}

unint64_t sub_1AC4F8F3C(uint64_t a1)
{
  result = sub_1AC4F8F64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4F8F64()
{
  result = qword_1EB557BF0;
  if (!qword_1EB557BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557BF0);
  }

  return result;
}

uint64_t sub_1AC4F8FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AC4F9020()
{
  result = qword_1EB559CE0;
  if (!qword_1EB559CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559CE0);
  }

  return result;
}

unint64_t sub_1AC4F9078()
{
  result = qword_1EB559CE8;
  if (!qword_1EB559CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559CE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Google_Protobuf_NullValue(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AC4F90EC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_21InternalSwiftProtobuf07Google_C6_ValueV10OneOf_KindOSg(uint64_t a1)
{
  v1 = (*(a1 + 16) >> 60) & 3 | (4 * *(a1 + 24));
  v2 = v1 ^ 0x3FE;
  v3 = 1024 - v1;
  if (v2 >= 0x3FA)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AC4F9150(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FA && *(a1 + 48))
    {
      v2 = *a1 + 1017;
    }

    else
    {
      v3 = (*(a1 + 16) >> 60) & 3 | (4 * *(a1 + 24));
      v4 = v3 ^ 0x3FE;
      v2 = 1022 - v3;
      if (v4 >= 0x3FA)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AC4F91A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3F9)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 1018;
    if (a3 >= 0x3FA)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FA)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (~a2 & 3) << 60;
      *(result + 24) = ~a2 >> 2;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1AC4F9224(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FB && *(a1 + 25))
    {
      v2 = *a1 + 1018;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 60) & 3 | (4 * *(a1 + 24))) ^ 0x3FF;
      if (v2 >= 0x3FA)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1AC4F9270(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 1019;
    if (a3 >= 0x3FB)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FB)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (-a2 & 3) << 60;
      *(result + 24) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_1AC4F92D8(uint64_t result, char a2)
{
  *(result + 16) = *(result + 16) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
  *(result + 24) = (a2 & 4) != 0;
  return result;
}

unint64_t sub_1AC4F930C()
{
  result = qword_1EB559CF0;
  if (!qword_1EB559CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559CF0);
  }

  return result;
}

uint64_t sub_1AC4F9380@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AC4890F8();
  *a1 = result;
  return result;
}

uint64_t static SwiftProtobufError.BinaryStreamDecoding.malformedLength(function:file:line:)()
{
  OUTLINED_FUNCTION_1_29();
  v0 = type metadata accessor for SwiftProtobufError.Storage();
  v1 = OUTLINED_FUNCTION_5_23(v0);
  *(v1 + 16) = 1;
  OUTLINED_FUNCTION_2_24(v1, 134);
}

uint64_t static SwiftProtobufError.BinaryStreamDecoding.noBytesAvailable(function:file:line:)()
{
  OUTLINED_FUNCTION_1_29();
  v0 = type metadata accessor for SwiftProtobufError.Storage();
  v1 = OUTLINED_FUNCTION_5_23(v0);
  *(v1 + 16) = 1;
  OUTLINED_FUNCTION_2_24(v1, 147);
}

uint64_t sub_1AC4F9590()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 72);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = v3;
  *(v9 + 32) = v2;
  *(v9 + 40) = v5;
  *(v9 + 48) = v4;
  *(v9 + 56) = v7;
  *(v9 + 64) = v6;
  *(v9 + 72) = v8;

  return v9;
}

uint64_t sub_1AC4F9648(_BYTE *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5 = *a4;
  v6 = a4[1];
  v7 = *(a4 + 4);
  *(v4 + 16) = *a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = v5;
  *(v4 + 56) = v6;
  *(v4 + 72) = v7;
  return v4;
}

uint64_t sub_1AC4F9670()
{

  return v0;
}

uint64_t sub_1AC4F96AC()
{
  v0 = sub_1AC4F9670();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

void sub_1AC4F96EC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  SwiftProtobufError.code.getter(&v3);
  *a2 = v3;
}

uint64_t SwiftProtobufError.code.setter(char *a1)
{
  v2 = v1;
  v3 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((result & 1) == 0)
  {
    v5 = sub_1AC4F9590();

    *v2 = v5;
  }

  *(v5 + 16) = v3;
  return result;
}

uint64_t (*SwiftProtobufError.code.modify(uint64_t a1))(uint64_t **a1)
{
  *a1 = v1;
  *(a1 + 8) = *(*v1 + 16);
  return sub_1AC4F97EC;
}

uint64_t sub_1AC4F97EC(uint64_t **a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if ((result & 1) == 0)
  {
    v4 = sub_1AC4F9590();

    *v1 = v4;
  }

  *(v4 + 16) = v2;
  return result;
}

__n128 SwiftProtobufError.init(code:message:location:)@<Q0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  v13 = a4[1];
  v14 = *a4;
  v9 = *(a4 + 4);
  v10 = type metadata accessor for SwiftProtobufError.Storage();
  v11 = OUTLINED_FUNCTION_5_23(v10);
  *(v11 + 16) = v8;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  result = v13;
  *(v11 + 40) = v14;
  *(v11 + 56) = v13;
  *(v11 + 72) = v9;
  *a5 = v11;
  return result;
}

uint64_t sub_1AC4F990C(char a1)
{
  sub_1AC51F468();
  MEMORY[0x1AC5B48A0](a1 & 1);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4F995C(uint64_t a1)
{
  v2 = *v1;
  sub_1AC51F468();
  sub_1AC4F98E4(v4, v2);
  return sub_1AC51F4C8();
}

uint64_t SwiftProtobufError.Code.hashValue.getter()
{
  v1 = *v0;
  sub_1AC51F468();
  MEMORY[0x1AC5B48A0](v1);
  return sub_1AC51F4C8();
}

uint64_t SwiftProtobufError.SourceLocation.function.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SwiftProtobufError.SourceLocation.function.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SwiftProtobufError.SourceLocation.file.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SwiftProtobufError.SourceLocation.file.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void __swiftcall SwiftProtobufError.SourceLocation.init(function:file:line:)(InternalSwiftProtobuf::SwiftProtobufError::SourceLocation *__return_ptr retstr, Swift::String function, Swift::String file, Swift::Int line)
{
  retstr->function = function;
  retstr->file = file;
  retstr->line = line;
}

uint64_t static SwiftProtobufError.SourceLocation.here(function:file:line:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
}

BOOL static SwiftProtobufError.SourceLocation.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_1AC51F3D8()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_1AC51F3D8()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t SwiftProtobufError.SourceLocation.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_1AC51EEB8();
  sub_1AC51EEB8();
  return MEMORY[0x1AC5B48A0](v2);
}

uint64_t SwiftProtobufError.SourceLocation.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_1AC51F468();
  sub_1AC51EEB8();
  sub_1AC51EEB8();
  MEMORY[0x1AC5B48A0](v1);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4F9DD8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  *&v5[72] = *v1;
  v6 = v2;
  v7 = v3;
  sub_1AC51F468();
  SwiftProtobufError.SourceLocation.hash(into:)(v5);
  return sub_1AC51F4C8();
}

uint64_t SwiftProtobufError.description.getter()
{
  v1 = *v0;
  if (*(*v0 + 16))
  {
    v2 = "google.protobuf.SourceContext";
  }

  else
  {
    v2 = "Stream decoding error";
  }

  MEMORY[0x1AC5B4340](0xD000000000000015, v2 | 0x8000000000000000);

  OUTLINED_FUNCTION_3_27();
  sub_1AC51F328();
  OUTLINED_FUNCTION_4_21();
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);

  MEMORY[0x1AC5B4340](v3, v4);

  return 0;
}

uint64_t SwiftProtobufError.debugDescription.getter()
{
  v3 = sub_1AC51EE48();
  OUTLINED_FUNCTION_3_27();

  v0 = sub_1AC51EE48();
  MEMORY[0x1AC5B4340](v0);

  OUTLINED_FUNCTION_4_21();

  v1 = sub_1AC51EE48();
  MEMORY[0x1AC5B4340](v1);

  return v3;
}

uint64_t sub_1AC4F9FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t *a7@<X8>)
{
  v14 = type metadata accessor for SwiftProtobufError.Storage();
  v15 = OUTLINED_FUNCTION_5_23(v14);
  *(v15 + 16) = a6;
  *(v15 + 24) = 0xD00000000000003CLL;
  *(v15 + 32) = 0x80000001AC52DF60;
  *(v15 + 40) = a1;
  *(v15 + 48) = a2;
  *(v15 + 56) = a3;
  *(v15 + 64) = a4;
  *(v15 + 72) = a5;
  *a7 = v15;
}

unint64_t sub_1AC4FA0A0()
{
  result = qword_1EB559CF8;
  if (!qword_1EB559CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559CF8);
  }

  return result;
}

unint64_t sub_1AC4FA0F8()
{
  result = qword_1EB559D00;
  if (!qword_1EB559D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559D00);
  }

  return result;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_1AC4FA20C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1AC4FA24C(uint64_t result, int a2, int a3)
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

_BYTE *sub_1AC4FA2AC(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1AC4FA354(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1AC4FA434()
{
  result = qword_1EB559D08;
  if (!qword_1EB559D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559D08);
  }

  return result;
}

uint64_t sub_1AC4FA494()
{
  v2 = v1;
  v3 = *(v0 + 88);
  if (v3 >= 1)
  {
    sub_1AC507364();
  }

  result = *(v0 + 104);
  if (result)
  {
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v16 = *(v0 + 104);
    v17 = v6;
    v7 = *(v0 + 128);
    v8 = *(v0 + 136);
    v18 = v5;
    v19 = v7;
    v9 = *(v0 + 144);
    v10 = *(v0 + 96);
    v11 = *(v0 + 97);

    v12 = sub_1AC5073AC(&v16, v8, v9, v10 | (v11 << 8));
    if (v2)
    {
      v14 = v17;

      return v14;
    }

    v14 = v12;
    v15 = v13;

    if (v15)
    {
      return v14;
    }

    if (!__OFADD__(v3, 1))
    {
      *(v0 + 88) = v3 + 1;
      return v14;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC4FA5C4()
{
  v0 = sub_1AC477954();
  OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v0);
  return OUTLINED_FUNCTION_59(v1, 9);
}

void sub_1AC4FA604()
{
  OUTLINED_FUNCTION_44_5();
  if (!v1)
  {
    sub_1AC5078C0();
    *v0 = v2;
  }
}

void sub_1AC4FA634()
{
  OUTLINED_FUNCTION_44_5();
  if (!v1)
  {
    sub_1AC5078C0();
    *v0 = v2;
    *(v0 + 4) = 0;
  }
}

void sub_1AC4FA668()
{
  OUTLINED_FUNCTION_32_8();
  if (!v1)
  {
    if ((sub_1AC507934() & 1) == 0)
    {
      sub_1AC5078C0();
      v26 = v25;
      sub_1AC4D9ACC();
      v27 = *(*v2 + 16);
      sub_1AC4D9A3C(v27);
      v28 = *v2;
      *(v28 + 16) = v27 + 1;
      *(v28 + 4 * v27 + 32) = v26;
      *v2 = v28;
      return;
    }

    OUTLINED_FUNCTION_2_25();
    while (1)
    {
      OUTLINED_FUNCTION_25_6();
      if (v7)
      {
        break;
      }

      OUTLINED_FUNCTION_20_12();
      if (v7)
      {
        OUTLINED_FUNCTION_11_14(v5);
        sub_1AC509980();
        return;
      }

      if ((v8 & 1) == 0)
      {
        while (v9 <= 0x23)
        {
          OUTLINED_FUNCTION_8_18();
          if (v7)
          {
            if (v10 != 35)
            {
              break;
            }

            v11 = (v5 + 1);
            while (v11 != v4)
            {
              OUTLINED_FUNCTION_1_0();
              if (v7)
              {
                goto LABEL_10;
              }
            }

            v11 = v4;
          }

          else
          {
            v11 = (v5 + 1);
          }

LABEL_10:
          OUTLINED_FUNCTION_12_16(v11);
          if (v7)
          {
            break;
          }

          v9 = *v5;
        }

LABEL_26:
        if (v5 == v4 || (OUTLINED_FUNCTION_19_11(), !v7))
        {
          v29 = 0;
LABEL_51:
          v30 = sub_1AC477954();
          OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v30);
          *v31 = v29;
          swift_willThrow();
          return;
        }

LABEL_29:
        v17 = v16 + 1;
LABEL_30:
        while (1)
        {
          OUTLINED_FUNCTION_12_16(v17);
          if (v7)
          {
            break;
          }

          OUTLINED_FUNCTION_17();
          if (!v7 & v18)
          {
            break;
          }

          OUTLINED_FUNCTION_17_14();
          if (!v7)
          {
            goto LABEL_29;
          }

          if (v19 != 35)
          {
            break;
          }

          v17 = v16 + 1;
          while (v17 != v4)
          {
            OUTLINED_FUNCTION_1_0();
            if (v7)
            {
              goto LABEL_30;
            }
          }

          v17 = v4;
        }
      }

LABEL_20:
      v12 = COERCE_DOUBLE(sub_1AC50A208());
      if (v13)
      {
        v14 = *(v0 + 40);
        if (v14 != v4 && *v14 == 45)
        {
          *(v0 + 40) = v14 + 1;
        }

        if (sub_1AC50A3E4(&unk_1F2127800))
        {
          v15 = NAN;
        }

        else
        {
          *(v0 + 40) = v14;
          v20 = sub_1AC50A4D4();
          if ((v20 & 0x100000000) != 0)
          {
            v29 = 1;
            goto LABEL_51;
          }

          v15 = *&v20;
        }
      }

      else
      {
        v15 = v12;
      }

      if ((OUTLINED_FUNCTION_40_5() & 1) == 0)
      {
        OUTLINED_FUNCTION_4_22();
        sub_1AC48F1A4();
        v3 = v23;
      }

      v22 = *(v3 + 16);
      v21 = *(v3 + 24);
      if (v22 >= v21 >> 1)
      {
        OUTLINED_FUNCTION_3_28(v21);
        sub_1AC48F1A4();
        v3 = v24;
      }

      OUTLINED_FUNCTION_28_6();
      *(v3 + 4 * v22 + 32) = v15;
      *v2 = v3;
    }

    if (v6)
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }
}

void sub_1AC4FA8B4()
{
  OUTLINED_FUNCTION_44_5();
  if (!v1)
  {
    sub_1AC5079AC();
    *v0 = v2;
  }
}

void sub_1AC4FA8E4()
{
  OUTLINED_FUNCTION_44_5();
  if (!v1)
  {
    sub_1AC5079AC();
    *v0 = v2;
    *(v0 + 8) = 0;
  }
}

void sub_1AC4FA918()
{
  OUTLINED_FUNCTION_32_8();
  if (!v1)
  {
    if ((sub_1AC507934() & 1) == 0)
    {
      sub_1AC5079AC();
      v26 = v25;
      sub_1AC4D9AE4();
      v27 = *(*v2 + 16);
      sub_1AC4D9A54(v27);
      v28 = *v2;
      *(v28 + 16) = v27 + 1;
      *(v28 + 8 * v27 + 32) = v26;
      *v2 = v28;
      return;
    }

    OUTLINED_FUNCTION_2_25();
    while (1)
    {
      OUTLINED_FUNCTION_25_6();
      if (v7)
      {
        break;
      }

      OUTLINED_FUNCTION_20_12();
      if (v7)
      {
        OUTLINED_FUNCTION_11_14(v5);
        sub_1AC509980();
        return;
      }

      if ((v8 & 1) == 0)
      {
        while (v9 <= 0x23)
        {
          OUTLINED_FUNCTION_8_18();
          if (v7)
          {
            if (v10 != 35)
            {
              break;
            }

            v11 = (v5 + 1);
            while (v11 != v4)
            {
              OUTLINED_FUNCTION_1_0();
              if (v7)
              {
                goto LABEL_10;
              }
            }

            v11 = v4;
          }

          else
          {
            v11 = (v5 + 1);
          }

LABEL_10:
          OUTLINED_FUNCTION_12_16(v11);
          if (v7)
          {
            break;
          }

          v9 = *v5;
        }

LABEL_26:
        if (v5 == v4 || (OUTLINED_FUNCTION_19_11(), !v7))
        {
          v29 = 0;
LABEL_51:
          v30 = sub_1AC477954();
          OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v30);
          *v31 = v29;
          swift_willThrow();
          return;
        }

LABEL_29:
        v17 = v16 + 1;
LABEL_30:
        while (1)
        {
          OUTLINED_FUNCTION_12_16(v17);
          if (v7)
          {
            break;
          }

          OUTLINED_FUNCTION_17();
          if (!v7 & v18)
          {
            break;
          }

          OUTLINED_FUNCTION_17_14();
          if (!v7)
          {
            goto LABEL_29;
          }

          if (v19 != 35)
          {
            break;
          }

          v17 = v16 + 1;
          while (v17 != v4)
          {
            OUTLINED_FUNCTION_1_0();
            if (v7)
            {
              goto LABEL_30;
            }
          }

          v17 = v4;
        }
      }

LABEL_20:
      v12 = sub_1AC50A208();
      if (v13)
      {
        v14 = *(v0 + 40);
        if (v14 != v4 && *v14 == 45)
        {
          *(v0 + 40) = v14 + 1;
        }

        if (sub_1AC50A3E4(&unk_1F2127828))
        {
          v15 = NAN;
        }

        else
        {
          *(v0 + 40) = v14;
          v20 = sub_1AC50A4D4();
          if ((v20 & 0x100000000) != 0)
          {
            v29 = 1;
            goto LABEL_51;
          }

          v15 = *&v20;
        }
      }

      else
      {
        v15 = *&v12;
      }

      if ((OUTLINED_FUNCTION_40_5() & 1) == 0)
      {
        OUTLINED_FUNCTION_4_22();
        sub_1AC48F268();
        v3 = v23;
      }

      v22 = *(v3 + 16);
      v21 = *(v3 + 24);
      if (v22 >= v21 >> 1)
      {
        OUTLINED_FUNCTION_3_28(v21);
        sub_1AC48F268();
        v3 = v24;
      }

      OUTLINED_FUNCTION_28_6();
      *(v3 + 8 * v22 + 32) = v15;
      *v2 = v3;
    }

    if (v6)
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }
}

void sub_1AC4FAB64()
{
  OUTLINED_FUNCTION_32_8();
  if (!v0)
  {
    v3 = sub_1AC507A20(v2);
    if (v3 == v3)
    {
      *v1 = v3;
    }

    else
    {
      v4 = sub_1AC477954();
      v5 = OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v4);
      OUTLINED_FUNCTION_9_18(v5, v6);
      swift_willThrow();
    }
  }
}

void sub_1AC4FABD0()
{
  OUTLINED_FUNCTION_32_8();
  if (!v0)
  {
    v3 = sub_1AC507A20(v2);
    if (v3 == v3)
    {
      *v1 = v3;
      *(v1 + 4) = 0;
    }

    else
    {
      v4 = sub_1AC477954();
      v5 = OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v4);
      OUTLINED_FUNCTION_9_18(v5, v6);
      swift_willThrow();
    }
  }
}

void sub_1AC4FAE94()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_32_8();
  if (!v0)
  {
    v4 = sub_1AC507934();
    if ((v4 & 1) == 0)
    {
      v26 = sub_1AC507A20(v4);
      sub_1AC45F540();
      v27 = OUTLINED_FUNCTION_16_11();
      sub_1AC45F558(v27);
      OUTLINED_FUNCTION_14_13();
      *(v28 + 8 * v2 + 32) = v26;
      *v1 = v28;
      goto LABEL_2;
    }

    OUTLINED_FUNCTION_2_25();
    while (1)
    {
      OUTLINED_FUNCTION_25_6();
      if (v8)
      {
        break;
      }

      OUTLINED_FUNCTION_20_12();
      if (v8)
      {
        OUTLINED_FUNCTION_11_14(v6);
        sub_1AC509980();
        goto LABEL_2;
      }

      if ((v9 & 1) == 0)
      {
        while (v10 <= 0x23)
        {
          OUTLINED_FUNCTION_8_18();
          if (v8)
          {
            if (v11 != 35)
            {
              break;
            }

            v12 = (v6 + 1);
            while (v12 != v3)
            {
              OUTLINED_FUNCTION_10_0();
              if (v8 || v13 == 13)
              {
                goto LABEL_11;
              }
            }

            v12 = v3;
          }

          else
          {
            v12 = (v6 + 1);
          }

LABEL_11:
          OUTLINED_FUNCTION_12_16(v12);
          if (v8)
          {
            break;
          }

          v10 = *v6;
        }

LABEL_27:
        if (v6 == v3 || (OUTLINED_FUNCTION_19_11(), !v8))
        {
          v32 = sub_1AC477954();
          v33 = OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v32);
          OUTLINED_FUNCTION_26_9(v33, v34);
          goto LABEL_53;
        }

LABEL_30:
        v18 = (v6 + 1);
LABEL_31:
        while (1)
        {
          OUTLINED_FUNCTION_12_16(v18);
          if (v8)
          {
            break;
          }

          OUTLINED_FUNCTION_17();
          if (!v8 & v19)
          {
            break;
          }

          OUTLINED_FUNCTION_17_14();
          if (!v8)
          {
            goto LABEL_30;
          }

          if (v20 != 35)
          {
            break;
          }

          v18 = (v6 + 1);
          while (v18 != v3)
          {
            OUTLINED_FUNCTION_10_0();
            if (v8 || v21 == 13)
            {
              goto LABEL_31;
            }
          }

          v18 = v3;
        }
      }

LABEL_21:
      if (v6 == v3)
      {
        goto LABEL_51;
      }

      if (*v6 != 45)
      {
        v17 = sub_1AC507AC8(v5);
        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_51;
        }

LABEL_43:
        v22 = v1;
        if (OUTLINED_FUNCTION_40_5())
        {
          goto LABEL_44;
        }

LABEL_49:
        OUTLINED_FUNCTION_4_22();
        sub_1AC456C38();
        v2 = v24;
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_11_14(v6);
      if (v15 == v3 || *v15 - 58 <= 0xFFFFFFF5)
      {
LABEL_51:
        v29 = sub_1AC477954();
        v30 = OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v29);
        OUTLINED_FUNCTION_9_18(v30, v31);
LABEL_53:
        swift_willThrow();
        goto LABEL_2;
      }

      v16 = sub_1AC507AC8(v14);
      if ((v16 & 0x8000000000000000) == 0)
      {
        v17 = -v16;
        goto LABEL_43;
      }

      if (v16 != 0x8000000000000000)
      {
        goto LABEL_51;
      }

      v22 = v1;
      v17 = 0x8000000000000000;
      if ((OUTLINED_FUNCTION_40_5() & 1) == 0)
      {
        goto LABEL_49;
      }

LABEL_44:
      OUTLINED_FUNCTION_15_12();
      if (v19)
      {
        OUTLINED_FUNCTION_3_28(v23);
        sub_1AC456C38();
        v2 = v25;
      }

      OUTLINED_FUNCTION_28_6();
      *(v2 + 8 * v1 + 32) = v17;
      v1 = v22;
      *v22 = v2;
    }

    if (v7)
    {
      goto LABEL_21;
    }

    goto LABEL_27;
  }

LABEL_2:
  OUTLINED_FUNCTION_61();
}

void sub_1AC4FB100()
{
  OUTLINED_FUNCTION_32_8();
  if (!v0)
  {
    v3 = sub_1AC507AC8(v2);
    if (HIDWORD(v3))
    {
      v4 = sub_1AC477954();
      v5 = OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v4);
      OUTLINED_FUNCTION_9_18(v5, v6);
      swift_willThrow();
    }

    else
    {
      *v1 = v3;
    }
  }
}

void sub_1AC4FB16C()
{
  OUTLINED_FUNCTION_32_8();
  if (!v0)
  {
    v3 = sub_1AC507AC8(v2);
    if (HIDWORD(v3))
    {
      v4 = sub_1AC477954();
      v5 = OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v4);
      OUTLINED_FUNCTION_9_18(v5, v6);
      swift_willThrow();
    }

    else
    {
      *v1 = v3;
      *(v1 + 4) = 0;
    }
  }
}

void sub_1AC4FB670(uint64_t a1, uint64_t (*a2)(void))
{
  OUTLINED_FUNCTION_44_5();
  if (!v3)
  {
    *v2 = a2();
  }
}

void sub_1AC4FB6A8(uint64_t a1, uint64_t (*a2)(void))
{
  OUTLINED_FUNCTION_44_5();
  if (!v3)
  {
    *v2 = a2();
    *(v2 + 8) = 0;
  }
}

void sub_1AC4FB6E4()
{
  OUTLINED_FUNCTION_44_5();
  if (!v1)
  {
    *v0 = sub_1AC507C74(v2) & 1;
  }
}

void sub_1AC4FB8F4()
{
  OUTLINED_FUNCTION_32_8();
  if (!v0)
  {
    v3 = sub_1AC507D8C(v2);
    v5 = v4;

    *v1 = v3;
    v1[1] = v5;
  }
}

void sub_1AC4FB94C(uint64_t *a1)
{
  sub_1AC50AB78(0x3Au);
  v5 = v2;
  if (!v2)
  {
    v6 = sub_1AC507934();
    if ((v6 & 1) == 0)
    {
      sub_1AC507D8C(v6);
      OUTLINED_FUNCTION_50_4();
      sub_1AC456458();
      sub_1AC456470(*(*a1 + 16));
      OUTLINED_FUNCTION_33_6();
      return;
    }

    OUTLINED_FUNCTION_34_6();
    while (1)
    {
      v9 = *(v1 + 40);
      if (v9 == v3)
      {
        break;
      }

      OUTLINED_FUNCTION_20_12();
      if (v12)
      {
        OUTLINED_FUNCTION_11_14(v9);
        sub_1AC509980();
        return;
      }

      if ((v10 & 1) == 0)
      {
        while (v11 <= 0x23)
        {
          OUTLINED_FUNCTION_51_4();
          if (v12)
          {
            if (v13 != 35)
            {
              break;
            }

            v14 = (v9 + 1);
            while (v14 != v3)
            {
              OUTLINED_FUNCTION_10_0();
              if (v12 || v15 == 13)
              {
                goto LABEL_11;
              }
            }

            v14 = v3;
          }

          else
          {
            v14 = (v9 + 1);
          }

LABEL_11:
          OUTLINED_FUNCTION_47_4(v14);
          if (v12)
          {
            break;
          }

          v11 = *v9;
        }

LABEL_27:
        if (v9 == v3 || (OUTLINED_FUNCTION_19_11(), !v12))
        {
          v31 = sub_1AC477954();
          v32 = OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v31);
          OUTLINED_FUNCTION_26_9(v32, v33);
          swift_willThrow();
          return;
        }

LABEL_30:
        v27 = v26 + 1;
LABEL_31:
        while (1)
        {
          OUTLINED_FUNCTION_47_4(v27);
          if (v12)
          {
            break;
          }

          OUTLINED_FUNCTION_17();
          if (!v12 & v28)
          {
            break;
          }

          OUTLINED_FUNCTION_51_4();
          if (!v12)
          {
            goto LABEL_30;
          }

          if (v29 != 35)
          {
            break;
          }

          v27 = v26 + 1;
          while (v27 != v3)
          {
            OUTLINED_FUNCTION_10_0();
            if (v12 || v30 == 13)
            {
              goto LABEL_31;
            }
          }

          v27 = v3;
        }
      }

LABEL_21:
      sub_1AC507D8C(v7);
      if (v5)
      {
        return;
      }

      OUTLINED_FUNCTION_50_4();
      v16 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_41();
        sub_1AC4525C0();
        v16 = isUniquelyReferenced_nonNull_native;
      }

      v5 = *(v16 + 16);
      v25 = *(v16 + 24);
      a1 = (v5 + 1);
      if (v5 >= v25 >> 1)
      {
        OUTLINED_FUNCTION_43(v25);
        sub_1AC4525C0();
      }

      OUTLINED_FUNCTION_29_6(isUniquelyReferenced_nonNull_native, v18, v19, v20, v21, v22, v23, v24, v34, v35);
    }

    if (v8)
    {
      goto LABEL_21;
    }

    goto LABEL_27;
  }
}

void sub_1AC4FBB8C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_32_8();
  if (!v2)
  {
    sub_1AC507E80(v5);
    v7 = v6;
    v9 = v8;
    a2(*v3, v3[1]);
    *v3 = v7;
    v3[1] = v9;
  }
}

void sub_1AC4FBBF4(uint64_t *a1)
{
  sub_1AC50AB78(0x3Au);
  v5 = v2;
  if (!v2)
  {
    v6 = sub_1AC507934();
    if ((v6 & 1) == 0)
    {
      sub_1AC507E80(v6);
      OUTLINED_FUNCTION_50_4();
      sub_1AC45846C();
      sub_1AC458484(*(*a1 + 16));
      OUTLINED_FUNCTION_33_6();
      return;
    }

    OUTLINED_FUNCTION_34_6();
    while (1)
    {
      v9 = *(v1 + 40);
      if (v9 == v3)
      {
        break;
      }

      OUTLINED_FUNCTION_20_12();
      if (v12)
      {
        OUTLINED_FUNCTION_11_14(v9);
        sub_1AC509980();
        return;
      }

      if ((v10 & 1) == 0)
      {
        while (v11 <= 0x23)
        {
          OUTLINED_FUNCTION_51_4();
          if (v12)
          {
            if (v13 != 35)
            {
              break;
            }

            v14 = (v9 + 1);
            while (v14 != v3)
            {
              OUTLINED_FUNCTION_10_0();
              if (v12 || v15 == 13)
              {
                goto LABEL_11;
              }
            }

            v14 = v3;
          }

          else
          {
            v14 = (v9 + 1);
          }

LABEL_11:
          OUTLINED_FUNCTION_47_4(v14);
          if (v12)
          {
            break;
          }

          v11 = *v9;
        }

LABEL_27:
        if (v9 == v3 || (OUTLINED_FUNCTION_19_11(), !v12))
        {
          v31 = sub_1AC477954();
          v32 = OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v31);
          OUTLINED_FUNCTION_26_9(v32, v33);
          swift_willThrow();
          return;
        }

LABEL_30:
        v27 = v26 + 1;
LABEL_31:
        while (1)
        {
          OUTLINED_FUNCTION_47_4(v27);
          if (v12)
          {
            break;
          }

          OUTLINED_FUNCTION_17();
          if (!v12 & v28)
          {
            break;
          }

          OUTLINED_FUNCTION_51_4();
          if (!v12)
          {
            goto LABEL_30;
          }

          if (v29 != 35)
          {
            break;
          }

          v27 = v26 + 1;
          while (v27 != v3)
          {
            OUTLINED_FUNCTION_10_0();
            if (v12 || v30 == 13)
            {
              goto LABEL_31;
            }
          }

          v27 = v3;
        }
      }

LABEL_21:
      sub_1AC507E80(v7);
      if (v5)
      {
        return;
      }

      OUTLINED_FUNCTION_50_4();
      v16 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_41();
        sub_1AC45794C();
        v16 = isUniquelyReferenced_nonNull_native;
      }

      v5 = *(v16 + 16);
      v25 = *(v16 + 24);
      a1 = (v5 + 1);
      if (v5 >= v25 >> 1)
      {
        OUTLINED_FUNCTION_43(v25);
        sub_1AC45794C();
      }

      OUTLINED_FUNCTION_29_6(isUniquelyReferenced_nonNull_native, v18, v19, v20, v21, v22, v23, v24, v34, v35);
    }

    if (v8)
    {
      goto LABEL_21;
    }

    goto LABEL_27;
  }
}

unsigned __int8 *sub_1AC4FBDF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1AC51F228();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v21 - v13;
  result = sub_1AC508078(v12);
  if (!v3)
  {
    if (v17)
    {
      v18 = sub_1AC507A20(result);
      if (v18 != v18)
      {
        sub_1AC477954();
        swift_allocError();
        *v19 = 0;
        return swift_willThrow();
      }

      (*(a2 + 32))();
      if (__swift_getEnumTagSinglePayload(v11, 1, a1) == 1)
      {
        (*(v8 + 8))(v11, v7);
        goto LABEL_7;
      }

      v14 = v11;
    }

    else
    {
      sub_1AC46AB60(result, v16, a1, a2, v14);
      if (__swift_getEnumTagSinglePayload(v14, 1, a1) == 1)
      {
        (*(v8 + 8))(v14, v7);
LABEL_7:
        sub_1AC477954();
        swift_allocError();
        *v20 = 8;
        return swift_willThrow();
      }
    }

    return (*(*(a1 - 8) + 32))(a3, v14, a1);
  }

  return result;
}

void sub_1AC4FC030(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_22();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12_8();
  sub_1AC50AB78(0x3Au);
  if (!v2)
  {
    OUTLINED_FUNCTION_59_2();
    sub_1AC51F228();
    OUTLINED_FUNCTION_0();
    (*(v6 + 8))(a1);
    v7 = OUTLINED_FUNCTION_55_2();
    v8(v7);
    __swift_storeEnumTagSinglePayload(a1, 0, 1, a2);
  }
}

void sub_1AC4FC138(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_22();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12_8();
  sub_1AC50AB78(0x3Au);
  if (!v2)
  {
    OUTLINED_FUNCTION_59_2();
    (*(v6 + 8))(a1, a2);
    v8 = OUTLINED_FUNCTION_55_2();
    v9(v8);
  }
}

void sub_1AC4FC218()
{
  OUTLINED_FUNCTION_60();
  v39 = v2;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_6_22();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  v12 = v10 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - v17;
  sub_1AC50AB78(0x3Au);
  if (!v1)
  {
    v35 = v16;
    if ((sub_1AC507934() & 1) == 0)
    {
      sub_1AC4FBDF0(v4, v39, v12);
      (*(v8 + 16))(v35, v12, v4);
      sub_1AC51F108();
      sub_1AC51F0D8();
      (*(v8 + 8))(v12, v4);
      goto LABEL_2;
    }

    v37 = (v8 + 16);
    v38 = v6;
    v19 = *(v0 + 48);
    v36 = (v8 + 8);
    OUTLINED_FUNCTION_42_4();
    v20 = 1;
    v21 = v39;
    v22 = v35;
    while (1)
    {
      v23 = *(v0 + 40);
      if (v23 == v19)
      {
        break;
      }

      OUTLINED_FUNCTION_20_12();
      if (v26)
      {
        *(v0 + 40) = v23 + 1;
        sub_1AC509980();
        goto LABEL_2;
      }

      if ((v24 & 1) == 0)
      {
        while (v25 <= 0x23)
        {
          if (((1 << v25) & v6) != 0)
          {
            ++v23;
          }

          else
          {
            if (v25 != 35)
            {
              break;
            }

            ++v23;
            while (v23 != v19)
            {
              OUTLINED_FUNCTION_10_0();
              if (v26 || v27 == 13)
              {
                goto LABEL_11;
              }
            }

            v23 = v19;
          }

LABEL_11:
          *(v0 + 40) = v23;
          if (v23 == v19)
          {
            break;
          }

          v25 = *v23;
        }

LABEL_22:
        if (v23 == v19 || (OUTLINED_FUNCTION_19_11(), !v26))
        {
          v33 = sub_1AC477954();
          OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v33);
          *v34 = 0;
          swift_willThrow();
          goto LABEL_2;
        }

LABEL_25:
        v29 = (v28 + 1);
LABEL_26:
        while (1)
        {
          *(v0 + 40) = v29;
          if (v29 == v19)
          {
            break;
          }

          OUTLINED_FUNCTION_17();
          if (!v26 & v31)
          {
            break;
          }

          if (((1 << v30) & v6) != 0)
          {
            goto LABEL_25;
          }

          if (v30 != 35)
          {
            break;
          }

          v29 = (v28 + 1);
          while (v29 != v19)
          {
            OUTLINED_FUNCTION_10_0();
            if (v26 || v32 == 13)
            {
              goto LABEL_26;
            }
          }

          v29 = v19;
        }
      }

LABEL_21:
      sub_1AC4FBDF0(v4, v21, v18);
      (*v37)(v22, v18, v4);
      sub_1AC51F108();
      sub_1AC51F0D8();
      (*v36)(v18, v4);
      v20 = 0;
      v21 = v39;
    }

    if (v20)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

LABEL_2:
  OUTLINED_FUNCTION_61();
}

void sub_1AC4FC558()
{
  OUTLINED_FUNCTION_60();
  v48 = v2;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_6_22();
  v42 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12_8();
  v41 = v10 - v9;
  v11 = sub_1AC51F228();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6();
  v40 = v13 - v14;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v45 = (&v39 - v17);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v39 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v39 - v21);
  v23 = v0;
  sub_1AC5080F0();
  v24 = *(v12 + 16);
  v47 = v6;
  v43 = v24;
  v44 = v12 + 16;
  v24(v22, v6, v11);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v4);
  v46 = v12;
  v26 = v12;
  v27 = v11;
  v28 = *(v26 + 8);
  v28(v22, v27);
  if (EnumTagSinglePayload == 1)
  {
    (*(v48 + 16))(v4);
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v4);
    (*(v46 + 40))(v47, v20, v27);
  }

  sub_1AC507264();
  if (v1)
  {
    goto LABEL_16;
  }

  v30 = v29;
  sub_1AC4779A8(v23, &v51);
  *(&v50[5] + 1) = 0;
  *(&v50[6] + 8) = 0u;
  *(&v50[7] + 8) = 0u;
  sub_1AC4779A8(&v51, v50);
  LOWORD(v50[6]) = v30;
  if (!dynamic_cast_existential_1_conditional(v4, v4, &protocol descriptor for _ProtoNameProviding))
  {
    v32 = sub_1AC477954();
    OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v32);
    OUTLINED_FUNCTION_59(v33, 6);
    sub_1AC477A04(&v51);
    sub_1AC477A04(v50);
    sub_1AC458E14(*(&v50[6] + 1), *&v50[7], *(&v50[7] + 1), *&v50[8]);
LABEL_16:
    OUTLINED_FUNCTION_61();
    return;
  }

  (*(v31 + 8))(v49);
  sub_1AC477A04(&v51);
  sub_1AC458E14(*(&v50[6] + 1), *&v50[7], *(&v50[7] + 1), *&v50[8]);
  *(&v50[7] + 8) = v49[1];
  *(&v50[6] + 8) = v49[0];
  *(&v50[8] + 1) = v4;
  *&v50[9] = v48;
  memcpy(v53, v50, 0x98uLL);
  if (v4 != &type metadata for Google_Protobuf_Any)
  {
    if (__swift_getEnumTagSinglePayload(v47, 1, v4) != 1)
    {
      (*(v48 + 64))(v53, &type metadata for TextFormatDecoder, &off_1F211BCA0, v4);
LABEL_15:
      sub_1AC477AFC(v53, v23);
      sub_1AC477AA8(v53);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_18;
  }

  v4 = v45;
  v34 = v47;
  v43(v45, v47, v27);
  if (__swift_getEnumTagSinglePayload(v4, 1, &type metadata for Google_Protobuf_Any) == 1)
  {
LABEL_18:
    v28(v4, v27);
    goto LABEL_19;
  }

  v35 = v41;
  (*(v42 + 32))(v41, v4, &type metadata for Google_Protobuf_Any);
  OUTLINED_FUNCTION_46_5(&v51, v35);
  v50[0] = v51;
  *&v50[1] = v52;
  if (v52)
  {
    sub_1AC4D345C(v53);
    if (*&v50[1])
    {
      v51 = v50[0];
      v52 = *&v50[1];
      sub_1AC4578F4(*&v50[0], *(&v50[0] + 1));

      v36 = v40;
      OUTLINED_FUNCTION_46_5(v40, &v51);
      v37 = v36;
      v38 = 0;
    }

    else
    {
      v36 = v40;
      v37 = v40;
      v38 = 1;
    }

    __swift_storeEnumTagSinglePayload(v37, v38, 1, &type metadata for Google_Protobuf_Any);
    (*(v46 + 40))(v34, v36, v27);
    sub_1AC48532C(*&v50[0], *(&v50[0] + 1), *&v50[1]);
    goto LABEL_15;
  }

LABEL_19:
  __break(1u);
}

void sub_1AC4FCA80()
{
  OUTLINED_FUNCTION_60();
  v3 = v1;
  v4 = v0;
  v6 = v5;
  v186 = v7;
  v8 = v197;
  v188 = v9;
  OUTLINED_FUNCTION_6_22();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  v15 = v13 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v184 = &v174 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v185 = &v174 - v19;
  sub_1AC5080F0();
  v20 = sub_1AC507934();
  v183 = v6;
  if ((v20 & 1) == 0)
  {
    sub_1AC507264();
    if (v1)
    {
      goto LABEL_237;
    }

    v137 = v136;
    sub_1AC4779A8(v4, &v198);
    OUTLINED_FUNCTION_38_5();
    LOWORD(v197[6]) = v137;
    v138 = v188;
    if (dynamic_cast_existential_1_conditional(v188, v188, &protocol descriptor for _ProtoNameProviding))
    {
      OUTLINED_FUNCTION_58_3();
      v139();
      sub_1AC477A04(&v198);
      sub_1AC458E14(*(&v197[6] + 1), *&v197[7], *(&v197[7] + 1), *&v197[8]);
      *(&v197[7] + 8) = v196;
      *(&v197[6] + 8) = v195;
      v140 = v183;
      *(&v197[8] + 1) = v138;
      *&v197[9] = v183;
      memcpy(v200, v197, 0x98uLL);
      if (v138 == &type metadata for Google_Protobuf_Any)
      {
        v197[0] = xmmword_1AC51F990;
        if (qword_1ED6E3410 != -1)
        {
          goto LABEL_250;
        }

        goto LABEL_228;
      }

      (*(v183 + 16))(v138, v183);
      (*(v140 + 64))(v200, &type metadata for TextFormatDecoder, &off_1F211BCA0, v138, v140);
      (*(v11 + 16))(v185, v15, v138);
      v147 = sub_1AC51F108();
      OUTLINED_FUNCTION_45_4(v147);
      (*(v11 + 8))(v15, v138);
      goto LABEL_240;
    }

LABEL_223:
    v141 = sub_1AC477954();
    OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v141);
    OUTLINED_FUNCTION_59(v142, 6);
    sub_1AC477A04(&v198);
    sub_1AC477A04(v197);
    sub_1AC458E14(*(&v197[6] + 1), *&v197[7], *(&v197[7] + 1), *&v197[8]);
    goto LABEL_237;
  }

  v180 = v6 + 64;
  v181 = v6 + 16;
  v179 = (v11 + 16);
  v182 = v11 + 8;
  OUTLINED_FUNCTION_42_4();
  v178 = *(v22 + 2448);
  for (i = 1; ; i = 0)
  {
    v24 = v4[5];
    v25 = v4[6];
    if (v24 != v25 && *v24 == 93)
    {
      v4[5] = v24 + 1;
      sub_1AC509980();
      goto LABEL_237;
    }

    if ((i & 1) == 0)
    {
      sub_1AC509980();
      if (v4[5] == v25 || (OUTLINED_FUNCTION_19_11(), !v27))
      {
LABEL_224:
        v143 = sub_1AC477954();
        OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v143);
        *v144 = 0;
LABEL_226:
        swift_willThrow();
        goto LABEL_237;
      }

      v4[5] = v26 + 1;
      sub_1AC509980();
      v21 = 1;
    }

    v28 = v4[10];
    v29 = __OFSUB__(v28, 1);
    v30 = v28 - 1;
    if (v29)
    {
      goto LABEL_246;
    }

    v4[10] = v30;
    if (v30 < 0)
    {
      v145 = sub_1AC477954();
      OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v145);
      *v146 = 11;
      goto LABEL_226;
    }

    v31 = v4[5];
    if (v31 == v25)
    {
      goto LABEL_224;
    }

    v34 = *v31;
    v33 = v31 + 1;
    v32 = v34;
LABEL_14:
    while (1)
    {
      v4[5] = v33;
      if (v33 == v25)
      {
        break;
      }

      v35 = *v33;
      if (v35 > 0x23)
      {
        break;
      }

      if (((v21 << v35) & v2) != 0)
      {
        ++v33;
      }

      else
      {
        if (v35 != 35)
        {
          break;
        }

        ++v33;
        while (v33 != v25)
        {
          v37 = *v33++;
          v36 = v37;
          if (v37 == 10 || v36 == 13)
          {
            goto LABEL_14;
          }
        }

        v33 = v25;
      }
    }

    if (v32 == 60)
    {
      v38 = 62;
    }

    else
    {
      if (v32 != 123)
      {
        goto LABEL_224;
      }

      v38 = 125;
    }

    sub_1AC4779A8(v4, &v198);
    OUTLINED_FUNCTION_38_5();
    LOWORD(v197[6]) = v38;
    v39 = v188;
    if (!dynamic_cast_existential_1_conditional(v188, v188, &protocol descriptor for _ProtoNameProviding))
    {
      goto LABEL_223;
    }

    OUTLINED_FUNCTION_58_3();
    v40();
    sub_1AC477A04(&v198);
    sub_1AC458E14(*(&v197[6] + 1), *&v197[7], *(&v197[7] + 1), *&v197[8]);
    *(&v197[7] + 8) = v196;
    *(&v197[6] + 8) = v195;
    *(&v197[8] + 1) = v39;
    *&v197[9] = v6;
    memcpy(v200, v197, 0x98uLL);
    if (v39 != &type metadata for Google_Protobuf_Any)
    {
      v41 = v184;
      (*(v6 + 16))(v39, v6);
      (*(v6 + 64))(v200, &type metadata for TextFormatDecoder, &off_1F211BCA0, v39, v6);
      if (v3)
      {
        v148 = OUTLINED_FUNCTION_54_3();
        v149(v148);
        goto LABEL_236;
      }

      (*v179)(v185, v41, v39);
      v42 = sub_1AC51F108();
      OUTLINED_FUNCTION_45_4(v42);
      v43 = OUTLINED_FUNCTION_54_3();
      v44(v43);
      goto LABEL_217;
    }

    if (qword_1ED6E3410 != -1)
    {
      OUTLINED_FUNCTION_18_10();
      swift_once();
    }

    v187 = qword_1ED6E4C40;
    v45 = v200[5];
    v46 = v200[6];
    if (v200[5] != v200[6])
    {
      do
      {
        OUTLINED_FUNCTION_17();
        if (!v27 & v47)
        {
          break;
        }

        OUTLINED_FUNCTION_53_4();
        if (v27)
        {
          if (v48 != 35)
          {
            break;
          }

          v49 = (v45 + 1);
          while (v49 != v46)
          {
            OUTLINED_FUNCTION_10_0();
            if (v27 || v50 == 13)
            {
              goto LABEL_39;
            }
          }

          v49 = v46;
        }

        else
        {
          v49 = (v45 + 1);
        }

LABEL_39:
        OUTLINED_FUNCTION_35_5(v49);
      }

      while (!v27);
    }

    if (v45 == v46 || *v45 != 91)
    {
      break;
    }

    v51 = v45 + 1;
    v200[5] = v45 + 1;
    if (v45 + 1 == v46 || (*v51 & 0xDFu) - 91 <= 0xFFFFFFE5)
    {
      goto LABEL_238;
    }

    for (j = v45 + 2; ; ++j)
    {
      v200[5] = j;
      if (j == v46)
      {
        break;
      }

      v53 = *j;
      v54 = (v53 - 58) > 0xFFFFFFF5 || (v53 & 0xFFFFFFDF) - 91 > 0xFFFFFFE5;
      if (!v54 && (v53 - 46) >= 2 && v53 != 95)
      {
        if (v53 != 93)
        {
          goto LABEL_238;
        }

        break;
      }
    }

    if (j == v46 || *j != 93)
    {
LABEL_238:
      v157 = sub_1AC477954();
      v158 = OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v157);
      OUTLINED_FUNCTION_23_12(v158, v159, v160, v161);

      goto LABEL_234;
    }

    OUTLINED_FUNCTION_42_4();

    v122 = sub_1AC456544(v51, j - v51);
    if (!v123)
    {
      v169 = sub_1AC477954();
      v170 = OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v169);
      OUTLINED_FUNCTION_23_12(v170, v171, v172, v173);
      goto LABEL_234;
    }

    v124 = v122;
    v125 = v123;
    OUTLINED_FUNCTION_35_5((j + 1));
    v6 = v183;
    while (!v27)
    {
      OUTLINED_FUNCTION_17();
      if (!v27 & v47)
      {
        break;
      }

      OUTLINED_FUNCTION_53_4();
      if (v27)
      {
        if (v127 != 35)
        {
          break;
        }

        v128 = v126 + 1;
        while (v128 != v46)
        {
          OUTLINED_FUNCTION_10_0();
          if (v27 || v129 == 13)
          {
            goto LABEL_202;
          }
        }

        v128 = v46;
      }

      else
      {
        v128 = v126 + 1;
      }

LABEL_202:
      OUTLINED_FUNCTION_35_5(v128);
    }

    v2 = v187;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v130 = type metadata accessor for AnyMessageStorage();
      OUTLINED_FUNCTION_2_8(v130);
      v2 = sub_1AC474690(v2);
    }

    sub_1AC47514C(v124, v125, v200);
    if (v3)
    {

      goto LABEL_234;
    }

    v187 = v2;

LABEL_216:
    OUTLINED_FUNCTION_42_4();
    v197[0] = v178;
    *&v197[1] = v187;
    v131 = OUTLINED_FUNCTION_15_1();
    sub_1AC4578F4(v131, v132);

    swift_dynamicCast();
    v133 = sub_1AC51F108();
    OUTLINED_FUNCTION_45_4(v133);
    v134 = OUTLINED_FUNCTION_15_1();
    sub_1AC4513F8(v134, v135);

LABEL_217:
    sub_1AC477AFC(v200, v4);
    sub_1AC477AA8(v200);
    v21 = 1;
  }

  v55 = v187;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v56 = type metadata accessor for AnyMessageStorage();
    OUTLINED_FUNCTION_2_8(v56);
    v55 = sub_1AC474690(v55);
  }

  swift_beginAccess();
  *(v55 + 16) = 0;
  *(v55 + 24) = 0xE000000000000000;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v57 = type metadata accessor for AnyMessageStorage();
    OUTLINED_FUNCTION_2_8(v57);
    v55 = sub_1AC474690(v55);
  }

  v58 = OUTLINED_FUNCTION_15_1();
  sub_1AC474608(v58, v59);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v187 = v55;
  }

  else
  {
    v60 = type metadata accessor for AnyMessageStorage();
    OUTLINED_FUNCTION_2_8(v60);
    v187 = sub_1AC474690(v55);
  }

  v61 = v200[13];
  v191 = v200[15];
  v192 = v200[14];
  v189 = v200[13];
  v190 = v200[16];
LABEL_70:
  v62 = v200[11];
  while (1)
  {
    v193 = v62;
    if (v62 >= 1)
    {
      v63 = v200[5];
      if (v200[5] != v200[6])
      {
        v64 = *v200[5];
        if (v64 == 59 || v64 == 44)
        {
LABEL_75:
          ++v63;
LABEL_76:
          while (1)
          {
            v200[5] = v63;
            if (v63 == v200[6])
            {
              break;
            }

            v65 = *v63;
            if (v65 > 0x23)
            {
              break;
            }

            if (((1 << v65) & v2) != 0)
            {
              goto LABEL_75;
            }

            if (v65 != 35)
            {
              break;
            }

            ++v63;
            while (v63 != v200[6])
            {
              v67 = *v63++;
              v66 = v67;
              if (v67 == 10 || v66 == 13)
              {
                goto LABEL_76;
              }
            }

            v63 = v200[6];
          }
        }
      }
    }

    if (!v61)
    {
      __break(1u);
      return;
    }

    *&v197[0] = v61;
    *(&v197[0] + 1) = v192;
    *&v197[1] = v191;
    *(&v197[1] + 1) = v190;
    v68 = v200[18];
    v201 = v200[17];
    v69 = LOBYTE(v200[12]);
    v70 = BYTE1(v200[12]);

    v71 = sub_1AC5073AC(v197, v201, v68, v69 | (v70 << 8));
    if (v3)
    {

      goto LABEL_234;
    }

    v73 = v71;
    v74 = v72;
    v8 = v4;
    v4 = 0;
    v2 = *&v197[0];
    v3 = *&v197[1];

    if (v74)
    {
      v3 = 0;
      v4 = v8;
      v8 = v197;
      v6 = v183;
      goto LABEL_216;
    }

    v62 = v193 + 1;
    v2 = 0x100002600;
    if (__OFADD__(v193, 1))
    {
      break;
    }

    v200[11] = v193 + 1;
    if (v73 == 2)
    {
      v193 = sub_1AC474398();
      v82 = v81;
      v83 = v200[5];
      v84 = v200[6];
      v4 = v8;
      v8 = v197;
      if (v200[5] != v200[6])
      {
        do
        {
          OUTLINED_FUNCTION_17();
          if (!v27 & v47)
          {
            break;
          }

          OUTLINED_FUNCTION_53_4();
          if (v27)
          {
            if (v85 != 35)
            {
              break;
            }

            v86 = v83 + 1;
            while (v86 != v84)
            {
              OUTLINED_FUNCTION_1_0();
              if (v27)
              {
                goto LABEL_123;
              }
            }

            v86 = v84;
          }

          else
          {
            v86 = v83 + 1;
          }

LABEL_123:
          OUTLINED_FUNCTION_35_5(v86);
        }

        while (!v27);
      }

      if (v83 != v84)
      {
        OUTLINED_FUNCTION_57_3();
        if (v27)
        {
LABEL_136:
          v88 = v87 + 1;
LABEL_137:
          while (1)
          {
            OUTLINED_FUNCTION_35_5(v88);
            if (v27)
            {
              break;
            }

            OUTLINED_FUNCTION_17();
            if (!v27 & v47)
            {
              break;
            }

            OUTLINED_FUNCTION_53_4();
            if (!v27)
            {
              goto LABEL_136;
            }

            if (v89 != 35)
            {
              break;
            }

            v88 = v87 + 1;
            while (v88 != v84)
            {
              OUTLINED_FUNCTION_1_0();
              if (v27)
              {
                goto LABEL_137;
              }
            }

            v88 = v84;
          }

          sub_1AC509980();
          OUTLINED_FUNCTION_36_5();
          if (!v27)
          {
            v2 = *v102;
            if (v2 == 34 || v2 == 39)
            {
              OUTLINED_FUNCTION_48_5(v102);
              LOBYTE(v195) = 0;
              sub_1AC509AA4(v2, &v195);
              v3 = 0;
              v104 = v103;
              v175 = v82;
              if (v195)
              {
                *&v197[0] = MEMORY[0x1AC5B40A0](v103);
                *(&v197[0] + 1) = v105;
                sub_1AC476FE4(v197, v200, v2);
              }

              else
              {
                v106 = v200[5];
                *&v197[0] = MEMORY[0x1AC5B4090](v200[5], v103);
                *(&v197[0] + 1) = v107;
                if (__OFADD__(v104, 1))
                {
                  goto LABEL_249;
                }

                v200[5] = v106 + v104 + 1;
              }

              OUTLINED_FUNCTION_42_4();
              sub_1AC509980();
              OUTLINED_FUNCTION_36_5();
              for (; !v27; v2 = 0x100002600)
              {
                v109 = *v108;
                if (v109 != 39 && v109 != 34)
                {
                  break;
                }

                OUTLINED_FUNCTION_48_5(v108);
                v194[0] = 0;
                sub_1AC509AA4(v109, v194);
                v111 = v110;
                v3 = v110 << 32;
                if (v194[0])
                {
                  if (v110)
                  {
                    if (v110 <= 14)
                    {
                      if (v110 < 0)
                      {
                        goto LABEL_248;
                      }

                      v3 = 0;
                      v114 = v176 & 0xF00000000000000 | (v110 << 48);
                      v176 = v114;
                    }

                    else
                    {
                      sub_1AC51EBB8();
                      swift_allocObject();
                      v112 = sub_1AC51EB88();
                      v113 = v112;
                      if (v111 >= 0x7FFFFFFF)
                      {
                        sub_1AC51EC18();
                        v3 = swift_allocObject();
                        *(v3 + 16) = 0;
                        *(v3 + 24) = v111;
                        v114 = v113 | 0x8000000000000000;
                      }

                      else
                      {
                        v114 = v112 | 0x4000000000000000;
                      }
                    }
                  }

                  else
                  {
                    v3 = 0;
                    v114 = 0xC000000000000000;
                  }

                  v198 = v3;
                  v199 = v114;
                  sub_1AC476FE4(&v198, v200, v109);
                  v3 = 0;
                  v120 = v198;
                  v121 = v199;
                  sub_1AC51EC98();
                  sub_1AC4513F8(v120, v121);
                }

                else
                {
                  v115 = v200[5];
                  if (v110)
                  {
                    if (v110 <= 14)
                    {
                      v3 = sub_1AC51EBD8();
                      v118 = v177 & 0xF00000000000000 | v119 & 0xFFFFFFFFFFFFFFLL;
                      v177 = v118;
                    }

                    else
                    {
                      sub_1AC51EBB8();
                      swift_allocObject();
                      v116 = sub_1AC51EB68();
                      v117 = v116;
                      if (v111 >= 0x7FFFFFFF)
                      {
                        sub_1AC51EC18();
                        v3 = swift_allocObject();
                        *(v3 + 16) = 0;
                        *(v3 + 24) = v111;
                        v118 = v117 | 0x8000000000000000;
                      }

                      else
                      {
                        v118 = v116 | 0x4000000000000000;
                      }
                    }
                  }

                  else
                  {
                    v3 = 0;
                    v118 = 0xC000000000000000;
                  }

                  sub_1AC51EC98();
                  sub_1AC4513F8(v3, v118);
                  if (__OFADD__(v111, 1))
                  {
                    goto LABEL_247;
                  }

                  v200[5] = v115 + v111 + 1;
                  v3 = 0;
                }

                sub_1AC509980();
                OUTLINED_FUNCTION_36_5();
              }

              sub_1AC4513F8(v193, v175);
              sub_1AC474608(*&v197[0], *(&v197[0] + 1));
              goto LABEL_192;
            }
          }
        }
      }

      v164 = sub_1AC477954();
      v165 = OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v164);
      OUTLINED_FUNCTION_23_12(v165, v166, v167, v168);
      sub_1AC474608(v193, v82);
LABEL_234:
      v155 = OUTLINED_FUNCTION_15_1();
      sub_1AC4513F8(v155, v156);
LABEL_235:

      goto LABEL_236;
    }

    v3 = 0;
    v4 = v8;
    v61 = v189;
    if (v73 == 1)
    {
      swift_beginAccess();
      v75 = v200[5];
      v76 = v200[6];
      while (v75 != v76)
      {
        OUTLINED_FUNCTION_17();
        if (!v27 & v47)
        {
          break;
        }

        if (((1 << v77) & 0x100002600) != 0)
        {
          ++v75;
        }

        else
        {
          if (v77 != 35)
          {
            break;
          }

          ++v75;
          while (v75 != v76)
          {
            OUTLINED_FUNCTION_1_0();
            if (v27)
            {
              goto LABEL_97;
            }
          }

          v75 = v76;
        }

LABEL_97:
        v200[5] = v75;
      }

      if (v75 == v76 || (OUTLINED_FUNCTION_57_3(), !v27))
      {
LABEL_233:
        v150 = sub_1AC477954();
        v151 = OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v150);
        OUTLINED_FUNCTION_23_12(v151, v152, v153, v154);
        swift_endAccess();
        goto LABEL_234;
      }

LABEL_108:
      v79 = v78 + 1;
LABEL_109:
      while (1)
      {
        OUTLINED_FUNCTION_35_5(v79);
        if (v27)
        {
          break;
        }

        OUTLINED_FUNCTION_17();
        if (!v27 & v47)
        {
          break;
        }

        if (((1 << v80) & 0x100002600) != 0)
        {
          goto LABEL_108;
        }

        if (v80 != 35)
        {
          break;
        }

        v79 = v78 + 1;
        while (v79 != v76)
        {
          OUTLINED_FUNCTION_1_0();
          if (v27)
          {
            goto LABEL_109;
          }
        }

        v79 = v76;
      }

      sub_1AC509980();
      OUTLINED_FUNCTION_36_5();
      if (v27)
      {
        goto LABEL_233;
      }

      v91 = *v90;
      if (v91 != 34 && v91 != 39)
      {
        goto LABEL_233;
      }

      OUTLINED_FUNCTION_48_5(v90);
      v93 = sub_1AC50A11C(v92);
      if (!v94)
      {
        goto LABEL_233;
      }

      v198 = v93;
      v199 = v94;
      OUTLINED_FUNCTION_36_5();
      if (!v27)
      {
        while (1)
        {
          v97 = *v96;
          if (v97 != 39 && v97 != 34)
          {
LABEL_158:
            v95 = v199;
            goto LABEL_159;
          }

          OUTLINED_FUNCTION_48_5(v96);
          v99 = sub_1AC50A11C(v98);
          if (!v100)
          {
            break;
          }

          MEMORY[0x1AC5B4340](v99);

          OUTLINED_FUNCTION_36_5();
          if (v27)
          {
            goto LABEL_158;
          }
        }

        goto LABEL_233;
      }

LABEL_159:
      v101 = v187;
      *(v187 + 16) = v198;
      *(v101 + 24) = v95;
      swift_endAccess();

LABEL_192:
      v61 = v189;
      goto LABEL_70;
    }
  }

  __break(1u);
LABEL_246:
  __break(1u);
LABEL_247:
  __break(1u);
LABEL_248:
  __break(1u);
LABEL_249:
  __break(1u);
LABEL_250:
  OUTLINED_FUNCTION_18_10();
  swift_once();
LABEL_228:
  *&v197[1] = qword_1ED6E4C40;

  sub_1AC4D345C(v200);
  if (v3)
  {
    sub_1AC4513F8(*&v197[0], *(&v197[0] + 1));
    goto LABEL_235;
  }

  v162 = v197[0];
  v163 = *&v197[1];
  v8[10] = v197[0];
  *(v8 + 22) = v163;
  sub_1AC4578F4(v162, *(&v162 + 1));

  OUTLINED_FUNCTION_46_5(v185, &v198);
  sub_1AC51F108();
  sub_1AC51F0D8();
  sub_1AC4513F8(*&v197[0], *(&v197[0] + 1));

LABEL_240:
  sub_1AC477AFC(v200, v4);
LABEL_236:
  sub_1AC477AA8(v200);
LABEL_237:
  OUTLINED_FUNCTION_61();
}

uint64_t sub_1AC4FDC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v115 = a1;
  v116 = *(a5 + 8);
  v111 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v114 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v110 = &v102 - v10;
  v11 = *(a4 + 8);
  v124 = a2;
  v125 = v11;
  v12 = swift_getAssociatedTypeWitness();
  v113 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v102 - v16;
  v18 = sub_1AC51F228();
  v119 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v112 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v102 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v102 - v24;
  v26 = sub_1AC51F228();
  v27 = *(v26 - 8);
  v117 = v26;
  v118 = v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v126 = &v102 - v31;
  __swift_storeEnumTagSinglePayload(&v102 - v31, 1, 1, v12);
  v120 = v25;
  __swift_storeEnumTagSinglePayload(v25, 1, 1, AssociatedTypeWitness);
  v32 = v127;
  sub_1AC507264();
  if (v32)
  {
    v34 = v117;
    v35 = v118;
    v36 = v119;
    j = v120;
    goto LABEL_131;
  }

  v121 = v33;
  v105 = v30;
  v103 = v23;
  v104 = v15;
  v106 = v17;
  v107 = v12;
  v123 = *(v6 + 73);
  v38 = v115;
  v108 = v116 + 32;
  v109 = v18;
  v122 = v125 + 32;
  v39 = *(v6 + 40);
  v40 = *(v6 + 48);
  v42 = v113;
  v41 = v114;
  v43 = v112;
  v44 = AssociatedTypeWitness;
  while (v39 == v40 || *v39 != v121)
  {
    v45 = v43;
    v46 = v42;
    v47 = v41;
    v48 = v44;
    v49 = v38;
    v50 = sub_1AC5081B8(v123);
    v52 = v51;
    if (!v51)
    {
      goto LABEL_128;
    }

    v53 = v50;
    v127 = 0;
    v54 = v50 == 7955819 && v51 == 0xE300000000000000;
    if (v54 || (sub_1AC51F3D8() & 1) != 0 || (v53 == 49 ? (v55 = v52 == 0xE100000000000000) : (v55 = 0), v55 || (sub_1AC51F3D8() & 1) != 0))
    {

      v56 = v127;
      (*(v125 + 32))(v126, v6, &type metadata for TextFormatDecoder, &off_1F211BCA0);
    }

    else
    {
      if (v53 != 0x65756C6176 || v52 != 0xE500000000000000)
      {
        v62 = sub_1AC51F3D8();
        v63 = v53 == 50 && v52 == 0xE100000000000000;
        v64 = v63;
        if ((v62 & 1) == 0 && !v64 && (sub_1AC51F3D8() & 1) == 0)
        {
          if (v123 && (sub_1AC51EFA8() & 1) != 0)
          {

            v65 = *(v6 + 40);
            v66 = v49;
            v67 = v48;
            v41 = v47;
            v42 = v46;
            v43 = v45;
            for (i = v127; v65 != v40; *(v6 + 40) = v65)
            {
              v69 = *v65;
              if (v69 > 0x23)
              {
                break;
              }

              if (((1 << v69) & 0x100002600) != 0)
              {
                ++v65;
              }

              else
              {
                if (v69 != 35)
                {
                  break;
                }

                ++v65;
                while (v65 != v40)
                {
                  v71 = *v65++;
                  v70 = v71;
                  if (v71 == 10 || v70 == 13)
                  {
                    goto LABEL_54;
                  }
                }

                v65 = v40;
              }

LABEL_54:
              ;
            }

            if (v65 != v40 && *v65 == 58)
            {
LABEL_104:
              ++v65;
LABEL_105:
              while (1)
              {
                *(v6 + 40) = v65;
                if (v65 == v40)
                {
                  break;
                }

                v83 = *v65;
                if (v83 > 0x23)
                {
                  break;
                }

                if (((1 << v83) & 0x100002600) != 0)
                {
                  goto LABEL_104;
                }

                if (v83 != 35)
                {
                  break;
                }

                ++v65;
                while (v65 != v40)
                {
                  v85 = *v65++;
                  v84 = v85;
                  if (v85 == 10 || v84 == 13)
                  {
                    goto LABEL_105;
                  }
                }

                v65 = v40;
              }

              if (v65 == v40)
              {
LABEL_128:
                sub_1AC477954();
                swift_allocError();
                *v90 = 0;
LABEL_129:
                swift_willThrow();
LABEL_130:
                v18 = v109;
                v35 = v118;
                v36 = v119;
                v34 = v117;
                j = v120;
                goto LABEL_131;
              }

LABEL_124:
              v87 = v67;
              v88 = v66;
              v89 = *v65;
              if (v89 != 123 && v89 != 60)
              {
                sub_1AC50A674(1);
                if (i)
                {
                  goto LABEL_130;
                }

                goto LABEL_120;
              }

LABEL_119:
              sub_1AC50A8AC();
              if (i)
              {
                goto LABEL_130;
              }

LABEL_120:
              v38 = v88;
              v44 = v87;
              goto LABEL_20;
            }
          }

          else
          {
            if (*(v6 + 72) != 1)
            {

LABEL_142:
              sub_1AC477954();
              swift_allocError();
              *v100 = 7;
              goto LABEL_129;
            }

            v73 = sub_1AC51EFA8();

            if (v73)
            {
              goto LABEL_142;
            }

            v74 = *(v6 + 40);
            v66 = v49;
            v67 = v48;
            v41 = v47;
            v42 = v46;
            v43 = v45;
            for (i = v127; v74 != v40; *(v6 + 40) = v74)
            {
              v75 = *v74;
              if (v75 > 0x23)
              {
                break;
              }

              if (((1 << v75) & 0x100002600) != 0)
              {
                ++v74;
              }

              else
              {
                if (v75 != 35)
                {
                  break;
                }

                ++v74;
                while (v74 != v40)
                {
                  v77 = *v74++;
                  v76 = v77;
                  if (v77 == 10 || v76 == 13)
                  {
                    goto LABEL_72;
                  }
                }

                v74 = v40;
              }

LABEL_72:
              ;
            }

            if (v74 != v40 && *v74 == 58)
            {
              v65 = v74 + 1;
              *(v6 + 40) = v65;
              for (j = v120; v65 != v40; *(v6 + 40) = v65)
              {
                v79 = *v65;
                if (v79 > 0x23)
                {
                  break;
                }

                if (((1 << v79) & 0x100002600) != 0)
                {
                  ++v65;
                }

                else
                {
                  if (v79 != 35)
                  {
                    break;
                  }

                  ++v65;
                  while (v65 != v40)
                  {
                    v81 = *v65++;
                    v80 = v81;
                    if (v81 == 10 || v80 == 13)
                    {
                      goto LABEL_90;
                    }
                  }

                  v65 = v40;
                }

LABEL_90:
                ;
              }

              if (v65 == v40)
              {
                sub_1AC477954();
                swift_allocError();
                *v101 = 0;
                swift_willThrow();
                v18 = v109;
                v35 = v118;
                v36 = v119;
                v34 = v117;
                goto LABEL_131;
              }

              goto LABEL_124;
            }
          }

          v87 = v67;
          v88 = v66;
          goto LABEL_119;
        }
      }

      v56 = v127;
      (*(v116 + 32))(v120, v6, &type metadata for TextFormatDecoder, &off_1F211BCA0);
    }

    if (v56)
    {
      goto LABEL_130;
    }

    v38 = v49;
    v44 = v48;
    v41 = v47;
    v42 = v46;
    v43 = v45;
LABEL_20:
    v39 = *(v6 + 40);
    v40 = *(v6 + 48);
    if (v39 != v40)
    {
      v57 = *v39;
      if (v57 == 59 || v57 == 44)
      {
LABEL_23:
        ++v39;
LABEL_24:
        while (1)
        {
          *(v6 + 40) = v39;
          if (v39 == v40)
          {
            break;
          }

          v58 = *v39;
          if (v58 > 0x23)
          {
            break;
          }

          if (((1 << v58) & 0x100002600) != 0)
          {
            goto LABEL_23;
          }

          if (v58 != 35)
          {
            break;
          }

          ++v39;
          while (v39 != v40)
          {
            v60 = *v39++;
            v59 = v60;
            if (v60 == 10 || v59 == 13)
            {
              goto LABEL_24;
            }
          }

          v39 = v40;
        }
      }
    }
  }

  v127 = v44;
  *(v6 + 40) = v39 + 1;
  sub_1AC509980();
  v92 = *(v6 + 80);
  v93 = __OFADD__(v92, 1);
  v94 = v92 + 1;
  v35 = v118;
  if (v93)
  {
    __break(1u);
    goto LABEL_144;
  }

  *(v6 + 80) = v94;
  v18 = v109;
  j = v120;
  v95 = v105;
  if (*(v6 + 64) < v94)
  {
LABEL_144:
    result = sub_1AC51F388();
    __break(1u);
    return result;
  }

  v34 = v117;
  (*(v35 + 16))(v105, v126, v117);
  if (__swift_getEnumTagSinglePayload(v95, 1, v107) == 1)
  {
    (*(v35 + 8))(v95, v34);
    v36 = v119;
    goto LABEL_139;
  }

  (*(v42 + 32))(v106, v95, v107);
  v96 = v103;
  (*(v119 + 16))(v103, j, v18);
  v97 = v127;
  if (__swift_getEnumTagSinglePayload(v96, 1, v127) == 1)
  {
    (*(v42 + 8))(v106, v107);
    v36 = v119;
    v18 = v109;
    (*(v119 + 8))(v96, v109);
LABEL_139:
    sub_1AC477954();
    swift_allocError();
    *v98 = 0;
    swift_willThrow();
LABEL_131:
    (*(v36 + 8))(j, v18);
  }

  else
  {
    (*(v41 + 32))(v110, v96, v97);
    v99 = v107;
    (*(v42 + 16))(v104, v106, v107);
    (*(v41 + 16))(v43, v110, v97);
    __swift_storeEnumTagSinglePayload(v43, 0, 1, v97);
    swift_getAssociatedConformanceWitness();
    sub_1AC51ED88();
    sub_1AC51EDA8();
    (*(v41 + 8))(v110, v97);
    (*(v42 + 8))(v106, v99);
    (*(v119 + 8))(j, v109);
  }

  return (*(v35 + 8))(v126, v34);
}

uint64_t sub_1AC4FE8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v102 = a5;
  v8 = *(a3 - 8);
  v96 = a1;
  v97 = v8;
  MEMORY[0x1EEE9AC00](a1);
  v99 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = *(v10 + 8);
  v111 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v101 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v98 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v100 = &v89 - v15;
  v16 = sub_1AC51F228();
  v106 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v89 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v89 - v23;
  v25 = sub_1AC51F228();
  v105 = *(v25 - 8);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v112 = &v89 - v29;
  v104 = AssociatedTypeWitness;
  __swift_storeEnumTagSinglePayload(&v89 - v29, 1, 1, AssociatedTypeWitness);
  v107 = v24;
  __swift_storeEnumTagSinglePayload(v24, 1, 1, a3);
  v30 = v110;
  sub_1AC507264();
  if (v30)
  {
    v32 = v107;
    v33 = v16;
    v35 = v105;
    v34 = v106;
    goto LABEL_121;
  }

  v108 = v31;
  v91 = v28;
  v92 = v22;
  v90 = v19;
  v93 = a3;
  v94 = v16;
  v95 = v25;
  LODWORD(v110) = *(v6 + 73);
  v36 = v104;
  v37 = v103;
  v109 = v103 + 32;
  v38 = *(v6 + 40);
  v39 = *(v6 + 48);
  while (v38 == v39 || *v38 != v108)
  {
    v40 = sub_1AC5081B8(v110);
    v42 = v41;
    if (!v41)
    {
      goto LABEL_119;
    }

    v43 = v40;
    v44 = v40 == 7955819 && v41 == 0xE300000000000000;
    if (v44 || (sub_1AC51F3D8() & 1) != 0 || (v43 == 49 ? (v45 = v42 == 0xE100000000000000) : (v45 = 0), v45 || (sub_1AC51F3D8() & 1) != 0))
    {

      (*(v37 + 32))(v112, v6, &type metadata for TextFormatDecoder, &off_1F211BCA0);
      goto LABEL_18;
    }

    v50 = v43 == 0x65756C6176 && v42 == 0xE500000000000000;
    if (v50 || ((v51 = sub_1AC51F3D8(), v43 == 50) ? (v52 = v42 == 0xE100000000000000) : (v52 = 0), !v52 ? (v53 = 0) : (v53 = 1), (v51 & 1) != 0 || (v53 & 1) != 0 || (sub_1AC51F3D8() & 1) != 0))
    {

      sub_1AC4FC030(v107, v93);
      goto LABEL_18;
    }

    if (v110 && (sub_1AC51EFA8() & 1) != 0)
    {

      for (i = *(v6 + 40); i != v39; *(v6 + 40) = i)
      {
        v55 = *i;
        if (v55 > 0x23)
        {
          break;
        }

        if (((1 << v55) & 0x100002600) != 0)
        {
          ++i;
        }

        else
        {
          if (v55 != 35)
          {
            break;
          }

          ++i;
          while (i != v39)
          {
            v57 = *i++;
            v56 = v57;
            if (v57 == 10 || v56 == 13)
            {
              goto LABEL_53;
            }
          }

          i = v39;
        }

LABEL_53:
        ;
      }

      if (i == v39 || *i != 58)
      {
        goto LABEL_117;
      }

LABEL_100:
      ++i;
LABEL_101:
      while (1)
      {
        *(v6 + 40) = i;
        if (i == v39)
        {
          break;
        }

        v68 = *i;
        if (v68 > 0x23)
        {
          break;
        }

        if (((1 << v68) & 0x100002600) != 0)
        {
          goto LABEL_100;
        }

        if (v68 != 35)
        {
          break;
        }

        ++i;
        while (i != v39)
        {
          v70 = *i++;
          v69 = v70;
          if (v70 == 10 || v69 == 13)
          {
            goto LABEL_101;
          }
        }

        i = v39;
      }
    }

    else
    {
      if (*(v6 + 72) != 1)
      {

LABEL_131:
        sub_1AC477954();
        swift_allocError();
        *v88 = 7;
LABEL_120:
        swift_willThrow();
        v33 = v94;
        v25 = v95;
        v35 = v105;
        v34 = v106;
        v32 = v107;
        goto LABEL_121;
      }

      v59 = sub_1AC51EFA8();

      if (v59)
      {
        goto LABEL_131;
      }

      for (i = *(v6 + 40); i != v39; *(v6 + 40) = i)
      {
        v60 = *i;
        if (v60 > 0x23)
        {
          break;
        }

        if (((1 << v60) & 0x100002600) != 0)
        {
          ++i;
        }

        else
        {
          if (v60 != 35)
          {
            break;
          }

          ++i;
          while (i != v39)
          {
            v62 = *i++;
            v61 = v62;
            if (v62 == 10 || v61 == 13)
            {
              goto LABEL_71;
            }
          }

          i = v39;
        }

LABEL_71:
        ;
      }

      if (i == v39 || *i != 58)
      {
LABEL_117:
        sub_1AC50A8AC();
        goto LABEL_18;
      }

LABEL_84:
      ++i;
LABEL_85:
      while (1)
      {
        *(v6 + 40) = i;
        if (i == v39)
        {
          break;
        }

        v64 = *i;
        if (v64 > 0x23)
        {
          break;
        }

        if (((1 << v64) & 0x100002600) != 0)
        {
          goto LABEL_84;
        }

        if (v64 != 35)
        {
          break;
        }

        ++i;
        while (i != v39)
        {
          v66 = *i++;
          v65 = v66;
          if (v66 == 10 || v65 == 13)
          {
            goto LABEL_85;
          }
        }

        i = v39;
      }
    }

    if (i == v39)
    {
LABEL_119:
      sub_1AC477954();
      swift_allocError();
      *v73 = 0;
      goto LABEL_120;
    }

    v72 = *i;
    if (v72 == 123 || v72 == 60)
    {
      goto LABEL_117;
    }

    sub_1AC50A674(1);
LABEL_18:
    v38 = *(v6 + 40);
    v39 = *(v6 + 48);
    if (v38 != v39)
    {
      v46 = *v38;
      if (v46 == 59 || v46 == 44)
      {
LABEL_21:
        ++v38;
LABEL_22:
        while (1)
        {
          *(v6 + 40) = v38;
          if (v38 == v39)
          {
            break;
          }

          v47 = *v38;
          if (v47 > 0x23)
          {
            break;
          }

          if (((1 << v47) & 0x100002600) != 0)
          {
            goto LABEL_21;
          }

          if (v47 != 35)
          {
            break;
          }

          ++v38;
          while (v38 != v39)
          {
            v49 = *v38++;
            v48 = v49;
            if (v49 == 10 || v48 == 13)
            {
              goto LABEL_22;
            }
          }

          v38 = v39;
        }
      }
    }
  }

  v75 = v36;
  *(v6 + 40) = v38 + 1;
  sub_1AC509980();
  v76 = *(v6 + 80);
  v77 = __OFADD__(v76, 1);
  v78 = v76 + 1;
  v79 = v95;
  if (v77)
  {
    __break(1u);
    goto LABEL_133;
  }

  *(v6 + 80) = v78;
  v80 = v106;
  v32 = v107;
  v82 = v91;
  v81 = v92;
  if (*(v6 + 64) < v78)
  {
LABEL_133:
    result = sub_1AC51F388();
    __break(1u);
    return result;
  }

  v35 = v105;
  (*(v105 + 16))(v91, v112, v79);
  if (__swift_getEnumTagSinglePayload(v82, 1, v75) == 1)
  {
    (*(v35 + 8))(v82, v79);
    v33 = v94;
    v34 = v80;
    v25 = v79;
    goto LABEL_128;
  }

  (*(v101 + 32))(v100, v82, v75);
  v33 = v94;
  (*(v80 + 16))(v81, v32, v94);
  v83 = v93;
  if (__swift_getEnumTagSinglePayload(v81, 1, v93) == 1)
  {
    (*(v101 + 8))(v100, v75);
    v84 = v106;
    (*(v106 + 8))(v81, v33);
    v34 = v84;
    v25 = v95;
LABEL_128:
    sub_1AC477954();
    swift_allocError();
    *v85 = 0;
    swift_willThrow();
LABEL_121:
    (*(v34 + 8))(v32, v33);
    return (*(v35 + 8))(v112, v25);
  }

  else
  {
    v86 = v97;
    (*(v97 + 32))(v99, v81, v83);
    (*(v101 + 16))(v98, v100, v75);
    v87 = v90;
    (*(v86 + 16))(v90, v99, v83);
    __swift_storeEnumTagSinglePayload(v87, 0, 1, v83);
    swift_getAssociatedConformanceWitness();
    sub_1AC51ED88();
    sub_1AC51EDA8();
    (*(v86 + 8))(v99, v83);
    (*(v101 + 8))(v100, v75);
    (*(v106 + 8))(v32, v33);
    return (*(v35 + 8))(v112, v95);
  }
}

void sub_1AC4FF40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  OUTLINED_FUNCTION_27_6();
  if (!v11)
  {
    OUTLINED_FUNCTION_57_3();
    if (v11)
    {
      OUTLINED_FUNCTION_11_14(v10);
      sub_1AC509980();
      v10 = *(v6 + 40);
    }
  }

  if (v10 == v8 || *v10 != 91)
  {
    v14 = OUTLINED_FUNCTION_5_24();
    a6(v14);
  }

  else
  {
    OUTLINED_FUNCTION_11_14(v10);
    sub_1AC509980();
    v12 = *(v6 + 40);
    if (v12 == v8 || *v12 != 93)
    {
      while (1)
      {
        v13 = OUTLINED_FUNCTION_5_24();
        a6(v13);
        if (v7 || (sub_1AC507970() & 1) != 0)
        {
          break;
        }

        sub_1AC50AB78(0x2Cu);
      }
    }

    else
    {
      OUTLINED_FUNCTION_11_14(v12);
      sub_1AC509980();
    }
  }
}

uint64_t sub_1AC4FF4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v102 = a5;
  v8 = *(a3 - 8);
  v96 = a1;
  v97 = v8;
  MEMORY[0x1EEE9AC00](a1);
  v99 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = *(v10 + 8);
  v111 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v101 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v98 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v100 = &v89 - v15;
  v16 = sub_1AC51F228();
  v106 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v89 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v89 - v23;
  v25 = sub_1AC51F228();
  v105 = *(v25 - 8);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v112 = &v89 - v29;
  v104 = AssociatedTypeWitness;
  __swift_storeEnumTagSinglePayload(&v89 - v29, 1, 1, AssociatedTypeWitness);
  v107 = v24;
  __swift_storeEnumTagSinglePayload(v24, 1, 1, a3);
  v30 = v110;
  sub_1AC507264();
  if (v30)
  {
    v32 = v107;
    v33 = v16;
    v35 = v105;
    v34 = v106;
    goto LABEL_121;
  }

  v108 = v31;
  v91 = v28;
  v92 = v22;
  v90 = v19;
  v93 = a3;
  v94 = v16;
  v95 = v25;
  LODWORD(v110) = *(v6 + 73);
  v36 = v104;
  v37 = v103;
  v109 = v103 + 32;
  v38 = *(v6 + 40);
  v39 = *(v6 + 48);
  while (v38 == v39 || *v38 != v108)
  {
    v40 = sub_1AC5081B8(v110);
    v42 = v41;
    if (!v41)
    {
      goto LABEL_119;
    }

    v43 = v40;
    v44 = v40 == 7955819 && v41 == 0xE300000000000000;
    if (v44 || (sub_1AC51F3D8() & 1) != 0 || (v43 == 49 ? (v45 = v42 == 0xE100000000000000) : (v45 = 0), v45 || (sub_1AC51F3D8() & 1) != 0))
    {

      (*(v37 + 32))(v112, v6, &type metadata for TextFormatDecoder, &off_1F211BCA0);
      goto LABEL_18;
    }

    v50 = v43 == 0x65756C6176 && v42 == 0xE500000000000000;
    if (v50 || ((v51 = sub_1AC51F3D8(), v43 == 50) ? (v52 = v42 == 0xE100000000000000) : (v52 = 0), !v52 ? (v53 = 0) : (v53 = 1), (v51 & 1) != 0 || (v53 & 1) != 0 || (sub_1AC51F3D8() & 1) != 0))
    {

      sub_1AC4FC558();
      goto LABEL_18;
    }

    if (v110 && (sub_1AC51EFA8() & 1) != 0)
    {

      for (i = *(v6 + 40); i != v39; *(v6 + 40) = i)
      {
        v55 = *i;
        if (v55 > 0x23)
        {
          break;
        }

        if (((1 << v55) & 0x100002600) != 0)
        {
          ++i;
        }

        else
        {
          if (v55 != 35)
          {
            break;
          }

          ++i;
          while (i != v39)
          {
            v57 = *i++;
            v56 = v57;
            if (v57 == 10 || v56 == 13)
            {
              goto LABEL_53;
            }
          }

          i = v39;
        }

LABEL_53:
        ;
      }

      if (i == v39 || *i != 58)
      {
        goto LABEL_117;
      }

LABEL_100:
      ++i;
LABEL_101:
      while (1)
      {
        *(v6 + 40) = i;
        if (i == v39)
        {
          break;
        }

        v68 = *i;
        if (v68 > 0x23)
        {
          break;
        }

        if (((1 << v68) & 0x100002600) != 0)
        {
          goto LABEL_100;
        }

        if (v68 != 35)
        {
          break;
        }

        ++i;
        while (i != v39)
        {
          v70 = *i++;
          v69 = v70;
          if (v70 == 10 || v69 == 13)
          {
            goto LABEL_101;
          }
        }

        i = v39;
      }
    }

    else
    {
      if (*(v6 + 72) != 1)
      {

LABEL_131:
        sub_1AC477954();
        swift_allocError();
        *v88 = 7;
LABEL_120:
        swift_willThrow();
        v33 = v94;
        v25 = v95;
        v35 = v105;
        v34 = v106;
        v32 = v107;
        goto LABEL_121;
      }

      v59 = sub_1AC51EFA8();

      if (v59)
      {
        goto LABEL_131;
      }

      for (i = *(v6 + 40); i != v39; *(v6 + 40) = i)
      {
        v60 = *i;
        if (v60 > 0x23)
        {
          break;
        }

        if (((1 << v60) & 0x100002600) != 0)
        {
          ++i;
        }

        else
        {
          if (v60 != 35)
          {
            break;
          }

          ++i;
          while (i != v39)
          {
            v62 = *i++;
            v61 = v62;
            if (v62 == 10 || v61 == 13)
            {
              goto LABEL_71;
            }
          }

          i = v39;
        }

LABEL_71:
        ;
      }

      if (i == v39 || *i != 58)
      {
LABEL_117:
        sub_1AC50A8AC();
        goto LABEL_18;
      }

LABEL_84:
      ++i;
LABEL_85:
      while (1)
      {
        *(v6 + 40) = i;
        if (i == v39)
        {
          break;
        }

        v64 = *i;
        if (v64 > 0x23)
        {
          break;
        }

        if (((1 << v64) & 0x100002600) != 0)
        {
          goto LABEL_84;
        }

        if (v64 != 35)
        {
          break;
        }

        ++i;
        while (i != v39)
        {
          v66 = *i++;
          v65 = v66;
          if (v66 == 10 || v65 == 13)
          {
            goto LABEL_85;
          }
        }

        i = v39;
      }
    }

    if (i == v39)
    {
LABEL_119:
      sub_1AC477954();
      swift_allocError();
      *v73 = 0;
      goto LABEL_120;
    }

    v72 = *i;
    if (v72 == 123 || v72 == 60)
    {
      goto LABEL_117;
    }

    sub_1AC50A674(1);
LABEL_18:
    v38 = *(v6 + 40);
    v39 = *(v6 + 48);
    if (v38 != v39)
    {
      v46 = *v38;
      if (v46 == 59 || v46 == 44)
      {
LABEL_21:
        ++v38;
LABEL_22:
        while (1)
        {
          *(v6 + 40) = v38;
          if (v38 == v39)
          {
            break;
          }

          v47 = *v38;
          if (v47 > 0x23)
          {
            break;
          }

          if (((1 << v47) & 0x100002600) != 0)
          {
            goto LABEL_21;
          }

          if (v47 != 35)
          {
            break;
          }

          ++v38;
          while (v38 != v39)
          {
            v49 = *v38++;
            v48 = v49;
            if (v49 == 10 || v48 == 13)
            {
              goto LABEL_22;
            }
          }

          v38 = v39;
        }
      }
    }
  }

  v75 = v36;
  *(v6 + 40) = v38 + 1;
  sub_1AC509980();
  v76 = *(v6 + 80);
  v77 = __OFADD__(v76, 1);
  v78 = v76 + 1;
  v79 = v95;
  if (v77)
  {
    __break(1u);
    goto LABEL_133;
  }

  *(v6 + 80) = v78;
  v80 = v106;
  v32 = v107;
  v82 = v91;
  v81 = v92;
  if (*(v6 + 64) < v78)
  {
LABEL_133:
    result = sub_1AC51F388();
    __break(1u);
    return result;
  }

  v35 = v105;
  (*(v105 + 16))(v91, v112, v79);
  if (__swift_getEnumTagSinglePayload(v82, 1, v75) == 1)
  {
    (*(v35 + 8))(v82, v79);
    v33 = v94;
    v34 = v80;
    v25 = v79;
    goto LABEL_128;
  }

  (*(v101 + 32))(v100, v82, v75);
  v33 = v94;
  (*(v80 + 16))(v81, v32, v94);
  v83 = v93;
  if (__swift_getEnumTagSinglePayload(v81, 1, v93) == 1)
  {
    (*(v101 + 8))(v100, v75);
    v84 = v106;
    (*(v106 + 8))(v81, v33);
    v34 = v84;
    v25 = v95;
LABEL_128:
    sub_1AC477954();
    swift_allocError();
    *v85 = 0;
    swift_willThrow();
LABEL_121:
    (*(v34 + 8))(v32, v33);
    return (*(v35 + 8))(v112, v25);
  }

  else
  {
    v86 = v97;
    (*(v97 + 32))(v99, v81, v83);
    (*(v101 + 16))(v98, v100, v75);
    v87 = v90;
    (*(v86 + 16))(v90, v99, v83);
    __swift_storeEnumTagSinglePayload(v87, 0, 1, v83);
    swift_getAssociatedConformanceWitness();
    sub_1AC51ED88();
    sub_1AC51EDA8();
    (*(v86 + 8))(v99, v83);
    (*(v101 + 8))(v100, v75);
    (*(v106 + 8))(v32, v33);
    return (*(v35 + 8))(v112, v95);
  }
}

void sub_1AC500018()
{
  OUTLINED_FUNCTION_27_6();
  if (!v4)
  {
    OUTLINED_FUNCTION_57_3();
    if (v4)
    {
      OUTLINED_FUNCTION_11_14(v3);
      sub_1AC509980();
      v3 = *(v0 + 40);
    }
  }

  if (v3 == v2 || *v3 != 91)
  {
    v11 = OUTLINED_FUNCTION_5_24();
    sub_1AC4FF4F4(v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_11_14(v3);
    sub_1AC509980();
    v5 = *(v0 + 40);
    if (v5 == v2 || *v5 != 93)
    {
      while (1)
      {
        v6 = OUTLINED_FUNCTION_5_24();
        sub_1AC4FF4F4(v6, v7, v8, v9, v10);
        if (v1 || (sub_1AC507970() & 1) != 0)
        {
          break;
        }

        sub_1AC50AB78(0x2Cu);
      }
    }

    else
    {
      OUTLINED_FUNCTION_11_14(v5);
      sub_1AC509980();
    }
  }
}

void sub_1AC500100()
{
  OUTLINED_FUNCTION_60();
  v4 = v0;
  v5 = v0[3];
  if (!v5)
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    goto LABEL_5;
  }

  v6 = v3;
  v7 = v2;
  v8 = v1;
  v9 = v4[4];
  v10 = __swift_project_boxed_opaque_existential_1(v4, v5);
  v11 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12_8();
  v14 = v13 - v12;
  (*(v11 + 16))(v13 - v12);
  (*(v9 + 8))(&v17, v8, v7, v6, v5, v9);
  (*(v11 + 8))(v14, v5);
  if (!*(&v18 + 1))
  {
LABEL_5:
    sub_1AC50071C(&v17, &qword_1EB5581F8, &unk_1AC520DD0);
    goto LABEL_6;
  }

  sub_1AC465B44(&v17, v20);
  v15 = sub_1AC48DCB4(&v17, v6);
  sub_1AC5002CC(v16, v4, v20);
  (v15)(&v17, 0);
  __swift_destroy_boxed_opaque_existential_1(v20);
LABEL_6:
  OUTLINED_FUNCTION_61();
}

void *sub_1AC5002CC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1AC4C9AEC(a1, v16);
  v7 = v17;
  result = sub_1AC50071C(v16, &qword_1EB558200, &unk_1AC520780);
  if (!v7)
  {
    v11 = a3[3];
    v12 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v11);
    result = (*(v12 + 32))(v16, a2, &type metadata for TextFormatDecoder, &off_1F211BCA0, v11, v12);
    if (v3)
    {
      return result;
    }

    sub_1AC4E2B84(v16, a1);
    goto LABEL_7;
  }

  v9 = *(a1 + 24);
  if (!v9)
  {
    __break(1u);
    return result;
  }

  v10 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  result = (*(v10 + 40))(a2, &type metadata for TextFormatDecoder, &off_1F211BCA0, v9, v10);
  if (!v3)
  {
LABEL_7:
    sub_1AC4C9AEC(a1, v16);
    v13 = v17;
    result = sub_1AC50071C(v16, &qword_1EB558200, &unk_1AC520780);
    if (!v13)
    {
      v14 = sub_1AC477954();
      OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v14);
      return OUTLINED_FUNCTION_59(v15, 10);
    }
  }

  return result;
}

uint64_t sub_1AC500668(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_1AC5006A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AC50071C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0();
  (*(v4 + 8))(a1);
  return a1;
}

unsigned __int8 *OUTLINED_FUNCTION_59_2()
{

  return sub_1AC4FBDF0(v0, v2, v1);
}

uint64_t TextFormatDecodingError.hashValue.getter()
{
  v1 = *v0;
  sub_1AC51F468();
  MEMORY[0x1AC5B48A0](v1);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50093C(uint64_t a1)
{
  sub_1AC51F468();
  TextFormatDecodingError.hash(into:)();
  return sub_1AC51F4C8();
}

unint64_t sub_1AC500988()
{
  result = qword_1EB559D10;
  if (!qword_1EB559D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559D10);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TextFormatDecodingError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

InternalSwiftProtobuf::TextFormatDecodingOptions __swiftcall TextFormatDecodingOptions.init()()
{
  *v0 = 100;
  *(v0 + 8) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for TextFormatDecodingOptions(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 10))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TextFormatDecodingOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AC500BF8()
{
  result = sub_1AC51F098();
  *(result + 16) = 2;
  *(result + 32) = 8224;
  qword_1ED6E4140 = result;
  return result;
}

uint64_t sub_1AC500C3C(uint64_t a1)
{
  v1 = sub_1AC51EE28();
  MEMORY[0x1EEE9AC00](v1 - 8);

  sub_1AC51EE18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
  sub_1AC45A8C0();
  v2 = sub_1AC51EE08();
  v4 = v3;

  if (v4)
  {
    return v2;
  }

  __break(1u);
  return result;
}

void sub_1AC500D14(unsigned __int8 *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a1)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_1AC466118(v5);

  sub_1AC45AC98(a1, &a1[a2]);
}

void sub_1AC500D74(uint64_t a1, unint64_t a2)
{

  sub_1AC466118(v6);
  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_7_18(v3 + 1);
  *(v7 + v3 + 32) = 91;
  *v2 = v7;

  sub_1AC45FA3C(a1, a2);
  sub_1AC45A774();
  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_2_15();
  *(v8 + 32) = 93;
  *v2 = v9;
}

void sub_1AC500DF8(unint64_t a1)
{
  if (a1 >= 0x3E8)
  {
    sub_1AC500DF8(a1 / 0x3E8);
  }

  else if (a1 < 0x64)
  {
    if (a1 < 0xA)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_1AC45A774();
  OUTLINED_FUNCTION_12_11();
  OUTLINED_FUNCTION_7_18(v1 + 1);
  OUTLINED_FUNCTION_17_15(v2 + v1);
LABEL_7:
  sub_1AC45A774();
  OUTLINED_FUNCTION_12_11();
  OUTLINED_FUNCTION_7_18(v1 + 1);
  OUTLINED_FUNCTION_17_15(v3 + v1);
LABEL_8:
  sub_1AC45A774();
  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_15_13(v4);
}

char *sub_1AC500EC4()
{
  v1 = *(*(v0 + 8) + 16);
  result = (v1 - 2);
  if (v1 < 2)
  {
    __break(1u);
  }

  else
  {
    sub_1AC506BDC(result, v1);

    sub_1AC466118(v3);

    return sub_1AC45FD18("}\n");
  }

  return result;
}

void sub_1AC500F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AC469654(a2, a3, v6);
  if (v7 == 255)
  {
    v5 = (*(a3 + 40))(a2, a3);
    sub_1AC5010D0(v5);
  }

  else
  {
    sub_1AC45AC98(v6[0], v6[1]);
    sub_1AC501ACC(v6);
  }
}

char *sub_1AC500FBC(float a1)
{
  if ((~LODWORD(a1) & 0x7F800000) != 0)
  {
    v2 = sub_1AC51F1A8();

    return sub_1AC45FA3C(v2, v3);
  }

  else
  {
    if ((LODWORD(a1) & 0x7FFFFF) != 0)
    {
      v1 = "nan";
    }

    else if (a1 >= 0.0)
    {
      v1 = "inf";
    }

    else
    {
      v1 = "-inf";
    }

    return sub_1AC45FD18(v1);
  }
}

char *sub_1AC501044(uint64_t a1, double a2)
{
  if ((~*&a2 & 0x7FF0000000000000) != 0)
  {
    v3 = sub_1AC51F188();

    return sub_1AC45FA3C(v3, v4);
  }

  else
  {
    if ((*&a2 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v2 = "nan";
    }

    else if (a2 >= 0.0)
    {
      v2 = "inf";
    }

    else
    {
      v2 = "-inf";
    }

    return sub_1AC45FD18(v2);
  }
}

void sub_1AC5010D0(unint64_t a1)
{
  v3 = a1;
  if ((a1 & 0x8000000000000000) != 0)
  {
    sub_1AC45A774();
    OUTLINED_FUNCTION_12_11();
    OUTLINED_FUNCTION_7_18(v2 + 1);
    *(v4 + v2 + 32) = 45;
    *v1 = v4;
    v3 = -v3;
  }

  sub_1AC500DF8(v3);
}

void sub_1AC501134(unint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = __OFSUB__(a2, 1);
    v3 = a2 - 1;
    if (v2)
    {
      __break(1u);
    }

    else
    {
      sub_1AC501134(a1 >> 4, v3);
      sub_1AC45A774();
      OUTLINED_FUNCTION_11_10();
      OUTLINED_FUNCTION_2_15();
      OUTLINED_FUNCTION_15_13(v4);
    }
  }

  else
  {

    sub_1AC45FD18("0x");
  }
}

void sub_1AC5011C8(uint64_t a1, unint64_t a2)
{
  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_7_18(v3 + 1);
  OUTLINED_FUNCTION_15_13(v6 + v3);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
LABEL_85:
    sub_1AC45A774();
    OUTLINED_FUNCTION_11_10();
    OUTLINED_FUNCTION_2_15();
    OUTLINED_FUNCTION_15_13(v54);
    return;
  }

  v8 = a2 & 0xFFFFFFFFFFFFFFLL;
  v9 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;

  v10 = 0;
  v56 = a1;
  while (2)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v12 = sub_1AC51F2C8();
      v16 = v15;
      goto LABEL_15;
    }

    if ((a2 & 0x2000000000000000) == 0)
    {
      v11 = v9;
      if ((a1 & 0x1000000000000000) == 0)
      {
        v11 = sub_1AC51F308();
      }

      v12 = *(v11 + v10);
      if (*(v11 + v10) < 0)
      {
        OUTLINED_FUNCTION_12_17();
        switch(v14)
        {
          case 1:
            goto LABEL_48;
          case 2:
            goto LABEL_60;
          case 3:
            goto LABEL_61;
          default:
            break;
        }
      }

LABEL_14:
      v16 = 1;
      goto LABEL_15;
    }

    v58[0] = a1;
    v58[1] = v8;
    v12 = *(v58 + v10);
    if ((*(v58 + v10) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_12_17();
    switch(v26)
    {
      case 1:
LABEL_48:
        v12 = v13[1] & 0x3F | ((v12 & 0x1F) << 6);
        v16 = 2;
        break;
      case 2:
LABEL_60:
        v12 = ((v12 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3F;
        v16 = 3;
        break;
      case 3:
LABEL_61:
        v12 = ((v12 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3F;
        v16 = 4;
        break;
      default:
        goto LABEL_14;
    }

LABEL_15:
    switch(v12)
    {
      case 8u:
        v17 = "\\b";
        goto LABEL_44;
      case 9u:
        v17 = "\\t";
        goto LABEL_44;
      case 0xAu:
        v17 = "\\n";
        goto LABEL_44;
      case 0xBu:
        v17 = "\\v";
        goto LABEL_44;
      case 0xCu:
        v17 = "\\f";
        goto LABEL_44;
      case 0xDu:
        v17 = "\\r";
        goto LABEL_44;
      default:
        if (v12 == 34)
        {
          v17 = "\";
          goto LABEL_44;
        }

        if (v12 == 92)
        {
          v17 = "\\\"";
LABEL_44:
          sub_1AC45FD18(v17);
LABEL_45:
          v10 += v16;
          if (v10 >= v7)
          {

            goto LABEL_85;
          }

          continue;
        }

        v18 = v12 >> 6;
        if (v12 < 0x20 || v12 == 127)
        {
          OUTLINED_FUNCTION_11_15();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_41();
            sub_1AC45A78C();
            v9 = v43;
          }

          OUTLINED_FUNCTION_18_11();
          if (!(!v30 & v29))
          {
            OUTLINED_FUNCTION_43(v27);
            sub_1AC45A78C();
            OUTLINED_FUNCTION_3_29();
          }

          *(v9 + 16) = v18;
          *(v9 + v8 + 32) = 92;
          v31 = v8 + 2;
          if (v28 < (v8 + 2))
          {
            OUTLINED_FUNCTION_57_0(v27);
            OUTLINED_FUNCTION_5_25();
            sub_1AC45A78C();
            OUTLINED_FUNCTION_3_29();
          }

          *(v9 + 16) = v31;
          *(v9 + v18 + 32) = v18 | 0x30;
          v32 = v8 + 3;
          if (v28 < (v8 + 3))
          {
            OUTLINED_FUNCTION_43(v27);
            sub_1AC45A78C();
            OUTLINED_FUNCTION_3_29();
          }

          *(v9 + 16) = v32;
          *(v9 + v31 + 32) = (v12 >> 3) & 7 | 0x30;
          if (v28 < (v8 + 4))
          {
            OUTLINED_FUNCTION_57_0(v27);
            OUTLINED_FUNCTION_5_25();
            sub_1AC45A78C();
            v9 = v44;
          }

          *(v9 + 16) = v8 + 4;
          *(v9 + v32 + 32) = v12 & 7 | 0x30;
          *v2 = v9;
          a1 = v56;
          goto LABEL_84;
        }

        if (v12 <= 0x7F)
        {
          OUTLINED_FUNCTION_11_15();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_41();
            sub_1AC45A78C();
            v9 = v45;
          }

          v35 = *(v9 + 16);
          v34 = *(v9 + 24);
          if (v35 >= v34 >> 1)
          {
            OUTLINED_FUNCTION_43(v34);
            sub_1AC45A78C();
            v9 = v46;
          }

          *(v9 + 16) = v35 + 1;
          *(v9 + v35 + 32) = v12;
LABEL_83:
          *v2 = v9;
LABEL_84:
          v9 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v8 = a2 & 0xFFFFFFFFFFFFFFLL;
          goto LABEL_45;
        }

        v55 = v12 & 0x3F | 0x80;
        if (v12 <= 0x7FF)
        {
          v36 = *v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1AC45A78C();
            v36 = v47;
          }

          v38 = *(v36 + 16);
          v37 = *(v36 + 24);
          v39 = v37 >> 1;
          v40 = v38 + 1;
          if (v37 >> 1 <= v38)
          {
            OUTLINED_FUNCTION_8_14(v37);
            sub_1AC45A78C();
            v36 = v48;
            v37 = *(v48 + 24);
            v39 = v37 >> 1;
          }

          *(v36 + 16) = v40;
          *(v36 + v38 + 32) = v18 | 0xC0;
          if (v39 < (v38 + 2))
          {
            OUTLINED_FUNCTION_57_0(v37);
            sub_1AC45A78C();
            v36 = v49;
          }

          *(v36 + 16) = v38 + 2;
          *(v36 + v40 + 32) = v55;
          *v2 = v36;
          goto LABEL_84;
        }

        v57 = (v12 >> 6) & 0x3F | 0xFFFFFF80;
        if (!HIWORD(v12))
        {
          OUTLINED_FUNCTION_11_15();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_41();
            sub_1AC45A78C();
            v9 = v50;
          }

          OUTLINED_FUNCTION_18_11();
          if (!(!v30 & v29))
          {
            OUTLINED_FUNCTION_43(v41);
            sub_1AC45A78C();
            OUTLINED_FUNCTION_3_29();
          }

          *(v9 + 16) = v18;
          *(v9 + v8 + 32) = (v12 >> 12) | 0xE0;
          v24 = v8 + 2;
          if (v42 < (v8 + 2))
          {
            OUTLINED_FUNCTION_57_0(v41);
            OUTLINED_FUNCTION_5_25();
            sub_1AC45A78C();
            OUTLINED_FUNCTION_3_29();
          }

          *(v9 + 16) = v24;
          *(v9 + v18 + 32) = v57;
          v25 = v8 + 3;
          if (v42 < (v8 + 3))
          {
            OUTLINED_FUNCTION_43(v41);
            sub_1AC45A78C();
            v9 = v51;
          }

          goto LABEL_82;
        }

        if ((((v12 >> 18) + 240) & 0x100) == 0)
        {
          OUTLINED_FUNCTION_11_15();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_41();
            sub_1AC45A78C();
            v9 = v52;
          }

          v20 = *(v9 + 16);
          v19 = *(v9 + 24);
          v21 = v19 >> 1;
          v22 = v20 + 1;
          if (v19 >> 1 <= v20)
          {
            OUTLINED_FUNCTION_57_0(v19);
            OUTLINED_FUNCTION_5_25();
            sub_1AC45A78C();
            OUTLINED_FUNCTION_3_29();
          }

          *(v9 + 16) = v22;
          *(v9 + v20 + 32) = (v12 >> 18) - 16;
          v23 = v20 + 2;
          if (v21 < (v20 + 2))
          {
            OUTLINED_FUNCTION_57_0(v19);
            OUTLINED_FUNCTION_5_25();
            sub_1AC45A78C();
            OUTLINED_FUNCTION_3_29();
          }

          *(v9 + 16) = v23;
          *(v9 + v22 + 32) = (v12 >> 12) & 0x3F | 0x80;
          v24 = v20 + 3;
          if (v21 < (v20 + 3))
          {
            OUTLINED_FUNCTION_57_0(v19);
            OUTLINED_FUNCTION_5_25();
            sub_1AC45A78C();
            OUTLINED_FUNCTION_3_29();
          }

          *(v9 + 16) = v24;
          *(v9 + v23 + 32) = v57;
          v25 = v20 + 4;
          if (v21 < v25)
          {
            OUTLINED_FUNCTION_43(v19);
            sub_1AC45A78C();
            v9 = v53;
          }

          a1 = v56;
LABEL_82:
          *(v9 + 16) = v25;
          *(v9 + v24 + 32) = v55;
          goto LABEL_83;
        }

        __break(1u);
        return;
    }
  }
}

void sub_1AC50182C(uint64_t a1, unint64_t a2)
{
  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_7_18(v3 + 1);
  OUTLINED_FUNCTION_17_15(v6 + v3);
  sub_1AC501E68(a1, a2, v2);
  sub_1AC45A774();
  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_17_15(v7);
}

void sub_1AC5018A0(unsigned __int8 *a1, uint64_t a2, uint64_t *a3)
{
  if (a1)
  {
    v4 = a1;
    v5 = a2 - a1;
    if (a2 - a1 >= 1)
    {
      while (1)
      {
        v8 = *v4++;
        v7 = v8;
        switch(v8)
        {
          case 8u:
            v9 = "\\b";
            goto LABEL_26;
          case 9u:
            v9 = "\\t";
            goto LABEL_26;
          case 0xAu:
            v9 = "\\n";
            goto LABEL_26;
          case 0xBu:
            v9 = "\\v";
            goto LABEL_26;
          case 0xCu:
            v9 = "\\f";
            goto LABEL_26;
          case 0xDu:
            v9 = "\\r";
            goto LABEL_26;
          default:
            if (v7 == 34)
            {
              v9 = "\";
              goto LABEL_26;
            }

            if (v7 == 92)
            {
              v9 = "\\\"";
LABEL_26:
              sub_1AC45FD18(v9);
              goto LABEL_27;
            }

            OUTLINED_FUNCTION_11_15();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *a3 = v3;
            if (v7 - 127 >= 0xFFFFFFA1)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                OUTLINED_FUNCTION_41();
                sub_1AC45A78C();
                OUTLINED_FUNCTION_16_12(v27);
              }

              v21 = *(v3 + 16);
              v20 = *(v3 + 24);
              if (v21 >= v20 >> 1)
              {
                OUTLINED_FUNCTION_43(v20);
                sub_1AC45A78C();
                OUTLINED_FUNCTION_16_12(v28);
              }

              *(v3 + 16) = v21 + 1;
              *(v3 + v21 + 32) = v7;
            }

            else
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                OUTLINED_FUNCTION_41();
                sub_1AC45A78C();
                OUTLINED_FUNCTION_16_12(v22);
              }

              v12 = *(v3 + 16);
              v11 = *(v3 + 24);
              if (v12 >= v11 >> 1)
              {
                OUTLINED_FUNCTION_43(v11);
                sub_1AC45A78C();
                OUTLINED_FUNCTION_16_12(v23);
              }

              *(v3 + 16) = v12 + 1;
              *(v3 + v12 + 32) = 92;
              OUTLINED_FUNCTION_8_19();
              if (v15)
              {
                OUTLINED_FUNCTION_8_14(v14);
                sub_1AC45A78C();
                v13 = v24;
                *a3 = v24;
              }

              OUTLINED_FUNCTION_10_13(v13, (v7 >> 6) | 0x30);
              OUTLINED_FUNCTION_8_19();
              if (v15)
              {
                OUTLINED_FUNCTION_8_14(v17);
                sub_1AC45A78C();
                v16 = v25;
                *a3 = v25;
              }

              OUTLINED_FUNCTION_10_13(v16, (v7 >> 3) & 7 | 0x30);
              OUTLINED_FUNCTION_8_19();
              if (v15)
              {
                OUTLINED_FUNCTION_8_14(v19);
                sub_1AC45A78C();
                v18 = v26;
                *a3 = v26;
              }

              OUTLINED_FUNCTION_10_13(v18, v7 & 7 | 0x30);
            }

LABEL_27:
            if (!--v5)
            {
              return;
            }

            break;
        }
      }
    }
  }
}

uint64_t sub_1AC501ACC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559790, "6V");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AC501B34(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1AC501B74(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for TextFormatEncodingOptions(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1AC501CE4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1AC501D24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1AC501DE0(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  sub_1AC502478(a3);
  OUTLINED_FUNCTION_23_13(": ");
  a4(a1, a2);
  sub_1AC45A774();
  v8 = *(*v4 + 16);
  sub_1AC45A85C(v8);
  v9 = *v4;
  *(v9 + 16) = v8 + 1;
  OUTLINED_FUNCTION_13_8(v9 + v8);
}

void sub_1AC501E68(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  switch(a2 >> 62)
  {
    case 1uLL:
      v7 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v5 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v6 = v7;
      goto LABEL_7;
    case 2uLL:
      v4 = *(a1 + 24);
      v5 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v6 = v4;
LABEL_7:
      sub_1AC506A94(a1, v6, v5, a3);
      break;
    case 3uLL:
      sub_1AC506934(0, 0, a3);
      break;
    default:
      v8 = a1;
      v9 = a2;
      v10 = BYTE2(a2);
      v11 = BYTE3(a2);
      v12 = BYTE4(a2);
      v13 = BYTE5(a2);
      sub_1AC5018A0(&v8, &v8 + BYTE6(a2), a3);
      break;
  }
}

__n128 sub_1AC501FA4@<Q0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  sub_1AC47782C(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559D20, &qword_1AC52ACC8);
  if (swift_dynamicCast())
  {
    sub_1AC458DF0(v14, &v17);
    __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
    swift_getDynamicType();
    (*(v19 + 8))(v16);
    __swift_destroy_boxed_opaque_existential_1(&v17);
    v12 = v16[1];
    v13 = v16[0];
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    v13 = 0u;
    sub_1AC4575D8(v14, &qword_1EB559D28, &unk_1AC52ACD0);
    v12 = 0u;
  }

  sub_1AC47782C(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559798, &qword_1AC528E10);
  if (swift_dynamicCast())
  {
    v6 = *(&v18 + 1);
    v7 = v19;
    __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
    (*(v7 + 16))(v14, v6, v7);
    v8 = *&v14[0];
    __swift_destroy_boxed_opaque_existential_1(&v17);
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    sub_1AC4575D8(&v17, &qword_1EB5597A0, &qword_1AC528E18);
    v8 = 0;
  }

  sub_1AC458E14(0, 0, 0, 0);
  v9 = MEMORY[0x1E69E7CC0];
  v10 = sub_1AC51ED58();

  __swift_destroy_boxed_opaque_existential_1(a1);
  *a3 = v9;
  *(a3 + 8) = v9;
  result = v13;
  *(a3 + 16) = v13;
  *(a3 + 32) = v12;
  *(a3 + 48) = v10;
  *(a3 + 56) = v8;
  *(a3 + 64) = v5;
  return result;
}

uint64_t sub_1AC5021D4()
{
  result = sub_1AC51ED58();
  qword_1EB557A90 = result;
  return result;
}

uint64_t sub_1AC502214(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v2 + 48);
  v6 = *(v2 + 56);
  v33 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    if (*(v5 + 16))
    {
      v8 = sub_1AC45AA38(a1);
      if (v9)
      {
        sub_1AC45AC98(*(*(v5 + 56) + 80 * v8 + 40), *(*(v5 + 56) + 80 * v8 + 48));
        return v33;
      }
    }
  }

  v10 = sub_1AC4CFA9C(v3, v7);
  if ((v11 & 0x100) == 0)
  {
    if (v11)
    {
      __break(1u);
    }

    else if (v10)
    {
      sub_1AC45FD18(v10);
      return v33;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (!v6)
  {
LABEL_18:
    v30[0] = v3;
    sub_1AC506D88();
    v21 = sub_1AC51F278();
    sub_1AC45FA3C(v21, v22);
    return v33;
  }

  sub_1AC4CFA38(v3, v6, v30);
  v12 = v31;
  if (!v31)
  {
    sub_1AC4575D8(v30, &qword_1EB558200, &unk_1AC520780);
    goto LABEL_18;
  }

  v13 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v13 + 24))(v27, v12, v13);
  v14 = v28;
  v15 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v3 = (*(v15 + 16))(v14, v15);
  v6 = v16;
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v30);
  sub_1AC45A78C();
  v18 = v17;
  v7 = *(v17 + 16);
  v5 = v7 + 1;
  if (v7 >= *(v17 + 24) >> 1)
  {
LABEL_22:
    sub_1AC45A78C();
    v18 = v24;
  }

  *(v18 + 16) = v5;
  *(v18 + v7 + 32) = 91;
  v33 = v18;
  sub_1AC45FA3C(v3, v6);
  v19 = v33;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1AC45A78C();
    v19 = v25;
  }

  v20 = *(v19 + 16);
  if (v20 >= *(v19 + 24) >> 1)
  {
    sub_1AC45A78C();
    v19 = v26;
  }

  *(v19 + 16) = v20 + 1;
  *(v19 + v20 + 32) = 93;
  return v19;
}

void sub_1AC502478(unint64_t a1)
{
  v2 = v1;
  if (*(v1 + 16) && (v4 = *(v1 + 24), *(v4 + 16)) && (v5 = sub_1AC45AA38(a1), (v6 & 1) != 0))
  {
    v7 = *(v4 + 56) + 80 * v5;
    v8 = *(v7 + 40);
    v9 = *(v7 + 48);

    sub_1AC466118(v10);

    sub_1AC45AC98(v8, v9);
  }

  else
  {
    v11 = sub_1AC4CFA9C(a1, *(v2 + 48));
    if ((v13 & 0x100) != 0)
    {
      v14 = *(v2 + 56);
      if (v14)
      {
        sub_1AC4CFA38(a1, v14, v31);
        v15 = v32;
        if (v32)
        {
          v16 = v33;
          __swift_project_boxed_opaque_existential_1(v31, v32);
          OUTLINED_FUNCTION_5();
          v18 = v17;
          MEMORY[0x1EEE9AC00](v19);
          v21 = v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v18 + 16))(v21);
          sub_1AC4575D8(v31, &qword_1EB558200, &unk_1AC520780);
          (*(v16 + 24))(v28, v15, v16);
          (*(v18 + 8))(v21, v15);
          v22 = v29;
          v23 = v30;
          __swift_project_boxed_opaque_existential_1(v28, v29);
          v24 = (*(v23 + 16))(v22, v23);
          v26 = v25;
          __swift_destroy_boxed_opaque_existential_1(v28);
          sub_1AC500D74(v24, v26);

          return;
        }

        sub_1AC4575D8(v31, &qword_1EB558200, &unk_1AC520780);
      }

      sub_1AC466118(v27);
      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        sub_1AC500DF8(a1);
      }
    }

    else
    {

      sub_1AC500D14(v11, v12, v13);
    }
  }
}

uint64_t sub_1AC5026FC(uint64_t result, unint64_t a2)
{
  if (*(v2 + 64) == 1)
  {
    switch(a2 >> 62)
    {
      case 1uLL:
        v3 = result >> 32;
        if (result >> 32 >= result)
        {
          result = result;
          v4 = v3;
          goto LABEL_7;
        }

        __break(1u);
        break;
      case 2uLL:
        v5 = *(result + 24);
        result = *(result + 16);
        v4 = v5;
LABEL_7:
        result = sub_1AC506B38(result, v4);
        break;
      case 3uLL:
        return result;
      default:
        result = sub_1AC5069A0(result, a2 & 0xFFFFFFFFFFFFFFLL);
        break;
    }
  }

  return result;
}

uint64_t sub_1AC502788(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2 - result >= 1)
    {
      v3 = 0;
      memset(v2, 0, sizeof(v2));
      v5 = 1;
      memset(v6, 0, sizeof(v6));
      v7 = 0;
      v8 = 1;
      v12 = xmmword_1AC5205D0;
      v13 = xmmword_1AC5205D0;
      v4[0] = result;
      v4[1] = a2 - result;
      v4[2] = result;
      v4[3] = 0;
      sub_1AC450538(v2, v6 + 8);
      v9 = 100;
      v10 = 1;
      v11 = 100;
      sub_1AC502848(v4, 10);
      return sub_1AC45466C(v4);
    }
  }

  return result;
}

uint64_t sub_1AC502848(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2)
{
  v4 = v2;
  v5 = isUniquelyReferenced_nonNull_native;
  v146 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69E7CC0];
  v102 = a2 - 1;
  while (1)
  {
    v7 = v5[1];
    v5[2] = *v5;
    v5[3] = 0;
    if (v7 < 1)
    {
    }

    v8 = sub_1AC453530(isUniquelyReferenced_nonNull_native);
    if (v3)
    {
    }

    if (v8 >= 0xFFFFFFFF)
    {
      break;
    }

    v9 = v8 >> 3;
    switch(v8 & 7)
    {
      case 0uLL:
        *(v5 + 33) = 0;
        v5[5] = v9;

        sub_1AC466118(v10);
        sub_1AC500DF8(v9);
        v11 = sub_1AC45FD18(": ");
        v12 = sub_1AC453530(v11);
        *(v5 + 32) = 1;
        sub_1AC500DF8(v12);
        goto LABEL_32;
      case 1uLL:
        *(v5 + 33) = 1;
        v5[5] = v9;

        sub_1AC466118(v16);
        sub_1AC500DF8(v9);
        sub_1AC45FD18(": ");
        v17 = v5[1];
        if (v17 <= 7)
        {
          goto LABEL_94;
        }

        v18 = **v5;
        *v5 += 2;
        v5[1] = (v17 - 8);
        *(v5 + 32) = 1;
        v19 = 16;
        goto LABEL_31;
      case 2uLL:
        *(v5 + 33) = 2;
        v5[5] = v9;

        sub_1AC466118(v20);
        sub_1AC500DF8(v9);
        v22 = sub_1AC453530(v21);
        if (v22 >= 0x7FFFFFFF)
        {
          goto LABEL_91;
        }

        v23 = v5[1];
        if ((v23 & 0x8000000000000000) != 0)
        {
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
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
        }

        v24 = v23 >= v22;
        v25 = (v23 - v22);
        if (!v24)
        {
LABEL_94:
          sub_1AC48D31C();
          swift_allocError();
          v87 = 1;
          goto LABEL_92;
        }

        break;
      case 3uLL:
        *(v5 + 33) = 3;
        v5[5] = v9;

        sub_1AC466118(v13);
        sub_1AC500DF8(v9);
        sub_1AC45FD18(" {\n");
        if (qword_1ED6E4138 != -1)
        {
          swift_once();
        }

        sub_1AC466118(v14);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1AC48F508();
          v6 = isUniquelyReferenced_nonNull_native;
        }

        v15 = *(v6 + 16);
        if (v15 >= *(v6 + 24) >> 1)
        {
          sub_1AC48F508();
          v6 = isUniquelyReferenced_nonNull_native;
        }

        *(v6 + 16) = v15 + 1;
        *(v6 + 8 * v15 + 32) = v9;
        continue;
      case 4uLL:
        *(v5 + 33) = 4;
        v5[5] = v9;
        if (!*(v6 + 16))
        {
          goto LABEL_27;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1AC488FDC(v6);
          v6 = v85;
        }

        v33 = *(v6 + 16);
        if (!v33)
        {
          goto LABEL_96;
        }

        *(v6 + 16) = v33 - 1;
LABEL_27:
        v34 = *(v4[1] + 16);
        if (v34 < 2)
        {
          goto LABEL_97;
        }

        sub_1AC506BDC(v34 - 2, v34);

        sub_1AC466118(v35);
        isUniquelyReferenced_nonNull_native = sub_1AC45FD18("}\n");
        continue;
      case 5uLL:
        *(v5 + 33) = 5;
        v5[5] = v9;

        sub_1AC466118(v36);
        sub_1AC500DF8(v9);
        sub_1AC45FD18(": ");
        v37 = v5[1];
        if (v37 <= 3)
        {
          goto LABEL_94;
        }

        v18 = *(*v5)++;
        v5[1] = (v37 - 4);
        *(v5 + 32) = 1;
        v19 = 8;
LABEL_31:
        sub_1AC501134(v18, v19);
LABEL_32:
        v38 = *v4;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1AC45A78C();
          v38 = isUniquelyReferenced_nonNull_native;
        }

        v39 = *(v38 + 16);
        if (v39 >= *(v38 + 24) >> 1)
        {
          sub_1AC45A78C();
          v38 = isUniquelyReferenced_nonNull_native;
        }

        *(v38 + 16) = v39 + 1;
        *(v38 + v39 + 32) = 10;
        *v4 = v38;
        continue;
      default:
        goto LABEL_91;
    }

    *v5 = (*v5 + v22);
    v5[1] = v25;
    v26 = MEMORY[0x1AC5B4090]();
    *(v5 + 32) = 1;
    v28 = v27 >> 62;
    v29 = v26;
    v30 = v27;
    v31 = BYTE6(v27);
    switch(v27 >> 62)
    {
      case 1uLL:
        LODWORD(v32) = HIDWORD(v26) - v26;
        if (__OFSUB__(HIDWORD(v26), v26))
        {
          goto LABEL_98;
        }

        v32 = v32;
LABEL_40:
        if (v32 < 1 || a2 < 1)
        {
          goto LABEL_80;
        }

        if (v28 == 2)
        {
          v56 = *(v26 + 16);
          v98 = *(v26 + 24);

          v57 = sub_1AC51EB78();
          if (v57)
          {
            v58 = sub_1AC51EBA8();
            if (__OFSUB__(v56, v58))
            {
              goto LABEL_102;
            }

            v57 += v56 - v58;
          }

          v42 = __OFSUB__(v98, v56);
          v59 = v98 - v56;
          if (v42)
          {
            goto LABEL_101;
          }

          v60 = sub_1AC51EB98();
          if (v60 >= v59)
          {
            v61 = v59;
          }

          else
          {
            v61 = v60;
          }

          if (v57 && v61 >= 1)
          {
            sub_1AC4530E8(v5, &v116);
            v99 = v126;
            v95 = v127;
            sub_1AC450324(&v121 + 8, v111);
            v135 = 1;
            v136 = 0u;
            v137 = 0u;
            v138 = 0u;
            v139 = 0;
            v140 = 1;
            v144 = xmmword_1AC5205D0;
            v145 = xmmword_1AC5205D0;
            v131 = v57;
            v132 = v61;
            v133 = v57;
            v134 = 0;
            sub_1AC450538(v111, &v136 + 8);
            v141 = v99;
            v142 = v95;
            v62 = v128;
            sub_1AC45466C(&v116);
            v143 = v62;
            do
            {
              sub_1AC450760();
            }

            while ((v64 & 1) == 0);
            v65 = v63;
            v92 = MEMORY[0x1AC5B40B0](v29, v30);
            sub_1AC4530E8(v5, v111);
            v100 = v113;
            v96 = v114;
            sub_1AC450324(v112, v110);
            v120 = 1;
            v121 = 0u;
            v122 = 0u;
            v123 = 0u;
            v124 = v65;
            v125 = 1;
            v129 = xmmword_1AC5205D0;
            v130 = xmmword_1AC5205D0;
            v116 = v57;
            v117 = v92;
            v118 = v57;
            v119 = 0;
LABEL_74:
            sub_1AC450538(v110, &v121 + 8);
            v126 = v100;
            v55 = v96;
LABEL_75:
            v127 = v55;
            v72 = v115;
            sub_1AC45466C(v111);
            v128 = v72;
            sub_1AC45FE50(" {\n", 3, 2);
            if (qword_1ED6E4138 != -1)
            {
              swift_once();
            }

            sub_1AC466118(v73);
            sub_1AC502848(&v116, v102);
            sub_1AC500EC4();
            sub_1AC45466C(&v116);
            sub_1AC45466C(&v131);
            sub_1AC4513F8(v29, v30);
            sub_1AC4513F8(v29, v30);
            continue;
          }

          goto LABEL_79;
        }

        if (v28 == 1)
        {
          v44 = v26 >> 32;
          if (v26 >> 32 < v26)
          {
            goto LABEL_100;
          }

          v97 = v26;
          v45 = v26;

          v46 = sub_1AC51EB78();
          if (v46)
          {
            v47 = sub_1AC51EBA8();
            if (__OFSUB__(v45, v47))
            {
              goto LABEL_103;
            }

            v46 += v45 - v47;
          }

          v48 = v44 - v45;
          v49 = sub_1AC51EB98();
          if (v49 >= v48)
          {
            v50 = v48;
          }

          else
          {
            v50 = v49;
          }

          if (v46)
          {
            v29 = v97;
            if (v50 >= 1)
            {
              sub_1AC4530E8(v5, &v116);
              v93 = v126;
              v90 = v127;
              sub_1AC450324(&v121 + 8, v111);
              v135 = 1;
              v136 = 0u;
              v137 = 0u;
              v138 = 0u;
              v139 = 0;
              v140 = 1;
              v144 = xmmword_1AC5205D0;
              v145 = xmmword_1AC5205D0;
              v131 = v46;
              v132 = v50;
              v133 = v46;
              v134 = 0;
              sub_1AC450538(v111, &v136 + 8);
              v141 = v93;
              v142 = v90;
              v51 = v128;
              sub_1AC45466C(&v116);
              v143 = v51;
              do
              {
                sub_1AC450760();
              }

              while ((v53 & 1) == 0);
              v54 = v52;
              v89 = MEMORY[0x1AC5B40B0](v97, v30);
              sub_1AC4530E8(v5, v111);
              v94 = v113;
              v91 = v114;
              sub_1AC450324(v112, v110);
              v120 = 1;
              v121 = 0u;
              v122 = 0u;
              v123 = 0u;
              v124 = v54;
              v125 = 1;
              v129 = xmmword_1AC5205D0;
              v130 = xmmword_1AC5205D0;
              v116 = v46;
              v117 = v89;
              v118 = v46;
              v119 = 0;
              sub_1AC450538(v110, &v121 + 8);
              v126 = v94;
              v55 = v91;
              goto LABEL_75;
            }
          }

          else
          {
            v29 = v97;
          }

LABEL_79:
          sub_1AC4513F8(v29, v30);
          goto LABEL_80;
        }

        v104 = v26;
        v105 = v27;
        v106 = BYTE2(v27);
        v107 = BYTE3(v27);
        v108 = BYTE4(v27);
        v109 = BYTE5(v27);
        if (BYTE6(v27))
        {
          sub_1AC4530E8(v5, &v116);
          v101 = v126;
          v66 = v127;
          sub_1AC450324(&v121 + 8, v111);
          v135 = 1;
          v136 = 0u;
          v137 = 0u;
          v138 = 0u;
          v139 = 0;
          v140 = 1;
          v144 = xmmword_1AC5205D0;
          v145 = xmmword_1AC5205D0;
          v131 = &v104;
          v132 = v31;
          v133 = &v104;
          v134 = 0;
          sub_1AC450538(v111, &v136 + 8);
          v141 = v101;
          v142 = v66;
          v67 = v128;
          sub_1AC45466C(&v116);
          v143 = v67;
          do
          {
            sub_1AC450760();
          }

          while ((v69 & 1) == 0);
          v70 = v68;
          v71 = MEMORY[0x1AC5B40B0](v29, v30);
          sub_1AC4530E8(v5, v111);
          v100 = v113;
          v96 = v114;
          sub_1AC450324(v112, v110);
          v120 = 1;
          v121 = 0u;
          v122 = 0u;
          v123 = 0u;
          v124 = v70;
          v125 = 1;
          v129 = xmmword_1AC5205D0;
          v130 = xmmword_1AC5205D0;
          v116 = &v104;
          v117 = v71;
          v118 = &v104;
          v119 = 0;
          goto LABEL_74;
        }

LABEL_80:
        sub_1AC45FD18(": ");
        v74 = *v4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1AC45A78C();
          v74 = v80;
        }

        v75 = *(v74 + 16);
        if (v75 >= *(v74 + 24) >> 1)
        {
          sub_1AC45A78C();
          v74 = v81;
        }

        *(v74 + 16) = v75 + 1;
        *(v74 + v75 + 32) = 34;
        *v4 = v74;
        sub_1AC501E68(v29, v30, v4);
        v76 = *v4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1AC45A78C();
          v76 = v82;
        }

        v77 = *(v76 + 16);
        v78 = v77 + 1;
        if (v77 >= *(v76 + 24) >> 1)
        {
          sub_1AC45A78C();
          v76 = v83;
        }

        *(v76 + 16) = v78;
        *(v76 + v77 + 32) = 34;
        *v4 = v76;
        v79 = v77 + 2;
        if (v79 > *(v76 + 24) >> 1)
        {
          sub_1AC45A78C();
          v76 = v84;
        }

        *(v76 + 16) = v79;
        *(v76 + v78 + 32) = 10;
        sub_1AC4513F8(v29, v30);
        *v4 = v76;
        break;
      case 2uLL:
        v41 = *(v26 + 16);
        v40 = *(v26 + 24);
        v42 = __OFSUB__(v40, v41);
        v32 = v40 - v41;
        if (!v42)
        {
          goto LABEL_40;
        }

        goto LABEL_99;
      case 3uLL:
        goto LABEL_80;
      default:
        v32 = BYTE6(v27);
        goto LABEL_40;
    }
  }

LABEL_91:
  sub_1AC48D31C();
  swift_allocError();
  v87 = 3;
LABEL_92:
  *v86 = v87;
  swift_willThrow();
}

void sub_1AC5034DC(unint64_t a1, float a2)
{
  sub_1AC502478(a1);
  OUTLINED_FUNCTION_23_13(": ");
  sub_1AC500FBC(a2);
  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_0_36();
}

void sub_1AC503530(unint64_t a1, double a2)
{
  sub_1AC502478(a1);
  v3 = OUTLINED_FUNCTION_23_13(": ");
  sub_1AC501044(v3, a2);
  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_0_36();
}

void sub_1AC5035B4(uint64_t a1, unint64_t a2, void (*a3)(uint64_t))
{
  sub_1AC502478(a2);
  OUTLINED_FUNCTION_23_13(": ");
  a3(a1);
  sub_1AC45A774();
  v6 = *(*v3 + 16);
  sub_1AC45A85C(v6);
  v7 = *v3;
  *(v7 + 16) = v6 + 1;
  OUTLINED_FUNCTION_13_8(v7 + v6);
}

void sub_1AC503634(char a1, unint64_t a2)
{
  sub_1AC502478(a2);
  OUTLINED_FUNCTION_23_13(": ");
  if (a1)
  {
    v3 = "true";
  }

  else
  {
    v3 = "false";
  }

  if (a1)
  {
    v4 = 4;
  }

  else
  {
    v4 = 5;
  }

  sub_1AC45FE50(v3, v4, 2);
  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_0_36();
}

void sub_1AC5036A4()
{
  OUTLINED_FUNCTION_26_10();
  v3 = v2;
  sub_1AC502478(v4);
  OUTLINED_FUNCTION_23_13(": ");
  sub_1AC500F28(v3, v1, v0);
  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1AC503704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v50 = a4;
  v61 = a1;
  OUTLINED_FUNCTION_5();
  v55 = v7;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v54 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v49 - v11;
  sub_1AC502478(v12);
  v13 = v4[2];
  v14 = v4[3];
  v15 = v4[4];
  v16 = v4[5];
  v17 = v4[6];
  v18 = v4[7];
  v56 = a3;
  v19 = dynamic_cast_existential_1_conditional(a3, a3, &protocol descriptor for _ProtoNameProviding);
  v59 = v14;
  v60 = v13;
  v58 = v15;
  if (v19)
  {
    v21 = v19;
    v22 = v20;
    v23 = *(v20 + 8);
    sub_1AC506CBC(v13);

    v23(&v62, v21, v22);
    v51 = v63;
    v53 = v62;
  }

  else
  {
    sub_1AC506CBC(v13);

    v53 = 0u;
    v51 = 0u;
  }

  v24 = OUTLINED_FUNCTION_40_6();
  sub_1AC458E14(v24, v25, v26, v27);
  v28 = v51;
  *(v5 + 16) = v53;
  *(v5 + 32) = v28;
  v29 = sub_1AC51ED58();
  *&v53 = v17;

  *(v5 + 48) = v29;
  v30 = v56;
  v31 = *(v55 + 16);
  v32 = v61;
  v31(v52, v61, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559798, &qword_1AC528E10);
  if (swift_dynamicCast())
  {
    v33 = *(&v63 + 1);
    v34 = v64;
    __swift_project_boxed_opaque_existential_1(&v62, *(&v63 + 1));
    v35 = v33;
    v32 = v61;
    (*(v34 + 16))(&v65, v35, v34);
    v36 = v65;
    __swift_destroy_boxed_opaque_existential_1(&v62);
  }

  else
  {
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    sub_1AC4575D8(&v62, &qword_1EB5597A0, &qword_1AC528E18);
    v36 = 0;
  }

  v37 = v59;

  *(v5 + 56) = v36;
  sub_1AC45FE50(" {\n", 3, 2);
  if (qword_1ED6E4138 != -1)
  {
    OUTLINED_FUNCTION_5_26();
    swift_once();
  }

  sub_1AC466118(v38);
  v31(v54, v32, v30);
  if (swift_dynamicCast())
  {
    v39 = v62;
    sub_1AC475F40(v5);
    v40 = v57;
    sub_1AC493748(v5, v39, *(&v39 + 1));
    if (!v40)
    {
      sub_1AC4513F8(v39, *(&v39 + 1));

LABEL_13:
      v42 = v58;
      v43 = v53;
      sub_1AC500EC4();

      *(v5 + 56) = v18;

      *(v5 + 48) = v43;
      v44 = OUTLINED_FUNCTION_40_6();
      result = sub_1AC458E14(v44, v45, v46, v47);
      *(v5 + 16) = v60;
      *(v5 + 24) = v37;
      *(v5 + 32) = v42;
      *(v5 + 40) = v16;
      return result;
    }

    OUTLINED_FUNCTION_27_7();
  }

  else
  {
    v41 = v57;
    (*(v50 + 72))(v5, &type metadata for TextFormatEncodingVisitor, &off_1F211A548, v30);
    if (!v41)
    {
      goto LABEL_13;
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AC503B58()
{
  OUTLINED_FUNCTION_14_14();
  v3 = v2;
  OUTLINED_FUNCTION_22_12(v34);
  OUTLINED_FUNCTION_22_12(v25);
  sub_1AC4EF50C(v34, v35);
  v4 = sub_1AC502214(v1);
  OUTLINED_FUNCTION_35_6(v4, v5, v6, v7, v8, v9, v10, v11, v23, v24, *v25, v26, v27, v28, v29, v30, v31, v32, v33, v34[0], v34[1], v34[2], v34[3], v34[4], v34[5], v34[6], v34[7], v34[8]);
  sub_1AC4EF568(v35);
  v12 = *(v3 + 16);
  if (v12)
  {
    v13 = (v3 + 32);
    do
    {
      v14 = *v13;

      sub_1AC466118(v15);

      sub_1AC466118(v16);
      sub_1AC45FD18(": ");
      if ((~LODWORD(v14) & 0x7F800000) != 0)
      {
        v18 = sub_1AC51F1A8();
        v19 = v0;
        sub_1AC45FA3C(v18, v20);
      }

      else
      {
        if ((LODWORD(v14) & 0x7FFFFF) != 0)
        {
          v17 = "nan";
        }

        else if (v14 >= 0.0)
        {
          v17 = "inf";
        }

        else
        {
          v17 = "-inf";
        }

        v19 = v0;
        sub_1AC45FD18(v17);
      }

      if ((OUTLINED_FUNCTION_24_10() & 1) == 0)
      {
        OUTLINED_FUNCTION_3_30();
        v19 = v21;
      }

      if (*(v19 + 16) >= *(v19 + 24) >> 1)
      {
        OUTLINED_FUNCTION_7_19();
      }

      OUTLINED_FUNCTION_39_5();
      ++v13;
      --v12;
    }

    while (v12);
  }
}

uint64_t sub_1AC503CE0()
{
  OUTLINED_FUNCTION_14_14();
  v3 = v2;
  OUTLINED_FUNCTION_22_12(v34);
  OUTLINED_FUNCTION_22_12(v25);
  sub_1AC4EF50C(v34, v35);
  v4 = sub_1AC502214(v1);
  OUTLINED_FUNCTION_35_6(v4, v5, v6, v7, v8, v9, v10, v11, v23, v24, *v25, v26, v27, v28, v29, v30, v31, v32, v33, v34[0], v34[1], v34[2], v34[3], v34[4], v34[5], v34[6], v34[7], v34[8]);
  sub_1AC4EF568(v35);
  v12 = *(v3 + 16);
  if (v12)
  {
    v13 = (v3 + 32);
    do
    {
      v14 = *v13;

      sub_1AC466118(v15);

      sub_1AC466118(v16);
      sub_1AC45FD18(": ");
      if ((~*&v14 & 0x7FF0000000000000) != 0)
      {
        v18 = sub_1AC51F188();
        v19 = v0;
        sub_1AC45FA3C(v18, v20);
      }

      else
      {
        if ((*&v14 & 0xFFFFFFFFFFFFFLL) != 0)
        {
          v17 = "nan";
        }

        else if (v14 >= 0.0)
        {
          v17 = "inf";
        }

        else
        {
          v17 = "-inf";
        }

        v19 = v0;
        sub_1AC45FD18(v17);
      }

      if ((OUTLINED_FUNCTION_24_10() & 1) == 0)
      {
        OUTLINED_FUNCTION_3_30();
        v19 = v21;
      }

      if (*(v19 + 16) >= *(v19 + 24) >> 1)
      {
        OUTLINED_FUNCTION_7_19();
      }

      OUTLINED_FUNCTION_39_5();
      ++v13;
      --v12;
    }

    while (v12);
  }
}

uint64_t sub_1AC50446C()
{
  OUTLINED_FUNCTION_14_14();
  v3 = v2;
  OUTLINED_FUNCTION_22_12(v45);
  OUTLINED_FUNCTION_22_12(v36);
  sub_1AC4EF50C(v45, v46);
  v4 = sub_1AC502214(v1);
  OUTLINED_FUNCTION_35_6(v4, v5, v6, v7, v8, v9, v10, v11, v35, v4, *v36, v37, v38, v39, v40, v41, v42, v43, v44, v45[0], v45[1], v45[2], v45[3], v45[4], v45[5], v45[6], v45[7], v45[8]);
  sub_1AC4EF568(v46);
  v12 = *(v3 + 16);
  if (v12)
  {
    v13 = v3 + 40;
    do
    {
      v14 = OUTLINED_FUNCTION_22_0();
      sub_1AC4578F4(v14, v15);

      v17 = v0;
      sub_1AC466118(v16);

      sub_1AC466118(v18);
      sub_1AC45FD18(": ");
      if ((OUTLINED_FUNCTION_24_10() & 1) == 0)
      {
        OUTLINED_FUNCTION_3_30();
        v17 = v29;
      }

      v19 = v17[2];
      if (v19 >= v17[3] >> 1)
      {
        OUTLINED_FUNCTION_6_23();
        v17 = v30;
      }

      v17[2] = v19 + 1;
      OUTLINED_FUNCTION_22(v17 + v19);
      v20 = OUTLINED_FUNCTION_22_0();
      v21 = v47;
      sub_1AC501E68(v20, v22, v0);
      v47 = v21;
      if ((OUTLINED_FUNCTION_24_10() & 1) == 0)
      {
        OUTLINED_FUNCTION_3_30();
        v17 = v31;
      }

      v23 = v17[2];
      v24 = v17[3] >> 1;
      v25 = v23 + 1;
      if (v24 <= v23)
      {
        sub_1AC45A78C();
        v17 = v32;
        v24 = v32[3] >> 1;
      }

      v17[2] = v25;
      *(v17 + v23 + 32) = 34;
      v26 = v23 + 2;
      if (v24 < v26)
      {
        OUTLINED_FUNCTION_6_23();
        v17 = v33;
      }

      v13 += 16;
      v27 = OUTLINED_FUNCTION_22_0();
      sub_1AC4513F8(v27, v28);
      v17[2] = v26;
      OUTLINED_FUNCTION_22(v17 + v25);
      --v12;
    }

    while (v12);
  }
}

uint64_t sub_1AC50463C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v28 = a4;
  OUTLINED_FUNCTION_5();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v26 = v12;
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_22_12(v30);
  OUTLINED_FUNCTION_22_12(v29);
  sub_1AC4EF50C(v30, v31);
  v14 = sub_1AC502214(a2);
  OUTLINED_FUNCTION_47_5(v14, &v33);
  sub_1AC4EF568(v31);
  OUTLINED_FUNCTION_53();
  v15 = sub_1AC51F038();
  v29[0] = v15;
  OUTLINED_FUNCTION_53();
  if (v15 == sub_1AC51F0B8())
  {
  }

  v27 = (v10 + 16);
  while (1)
  {
    OUTLINED_FUNCTION_53();
    v17 = sub_1AC51F0A8();
    OUTLINED_FUNCTION_46_6(v17);
    if ((v17 & 1) == 0)
    {
      break;
    }

    (*(v10 + 16))(v13, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v15, a3);
LABEL_6:
    OUTLINED_FUNCTION_41_4();
    sub_1AC51F0F8();

    v19 = v5;
    sub_1AC466118(v18);

    sub_1AC466118(v20);
    sub_1AC45FD18(": ");
    sub_1AC500F28(v13, a3, v28);
    if ((OUTLINED_FUNCTION_24_10() & 1) == 0)
    {
      OUTLINED_FUNCTION_3_30();
      v19 = v23;
    }

    v21 = *(v19 + 16);
    if (v21 >= *(v19 + 24) >> 1)
    {
      sub_1AC45A78C();
      v19 = v24;
    }

    (*(v10 + 8))(v13, a3);
    *(v19 + 16) = v21 + 1;
    OUTLINED_FUNCTION_22(v19 + v21);
    OUTLINED_FUNCTION_53();
    v22 = sub_1AC51F0B8();
    v15 = v29[0];
    if (v29[0] == v22)
    {
    }
  }

  OUTLINED_FUNCTION_41_4();
  result = sub_1AC51F2F8();
  if (v26 == 8)
  {
    v32 = result;
    (*v27)(v13, &v32, a3);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC504908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v63 = a4;
  OUTLINED_FUNCTION_5();
  v67 = v10;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v66 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v70 = &v56 - v15;
  v57 = v16;
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v56 - v17;
  OUTLINED_FUNCTION_22_12(v74);
  v18 = v75;
  memcpy(__dst, v6, sizeof(__dst));
  sub_1AC4EF50C(v74, v76);
  v61 = v18;

  v19 = sub_1AC502214(a2);
  OUTLINED_FUNCTION_47_5(v19, v77);
  sub_1AC4EF568(v76);
  v20 = v6[2];
  v21 = v6[3];
  v22 = v6[4];
  v60 = v6[5];
  v59 = v6[7];
  v23 = dynamic_cast_existential_1_conditional(a3, a3, &protocol descriptor for _ProtoNameProviding);
  v68 = v21;
  v69 = v22;
  v58 = v20;
  if (v23)
  {
    v25 = v23;
    v26 = v24;
    *&v71 = *(v24 + 8);
    sub_1AC506CBC(v20);

    (v71)(__dst, v25, v26);
    v64 = *&__dst[16];
    v27 = *__dst;
    v28 = &v78;
  }

  else
  {
    v29 = OUTLINED_FUNCTION_22_0();
    sub_1AC506CBC(v29);

    v27 = 0uLL;
    v71 = 0u;
    v28 = v76;
  }

  *(v28 - 16) = v27;
  sub_1AC458E14(v6[2], v6[3], v6[4], v6[5]);
  v30 = v64;
  *(v6 + 1) = v71;
  *(v6 + 2) = v30;
  v31 = sub_1AC51ED58();

  v6[6] = v31;
  v79 = a1;
  sub_1AC51F108();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559798, &qword_1AC528E10);
  if (swift_dynamicCast())
  {
    v32 = *&__dst[24];
    v33 = *&__dst[32];
    __swift_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
    (*(v33 + 16))(&v72, v32, v33);
    v34 = v72;
    __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  else
  {
    memset(__dst, 0, 40);
    sub_1AC4575D8(__dst, &qword_1EB5597A0, &qword_1AC528E18);
    v34 = 0;
  }

  v35 = v68;
  v36 = v69;

  v6[7] = v34;
  OUTLINED_FUNCTION_53();
  v37 = sub_1AC51F038();
  v79 = v37;
  OUTLINED_FUNCTION_53();
  if (v37 == sub_1AC51F0B8())
  {
LABEL_8:

    v6[7] = v59;

    v6[6] = v61;
    result = sub_1AC458E14(v6[2], v6[3], v6[4], v6[5]);
    v6[2] = v58;
    v6[3] = v35;
    v39 = v60;
    v6[4] = v36;
    v6[5] = v39;
  }

  else
  {
    *&v71 = v67 + 16;
    *&v64 = v67 + 32;
    v62 = v63 + 72;
    v40 = (v67 + 8);
    while (1)
    {
      OUTLINED_FUNCTION_53();
      v41 = sub_1AC51F0A8();
      OUTLINED_FUNCTION_46_6(v41);
      if (v41)
      {
        v42 = a1 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v37;
        v43 = *(v67 + 16);
        v44 = v65;
        v43(v65, v42, a3);
      }

      else
      {
        OUTLINED_FUNCTION_41_4();
        v54 = sub_1AC51F2F8();
        if (v57 != 8)
        {
          goto LABEL_24;
        }

        *__dst = v54;
        v43 = *v71;
        v55 = v65;
        (*v71)(v65, __dst, a3);
        v44 = v55;
        swift_unknownObjectRelease();
      }

      OUTLINED_FUNCTION_41_4();
      sub_1AC51F0F8();
      v45 = v70;
      (*v64)(v70, v44, a3);

      sub_1AC466118(v46);

      sub_1AC466118(v47);
      sub_1AC45FE50(" {\n", 3, 2);
      if (qword_1ED6E4138 != -1)
      {
        OUTLINED_FUNCTION_5_26();
        swift_once();
      }

      sub_1AC466118(v48);
      v43(v66, v45, a3);
      if (swift_dynamicCast())
      {
        v49 = *__dst;
        v50 = *&__dst[8];
        sub_1AC475F40(v6);
        sub_1AC493748(v6, v49, v50);
        if (v5)
        {
          goto LABEL_25;
        }

        sub_1AC4513F8(v49, v50);

        v45 = v70;
      }

      else
      {
        (*(v63 + 72))(v6, &type metadata for TextFormatEncodingVisitor, &off_1F211A548, a3);
        if (v5)
        {
          goto LABEL_26;
        }
      }

      v36 = v69;
      v51 = *(v6[1] + 16);
      if (v51 < 2)
      {
        break;
      }

      sub_1AC506BDC(v51 - 2, v51);

      sub_1AC466118(v52);
      OUTLINED_FUNCTION_23_13("}\n");
      (*v40)(v45, a3);
      OUTLINED_FUNCTION_53();
      v53 = sub_1AC51F0B8();
      v37 = v79;
      v35 = v68;
      if (v79 == v53)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    OUTLINED_FUNCTION_27_7();
LABEL_26:
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC505088(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t *), uint64_t a4, uint64_t a5)
{
  v30 = a3;
  v31 = a4;
  v8 = *(a5 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v29 = &v27 - v12;
  sub_1AC502478(v13);
  sub_1AC45FE50(": ", 2, 2);
  sub_1AC45A774();
  v14 = *(*v5 + 16);
  sub_1AC45A85C(v14);
  v15 = *v5;
  *(v15 + 16) = v14 + 1;
  *(v15 + v14 + 32) = 91;
  v32 = v5;
  *v5 = v15;
  v16 = sub_1AC51F038();
  v34 = v16;
  if (v16 == sub_1AC51F0B8())
  {
LABEL_2:
    v17 = v32;
    sub_1AC45A774();
    v18 = *(*v17 + 16);
    sub_1AC45A85C(v18);
    v19 = *v17;
    *(v19 + 16) = v18 + 1;
    *(v19 + v18 + 32) = 93;
    *v17 = v19;
    sub_1AC45A774();
    v20 = *(*v17 + 16);
    result = sub_1AC45A85C(v20);
    v22 = *v17;
    *(v22 + 16) = v20 + 1;
    *(v22 + v20 + 32) = 10;
    *v17 = v22;
    return result;
  }

  v28 = (v8 + 16);
  v23 = 1;
  while (1)
  {
    v24 = sub_1AC51F0A8();
    sub_1AC51F048();
    if ((v24 & 1) == 0)
    {
      break;
    }

    v25 = v29;
    (*(v8 + 16))(v29, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v16, a5);
LABEL_6:
    sub_1AC51F0F8();
    (*(v8 + 32))(v11, v25, a5);
    if ((v23 & 1) == 0)
    {
      sub_1AC45FD18(", ");
    }

    v30(v11, v32);
    (*(v8 + 8))(v11, a5);
    v26 = sub_1AC51F0B8();
    v23 = 0;
    v16 = v34;
    if (v34 == v26)
    {
      goto LABEL_2;
    }
  }

  result = sub_1AC51F2F8();
  if (v27 == 8)
  {
    v33 = result;
    v25 = v29;
    (*v28)(v29, &v33, a5);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_1AC5053A4(uint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_20_13(a1, a2);
  OUTLINED_FUNCTION_23_13(": ");
  sub_1AC45A774();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_31();
  v4 = *(v2 + 16);
  if (v4)
  {
    OUTLINED_FUNCTION_43_5();
    do
    {
      v6 = *v3;
      if ((v5 & 1) == 0)
      {
        sub_1AC45FD18(", ");
      }

      if ((~LODWORD(v6) & 0x7F800000) != 0)
      {
        v8 = sub_1AC51F1A8();
        sub_1AC45FA3C(v8, v9);
      }

      else
      {
        if ((LODWORD(v6) & 0x7FFFFF) != 0)
        {
          v7 = "nan";
        }

        else if (v6 >= 0.0)
        {
          v7 = "inf";
        }

        else
        {
          v7 = "-inf";
        }

        sub_1AC45FD18(v7);
      }

      v5 = 0;
      ++v3;
      --v4;
    }

    while (v4);
  }

  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_13_8(v10);
  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_0_36();
}

void sub_1AC5054C0(uint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_20_13(a1, a2);
  OUTLINED_FUNCTION_23_13(": ");
  sub_1AC45A774();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_31();
  v4 = *(v2 + 16);
  if (v4)
  {
    OUTLINED_FUNCTION_43_5();
    do
    {
      v6 = *v3;
      if ((v5 & 1) == 0)
      {
        sub_1AC45FD18(", ");
      }

      if ((~*&v6 & 0x7FF0000000000000) != 0)
      {
        v8 = sub_1AC51F188();
        sub_1AC45FA3C(v8, v9);
      }

      else
      {
        if ((*&v6 & 0xFFFFFFFFFFFFFLL) != 0)
        {
          v7 = "nan";
        }

        else if (v6 >= 0.0)
        {
          v7 = "inf";
        }

        else
        {
          v7 = "-inf";
        }

        sub_1AC45FD18(v7);
      }

      v5 = 0;
      ++v3;
      --v4;
    }

    while (v4);
  }

  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_13_8(v10);
  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_0_36();
}

void sub_1AC5055DC(uint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_20_13(a1, a2);
  OUTLINED_FUNCTION_23_13(": ");
  sub_1AC45A774();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_31();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    v5 = 1;
    do
    {
      v7 = *v4++;
      v6 = v7;
      if ((v5 & 1) == 0)
      {
        OUTLINED_FUNCTION_38_6();
      }

      sub_1AC500DF8(v6);
      v5 = 0;
      --v3;
    }

    while (v3);
  }

  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_13_8(v8);
  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_0_36();
}

void sub_1AC505680(uint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_20_13(a1, a2);
  OUTLINED_FUNCTION_23_13(": ");
  sub_1AC45A774();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_31();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    v5 = 1;
    do
    {
      v7 = *v4++;
      v6 = v7;
      if ((v5 & 1) == 0)
      {
        OUTLINED_FUNCTION_38_6();
      }

      sub_1AC500DF8(v6);
      v5 = 0;
      --v3;
    }

    while (v3);
  }

  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_13_8(v8);
  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_0_36();
}

void sub_1AC505724(uint64_t a1, unint64_t a2)
{
  sub_1AC502478(a2);
  OUTLINED_FUNCTION_23_13(": ");
  sub_1AC45A774();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_31();
  v4 = *(a1 + 16);
  if (v4)
  {
    OUTLINED_FUNCTION_43_5();
    do
    {
      v7 = *v2++;
      v6 = v7;
      if ((v5 & 1) == 0)
      {
        OUTLINED_FUNCTION_38_6();
      }

      if ((v6 & 0x80000000) != 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_34_7();
        }

        OUTLINED_FUNCTION_42_5();
        if (v8)
        {
          sub_1AC45A78C();
        }

        OUTLINED_FUNCTION_29_7();
      }

      sub_1AC500DF8(v6);
      v5 = 0;
      --v4;
    }

    while (v4);
  }

  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_13_8(v9);
  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_0_36();
}

void sub_1AC505838(uint64_t a1, unint64_t a2)
{
  sub_1AC502478(a2);
  OUTLINED_FUNCTION_23_13(": ");
  sub_1AC45A774();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_31();
  v4 = *(a1 + 16);
  if (v4)
  {
    OUTLINED_FUNCTION_43_5();
    do
    {
      v7 = *v2++;
      v6 = v7;
      if ((v5 & 1) == 0)
      {
        OUTLINED_FUNCTION_38_6();
      }

      if ((v6 & 0x8000000000000000) != 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_34_7();
        }

        OUTLINED_FUNCTION_42_5();
        if (v8)
        {
          sub_1AC45A78C();
        }

        OUTLINED_FUNCTION_29_7();
      }

      sub_1AC500DF8(v6);
      v5 = 0;
      --v4;
    }

    while (v4);
  }

  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_13_8(v9);
  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_0_36();
}

void sub_1AC50594C(uint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_20_13(a1, a2);
  OUTLINED_FUNCTION_23_13(": ");
  sub_1AC45A774();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_31();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    v5 = 1;
    do
    {
      v6 = *v4;
      if ((v5 & 1) == 0)
      {
        OUTLINED_FUNCTION_38_6();
      }

      if (v6)
      {
        v7 = "true";
      }

      else
      {
        v7 = "false";
      }

      sub_1AC45FD18(v7);
      v5 = 0;
      ++v4;
      --v3;
    }

    while (v3);
  }

  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_13_8(v8);
  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1AC505A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a3;
  v5[3] = a4;
  return sub_1AC505088(a1, a2, sub_1AC506D5C, v5, a3);
}

unint64_t sub_1AC505A58(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, void (*a5)(void *, char *, char *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v11 = a8;
  v72 = a6;
  v71 = a5;
  v84 = a4;
  v82 = a3;
  v70 = a2;
  v65 = *(a8 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v85 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59[0] = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v80 = sub_1AC51F228();
  v73 = *(v80 - 8);
  v20 = MEMORY[0x1EEE9AC00](v80);
  v81 = v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v74 = v59 - v22;
  v23 = v9[2];
  v24 = v9[3];
  v25 = v9[4];
  v26 = v9[5];
  v27 = v9[6];
  v28 = v9[7];
  v91 = a1;
  v86 = a7;
  v87 = v11;
  v88 = a9;
  v89 = v82;
  v29 = v27;
  v90 = v84;
  v77 = v24;
  v78 = v23;
  v75 = v26;
  v76 = v25;
  sub_1AC506CBC(v23);
  sub_1AC51ED88();
  v84 = v29;

  v79 = v28;

  swift_getWitnessTable();
  v30 = v83;
  v31 = sub_1AC51F028();
  v83 = v30;
  v32 = sub_1AC51F038();
  v59[1] = TupleTypeMetadata2 - 8;
  v92 = v32;
  v73 += 4;
  v68 = (v59[0] + 32);
  v67 = (v65 + 4);
  v69 = v9 + 2;
  v82 = v9 + 1;
  v64 = (v65 + 1);
  v65 = (v59[0] + 8);
  v63 = TupleTypeMetadata2;
  v62 = a7;
  v61 = v18;
  v60 = v11;
  for (i = v31; ; v31 = i)
  {
    v33 = sub_1AC51F0B8();
    v34 = v92;
    if (v92 == v33)
    {
      v35 = v81;
      v36 = v81;
      v37 = 1;
    }

    else
    {
      v38 = sub_1AC51F0A8();
      sub_1AC51F048();
      v35 = v81;
      if (v38)
      {
        (*(*(TupleTypeMetadata2 - 8) + 16))(v81, v31 + ((*(*(TupleTypeMetadata2 - 8) + 80) + 32) & ~*(*(TupleTypeMetadata2 - 8) + 80)) + *(*(TupleTypeMetadata2 - 8) + 72) * v34, TupleTypeMetadata2);
      }

      else
      {
        result = sub_1AC51F2F8();
        v58 = *(TupleTypeMetadata2 - 8);
        if (*(v58 + 64) != 8)
        {
          goto LABEL_20;
        }

        v91 = result;
        (*(v58 + 16))(v35, &v91, TupleTypeMetadata2);
        swift_unknownObjectRelease();
      }

      sub_1AC51F0F8();
      v36 = v35;
      v37 = 0;
    }

    __swift_storeEnumTagSinglePayload(v36, v37, 1, TupleTypeMetadata2);
    v39 = v74;
    (*v73)(v74, v35, v80);
    if (__swift_getEnumTagSinglePayload(v39, 1, TupleTypeMetadata2) == 1)
    {
      sub_1AC458E14(v78, v77, v76, v75);
    }

    v40 = *(TupleTypeMetadata2 + 48);
    (*v68)(v18, v39, a7);
    (*v67)(v85, v39 + v40, v11);
    sub_1AC502478(v70);
    sub_1AC45FD18(" {\n");
    if (qword_1ED6E4138 != -1)
    {
      swift_once();
    }

    sub_1AC466118(v41);
    sub_1AC458E14(v10[2], v10[3], v10[4], v10[5]);
    v42 = v69;
    *v69 = 0u;
    v42[1] = 0u;
    if (qword_1EB557A88 != -1)
    {
      swift_once();
    }

    v43 = qword_1EB557A90;

    v10[6] = v43;

    v10[7] = 0;
    v44 = v83;
    v71(v10, v18, v85);
    if (v44)
    {

      sub_1AC458E14(v78, v77, v76, v75);

      (*v64)(v85, v11);
      return (*v65)(v18, a7);
    }

    v83 = 0;
    v45 = v84;
    v46 = v79;

    v10[7] = v46;

    v10[6] = v45;
    v47 = v10[2];
    v48 = v10[3];
    v50 = v10[4];
    v49 = v10[5];
    v52 = v77;
    v51 = v78;
    v54 = v75;
    v53 = v76;
    sub_1AC506CBC(v78);
    sub_1AC458E14(v47, v48, v50, v49);
    v10[2] = v51;
    v10[3] = v52;
    v10[4] = v53;
    v10[5] = v54;
    v55 = *(v10[1] + 16);
    result = v55 - 2;
    if (v55 < 2)
    {
      break;
    }

    sub_1AC506BDC(result, v55);

    sub_1AC466118(v57);
    sub_1AC45FD18("}\n");
    v11 = v60;
    (*v64)(v85, v60);
    v18 = v61;
    a7 = v62;
    (*v65)(v61, v62);
    TupleTypeMetadata2 = v63;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_1AC506288(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_29_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_1AC505A58(a1, a2, sub_1AC492B38, v13, sub_1AC506D3C, v12, AssociatedTypeWitness, v9, AssociatedConformanceWitness);
}

uint64_t sub_1AC5063A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(*(a6 + 8) + 48))(a2, 1, a1, &type metadata for TextFormatEncodingVisitor, &off_1F211A548, a4);
  if (!v7)
  {
    return (*(*(a7 + 8) + 48))(a3, 2, a1, &type metadata for TextFormatEncodingVisitor, &off_1F211A548, a5);
  }

  return result;
}

unint64_t sub_1AC506458()
{
  OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_29_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = OUTLINED_FUNCTION_48_0();
  v2 = OUTLINED_FUNCTION_53();
  return sub_1AC505A58(v2, v3, v4, v5, v6, v7, AssociatedTypeWitness, v0, v9);
}

void sub_1AC506520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(*(a6 + 8) + 48))(a2, 1, a1, &type metadata for TextFormatEncodingVisitor, &off_1F211A548, a4);
  if (!v6)
  {
    sub_1AC5036A4();
  }
}

unint64_t sub_1AC5065B4()
{
  OUTLINED_FUNCTION_26_10();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = OUTLINED_FUNCTION_48_0();
  v2 = OUTLINED_FUNCTION_53();
  return sub_1AC505A58(v2, v3, v4, v5, v6, v7, AssociatedTypeWitness, v0, v9);
}

uint64_t sub_1AC506690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(*(a6 + 8) + 48))(a2, 1, a1, &type metadata for TextFormatEncodingVisitor, &off_1F211A548, a4);
  if (!v7)
  {
    return sub_1AC503704(a3, 2, a5, a7);
  }

  return result;
}

void sub_1AC506934(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v5 = WORD2(a2);
  v4 = a2;
  sub_1AC5018A0(&v3, &v3 + BYTE6(a2), a3);
}

uint64_t sub_1AC5069A0(uint64_t result, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = result;
  v4 = WORD2(a2);
  v3 = a2;
  if (BYTE6(a2))
  {
    memset(v5, 0, sizeof(v5));
    v8 = 1;
    memset(v9, 0, sizeof(v9));
    v10 = 0;
    v11 = 1;
    v15 = xmmword_1AC5205D0;
    v16 = xmmword_1AC5205D0;
    v6 = 0;
    v7[0] = &v2;
    v7[1] = BYTE6(a2);
    v7[2] = &v2;
    v7[3] = 0;
    sub_1AC450538(v5, v9 + 8);
    v12 = 100;
    v13 = 1;
    v14 = 100;
    sub_1AC502848(v7, 10);
    return sub_1AC45466C(v7);
  }

  return result;
}

void sub_1AC506A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_1AC51EB78();
  if (v7)
  {
    v8 = sub_1AC51EBA8();
    if (__OFSUB__(a1, v8))
    {
LABEL_13:
      __break(1u);
      return;
    }

    v7 += a1 - v8;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_1AC51EB98();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = &v7[v12];
  if (v7)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  sub_1AC5018A0(v7, v14, a4);
}

uint64_t sub_1AC506B38(uint64_t a1, uint64_t a2)
{
  result = sub_1AC51EB78();
  v5 = result;
  if (result)
  {
    result = sub_1AC51EBA8();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_1AC51EB98();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = v9 + v5;
  if (v5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return sub_1AC502788(v5, v11);
}

uint64_t sub_1AC506BDC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_1AC45AE04(result, 1);
  v8 = *v2;
  if (!v7)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v9 = *(v8 + 16);
  if (__OFSUB__(v9, a2))
  {
    goto LABEL_16;
  }

  result = sub_1AC48F51C((v8 + 32 + a2), v9 - a2, (v8 + 32 + v5));
  v10 = *(v8 + 16);
  v11 = __OFADD__(v10, v7);
  v12 = v10 + v7;
  if (!v11)
  {
    *(v8 + 16) = v12;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1AC506CBC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1AC506D88()
{
  result = qword_1EB559D18;
  if (!qword_1EB559D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559D18);
  }

  return result;
}

uint64_t sub_1AC506DDC(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v51 = a5;
  v52 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  sub_1AC500D74(a2, a3);
  sub_1AC45FE50(" {\n", 3, 2);
  if (qword_1ED6E4138 != -1)
  {
    OUTLINED_FUNCTION_5_26();
    swift_once();
  }

  sub_1AC466118(v12);
  v13 = a4[2];
  v14 = a4[3];
  v15 = a4[4];
  v16 = a4[5];
  v17 = a4[6];
  v18 = a4[7];
  __swift_project_boxed_opaque_existential_1(v50, v51);
  DynamicType = swift_getDynamicType();
  v20 = dynamic_cast_existential_1_conditional(DynamicType, DynamicType, &protocol descriptor for _ProtoNameProviding);
  v44 = v13;
  if (v20)
  {
    v22 = v20;
    v23 = v21;
    v24 = *(v21 + 8);
    sub_1AC506CBC(v13);

    v24(&v47, v22, v23);
    v42 = v48;
    v43 = v47;
  }

  else
  {
    sub_1AC506CBC(v13);

    v42 = 0u;
    v43 = 0u;
  }

  v25 = OUTLINED_FUNCTION_40_6();
  sub_1AC458E14(v25, v26, v27, v28);
  *(a4 + 1) = v43;
  *(a4 + 2) = v42;
  v29 = sub_1AC51ED58();

  a4[6] = v29;
  sub_1AC47782C(v50, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559798, &qword_1AC528E10);
  if (swift_dynamicCast())
  {
    v30 = *(&v48 + 1);
    v31 = v49;
    __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
    (*(v31 + 16))(&v45, v30, v31);
    v32 = v45;
    __swift_destroy_boxed_opaque_existential_1(&v47);
  }

  else
  {
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    sub_1AC4575D8(&v47, &qword_1EB5597A0, &qword_1AC528E18);
    v32 = 0;
  }

  a4[7] = v32;
  sub_1AC47782C(v50, &v47);
  if (swift_dynamicCast())
  {
    v34 = v46[0];
    v33 = v46[1];
    sub_1AC475F40(a4);
    sub_1AC493748(a4, v34, v33);
    sub_1AC4513F8(v34, v33);
  }

  else
  {
    v35 = v51;
    v36 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    (*(v36 + 72))(a4, &type metadata for TextFormatEncodingVisitor, &off_1F211A548, v35, v36);
  }

  a4[7] = v18;

  a4[6] = v17;
  v37 = OUTLINED_FUNCTION_40_6();
  sub_1AC458E14(v37, v38, v39, v40);
  a4[2] = v44;
  a4[3] = v14;
  a4[4] = v15;
  a4[5] = v16;
  sub_1AC500EC4();
  return __swift_destroy_boxed_opaque_existential_1(v50);
}

void sub_1AC507264()
{
  v1 = *(v0 + 80);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
    return;
  }

  *(v0 + 80) = v3;
  if (v3 < 0)
  {
    v7 = 11;
LABEL_9:
    v8 = sub_1AC477954();
    OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v8);
    *v9 = v7;
    swift_willThrow();
    return;
  }

  OUTLINED_FUNCTION_6_24();
  if (v5 || (v6 = *v4, *(v0 + 40) = v4 + 1, sub_1AC509980(), v6 != 123) && v6 != 60)
  {
    v7 = 0;
    goto LABEL_9;
  }
}

uint64_t sub_1AC50730C(uint64_t a1)
{
  sub_1AC509980();
  OUTLINED_FUNCTION_6_24();
  if (v2 || *v1 != 91)
  {
    return 0;
  }

  else
  {
    return sub_1AC50A578();
  }
}

void sub_1AC507364()
{
  OUTLINED_FUNCTION_6_24();
  if (!v1)
  {
    v2 = *v0;
    if (v2 == 59 || v2 == 44)
    {
      OUTLINED_FUNCTION_11_14(v0);
      sub_1AC509980();
    }
  }
}

uint64_t sub_1AC5073AC(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v7 = v5;
  v8 = v4;
  v9 = *(a1 + 8);
  v63 = *(a1 + 16);
  v10 = *(v4 + 40);
  v11 = *(v4 + 48);
  while (1)
  {
    while (v10 != v11)
    {
      OUTLINED_FUNCTION_17();
      if (!v13 & v12)
      {
        break;
      }

      OUTLINED_FUNCTION_11_16();
      if (!v13)
      {
        ++v10;
        goto LABEL_6;
      }

      if (v14 != 35)
      {
        break;
      }

      ++v10;
      while (v10 != v11)
      {
        OUTLINED_FUNCTION_10_0();
        if (v13 || v15 == 13)
        {
          goto LABEL_6;
        }
      }

      v10 = v11;
LABEL_6:
      *(v8 + 40) = v10;
    }

    if (v10 == v11)
    {
      break;
    }

    v16 = *v10;
    if (((v16 & 0xDF) - 91) >= 0xE6u)
    {
      v27 = v10;
      do
      {
        v28 = *v27;
        if ((v28 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5 && v28 != 95 && (v28 - 48) > 9)
        {
          break;
        }

        *(v8 + 40) = ++v27;
      }

      while (v27 != v11);
      for (i = v27; i != v11; *(v8 + 40) = i)
      {
        v31 = *i;
        if (v31 > 0x23)
        {
          break;
        }

        if (((1 << v31) & 0x100002600) != 0)
        {
          ++i;
        }

        else
        {
          if (v31 != 35)
          {
            break;
          }

          ++i;
          while (i != v11)
          {
            v33 = *i++;
            v32 = v33;
            if (v33 == 10 || v32 == 13)
            {
              goto LABEL_32;
            }
          }

          i = v11;
        }

LABEL_32:
        ;
      }

      v61[0] = v10;
      v61[1] = v27;
      v61[2] = "";
      v61[3] = 0;
      v62 = 258;
      if (*(v63 + 16))
      {
        v34 = sub_1AC4599C0(v61);
        if (v35)
        {
          return *(*(v63 + 56) + 8 * v34);
        }
      }

LABEL_56:
      if ((*(v8 + 72) & 1) == 0)
      {
        goto LABEL_108;
      }

      goto LABEL_57;
    }

    if (v16 != 91)
    {
      if ((v16 - 58) < 0xF7u)
      {
        if ((a4 & 0x100) == 0 && v16 == a4)
        {
          sub_1AC50812C();
          return 0;
        }

        goto LABEL_105;
      }

      v6 = v16 - 48;
      v36 = v10 + 1;
      v37 = 1;
      while (v36 != v11)
      {
        v38 = *v36;
        if ((v38 - 58) < 0xFFFFFFF6)
        {
          goto LABEL_54;
        }

        v6 = v38 + 10 * v6 - 48;
        ++v36;
        if (++v37 >= 10)
        {
          *(v8 + 40) = v10 + 10;
          goto LABEL_105;
        }
      }

      v36 = v11;
LABEL_54:
      *(v8 + 40) = v36;
      sub_1AC509980();
      if (*(v9 + 16))
      {
        sub_1AC45AA38(v6);
        if (v39)
        {
          return v6;
        }
      }

      goto LABEL_56;
    }

    v17 = v9;
    v18 = sub_1AC50A578();
    if (v7)
    {
      return v6;
    }

    v20 = v19;
    if (*(v8 + 24))
    {
      v21 = v18;
      sub_1AC47782C(v8, v58);
      v23 = v59;
      v22 = v60;
      __swift_project_boxed_opaque_existential_1(v58, v59);
      v24 = *(v22 + 16);
      v25 = v22;
      v7 = 0;
      v6 = v24(a2, a3, v21, v20, v23, v25);
      LOBYTE(v21) = v26;

      __swift_destroy_boxed_opaque_existential_1(v58);
      if ((v21 & 1) == 0)
      {
        return v6;
      }
    }

    else
    {
    }

    v9 = v17;
    if ((*(v8 + 73) & 1) == 0)
    {
LABEL_108:
      v52 = sub_1AC477954();
      OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v52);
      *v53 = 7;
      goto LABEL_109;
    }

LABEL_57:
    for (j = *(v8 + 40); j != v11; *(v8 + 40) = j)
    {
      OUTLINED_FUNCTION_17();
      if (!v13 & v12)
      {
        break;
      }

      OUTLINED_FUNCTION_11_16();
      if (v13)
      {
        if (v41 != 35)
        {
          break;
        }

        ++j;
        while (j != v11)
        {
          OUTLINED_FUNCTION_10_0();
          if (v13 || v42 == 13)
          {
            goto LABEL_62;
          }
        }

        j = v11;
      }

      else
      {
        ++j;
      }

LABEL_62:
      ;
    }

    if (j == v11 || *j != 58)
    {
      goto LABEL_87;
    }

LABEL_72:
    ++j;
LABEL_73:
    while (1)
    {
      *(v8 + 40) = j;
      if (j == v11)
      {
        break;
      }

      OUTLINED_FUNCTION_17();
      if (!v13 & v12)
      {
        break;
      }

      OUTLINED_FUNCTION_11_16();
      if (!v13)
      {
        goto LABEL_72;
      }

      if (v43 != 35)
      {
        break;
      }

      ++j;
      while (j != v11)
      {
        OUTLINED_FUNCTION_10_0();
        if (v13 || v44 == 13)
        {
          goto LABEL_73;
        }
      }

      j = v11;
    }

    if (j == v11)
    {
      goto LABEL_105;
    }

    v45 = *j;
    if (v45 == 123 || v45 == 60)
    {
LABEL_87:
      v46 = v7;
      sub_1AC50A8AC();
      goto LABEL_88;
    }

    v46 = v7;
    sub_1AC50A674(1);
LABEL_88:
    v7 = v46;
    if (v46)
    {
      return v6;
    }

    v10 = *(v8 + 40);
    v11 = *(v8 + 48);
    if (v10 != v11)
    {
      v47 = *v10;
      if (v47 == 59 || v47 == 44)
      {
LABEL_92:
        ++v10;
LABEL_93:
        while (1)
        {
          *(v8 + 40) = v10;
          if (v10 == v11)
          {
            break;
          }

          OUTLINED_FUNCTION_17();
          if (!v13 & v12)
          {
            break;
          }

          OUTLINED_FUNCTION_11_16();
          if (!v13)
          {
            goto LABEL_92;
          }

          if (v48 != 35)
          {
            break;
          }

          ++v10;
          while (v10 != v11)
          {
            OUTLINED_FUNCTION_10_0();
            if (v13 || v49 == 13)
            {
              goto LABEL_93;
            }
          }

          v10 = v11;
        }
      }
    }
  }

  if ((a4 & 0x100) != 0)
  {
    return 0;
  }

LABEL_105:
  v50 = sub_1AC477954();
  OUTLINED_FUNCTION_11(&type metadata for TextFormatDecodingError, v50);
  *v51 = 0;
LABEL_109:
  swift_willThrow();
  return v6;
}
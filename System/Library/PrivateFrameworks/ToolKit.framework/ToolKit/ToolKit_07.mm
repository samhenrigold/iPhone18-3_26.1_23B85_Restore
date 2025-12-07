uint64_t RestrictionContext.ValueSetDefinition.debugDescription.getter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 40);
  switch(*(v0 + 56))
  {
    case 1:
      v1 = *(v0 + 48);
      OUTLINED_FUNCTION_9_8();
      sub_1C906478C();

      OUTLINED_FUNCTION_25_5();
      OUTLINED_FUNCTION_142_0();
      v8 = v3;
      goto LABEL_9;
    case 2:
      v13 = 0x726575516B6E696CLL;
      v8 = OUTLINED_FUNCTION_112();
      goto LABEL_10;
    case 3:
      OUTLINED_FUNCTION_9_8();
      sub_1C906478C();

      OUTLINED_FUNCTION_25_5();
      OUTLINED_FUNCTION_142_0();
      v10 = OUTLINED_FUNCTION_203();
      MEMORY[0x1CCA81A90](v10);
      MEMORY[0x1CCA81A90](0x656D61726170202CLL, 0xED0000203A726574);
      v11 = OUTLINED_FUNCTION_112();
      MEMORY[0x1CCA81A90](v11);
      v6 = 46;
      v7 = 0xE100000000000000;
      goto LABEL_6;
    case 4:
      OUTLINED_FUNCTION_9_8();
      sub_1C906478C();

      OUTLINED_FUNCTION_25_5();
      OUTLINED_FUNCTION_142_0();
      v5 = OUTLINED_FUNCTION_112();
      MEMORY[0x1CCA81A90](v5);
      v6 = OUTLINED_FUNCTION_122_0();
LABEL_6:
      MEMORY[0x1CCA81A90](v6, v7);
      break;
    default:
      OUTLINED_FUNCTION_9_8();
      sub_1C906478C();

      OUTLINED_FUNCTION_25_5();
      v13 = v4 - 9;
      break;
  }

  v8 = v2;
LABEL_9:
  v9 = v1;
LABEL_10:
  MEMORY[0x1CCA81A90](v8, v9);
  MEMORY[0x1CCA81A90](41, 0xE100000000000000);
  return v13;
}

void ContentItemClassDescriptor.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  switch(*(v6 + 32))
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_147_0(a1, a2, a3, a4, a5, a6);

      sub_1C906478C();

      OUTLINED_FUNCTION_65_1();
      OUTLINED_FUNCTION_142_0();
      v12 = OUTLINED_FUNCTION_112();
      MEMORY[0x1CCA81A90](v12);

      v13 = OUTLINED_FUNCTION_122_0();
      MEMORY[0x1CCA81A90](v13);
      MEMORY[0x1CCA81A90](v8, v7);

      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_147_0(a1, a2, a3, a4, a5, a6);
      sub_1C906478C();

      OUTLINED_FUNCTION_65_1();
      OUTLINED_FUNCTION_142_0();
      v9 = OUTLINED_FUNCTION_112();
      MEMORY[0x1CCA81A90](v9);
      v10 = OUTLINED_FUNCTION_112();
      sub_1C8D06FF4(v10, v11, v8, v7, 3u);
LABEL_5:
      MEMORY[0x1CCA81A90](62, 0xE100000000000000);
      break;
    default:

      break;
  }

  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_199_0();
}

void TypeInstance.defaultValue()(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_135_1();
  switch(v3)
  {
    case 1:
    case 5:
    case 6:
      OUTLINED_FUNCTION_169_0();
      v41 = v4;
      TypeInstance.defaultValue()(a1);
      goto LABEL_27;
    case 2:
      *a1 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      OUTLINED_FUNCTION_183_0();

      sub_1C8D2B0FC(v5);
      return;
    case 3:
      v7 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 56;
      OUTLINED_FUNCTION_3_1();
      v10 = v9 & v8;
      v12 = (v11 + 63) >> 6;

      v13 = 0;
      v14 = MEMORY[0x1E69E7CC0];
      v15 = MEMORY[0x1E69E7CC0];
      break;
    default:
      goto LABEL_25;
  }

  while (v10)
  {
    v16 = v13;
LABEL_12:
    OUTLINED_FUNCTION_173_0();
    TypeInstance.defaultValue()(&v41);
    v17 = v41;
    if ((~v41 & 0xF000000000000007) != 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C8D010FC(0, *(v15 + 16) + 1, 1, v15);
        v15 = v21;
      }

      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        sub_1C8D010FC(v18 > 1, v19 + 1, 1, v15);
        v20 = v19 + 1;
        v15 = v22;
      }

      *(v15 + 16) = v20;
      *(v15 + 8 * v19 + 32) = v17;
      v13 = v16;
      v14 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1C8D2B114(v41);
      v13 = v16;
    }
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v16 >= v12)
    {
      break;
    }

    v10 = *(v7 + 8 * v16);
    ++v13;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  v23 = *(v15 + 16);
  if (!v23)
  {
LABEL_24:

LABEL_25:
    v25 = 0xF000000000000007;
    goto LABEL_26;
  }

  if (v23 == 1)
  {
    sub_1C8D2A240(v15, a1);
    OUTLINED_FUNCTION_183_0();

    return;
  }

  v41 = v14;
  sub_1C8CAF09C();
  v26 = 32;
  v27 = v41;
  do
  {
    OUTLINED_FUNCTION_50();
    v28 = swift_allocObject();
    TypedValue.typeIdentifier.getter();
    v41 = v27;
    v30 = *(v27 + 16);
    v29 = *(v27 + 24);
    if (v30 >= v29 >> 1)
    {
      OUTLINED_FUNCTION_176(v29);
      sub_1C8CAF09C();
      v27 = v41;
    }

    *(v27 + 16) = v30 + 1;
    *(v27 + 8 * v30 + 32) = v28;
    v26 += 8;
    --v23;
  }

  while (v23);
  OUTLINED_FUNCTION_87_0();
  sub_1C8CAF750(v27, v31, v32, sub_1C8CAEB90);
  v34 = v33;
  if (*(v33 + 16) > 1uLL)
  {
    OUTLINED_FUNCTION_50();
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    v36 = v35 | 0x6000000000000000;
    goto LABEL_39;
  }

  v37 = sub_1C8D39D38(v33);
  if (v39)
  {
LABEL_42:
    __break(1u);
    return;
  }

  if (*(v34 + 36) != v38)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v37 == 1 << *(v34 + 32))
  {

    goto LABEL_24;
  }

  sub_1C8D39D94(v37, v38, v34, &v41);

  v36 = v41;
LABEL_39:
  OUTLINED_FUNCTION_2();
  v40 = swift_allocObject();
  *(v40 + 16) = v36;
  *(v40 + 24) = v15;
  v25 = v40 | 0x3000000000000000;
LABEL_26:
  *a1 = v25;
LABEL_27:
  OUTLINED_FUNCTION_183_0();
}

void sub_1C8D375B4(uint64_t a1)
{
  v5 = a1;
  v6 = *(a1 + 16);
  v7 = *(*v2 + 16);
  if (__OFADD__(v7, v6))
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1C8E955B4(v7 + v6, 1);
  v1 = *v2;
  v8 = (*(*v2 + 24) >> 1) - *(*v2 + 16);
  OUTLINED_FUNCTION_368();
  sub_1C8D7C32C();
  if (v9 < v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v9)
  {
    v11 = *(v1 + 16);
    v12 = __OFADD__(v11, v9);
    v13 = v11 + v9;
    if (v12)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v1 + 16) = v13;
  }

  if (v9 != v8)
  {
    sub_1C8C9E7E4(v27);
LABEL_8:
    *v2 = v1;
    return;
  }

LABEL_11:
  v4 = *(v1 + 16);
  v5 = v28;
  v10 = v29;
  v3 = v30;
  v26 = v27;
  if (v31)
  {
    v14 = (v31 - 1) & v31;
    v15 = __clz(__rbit64(v31)) | (v30 << 6);
    v16 = (v29 + 64) >> 6;
LABEL_19:
    v19 = *(*(v26 + 48) + 8 * v15);

LABEL_20:
    if ((~v19 & 0xF000000000000007) != 0)
    {
      v20 = *(v1 + 24);
      v21 = v20 >> 1;
      if ((v20 >> 1) < v4 + 1)
      {
        sub_1C8D00D64(v20 > 1, v4 + 1, 1, v1);
        v1 = v25;
        v21 = *(v25 + 24) >> 1;
      }

      while (1)
      {
LABEL_23:
        if ((~v19 & 0xF000000000000007) == 0 || v4 >= v21)
        {
          *(v1 + 16) = v4;
          goto LABEL_20;
        }

        sub_1C8CD0FB0(v19);
        *(v1 + 32 + 8 * v4++) = v19;
        if (!v14)
        {
          break;
        }

        v23 = v3;
LABEL_34:
        v24 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v19 = *(*(v26 + 48) + ((v23 << 9) | (8 * v24)));
      }

      while (1)
      {
        v23 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if (v23 >= v16)
        {
          v14 = 0;
          v19 = 0xF000000000000007;
          goto LABEL_23;
        }

        v14 = *(v5 + 8 * v23);
        ++v3;
        if (v14)
        {
          v3 = v23;
          goto LABEL_34;
        }
      }

      __break(1u);
    }

    sub_1C8C9E7E4(v26);
    sub_1C8CD0FB0(v19);
    goto LABEL_8;
  }

LABEL_14:
  v16 = (v10 + 64) >> 6;
  while (1)
  {
    v17 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v17 >= v16)
    {
      v14 = 0;
      v19 = 0xF000000000000007;
      goto LABEL_20;
    }

    v18 = *(v5 + 8 * v17);
    ++v3;
    if (v18)
    {
      v14 = (v18 - 1) & v18;
      v15 = __clz(__rbit64(v18)) | (v17 << 6);
      v3 = v17;
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_1C8D3784C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_7_6(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C8E955E4(v4, 1);
  OUTLINED_FUNCTION_136_0();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_9();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = OUTLINED_FUNCTION_118_0(v3 + v7);
  memcpy(v9, v10, v11);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_137_1();
  if (!v5)
  {
    *(v3 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C8D378D8(uint64_t a1)
{
  v4 = a1;
  v5 = *(a1 + 16);
  v6 = *(*v2 + 16);
  if (__OFADD__(v6, v5))
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1C8E955FC(v6 + v5, 1);
  v1 = *v2;
  v7 = *(*v2 + 16);
  v8 = (*(*v2 + 24) >> 1) - v7;
  sub_1C8D7C54C(v36, *v2 + 136 * v7 + 32, v8, v4);
  if (v9 < v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v9)
  {
    v11 = *(v1 + 16);
    v12 = __OFADD__(v11, v9);
    v13 = v11 + v9;
    if (v12)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v1 + 16) = v13;
  }

  if (v9 != v8)
  {
    sub_1C8C9E7E4(v36[0]);
LABEL_8:
    *v2 = v1;
    return;
  }

LABEL_11:
  v5 = *(v1 + 16);
  v4 = v36[1];
  v10 = v37;
  v3 = v38;
  v27 = v36[0];
  if (v39)
  {
    v14 = (v39 - 1) & v39;
    v15 = __clz(__rbit64(v39)) | (v38 << 6);
    v16 = (v37 + 64) >> 6;
LABEL_19:
    v19 = (*(v27 + 48) + 136 * v15);
    memcpy(__dst, v19, sizeof(__dst));
    memmove(__src, v19, 0x88uLL);
    nullsub_1();
    sub_1C8D073F4(__dst, v33);
LABEL_20:
    memcpy(__dst, __src, sizeof(__dst));
    if (sub_1C8D3EF28(__dst) != 1)
    {
      v20 = *(v1 + 24);
      v21 = v20 >> 1;
      if ((v20 >> 1) < v5 + 1)
      {
        sub_1C8D010CC(v20 > 1, v5 + 1, 1, v1);
        v1 = v26;
        v21 = *(v26 + 24) >> 1;
      }

      while (1)
      {
LABEL_23:
        memcpy(v32, __src, sizeof(v32));
        memcpy(v33, __src, sizeof(v33));
        if (sub_1C8D3EF28(v33) == 1 || v5 >= v21)
        {
          *(v1 + 16) = v5;
          goto LABEL_20;
        }

        memcpy(v30, __src, sizeof(v30));
        memcpy(v31, v32, sizeof(v31));
        sub_1C8D073F4(v31, v29);
        sub_1C8D3F0C4(v30, &qword_1EC313968, &qword_1C906F3F0);
        memmove((v1 + 32 + 136 * v5++), v32, 0x88uLL);
        if (!v14)
        {
          break;
        }

        v23 = v3;
LABEL_34:
        v24 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v25 = (*(v27 + 48) + 136 * (v24 | (v23 << 6)));
        memcpy(v29, v25, sizeof(v29));
        memmove(__src, v25, 0x88uLL);
        nullsub_1();
        sub_1C8D073F4(v29, v28);
      }

      while (1)
      {
        v23 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if (v23 >= v16)
        {
          sub_1C8D3EF40(v29);
          memcpy(__src, v29, sizeof(__src));
          v14 = 0;
          goto LABEL_23;
        }

        v14 = *(v4 + 8 * v23);
        ++v3;
        if (v14)
        {
          v3 = v23;
          goto LABEL_34;
        }
      }

      __break(1u);
    }

    sub_1C8C9E7E4(v27);
    memcpy(v33, __src, sizeof(v33));
    sub_1C8D3F0C4(v33, &qword_1EC313968, &qword_1C906F3F0);
    goto LABEL_8;
  }

LABEL_14:
  v16 = (v10 + 64) >> 6;
  while (1)
  {
    v17 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v17 >= v16)
    {
      sub_1C8D3EF40(__src);
      v14 = 0;
      goto LABEL_20;
    }

    v18 = *(v4 + 8 * v17);
    ++v3;
    if (v18)
    {
      v14 = (v18 - 1) & v18;
      v15 = __clz(__rbit64(v18)) | (v17 << 6);
      v3 = v17;
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_1C8D37C5C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_7_6(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C8E95614(v4, 1);
  OUTLINED_FUNCTION_136_0();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_9();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312AB0, &qword_1C9068E90);
  OUTLINED_FUNCTION_185_0(v8);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_137_1();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C8D37D04(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_7_6(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C8E95B8C(v4, 1);
  OUTLINED_FUNCTION_136_0();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_9();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_118_0(v3 + 136 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_137_1();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1C8D37DC8(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t (*a3)(void))
{
  v5 = *(a1 + 16);
  v6 = *(*v3 + 16);
  result = v6 + v5;
  if (__OFADD__(v6, v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a2(result, 1);
  v9 = *v3;
  if (!*(a1 + 16))
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = a3(0);
  if (v10 < v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_8:
    *v3 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v12 = __OFADD__(v11, v5);
  v13 = v11 + v5;
  if (!v12)
  {
    *(v9 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1C8D37EE0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1C8E95C5C(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 8 * v7 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1C8D37F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63890;
  if (!qword_1EDA63890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63890);
  }

  return result;
}

unint64_t sub_1C8D37FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3134E8;
  if (!qword_1EC3134E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3134E8);
  }

  return result;
}

unint64_t sub_1C8D38040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66988;
  if (!qword_1EDA66988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66988);
  }

  return result;
}

unint64_t sub_1C8D38094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6A040;
  if (!qword_1EDA6A040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6A040);
  }

  return result;
}

unint64_t sub_1C8D380E8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_57(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3134F8, &qword_1C906BB38);
    v4();
    OUTLINED_FUNCTION_181();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C8D38158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CDE8;
  if (!qword_1EDA6CDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CDE8);
  }

  return result;
}

unint64_t sub_1C8D381AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6A048;
  if (!qword_1EDA6A048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6A048);
  }

  return result;
}

void sub_1C8D38200()
{
  OUTLINED_FUNCTION_164();
  v1 = v0;
  if (*(v0 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313980, &unk_1C906F400), OUTLINED_FUNCTION_45_2(), v2 = sub_1C906475C(), v3 = v2, (v88 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v86 = v1;
    v87 = v1 + 32;
    v91 = v2 + 56;
LABEL_4:
    if (v4 >= *(v1 + 16))
    {
LABEL_256:
      __break(1u);
    }

    else
    {
      v6 = *(v87 + 8 * v4);
      sub_1C9064D7C();
      v92 = v6;
      v7 = v6 >> 61;
      v90 = v4 + 1;
      switch(v6 >> 61)
      {
        case 1uLL:
          v13 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          MEMORY[0x1CCA82810](1);
          switch(v13)
          {
            case 0:
              v14 = 0;
              goto LABEL_40;
            case 1:
              v14 = 1;
              goto LABEL_40;
            case 2:
              v14 = 2;
              goto LABEL_40;
            case 3:
              v14 = 3;
              goto LABEL_40;
            case 4:
              v14 = 4;
              goto LABEL_40;
            case 5:
              v14 = 5;
              goto LABEL_40;
            case 6:
              v14 = 6;
              goto LABEL_40;
            case 7:
              v14 = 7;
              goto LABEL_40;
            case 8:
              v14 = 8;
              goto LABEL_40;
            case 9:
              v14 = 9;
              goto LABEL_40;
            case 10:
              v14 = 10;
              goto LABEL_40;
            case 11:
              v14 = 11;
              goto LABEL_40;
            case 12:
              v14 = 12;
              goto LABEL_40;
            case 13:
              v14 = 13;
              goto LABEL_40;
            case 14:
              v14 = 14;
              goto LABEL_40;
            case 15:
              v14 = 16;
LABEL_40:
              MEMORY[0x1CCA82810](v14);
              goto LABEL_41;
            default:
              v75 = *(v13 + 16);
              MEMORY[0x1CCA82810](15);
              v102[0] = v75;

              TypeIdentifier.hash(into:)(v97);
              goto LABEL_42;
          }

        case 2uLL:
          MEMORY[0x1CCA82810](2);

          OUTLINED_FUNCTION_104_2();
          sub_1C9063FBC();
          goto LABEL_24;
        case 3uLL:
          v9 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v10 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
          v78 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x48);
          v79 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x58);
          v80 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x68);
          v81 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
          v77 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x78);
          v83 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
          memcpy(__dst, ((v6 & 0x1FFFFFFFFFFFFFFFLL) + 136), 0x51uLL);
          MEMORY[0x1CCA82810](3);

          sub_1C9063FBC();
          v11 = *(v9 + 16);
          MEMORY[0x1CCA82810](v11);
          if (v11)
          {
            v12 = v9 + 40;
            do
            {

              sub_1C9063FBC();

              v12 += 16;
              --v11;
            }

            while (v11);
          }

          sub_1C9063FBC();
          sub_1C9064D9C();
          if (v10)
          {
            sub_1C9063FBC();
          }

          v5 = v91;
          MEMORY[0x1CCA82810](v78);
          sub_1C9064D9C();
          if (v79)
          {
            sub_1C9063FBC();
          }

          if (v80)
          {
            MEMORY[0x1CCA82810](1);
            sub_1C9063FBC();
          }

          else
          {
            MEMORY[0x1CCA82810](0);
          }

          MEMORY[0x1CCA82810](v81);
          if (v83)
          {
            __src[0] = v77;
            __src[1] = v83;
            memcpy(&__src[2], __dst, 0x51uLL);
            memcpy(v104, __src, 0x61uLL);
            sub_1C9064D9C();
            sub_1C8CC1340(__src, v102);
            ContainerDefinition.hash(into:)(v97);
            memcpy(v102, v104, 0x61uLL);
            sub_1C8CC15FC(v102);
          }

          else
          {
            sub_1C9064D9C();
          }

          goto LABEL_24;
        case 4uLL:
          MEMORY[0x1CCA82810](4);

          OUTLINED_FUNCTION_104_2();
LABEL_24:
          sub_1C9063FBC();
          break;
        default:
          v8 = *(v6 + 16);
          MEMORY[0x1CCA82810](0);
          LOBYTE(v102[0]) = v8;
          TypeIdentifier.PrimitiveTypeIdentifier.hash(into:)();
LABEL_41:

          break;
      }

LABEL_42:
      v15 = sub_1C9064DBC() & ~(-1 << *(v3 + 32));
      OUTLINED_FUNCTION_161_0();
      if ((v18 & v17) != 0)
      {
        v20 = ~v19;
        do
        {
          v21 = *(*(v3 + 48) + 8 * v15);
          switch(v21 >> 61)
          {
            case 1uLL:
              if (v7 != 1)
              {
                goto LABEL_232;
              }

              v43 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v44 = *((v92 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              switch(v43)
              {
                case 0uLL:
                  if (v44)
                  {
                    goto LABEL_146;
                  }

                  goto LABEL_245;
                case 1uLL:
                  if (v44 == 1)
                  {
                    goto LABEL_245;
                  }

                  goto LABEL_146;
                case 2uLL:
                  if (v44 == 2)
                  {
                    goto LABEL_245;
                  }

                  goto LABEL_146;
                case 3uLL:
                  if (v44 == 3)
                  {
                    goto LABEL_245;
                  }

                  goto LABEL_146;
                case 4uLL:
                  if (v44 == 4)
                  {
                    goto LABEL_245;
                  }

                  goto LABEL_146;
                case 5uLL:
                  if (v44 == 5)
                  {
                    goto LABEL_245;
                  }

                  goto LABEL_146;
                case 6uLL:
                  if (v44 == 6)
                  {
                    goto LABEL_245;
                  }

                  goto LABEL_146;
                case 7uLL:
                  if (v44 == 7)
                  {
                    goto LABEL_245;
                  }

                  goto LABEL_146;
                case 8uLL:
                  if (v44 != 8)
                  {
                    goto LABEL_146;
                  }

LABEL_245:

                  sub_1C8D3F130(v43);
                  sub_1C8D3F130(v43);
                  goto LABEL_246;
                case 9uLL:
                  if (v44 != 9)
                  {
                    goto LABEL_146;
                  }

                  sub_1C8D3F130(9uLL);
                  v76 = 9;
                  goto LABEL_248;
                case 0xAuLL:
                  if (v44 != 10)
                  {
                    goto LABEL_146;
                  }

                  sub_1C8D3F130(0xAuLL);
                  v76 = 10;
                  goto LABEL_248;
                case 0xBuLL:
                  if (v44 != 11)
                  {
                    goto LABEL_146;
                  }

                  sub_1C8D3F130(0xBuLL);
                  v76 = 11;
                  goto LABEL_248;
                case 0xCuLL:
                  if (v44 != 12)
                  {
                    goto LABEL_146;
                  }

                  sub_1C8D3F130(0xCuLL);
                  v76 = 12;
                  goto LABEL_248;
                case 0xDuLL:
                  if (v44 != 13)
                  {
                    goto LABEL_146;
                  }

                  sub_1C8D3F130(0xDuLL);
                  v76 = 13;
                  goto LABEL_248;
                case 0xEuLL:
                  if (v44 != 14)
                  {
                    goto LABEL_146;
                  }

                  sub_1C8D3F130(0xEuLL);
                  v76 = 14;
                  goto LABEL_248;
                case 0xFuLL:
                  if (v44 != 15)
                  {
                    goto LABEL_146;
                  }

                  sub_1C8D3F130(0xFuLL);
                  v76 = 15;
LABEL_248:
                  sub_1C8D3F130(v76);

                  goto LABEL_249;
                default:
                  if (v44 >= 0x10)
                  {
                    v46 = *(v44 + 16);
                    v102[0] = *(v43 + 16);
                    __src[0] = v46;

                    sub_1C8D3F120(v44);

                    sub_1C8D3F120(v44);
                    sub_1C8D3F120(v43);
                    v47 = OUTLINED_FUNCTION_82_0();
                    v49 = static TypeIdentifier.== infix(_:_:)(v47, v48);
                    sub_1C8D3F130(v43);
                    sub_1C8D3F130(v44);

                    sub_1C8D3F130(v44);
                    if (v49)
                    {
LABEL_246:

                      goto LABEL_250;
                    }
                  }

                  else
                  {
LABEL_146:
                    sub_1C8D3F120(*((v92 & 0x1FFFFFFFFFFFFFFFLL) + 0x10));
                    sub_1C8D3F120(v43);

                    sub_1C8D3F130(v43);
                    sub_1C8D3F130(v44);
                  }

                  break;
              }

              goto LABEL_232;
            case 2uLL:
              if (v7 != 2)
              {
                goto LABEL_232;
              }

              v25 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v26 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
              v27 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
              v28 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
              v29 = *((v92 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
              v30 = *((v92 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
              v31 = v25 == *((v92 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) && v26 == *((v92 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
              if (!v31 && (sub_1C9064C2C() & 1) == 0)
              {
                goto LABEL_232;
              }

              if (v27 == v29 && v28 == v30)
              {
                goto LABEL_249;
              }

              OUTLINED_FUNCTION_104_2();
LABEL_67:
              if (sub_1C9064C2C())
              {
                goto LABEL_249;
              }

              goto LABEL_232;
            case 3uLL:
              v33 = v21 & 0x1FFFFFFFFFFFFFFFLL;
              memcpy(__dst, ((v21 & 0x1FFFFFFFFFFFFFFFLL) + 16), 0x61uLL);
              memcpy(v104, ((v21 & 0x1FFFFFFFFFFFFFFFLL) + 120), 0x61uLL);
              if (v7 != 3)
              {
                goto LABEL_231;
              }

              v34 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0xE8);
              v89 = *(v33 + 224);
              memcpy(v102, ((v92 & 0x1FFFFFFFFFFFFFFFLL) + 16), sizeof(v102));
              v35 = __dst[0] == v102[0] && __dst[1] == v102[1];
              if (!v35 && (sub_1C9064C2C() & 1) == 0)
              {
                goto LABEL_231;
              }

              v36 = *(__dst[2] + 16);
              if (v36 != *(v102[2] + 16))
              {
                goto LABEL_231;
              }

              if (v36)
              {
                v37 = __dst[2] == v102[2];
              }

              else
              {
                v37 = 1;
              }

              if (v37)
              {
                goto LABEL_88;
              }

              v38 = (__dst[2] + 40);
              v39 = (v102[2] + 40);
              break;
            case 4uLL:
              if (v7 != 4)
              {
                goto LABEL_232;
              }

              if (*((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) != *((v92 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) || *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) != *((v92 & 0x1FFFFFFFFFFFFFFFLL) + 0x18))
              {
                goto LABEL_67;
              }

              goto LABEL_249;
            default:
              if (v7)
              {
                goto LABEL_232;
              }

              v22 = *(v21 + 16);
              v23 = *(v92 + 16);
              switch(*(v21 + 16))
              {
                case 0x17:
                  if (v23 == 23)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x18:
                  if (v23 == 24)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x19:
                  if (v23 == 25)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x1A:
                  if (v23 == 26)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x1B:
                  if (v23 == 27)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x1C:
                  if (v23 == 28)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x1D:
                  if (v23 == 29)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x1E:
                  if (v23 == 30)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x1F:
                  if (v23 == 31)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x20:
                  if (v23 == 32)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x21:
                  if (v23 == 33)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x22:
                  if (v23 == 34)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x23:
                  if (v23 == 35)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x24:
                  if (v23 == 36)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x25:
                  if (v23 == 37)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x26:
                  if (v23 == 38)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x27:
                  if (v23 == 39)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x28:
                  if (v23 == 40)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x29:
                  if (v23 == 41)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x2A:
                  if (v23 == 42)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x2B:
                  if (v23 == 43)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x2C:
                  if (v23 == 44)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x2D:
                  if (v23 == 45)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x2E:
                  if (v23 == 46)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                default:
                  if ((v23 - 23) < 0x18)
                  {
                    goto LABEL_232;
                  }

                  if (v22 == 22)
                  {
                    if (v23 != 22)
                    {
                      goto LABEL_232;
                    }
                  }

                  else if (v23 == 22 || v22 != v23)
                  {
                    goto LABEL_232;
                  }

LABEL_244:

LABEL_249:

LABEL_250:
                  v4 = v90;
                  v1 = v86;
                  if (v90 == v88)
                  {
                    goto LABEL_254;
                  }

                  goto LABEL_4;
              }
          }

          do
          {
            if (!v36)
            {
              __break(1u);
              goto LABEL_256;
            }

            v40 = *(v38 - 1) == *(v39 - 1) && *v38 == *v39;
            if (!v40 && (sub_1C9064C2C() & 1) == 0)
            {
              goto LABEL_231;
            }

            v38 += 2;
            v39 += 2;
            --v36;
          }

          while (v36);
LABEL_88:
          v41 = __dst[3] == v102[3] && __dst[4] == v102[4];
          if (v41 || (sub_1C9064C2C() & 1) != 0)
          {
            if (__dst[6])
            {
              if (!v102[6])
              {
                goto LABEL_231;
              }

              v42 = __dst[5] == v102[5] && __dst[6] == v102[6];
              if (!v42 && (sub_1C9064C2C() & 1) == 0)
              {
                goto LABEL_231;
              }
            }

            else if (v102[6])
            {
              goto LABEL_231;
            }

            if (LOBYTE(__dst[7]) != LOBYTE(v102[7]))
            {
              goto LABEL_231;
            }

            if (__dst[9])
            {
              if (!v102[9])
              {
                goto LABEL_231;
              }

              v45 = __dst[8] == v102[8] && __dst[9] == v102[9];
              if (!v45 && (sub_1C9064C2C() & 1) == 0)
              {
                goto LABEL_231;
              }
            }

            else if (v102[9])
            {
              goto LABEL_231;
            }

            if (__dst[11])
            {
              if (v102[11])
              {
                if (__dst[10] == v102[10] && __dst[11] == v102[11])
                {
                  swift_retain_n();

                  v57 = OUTLINED_FUNCTION_82_0();
                  sub_1C8D3EFB8(v57, v58);
                  sub_1C8CC1340(__dst, __src);
                  v59 = OUTLINED_FUNCTION_82_0();
                  sub_1C8CC1340(v59, v60);
                }

                else
                {
                  v51 = sub_1C9064C2C();
                  swift_retain_n();

                  v52 = OUTLINED_FUNCTION_82_0();
                  sub_1C8D3EFB8(v52, v53);
                  sub_1C8CC1340(__dst, __src);
                  v54 = OUTLINED_FUNCTION_82_0();
                  sub_1C8CC1340(v54, v55);
                  if ((v51 & 1) == 0)
                  {
                    sub_1C8CC15FC(v102);
                    sub_1C8CC15FC(__dst);
                    goto LABEL_224;
                  }
                }

LABEL_220:
                v65 = LOBYTE(__dst[12]);
                v66 = LOBYTE(v102[12]);
                sub_1C8CC15FC(v102);
                sub_1C8CC15FC(__dst);
                if (v65 == v66)
                {
                  v85 = v104[0];
                  memcpy(v99, &v104[2], sizeof(v99));
                  v84 = v102[13];
                  v67 = v102[14];
                  memcpy(v98, &v102[15], sizeof(v98));
                  if (v104[1])
                  {
                    __src[0] = v104[0];
                    __src[1] = v104[1];
                    v82 = v104[1];
                    OUTLINED_FUNCTION_187_0();
                    memcpy(v97, __src, 0x61uLL);
                    v68 = v67;
                    if (v67)
                    {
                      memcpy(&v93[2], &v102[15], 0x51uLL);
                      v93[0] = v84;
                      v93[1] = v67;
                      sub_1C8D3F068();
                      sub_1C8D3F068();
                      sub_1C8D3F068();
                      v69 = static ContainerDefinition.== infix(_:_:)(v97);
                      memcpy(v94, v93, 0x61uLL);
                      sub_1C8CC15FC(v94);
                      memcpy(v95, v97, 0x61uLL);
                      sub_1C8CC15FC(v95);
                      v96[0] = v85;
                      v96[1] = v82;
                      memcpy(&v96[2], v99, 0x51uLL);
                      sub_1C8D3F0C4(v96, &qword_1EC312EF8, &unk_1C90839D0);
                      if ((v69 & 1) == 0)
                      {
                        goto LABEL_224;
                      }

LABEL_235:
                      if (v89 == v102[26] && v34 == v102[27])
                      {

                        sub_1C8D3F014(v102);
                        goto LABEL_253;
                      }

                      v71 = sub_1C9064C2C();

                      sub_1C8D3F014(v102);
                      if (v71)
                      {
LABEL_253:

                        v5 = v91;
                        goto LABEL_250;
                      }

LABEL_230:

                      goto LABEL_231;
                    }

                    sub_1C8D3F068();
                    sub_1C8D3F068();
                    sub_1C8D3F068();

                    memcpy(v96, v97, 0x61uLL);
                    sub_1C8CC15FC(v96);
                  }

                  else
                  {
                    if (!v102[14])
                    {
                      __src[0] = v104[0];
                      __src[1] = 0;
                      OUTLINED_FUNCTION_187_0();
                      sub_1C8D3F068();
                      sub_1C8D3F068();
                      sub_1C8D3F0C4(__src, &qword_1EC312EF8, &unk_1C90839D0);
                      goto LABEL_235;
                    }

                    v68 = v102[14];
                    v82 = 0;
                    sub_1C8D3F068();
                    sub_1C8D3F068();
                  }

                  __src[0] = v85;
                  __src[1] = v82;
                  memcpy(&__src[2], v99, 0x51uLL);
                  __src[13] = v84;
                  __src[14] = v68;
                  memcpy(v101, v98, sizeof(v101));
                  sub_1C8D3F0C4(__src, &qword_1EC313988, &qword_1C906F410);
                }

                else
                {
LABEL_224:
                }

                sub_1C8D3F014(v102);
                goto LABEL_230;
              }
            }

            else
            {
              if (!v102[11])
              {
                swift_retain_n();

                v61 = OUTLINED_FUNCTION_82_0();
                sub_1C8D3EFB8(v61, v62);
                sub_1C8CC1340(__dst, __src);
                v63 = OUTLINED_FUNCTION_82_0();
                sub_1C8CC1340(v63, v64);
                swift_bridgeObjectRelease_n();
                goto LABEL_220;
              }
            }
          }

LABEL_231:
          v5 = v91;
LABEL_232:
          v15 = (v15 + 1) & v20;
          OUTLINED_FUNCTION_161_0();
        }

        while ((v17 & v18) != 0);
      }

      *(v5 + 8 * v16) = v17 | v18;
      *(*(v3 + 48) + 8 * v15) = v92;
      v72 = *(v3 + 16);
      v73 = __OFADD__(v72, 1);
      v74 = v72 + 1;
      if (!v73)
      {
        *(v3 + 16) = v74;
        goto LABEL_250;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_254:

    OUTLINED_FUNCTION_163();
  }
}

uint64_t sub_1C8D39264(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313978, &qword_1C906F3F8);
  result = sub_1C906475C();
  v3 = result;
  v18 = *(a1 + 16);
  if (!v18)
  {
LABEL_15:

    return v3;
  }

  v4 = 0;
  v5 = result + 56;
  while (v4 < *(a1 + 16))
  {
    v6 = v4 + 1;
    v7 = *(a1 + 32 + 8 * v4);
    v20 = v7;
    v19[9] = v7;
    sub_1C9064D7C();

    TypeInstance.hash(into:)();
    result = sub_1C9064DBC();
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) == 0)
      {
        break;
      }

      v19[0] = *(*(v3 + 48) + 8 * v9);

      static TypeInstance.== infix(_:_:)(v19, &v20);
      v14 = v13;

      if (v14)
      {

        goto LABEL_12;
      }

      result = v9 + 1;
    }

    *(v5 + 8 * v10) = v12 | v11;
    *(*(v3 + 48) + 8 * v9) = v7;
    v15 = *(v3 + 16);
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      goto LABEL_17;
    }

    *(v3 + 16) = v17;
LABEL_12:
    v4 = v6;
    if (v6 == v18)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_1C8D39400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_184_0();
  v33 = v32;
  if (!*(v32 + 16))
  {
    goto LABEL_41;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313950, &qword_1C906F3E8);
  v34 = sub_1C906475C();
  v35 = v34;
  v57 = *(v33 + 16);
  if (!v57)
  {
    goto LABEL_41;
  }

  v36 = 0;
  v37 = v34 + 56;
  v55 = v33;
  v56 = v33 + 32;
  while (1)
  {
    if (v36 >= *(v33 + 16))
    {
      __break(1u);
      goto LABEL_43;
    }

    v38 = *(v56 + v36);
    sub_1C9064D7C();
    if (v38 == 5)
    {
      MEMORY[0x1CCA82810](0);
    }

    else
    {
      MEMORY[0x1CCA82810](1);
      if (v38 == 4)
      {
        sub_1C9064D9C();
      }

      else
      {
        sub_1C9064D9C();
        OUTLINED_FUNCTION_166_1();
        switch(v38)
        {
          case 1:
            OUTLINED_FUNCTION_121();
            break;
          case 2:
            OUTLINED_FUNCTION_165_0();
            break;
          case 3:
            OUTLINED_FUNCTION_66_2();
            break;
          default:
            break;
        }

        sub_1C9063FBC();
      }
    }

    v39 = sub_1C9064DBC();
    v40 = ~(-1 << *(v35 + 32));
    v41 = v39 & v40;
    v42 = (v39 & v40) >> 6;
    v43 = *(v37 + 8 * v42);
    v44 = 1 << (v39 & v40);
    if ((v44 & v43) == 0)
    {
      break;
    }

    while (1)
    {
      v45 = *(v35 + 48);
      v46 = *(v45 + v41);
      if (v46 == 5)
      {
        if (v38 == 5)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      }

      if (v38 != 5)
      {
        break;
      }

LABEL_35:
      v41 = (v41 + 1) & v40;
      v42 = v41 >> 6;
      v43 = *(v37 + 8 * (v41 >> 6));
      v44 = 1 << v41;
      if ((v43 & (1 << v41)) == 0)
      {
        goto LABEL_36;
      }
    }

    if (v46 == 4)
    {
      if (v38 == 4)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    v47 = 0xE700000000000000;
    v48 = 0x6D756E45707061;
    switch(*(v45 + v41))
    {
      case 1:
        v48 = 0x6E456E6F69746361;
        v47 = 0xEA00000000006D75;
        break;
      case 2:
        v48 = 0x4572656767697274;
        v47 = 0xEB000000006D756ELL;
        break;
      case 3:
        v48 = 0x6E776F6E6B6E75;
        break;
      default:
        break;
    }

    v33 = 0xE700000000000000;
    v49 = 0x6D756E45707061;
    switch(v38)
    {
      case 0:
        break;
      case 1:
        v49 = 0x6E456E6F69746361;
        v33 = 0xEA00000000006D75;
        break;
      case 2:
        v49 = 0x4572656767697274;
        v33 = 0xEB000000006D756ELL;
        break;
      case 3:
        v49 = 0x6E776F6E6B6E75;
        break;
      default:
        goto LABEL_35;
    }

    if (v48 != v49 || v47 != v33)
    {
      v51 = sub_1C9064C2C();

      v33 = v55;
      if (v51)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    v33 = v55;
LABEL_38:
    if (++v36 == v57)
    {
LABEL_41:

      OUTLINED_FUNCTION_182();
      return;
    }
  }

LABEL_36:
  *(v37 + 8 * v42) = v43 | v44;
  *(*(v35 + 48) + v41) = v38;
  v52 = *(v35 + 16);
  v53 = __OFADD__(v52, 1);
  v54 = v52 + 1;
  if (!v53)
  {
    *(v35 + 16) = v54;
    goto LABEL_38;
  }

LABEL_43:
  __break(1u);
}

uint64_t sub_1C8D3977C(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C9064DBC();
  OUTLINED_FUNCTION_3_1();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  if (v5)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1CCA82810](v9);
    }

    v5 = *(a2 + 56 + 8 * v11);
    ++v10;
    if (v5)
    {
      v10 = v11;
      do
      {
LABEL_7:
        v5 &= v5 - 1;
        sub_1C9064D7C();

        TypedValue.hash(into:)();
        v12 = sub_1C9064DBC();

        v9 ^= v12;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8D398B8(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C9064DBC();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1CCA82810](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_1C9064D7C();

        TypeInstance.hash(into:)();
        v11 = sub_1C9064DBC();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8D39A08(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C9064DBC();
  OUTLINED_FUNCTION_3_1();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  if (v5)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1CCA82810](v9);
    }

    v5 = *(a2 + 56 + 8 * v11);
    ++v10;
    if (v5)
    {
      v10 = v11;
LABEL_6:
      v12 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v13 = *(a2 + 48) + ((v10 << 10) | (16 * v12));
      v14 = *v13;
      v15 = *(v13 + 8);
      sub_1C9064D7C();
      switch(v15 >> 5)
      {
        case 1u:
          v16 = 3;
          goto LABEL_14;
        case 2u:
          v17 = 4;
          goto LABEL_11;
        case 3u:
          v17 = 5;
LABEL_11:
          MEMORY[0x1CCA82810](v17);

          sub_1C8D3977C(__srca, v14);
          sub_1C9064D9C();
          goto LABEL_15;
        case 4u:
          v16 = 6;
          goto LABEL_14;
        case 5u:
          v16 = 7;
          goto LABEL_14;
        case 6u:
          MEMORY[0x1CCA82810]((v14 | v15 ^ 0xC0) != 0);
          goto LABEL_15;
        default:
          v16 = 2;
LABEL_14:
          MEMORY[0x1CCA82810](v16);

          sub_1C8D3977C(__srca, v14);
LABEL_15:
          v18 = sub_1C9064DBC();
          result = sub_1C8D07168(v14, v15);
          v9 ^= v18;
          if (!v5)
          {
            continue;
          }

          goto LABEL_6;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8D39BF8(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C9064DBC();
  OUTLINED_FUNCTION_3_1();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  if (v5)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1CCA82810](v9);
    }

    v5 = *(a2 + 56 + 8 * v11);
    ++v10;
    if (v5)
    {
      v10 = v11;
      do
      {
LABEL_7:
        v5 &= v5 - 1;
        sub_1C9064D7C();

        sub_1C9063FBC();
        v12 = sub_1C9064DBC();

        v9 ^= v12;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8D39D94@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    *a4 = *(*(a3 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_1C8D39DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66980;
  if (!qword_1EDA66980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66980);
  }

  return result;
}

unint64_t sub_1C8D39E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B9F0;
  if (!qword_1EDA6B9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B9F0);
  }

  return result;
}

unint64_t sub_1C8D39ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69B38;
  if (!qword_1EDA69B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69B38);
  }

  return result;
}

unint64_t sub_1C8D39F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313578;
  if (!qword_1EC313578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313578);
  }

  return result;
}

unint64_t sub_1C8D39F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63610;
  if (!qword_1EDA63610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63610);
  }

  return result;
}

unint64_t sub_1C8D39FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63618;
  if (!qword_1EDA63618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63618);
  }

  return result;
}

unint64_t sub_1C8D3A01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA635F8;
  if (!qword_1EDA635F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA635F8);
  }

  return result;
}

unint64_t sub_1C8D3A070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62FB8;
  if (!qword_1EDA62FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62FB8);
  }

  return result;
}

unint64_t sub_1C8D3A0C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69B10;
  if (!qword_1EDA69B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69B10);
  }

  return result;
}

unint64_t sub_1C8D3A118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62FB0;
  if (!qword_1EDA62FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62FB0);
  }

  return result;
}

unint64_t sub_1C8D3A19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69B50;
  if (!qword_1EDA69B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69B50);
  }

  return result;
}

unint64_t sub_1C8D3A1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA635F0;
  if (!qword_1EDA635F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA635F0);
  }

  return result;
}

unint64_t sub_1C8D3A244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA635E8;
  if (!qword_1EDA635E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA635E8);
  }

  return result;
}

unint64_t sub_1C8D3A300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3135C8;
  if (!qword_1EC3135C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3135C8);
  }

  return result;
}

unint64_t sub_1C8D3A354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3135E0;
  if (!qword_1EC3135E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3135E0);
  }

  return result;
}

unint64_t sub_1C8D3A3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3135F8;
  if (!qword_1EC3135F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3135F8);
  }

  return result;
}

unint64_t sub_1C8D3A3FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313600;
  if (!qword_1EC313600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313600);
  }

  return result;
}

unint64_t sub_1C8D3A450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313608;
  if (!qword_1EC313608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313608);
  }

  return result;
}

unint64_t sub_1C8D3A4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313610;
  if (!qword_1EC313610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313610);
  }

  return result;
}

unint64_t sub_1C8D3A4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313620;
  if (!qword_1EC313620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313620);
  }

  return result;
}

unint64_t sub_1C8D3A54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313628;
  if (!qword_1EC313628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313628);
  }

  return result;
}

unint64_t sub_1C8D3A5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313630;
  if (!qword_1EC313630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313630);
  }

  return result;
}

unint64_t sub_1C8D3A5F4()
{
  result = qword_1EDA6D4A0;
  if (!qword_1EDA6D4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC312558, &qword_1C9066990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D4A0);
  }

  return result;
}

unint64_t sub_1C8D3A658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313648;
  if (!qword_1EC313648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313648);
  }

  return result;
}

unint64_t sub_1C8D3A6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313650;
  if (!qword_1EC313650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313650);
  }

  return result;
}

unint64_t sub_1C8D3A700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313658;
  if (!qword_1EC313658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313658);
  }

  return result;
}

unint64_t sub_1C8D3A754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60A68;
  if (!qword_1EDA60A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60A68);
  }

  return result;
}

unint64_t sub_1C8D3A7A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313660;
  if (!qword_1EC313660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313660);
  }

  return result;
}

unint64_t sub_1C8D3A858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60A88;
  if (!qword_1EDA60A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60A88);
  }

  return result;
}

unint64_t sub_1C8D3A8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313678;
  if (!qword_1EC313678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313678);
  }

  return result;
}

uint64_t sub_1C8D3A930(uint64_t result)
{
  v1 = *(result + 88) & 0x10101010101 | 0xC000000000000000;
  *(result + 56) &= 7uLL;
  *(result + 88) = v1;
  return result;
}

unint64_t sub_1C8D3A958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313680;
  if (!qword_1EC313680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313680);
  }

  return result;
}

uint64_t sub_1C8D3A9AC(uint64_t result)
{
  v1 = *(result + 88) & 0x10101010101 | 0xA000000000000000;
  *(result + 56) &= 7uLL;
  *(result + 88) = v1;
  return result;
}

unint64_t sub_1C8D3A9D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313688;
  if (!qword_1EC313688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313688);
  }

  return result;
}

uint64_t sub_1C8D3AA2C(uint64_t result)
{
  v1 = *(result + 88) & 0x10101010101 | 0x8000000000000000;
  *(result + 56) &= 7uLL;
  *(result + 88) = v1;
  return result;
}

unint64_t sub_1C8D3AA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60A60;
  if (!qword_1EDA60A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60A60);
  }

  return result;
}

uint64_t sub_1C8D3AAA8(uint64_t result)
{
  v1 = *(result + 88) & 0x10101010101 | 0x6000000000000000;
  *(result + 56) &= 7uLL;
  *(result + 88) = v1;
  return result;
}

unint64_t sub_1C8D3AAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313690;
  if (!qword_1EC313690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313690);
  }

  return result;
}

uint64_t sub_1C8D3AB24(uint64_t result)
{
  v1 = *(result + 88) & 0x10101010101 | 0x2000000000000000;
  *(result + 56) &= 7uLL;
  *(result + 88) = v1;
  return result;
}

unint64_t sub_1C8D3AB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60A80;
  if (!qword_1EDA60A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60A80);
  }

  return result;
}

uint64_t sub_1C8D3ABA0(uint64_t result)
{
  v1 = *(result + 88) & 0x10101010101;
  *(result + 56) &= 7uLL;
  *(result + 88) = v1;
  return result;
}

unint64_t sub_1C8D3AC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69560;
  if (!qword_1EDA69560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69560);
  }

  return result;
}

unint64_t sub_1C8D3AC6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3136D0;
  if (!qword_1EC3136D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3136D0);
  }

  return result;
}

unint64_t sub_1C8D3ACC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3136D8;
  if (!qword_1EC3136D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3136D8);
  }

  return result;
}

unint64_t sub_1C8D3AD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69598;
  if (!qword_1EDA69598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69598);
  }

  return result;
}

unint64_t sub_1C8D3AD68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62FD0;
  if (!qword_1EDA62FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62FD0);
  }

  return result;
}

unint64_t sub_1C8D3ADBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA695B0;
  if (!qword_1EDA695B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA695B0);
  }

  return result;
}

unint64_t sub_1C8D3AE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62FC8;
  if (!qword_1EDA62FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62FC8);
  }

  return result;
}

unint64_t sub_1C8D3AE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62FC0;
  if (!qword_1EDA62FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62FC0);
  }

  return result;
}

unint64_t sub_1C8D3AEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69C98;
  if (!qword_1EDA69C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C98);
  }

  return result;
}

unint64_t sub_1C8D3AF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6A020;
  if (!qword_1EDA6A020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6A020);
  }

  return result;
}

unint64_t sub_1C8D3AF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313718;
  if (!qword_1EC313718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313718);
  }

  return result;
}

unint64_t sub_1C8D3AFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313720;
  if (!qword_1EC313720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313720);
  }

  return result;
}

unint64_t sub_1C8D3B024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313728;
  if (!qword_1EC313728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313728);
  }

  return result;
}

unint64_t sub_1C8D3B07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313730;
  if (!qword_1EC313730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313730);
  }

  return result;
}

unint64_t sub_1C8D3B0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313738;
  if (!qword_1EC313738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313738);
  }

  return result;
}

unint64_t sub_1C8D3B12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313740;
  if (!qword_1EC313740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313740);
  }

  return result;
}

unint64_t sub_1C8D3B184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313748;
  if (!qword_1EC313748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313748);
  }

  return result;
}

unint64_t sub_1C8D3B1DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313750;
  if (!qword_1EC313750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313750);
  }

  return result;
}

unint64_t sub_1C8D3B234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313758;
  if (!qword_1EC313758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313758);
  }

  return result;
}

unint64_t sub_1C8D3B28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313760;
  if (!qword_1EC313760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313760);
  }

  return result;
}

unint64_t sub_1C8D3B2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313768;
  if (!qword_1EC313768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313768);
  }

  return result;
}

unint64_t sub_1C8D3B33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313770;
  if (!qword_1EC313770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313770);
  }

  return result;
}

unint64_t sub_1C8D3B394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313778;
  if (!qword_1EC313778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313778);
  }

  return result;
}

uint64_t sub_1C8D3B3E8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7A && *(a1 + 8))
    {
      v2 = *a1 + 121;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x79)
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

uint64_t sub_1C8D3B43C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7ToolKit15QueryDefinitionV18PredicateTemplatesV0E8MetadataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_7ToolKit20ValueSearchPredicateV8TemplateVSg(void *a1)
{
  v1 = ((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x79)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C8D3B520(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56) >> 3;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1C8D3B568(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 120) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 136) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 0;
      *(a1 + 56) = 8 * -a2;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0;
      return result;
    }

    *(a1 + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C8D3B5E4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 88) & 0x10101010101 | (a2 << 61);
  *(result + 56) &= 7uLL;
  *(result + 88) = v2;
  return result;
}

uint64_t sub_1C8D3B624(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 72);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1C8D3B678(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C8D3B70C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 57))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 56);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C8D3B74C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C8D3B7B8(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1C8D3B80C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1C8D3B8A0(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 10))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1C8D3B8F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RestrictionContext.KeyboardTraitsDefinition(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 6))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 3);
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

uint64_t storeEnumTagSinglePayload for RestrictionContext.KeyboardTraitsDefinition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *(result + 3) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RestrictionContext.KeyboardTraitsDefinition.KeyboardType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RestrictionContext.KeyboardTraitsDefinition.KeyboardType(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C8D3BBB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_80(-1);
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return OUTLINED_FUNCTION_80(*a1 + 252);
  }

  v3 = *(a1 + 32);
  if (v3 > 3)
  {
    return OUTLINED_FUNCTION_80(v3 ^ 0xFF);
  }

  else
  {
    return OUTLINED_FUNCTION_80(-1);
  }
}

uint64_t sub_1C8D3BBF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C8D3BC60(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_80(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_80((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_80((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_80((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_80(v8);
}

_BYTE *sub_1C8D3BCE4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_96_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_94_2(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_95(result, v6);
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
          result = OUTLINED_FUNCTION_349(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C8D3BDF0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
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

uint64_t sub_1C8D3BE30(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RestrictionContext.KeyboardTraitsDefinition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RestrictionContext.ValueSetDefinition.Inner.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C8D3C0C8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_80(-1);
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
      return OUTLINED_FUNCTION_80((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_80((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_80((*a1 | (v4 << 8)) - 3);
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

  return OUTLINED_FUNCTION_80(v8);
}

_BYTE *sub_1C8D3C14C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_96_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_94_2(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_95(result, v6);
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
          result = OUTLINED_FUNCTION_349(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C8D3C2AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313780;
  if (!qword_1EC313780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313780);
  }

  return result;
}

unint64_t sub_1C8D3C304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313788;
  if (!qword_1EC313788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313788);
  }

  return result;
}

unint64_t sub_1C8D3C35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313790;
  if (!qword_1EC313790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313790);
  }

  return result;
}

unint64_t sub_1C8D3C3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313798;
  if (!qword_1EC313798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313798);
  }

  return result;
}

unint64_t sub_1C8D3C40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3137A0;
  if (!qword_1EC3137A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3137A0);
  }

  return result;
}

unint64_t sub_1C8D3C464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3137A8;
  if (!qword_1EC3137A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3137A8);
  }

  return result;
}

unint64_t sub_1C8D3C4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3137B0;
  if (!qword_1EC3137B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3137B0);
  }

  return result;
}

unint64_t sub_1C8D3C514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3137B8;
  if (!qword_1EC3137B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3137B8);
  }

  return result;
}

unint64_t sub_1C8D3C56C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3137C0;
  if (!qword_1EC3137C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3137C0);
  }

  return result;
}

unint64_t sub_1C8D3C5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3137C8;
  if (!qword_1EC3137C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3137C8);
  }

  return result;
}

unint64_t sub_1C8D3C61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3137D0;
  if (!qword_1EC3137D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3137D0);
  }

  return result;
}

unint64_t sub_1C8D3C674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3137D8;
  if (!qword_1EC3137D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3137D8);
  }

  return result;
}

unint64_t sub_1C8D3C6CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3137E0;
  if (!qword_1EC3137E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3137E0);
  }

  return result;
}

unint64_t sub_1C8D3C724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3137E8;
  if (!qword_1EC3137E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3137E8);
  }

  return result;
}

unint64_t sub_1C8D3C77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3137F0;
  if (!qword_1EC3137F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3137F0);
  }

  return result;
}

unint64_t sub_1C8D3C7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3137F8;
  if (!qword_1EC3137F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3137F8);
  }

  return result;
}

unint64_t sub_1C8D3C82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313800;
  if (!qword_1EC313800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313800);
  }

  return result;
}

unint64_t sub_1C8D3C884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313808;
  if (!qword_1EC313808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313808);
  }

  return result;
}

unint64_t sub_1C8D3C8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313810;
  if (!qword_1EC313810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313810);
  }

  return result;
}

unint64_t sub_1C8D3C934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313818;
  if (!qword_1EC313818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313818);
  }

  return result;
}

unint64_t sub_1C8D3C98C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313820;
  if (!qword_1EC313820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313820);
  }

  return result;
}

unint64_t sub_1C8D3C9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313828;
  if (!qword_1EC313828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313828);
  }

  return result;
}

unint64_t sub_1C8D3CA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313830;
  if (!qword_1EC313830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313830);
  }

  return result;
}

unint64_t sub_1C8D3CA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313838;
  if (!qword_1EC313838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313838);
  }

  return result;
}

unint64_t sub_1C8D3CAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313840;
  if (!qword_1EC313840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313840);
  }

  return result;
}

unint64_t sub_1C8D3CB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA695A0;
  if (!qword_1EDA695A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA695A0);
  }

  return result;
}

unint64_t sub_1C8D3CB9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA695A8;
  if (!qword_1EDA695A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA695A8);
  }

  return result;
}

unint64_t sub_1C8D3CBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69578;
  if (!qword_1EDA69578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69578);
  }

  return result;
}

unint64_t sub_1C8D3CC4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69580;
  if (!qword_1EDA69580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69580);
  }

  return result;
}

unint64_t sub_1C8D3CCA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69588;
  if (!qword_1EDA69588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69588);
  }

  return result;
}

unint64_t sub_1C8D3CCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69590;
  if (!qword_1EDA69590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69590);
  }

  return result;
}

unint64_t sub_1C8D3CD54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69568;
  if (!qword_1EDA69568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69568);
  }

  return result;
}

unint64_t sub_1C8D3CDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69570;
  if (!qword_1EDA69570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69570);
  }

  return result;
}

unint64_t sub_1C8D3CE04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313848;
  if (!qword_1EC313848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313848);
  }

  return result;
}

unint64_t sub_1C8D3CE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313850;
  if (!qword_1EC313850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313850);
  }

  return result;
}

unint64_t sub_1C8D3CEB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69550;
  if (!qword_1EDA69550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69550);
  }

  return result;
}

unint64_t sub_1C8D3CF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69558;
  if (!qword_1EDA69558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69558);
  }

  return result;
}

unint64_t sub_1C8D3CF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63638;
  if (!qword_1EDA63638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63638);
  }

  return result;
}

unint64_t sub_1C8D3CFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63640;
  if (!qword_1EDA63640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63640);
  }

  return result;
}

unint64_t sub_1C8D3D014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313858;
  if (!qword_1EC313858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313858);
  }

  return result;
}

unint64_t sub_1C8D3D06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313860;
  if (!qword_1EC313860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313860);
  }

  return result;
}

unint64_t sub_1C8D3D0C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313868;
  if (!qword_1EC313868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313868);
  }

  return result;
}

unint64_t sub_1C8D3D11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313870;
  if (!qword_1EC313870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313870);
  }

  return result;
}

unint64_t sub_1C8D3D174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313878;
  if (!qword_1EC313878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313878);
  }

  return result;
}

unint64_t sub_1C8D3D1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313880;
  if (!qword_1EC313880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313880);
  }

  return result;
}

unint64_t sub_1C8D3D224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69B40;
  if (!qword_1EDA69B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69B40);
  }

  return result;
}

unint64_t sub_1C8D3D27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69B48;
  if (!qword_1EDA69B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69B48);
  }

  return result;
}

unint64_t sub_1C8D3D2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69B00;
  if (!qword_1EDA69B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69B00);
  }

  return result;
}

unint64_t sub_1C8D3D32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69B08;
  if (!qword_1EDA69B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69B08);
  }

  return result;
}

unint64_t sub_1C8D3D384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69AF0;
  if (!qword_1EDA69AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69AF0);
  }

  return result;
}

unint64_t sub_1C8D3D3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69AF8;
  if (!qword_1EDA69AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69AF8);
  }

  return result;
}

unint64_t sub_1C8D3D434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69B18;
  if (!qword_1EDA69B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69B18);
  }

  return result;
}

unint64_t sub_1C8D3D48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69B20;
  if (!qword_1EDA69B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69B20);
  }

  return result;
}

unint64_t sub_1C8D3D4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63600;
  if (!qword_1EDA63600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63600);
  }

  return result;
}

unint64_t sub_1C8D3D53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63608;
  if (!qword_1EDA63608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63608);
  }

  return result;
}

unint64_t sub_1C8D3D594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313888;
  if (!qword_1EC313888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313888);
  }

  return result;
}

unint64_t sub_1C8D3D5EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313890;
  if (!qword_1EC313890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313890);
  }

  return result;
}

unint64_t sub_1C8D3D644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69B28;
  if (!qword_1EDA69B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69B28);
  }

  return result;
}

unint64_t sub_1C8D3D69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69B30;
  if (!qword_1EDA69B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69B30);
  }

  return result;
}

unint64_t sub_1C8D3D6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CE18;
  if (!qword_1EDA6CE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CE18);
  }

  return result;
}

unint64_t sub_1C8D3D74C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CE20;
  if (!qword_1EDA6CE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CE20);
  }

  return result;
}

unint64_t sub_1C8D3D7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CDC0;
  if (!qword_1EDA6CDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CDC0);
  }

  return result;
}

unint64_t sub_1C8D3D7FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CDC8;
  if (!qword_1EDA6CDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CDC8);
  }

  return result;
}

unint64_t sub_1C8D3D854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CDD8;
  if (!qword_1EDA6CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CDD8);
  }

  return result;
}

unint64_t sub_1C8D3D8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CDE0;
  if (!qword_1EDA6CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CDE0);
  }

  return result;
}

unint64_t sub_1C8D3D904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CDF0;
  if (!qword_1EDA6CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CDF0);
  }

  return result;
}

unint64_t sub_1C8D3D95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CDF8;
  if (!qword_1EDA6CDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CDF8);
  }

  return result;
}

unint64_t sub_1C8D3D9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B9D0;
  if (!qword_1EDA6B9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B9D0);
  }

  return result;
}

unint64_t sub_1C8D3DA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B9D8;
  if (!qword_1EDA6B9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B9D8);
  }

  return result;
}

unint64_t sub_1C8D3DA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6A028;
  if (!qword_1EDA6A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6A028);
  }

  return result;
}

unint64_t sub_1C8D3DABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6A030;
  if (!qword_1EDA6A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6A030);
  }

  return result;
}

unint64_t sub_1C8D3DB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B9E0;
  if (!qword_1EDA6B9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B9E0);
  }

  return result;
}

unint64_t sub_1C8D3DB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B9E8;
  if (!qword_1EDA6B9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B9E8);
  }

  return result;
}

unint64_t sub_1C8D3DBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CE00;
  if (!qword_1EDA6CE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CE00);
  }

  return result;
}

unint64_t sub_1C8D3DC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CE08;
  if (!qword_1EDA6CE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CE08);
  }

  return result;
}

unint64_t sub_1C8D3DC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63630;
  if (!qword_1EDA63630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63630);
  }

  return result;
}

unint64_t sub_1C8D3DCC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA635E0;
  if (!qword_1EDA635E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA635E0);
  }

  return result;
}

unint64_t sub_1C8D3DD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63730;
  if (!qword_1EDA63730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63730);
  }

  return result;
}

unint64_t sub_1C8D3DD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA635D8;
  if (!qword_1EDA635D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA635D8);
  }

  return result;
}

unint64_t sub_1C8D3DDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63728;
  if (!qword_1EDA63728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63728);
  }

  return result;
}

unint64_t sub_1C8D3DE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3138A8;
  if (!qword_1EC3138A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3138A8);
  }

  return result;
}

unint64_t sub_1C8D3DEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3138B0;
  if (!qword_1EC3138B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3138B0);
  }

  return result;
}

unint64_t sub_1C8D3DEF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3138B8;
  if (!qword_1EC3138B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3138B8);
  }

  return result;
}

unint64_t sub_1C8D3DF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA64AE0;
  if (!qword_1EDA64AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA64AE0);
  }

  return result;
}

unint64_t sub_1C8D3DF9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3138C0;
  if (!qword_1EC3138C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3138C0);
  }

  return result;
}

unint64_t sub_1C8D3DFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA64520;
  if (!qword_1EDA64520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA64520);
  }

  return result;
}

unint64_t sub_1C8D3E044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA61350;
  if (!qword_1EDA61350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA61350);
  }

  return result;
}

unint64_t sub_1C8D3E098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA61B60;
  if (!qword_1EDA61B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA61B60);
  }

  return result;
}

unint64_t sub_1C8D3E0EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66D90;
  if (!qword_1EDA66D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66D90);
  }

  return result;
}

unint64_t sub_1C8D3E140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60FA0;
  if (!qword_1EDA60FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60FA0);
  }

  return result;
}

unint64_t sub_1C8D3E194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63C88;
  if (!qword_1EDA63C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63C88);
  }

  return result;
}

unint64_t sub_1C8D3E1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60FF0;
  if (!qword_1EDA60FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60FF0);
  }

  return result;
}

unint64_t sub_1C8D3E23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60FD0;
  if (!qword_1EDA60FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60FD0);
  }

  return result;
}

unint64_t sub_1C8D3E290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63CD8;
  if (!qword_1EDA63CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63CD8);
  }

  return result;
}

unint64_t sub_1C8D3E2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA647A0;
  if (!qword_1EDA647A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA647A0);
  }

  return result;
}

unint64_t sub_1C8D3E338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA67CA0;
  if (!qword_1EDA67CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA67CA0);
  }

  return result;
}

unint64_t sub_1C8D3E38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3138C8;
  if (!qword_1EC3138C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3138C8);
  }

  return result;
}

unint64_t sub_1C8D3E3E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3138D0;
  if (!qword_1EC3138D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3138D0);
  }

  return result;
}

unint64_t sub_1C8D3E434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA615E8;
  if (!qword_1EDA615E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA615E8);
  }

  return result;
}

unint64_t sub_1C8D3E488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA64A48;
  if (!qword_1EDA64A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA64A48);
  }

  return result;
}

unint64_t sub_1C8D3E4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA64A28;
  if (!qword_1EDA64A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA64A28);
  }

  return result;
}

unint64_t sub_1C8D3E530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA615C8;
  if (!qword_1EDA615C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA615C8);
  }

  return result;
}

unint64_t sub_1C8D3E584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA64918;
  if (!qword_1EDA64918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA64918);
  }

  return result;
}

unint64_t sub_1C8D3E5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3138D8;
  if (!qword_1EC3138D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3138D8);
  }

  return result;
}

unint64_t sub_1C8D3E62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3138E0;
  if (!qword_1EC3138E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3138E0);
  }

  return result;
}

unint64_t sub_1C8D3E680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3138E8;
  if (!qword_1EC3138E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3138E8);
  }

  return result;
}

unint64_t sub_1C8D3E6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3138F0;
  if (!qword_1EC3138F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3138F0);
  }

  return result;
}

unint64_t sub_1C8D3E728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3138F8;
  if (!qword_1EC3138F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3138F8);
  }

  return result;
}

unint64_t sub_1C8D3E77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313900;
  if (!qword_1EC313900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313900);
  }

  return result;
}

unint64_t sub_1C8D3E7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313908;
  if (!qword_1EC313908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313908);
  }

  return result;
}

unint64_t sub_1C8D3E824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313910;
  if (!qword_1EC313910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313910);
  }

  return result;
}

unint64_t sub_1C8D3E878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313918;
  if (!qword_1EC313918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313918);
  }

  return result;
}

unint64_t sub_1C8D3E8CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA65048;
  if (!qword_1EDA65048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA65048);
  }

  return result;
}

unint64_t sub_1C8D3E920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA64E38;
  if (!qword_1EDA64E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA64E38);
  }

  return result;
}

unint64_t sub_1C8D3E974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA64D20;
  if (!qword_1EDA64D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA64D20);
  }

  return result;
}

unint64_t sub_1C8D3E9C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA68138;
  if (!qword_1EDA68138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA68138);
  }

  return result;
}

unint64_t sub_1C8D3EA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313920;
  if (!qword_1EC313920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313920);
  }

  return result;
}

unint64_t sub_1C8D3EA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313928;
  if (!qword_1EC313928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313928);
  }

  return result;
}

unint64_t sub_1C8D3EAC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313930;
  if (!qword_1EC313930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313930);
  }

  return result;
}

unint64_t sub_1C8D3EB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313938;
  if (!qword_1EC313938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313938);
  }

  return result;
}

unint64_t sub_1C8D3EB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA635D0;
  if (!qword_1EDA635D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA635D0);
  }

  return result;
}

unint64_t sub_1C8D3EBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313940;
  if (!qword_1EC313940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313940);
  }

  return result;
}

unint64_t sub_1C8D3EC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69330;
  if (!qword_1EDA69330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69330);
  }

  return result;
}

uint64_t sub_1C8D3ED20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

unint64_t sub_1C8D3ED80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313948;
  if (!qword_1EC313948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313948);
  }

  return result;
}

unint64_t sub_1C8D3EDD4()
{
  result = qword_1EC313958;
  if (!qword_1EC313958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC312DD0, &qword_1C9072940);
    sub_1C8D3EE90(&unk_1EC313960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313958);
  }

  return result;
}

unint64_t sub_1C8D3EE90(uint64_t a1)
{
  result = OUTLINED_FUNCTION_57(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C8D3EED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60B98;
  if (!qword_1EDA60B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60B98);
  }

  return result;
}

uint64_t sub_1C8D3EF28(uint64_t a1)
{
  if ((*(a1 + 56) >> 3) > 0x80000000)
  {
    return -(*(a1 + 56) >> 3);
  }

  else
  {
    return 0;
  }
}

double sub_1C8D3EF40(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0x7FFFFFFF8;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  return result;
}

unint64_t sub_1C8D3EF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313970;
  if (!qword_1EC313970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313970);
  }

  return result;
}

uint64_t sub_1C8D3F068()
{
  OUTLINED_FUNCTION_223();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_10_0();
  v3 = OUTLINED_FUNCTION_94();
  v4(v3);
  return v0;
}

uint64_t sub_1C8D3F0C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_10_0();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1C8D3F120(unint64_t result)
{
  if (result >= 0x10)
  {
  }

  return result;
}

unint64_t sub_1C8D3F130(unint64_t result)
{
  if (result >= 0x10)
  {
  }

  return result;
}

unint64_t sub_1C8D3F154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313990;
  if (!qword_1EC313990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313990);
  }

  return result;
}

unint64_t sub_1C8D3F1AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63620;
  if (!qword_1EDA63620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63620);
  }

  return result;
}

unint64_t sub_1C8D3F204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63628;
  if (!qword_1EDA63628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63628);
  }

  return result;
}

void *OUTLINED_FUNCTION_53_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x280], 0x88uLL);
}

uint64_t OUTLINED_FUNCTION_99_1(uint64_t a1)
{

  return sub_1C9064A0C();
}

uint64_t OUTLINED_FUNCTION_127_1()
{

  return sub_1C906478C();
}

uint64_t OUTLINED_FUNCTION_144_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
}

void OUTLINED_FUNCTION_152_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{

  static TypedValue.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_153_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{

  return sub_1C8D073F4(&STACK[0x280], &a37);
}

uint64_t OUTLINED_FUNCTION_154_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return sub_1C8D073F4(&a65, &a37);
}

uint64_t OUTLINED_FUNCTION_158_1()
{

  return sub_1C8D07168(v1, v0);
}

uint64_t OUTLINED_FUNCTION_159_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_185_0(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

void *OUTLINED_FUNCTION_187_0()
{

  return memcpy(&STACK[0x3B8], (v0 + 16), 0x51uLL);
}

uint64_t OUTLINED_FUNCTION_189_0(uint64_t a1)
{

  return sub_1C9064B8C();
}

uint64_t OUTLINED_FUNCTION_194_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);

  return sub_1C8D39E94(va, &a25);
}

uint64_t OUTLINED_FUNCTION_195_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);

  return sub_1C8D39E94(va, &a25);
}

uint64_t OUTLINED_FUNCTION_196_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C9064DEC();
}

void sub_1C8D3F668()
{
  OUTLINED_FUNCTION_196();
  v2 = v0;
  v4 = v3;
  v18 = v5;
  v17 = sub_1C9061EBC();
  OUTLINED_FUNCTION_11();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_251();
  v9 = *(v4 + 16);
  if (v9)
  {
    v20 = MEMORY[0x1E69E7CC0];
    v10 = OUTLINED_FUNCTION_68_1();
    sub_1C8D09924(v10, v9, 0);
    v11 = (v4 + 40);
    while (1)
    {
      v12 = *v11;
      v19[0] = *(v11 - 1);
      v19[1] = v12;

      v18(v19);
      if (v2)
      {
        break;
      }

      v2 = 0;

      v13 = *(v20 + 16);
      if (v13 >= *(v20 + 24) >> 1)
      {
        OUTLINED_FUNCTION_136_1();
        sub_1C8D09924(v14, v15, v16);
      }

      *(v20 + 16) = v13 + 1;
      (*(v7 + 32))(v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13, v1, v17);
      v11 += 2;
      if (!--v9)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_277();
    OUTLINED_FUNCTION_198();
  }
}

void sub_1C8D3F800()
{
  OUTLINED_FUNCTION_196();
  v21 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8(0);
  OUTLINED_FUNCTION_46(v9);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_86();
  v11 = *(v7 + 16);
  if (v11)
  {
    v12 = OUTLINED_FUNCTION_68_1();
    (v5)(v12, v11, 0);
    v13 = v3(0);
    OUTLINED_FUNCTION_46(v13);
    v15 = v7 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v20 = *(v16 + 72);
    while (1)
    {
      v21(v15);
      if (v0)
      {
        break;
      }

      OUTLINED_FUNCTION_174_1();
      if (v17)
      {
        OUTLINED_FUNCTION_153_3();
        v5();
      }

      v18 = OUTLINED_FUNCTION_127_2();
      sub_1C8D50228(v18, v19);
      v15 += v20;
      if (!--v11)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_277();
    OUTLINED_FUNCTION_198();
  }
}

void sub_1C8D3FA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  v11 = v10;
  v13 = v12;
  v27 = v14;
  v15 = type metadata accessor for ToolKitProtoCoercionDefinition(0);
  v16 = OUTLINED_FUNCTION_46(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_94_1();
  v17 = *(v13 + 16);
  if (v17)
  {
    v18 = OUTLINED_FUNCTION_43_5();
    sub_1C8D09B34(v18, v17, 0);
    v19 = (v13 + 40);
    while (1)
    {
      v20 = *v19;
      v29 = *(v19 - 1);
      v30 = v20;

      v27(&v29, &v28);
      if (v11)
      {
        break;
      }

      v11 = 0;

      OUTLINED_FUNCTION_114_1();
      if (v21)
      {
        OUTLINED_FUNCTION_152_1();
        sub_1C8D09B34(v24, v25, v26);
      }

      OUTLINED_FUNCTION_50_5();
      v22 = OUTLINED_FUNCTION_164_1();
      sub_1C8D50228(v22, v23);
      v19 += 16;
      if (!--v17)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

void sub_1C8D3FB80()
{
  OUTLINED_FUNCTION_196();
  v3 = v0;
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = v2;
    OUTLINED_FUNCTION_163_1();
    v6 = OUTLINED_FUNCTION_30_4();
    sub_1C8D09B8C(v6, v7, v8);
    v9 = v5 + 32;
    while (1)
    {
      OUTLINED_FUNCTION_205_0(v20);
      OUTLINED_FUNCTION_205_0(__src);
      sub_1C8D50178(v20, __dst);
      v1(v19, __src, &v17);
      if (v3)
      {
        break;
      }

      v3 = 0;
      memcpy(__dst, __src, sizeof(__dst));
      sub_1C8D501D4(__dst);
      memcpy(v15, v19, sizeof(v15));
      OUTLINED_FUNCTION_112_0();
      if (v10)
      {
        OUTLINED_FUNCTION_119_2();
        sub_1C8D09B8C(v12, v13, v14);
      }

      v11 = OUTLINED_FUNCTION_185_1();
      memcpy(v11, v15, 0x61uLL);
      v9 += 136;
      if (!--v4)
      {
        goto LABEL_9;
      }
    }

    memcpy(__dst, __src, sizeof(__dst));
    sub_1C8D501D4(__dst);
  }

LABEL_9:
  OUTLINED_FUNCTION_198();
}

void sub_1C8D3FCB8()
{
  OUTLINED_FUNCTION_196();
  v3 = v0;
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = v2;
    OUTLINED_FUNCTION_163_1();
    v6 = OUTLINED_FUNCTION_30_4();
    sub_1C8D09BE4(v6, v7, v8);
    v9 = (v5 + 32);
    while (1)
    {
      memcpy(__dst, v9, 0xF0uLL);
      memcpy(__src, v9, sizeof(__src));
      sub_1C8D16AE0(__dst, v16);
      v1(v19, __src, &v17);
      if (v3)
      {
        break;
      }

      v3 = 0;
      memcpy(v16, __src, sizeof(v16));
      sub_1C8D16B18(v16);
      memcpy(v15, v19, sizeof(v15));
      OUTLINED_FUNCTION_112_0();
      if (v10)
      {
        OUTLINED_FUNCTION_119_2();
        sub_1C8D09BE4(v12, v13, v14);
      }

      v11 = OUTLINED_FUNCTION_185_1();
      memcpy(v11, v15, 0x61uLL);
      v9 += 240;
      if (!--v4)
      {
        goto LABEL_9;
      }
    }

    memcpy(v16, __src, sizeof(v16));
    sub_1C8D16B18(v16);
  }

LABEL_9:
  OUTLINED_FUNCTION_198();
}

void sub_1C8D3FE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  v11 = v10;
  v13 = v12;
  v30 = v14;
  v15 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v16 = OUTLINED_FUNCTION_46(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_94_1();
  v17 = *(v13 + 16);
  if (v17)
  {
    v18 = OUTLINED_FUNCTION_43_5();
    sub_1C8D09C1C(v18, v17, 0);
    v19 = (v13 + 64);
    while (1)
    {
      v20 = *(v19 - 3);
      v21 = *(v19 - 2);
      v22 = *(v19 - 1);
      v23 = *v19;
      v32[0] = *(v19 - 4);
      v32[1] = v20;
      v32[2] = v21;
      v32[3] = v22;
      v32[4] = v23;

      v30(v32, &v31);
      if (v11)
      {
        break;
      }

      v11 = 0;

      OUTLINED_FUNCTION_114_1();
      if (v24)
      {
        OUTLINED_FUNCTION_152_1();
        sub_1C8D09C1C(v27, v28, v29);
      }

      v19 += 5;
      OUTLINED_FUNCTION_50_5();
      v25 = OUTLINED_FUNCTION_164_1();
      sub_1C8D50228(v25, v26);
      if (!--v17)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

void sub_1C8D3FFB0()
{
  OUTLINED_FUNCTION_196();
  v1 = v0;
  v3 = v2;
  v19 = v4;
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
  v6 = OUTLINED_FUNCTION_46(v5);
  v18 = v7;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v10 = v9 - v8;
  v11 = *(v3 + 16);
  if (v11)
  {
    v24 = MEMORY[0x1E69E7CC0];
    v12 = OUTLINED_FUNCTION_68_1();
    sub_1C8D09D44(v12, v11, 0);
    v13 = (v3 + 32);
    while (1)
    {
      memcpy(v23, v13, 0x88uLL);
      memcpy(v22, v13, sizeof(v22));
      sub_1C8D07294(v23, v20);
      v19(v22, &v21);
      if (v1)
      {
        break;
      }

      v1 = 0;
      memcpy(v20, v22, sizeof(v20));
      sub_1C8D072F0(v20);
      v14 = *(v24 + 16);
      if (v14 >= *(v24 + 24) >> 1)
      {
        OUTLINED_FUNCTION_153_3();
        sub_1C8D09D44(v15, v16, v17);
      }

      *(v24 + 16) = v14 + 1;
      sub_1C8D50228(v10, v24 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v14);
      v13 += 136;
      if (!--v11)
      {
        goto LABEL_9;
      }
    }

    memcpy(v20, v22, sizeof(v20));
    sub_1C8D072F0(v20);
  }

LABEL_9:
  OUTLINED_FUNCTION_198();
}

void sub_1C8D4018C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  v11 = v10;
  v13 = v12;
  v29 = v14;
  v15 = type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
  v16 = OUTLINED_FUNCTION_46(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_94_1();
  v17 = *(v13 + 16);
  if (v17)
  {
    v18 = OUTLINED_FUNCTION_43_5();
    sub_1C8D09CEC(v18, v17, 0);
    v19 = (v13 + 56);
    while (1)
    {
      v20 = *(v19 - 2);
      v21 = *(v19 - 1);
      v22 = *v19;
      v30[0] = *(v19 - 3);
      v30[1] = v20;
      v30[2] = v21;
      v30[3] = v22;

      v29(v30);
      if (v11)
      {
        break;
      }

      v11 = 0;

      OUTLINED_FUNCTION_114_1();
      if (v23)
      {
        OUTLINED_FUNCTION_152_1();
        sub_1C8D09CEC(v26, v27, v28);
      }

      OUTLINED_FUNCTION_50_5();
      v24 = OUTLINED_FUNCTION_164_1();
      sub_1C8D50228(v24, v25);
      v19 += 4;
      if (!--v17)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_277();
    OUTLINED_FUNCTION_198();
  }
}

void sub_1C8D40394()
{
  OUTLINED_FUNCTION_196();
  v21 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6(0);
  OUTLINED_FUNCTION_46(v7);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_86();
  v9 = *(v5 + 16);
  if (v9)
  {
    v10 = OUTLINED_FUNCTION_68_1();
    v19 = v11;
    (v11)(v10, v9, 0);
    v12 = v3(0);
    OUTLINED_FUNCTION_46(v12);
    v14 = v5 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v20 = *(v15 + 72);
    while (1)
    {
      v21(v14, &v22);
      if (v0)
      {
        break;
      }

      OUTLINED_FUNCTION_174_1();
      if (v16)
      {
        OUTLINED_FUNCTION_153_3();
        v19();
      }

      v17 = OUTLINED_FUNCTION_127_2();
      sub_1C8D50228(v17, v18);
      v14 += v20;
      if (!--v9)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

void sub_1C8D40540()
{
  OUTLINED_FUNCTION_196();
  v5 = v0;
  v6 = *(v4 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v8 = v4;
    OUTLINED_FUNCTION_163_1();
    v23 = v7;
    v9 = OUTLINED_FUNCTION_30_4();
    sub_1C8D09F8C(v9, v10, v11);
    v12 = v8 + 32;
    while (1)
    {
      OUTLINED_FUNCTION_205_0(v22);
      OUTLINED_FUNCTION_205_0(__src);
      sub_1C8D500C8(v22, __dst);
      v1(v21, __src, &v19);
      if (v5)
      {
        break;
      }

      v5 = 0;
      memcpy(__dst, __src, sizeof(__dst));
      sub_1C8D50124(__dst);
      memcpy(v17, v21, sizeof(v17));
      OUTLINED_FUNCTION_112_0();
      if (v13)
      {
        OUTLINED_FUNCTION_119_2();
        sub_1C8D09F8C(v14, v15, v16);
        v7 = v23;
      }

      *(v7 + 16) = v2;
      memcpy((v7 + 80 * v3 + 32), v17, 0x50uLL);
      v12 += 136;
      if (!--v6)
      {
        goto LABEL_9;
      }
    }

    memcpy(__dst, __src, sizeof(__dst));
    sub_1C8D50124(__dst);
  }

LABEL_9:
  OUTLINED_FUNCTION_198();
}

void TypedValue.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v6 = v5;
  v188 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_9(v8);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_97();
  v184 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v11);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_97();
  v185 = v13;
  v14 = OUTLINED_FUNCTION_111();
  v187 = type metadata accessor for TypedValue.CodableValue(v14);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_7_0();
  v186 = v16;
  v17 = OUTLINED_FUNCTION_111();
  v181 = type metadata accessor for ToolKitProtoTypedValue.CodableValue(v17);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_12();
  v182 = v19;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_147();
  v183 = v21;
  v22 = OUTLINED_FUNCTION_111();
  v23 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(v22);
  v24 = OUTLINED_FUNCTION_9(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_12();
  v178 = v25;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_147();
  v180 = v27;
  v28 = OUTLINED_FUNCTION_111();
  v29 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(v28);
  v30 = OUTLINED_FUNCTION_9(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_12();
  v176 = v31;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_147();
  v179 = v33;
  v34 = OUTLINED_FUNCTION_111();
  Value = type metadata accessor for ToolKitProtoTypedValue.QueryValue(v34);
  v36 = OUTLINED_FUNCTION_9(Value);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_25();
  v39 = v37 - v38;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_147();
  v177 = v41;
  v42 = OUTLINED_FUNCTION_111();
  v43 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue(v42);
  v44 = OUTLINED_FUNCTION_9(v43);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_84();
  v46 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v47 = OUTLINED_FUNCTION_9(v46);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_120_1();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v175 - v49;
  v51 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  v52 = OUTLINED_FUNCTION_9(v51);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_25();
  v55 = v53 - v54;
  MEMORY[0x1EEE9AC00](v56);
  v57 = OUTLINED_FUNCTION_122_1();
  v58 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(v57);
  v59 = OUTLINED_FUNCTION_9(v58);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_307();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_66();
  v62 = *v61;
  if ((~*v61 & 0xF000000000000007) != 0)
  {
    v175 = v61;
    switch(v62 >> 61)
    {
      case 1uLL:
        v130 = v62;
        v131 = swift_projectBox();
        sub_1C8CCF5DC(v131, v1);
        type metadata accessor for TypedValue.EnumerationValue(0);
        v132 = swift_allocBox();
        v133 = OUTLINED_FUNCTION_119();
        sub_1C8CCF5DC(v133, v134);

        TypedValue.EnumerationValue.init(protobuf:)(v55, v135, v136, v137, v138, v139, v140, v141);
        if (v0)
        {
          OUTLINED_FUNCTION_4_9();
          sub_1C8CD0D98(v175, v142);
          v143 = OUTLINED_FUNCTION_59_3();
          sub_1C8CD0D98(v143, v144);
          swift_deallocBox();
          v104 = v130;
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_4_9();
        sub_1C8CD0D98(v175, v169);
        v170 = OUTLINED_FUNCTION_59_3();
        sub_1C8CD0D98(v170, v171);
        sub_1C8CD0FB0(v130);
        v50 = v132 | 0x1000000000000000;
        goto LABEL_32;
      case 2uLL:
        v73 = v62;
        v91 = swift_projectBox();
        sub_1C8CCF5DC(v91, v50);
        type metadata accessor for TypedValue.EntityValue(0);
        v92 = swift_allocBox();
        v93 = OUTLINED_FUNCTION_210();
        sub_1C8CCF5DC(v93, v94);

        TypedValue.EntityValue.init(protobuf:)(v3, v95, v96, v97, v98, v99, v100, v101, v175, v176);
        if (v0)
        {
          OUTLINED_FUNCTION_4_9();
          sub_1C8CD0D98(v175, v102);
          OUTLINED_FUNCTION_17_4();
          sub_1C8CD0D98(v50, v103);
          goto LABEL_10;
        }

        OUTLINED_FUNCTION_4_9();
        sub_1C8CD0D98(v175, v162);
        OUTLINED_FUNCTION_17_4();
        sub_1C8CD0D98(v50, v163);
        sub_1C8CD0FB0(v73);
        v50 = v92 | 0x2000000000000000;
        goto LABEL_32;
      case 3uLL:
        v105 = v62;
        v106 = swift_projectBox();
        sub_1C8CCF5DC(v106, v2);
        v107 = swift_allocObject();
        v108 = OUTLINED_FUNCTION_203();
        sub_1C8CCF5DC(v108, v109);

        TypedValue.CollectionValue.init(protobuf:)();
        if (v0)
        {
          OUTLINED_FUNCTION_4_9();
          sub_1C8CD0D98(v175, v110);
          OUTLINED_FUNCTION_16_6();
          sub_1C8CD0D98(v2, v111);
          goto LABEL_22;
        }

        OUTLINED_FUNCTION_4_9();
        sub_1C8CD0D98(v175, v164);
        OUTLINED_FUNCTION_16_6();
        sub_1C8CD0D98(v2, v165);
        sub_1C8CD0FB0(v105);
        v50 = v107 | 0x3000000000000000;
        goto LABEL_32;
      case 4uLL:
        v77 = v62;
        v78 = swift_projectBox();
        v79 = v177;
        sub_1C8CCF5DC(v78, v177);
        type metadata accessor for TypedValue.QueryValue(0);
        swift_allocBox();
        OUTLINED_FUNCTION_170_2();
        OUTLINED_FUNCTION_168_1();
        sub_1C8CCF5DC(v80, v81);

        TypedValue.QueryValue.init(protobuf:)(v39, v82, v83, v84, v85, v86, v87, v88, v175, v176);
        if (v0)
        {
          OUTLINED_FUNCTION_4_9();
          sub_1C8CD0D98(v175, v89);
          v90 = type metadata accessor for ToolKitProtoTypedValue.QueryValue;
          goto LABEL_19;
        }

        OUTLINED_FUNCTION_4_9();
        sub_1C8CD0D98(v175, v160);
        OUTLINED_FUNCTION_39_6();
        sub_1C8CD0D98(v79, v161);
        sub_1C8CD0FB0(v77);
        v50 |= 0x4000000000000000uLL;
        goto LABEL_32;
      case 5uLL:
        v77 = v62;
        v145 = swift_projectBox();
        v79 = v179;
        sub_1C8CCF5DC(v145, v179);
        type metadata accessor for TypedValue.EntityIdentifierValue(0);
        swift_allocBox();
        OUTLINED_FUNCTION_170_2();
        v146 = v176;
        sub_1C8CCF5DC(v79, v176);

        TypedValue.EntityIdentifierValue.init(protobuf:)(v146, v147, v148, v149, v150, v151, v152, v153);
        if (!v0)
        {
          OUTLINED_FUNCTION_4_9();
          sub_1C8CD0D98(v175, v172);
          sub_1C8CD0D98(v79, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
          sub_1C8CD0FB0(v77);
          v50 |= 0x6000000000000000uLL;
          goto LABEL_32;
        }

        OUTLINED_FUNCTION_4_9();
        sub_1C8CD0D98(v175, v154);
        v90 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue;
LABEL_19:
        sub_1C8CD0D98(v79, v90);
        swift_deallocBox();
        v104 = v77;
        goto LABEL_23;
      case 6uLL:
        v105 = v62;
        v155 = swift_projectBox();
        v156 = v180;
        sub_1C8CCF5DC(v155, v180);
        v157 = swift_allocObject();
        sub_1C8CCF5DC(v156, v178);

        TypedValue.DeferredValue.init(protobuf:)();
        if (!v0)
        {
          OUTLINED_FUNCTION_4_9();
          sub_1C8CD0D98(v175, v173);
          OUTLINED_FUNCTION_15_6();
          sub_1C8CD0D98(v156, v174);
          sub_1C8CD0FB0(v105);
          v50 = v157 | 0x5000000000000000;
          goto LABEL_32;
        }

        OUTLINED_FUNCTION_4_9();
        sub_1C8CD0D98(v175, v158);
        OUTLINED_FUNCTION_15_6();
        sub_1C8CD0D98(v156, v159);
LABEL_22:
        swift_deallocUninitializedObject();
        v104 = v105;
        goto LABEL_23;
      case 7uLL:
        v112 = v62;
        v113 = swift_projectBox();
        v114 = v183;
        sub_1C8CCF5DC(v113, v183);
        v115 = swift_allocBox();
        v179 = v116;
        v180 = v115;
        v117 = v182;
        OUTLINED_FUNCTION_168_1();
        sub_1C8CCF5DC(v118, v119);
        v120 = v117[1];
        v121 = v186;
        *v186 = *v117;
        v121[1] = v120;
        v122 = v117[2];
        v123 = v117[3];
        v121[2] = v122;
        v121[3] = v123;
        type metadata accessor for DisplayRepresentation(0);
        sub_1C8D4F62C(v117 + *(v181 + 24), v184, &qword_1EC312A48, &unk_1C9072A10);
        sub_1C8CD1784(v112);

        sub_1C8CE9144(v122, v123);
        OUTLINED_FUNCTION_5_12();
        sub_1C8CD0B28(v124, v125, &protocol conformance descriptor for DisplayRepresentation);
        v126 = v185;
        OUTLINED_FUNCTION_190_2();
        sub_1C906350C();
        if (v0)
        {
          OUTLINED_FUNCTION_4_9();
          sub_1C8CD0D98(v175, v127);
          sub_1C8CD0D98(v117, type metadata accessor for ToolKitProtoTypedValue.CodableValue);
          v128 = OUTLINED_FUNCTION_253();
          sub_1C8CD0D98(v128, v129);

          sub_1C8CE7B78(v121[2], v121[3]);
          swift_deallocBox();
          v104 = v112;
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_4_9();
        sub_1C8CD0D98(v175, v166);
        sub_1C8CD0D98(v117, type metadata accessor for ToolKitProtoTypedValue.CodableValue);
        sub_1C8CD0D98(v114, type metadata accessor for ToolKitProtoTypedValue.CodableValue);
        sub_1C8D4F550(v126, v121 + *(v187 + 24), &qword_1EC312788, &unk_1C906A3A0);
        sub_1C8D50228(v121, v179);
        sub_1C8CD0FB0(v112);
        v50 = v180 | 0x8000000000000000;
        goto LABEL_32;
      default:
        v73 = v62;
        v74 = swift_projectBox();
        sub_1C8CCF5DC(v74, v6);
        type metadata accessor for TypedValue.PrimitiveValue(0);
        swift_allocBox();
        OUTLINED_FUNCTION_170_2();
        sub_1C8CCF5DC(v6, v4);

        TypedValue.PrimitiveValue.init(protobuf:)(v4);
        if (v0)
        {
          OUTLINED_FUNCTION_4_9();
          sub_1C8CD0D98(v175, v75);
          OUTLINED_FUNCTION_1_13();
          sub_1C8CD0D98(v6, v76);
LABEL_10:
          swift_deallocBox();
          v104 = v73;
LABEL_23:
          sub_1C8CD0FB0(v104);
        }

        else
        {
          OUTLINED_FUNCTION_4_9();
          sub_1C8CD0D98(v175, v167);
          OUTLINED_FUNCTION_1_13();
          sub_1C8CD0D98(v6, v168);
          sub_1C8CD0FB0(v73);
LABEL_32:
          *v188 = v50;
        }

        break;
    }
  }

  else
  {
    v63 = v61;
    v64 = OUTLINED_FUNCTION_94();
    __swift_instantiateConcreteTypeFromMangledNameV2(v64, v65);
    OUTLINED_FUNCTION_116();
    v69 = sub_1C8D4F674(v66, v67, v68);
    OUTLINED_FUNCTION_89(v69);
    *v70 = &type metadata for ToolKitProtoTypedValueKind;
    OUTLINED_FUNCTION_10_0();
    (*(v71 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_4_9();
    sub_1C8CD0D98(v63, v72);
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void TypedValue.PrimitiveValue.init(protobuf:)(uint64_t a1)
{
  OUTLINED_FUNCTION_199_1();
  v439 = v2;
  v7 = v6;
  v434 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139A8, &unk_1C9074CE0);
  OUTLINED_FUNCTION_9(v9);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_97();
  v432 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B0, &qword_1C906F528);
  OUTLINED_FUNCTION_9(v12);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_97();
  v431 = v14;
  v15 = OUTLINED_FUNCTION_111();
  v430 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents(v15);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_12();
  v437 = v17;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_147();
  v438 = v19;
  v20 = OUTLINED_FUNCTION_111();
  v21 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Duration(v20);
  v22 = OUTLINED_FUNCTION_9(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_12();
  v429 = v23;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_147();
  v428 = v25;
  v26 = OUTLINED_FUNCTION_111();
  v27 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateInterval(v26);
  v28 = OUTLINED_FUNCTION_9(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_12();
  v424 = v29;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_147();
  v427 = v31;
  v32 = OUTLINED_FUNCTION_111();
  v33 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(v32);
  v34 = OUTLINED_FUNCTION_9(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_12();
  v421 = v35;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_147();
  v425 = v37;
  v38 = OUTLINED_FUNCTION_111();
  v39 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(v38);
  v40 = OUTLINED_FUNCTION_9(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_12();
  v419 = v41;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_147();
  v422 = v43;
  v44 = OUTLINED_FUNCTION_111();
  v398 = type metadata accessor for TypedValue.PrimitiveValue.Shortcut(v44);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_7_0();
  v426 = v46;
  v47 = OUTLINED_FUNCTION_111();
  v416 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Shortcut(v47);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_12();
  v436 = v49;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_147();
  v423 = v51;
  v52 = OUTLINED_FUNCTION_111();
  v397 = type metadata accessor for TypedValue.PrimitiveValue.AppValue(v52);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_7_0();
  v420 = v54;
  v55 = OUTLINED_FUNCTION_111();
  v414 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(v55);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_147();
  v418 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  v60 = OUTLINED_FUNCTION_9(v59);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_147();
  v409 = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  v65 = OUTLINED_FUNCTION_9(v64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_12();
  v435 = v66;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_147();
  v70 = OUTLINED_FUNCTION_27_0(v69);
  v407 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(v70);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_147();
  v74 = OUTLINED_FUNCTION_27_0(v73);
  v75 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(v74);
  v76 = OUTLINED_FUNCTION_9(v75);
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_147();
  v79 = OUTLINED_FUNCTION_27_0(v78);
  v80 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(v79);
  v81 = OUTLINED_FUNCTION_9(v80);
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_147();
  v84 = OUTLINED_FUNCTION_27_0(v83);
  v85 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(v84);
  v86 = OUTLINED_FUNCTION_9(v85);
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_147();
  v89 = OUTLINED_FUNCTION_27_0(v88);
  v90 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(v89);
  v91 = OUTLINED_FUNCTION_9(v90);
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_147();
  v94 = OUTLINED_FUNCTION_27_0(v93);
  v95 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(v94);
  v96 = OUTLINED_FUNCTION_9(v95);
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_27_0(v98);
  v404 = sub_1C906378C();
  OUTLINED_FUNCTION_11();
  v403 = v99;
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_7_0();
  v102 = OUTLINED_FUNCTION_27_0(v101);
  v433 = type metadata accessor for TypedValue.PrimitiveValue(v102);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_147();
  v120 = OUTLINED_FUNCTION_27_0(v119);
  v121 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(v120);
  v122 = OUTLINED_FUNCTION_9(v121);
  MEMORY[0x1EEE9AC00](v122);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v123);
  v125 = &v392 - v124;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  OUTLINED_FUNCTION_9(v126);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_38();
  v128 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_61_3();
  MEMORY[0x1EEE9AC00](v130);
  OUTLINED_FUNCTION_84();
  sub_1C8D4F62C(v7, v3, &qword_1EC3139B8, &qword_1C9074DD0);
  OUTLINED_FUNCTION_71_2(v3);
  if (v131)
  {
    sub_1C8CD0CC8(v3, &qword_1EC3139B8);
    v132 = OUTLINED_FUNCTION_94();
    __swift_instantiateConcreteTypeFromMangledNameV2(v132, v133);
    OUTLINED_FUNCTION_116();
    v137 = sub_1C8D4F674(v134, v135, v136);
    OUTLINED_FUNCTION_89(v137);
    *v138 = v128;
    OUTLINED_FUNCTION_10_0();
    (*(v139 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_1_13();
    v141 = v7;
LABEL_48:
    sub_1C8CD0D98(v141, v140);
  }

  else
  {
    OUTLINED_FUNCTION_6_8();
    sub_1C8D50228(v3, v5);
    v142 = OUTLINED_FUNCTION_164_1();
    sub_1C8CCF5DC(v142, v1);
    OUTLINED_FUNCTION_210();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v145 = v437;
    v144 = v438;
    v147 = v435;
    v146 = v436;
    switch(EnumCaseMultiPayload)
    {
      case 1:
      case 2:
        v197 = OUTLINED_FUNCTION_0_17();
        sub_1C8CD0D98(v197, v198);
        OUTLINED_FUNCTION_2_10();
        sub_1C8CD0D98(v5, v199);
        *v434 = *v1;
        goto LABEL_50;
      case 3:
        v217 = OUTLINED_FUNCTION_159();
        sub_1C8D50228(v217, v125);
        sub_1C8CCF5DC(v125, v4);
        v218 = v439;
        v219 = NSDecimal.init(protobuf:)(v4);
        if (v218)
        {
          v222 = OUTLINED_FUNCTION_0_17();
          sub_1C8CD0D98(v222, v223);
          OUTLINED_FUNCTION_23_6();
          v328 = v125;
          goto LABEL_47;
        }

        v343 = v219;
        v344 = v220;
        v345 = v221;
        LODWORD(v439) = HIWORD(v221);
        v437 = HIDWORD(v220);
        v438 = HIWORD(v220);
        v436 = (v220 >> 16);
        v346 = HIWORD(v219);
        v347 = v5;
        v348 = HIDWORD(v219);
        v349 = OUTLINED_FUNCTION_0_17();
        sub_1C8CD0D98(v349, v350);
        OUTLINED_FUNCTION_23_6();
        sub_1C8CD0D98(v125, v351);
        OUTLINED_FUNCTION_2_10();
        sub_1C8CD0D98(v347, v352);
        v353 = v393;
        *v393 = v343;
        v353[2] = v348;
        v353[3] = v346;
        v353[4] = v344;
        v354 = v437;
        v353[5] = v436;
        v353[6] = v354;
        v353[7] = v438;
        v353[8] = v345;
        v353[9] = v439;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_9_9();
        v391 = v353;
        goto LABEL_67;
      case 4:
        v176 = OUTLINED_FUNCTION_0_17();
        sub_1C8CD0D98(v176, v177);
        OUTLINED_FUNCTION_2_10();
        sub_1C8CD0D98(v5, v178);
        v179 = v1[1];
        v180 = v434;
        *v434 = *v1;
        v180[1] = v179;
        goto LABEL_50;
      case 5:
        OUTLINED_FUNCTION_161_1();
        (*(v241 + 32))(v402, v1, v404);
        sub_1C906376C();
        v242 = OUTLINED_FUNCTION_0_17();
        sub_1C8CD0D98(v242, v243);
        v244 = OUTLINED_FUNCTION_181();
        v245(v244);
        OUTLINED_FUNCTION_2_10();
        sub_1C8CD0D98(v5, v246);
        OUTLINED_FUNCTION_133_2();
        goto LABEL_50;
      case 6:
        v273 = *v1;
        v151 = v1[1];
        sub_1C90636FC();
        OUTLINED_FUNCTION_257();
        sub_1C9061BAC();
        sub_1C8CD0B28(&qword_1EDA66700, MEMORY[0x1E6968278], MEMORY[0x1E6968298]);
        v274 = v400;
        OUTLINED_FUNCTION_112();
        v275 = v439;
        sub_1C906189C();
        if (!v275)
        {
          goto LABEL_64;
        }

        goto LABEL_40;
      case 7:
        v224 = *v1;
        v225 = v1[1];
        v226 = v399;
        v227 = v439;
        URL.init(protobuf:)(v224, v225);
        if (v227)
        {
          goto LABEL_42;
        }

        v228 = OUTLINED_FUNCTION_0_17();
        sub_1C8CD0D98(v228, v229);
        OUTLINED_FUNCTION_2_10();
        sub_1C8CD0D98(v5, v230);
        OUTLINED_FUNCTION_133_2();
        goto LABEL_62;
      case 8:
        v273 = *v1;
        v151 = v1[1];
        sub_1C90636FC();
        OUTLINED_FUNCTION_257();
        sub_1C9061C0C();
        OUTLINED_FUNCTION_35_4();
        sub_1C8CD0B28(v298, v299, MEMORY[0x1E6968868]);
        v274 = v401;
        OUTLINED_FUNCTION_112();
        v300 = v439;
        sub_1C906189C();
        if (v300)
        {
LABEL_40:

          v156 = v273;
          goto LABEL_41;
        }

LABEL_64:

        sub_1C8CE7B78(v273, v151);
        v380 = OUTLINED_FUNCTION_0_17();
        sub_1C8CD0D98(v380, v381);
        OUTLINED_FUNCTION_2_10();
        sub_1C8CD0D98(v5, v382);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_9_9();
        v391 = v274;
        goto LABEL_67;
      case 9:
        v189 = OUTLINED_FUNCTION_159();
        v190 = v405;
        sub_1C8D50228(v189, v405);
        v191 = v406;
        sub_1C8CCF5DC(v190, v406);
        sub_1C8CB78AC(0, &qword_1EDA6DAA8, 0x1E696AFD0);

        v192 = OUTLINED_FUNCTION_94();
        sub_1C8D32334(v192, v193);
        sub_1C90618CC();
        v194 = OUTLINED_FUNCTION_0_17();
        sub_1C8CD0D98(v194, v195);
        sub_1C8CD0D98(v191, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
        sub_1C8CD0D98(v190, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
        OUTLINED_FUNCTION_2_10();
        sub_1C8CD0D98(v5, v196);
        goto LABEL_50;
      case 10:
        OUTLINED_FUNCTION_159();
        OUTLINED_FUNCTION_130_0();
        sub_1C8D50228(v292, v293);
        OUTLINED_FUNCTION_159();
        OUTLINED_FUNCTION_108_0();
        sub_1C8CCF5DC(v294, v295);
        OUTLINED_FUNCTION_28_2();
        TypedValue.PrimitiveValue.CurrencyAmountValue.init(protobuf:)();
        if (v2)
        {
          v296 = OUTLINED_FUNCTION_0_17();
          sub_1C8CD0D98(v296, v297);
          v175 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount;
          goto LABEL_46;
        }

        v376 = OUTLINED_FUNCTION_0_17();
        sub_1C8CD0D98(v376, v377);
        OUTLINED_FUNCTION_36_4();
        sub_1C8CD0D98(v1, v378);
        OUTLINED_FUNCTION_2_10();
        sub_1C8CD0D98(v5, v379);
        OUTLINED_FUNCTION_128_2();
        goto LABEL_66;
      case 11:
        OUTLINED_FUNCTION_159();
        OUTLINED_FUNCTION_130_0();
        sub_1C8D50228(v169, v170);
        OUTLINED_FUNCTION_159();
        OUTLINED_FUNCTION_108_0();
        sub_1C8CCF5DC(v171, v172);
        OUTLINED_FUNCTION_28_2();
        TypedValue.PrimitiveValue.PaymentMethodValue.init(protobuf:)();
        if (!v2)
        {
          goto LABEL_53;
        }

        v173 = OUTLINED_FUNCTION_0_17();
        sub_1C8CD0D98(v173, v174);
        v175 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod;
        goto LABEL_46;
      case 12:
        OUTLINED_FUNCTION_159();
        OUTLINED_FUNCTION_130_0();
        sub_1C8D50228(v181, v182);
        OUTLINED_FUNCTION_159();
        OUTLINED_FUNCTION_108_0();
        sub_1C8CCF5DC(v183, v184);
        v185 = OUTLINED_FUNCTION_28_2();
        TypedValue.PrimitiveValue.PlacemarkValue.init(protobuf:)(v185, v186);
        if (v2)
        {
          v187 = OUTLINED_FUNCTION_0_17();
          sub_1C8CD0D98(v187, v188);
          v175 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark;
          goto LABEL_46;
        }

        v332 = OUTLINED_FUNCTION_0_17();
        sub_1C8CD0D98(v332, v333);
        OUTLINED_FUNCTION_19_4();
        OUTLINED_FUNCTION_2_10();
        sub_1C8CD0D98(v5, v334);
        OUTLINED_FUNCTION_128_2();
        goto LABEL_66;
      case 13:
        OUTLINED_FUNCTION_159();
        OUTLINED_FUNCTION_130_0();
        sub_1C8D50228(v259, v260);
        OUTLINED_FUNCTION_159();
        OUTLINED_FUNCTION_108_0();
        sub_1C8CCF5DC(v261, v262);
        v263 = OUTLINED_FUNCTION_28_2();
        TypedValue.PrimitiveValue.PersonValue.init(protobuf:)(v263, v264, v265, v266, v267, v268, v269, v270, v392, v393);
        if (v2)
        {
          v271 = OUTLINED_FUNCTION_0_17();
          sub_1C8CD0D98(v271, v272);
          v175 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person;
          goto LABEL_46;
        }

        v364 = OUTLINED_FUNCTION_0_17();
        sub_1C8CD0D98(v364, v365);
        OUTLINED_FUNCTION_7_7();
        sub_1C8CD0D98(v1, v366);
        OUTLINED_FUNCTION_2_10();
        sub_1C8CD0D98(v5, v367);
        OUTLINED_FUNCTION_128_2();
        goto LABEL_66;
      case 14:
        v157 = OUTLINED_FUNCTION_159();
        v158 = v415;
        sub_1C8D50228(v157, v415);
        v159 = v410;
        sub_1C8CCF5DC(v158, v410);
        type metadata accessor for DisplayRepresentation(0);
        OUTLINED_FUNCTION_129_0();
        OUTLINED_FUNCTION_130_0();
        sub_1C8D4F62C(v160, v161, v162, v163);
        OUTLINED_FUNCTION_5_12();
        sub_1C8CD0B28(v164, v165, &protocol conformance descriptor for DisplayRepresentation);
        v166 = v408;
        OUTLINED_FUNCTION_94();
        v167 = v439;
        sub_1C906350C();
        if (v167)
        {
          OUTLINED_FUNCTION_8_9();
          sub_1C8CD0D98(v159, v168);
          OUTLINED_FUNCTION_1_13();
          sub_1C8CD0D98(v325, v326);
          OUTLINED_FUNCTION_8_9();
          v328 = v158;
          goto LABEL_47;
        }

        v321 = v395;
        v322 = sub_1C8D4F550(v166, v395, &qword_1EC312788, &unk_1C906A3A0);
        v323 = MEMORY[0x1CCA82A80](v322);
        v324 = OUTLINED_FUNCTION_253();
        v387 = sub_1C8D00224(v324);
        objc_autoreleasePoolPop(v323);
        sub_1C8CD0D98(v159, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
        *(v321 + *(type metadata accessor for TypedValue.PrimitiveValue.FileValue(0) + 20)) = v387;
        v388 = OUTLINED_FUNCTION_0_17();
        sub_1C8CD0D98(v388, v389);
        sub_1C8CD0D98(v158, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
        OUTLINED_FUNCTION_2_10();
        sub_1C8CD0D98(v5, v390);
        OUTLINED_FUNCTION_193_0();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_9_9();
        v391 = v321;
        goto LABEL_67;
      case 15:
        v200 = OUTLINED_FUNCTION_159();
        v201 = v418;
        sub_1C8D50228(v200, v418);
        v146 = v417;
        sub_1C8CCF5DC(v201, v417);
        v202 = v146[1];
        v203 = v420;
        *v420 = *v146;
        v203[1] = v202;
        type metadata accessor for DisplayRepresentation(0);
        OUTLINED_FUNCTION_129_0();
        sub_1C8D4F62C(v146 + v204, v411, &qword_1EC312A48, &unk_1C9072A10);
        OUTLINED_FUNCTION_5_12();
        v207 = sub_1C8CD0B28(v205, v206, &protocol conformance descriptor for DisplayRepresentation);
        OUTLINED_FUNCTION_204_0(v207, v208, v209, v210, v211);
        v212 = v413;
        OUTLINED_FUNCTION_139_0();
        v213 = v439;
        sub_1C906350C();
        if (v213)
        {
          v214 = OUTLINED_FUNCTION_0_17();
          sub_1C8CD0D98(v214, v215);
          v216 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App;
          goto LABEL_36;
        }

        v335 = OUTLINED_FUNCTION_0_17();
        sub_1C8CD0D98(v335, v336);
        v226 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App;
        sub_1C8CD0D98(v146, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
        v337 = OUTLINED_FUNCTION_148();
        sub_1C8CD0D98(v337, v338);
        OUTLINED_FUNCTION_2_10();
        sub_1C8CD0D98(v5, v339);
        OUTLINED_FUNCTION_129_0();
        sub_1C8D4F550(v212, v203 + v340, &qword_1EC312788, &unk_1C906A3A0);
        OUTLINED_FUNCTION_103_2();
        OUTLINED_FUNCTION_130_0();
        sub_1C8D50228(v341, v342);
        OUTLINED_FUNCTION_133_2();
        goto LABEL_62;
      case 16:
        v152 = *v1;
        v151 = v1[1];
        v153 = MEMORY[0x1CCA82A80]();
        v154 = v439;
        v155 = sub_1C8D00800(v152, v151);
        if (!v154)
        {
          v317 = v155;
          objc_autoreleasePoolPop(v153);
          sub_1C8CE7B78(v152, v151);
          v318 = OUTLINED_FUNCTION_0_17();
          sub_1C8CD0D98(v318, v319);
          OUTLINED_FUNCTION_2_10();
          sub_1C8CD0D98(v5, v320);
          v226 = v394;
          *v394 = v317;
          OUTLINED_FUNCTION_133_2();
          goto LABEL_62;
        }

        objc_autoreleasePoolPop(v153);
        v156 = v152;
LABEL_41:
        sub_1C8CE7B78(v156, v151);
LABEL_42:
        v328 = OUTLINED_FUNCTION_0_17();
        goto LABEL_47;
      case 17:
        v231 = OUTLINED_FUNCTION_159();
        v1 = v422;
        sub_1C8D50228(v231, v422);
        v232 = OUTLINED_FUNCTION_159();
        sub_1C8CCF5DC(v232, v419);
        v233 = OUTLINED_FUNCTION_28_2();
        DateComponents.init(protobuf:)(v233);
        if (v2)
        {
          v234 = OUTLINED_FUNCTION_0_17();
          sub_1C8CD0D98(v234, v235);
          v175 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents;
          goto LABEL_46;
        }

LABEL_53:
        v329 = OUTLINED_FUNCTION_0_17();
        sub_1C8CD0D98(v329, v330);
        OUTLINED_FUNCTION_140_1();
        OUTLINED_FUNCTION_2_10();
        sub_1C8CD0D98(v5, v331);
        OUTLINED_FUNCTION_128_2();
        goto LABEL_66;
      case 18:
        v276 = OUTLINED_FUNCTION_159();
        v201 = v423;
        sub_1C8D50228(v276, v423);
        sub_1C8CCF5DC(v201, v146);
        v277 = v146[1];
        v278 = v426;
        *v426 = *v146;
        v278[1] = v277;
        type metadata accessor for DisplayRepresentation(0);
        OUTLINED_FUNCTION_129_0();
        sub_1C8D4F62C(v146 + v279, v412, &qword_1EC312A48, &unk_1C9072A10);
        OUTLINED_FUNCTION_5_12();
        v282 = sub_1C8CD0B28(v280, v281, &protocol conformance descriptor for DisplayRepresentation);
        OUTLINED_FUNCTION_204_0(v282, v283, v284, v285, v286);
        OUTLINED_FUNCTION_139_0();
        v287 = v439;
        sub_1C906350C();
        if (v287)
        {
          v288 = OUTLINED_FUNCTION_0_17();
          sub_1C8CD0D98(v288, v289);
          v216 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Shortcut;
LABEL_36:
          v290 = v216;
          sub_1C8CD0D98(v146, v216);
          sub_1C8CD0D98(v201, v290);
          OUTLINED_FUNCTION_2_10();
          sub_1C8CD0D98(v5, v291);

          break;
        }

        v368 = OUTLINED_FUNCTION_0_17();
        sub_1C8CD0D98(v368, v369);
        v226 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Shortcut;
        sub_1C8CD0D98(v146, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Shortcut);
        v370 = OUTLINED_FUNCTION_148();
        sub_1C8CD0D98(v370, v371);
        OUTLINED_FUNCTION_2_10();
        sub_1C8CD0D98(v5, v372);
        OUTLINED_FUNCTION_129_0();
        sub_1C8D4F550(v147, v278 + v373, &qword_1EC312788, &unk_1C906A3A0);
        OUTLINED_FUNCTION_102_1();
        OUTLINED_FUNCTION_130_0();
        sub_1C8D50228(v374, v375);
        OUTLINED_FUNCTION_133_2();
LABEL_62:
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_9_9();
        v391 = v226;
        goto LABEL_67;
      case 19:
        v310 = OUTLINED_FUNCTION_159();
        v1 = v425;
        sub_1C8D50228(v310, v425);
        v311 = OUTLINED_FUNCTION_159();
        sub_1C8CCF5DC(v311, v421);
        OUTLINED_FUNCTION_28_2();
        Calendar.RecurrenceRule.init(protobuf:)();
        if (v2)
        {
          v312 = OUTLINED_FUNCTION_0_17();
          sub_1C8CD0D98(v312, v313);
          v175 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule;
          goto LABEL_46;
        }

        v383 = OUTLINED_FUNCTION_0_17();
        sub_1C8CD0D98(v383, v384);
        OUTLINED_FUNCTION_34_5();
        sub_1C8CD0D98(v1, v385);
        OUTLINED_FUNCTION_2_10();
        sub_1C8CD0D98(v5, v386);
        OUTLINED_FUNCTION_128_2();
        goto LABEL_66;
      case 20:
        v236 = OUTLINED_FUNCTION_159();
        v1 = v427;
        sub_1C8D50228(v236, v427);
        v237 = OUTLINED_FUNCTION_159();
        sub_1C8CCF5DC(v237, v424);
        v238 = OUTLINED_FUNCTION_28_2();
        DateInterval.init(protobuf:)(v238);
        if (v2)
        {
          v239 = OUTLINED_FUNCTION_0_17();
          sub_1C8CD0D98(v239, v240);
          v175 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateInterval;
LABEL_46:
          v327 = v175;
          v328 = v1;
LABEL_47:
          sub_1C8CD0D98(v328, v327);
          OUTLINED_FUNCTION_2_10();
          v141 = v5;
          goto LABEL_48;
        }

        v355 = OUTLINED_FUNCTION_0_17();
        sub_1C8CD0D98(v355, v356);
        OUTLINED_FUNCTION_37_6();
        sub_1C8CD0D98(v1, v357);
        OUTLINED_FUNCTION_2_10();
        sub_1C8CD0D98(v5, v358);
        OUTLINED_FUNCTION_128_2();
LABEL_66:
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_9_9();
        v391 = v144;
LABEL_67:
        sub_1C8D50228(v391, v434);
        break;
      case 21:
        v436 = v5;
        v247 = OUTLINED_FUNCTION_159();
        sub_1C8D50228(v247, v144);
        v248 = OUTLINED_FUNCTION_288();
        sub_1C8CCF5DC(v248, v249);
        v250 = *v145;
        v428 = v145[2];
        v429 = v250;
        v251 = v145[4];
        v252 = v145[7];
        v426 = v145[6];
        v427 = v251;
        v253 = v145[8];
        v424 = v145[10];
        v425 = v253;
        sub_1C8D4F62C(v145 + *(v430 + 40), v432, &qword_1EC3139A8, &unk_1C9074CE0);

        v435 = v252;

        v254 = v439;
        sub_1C8D46CE8();
        v439 = v254;
        if (v254)
        {

          v255 = OUTLINED_FUNCTION_0_17();
          sub_1C8CD0D98(v255, v256);
          OUTLINED_FUNCTION_22_7();
          sub_1C8CD0D98(v145, v257);
          OUTLINED_FUNCTION_203_0();
          OUTLINED_FUNCTION_2_10();
          sub_1C8CD0D98(v436, v258);
        }

        else
        {
          v359 = v396;
          sub_1C9061CCC();
          v360 = OUTLINED_FUNCTION_0_17();
          sub_1C8CD0D98(v360, v361);
          OUTLINED_FUNCTION_22_7();
          sub_1C8CD0D98(v145, v362);
          OUTLINED_FUNCTION_203_0();
          OUTLINED_FUNCTION_2_10();
          sub_1C8CD0D98(v436, v363);
          OUTLINED_FUNCTION_149_1();
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_9_9();
          sub_1C8D50228(v359, v434);
        }

        break;
      case 22:
        v301 = OUTLINED_FUNCTION_159();
        v302 = v428;
        sub_1C8D50228(v301, v428);
        v303 = v429;
        sub_1C8CCF5DC(v302, v429);
        sub_1C9064E4C();
        OUTLINED_FUNCTION_171_0();
        v304 = OUTLINED_FUNCTION_0_17();
        sub_1C8CD0D98(v304, v305);
        sub_1C8CD0D98(v303, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Duration);
        v306 = OUTLINED_FUNCTION_278();
        sub_1C8CD0D98(v306, v307);
        OUTLINED_FUNCTION_2_10();
        sub_1C8CD0D98(v5, v308);
        v309 = v434;
        *v434 = v1;
        v309[1] = v125;
        goto LABEL_50;
      case 23:
        v314 = OUTLINED_FUNCTION_0_17();
        sub_1C8CD0D98(v314, v315);
        OUTLINED_FUNCTION_2_10();
        sub_1C8CD0D98(v5, v316);
        goto LABEL_50;
      default:
        v148 = OUTLINED_FUNCTION_0_17();
        sub_1C8CD0D98(v148, v149);
        OUTLINED_FUNCTION_2_10();
        sub_1C8CD0D98(v5, v150);
        *v434 = *v1;
LABEL_50:
        swift_storeEnumTagMultiPayload();
        break;
    }
  }

  OUTLINED_FUNCTION_200_1();
}

void TypedValue.EntityValue.init(protobuf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_116_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_9(v14);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_86();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v16);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_233();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  OUTLINED_FUNCTION_9(v18);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_110();
  v20 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  OUTLINED_FUNCTION_168_1();
  v24 = sub_1C8D4F62C(v21, v22, v23, &qword_1C9072A40);
  sub_1C8D4F014(v24, v25, v26);
  v27 = sub_1C906351C();
  if (v12)
  {
    OUTLINED_FUNCTION_17_4();
    sub_1C8CD0D98(v11, v30);
  }

  else
  {
    v31 = *v11;
    v32 = v11[1];
    *v10 = a10;
    v10[1] = v31;
    v10[2] = v32;
    sub_1C8D4F068(v27, v28, v29);

    v10[3] = sub_1C9063E3C();
    type metadata accessor for DisplayRepresentation(0);
    v33 = OUTLINED_FUNCTION_198_0(v20[7]);
    sub_1C8D4F62C(v33, v34, v35, v36);
    OUTLINED_FUNCTION_5_12();
    sub_1C8CD0B28(v37, v38, &protocol conformance descriptor for DisplayRepresentation);
    OUTLINED_FUNCTION_192_1();
    sub_1C906350C();
    v39 = type metadata accessor for TypedValue.EntityValue(0);
    sub_1C8D4F550(v13, v10 + v39[7], &qword_1EC312788, &unk_1C906A3A0);
    if (*(v11 + v20[8] + 8) >> 60 == 15)
    {
      v40 = 0;
    }

    else
    {
      v41 = OUTLINED_FUNCTION_293();
      v43 = sub_1C8CE9144(v41, v42);
      v56 = MEMORY[0x1CCA82A80](v43);
      v44 = OUTLINED_FUNCTION_293();
      v40 = sub_1C8D00030(v44);
      objc_autoreleasePoolPop(v56);
      v45 = OUTLINED_FUNCTION_293();
      sub_1C8CE7BD0(v45, v46);
    }

    *(v10 + v39[8]) = v40;
    if (*(v11 + v20[9] + 8) >> 60 == 15)
    {
      v47 = 0;
    }

    else
    {
      v57 = v39;
      v48 = OUTLINED_FUNCTION_114();
      v50 = sub_1C8CE9144(v48, v49);
      v51 = MEMORY[0x1CCA82A80](v50);
      v52 = OUTLINED_FUNCTION_114();
      v47 = sub_1C8CFFE3C(v52);
      objc_autoreleasePoolPop(v51);
      v53 = OUTLINED_FUNCTION_114();
      sub_1C8CE7BD0(v53, v54);
      v39 = v57;
    }

    OUTLINED_FUNCTION_17_4();
    sub_1C8CD0D98(v11, v55);
    *(v10 + v39[9]) = v47;
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

uint64_t TypedValue.CollectionValue.init(protobuf:)()
{
  OUTLINED_FUNCTION_116_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v3);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_73();
  v5 = OUTLINED_FUNCTION_181_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_9(v7);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_86();
  v9 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
  v10 = OUTLINED_FUNCTION_198_0(*(v9 + 20));
  v12 = sub_1C8D4F62C(v10, v11, &qword_1EC3139D8, &qword_1C9072A40);
  sub_1C8D4F014(v12, v13, v14);
  sub_1C906351C();
  if (v2)
  {
    OUTLINED_FUNCTION_16_6();
    return sub_1C8CD0D98(v1, v15);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_197_1(*(v9 + 24));
    v21 = sub_1C8D4F62C(v17, v18, v19, v20);
    sub_1C8D1FD40(v21, v22, v23);
    v24 = sub_1C906350C();
    v25 = v30;
    sub_1C8D4F068(v24, v26, v27);

    v28 = sub_1C90641EC();
    OUTLINED_FUNCTION_16_6();
    sub_1C8CD0D98(v1, v29);
    if ((~v30 & 0xF000000000000007) != 0)
    {
    }

    else
    {
      result = swift_allocObject();
      v25 = result;
      *(result + 16) = v30;
    }

    *v0 = v25;
    v0[1] = v28;
  }

  return result;
}

void TypedValue.QueryValue.init(protobuf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139E0, &qword_1C906F538);
  OUTLINED_FUNCTION_9(v16);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_73();
  type metadata accessor for Query(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_34_3();
  v19 = OUTLINED_FUNCTION_226_1();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
  OUTLINED_FUNCTION_9(v21);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_168_1();
  v26 = sub_1C8D4F62C(v23, v24, v25, &qword_1C9072A40);
  sub_1C8D4F014(v26, v27, v28);
  sub_1C906351C();
  if (v10)
  {
    OUTLINED_FUNCTION_39_6();
    sub_1C8CD0D98(v13, v29);
  }

  else
  {
    *v15 = a10;
    Value = type metadata accessor for ToolKitProtoTypedValue.QueryValue(0);
    v31 = OUTLINED_FUNCTION_197_1(*(Value + 20));
    sub_1C8D4F62C(v31, v32, v33, v34);
    sub_1C8CD0B28(&qword_1EC3139E8, type metadata accessor for Query, &protocol conformance descriptor for Query);
    OUTLINED_FUNCTION_194_1();
    sub_1C906351C();
    OUTLINED_FUNCTION_39_6();
    sub_1C8CD0D98(v13, v35);
    v36 = type metadata accessor for TypedValue.QueryValue(0);
    sub_1C8D50228(v11, v15 + *(v36 + 20));
  }

  OUTLINED_FUNCTION_333();
  OUTLINED_FUNCTION_198();
}

void sub_1C8D43674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  v41 = v13;
  v42 = v14;
  v43 = v15;
  v17 = v16;
  v19 = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_9(v20);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_233();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v22);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_15_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  OUTLINED_FUNCTION_9(v24);
  OUTLINED_FUNCTION_82();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v40 - v27;
  v29 = v17(0, v26);
  v30 = sub_1C8D4F62C(v19 + *(v29 + 20), v28, &qword_1EC3139D8, &qword_1C9072A40);
  sub_1C8D4F014(v30, v31, v32);
  sub_1C906351C();
  if (v10)
  {
    sub_1C8CD0D98(v19, v43);
  }

  else
  {
    v34 = v41;
    v33 = v42;
    v35 = *v19;
    v36 = v19[1];
    *v42 = a10;
    v33[1] = v35;
    v33[2] = v36;
    type metadata accessor for DisplayRepresentation(0);
    sub_1C8D4F62C(v19 + *(v29 + 24), v12, &qword_1EC312A48, &unk_1C9072A10);
    OUTLINED_FUNCTION_5_12();
    sub_1C8CD0B28(v37, v38, &protocol conformance descriptor for DisplayRepresentation);

    OUTLINED_FUNCTION_139_0();
    sub_1C906350C();
    sub_1C8CD0D98(v19, v43);
    v39 = v34(0);
    sub_1C8D4F550(v11, v33 + *(v39 + 24), &qword_1EC312788, &unk_1C906A3A0);
  }

  OUTLINED_FUNCTION_187_1();
  OUTLINED_FUNCTION_198();
}

void TypedValue.DeferredValue.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139F0, &unk_1C9074D10);
  OUTLINED_FUNCTION_9(v8);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_38();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v10);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15_0();
  v12 = OUTLINED_FUNCTION_181_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_9(v14);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_86();
  v16 = sub_1C8D4F62C(v5, v3, &qword_1EC3139D8, &qword_1C9072A40);
  sub_1C8D4F014(v16, v17, v18);
  sub_1C906351C();
  if (v0)
  {
    OUTLINED_FUNCTION_15_6();
    sub_1C8CD0D98(v5, v19);
  }

  else
  {
    v20 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
    v21 = sub_1C8D4F62C(v5 + *(v20 + 20), v2, &qword_1EC312A58, &unk_1C9074CC0);
    sub_1C8D1FD40(v21, v22, v23);
    sub_1C906351C();
    v24 = sub_1C8D4F62C(v5 + *(v20 + 24), v1, &qword_1EC3139F0, &unk_1C9074D10);
    sub_1C8D4F0BC(v24, v25, v26);
    sub_1C906351C();
    OUTLINED_FUNCTION_15_6();
    sub_1C8CD0D98(v5, v27);
    *v7 = v28;
    *(v7 + 8) = v28;
    *(v7 + 16) = v28;
    *(v7 + 32) = v29;
    *(v7 + 48) = v30;
  }

  OUTLINED_FUNCTION_198();
}

void TypedValue.CodableValue.init(protobuf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_176_1();
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_9(v15);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_233();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v17);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_73();
  v19 = v10[1];
  *v14 = *v10;
  v14[1] = v19;
  v21 = v10[2];
  v20 = v10[3];
  v14[2] = v21;
  v14[3] = v20;
  type metadata accessor for DisplayRepresentation(0);
  v22 = OUTLINED_FUNCTION_257();
  v23 = type metadata accessor for ToolKitProtoTypedValue.CodableValue(v22);
  sub_1C8D4F62C(v10 + *(v23 + 24), v12, &qword_1EC312A48, &unk_1C9072A10);

  sub_1C8CE9144(v21, v20);
  OUTLINED_FUNCTION_5_12();
  sub_1C8CD0B28(v24, v25, &protocol conformance descriptor for DisplayRepresentation);
  sub_1C906350C();
  v26 = OUTLINED_FUNCTION_59_3();
  sub_1C8CD0D98(v26, v27);
  if (a10)
  {

    sub_1C8CE7B78(v14[2], v14[3]);
  }

  else
  {
    v28 = type metadata accessor for TypedValue.CodableValue(0);
    sub_1C8D4F550(v11, v14 + *(v28 + 24), &qword_1EC312788, &unk_1C906A3A0);
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8D43CA8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
    sub_1C8CE7B78(a1, a2);
  }
}

void TypedValue.EntityValue.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v6 = v1;
  v8 = v7;
  v100 = v9;
  v106[1] = *MEMORY[0x1E69E9840];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  v11 = OUTLINED_FUNCTION_9(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12();
  v98 = v12;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_66();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  v15 = OUTLINED_FUNCTION_9(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_12();
  v103 = v16;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_147();
  v101 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  v20 = OUTLINED_FUNCTION_9(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_61_3();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_156_0();
  v22 = sub_1C906348C();
  OUTLINED_FUNCTION_11();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_251();
  (*(v24 + 104))(v4, *MEMORY[0x1E69E0758], v22);
  v26 = sub_1C906347C();
  (*(v24 + 8))(v4, v22);
  if ((v26 & 1) == 0)
  {
    v106[0] = *v6;

    TypeIdentifier.protobuf(useCase:)(v8);

    v37 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
    OUTLINED_FUNCTION_150();
    v41 = __swift_storeEnumTagSinglePayload(v38, v39, v40, v37);
    v43 = *(v6 + 8);
    v42 = *(v6 + 16);
    sub_1C8D4F110(v41, v44, v45);

    v46 = sub_1C9063E4C();
    if (v2)
    {
      sub_1C8CD0CC8(v0, &qword_1EC3139D8);
      goto LABEL_6;
    }

    v102 = v0;
    v97 = v43;
    v105 = v46;
    v53 = type metadata accessor for TypedValue.EntityValue(0);
    sub_1C8D4F62C(v6 + v53[7], v98, &qword_1EC312788, &unk_1C906A3A0);
    type metadata accessor for DisplayRepresentation(0);
    v54 = OUTLINED_FUNCTION_165_1();
    OUTLINED_FUNCTION_108_2(v54, 1, v55);
    if (v52)
    {
      v96 = v42;
      sub_1C8CD0CC8(v98, &qword_1EC312788);
    }

    else
    {
      DisplayRepresentation.protobuf(useCase:)();
      v96 = v42;
      OUTLINED_FUNCTION_3_13();
      sub_1C8CD0D98(v98, v62);
    }

    v57 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
    OUTLINED_FUNCTION_173_1();
    v66 = __swift_storeEnumTagSinglePayload(v63, v64, v65, v57);
    v67 = *(v6 + v53[8]);
    v68 = &off_1E832F000;
    if (v67)
    {
      v69 = MEMORY[0x1CCA82A80](v66);
      v106[0] = 0;
      v70 = [objc_opt_self() archivedDataWithRootObject:v67 requiringSecureCoding:1 error:v106];
      v71 = v106[0];
      if (!v70)
      {
        v92 = v71;
        sub_1C9061D7C();

        swift_willThrow();
        objc_autoreleasePoolPop(v69);

        goto LABEL_26;
      }

      v67 = sub_1C9061F3C();
      v99 = v72;

      objc_autoreleasePoolPop(v69);
      v68 = &off_1E832F000;
    }

    else
    {
      v99 = 0xF000000000000000;
    }

    v73 = *(v6 + v53[9]);
    if (!v73)
    {
      v94 = 0xF000000000000000;
      v95 = 0;
      goto LABEL_22;
    }

    v74 = MEMORY[0x1CCA82A80]();
    v75 = objc_opt_self();
    v106[0] = 0;
    v76 = [v75 v68[142]];
    v77 = v106[0];
    if (v76)
    {
      v78 = sub_1C9061F3C();
      v94 = v79;
      v95 = v78;

      objc_autoreleasePoolPop(v74);
LABEL_22:
      v5 = v102;
      v58 = v103;
      v104 = v67;
LABEL_23:
      v80 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
      v81 = v80[6];
      OUTLINED_FUNCTION_38_6();
      __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
      v86 = v80[7];
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v87, v88, v89, v57);
      v90 = v100 + v80[8];
      *v90 = xmmword_1C9065DB0;
      v91 = v100 + v80[9];
      *v91 = xmmword_1C9065DB0;
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      sub_1C8D4F5E4(v5, v100 + v81, &qword_1EC3139D8, &qword_1C9072A40);
      *v100 = v97;
      v100[1] = v96;
      v100[2] = v105;
      sub_1C8D4F5E4(v58, v100 + v86, &qword_1EC312A48, &unk_1C9072A10);
      sub_1C8CE7BD0(*v90, *(v90 + 1));
      *v90 = v104;
      *(v90 + 1) = v99;
      sub_1C8CE7BD0(*v91, *(v91 + 1));
      *v91 = v95;
      *(v91 + 1) = v94;
      goto LABEL_27;
    }

    v93 = v77;
    sub_1C9061D7C();

    swift_willThrow();
    objc_autoreleasePoolPop(v74);

    sub_1C8CE7BD0(v67, v99);
LABEL_26:
    sub_1C8CD0CC8(v103, &qword_1EC312A48);
    sub_1C8CD0CC8(v102, &qword_1EC3139D8);
    goto LABEL_27;
  }

  v106[0] = *v6;

  TypeIdentifier.protobuf(useCase:)(v8);

  v27 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  OUTLINED_FUNCTION_150();
  v31 = __swift_storeEnumTagSinglePayload(v28, v29, v30, v27);
  v33 = *(v6 + 8);
  v32 = *(v6 + 16);
  sub_1C8D4F110(v31, v34, v35);

  v36 = sub_1C9063E4C();
  if (!v2)
  {
    v47 = v36;
    v48 = type metadata accessor for TypedValue.EntityValue(0);
    sub_1C8D4F62C(v6 + *(v48 + 28), v3, &qword_1EC312788, &unk_1C906A3A0);
    type metadata accessor for DisplayRepresentation(0);
    v49 = OUTLINED_FUNCTION_230();
    OUTLINED_FUNCTION_108_2(v49, v50, v51);
    if (v52)
    {
      v96 = v32;
      v97 = v33;
      v105 = v47;
      sub_1C8CD0CC8(v3, &qword_1EC312788);
    }

    else
    {
      DisplayRepresentation.protobuf(useCase:)();
      v96 = v32;
      v97 = v33;
      v105 = v47;
      OUTLINED_FUNCTION_3_13();
      sub_1C8CD0D98(v3, v56);
    }

    v57 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
    v58 = v101;
    OUTLINED_FUNCTION_173_1();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v57);
    v104 = 0;
    v99 = 0xF000000000000000;
    v94 = 0xF000000000000000;
    v95 = 0;
    goto LABEL_23;
  }

  sub_1C8CD0CC8(v5, &qword_1EC3139D8);
LABEL_6:

LABEL_27:
  OUTLINED_FUNCTION_198();
}

void TypedValue.CollectionValue.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v42 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v3);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_63_0(v5, v41);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  OUTLINED_FUNCTION_9(v6);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_38();
  TypeInstance.typeIdentifiers.getter();
  v9 = v8;
  v10 = sub_1C8D3F274();
  v12 = v11;
  v14 = v13;
  v15 = sub_1C8D39D78(v9);
  if (v14)
  {
    goto LABEL_11;
  }

  if (v12 != v16)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  if (v10 == v15)
  {

    *(swift_allocObject() + 16) = 23;
  }

  else
  {
    sub_1C8D3F264();
  }

  v17 = OUTLINED_FUNCTION_194_1();
  TypeIdentifier.protobuf(useCase:)(v17);
  OUTLINED_FUNCTION_157();
  v18 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v19 = OUTLINED_FUNCTION_63_3();
  v22 = __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
  sub_1C8D4F110(v22, v23, v24);
  v25 = sub_1C90641FC();
  if (v0)
  {
    sub_1C8CD0CC8(v1, &qword_1EC3139D8);
  }

  else
  {
    v26 = v25;

    TypeInstance.protobuf(useCase:)();
    OUTLINED_FUNCTION_157();
    v27 = type metadata accessor for ToolKitProtoTypeInstance(0);
    OUTLINED_FUNCTION_150();
    v31 = OUTLINED_FUNCTION_123_1(v28, v29, v30, v27);
    v32 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue(v31);
    v33 = *(v32 + 20);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v18);
    v37 = *(v32 + 24);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v27);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    sub_1C8D4F5E4(v1, v42 + v33, &qword_1EC3139D8, &qword_1C9072A40);
    *v42 = v26;
    sub_1C8D4F5E4(v43, v42 + v37, &qword_1EC312A58, &unk_1C9074CC0);
  }

  OUTLINED_FUNCTION_333();
  OUTLINED_FUNCTION_198();
}

uint64_t TypedValue.QueryValue.protobuf(useCase:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139E0, &qword_1C906F538);
  OUTLINED_FUNCTION_9(v7);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_72();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  OUTLINED_FUNCTION_9(v9);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_38();

  TypeIdentifier.protobuf(useCase:)(a1);
  OUTLINED_FUNCTION_157();
  v11 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v12 = OUTLINED_FUNCTION_63_3();
  v15 = OUTLINED_FUNCTION_123_1(v12, v13, v14, v11);
  type metadata accessor for TypedValue.QueryValue(v15);
  Query.protobuf(useCase:)(a1, v3);
  if (v2)
  {
    return sub_1C8CD0CC8(v4, &qword_1EC3139D8);
  }

  v17 = type metadata accessor for ToolKitProtoQuery(0);
  OUTLINED_FUNCTION_150();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
  OUTLINED_FUNCTION_115();
  v24 = OUTLINED_FUNCTION_123_1(v21, v22, v23, v11);
  v25 = *(type metadata accessor for ToolKitProtoTypedValue.QueryValue(v24) + 20);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v17);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  v29 = OUTLINED_FUNCTION_148();
  sub_1C8D4F5E4(v29, v30, v31, v32);
  return sub_1C8D4F5E4(v3, a2 + v25, &qword_1EC3139E0, &qword_1C906F538);
}

void sub_1C8D449CC()
{
  OUTLINED_FUNCTION_196();
  v41 = v6;
  v42 = v5;
  v7 = v0;
  v9 = v8;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v12);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_233();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_9(v14);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_73();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  OUTLINED_FUNCTION_9(v16);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15_0();

  TypeIdentifier.protobuf(useCase:)(v9);
  OUTLINED_FUNCTION_157();
  v18 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  OUTLINED_FUNCTION_150();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
  v22 = *(v0 + 16);
  v40 = *(v0 + 8);
  v23 = v42(0);
  sub_1C8D4F62C(v0 + *(v23 + 24), v4, &qword_1EC312788, &unk_1C906A3A0);
  v24 = type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_141_1(v4, v25, v24);

  if (v1 == 1)
  {
    sub_1C8CD0CC8(v4, &qword_1EC312788);
LABEL_6:
    type metadata accessor for ToolKitProtoDisplayRepresentation(0);
    OUTLINED_FUNCTION_178_0();
    OUTLINED_FUNCTION_87_1();
    v30 = OUTLINED_FUNCTION_123_1(v27, v28, v29, v0);
    v31 = v41(v30);
    v32 = *(v31 + 20);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v18);
    v36 = *(v31 + 24);
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_183_1(v37, v38, v39, v7);
    sub_1C8D4F5E4(v3, v11 + v32, &qword_1EC3139D8, &qword_1C9072A40);
    *v11 = v40;
    v11[1] = v22;
    sub_1C8D4F5E4(v2, v11 + v36, &qword_1EC312A48, &unk_1C9072A10);
    goto LABEL_7;
  }

  DisplayRepresentation.protobuf(useCase:)();
  if (!v1)
  {
    sub_1C8CD0D98(v4, type metadata accessor for DisplayRepresentation);
    goto LABEL_6;
  }

  sub_1C8CD0CC8(v3, &qword_1EC3139D8);

  OUTLINED_FUNCTION_3_13();
  sub_1C8CD0D98(v4, v26);
LABEL_7:
  OUTLINED_FUNCTION_187_1();
  OUTLINED_FUNCTION_198();
}

void TypedValue.DeferredValue.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v73 = v5;
  v74 = v1;
  v7 = v6;
  v72 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7_0();
  v70 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139F0, &unk_1C9074D10);
  OUTLINED_FUNCTION_9(v10);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_38();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v12);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_86();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  OUTLINED_FUNCTION_9(v14);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_233();
  v16 = *(v0 + 16);
  v68 = *(v0 + 24);
  v69 = v16;
  v17 = *(v0 + 40);
  v71 = *(v0 + 32);
  v18 = *(v0 + 48);

  TypeIdentifier.protobuf(useCase:)(v7);
  OUTLINED_FUNCTION_157();
  v19 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  OUTLINED_FUNCTION_150();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  v23 = v4;
  TypeInstance.protobuf(useCase:)();
  OUTLINED_FUNCTION_157();
  if (v1)
  {
    sub_1C8CD0CC8(v3, &qword_1EC3139D8);
  }

  else
  {
    v63 = v3;
    v64 = v19;
    v67 = v17;
    v24 = v68;
    v25 = v69;
    type metadata accessor for ToolKitProtoTypeInstance(0);
    v74 = v23;
    OUTLINED_FUNCTION_150();
    v62 = v26;
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v26);
    v65 = v18;
    v66 = 0;
    if (v18)
    {
      type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage(0);
      v30 = OUTLINED_FUNCTION_148_0();
      sub_1C8D4F44C(v30, v31, v32, v33, 1);
    }

    else
    {
      type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage(0);
      v35 = OUTLINED_FUNCTION_148_0();
      sub_1C8D4F44C(v35, v36, v37, v38, 0);
      sub_1C8CE9144(v69, v68);
    }

    v34 = v70;
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *v70 = v69;
    v34[1] = v24;
    v39 = v63;
    v34[2] = v17;
    v34[3] = 0;
    swift_storeEnumTagMultiPayload();
    v40 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
    MEMORY[0x1EEE9AC00](v40);
    *(&v61 - 2) = v34;
    OUTLINED_FUNCTION_101_2();
    sub_1C8CD0B28(v41, v42, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage);
    OUTLINED_FUNCTION_168_1();
    sub_1C9063ACC();
    OUTLINED_FUNCTION_140_1();
    sub_1C8D43CA8(v25, v24, v17, v67, v65);
    v43 = OUTLINED_FUNCTION_63_3();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v40);
    v46 = v73;
    OUTLINED_FUNCTION_115();
    v50 = OUTLINED_FUNCTION_123_1(v47, v48, v49, v64);
    v51 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(v50);
    v52 = *(v51 + 20);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v62);
    v56 = *(v51 + 24);
    OUTLINED_FUNCTION_38_6();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    sub_1C8D4F5E4(v39, v46, &qword_1EC3139D8, &qword_1C9072A40);
    sub_1C8D4F5E4(v74, v46 + v52, &qword_1EC312A58, &unk_1C9074CC0);
    sub_1C8D4F5E4(v2, v46 + v56, &qword_1EC3139F0, &unk_1C9074D10);
  }

  OUTLINED_FUNCTION_198();
}

void TypedValue.CodableValue.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v6);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_110();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_9(v8);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_38();
  v10 = v0[1];
  v32 = *v0;
  v11 = v0[2];
  v12 = v0[3];
  v13 = type metadata accessor for TypedValue.CodableValue(0);
  sub_1C8D4F62C(v0 + *(v13 + 24), v3, &qword_1EC312788, &unk_1C906A3A0);
  v14 = type metadata accessor for DisplayRepresentation(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v14);

  v16 = OUTLINED_FUNCTION_124();
  sub_1C8CE9144(v16, v17);
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8CD0CC8(v3, &qword_1EC312788);
LABEL_6:
    v22 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
    OUTLINED_FUNCTION_173_1();
    v26 = OUTLINED_FUNCTION_123_1(v23, v24, v25, v22);
    v27 = *(type metadata accessor for ToolKitProtoTypedValue.CodableValue(v26) + 24);
    OUTLINED_FUNCTION_38_6();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *v5 = v32;
    v5[1] = v10;
    v5[2] = v11;
    v5[3] = v12;
    sub_1C8D4F5E4(v2, v5 + v27, &qword_1EC312A48, &unk_1C9072A10);
    goto LABEL_7;
  }

  DisplayRepresentation.protobuf(useCase:)();
  if (!v1)
  {
    OUTLINED_FUNCTION_3_13();
    sub_1C8CD0D98(v3, v21);
    goto LABEL_6;
  }

  v18 = OUTLINED_FUNCTION_124();
  sub_1C8CE7B78(v18, v19);

  OUTLINED_FUNCTION_3_13();
  sub_1C8CD0D98(v3, v20);
LABEL_7:
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

uint64_t TypedValue.PrimitiveValue.FileValue.init(protobuf:)()
{
  OUTLINED_FUNCTION_116_0();
  v5 = OUTLINED_FUNCTION_124();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_9(v7);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_51();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v9);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_73();
  type metadata accessor for DisplayRepresentation(0);
  v11 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0);
  sub_1C8D4F62C(v2 + *(v11 + 20), v1, &qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_5_12();
  sub_1C8CD0B28(v12, v13, &protocol conformance descriptor for DisplayRepresentation);
  OUTLINED_FUNCTION_226_1();
  sub_1C906350C();
  if (v3)
  {
    OUTLINED_FUNCTION_8_9();
    return sub_1C8CD0D98(v2, v14);
  }

  else
  {
    v16 = sub_1C8D4F550(v4, v0, &qword_1EC312788, &unk_1C906A3A0);
    v17 = *v2;
    MEMORY[0x1CCA82A80](v16);
    sub_1C8D00224(v17);
    objc_autoreleasePoolPop(OUTLINED_FUNCTION_178_0());
    OUTLINED_FUNCTION_8_9();
    sub_1C8CD0D98(v2, v18);
    result = type metadata accessor for TypedValue.PrimitiveValue.FileValue(0);
    *(v0 + *(result + 20)) = v17;
  }

  return result;
}

void TypedValue.PrimitiveValue.FileValue.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v6 = v5;
  v70[1] = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312700, &qword_1C9066AC0);
  v8 = OUTLINED_FUNCTION_9(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_66();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v10);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_86();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_9(v12);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_97();
  v68 = v14;
  OUTLINED_FUNCTION_111();
  v15 = sub_1C9063D3C();
  OUTLINED_FUNCTION_11();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_247();
  v67 = v0;
  v19 = *(v0 + *(type metadata accessor for TypedValue.PrimitiveValue.FileValue(0) + 20));
  if (([v19 _isFileURLBased] & 1) == 0)
  {
    v66 = v2;
    sub_1C906371C();
    v20 = sub_1C9063D1C();
    v21 = sub_1C906446C();
    if (os_log_type_enabled(v20, v21))
    {
      v65 = v6;
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1C8C9B000, v20, v21, "Encoding data backed file, the size may be larger than expected.", v22, 2u);
      v23 = v22;
      v6 = v65;
      MEMORY[0x1CCA833A0](v23, -1, -1);
    }

    (*(v17 + 8))(v4, v15);
    v2 = v66;
  }

  v24 = MEMORY[0x1CCA82A80]();
  v70[0] = 0;
  v25 = [objc_opt_self() archivedDataWithRootObject:v19 requiringSecureCoding:1 error:v70];
  v26 = v70[0];
  if (v25)
  {
    v27 = sub_1C9061F3C();
    v29 = v28;

    objc_autoreleasePoolPop(v24);
    sub_1C8D4F62C(v67, v3, &qword_1EC312788, &unk_1C906A3A0);
    type metadata accessor for DisplayRepresentation(0);
    v30 = OUTLINED_FUNCTION_326();
    OUTLINED_FUNCTION_108_2(v30, v31, v32);
    if (v33)
    {
      sub_1C8CD0CC8(v3, &qword_1EC312788);
      v35 = v68;
    }

    else
    {
      v35 = v68;
      DisplayRepresentation.protobuf(useCase:)();
      if (v1)
      {
        sub_1C8CE7B78(v27, v29);
        OUTLINED_FUNCTION_3_13();
        sub_1C8CD0D98(v3, v36);
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_3_13();
      sub_1C8CD0D98(v3, v37);
    }

    v69 = v29;
    v38 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
    v39 = 1;
    OUTLINED_FUNCTION_87_1();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v38);
    v43 = [v19 fileURL];
    if (v43)
    {
      v44 = v43;
      v45 = v27;
      sub_1C9061E3C();

      v39 = 0;
    }

    else
    {
      v45 = v27;
    }

    v46 = sub_1C9061EBC();
    OUTLINED_FUNCTION_173_1();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v46);
    v50 = OUTLINED_FUNCTION_162();
    sub_1C8D4F550(v50, v51, v52, v53);
    v54 = OUTLINED_FUNCTION_230();
    OUTLINED_FUNCTION_108_2(v54, v55, v46);
    if (v33)
    {
      sub_1C8CD0CC8(v2, &qword_1EC312700);
      v39 = 0;
      v56 = 0;
    }

    else
    {
      v56 = v2;
      _s10Foundation3URLV7ToolKitE8protobuf7useCaseSS19VoiceShortcutClient011ProtobufUseG0O_tF_0();
      OUTLINED_FUNCTION_171_0();
      OUTLINED_FUNCTION_10_0();
      v57 = OUTLINED_FUNCTION_112();
      v58(v57);
    }

    v59 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0);
    v60 = *(v59 + 20);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v38);
    v64 = (v6 + *(v59 + 24));
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *v6 = v45;
    v6[1] = v69;
    sub_1C8D4F5E4(v35, v6 + v60, &qword_1EC312A48, &unk_1C9072A10);
    *v64 = v39;
    v64[1] = v56;
  }

  else
  {
    v34 = v26;
    sub_1C9061D7C();

    swift_willThrow();
    objc_autoreleasePoolPop(v24);
  }

LABEL_20:
  OUTLINED_FUNCTION_198();
}

void TypedValue.PrimitiveValue.PaymentMethodValue.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_116_0();
  v5 = OUTLINED_FUNCTION_245();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_9(v7);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_51();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v9);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_73();
  *v0 = *v2;
  v11 = *(v2 + 16);
  *(v0 + 8) = *(v2 + 8);
  *(v0 + 16) = v11;
  type metadata accessor for DisplayRepresentation(0);
  v12 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  sub_1C8D4F62C(v2 + *(v12 + 24), v1, &qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_5_12();
  sub_1C8CD0B28(v13, v14, &protocol conformance descriptor for DisplayRepresentation);

  OUTLINED_FUNCTION_332();
  sub_1C906350C();
  v15 = OUTLINED_FUNCTION_59_3();
  sub_1C8CD0D98(v15, v16);
  if (v3)
  {
  }

  else
  {
    v17 = type metadata accessor for TypedValue.PrimitiveValue.PaymentMethodValue(0);
    sub_1C8D4F550(v4, v0 + *(v17 + 24), &qword_1EC312788, &unk_1C906A3A0);
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void TypedValue.PrimitiveValue.PaymentMethodValue.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v6);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_233();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_9(v8);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_38();
  v26 = *v0;
  v10 = *(v0 + 2);
  v25 = *(v0 + 1);
  v11 = type metadata accessor for TypedValue.PrimitiveValue.PaymentMethodValue(0);
  sub_1C8D4F62C(&v0[*(v11 + 24)], v3, &qword_1EC312788, &unk_1C906A3A0);
  v12 = type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_141_1(v3, v13, v12);

  if (v1 == 1)
  {
    sub_1C8CD0CC8(v3, &qword_1EC312788);
LABEL_6:
    v16 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
    OUTLINED_FUNCTION_87_1();
    v20 = OUTLINED_FUNCTION_123_1(v17, v18, v19, v16);
    v21 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(v20) + 24);
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_183_1(v22, v23, v24, v16);
    *v5 = v26;
    *(v5 + 8) = v25;
    *(v5 + 16) = v10;
    sub_1C8D4F5E4(v2, v5 + v21, &qword_1EC312A48, &unk_1C9072A10);
    goto LABEL_7;
  }

  DisplayRepresentation.protobuf(useCase:)();
  if (!v1)
  {
    OUTLINED_FUNCTION_3_13();
    sub_1C8CD0D98(v3, v15);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_3_13();
  sub_1C8CD0D98(v3, v14);
LABEL_7:
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

uint64_t FloatingPointSign.init(protobuf:)(_BYTE *a1)
{
  if (*a1)
  {
    return *a1 == 1;
  }

  v2 = OUTLINED_FUNCTION_94();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_116();
  v7 = sub_1C8D4F674(v4, v5, v6);
  v8 = OUTLINED_FUNCTION_89(v7);
  OUTLINED_FUNCTION_196_0(v8, v9);
  *v10 = MEMORY[0x1E69E6DB8];
  OUTLINED_FUNCTION_10_0();
  (*(v11 + 104))();
  return swift_willThrow();
}

void FloatingPointSign.protobuf(useCase:)(char a1@<W1>, char *a2@<X8>)
{
  if (a1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  *a2 = v2;
}

uint64_t sub_1C8D45F98@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  result = FloatingPointSign.init(protobuf:)(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t NSDecimal.init(protobuf:)(unsigned __int8 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A28, &unk_1C9074CD0);
  OUTLINED_FUNCTION_9(v3);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_73();
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal.Mantissa(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v9 = (v8 - v7);
  v10 = *a1;
  if (!*a1)
  {
    v22 = OUTLINED_FUNCTION_181();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    v25 = sub_1C8D4F674(&qword_1EC313A20, &qword_1EC313A18, &qword_1C906F548);
    OUTLINED_FUNCTION_213(v25);
    *v26 = MEMORY[0x1E69E6DB8];
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E08A8], v24);
    goto LABEL_8;
  }

  if (v10 != 1)
  {
    v10 = 0;
  }

  v11 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  sub_1C8D4F62C(&a1[*(v11 + 32)], v1, &qword_1EC313A28, &unk_1C9074CD0);
  OUTLINED_FUNCTION_108_2(v1, 1, v5);
  if (v12)
  {
    sub_1C8CD0CC8(v1, &qword_1EC313A28);
    v13 = OUTLINED_FUNCTION_181();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
    v16 = sub_1C8D4F674(&qword_1EC313A38, &qword_1EC313A30, &qword_1C906F550);
    OUTLINED_FUNCTION_213(v16);
    v18 = v17;
    type metadata accessor for Decimal(0);
    *v18 = v19;
    OUTLINED_FUNCTION_10_0();
    (*(v20 + 104))(v18, v21, v15);
LABEL_8:
    swift_willThrow();
    OUTLINED_FUNCTION_23_6();
    return sub_1C8CD0D98(a1, v27);
  }

  v28 = OUTLINED_FUNCTION_278();
  result = sub_1C8D50228(v28, v29);
  if (HIWORD(*v9))
  {
    __break(1u);
    goto LABEL_19;
  }

  v31 = v9[1];
  if (HIWORD(v31))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v32 = v9[2];
  if (HIWORD(v32))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v33 = v9[3];
  if (HIWORD(v33))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v34 = v9[4];
  if (HIWORD(v34))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v35 = v9[5];
  if (HIWORD(v35))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v36 = v9[6];
  if (HIWORD(v36))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v37 = v9[7];
  if (!HIWORD(v37))
  {
    v38 = *(a1 + 1);
    v39 = *(a1 + 3);
    v40 = a1[8];
    WORD2(v44) = *v9;
    HIWORD(v44) = v31;
    v45 = v32;
    v46 = v33;
    v47 = v34;
    v48 = v35;
    v49 = v36;
    v50 = v37;
    sub_1C8D4F4E8(v38, &v44);
    sub_1C8D4F4F0(v39, &v44);
    sub_1C8D4F500(v10, &v44);
    sub_1C8D4F510(v40, &v44);
    sub_1C8D4F520(&v44);
    OUTLINED_FUNCTION_23_6();
    sub_1C8CD0D98(a1, v41);
    v42 = OUTLINED_FUNCTION_59_3();
    sub_1C8CD0D98(v42, v43);
    return v44;
  }

LABEL_25:
  __break(1u);
  return result;
}

void NSDecimal.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v32 = v7;
  v8 = HIDWORD(v5);
  v44 = HIDWORD(v5);
  v9 = HIWORD(v5);
  v10 = v3 >> 16;
  v11 = HIDWORD(v3);
  v12 = HIWORD(v3);
  v30 = HIWORD(v1);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A28, &unk_1C9074CD0);
  OUTLINED_FUNCTION_9(v13);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_114();
  v35 = v6;
  v36 = v8;
  if (sub_1C906460C())
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  v34 = v15;
  v37 = v9;
  v38 = v4;
  v39 = v10;
  v40 = v11;
  v41 = v12;
  v42 = v2;
  v43 = v30;
  v33 = sub_1C8D4F530(&v35);
  v35 = v6;
  v36 = v44;
  v37 = v9;
  v38 = v4;
  v39 = v10;
  v40 = v11;
  v29 = v12;
  v41 = v12;
  v42 = v2;
  v43 = v30;
  v31 = sub_1C8D4F538(&v35);
  v35 = v6;
  v36 = v44;
  v16 = v9;
  v37 = v9;
  v38 = v4;
  v39 = v10;
  v40 = v11;
  v41 = v29;
  v42 = v2;
  v43 = v30;
  v17 = sub_1C8D4F544(&v35);
  v18 = v4;
  v19 = WORD1(v4);
  LODWORD(v6) = WORD2(v4);
  v20 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal.Mantissa(0);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v0 = WORD2(v6);
  v0[1] = v16;
  v0[2] = v18;
  v0[3] = v19;
  v0[4] = v6;
  v0[5] = v29;
  v0[6] = v2;
  v0[7] = v30;
  OUTLINED_FUNCTION_150();
  v24 = OUTLINED_FUNCTION_123_1(v21, v22, v23, v20);
  v25 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(v24) + 32);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v20);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v32 = v34;
  *(v32 + 4) = v33;
  *(v32 + 8) = v31;
  *(v32 + 12) = v17;
  sub_1C8D4F5E4(v0, v32 + v25, &qword_1EC313A28, &unk_1C9074CD0);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8D46584@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  result = NSDecimal.init(protobuf:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

void TypedValue.PrimitiveValue.CurrencyAmountValue.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v4 = v3;
  v28 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_9(v6);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_73();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v8);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_38();
  v10 = OUTLINED_FUNCTION_210();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_9(v12);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_110();
  type metadata accessor for Decimal(0);
  v14 = OUTLINED_FUNCTION_257();
  v15 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(v14);
  sub_1C8D4F62C(v4 + *(v15 + 20), v2, &qword_1EC313A40, &qword_1C906F558);
  sub_1C8CD0B28(&qword_1EC313A48, type metadata accessor for Decimal, &protocol conformance descriptor for NSDecimal);
  sub_1C906351C();
  if (v0)
  {
    OUTLINED_FUNCTION_36_4();
    sub_1C8CD0D98(v4, v16);
  }

  else
  {
    *v28 = v26;
    *(v28 + 16) = v27;
    v17 = v4[1];
    *(v28 + 24) = *v4;
    *(v28 + 32) = v17;
    type metadata accessor for DisplayRepresentation(0);
    v18 = OUTLINED_FUNCTION_197_1(*(v15 + 24));
    sub_1C8D4F62C(v18, v19, v20, v21);
    OUTLINED_FUNCTION_5_12();
    sub_1C8CD0B28(v22, v23, &protocol conformance descriptor for DisplayRepresentation);

    OUTLINED_FUNCTION_194_1();
    OUTLINED_FUNCTION_139_0();
    sub_1C906350C();
    OUTLINED_FUNCTION_36_4();
    sub_1C8CD0D98(v4, v24);
    v25 = type metadata accessor for TypedValue.PrimitiveValue.CurrencyAmountValue(0);
    sub_1C8D4F550(v1, v28 + *(v25 + 24), &qword_1EC312788, &unk_1C906A3A0);
  }

  OUTLINED_FUNCTION_333();
  OUTLINED_FUNCTION_198();
}

void TypedValue.PrimitiveValue.CurrencyAmountValue.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v7);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_86();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_9(v9);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_72();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A40, &qword_1C906F558);
  OUTLINED_FUNCTION_9(v11);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_73();
  NSDecimal.protobuf(useCase:)();
  if (!v1)
  {
    v13 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
    OUTLINED_FUNCTION_150();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
    v17 = *(v0 + 32);
    v38 = *(v0 + 24);
    v18 = type metadata accessor for TypedValue.PrimitiveValue.CurrencyAmountValue(0);
    sub_1C8D4F62C(v0 + *(v18 + 24), v4, &qword_1EC312788, &unk_1C906A3A0);
    type metadata accessor for DisplayRepresentation(0);
    v19 = OUTLINED_FUNCTION_326();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, v20, v21);

    if (EnumTagSinglePayload == 1)
    {
      sub_1C8CD0CC8(v4, &qword_1EC312788);
    }

    else
    {
      DisplayRepresentation.protobuf(useCase:)();
      OUTLINED_FUNCTION_3_13();
      sub_1C8CD0D98(v4, v23);
    }

    v24 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
    OUTLINED_FUNCTION_87_1();
    v28 = OUTLINED_FUNCTION_123_1(v25, v26, v27, v24);
    v29 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(v28);
    v30 = *(v29 + 20);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v13);
    v34 = *(v29 + 24);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v24);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    sub_1C8D4F5E4(v3, v6 + v30, &qword_1EC313A40, &qword_1C906F558);
    *v6 = v38;
    v6[1] = v17;
    sub_1C8D4F5E4(v2, v6 + v34, &qword_1EC312A48, &unk_1C9072A10);
  }

  OUTLINED_FUNCTION_198();
}

void PersonNameComponents.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139A8, &unk_1C9074CE0);
  OUTLINED_FUNCTION_9(v4);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_51();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B0, &qword_1C906F528);
  OUTLINED_FUNCTION_9(v6);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_72();
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents(0);
  sub_1C8D4F62C(v3 + *(v8 + 40), v0, &qword_1EC3139A8, &unk_1C9074CE0);

  sub_1C8D46CE8();
  if (v1)
  {
    OUTLINED_FUNCTION_104_3();
  }

  else
  {
    sub_1C9061CCC();
    OUTLINED_FUNCTION_104_3();
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void sub_1C8D46CE8()
{
  OUTLINED_FUNCTION_196();
  v6 = v5;
  v54 = v7;
  v51 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_94_1();
  v53 = sub_1C9061D4C();
  OUTLINED_FUNCTION_11();
  v50 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7_0();
  v52 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139A8, &unk_1C9074CE0);
  v13 = OUTLINED_FUNCTION_9(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_122_1();
  v16 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation(v15);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_247();
  v55 = v6;
  OUTLINED_FUNCTION_150_1();
  sub_1C8D4F62C(v18, v19, v20, &unk_1C9074CE0);
  OUTLINED_FUNCTION_108_2(v1, 1, v16);
  if (v21)
  {
    OUTLINED_FUNCTION_116();
    sub_1C8CD0CC8(v22, v23);
    OUTLINED_FUNCTION_116();
    sub_1C8CD0CC8(v24, v25);
    v26 = 1;
    v27 = v53;
LABEL_6:
    __swift_storeEnumTagSinglePayload(v54, v26, 1, v27);
    goto LABEL_7;
  }

  sub_1C8D50228(v1, v4);
  v48 = v4[2];
  v49 = *v4;
  v41 = v4[1];
  v42 = v4[3];
  v43 = v2;
  v28 = v4[5];
  v46 = v4[6];
  v47 = v4[4];
  v29 = v4[7];
  v30 = v4[9];
  v44 = v4[10];
  v45 = v4[8];
  v31 = v4[11];
  OUTLINED_FUNCTION_38_6();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  v36 = *(v51 + 40);
  OUTLINED_FUNCTION_38_6();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);

  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v3 = v49;
  v3[1] = v41;
  v3[2] = v48;
  v3[3] = v42;
  v3[4] = v47;
  v3[5] = v28;
  v3[6] = v46;
  v3[7] = v29;
  v3[8] = v45;
  v3[9] = v30;
  v3[10] = v44;
  v3[11] = v31;
  sub_1C8D4F5E4(v43, v3 + v36, &qword_1EC3139A8, &unk_1C9074CE0);
  PersonNameComponents.init(protobuf:)();
  sub_1C8CD0CC8(v55, &qword_1EC3139A8);
  sub_1C8CD0D98(v4, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation);
  if (!v0)
  {
    v27 = v53;
    (*(v50 + 32))(v54, v52, v53);
    v26 = 0;
    goto LABEL_6;
  }

LABEL_7:
  OUTLINED_FUNCTION_198();
}
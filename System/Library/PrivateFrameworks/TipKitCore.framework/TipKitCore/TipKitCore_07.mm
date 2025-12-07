unint64_t sub_1975F2D3C()
{
  result = qword_1ED815740;
  if (!qword_1ED815740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815740);
  }

  return result;
}

uint64_t sub_1975F2D90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1975F2DD8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34398, &qword_197618398);
    a2();
    result = OUTLINED_FUNCTION_26_7();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1975F2E4C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1975F2EC8()
{
  result = qword_1EAF353F0;
  if (!qword_1EAF353F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF353F0);
  }

  return result;
}

unint64_t sub_1975F2F20()
{
  result = qword_1EAF353F8;
  if (!qword_1EAF353F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF353F8);
  }

  return result;
}

unint64_t sub_1975F2F78()
{
  result = qword_1EAF35400;
  if (!qword_1EAF35400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35400);
  }

  return result;
}

uint64_t sub_1975F2FCC(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  OUTLINED_FUNCTION_18();
  (*v3)(a2);
  return a2;
}

uint64_t sub_1975F3024(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_28_6(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13();
  (*(v6 + 16))(v4, v5);
  return v4;
}

void sub_1975F3078(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v33 = a1;

  v6 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v22 = v1;
LABEL_4:
  v7 = v6;
  if (!v4)
  {
    goto LABEL_6;
  }

  do
  {
    v6 = v7;
LABEL_9:
    v8 = __clz(__rbit64(v4)) | (v6 << 6);
    v9 = v33;
    sub_19758669C(*(v33 + 48) + 40 * v8, v31);
    sub_19755F9FC(*(v9 + 56) + 32 * v8, v32, &qword_1EAF34340, &unk_19761C8E0);
    sub_1976169A0();
    if (!swift_dynamicCast())
    {
      v26 = 0;
      v27 = 0xE000000000000000;
      sub_1976169A0();
      __swift_project_boxed_opaque_existential_1Tm(&v23, *(&v24 + 1));
      sub_197616EB0();
      __swift_destroy_boxed_opaque_existential_0Tm(&v23);
    }

    v10 = v26;
    v11 = v27;
    v4 &= v4 - 1;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34340, &unk_19761C8E0);
    v13 = swift_allocObject();
    sub_19755F9FC(v32, v13 + 16, &qword_1EAF34340, &unk_19761C8E0);
    *&v28 = v10;
    *(&v28 + 1) = v11;
    *&v29 = v13;
    *(&v30 + 1) = v12;
    sub_19755C7C8(v31, &qword_1EAF35418, &qword_197621B40);
    if (*(&v28 + 1))
    {
      v23 = v28;
      v24 = v29;
      v25 = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1975BB2B0();
        v21 = v19;
      }

      v14 = *(v21 + 16);
      v15 = v14 + 1;
      if (v14 >= *(v21 + 24) >> 1)
      {
        sub_1975BB2B0();
        v15 = v14 + 1;
        v21 = v20;
      }

      v1 = v22;
      *(v21 + 16) = v15;
      v16 = (v21 + 48 * v14);
      v17 = v23;
      v18 = v25;
      v16[3] = v24;
      v16[4] = v18;
      v16[2] = v17;
      goto LABEL_4;
    }

    sub_19755C7C8(&v28, &qword_1EAF35420, &qword_197621B48);
    v7 = v6;
    v1 = v22;
  }

  while (v4);
LABEL_6:
  while (1)
  {
    v6 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v6 >= v5)
    {

      sub_1975F33C0(v21, &qword_1EAF35428, &qword_197621B50, sub_1975F5E38);
      return;
    }

    v4 = *(v1 + 8 * v6);
    ++v7;
    if (v4)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1975F33C0(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_197616C90();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t Dictionary.set(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  OUTLINED_FUNCTION_30_8();
  v7 = sub_197616860();
  OUTLINED_FUNCTION_5_2(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  (*(v12 + 16))(v11 - v10, a1);
  OUTLINED_FUNCTION_18();
  (*(v13 + 16))(v3, a2, v6);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v6);
  return sub_197616130();
}

uint64_t Dictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_197616860();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  OUTLINED_FUNCTION_11();
  result = MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - v12;
  if (!a1)
  {
    goto LABEL_4;
  }

  v16[0] = AnyKeyPath.stringValue.getter();
  v16[1] = v14;
  sub_197616120();

  if (__swift_getEnumTagSinglePayload(v13, 1, a3) == 1)
  {
    result = (*(v9 + 8))(v13, v7);
LABEL_4:
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return result;
  }

  *(a4 + 24) = a3;
  __swift_allocate_boxed_opaque_existential_0(a4);
  OUTLINED_FUNCTION_18();
  return (*(v15 + 32))();
}

uint64_t Dictionary.setInitialValue(key:value:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a2;
  v6 = *(a4 + 16);
  OUTLINED_FUNCTION_14();
  v36 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_0();
  v35 = v10 - v9;
  v12 = *(v11 + 24);
  OUTLINED_FUNCTION_29_8();
  v13 = sub_197616860();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  v32 = v4;
  v20 = a1;
  sub_197616120();
  v21 = OUTLINED_FUNCTION_24_9();
  LODWORD(a1) = __swift_getEnumTagSinglePayload(v21, v22, v12);
  result = (*(v15 + 8))(v19, v13);
  if (a1 == 1)
  {
    v25 = v35;
    v24 = v36;
    v26 = (*(v36 + 16))(v35, v20, v6);
    v27 = v37;
    v34(v26);
    if (v27)
    {
      return (*(v24 + 8))(v25, v6);
    }

    else
    {
      OUTLINED_FUNCTION_3_10();
      __swift_storeEnumTagSinglePayload(v28, v29, v30, v12);
      return sub_197616130();
    }
  }

  return result;
}

void sub_1975F3DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a2;
  v6 = sub_197616860();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v13 - v8;
  v10 = sub_197616860();
  MEMORY[0x1EEE9AC00](v10);
  (*(v12 + 16))(v13 - v11, a3);
  (*(v7 + 16))(v9, a1, v6);
  sub_197616110();
  Dictionary.subscript.setter();
}

void Dictionary.subscript.setter()
{
  OUTLINED_FUNCTION_15_12();
  v2 = v1;
  v4 = v3;
  v42 = v5;
  v6 = *(v1 + 24);
  OUTLINED_FUNCTION_29_8();
  v7 = sub_197616860();
  OUTLINED_FUNCTION_5_2(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v36 - v9;
  v40 = sub_197616860();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  v38 = v2;
  v15 = *(v2 + 16);
  sub_197616860();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_14();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v36 - v26;
  v28 = *(v17 + 16);
  v41 = v4;
  v39 = v29;
  v28(v0, v4);
  if (__swift_getEnumTagSinglePayload(v0, 1, v15) == 1)
  {
    v30 = *(v17 + 8);
    v31 = v39;
    v30(v41, v39);
    (*(v11 + 8))(v42, v40);
    v30(v0, v31);
  }

  else
  {
    (*(v20 + 32))(v27, v0, v15);
    (*(v20 + 16))(v24, v27, v15);
    v32 = v6;
    v33 = v40;
    (*(v11 + 16))(v14, v42, v40);
    v34 = v37;
    v35 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v34, v35 ^ 1u, 1, v32);
    sub_197616130();
    (*(v17 + 8))(v41, v39);
    (*(v11 + 8))(v42, v33);
    (*(v20 + 8))(v27, v15);
  }

  OUTLINED_FUNCTION_14_9();
}

void (*Dictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, char a2)
{
  v8 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v8;
  v8[1] = a4;
  v8[2] = v4;
  *v8 = a3;
  v9 = sub_197616860();
  v8[3] = v9;
  v10 = *(v9 - 8);
  v8[4] = v10;
  v11 = *(v10 + 64);
  v8[5] = __swift_coroFrameAllocStub(v11);
  v8[6] = __swift_coroFrameAllocStub(v11);
  v8[7] = sub_197616860();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  v8[8] = v12;
  v15 = *(v14 + 64);
  v8[9] = __swift_coroFrameAllocStub(v15);
  v8[10] = __swift_coroFrameAllocStub(v15);
  (*(v13 + 16))();
  Dictionary.subscript.getter();
  return sub_1975F4458;
}

void sub_1975F4458(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  if (a2)
  {
    v5 = v2[8];
    v7 = v2[5];
    v6 = v2[6];
    v8 = v2[3];
    v9 = v2[4];
    v10 = v2[7];
    (*(v9 + 16))(v7, v6, v8);
    (*(v5 + 32))(v3, v4, v10);
    Dictionary.subscript.setter();
    (*(v9 + 8))(v6, v8);
  }

  else
  {
    v7 = v2[5];
    v6 = v2[6];
    Dictionary.subscript.setter();
  }

  free(v4);
  free(v3);
  free(v6);
  free(v7);

  free(v2);
}

uint64_t sub_1975F457C()
{
  sub_1976160E0();
  OUTLINED_FUNCTION_30_8();
  sub_1976160D0();
  swift_getWitnessTable();
  return sub_197616540();
}

void Dictionary.decode<A>(as:)()
{
  OUTLINED_FUNCTION_15_12();
  v1 = v0;
  v3 = v2;
  v24 = v4;
  v25[1] = *MEMORY[0x1E69E9840];
  sub_197616860();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v25 - v6;
  v8 = objc_opt_self();
  v9 = sub_1976160A0();
  v25[0] = 0;
  v10 = [v8 dataWithJSONObject:v9 options:0 error:v25];

  v11 = v25[0];
  if (v10)
  {
    v12 = sub_1976159A0();
    v14 = v13;

    v15 = v1;
    v16 = 0;
    sub_197567980(v3, v12, v14, v3, v15);
    sub_197567790(v12, v14);
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v3);
    OUTLINED_FUNCTION_18();
    v23 = v24;
    (*(v22 + 32))(v24, v7, v3);
  }

  else
  {
    v17 = v11;
    v18 = sub_197615830();

    swift_willThrow();
    v16 = 1;
    v23 = v24;
  }

  OUTLINED_FUNCTION_22_10(v23, v16);
  OUTLINED_FUNCTION_14_9();
}

void sub_1975F4858(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 8);
  v7 = sub_197616860();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v17 - v8;
  v10 = *a3;
  (*(v11 + 16))(v17 - v8, a1);
  v12 = sub_197616110();

  Dictionary.subscript.setter(v9, v10, v12, v6, v13, v14, v15, v16, v17[0], v17[1], v17[2], v17[3]);
}

void Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_15_12();
  v14 = v13;
  v16 = v15;
  v18 = *(v17 + 24);
  v19 = sub_197616860();
  OUTLINED_FUNCTION_5_2(v19);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_31_6();
  v21 = sub_197616860();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  if (v14)
  {
    v39 = v23;
    v26 = AnyKeyPath.stringValue.getter();
    v28 = v27;
    (*(v39 + 16))(v25, v16, v21);
    v29 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v12, v29 ^ 1u, 1, v18);
    v40 = v26;
    v41 = v28;
    sub_197616130();

    (*(v39 + 8))(v16, v21);
    OUTLINED_FUNCTION_14_9();
  }

  else
  {
    OUTLINED_FUNCTION_14_9();

    v32(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
  }
}

uint64_t (*Dictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(int, int, int, int, int, int, int, int, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)
{
  v9 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v9;
  v9[2] = a4;
  v9[3] = v4;
  *v9 = a2;
  v9[1] = a3;
  OUTLINED_FUNCTION_30_8();
  v10 = sub_197616860();
  v9[4] = v10;
  v11 = *(v10 - 8);
  v9[5] = v11;
  v12 = *(v11 + 64);
  v9[6] = __swift_coroFrameAllocStub(v12);
  v9[7] = __swift_coroFrameAllocStub(v12);
  Dictionary.subscript.getter();
  return sub_1975F4C38;
}

uint64_t Dictionary.getOrCreate<A>(key:default:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  OUTLINED_FUNCTION_14();
  v24 = v9;
  v25 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6_0();
  v13 = v12 - v11;
  v15 = *(v14 + 24);
  sub_197616120();
  if (v27)
  {
    OUTLINED_FUNCTION_29_8();
    sub_197616860();
    OUTLINED_FUNCTION_13();
    v17 = (*(v16 + 8))(&v26);
  }

  else
  {
    OUTLINED_FUNCTION_14();
    v19 = v18;
    (*(v20 + 16))(v28, &v26, v15);
    OUTLINED_FUNCTION_29_8();
    sub_197616860();
    OUTLINED_FUNCTION_13();
    (*(v21 + 8))(&v26);
    Strong = swift_unknownObjectWeakLoadStrong();
    v17 = (*(v19 + 8))(v28, v15);
    if (Strong)
    {
      return Strong;
    }
  }

  v22 = v25(v17);
  if (!v4)
  {
    Strong = v22;
    (*(v24 + 16))(v13, a1, v7);
    swift_unknownObjectRetain();
    WeakReference.init(_:)();
    v27 = 0;
    sub_197616130();
  }

  return Strong;
}

uint64_t sub_1975F4F5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35428, &qword_197621B50);
  v36 = v4;
  result = sub_197616C80();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return result;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      sub_197614384(0, (v35 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 32 * v18);
    if (v36)
    {
      v23 = v22[1];
      v37 = *v22;
      v38 = v23;
    }

    else
    {
      sub_19759FA10(v22, &v37);
    }

    sub_197617190();
    sub_197616260();
    result = sub_1976171F0();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 16 * v27);
    *v32 = v20;
    v32[1] = v21;
    v33 = (*(v7 + 56) + 32 * v27);
    v34 = v38;
    *v33 = v37;
    v33[1] = v34;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_1975F5210(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v6 = a2;
  OUTLINED_FUNCTION_8_22();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF343B0, &qword_1976183B0);
  OUTLINED_FUNCTION_19_8();
  v7 = sub_197616C80();
  if (!v3[2])
  {

LABEL_33:
    *v5 = v7;
    return;
  }

  v37 = v2;
  v8 = 0;
  OUTLINED_FUNCTION_5_24();
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v9;
  v13 = (v10 + 63) >> 6;
  v14 = v7 + 64;
  if ((v11 & v9) == 0)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      ++v16;
      if (*(v4 + 8 * v8))
      {
        OUTLINED_FUNCTION_9();
        v12 = v18 & v17;
        goto LABEL_12;
      }
    }

    if (v6)
    {
      OUTLINED_FUNCTION_7_18();
      if (v35 != v36)
      {
        OUTLINED_FUNCTION_16_13(v34);
      }

      else
      {
        OUTLINED_FUNCTION_13_17(v34);
      }

      v3[2] = 0;
    }

    v5 = v37;
    goto LABEL_33;
  }

  while (1)
  {
    OUTLINED_FUNCTION_12_15();
LABEL_12:
    v19 = v15 | (v8 << 6);
    v20 = v3[6] + 40 * v19;
    if (v6)
    {
      v21 = *v20;
      v22 = *(v20 + 16);
      v41 = *(v20 + 32);
      v39 = v21;
      v40 = v22;
      sub_19756A94C((v3[7] + 32 * v19), v38);
    }

    else
    {
      sub_19758669C(v20, &v39);
      sub_1975586C0(v3[7] + 32 * v19, v38);
    }

    v23 = sub_197616980() & ~(-1 << *(v7 + 32));
    if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_11_18();
LABEL_24:
    OUTLINED_FUNCTION_28_7();
    *(v14 + v28) |= v29;
    v31 = *(v7 + 48) + 40 * v30;
    v32 = v39;
    v33 = v40;
    *(v31 + 32) = v41;
    *v31 = v32;
    *(v31 + 16) = v33;
    sub_19756A94C(v38, (*(v7 + 56) + 32 * v30));
    OUTLINED_FUNCTION_18_7();
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_10_19();
  while (++v24 != v26 || (v25 & 1) == 0)
  {
    v27 = v24 == v26;
    if (v24 == v26)
    {
      v24 = 0;
    }

    v25 |= v27;
    if (*(v14 + 8 * v24) != -1)
    {
      OUTLINED_FUNCTION_9_19();
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_1975F5430(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34388, &qword_197618388);
  v33 = v4;
  result = sub_197616C80();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return result;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_197614384(0, (v32 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 32 * v18);
    if (v33)
    {
      sub_19756A94C(v22, v34);
    }

    else
    {
      sub_1975586C0(v22, v34);
    }

    sub_197617190();
    sub_197616260();
    result = sub_1976171F0();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    result = sub_19756A94C(v34, (*(v7 + 56) + 32 * v26));
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1975F56E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35438, &qword_197621B60);
  v35 = v4;
  result = sub_197616C80();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v34 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      sub_197614384(0, (v33 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v35 & 1) == 0)
    {

      v23 = v22;
    }

    sub_197617190();
    sub_197616260();
    result = sub_1976171F0();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 16 * v27);
    *v32 = v20;
    v32[1] = v21;
    *(*(v7 + 56) + 8 * v27) = v22;
    ++*(v7 + 16);
    v5 = v34;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_1975F5984(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v6 = a2;
  OUTLINED_FUNCTION_8_22();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35448, &qword_197621B70);
  OUTLINED_FUNCTION_19_8();
  v7 = sub_197616C80();
  if (!v3[2])
  {
LABEL_29:

LABEL_30:
    *v5 = v7;
    return;
  }

  v8 = 0;
  OUTLINED_FUNCTION_5_24();
  OUTLINED_FUNCTION_32_5();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = v7 + 64;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v8 >= v13)
      {
        break;
      }

      ++v16;
      if (*(v4 + 8 * v8))
      {
        OUTLINED_FUNCTION_9();
        v11 = v18 & v17;
        goto LABEL_9;
      }
    }

    if ((v6 & 1) == 0)
    {

      v5 = v2;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_7_18();
    v5 = v2;
    if (v33 != v34)
    {
      OUTLINED_FUNCTION_16_13(v32);
    }

    else
    {
      OUTLINED_FUNCTION_13_17(v32);
    }

    v3[2] = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_9:
    v19 = v15 | (v8 << 6);
    v20 = *(v3[6] + v19);
    v21 = (v3[7] + 40 * v19);
    if (v6)
    {
      sub_1975558C4(v21, v35);
    }

    else
    {
      sub_19755A560(v21, v35);
    }

    sub_197617190();
    sub_1975A4D54(v20);
    sub_197616260();

    sub_1976171F0();
    OUTLINED_FUNCTION_23_8();
    if (((v24 << v23) & ~*(v14 + 8 * v22)) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_11_18();
LABEL_21:
    OUTLINED_FUNCTION_28_7();
    *(v14 + v29) |= v30;
    *(*(v7 + 48) + v31) = v20;
    sub_1975558C4(v35, *(v7 + 56) + 40 * v31);
    OUTLINED_FUNCTION_18_7();
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_10_19();
  while (++v25 != v27 || (v26 & 1) == 0)
  {
    v28 = v25 == v27;
    if (v25 == v27)
    {
      v25 = 0;
    }

    v26 |= v28;
    if (*(v14 + 8 * v25) != -1)
    {
      OUTLINED_FUNCTION_9_19();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1975F5B98(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v6 = a2;
  OUTLINED_FUNCTION_8_22();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35450, &qword_197621B78);
  OUTLINED_FUNCTION_19_8();
  v41 = v6;
  v7 = sub_197616C80();
  if (!v3[2])
  {

LABEL_33:
    *v5 = v7;
    return;
  }

  v39 = v2;
  v40 = v3;
  v8 = 0;
  OUTLINED_FUNCTION_5_24();
  OUTLINED_FUNCTION_32_5();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = v7 + 64;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      ++v17;
      if (*(v4 + 8 * v8))
      {
        OUTLINED_FUNCTION_9();
        v11 = v19 & v18;
        goto LABEL_9;
      }
    }

    if (v41)
    {
      OUTLINED_FUNCTION_7_18();
      if (v37 != v38)
      {
        OUTLINED_FUNCTION_16_13(v36);
      }

      else
      {
        OUTLINED_FUNCTION_13_17(v36);
      }

      v3[2] = 0;
    }

    v5 = v39;
    goto LABEL_33;
  }

  while (1)
  {
    OUTLINED_FUNCTION_12_15();
LABEL_9:
    v20 = v15 | (v8 << 6);
    v21 = v3[6] + v20 * v16;
    if (v41)
    {
      v22 = *v21;
      v23 = *(v21 + 16);
      v49 = *(v21 + 32);
      v47 = v22;
      v48 = v23;
      v24 = *(v3[7] + 8 * v20);
    }

    else
    {
      sub_19755F9FC(v21, &v47, &qword_1EAF34BE8, &qword_19761BB78);
      v24 = *(v3[7] + 8 * v20);
    }

    sub_197617190();
    sub_19755F9FC(&v47, &v44, &qword_1EAF34BE8, &qword_19761BB78);
    if (*(&v45 + 1))
    {
      v42[0] = v44;
      v42[1] = v45;
      v43 = v46;
      sub_1976171B0();
      sub_1976169B0();
      sub_197587DC0(v42);
    }

    else
    {
      sub_1976171B0();
    }

    sub_1976171F0();
    OUTLINED_FUNCTION_23_8();
    if (((v27 << v26) & ~*(v14 + 8 * v25)) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_11_18();
LABEL_24:
    *(v14 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = *(v7 + 48) + 40 * v28;
    v34 = v47;
    v35 = v48;
    *(v33 + 32) = v49;
    *v33 = v34;
    *(v33 + 16) = v35;
    *(*(v7 + 56) + 8 * v28) = v24;
    OUTLINED_FUNCTION_18_7();
    v3 = v40;
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_10_19();
  while (++v29 != v31 || (v30 & 1) == 0)
  {
    v32 = v29 == v31;
    if (v29 == v31)
    {
      v29 = 0;
    }

    v30 |= v32;
    if (*(v14 + 8 * v29) != -1)
    {
      OUTLINED_FUNCTION_9_19();
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

void sub_1975F5E38(uint64_t a1, char a2, void *a3)
{
  v27 = *(a1 + 16);
  if (!v27)
  {

    return;
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 48)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1976170F0();
      __break(1u);
      goto LABEL_22;
    }

    sub_19755F9FC(i, &v33, &qword_1EAF34A18, &qword_19761B640);
    v8 = v33;
    v7 = v34;
    v31 = v33;
    v32 = v34;
    v29 = v35;
    v30 = v36;
    v9 = *a3;
    v11 = sub_19755C610(v33, v34);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35430, &qword_197621B58);
      sub_197616C00();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v8;
    v19[1] = v7;
    v20 = (v18[7] + 32 * v11);
    v21 = v30;
    *v20 = v29;
    v20[1] = v21;
    v22 = v18[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_20;
    }

    ++v5;
    v18[2] = v24;
    a2 = 1;
    if (v27 == v5)
    {

      return;
    }
  }

  sub_1975F4F5C(v14, a2 & 1);
  v16 = sub_19755C610(v8, v7);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v25 = swift_allocError();
  swift_willThrow();
  v37 = v25;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C80, &qword_19761BF20);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_19759FA6C(&v29);

    return;
  }

LABEL_22:
  sub_197616A20();
  MEMORY[0x19A8E2A50](0xD00000000000001BLL, 0x8000000197625C40);
  sub_197616BC0();
  MEMORY[0x19A8E2A50](39, 0xE100000000000000);
  sub_197616C20();
  __break(1u);
}

void sub_1975F614C(uint64_t a1, char a2, void *a3)
{
  v25 = *(a1 + 16);
  if (!v25)
  {

    return;
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 48)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1976170F0();
      __break(1u);
      goto LABEL_22;
    }

    sub_19755F9FC(i, &v30, &qword_1EAF349B0, &qword_19761B200);
    v8 = v30;
    v7 = v31;
    v28 = v30;
    v29 = v31;
    sub_19756A94C(&v32, v27);
    v9 = *a3;
    v11 = sub_19755C610(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35458, &qword_197621B80);
      sub_197616C00();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v8;
    v19[1] = v7;
    sub_19756A94C(v27, (v18[7] + 32 * v11));
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    ++v5;
    v18[2] = v22;
    a2 = 1;
    if (v25 == v5)
    {

      return;
    }
  }

  sub_1975F5430(v14, a2 & 1);
  v16 = sub_19755C610(v8, v7);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v23 = swift_allocError();
  swift_willThrow();
  v33 = v23;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C80, &qword_19761BF20);
  if ((swift_dynamicCast() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v27);

    return;
  }

LABEL_22:
  sub_197616A20();
  MEMORY[0x19A8E2A50](0xD00000000000001BLL, 0x8000000197625C40);
  sub_197616BC0();
  MEMORY[0x19A8E2A50](39, 0xE100000000000000);
  sub_197616C20();
  __break(1u);
}

void sub_1975F6464(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v26 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1976170F0();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v10 = v8;
    v12 = sub_19755C610(v7, v6);
    v13 = v9[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v9[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35440, &qword_197621B68);
      sub_197616C00();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v20 = (v19[6] + 16 * v12);
    *v20 = v7;
    v20[1] = v6;
    *(v19[7] + 8 * v12) = v10;
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v19[2] = v23;
    ++v4;
    a2 = 1;
  }

  sub_1975F56E4(v15, a2 & 1);
  v17 = sub_19755C610(v7, v6);
  if ((v16 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v12 = v17;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C80, &qword_19761BF20);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_197616A20();
  MEMORY[0x19A8E2A50](0xD00000000000001BLL, 0x8000000197625C40);
  sub_197616BC0();
  MEMORY[0x19A8E2A50](39, 0xE100000000000000);
  sub_197616C20();
  __break(1u);
}

uint64_t sub_1975F6744(uint64_t a1)
{
  sub_19755F9FC(v1, &v5, &qword_1EAF34BE8, &qword_19761BB78);
  if (!*(&v6 + 1))
  {
    return sub_1976171B0();
  }

  v3[0] = v5;
  v3[1] = v6;
  v4 = v7;
  sub_1976171B0();
  sub_1976169B0();
  return sub_197587DC0(v3);
}

_BYTE *storeEnumTagSinglePayload for DictionaryCoder(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for DictionaryDecoder(_BYTE *result, int a2, int a3)
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

uint64_t static DictionaryEncoder.encode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[4] = *MEMORY[0x1E69E9840];
  v3 = sub_19756EF78(a1, a2, a3);
  v5 = v4;
  v6 = objc_opt_self();
  v7 = sub_197615990();
  v15[0] = 0;
  v8 = [v6 JSONObjectWithData:v7 options:0 error:v15];

  if (!v8)
  {
    v11 = v15[0];
    v12 = sub_197615830();

    swift_willThrow();
    goto LABEL_5;
  }

  v9 = v15[0];
  sub_197616910();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D08, &qword_19761ECE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
    v10 = sub_1976160B0();
    sub_197567790(v3, v5);
    return v10;
  }

  sub_197567790(v3, v5);
  return v14;
}

_BYTE *storeEnumTagSinglePayload for DictionaryEncoder(_BYTE *result, int a2, int a3)
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

uint64_t sub_1975F6C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x1E69E7D40] & *v2;
  sub_1975674F0(a1, &v12);
  if (v13)
  {
    v5 = *(v4 + 80);
    result = swift_dynamicCast();
    if (result)
    {
      v7 = static DictionaryCoder.encode<A>(_:)(&v11, v5, *(v4 + 96));
      sub_19755404C(0, &qword_1ED816B60, 0x1E696AB10);
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D08, &qword_19761ECE0);
      v12 = v7;
      v8 = sub_197607E60(&v12, 1);
      v10 = v9;
      __swift_destroy_boxed_opaque_existential_0Tm(&v12);
      if (v10 >> 60 != 15)
      {
        *(a2 + 24) = MEMORY[0x1E6969080];
        result = swift_unknownObjectRelease();
        *a2 = v8;
        *(a2 + 8) = v10;
        return result;
      }

      result = swift_unknownObjectRelease();
    }
  }

  else
  {
    result = sub_19755643C(&v12);
  }

  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

id sub_1975F6EBC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __swift_deallocate_boxed_opaque_existential_0(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x19A8E4300);
  }

  return result;
}

double Duration.timeInterval.getter(uint64_t a1, uint64_t a2)
{
  v2 = _ss8DurationV10TipKitCoreE7secondsSivg_0();
  _ss8DurationV10TipKitCoreE7secondsSivg_0();
  return v3 / 1.0e18 + v2;
}

uint64_t Duration.init(timeInterval:)(int8x16_t a1)
{
  v1 = Double.seconds.getter(*a1.i64);
  sub_1975877EC(v1);
  sub_197617290();

  return sub_1976172B0();
}

uint64_t Equatable.isEqual(_:checkReverse:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_197616860();
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28[-v9];
  OUTLINED_FUNCTION_14();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_41();
  sub_1975674F0(a1, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34340, &unk_19761C8E0);
  if (!OUTLINED_FUNCTION_5_25(v15))
  {
    v20 = OUTLINED_FUNCTION_8_23();
    v21(v20);
    if (a2)
    {
      sub_1975674F0(a1, v28);
      if (v29)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BD8, &qword_19761C8F0);
        if (OUTLINED_FUNCTION_10_20())
        {
          if (v31)
          {
            v22 = OUTLINED_FUNCTION_2_34();
            (*(v12 + 16))(v22, v4, a3);
            v23 = OUTLINED_FUNCTION_4_37();
            LOBYTE(v4) = Equatable.isEqual(_:checkReverse:)(v23, v24, v25, v26);
            sub_19755C404(v30, &qword_1EAF34340, &unk_19761C8E0);
            __swift_destroy_boxed_opaque_existential_0Tm(v33);
            return v4 & 1;
          }
        }

        else
        {
          v32 = 0;
          OUTLINED_FUNCTION_6_19();
        }
      }

      else
      {
        sub_19755C404(v28, &qword_1EAF34340, &unk_19761C8E0);
        OUTLINED_FUNCTION_6_19();
        v32 = 0;
      }

      sub_19755C404(v30, &qword_1EAF34BE0, &qword_19761BB70);
    }

    LOBYTE(v4) = 0;
    return v4 & 1;
  }

  __swift_storeEnumTagSinglePayload(v10, 0, 1, a3);
  v16 = OUTLINED_FUNCTION_3_33();
  v17(v16);
  OUTLINED_FUNCTION_9_20();
  sub_1976161A0();
  v18 = OUTLINED_FUNCTION_7_19();
  v19(v18);
  return v4 & 1;
}

Swift::Bool __swiftcall Equatable.exists(in:)(Swift::OpaquePointer_optional in)
{
  if (in.value._rawValue)
  {
    MEMORY[0x1EEE9AC00](in.value._rawValue);
    v6[2] = v2;
    v6[3] = v3;
    v6[4] = v1;
    LOBYTE(in.value._rawValue) = sub_1975F7378(sub_1975F753C, v6, v4);
  }

  return in.value._rawValue & 1;
}

BOOL sub_1975F7378(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = a1(v5, a2);
    if (v3)
    {
      break;
    }

    v5 += 32;
  }

  while ((v7 & 1) == 0);
  return v6 != 0;
}

BOOL sub_1975F73D8(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_197615A60() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

uint64_t sub_1975F74AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1975586C0(a1, v8);
  v6 = default argument 1 of Equatable.isEqual(_:checkReverse:)();
  LOBYTE(a4) = Equatable.isEqual(_:checkReverse:)(v8, v6 & 1, a3, a4);
  sub_19755C404(v8, &qword_1EAF34340, &unk_19761C8E0);
  return a4 & 1;
}

uint64_t sub_1975F75E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void, void))
{
  v4 = v3;
  v6 = a3(v3, *(a2 + 16), *(a2 + 24));
  (*(*(a2 - 8) + 8))(v4, a2);
  return v6;
}

uint64_t sub_1975F766C()
{
  v1 = v0;
  v2 = sub_197615D10();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, v1, v2);
  v6 = OUTLINED_FUNCTION_21();
  v8 = v7(v6);
  if (v8 == *MEMORY[0x1E697BB98] || v8 == *MEMORY[0x1E697BBA0] || v8 == *MEMORY[0x1E697BB90])
  {
    v9 = OUTLINED_FUNCTION_21();
    v10(v9);
    sub_1975558C4(v5, v15);
    __swift_project_boxed_opaque_existential_1Tm(v15, v15[3]);
    swift_getDynamicType();
    sub_197617320();
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_21();
    v13(v12);
  }

  return OUTLINED_FUNCTION_21();
}

uint64_t sub_1975F7818(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a8;
  v46 = a1;
  v47 = a2;
  OUTLINED_FUNCTION_14();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_0();
  v48 = v14 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_14();
  v50 = v15;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v35 - v18;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6_0();
  v44 = v21 - v20;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_14();
  v38 = v23;
  v39 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v35 - v24;
  v26 = sub_197616740();
  if (!v26)
  {
    return sub_1976164B0();
  }

  v49 = v26;
  v53 = sub_197616B40();
  v40 = sub_197616B50();
  sub_197616AF0();
  result = sub_197616730();
  if ((v49 & 0x8000000000000000) == 0)
  {
    v35 = v11;
    v36 = a5;
    v28 = 0;
    v41 = (v50 + 16);
    v42 = v50 + 8;
    v43 = v8;
    while (!__OFADD__(v28, 1))
    {
      v50 = v28 + 1;
      v29 = sub_197616790();
      (*v41)(v19);
      v29(v52, 0);
      v30 = v51;
      v46(v19, v48);
      if (v30)
      {
        v33 = OUTLINED_FUNCTION_2_35();
        v34(v33);
        (*(v38 + 8))(v25, v39);

        return (*(v35 + 32))(v37, v48, v36);
      }

      v51 = 0;
      v31 = OUTLINED_FUNCTION_2_35();
      v32(v31);
      sub_197616B30();
      result = sub_197616750();
      ++v28;
      if (v50 == v49)
      {
        (*(v38 + 8))(v25, v39);
        return v53;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t FixedWidthInteger.init(bitComponents:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_14();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v9 = v8 - v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_1976170C0();
  sub_197616ED0();
  sub_197616530();
  swift_getWitnessTable();
  sub_1976163A0();
  (*(v5 + 8))(v9, a2);
}

uint64_t FixedWidthInteger.bitComponents.getter(uint64_t a1, uint64_t a2)
{
  result = sub_197616BD0();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v12 = 0;
    v13 = result;
    MEMORY[0x1EEE9AC00](result);
    v10 = a1;
    v11 = a2;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35468, &qword_197621C60);
    v7 = sub_1975F81C4();
    v12 = sub_1975F7818(sub_1975F81A4, v9, v6, a1, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
    MEMORY[0x1EEE9AC00](v12);
    v9[0] = a1;
    v9[1] = a2;
    v10 = v2;
    sub_197616530();
    swift_getWitnessTable();
    return sub_197616AC0();
  }

  return result;
}

uint64_t sub_1975F7FD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11[0] = a3;
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = *a1;
  swift_getAssociatedConformanceWitness();
  sub_1976170C0();
  sub_197616ED0();
  v11[3] = v9;
  sub_1975C98C8();
  sub_1976168D0();
  return (*(v5 + 8))(v7, a2);
}

unint64_t sub_1975F81C4()
{
  result = qword_1EAF33EC0;
  if (!qword_1EAF33EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF35468, &qword_197621C60);
    sub_1975F8250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF33EC0);
  }

  return result;
}

unint64_t sub_1975F8250()
{
  result = qword_1EAF33F28;
  if (!qword_1EAF33F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF33F28);
  }

  return result;
}

BOOL sub_1975F82A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v21[0] = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v21 - v10;
  sub_1976168C0();
  if (sub_197616900())
  {
    v12 = sub_1976168F0() < 64;
LABEL_7:
    if (!v12)
    {
      goto LABEL_11;
    }

    v17 = sub_1976168E0();
    (*(v21[0] + 8))(v11, a3);
    goto LABEL_10;
  }

  v13 = sub_197616900();
  v14 = sub_1976168F0();
  v12 = v14 < 64;
  if ((v13 & 1) == 0)
  {
    goto LABEL_7;
  }

  if (v14 > 64)
  {
LABEL_11:
    v21[3] = 0;
    sub_1975C98C8();
    sub_1976168B0();
    v18 = sub_1976161A0();
    v19 = *(v21[0] + 8);
    v19(v9, a3);
    v19(v11, a3);
    return (v18 & 1) == 0;
  }

  swift_getAssociatedConformanceWitness();
  sub_1976170C0();
  sub_197616ED0();
  v15 = sub_197616190();
  v16 = *(v21[0] + 8);
  v16(v9, a3);
  if ((v15 & 1) == 0)
  {
    v16(v11, a3);
    v18 = 0;
    return (v18 & 1) == 0;
  }

  v17 = sub_1976168E0();
  v16(v11, a3);
LABEL_10:
  v18 = v17 == 0;
  return (v18 & 1) == 0;
}

double FixedWidthInteger.cgFloat.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  v8 = (v7 - v6);
  (*(v9 + 16))(v7 - v6, v2, a1);
  return sub_1975F86DC(v8, a1, *(a2 + 8));
}

double sub_1975F86DC(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, a2);
  if (sub_1976168F0() <= 64)
  {
    v10 = sub_197616900();
    v11 = sub_1976168E0();
    v12 = *(v5 + 8);
    v12(a1, a2);
    v12(v7, a2);
    if (v10)
    {
      return v11;
    }

    else
    {
      return v11;
    }
  }

  else
  {
    sub_1975F8894();
    sub_1975F88E8();
    sub_197616090();
    v8 = *(v5 + 8);
    v8(a1, a2);
    v8(v7, a2);
    return *&v13[1];
  }
}

unint64_t sub_1975F8894()
{
  result = qword_1EAF35470;
  if (!qword_1EAF35470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35470);
  }

  return result;
}

unint64_t sub_1975F88E8()
{
  result = qword_1EAF35478;
  if (!qword_1EAF35478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35478);
  }

  return result;
}

uint64_t sub_1975F893C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_197615530();
  OUTLINED_FUNCTION_1_43(v6);
  sub_197615520();
  sub_197615500();
}

uint64_t KeyPathAccessible.set<A>(_:_:)()
{
  OUTLINED_FUNCTION_3_34();
  OUTLINED_FUNCTION_1_44();
  MEMORY[0x1EEE9AC00](v2);
  v4 = OUTLINED_FUNCTION_0_42(v3, v8);
  v5(v4);
  swift_setAtReferenceWritableKeyPath();
  OUTLINED_FUNCTION_2_36();
  return (*(v6 + 16))(v1, v0);
}

uint64_t KeyPathAccessible.with<A>(_:_:)()
{
  OUTLINED_FUNCTION_3_34();
  OUTLINED_FUNCTION_1_44();
  MEMORY[0x1EEE9AC00](v2);
  v4 = OUTLINED_FUNCTION_0_42(v3, v8);
  v5(v4);
  swift_setAtWritableKeyPath();
  OUTLINED_FUNCTION_2_36();
  return (*(v6 + 32))(v1, v0);
}

uint64_t sub_1975F8BD0()
{
  v0 = sub_197553EE0(0xD000000000000038, 0x8000000197625E10, &qword_1ED816F08, 0x1E695DEC8);
  if (v0 && (v7 = sub_197553BF8(v0, v1, v2, v3, v4, v5, v6), result = , v7))
  {
    qword_1EAF3E320 = v7;
  }

  else
  {
    qword_1EAF3E320 = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1975F8C7C()
{
  v0 = sub_197553EE0(0xD000000000000030, 0x8000000197625DD0, &qword_1ED816F08, 0x1E695DEC8);
  if (v0 && (v7 = sub_197553BF8(v0, v1, v2, v3, v4, v5, v6), result = , v7))
  {
    qword_1EAF3E328 = v7;
  }

  else
  {
    qword_1EAF3E328 = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1975F8D44()
{
  v0 = sub_1975F8DA4();
  if (v0[2])
  {
    v2 = v0[4];
    v1 = v0[5];
  }

  else
  {
    v2 = 0;
    v1 = 0;
  }

  qword_1ED81D190 = v2;
  qword_1ED81D198 = v1;
  return result;
}

uint64_t sub_1975F8DA4()
{
  v0 = objc_opt_self();
  sub_1975F8E64();
  v1 = sub_197616450();

  sub_197615A70();
  v2 = sub_197616450();

  v3 = [v0 preferredLocalizationsFromArray:v1 forPreferences:v2];

  v4 = sub_197616460();
  return v4;
}

uint64_t sub_1975F8E64()
{
  v0 = objc_opt_self();
  result = sub_1975F8FC0(v0);
  if (result)
  {
    v2 = *(result + 16);
    if (v2)
    {
      v3 = result + 32;
      v4 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1975586C0(v3, v14);
        sub_19756A94C(v14, &v11);
        if (swift_dynamicCast())
        {
          v5 = v13;
          if (v13)
          {
            v6 = v12;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1975BB398();
              v4 = v9;
            }

            v7 = *(v4 + 16);
            if (v7 >= *(v4 + 24) >> 1)
            {
              sub_1975BB398();
              v4 = v10;
            }

            *(v4 + 16) = v7 + 1;
            v8 = v4 + 16 * v7;
            *(v8 + 32) = v6;
            *(v8 + 40) = v5;
          }
        }

        v3 += 32;
        --v2;
      }

      while (v2);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1975F8FC0(void *a1)
{
  v1 = [a1 systemLanguages];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_197616460();

  return v3;
}

unint64_t sub_1975F901C(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_1ED817298 != -1)
      {
        swift_once();
      }

      if (byte_1ED8172A4 == 1 && byte_1ED8172A2 == 1)
      {
        goto LABEL_30;
      }

      result = 0x1000000000000014;
      break;
    case 2:
      if (qword_1ED817298 != -1)
      {
        swift_once();
      }

      if (byte_1ED8172A4 == 1 && byte_1ED8172A2 == 1)
      {
        result = 0x100000000000001BLL;
      }

      else
      {
        result = 0x1000000000000014;
      }

      break;
    case 3:
      if (qword_1ED817298 != -1)
      {
        swift_once();
      }

      if (byte_1ED8172A4 != 1 || byte_1ED8172A2 != 1)
      {
        goto LABEL_44;
      }

      result = 0x1000000000000017;
      break;
    case 4:
      if (qword_1ED817298 != -1)
      {
        swift_once();
      }

      if (byte_1ED8172A4 == 1 && byte_1ED8172A2 == 1)
      {
        goto LABEL_30;
      }

LABEL_44:
      result = 0x1000000000000012;
      break;
    case 5:
      if (qword_1ED817298 != -1)
      {
        swift_once();
      }

      result = 0xE22074694B706954;
      if (byte_1ED8172A4 == 1)
      {
        v2 = byte_1ED8172A2;
        v3 = 0x1000000000000013;
        goto LABEL_35;
      }

      break;
    case 6:
      if (qword_1ED817298 != -1)
      {
        swift_once();
      }

      if (byte_1ED8172A4 == 1 && byte_1ED8172A2 == 1)
      {
        result = 0x1000000000000018;
      }

      else
      {
        result = 0x1000000000000013;
      }

      break;
    case 7:
      if (qword_1ED817298 != -1)
      {
        swift_once();
      }

      result = 0xE22074694B706954;
      if (byte_1ED8172A4 == 1)
      {
        v2 = byte_1ED8172A2;
        v3 = 0x1000000000000014;
LABEL_35:
        if (v2 == 1)
        {
          result = v3;
        }
      }

      break;
    default:
      if (qword_1ED817298 != -1)
      {
        swift_once();
      }

      if (byte_1ED8172A4 == 1 && byte_1ED8172A2 == 1)
      {
LABEL_30:
        result = 0x1000000000000019;
      }

      else
      {
        result = 0x1000000000000014;
      }

      break;
  }

  return result;
}

uint64_t sub_1975F9430()
{
  v0 = type metadata accessor for logger(0);
  __swift_allocate_value_buffer(v0, qword_1ED816518);
  *OUTLINED_FUNCTION_13_18() = 0;
  if (qword_1ED817298 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_1ED817298);
  }

  OUTLINED_FUNCTION_15_13();
  if (v1)
  {
    OUTLINED_FUNCTION_17_14();
  }

  return OUTLINED_FUNCTION_7_20();
}

void (*static logger.analytics.read())()
{
  if (qword_1ED816510 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for logger(0);
  OUTLINED_FUNCTION_37_2(v0, qword_1ED816518);
  return nullsub_1;
}

void (*static logger.datastore.read())()
{
  if (qword_1ED8172A8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for logger(0);
  OUTLINED_FUNCTION_37_2(v0, qword_1ED8172B0);
  return nullsub_1;
}

uint64_t sub_1975F95D0()
{
  v0 = type metadata accessor for logger(0);
  __swift_allocate_value_buffer(v0, qword_1EAF35488);
  *OUTLINED_FUNCTION_13_18() = 2;
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

void (*static logger.exception.read())()
{
  if (qword_1EAF34288 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for logger(0);
  OUTLINED_FUNCTION_37_2(v0, qword_1EAF35488);
  return nullsub_1;
}

uint64_t sub_1975F96F0()
{
  v0 = type metadata accessor for logger(0);
  __swift_allocate_value_buffer(v0, qword_1EAF354A0);
  *__swift_project_value_buffer(v0, qword_1EAF354A0) = 3;
  if (qword_1ED817298 != -1)
  {
    swift_once();
  }

  return sub_197615BA0();
}

void (*static logger.runtime.read())()
{
  if (qword_1EAF34290 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for logger(0);
  OUTLINED_FUNCTION_37_2(v0, qword_1EAF354A0);
  return nullsub_1;
}

void (*static logger.warning.read())()
{
  if (qword_1ED815ED8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for logger(0);
  OUTLINED_FUNCTION_37_2(v0, qword_1ED815EE0);
  return nullsub_1;
}

uint64_t sub_1975F98D0()
{
  v0 = type metadata accessor for logger(0);
  __swift_allocate_value_buffer(v0, qword_1ED815728);
  *__swift_project_value_buffer(v0, qword_1ED815728) = 6;
  if (qword_1ED817298 != -1)
  {
    swift_once();
  }

  return sub_197615BA0();
}

void (*static logger.tipKitServices.read())()
{
  if (qword_1ED815720 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for logger(0);
  OUTLINED_FUNCTION_37_2(v0, qword_1ED815728);
  return nullsub_1;
}

void (*static logger.tipKitCore.read())()
{
  if (qword_1ED816C98 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for logger(0);
  OUTLINED_FUNCTION_37_2(v0, qword_1ED816CA0);
  return nullsub_1;
}

uint64_t log(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_1976167B0();
  OUTLINED_FUNCTION_36_3();
  if (v4)
  {
    a3();
    OUTLINED_FUNCTION_2_37();
LABEL_10:
    sub_1975FA290();
    goto LABEL_11;
  }

  sub_1976167C0();
  OUTLINED_FUNCTION_36_3();
  if (v4)
  {
    a3();
    OUTLINED_FUNCTION_0_43();
    OUTLINED_FUNCTION_6_20();
    goto LABEL_10;
  }

  sub_1976167D0();
  OUTLINED_FUNCTION_36_3();
  if (v5)
  {
    a3();
    OUTLINED_FUNCTION_3_36();
    goto LABEL_10;
  }

  sub_1976167E0();
  OUTLINED_FUNCTION_36_3();
  if (v7)
  {
    v8 = a3();
    sub_1975FA4E4(v8, v9);
  }

  else
  {
    v10 = _s10TipKitCore3logyyAA6loggerV_So03os_D7_type_tanSSyXKs7CVarArg_pdtFfA0__0();
    v11 = (a3)(v10);
    sub_197558864(v11, v12, v13);
  }

LABEL_11:
}

uint64_t static logger.info(_:_:)()
{
  OUTLINED_FUNCTION_20_9();
  v0();
  OUTLINED_FUNCTION_2_37();
  sub_1975FA290();
}

uint64_t static logger.debug(_:_:)()
{
  OUTLINED_FUNCTION_20_9();
  v0();
  OUTLINED_FUNCTION_0_43();
  OUTLINED_FUNCTION_6_20();
  sub_1975FA290();
}

uint64_t static logger.error(_:_:)()
{
  OUTLINED_FUNCTION_20_9();
  v0();
  OUTLINED_FUNCTION_3_36();
  OUTLINED_FUNCTION_21_11(v1, v2, v3, v4, 29295);
}

uint64_t log(_:_:_:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1976167B0();
  OUTLINED_FUNCTION_35_4();
  if (v4)
  {
    (a3)();
    OUTLINED_FUNCTION_11_19();

    OUTLINED_FUNCTION_10_21();
    sub_1976161F0();
    OUTLINED_FUNCTION_18_8();
    OUTLINED_FUNCTION_2_37();
    OUTLINED_FUNCTION_14_10();
LABEL_11:
    sub_1975FA290();
    goto LABEL_12;
  }

  sub_1976167C0();
  OUTLINED_FUNCTION_35_4();
  if (v4)
  {
    (a3)();
    OUTLINED_FUNCTION_11_19();

    OUTLINED_FUNCTION_10_21();
    sub_1976161F0();
    OUTLINED_FUNCTION_18_8();
    OUTLINED_FUNCTION_0_43();
    OUTLINED_FUNCTION_6_20();
LABEL_10:
    OUTLINED_FUNCTION_14_10();
    goto LABEL_11;
  }

  sub_1976167D0();
  OUTLINED_FUNCTION_35_4();
  if (v5)
  {
    (a3)();
    OUTLINED_FUNCTION_11_19();

    OUTLINED_FUNCTION_10_21();
    sub_1976161F0();
    OUTLINED_FUNCTION_18_8();
    OUTLINED_FUNCTION_3_36();
    goto LABEL_10;
  }

  sub_1976167E0();
  OUTLINED_FUNCTION_35_4();
  if (v7)
  {
    (a3)();
    OUTLINED_FUNCTION_11_19();

    OUTLINED_FUNCTION_10_21();
    sub_1976161F0();
    OUTLINED_FUNCTION_18_8();
    v8 = OUTLINED_FUNCTION_14_10();
    sub_1975FA4E4(v8, v9);
  }

  else
  {
    v10 = _s10TipKitCore3logyyAA6loggerV_So03os_D7_type_tanSSyXKs7CVarArg_pdtFfA0__0();
    a3(v10);
    OUTLINED_FUNCTION_11_19();

    OUTLINED_FUNCTION_10_21();
    sub_1976161F0();
    OUTLINED_FUNCTION_18_8();
    v11 = OUTLINED_FUNCTION_14_10();
    sub_197558864(v11, v12, v13);
  }

LABEL_12:
}

uint64_t static logger.notice(_:_:)()
{
  OUTLINED_FUNCTION_20_9();
  v0();
  OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_28_8();
  sub_1975FA290();
}

uint64_t static logger.notice(_:_:_:)()
{
  OUTLINED_FUNCTION_8_24();
  v0();
  OUTLINED_FUNCTION_11_19();

  OUTLINED_FUNCTION_10_21();
  sub_1976161F0();
  OUTLINED_FUNCTION_12_16();
  OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_28_8();
  OUTLINED_FUNCTION_9_21();
  sub_1975FA290();
}

uint64_t static logger.debug(_:_:_:)()
{
  OUTLINED_FUNCTION_8_24();
  v0();
  OUTLINED_FUNCTION_11_19();

  OUTLINED_FUNCTION_10_21();
  sub_1976161F0();
  OUTLINED_FUNCTION_12_16();
  OUTLINED_FUNCTION_0_43();
  OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_9_21();
  sub_1975FA290();
}

uint64_t static logger.trace(_:_:)()
{
  OUTLINED_FUNCTION_20_9();
  v0();
  OUTLINED_FUNCTION_0_43();
  OUTLINED_FUNCTION_21_11(v2, v3, v4, v1 | 0x6172742000000000, 25955);
}

uint64_t static logger.trace(_:_:_:)()
{
  OUTLINED_FUNCTION_8_24();
  v0();
  OUTLINED_FUNCTION_11_19();

  OUTLINED_FUNCTION_10_21();
  sub_1976161F0();
  OUTLINED_FUNCTION_12_16();
  OUTLINED_FUNCTION_0_43();
  OUTLINED_FUNCTION_9_21();
  sub_1975FA290();
}

uint64_t static logger.info(_:_:_:)()
{
  OUTLINED_FUNCTION_8_24();
  v0();
  OUTLINED_FUNCTION_11_19();

  OUTLINED_FUNCTION_10_21();
  sub_1976161F0();
  OUTLINED_FUNCTION_12_16();
  OUTLINED_FUNCTION_2_37();
  OUTLINED_FUNCTION_9_21();
  sub_1975FA290();
}

uint64_t static logger.warning(_:_:)()
{
  OUTLINED_FUNCTION_20_9();
  v0();
  OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_26_8();
  sub_1975FAAF0();
}

uint64_t static logger.warning(_:_:_:)()
{
  OUTLINED_FUNCTION_8_24();
  v0();
  OUTLINED_FUNCTION_11_19();

  OUTLINED_FUNCTION_10_21();
  sub_1976161F0();
  OUTLINED_FUNCTION_12_16();
  OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_26_8();
  OUTLINED_FUNCTION_9_21();
  sub_1975FAAF0();
}

void sub_1975FA290()
{
  OUTLINED_FUNCTION_19_9();
  if (qword_1ED817510 != -1)
  {
    v4 = OUTLINED_FUNCTION_1_0(&qword_1ED817510);
  }

  OUTLINED_FUNCTION_22_11(v4, v5, v6);
  if (byte_1ED817548 == 1)
  {
    if (qword_1ED817298 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_1ED817298);
    }

    OUTLINED_FUNCTION_15_13();
    if (v7)
    {
      OUTLINED_FUNCTION_17_14();
      if (v8 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E30, &unk_19761E650);
        v9 = swift_allocObject();
        OUTLINED_FUNCTION_33_5(v9, xmmword_197618C10);

        OUTLINED_FUNCTION_30_9();
        v10 = sub_1975F901C(*v1);
        MEMORY[0x19A8E2A50](v10);

        MEMORY[0x19A8E2A50](v3, v2);
        OUTLINED_FUNCTION_32_6();
        v9[3].n128_u64[1] = MEMORY[0x1E69E6158];
        v9[2].n128_u64[0] = v16;
        v9[2].n128_u64[1] = v18;
        OUTLINED_FUNCTION_25_8(v9);
      }
    }
  }

  type metadata accessor for logger(0);

  v11 = sub_197615B90();
  v12 = v0();

  if (os_log_type_enabled(v11, v12))
  {
    swift_slowAlloc();
    v17 = OUTLINED_FUNCTION_34_5();
    *(v1 + 4) = OUTLINED_FUNCTION_24_10(4.8149e-34, v17, v13);
    OUTLINED_FUNCTION_23_9(&dword_197552000, v14, v15, "%s");
    OUTLINED_FUNCTION_29_9();
    OUTLINED_FUNCTION_31_7();
  }
}

uint64_t static logger.error(_:_:_:)()
{
  OUTLINED_FUNCTION_8_24();
  v0();
  OUTLINED_FUNCTION_11_19();

  OUTLINED_FUNCTION_10_21();
  sub_1976161F0();
  OUTLINED_FUNCTION_12_16();
  OUTLINED_FUNCTION_3_36();
  OUTLINED_FUNCTION_9_21();
  sub_1975FA290();
}

void sub_1975FA4E4(uint64_t a1, unint64_t a2)
{
  if (qword_1ED817510 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED817548 == 1)
  {
    if (qword_1ED817298 != -1)
    {
      swift_once();
    }

    if (byte_1ED8172A4 == 1 && byte_1ED8172A2 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E30, &unk_19761E650);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_197618C10;
      sub_197616A20();

      v11[0] = 91;
      v11[1] = 0xE100000000000000;
      v6 = sub_1975F901C(*v2);
      MEMORY[0x19A8E2A50](v6);

      MEMORY[0x19A8E2A50](0x75616620A280E220, 0xAC000000205D746CLL);
      MEMORY[0x19A8E2A50](a1, a2);
      *(v5 + 56) = MEMORY[0x1E69E6158];
      *(v5 + 32) = 91;
      *(v5 + 40) = 0xE100000000000000;
      sub_197617180();
    }
  }

  if (*v2 == 3)
  {
    if (qword_1ED817298 != -1)
    {
      swift_once();
    }

    if (byte_1ED8172A2 == 1)
    {
      sub_1975FA888(a1, a2);
    }
  }

  type metadata accessor for logger(0);

  v7 = sub_197615B90();
  v8 = sub_1976167E0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_197558E6C(a1, a2, v11);
    _os_log_impl(&dword_197552000, v7, v8, "%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x19A8E4300](v10, -1, -1);
    MEMORY[0x19A8E4300](v9, -1, -1);
  }
}

uint64_t sub_1975FA7EC(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  a2();

  v6 = sub_1976161F0();
  v8 = v7;

  a5(v6, v8);
}

uint64_t sub_1975FA888(uint64_t result, uint64_t a2)
{
  v3 = result;
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1ED817298 != -1)
  {
    result = swift_once();
  }

  if (byte_1ED8172A2 == 1)
  {
    memset(&v11, 0, sizeof(v11));
    result = dlopen(0, 2);
    if (result)
    {
      v4 = result;
      if (qword_1EAF34298 != -1)
      {
        swift_once();
      }

      v5 = sub_197616230();
      v6 = dlsym(v4, (v5 + 32));

      if (v6)
      {
        result = dladdr(v6, &v11);
        dli_fbase = v11.dli_fbase;
        if (v11.dli_fbase)
        {
          v8 = sub_1976167E0();
          sub_1975FB3B8();
          v9 = sub_197616840();
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF354D0, &qword_197621DA8);
          v10 = swift_allocObject();
          *(v10 + 16) = xmmword_197618C10;
          *(v10 + 56) = MEMORY[0x1E69E6158];
          *(v10 + 64) = sub_1975FB3FC();
          *(v10 + 32) = v3;
          *(v10 + 40) = a2;

          sub_197615B80(v8, dli_fbase, v9, "%@", 2, 2, v10, v11.dli_fname);
        }
      }
    }
  }

  return result;
}

uint64_t static logger.critical(_:_:)()
{
  OUTLINED_FUNCTION_20_9();
  v0();
  OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_27_7();
  sub_1975FAAF0();
}

void sub_1975FAAF0()
{
  OUTLINED_FUNCTION_19_9();
  if (qword_1ED817510 != -1)
  {
    v4 = OUTLINED_FUNCTION_1_0(&qword_1ED817510);
  }

  OUTLINED_FUNCTION_22_11(v4, v5, v6);
  if (byte_1ED817548 == 1)
  {
    if (qword_1ED817298 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_1ED817298);
    }

    OUTLINED_FUNCTION_15_13();
    if (v7)
    {
      OUTLINED_FUNCTION_17_14();
      if ((v8 & 1) != 0 || *v1 == 4)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E30, &unk_19761E650);
        v9 = swift_allocObject();
        OUTLINED_FUNCTION_33_5(v9, xmmword_197618C10);

        OUTLINED_FUNCTION_30_9();
        v10 = sub_1975F901C(*v1);
        MEMORY[0x19A8E2A50](v10);

        MEMORY[0x19A8E2A50](v3, v2);
        OUTLINED_FUNCTION_32_6();
        v9[3].n128_u64[1] = MEMORY[0x1E69E6158];
        v9[2].n128_u64[0] = v16;
        v9[2].n128_u64[1] = v18;
        OUTLINED_FUNCTION_25_8(v9);
      }
    }
  }

  type metadata accessor for logger(0);

  v11 = sub_197615B90();
  v12 = v0();

  if (os_log_type_enabled(v11, v12))
  {
    swift_slowAlloc();
    v17 = OUTLINED_FUNCTION_34_5();
    *(v1 + 4) = OUTLINED_FUNCTION_24_10(4.8149e-34, v17, v13);
    OUTLINED_FUNCTION_23_9(&dword_197552000, v14, v15, "%s");
    OUTLINED_FUNCTION_29_9();
    OUTLINED_FUNCTION_31_7();
  }
}

uint64_t static logger.critical(_:_:_:)()
{
  OUTLINED_FUNCTION_8_24();
  v0();
  OUTLINED_FUNCTION_11_19();

  OUTLINED_FUNCTION_10_21();
  sub_1976161F0();
  OUTLINED_FUNCTION_12_16();
  OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_27_7();
  OUTLINED_FUNCTION_9_21();
  sub_1975FAAF0();
}

uint64_t destroy for logger(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v4 = sub_197615BB0();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

_BYTE *initializeWithTake for logger(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_197615BB0();
  (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
  return a1;
}

_BYTE *assignWithTake for logger(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_197615BB0();
  (*(*(v6 - 8) + 40))(&a1[v5], &a2[v5], v6);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for logger.Category(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1975FAFB8()
{
  result = qword_1EAF354B8;
  if (!qword_1EAF354B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF354B8);
  }

  return result;
}

uint64_t sub_1975FB00C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1975FB058(a1, a2);
  sub_1975FB170(&unk_1F0BB00E8);
  return v3;
}

uint64_t sub_1975FB058(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1976162D0())
  {
    result = sub_1975FB254(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_197616A10();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_197616AA0();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1975FB170(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1975FB2C4(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1975FB254(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF354C0, &qword_197621DA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1975FB2C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF354C0, &qword_197621DA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_1975FB3B8()
{
  result = qword_1EAF354C8;
  if (!qword_1EAF354C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF354C8);
  }

  return result;
}

unint64_t sub_1975FB3FC()
{
  result = qword_1ED816160;
  if (!qword_1ED816160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816160);
  }

  return result;
}

uint64_t MemoryAddress.description.getter()
{
  v1 = *v0;
  v2 = MEMORY[0x1E69E6530];
  v3 = sub_197616E80();
  MEMORY[0x19A8E2A50](v3);

  MEMORY[0x19A8E2A50](112, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF354D0, &qword_197621DA8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_197618C10;
  v5 = MEMORY[0x1E69E65A8];
  *(v4 + 56) = v2;
  *(v4 + 64) = v5;
  *(v4 + 32) = v1;
  v6 = sub_1976161F0();

  return v6;
}

uint64_t MemoryAddress.init<A>(of:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = swift_unknownObjectRelease();
  *a2 = a1;
  return result;
}

uint64_t sub_1975FB584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1975FB5C0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1975FB5E0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

void sub_1975FB620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35140, &qword_197621F80);
  v10 = OUTLINED_FUNCTION_5_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v23 - v11;
  sub_1975FCC78(a3, v23 - v11, &qword_1EAF35140, &qword_197621F80);
  v13 = sub_1976165B0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_19755C7C8(v12, &qword_1EAF35140, &qword_197621F80);
  }

  else
  {
    sub_1976165A0();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_197616560();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_197616230() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v21 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v23[1] = 7;
      v23[2] = v21;
      v23[3] = v19;
      swift_task_create();

      goto LABEL_14;
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

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_75();
}

unint64_t MiniTipsDatastore.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - v2;
  v6 = 0;
  v7 = 0xE000000000000000;
  sub_197616A20();

  v6 = 0xD000000000000016;
  v7 = 0x8000000197626110;
  MEMORY[0x19A8E2A50](*(v0 + 16), *(v0 + 24));
  MEMORY[0x19A8E2A50](0xD000000000000012, 0x8000000197626130);
  sub_19755BE50(v3);
  OUTLINED_FUNCTION_22();
  v4 = sub_197616200();
  MEMORY[0x19A8E2A50](v4);

  MEMORY[0x19A8E2A50](41, 0xE100000000000000);
  return v6;
}

uint64_t MiniTipsDatastore.__allocating_init(id:bundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_12_8();
  MiniTipsDatastore.init(id:bundleID:)(v7, v8, a3, a4);
  return v6;
}

uint64_t sub_1975FBB14()
{
  OUTLINED_FUNCTION_1();

  return MEMORY[0x1EEE6DEB0](v0 + 656, v1, sub_1975FBB84, v0 + 2128);
}

uint64_t sub_1975FBB98()
{
  OUTLINED_FUNCTION_1();

  return MEMORY[0x1EEE6DEB0](v0 + 16, v1, sub_1975FBC08, v0 + 2176);
}

uint64_t sub_1975FBC1C()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_1975FBC8C()
{
  OUTLINED_FUNCTION_1();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_2();
  *v3 = v2;

  v4 = *(v1 + 16) == 0;
  v5 = *(v2 + 8);

  return v5(v4);
}

uint64_t sub_1975FBD94()
{
  OUTLINED_FUNCTION_1();
  v2 = v1;
  OUTLINED_FUNCTION_16();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  *v4 = v2 & 1;
  OUTLINED_FUNCTION_3();

  return v7();
}

uint64_t MiniTipsDatastore.deinit()
{
  v1 = OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_datastoreTask;
  if (*(v0 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_datastoreTask))
  {

    sub_197616660();
  }

  *(v0 + v1) = 0;

  sub_19755C7C8(v0 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelConfiguration, &qword_1EAF35568, &qword_197621E58);

  return v0;
}

uint64_t MiniTipsDatastore.__deallocating_deinit()
{
  MiniTipsDatastore.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1975FBFCC@<X0>(uint64_t *a1@<X8>)
{
  result = MiniTipsDatastore.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1975FC01C(uint64_t a1)
{
  v1 = a1;
  sub_197617190();
  sub_1975A4D54(v1);
  sub_197616260();

  v2 = sub_1976171F0();

  return sub_1975FC110(v1, v2);
}

unint64_t sub_1975FC0A4(uint64_t a1)
{
  sub_197617190();
  sub_1975F6744(v4);
  v2 = sub_1976171F0();

  return sub_1975FC7BC(a1, v2);
}

unint64_t sub_1975FC110(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE900000000000044;
      v8 = 0x495F656C646E7562;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x697463656C6C6F63;
          v9 = 0x44495F6E6FLL;
          goto LABEL_20;
        case 2:
          v8 = 0xD000000000000012;
          v7 = 0x8000000197623150;
          break;
        case 3:
          v7 = 0xE700000000000000;
          v8 = 0x747865746E6F63;
          break;
        case 4:
          v8 = 0xD000000000000012;
          v7 = 0x8000000197623170;
          break;
        case 5:
          v8 = 0xD000000000000015;
          v7 = 0x8000000197623190;
          break;
        case 6:
          v8 = 0x5F7373696D736964;
          goto LABEL_29;
        case 7:
          v7 = 0xED0000746E756F63;
          v8 = 0x5F79616C70736964;
          break;
        case 8:
          v8 = 0x5F79616C70736964;
LABEL_29:
          v7 = 0xEC00000065707974;
          break;
        case 9:
          v7 = 0xE500000000000000;
          v8 = 0x726F727265;
          break;
        case 0xA:
          v7 = 0xEA0000000000746ELL;
          goto LABEL_27;
        case 0xB:
          v8 = 0xD000000000000012;
          v7 = 0x80000001976231E0;
          break;
        case 0xC:
          v7 = 0xED000044495F746ELL;
LABEL_27:
          v8 = 0x656D697265707865;
          break;
        case 0xD:
          v8 = 0xD000000000000010;
          v7 = 0x8000000197623210;
          break;
        case 0xE:
          v8 = 0xD000000000000015;
          v7 = 0x8000000197623230;
          break;
        case 0xF:
          v7 = 0xE800000000000000;
          v8 = 0x6C72755F6B6E696CLL;
          break;
        case 0x10:
          v8 = 0xD000000000000010;
          v7 = 0x8000000197623250;
          break;
        case 0x11:
          v8 = 0xD000000000000019;
          v7 = 0x8000000197623270;
          break;
        case 0x12:
          v7 = 0xE600000000000000;
          v8 = 0x6E6F73616572;
          break;
        case 0x13:
          v7 = 0xE700000000000000;
          v8 = 0x44495F656C7572;
          break;
        case 0x14:
          v8 = 0x5F65636976726573;
          v9 = 0x726F727265;
          goto LABEL_20;
        case 0x15:
          v8 = 0xD000000000000017;
          v7 = 0x80000001976232B0;
          break;
        case 0x16:
          v8 = 0xD000000000000011;
          v7 = 0x80000001976232D0;
          break;
        case 0x17:
          v7 = 0xE600000000000000;
          v8 = 0x44495F706974;
          break;
        case 0x18:
          v8 = 0x6569765F73706974;
          v10 = 6579575;
          goto LABEL_34;
        case 0x19:
          v7 = 0xE800000000000000;
          v8 = 0x67616C665F353675;
          break;
        case 0x1A:
          v8 = 0x6C665F6567617375;
          v10 = 7563105;
LABEL_34:
          v7 = v10 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 0x1B:
          v8 = 0x65765F73656C7572;
          v9 = 0x6E6F697372;
LABEL_20:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        default:
          break;
      }

      v11 = 0x495F656C646E7562;
      v12 = 0xE900000000000044;
      switch(a1)
      {
        case 1:
          v11 = 0x697463656C6C6F63;
          v13 = 0x44495F6E6FLL;
          goto LABEL_52;
        case 2:
          v11 = 0xD000000000000012;
          v12 = 0x8000000197623150;
          break;
        case 3:
          v12 = 0xE700000000000000;
          v11 = 0x747865746E6F63;
          break;
        case 4:
          v11 = 0xD000000000000012;
          v12 = 0x8000000197623170;
          break;
        case 5:
          v11 = 0xD000000000000015;
          v12 = 0x8000000197623190;
          break;
        case 6:
          v11 = 0x5F7373696D736964;
          goto LABEL_61;
        case 7:
          v12 = 0xED0000746E756F63;
          v11 = 0x5F79616C70736964;
          break;
        case 8:
          v11 = 0x5F79616C70736964;
LABEL_61:
          v12 = 0xEC00000065707974;
          break;
        case 9:
          v12 = 0xE500000000000000;
          v11 = 0x726F727265;
          break;
        case 10:
          v12 = 0xEA0000000000746ELL;
          goto LABEL_59;
        case 11:
          v11 = 0xD000000000000012;
          v12 = 0x80000001976231E0;
          break;
        case 12:
          v12 = 0xED000044495F746ELL;
LABEL_59:
          v11 = 0x656D697265707865;
          break;
        case 13:
          v11 = 0xD000000000000010;
          v12 = 0x8000000197623210;
          break;
        case 14:
          v11 = 0xD000000000000015;
          v12 = 0x8000000197623230;
          break;
        case 15:
          v12 = 0xE800000000000000;
          v11 = 0x6C72755F6B6E696CLL;
          break;
        case 16:
          v11 = 0xD000000000000010;
          v12 = 0x8000000197623250;
          break;
        case 17:
          v11 = 0xD000000000000019;
          v12 = 0x8000000197623270;
          break;
        case 18:
          v12 = 0xE600000000000000;
          v11 = 0x6E6F73616572;
          break;
        case 19:
          v12 = 0xE700000000000000;
          v11 = 0x44495F656C7572;
          break;
        case 20:
          v11 = 0x5F65636976726573;
          v13 = 0x726F727265;
          goto LABEL_52;
        case 21:
          v11 = 0xD000000000000017;
          v12 = 0x80000001976232B0;
          break;
        case 22:
          v11 = 0xD000000000000011;
          v12 = 0x80000001976232D0;
          break;
        case 23:
          v12 = 0xE600000000000000;
          v11 = 0x44495F706974;
          break;
        case 24:
          v11 = 0x6569765F73706974;
          v14 = 6579575;
          goto LABEL_66;
        case 25:
          v12 = 0xE800000000000000;
          v11 = 0x67616C665F353675;
          break;
        case 26:
          v11 = 0x6C665F6567617375;
          v14 = 7563105;
LABEL_66:
          v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 27:
          v11 = 0x65765F73656C7572;
          v13 = 0x6E6F697372;
LABEL_52:
          v12 = v13 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        default:
          break;
      }

      if (v8 == v11 && v7 == v12)
      {
        break;
      }

      v16 = sub_197616EF0();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1975FC7BC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1975FCC78(*(v2 + 48) + 40 * v4, v17, &qword_1EAF34BE8, &qword_19761BB78);
      sub_1975FCC78(v17, v12, &qword_1EAF34BE8, &qword_19761BB78);
      sub_1975FCC78(a1, &v14, &qword_1EAF34BE8, &qword_19761BB78);
      if (v13)
      {
        sub_1975FCC78(v12, v11, &qword_1EAF34BE8, &qword_19761BB78);
        if (*(&v15 + 1))
        {
          v9[0] = v14;
          v9[1] = v15;
          v10 = v16;
          v7 = MEMORY[0x19A8E3130](v11, v9);
          sub_197587DC0(v9);
          sub_19755C7C8(v17, &qword_1EAF34BE8, &qword_19761BB78);
          sub_197587DC0(v11);
          sub_19755C7C8(v12, &qword_1EAF34BE8, &qword_19761BB78);
          if (v7)
          {
            return v4;
          }

          goto LABEL_11;
        }

        sub_19755C7C8(v17, &qword_1EAF34BE8, &qword_19761BB78);
        sub_197587DC0(v11);
      }

      else
      {
        sub_19755C7C8(v17, &qword_1EAF34BE8, &qword_19761BB78);
        if (!*(&v15 + 1))
        {
          sub_19755C7C8(v12, &qword_1EAF34BE8, &qword_19761BB78);
          return v4;
        }
      }

      sub_19755C7C8(v12, &qword_1EAF35578, &qword_197621F70);
LABEL_11:
      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1975FC998(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1975FC9E0(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1975FCA28()
{
  result = qword_1ED815E18;
  if (!qword_1ED815E18)
  {
    sub_197615970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815E18);
  }

  return result;
}

uint64_t sub_1975FCAB4()
{
  OUTLINED_FUNCTION_9_22();
  v2 = v1;
  OUTLINED_FUNCTION_13_19(v1, v3, v4);
  OUTLINED_FUNCTION_30();
  if (v7)
  {
    __break(1u);
LABEL_14:
    result = sub_1976170F0();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35590, &qword_197622018);
  OUTLINED_FUNCTION_8_25();
  if (sub_197616BF0())
  {
    OUTLINED_FUNCTION_20_10();
    OUTLINED_FUNCTION_15_14();
    if (!v11)
    {
      goto LABEL_14;
    }

    v8 = v10;
  }

  if (v9)
  {
    *(*(*v0 + 56) + 8 * v8) = v2;
    OUTLINED_FUNCTION_75();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_16_15();
    sub_1975FC998(v14, v15, v16, v2, v17);
    OUTLINED_FUNCTION_75();
  }
}

void sub_1975FCBA0()
{
  OUTLINED_FUNCTION_9_22();
  v2 = v1;
  OUTLINED_FUNCTION_13_19(v1, v3, v4);
  OUTLINED_FUNCTION_30();
  if (v7)
  {
    __break(1u);
LABEL_12:
    sub_1976170F0();
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35280, &qword_1976204D8);
  OUTLINED_FUNCTION_8_25();
  if (sub_197616BF0())
  {
    OUTLINED_FUNCTION_20_10();
    OUTLINED_FUNCTION_15_14();
    if (!v11)
    {
      goto LABEL_12;
    }

    v8 = v10;
  }

  if (v9)
  {
    *(*(*v0 + 56) + v8) = v2;
    OUTLINED_FUNCTION_75();
  }

  else
  {
    v12 = OUTLINED_FUNCTION_16_15();
    sub_1975FC9E0(v12, v13, v14, v2, v15);
    OUTLINED_FUNCTION_75();
  }
}

uint64_t sub_1975FCC78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_28_6(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13();
  v5 = OUTLINED_FUNCTION_21();
  v6(v5);
  return v4;
}

uint64_t sub_1975FCCC4()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_19_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12(v1);

  return v4(v3);
}

void sub_1975FCD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_77(v16, v17, v18, v19, v20, v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D0, &unk_197622090);
  OUTLINED_FUNCTION_0();
  v68[3] = v24;
  v68[4] = v23;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  v27 = (v68 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D8, &unk_197619120);
  v29 = OUTLINED_FUNCTION_5_2(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_134();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_29_10();
  if ((v11 & 1) != 0 && (v10 & 1) != 0 && (v15 & 1) == 0 && !*(a10 + 16))
  {
    type metadata accessor for CoreTipRecord(0);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346E0, &qword_1976220A0);
    OUTLINED_FUNCTION_13();
    (*(v61 + 16))(v32, v12, v60);
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v60);
    OUTLINED_FUNCTION_8_26();
    v67 = sub_19755FF88(v65, 255, v66, &protocol conformance descriptor for CoreTipRecord);
    OUTLINED_FUNCTION_93(v67);
    sub_19755C7C8(v32, &qword_1EAF346D8, &unk_197619120);
    goto LABEL_16;
  }

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346E0, &qword_1976220A0);
  OUTLINED_FUNCTION_13();
  v36 = OUTLINED_FUNCTION_43();
  v37(v36);
  v38 = OUTLINED_FUNCTION_34_6();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v35);
  v41 = OUTLINED_FUNCTION_75_0();
  sub_19755F9A0(v41, v42, v43, v44);
  v45 = type metadata accessor for CoreTipRecord(0);
  OUTLINED_FUNCTION_8_26();
  v48 = sub_19755FF88(v46, 255, v47, &protocol conformance descriptor for CoreTipRecord);
  v68[0] = v14;
  v49 = v48;
  OUTLINED_FUNCTION_132();
  v50 = sub_197615D90();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_5_26();
  swift_getKeyPath();
  OUTLINED_FUNCTION_101();
  v70 = v11 & 1;
  OUTLINED_FUNCTION_57_0();
  swift_setAtWritableKeyPath();

  OUTLINED_FUNCTION_89();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5_26();
  swift_getKeyPath();
  v69 = v68[2];
  v70 = v10 & 1;
  OUTLINED_FUNCTION_57_0();
  swift_setAtWritableKeyPath();

  OUTLINED_FUNCTION_9_6();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5_26();
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_7();
  LOBYTE(v69) = v15 & 1;
  OUTLINED_FUNCTION_57_0();
  swift_setAtWritableKeyPath();

  OUTLINED_FUNCTION_9_6();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_5_26();
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_7();
  v54 = MEMORY[0x1E69E7CC0];
  v69 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_57_0();
  swift_setAtWritableKeyPath();

  OUTLINED_FUNCTION_9_6();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_5_26();
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_7();
  v69 = v54;
  OUTLINED_FUNCTION_57_0();
  swift_setAtWritableKeyPath();

  OUTLINED_FUNCTION_9_6();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_5_26();
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_7();
  v69 = a10;

  OUTLINED_FUNCTION_57_0();
  swift_setAtWritableKeyPath();

  OUTLINED_FUNCTION_121();
  v57 = OUTLINED_FUNCTION_119();
  v58(v57);
  sub_19755C7C8(v13, &qword_1EAF346D8, &unk_197619120);
  if (v10)
  {
LABEL_16:
    OUTLINED_FUNCTION_135();
    OUTLINED_FUNCTION_19_0();
    return;
  }

  sub_197567E4C(v54);
  OUTLINED_FUNCTION_72();
  while (1)
  {
    if (v68 == v27)
    {

      goto LABEL_16;
    }

    if (v45)
    {
      v59 = OUTLINED_FUNCTION_129();
      MEMORY[0x19A8E31E0](v59);
    }

    else
    {
      if (v27 >= *(v49 + 16))
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_127();
    }

    if (__OFADD__(v27, 1))
    {
      break;
    }

    sub_1975FF608(&qword_1ED8170E0, type metadata accessor for CoreTipRecord, &protocol conformance descriptor for CoreTipRecord);

    v27 = (v27 + 1);
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1975FD26C()
{
  OUTLINED_FUNCTION_20();
  v64 = v3;
  v65 = v1;
  v5 = v4;
  v67 = v6;
  v8 = v7;
  v10 = v9;
  v61[0] = v11;
  v61[1] = v12;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B40, &unk_197622360);
  OUTLINED_FUNCTION_0();
  v62 = v16;
  v63 = v15;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v61 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B08, &qword_19761B888);
  v21 = OUTLINED_FUNCTION_5_2(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_52_0();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v61 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = v61 - v26;
  if ((v14 & 1) != 0 && (v10 & 1) != 0 && (v8 & 1) == 0 && !v67[2])
  {
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
    OUTLINED_FUNCTION_13();
    (*(v55 + 16))(v2, v5, v54);
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v54);
    OUTLINED_FUNCTION_9_23();
    sub_19755FF88(v59, 255, v60, &protocol conformance descriptor for CoreDonationRecord);
    sub_197615CB0();
    sub_19755C7C8(v2, &qword_1EAF34B08, &qword_19761B888);
    goto LABEL_16;
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
  OUTLINED_FUNCTION_13();
  (*(v29 + 16))(v27, v5, v28);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v28);
  sub_19755F9A0(v27, v25, &qword_1EAF34B08, &qword_19761B888);
  OUTLINED_FUNCTION_9_23();
  v35 = sub_19755FF88(v33, 255, v34, &protocol conformance descriptor for CoreDonationRecord);
  v36 = sub_197615D90();
  v37 = v61;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_1_1();
  *(v38 - 16) = v0;
  *(v38 - 8) = v35;
  swift_getKeyPath();
  v66 = v61[0];
  OUTLINED_FUNCTION_141(v14 & 1);

  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_1_1();
  *(v40 - 16) = v0;
  *(v40 - 8) = v35;
  swift_getKeyPath();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_141(v10 & 1);

  OUTLINED_FUNCTION_89();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_1_1();
  *(v42 - 16) = v0;
  *(v42 - 8) = v35;
  swift_getKeyPath();
  OUTLINED_FUNCTION_128();
  LOBYTE(v66) = v8 & 1;
  OUTLINED_FUNCTION_66();
  swift_setAtWritableKeyPath();

  OUTLINED_FUNCTION_89();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_1_1();
  *(v44 - 16) = v0;
  *(v44 - 8) = v35;
  swift_getKeyPath();
  OUTLINED_FUNCTION_128();
  v45 = MEMORY[0x1E69E7CC0];
  v66 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_66();
  swift_setAtWritableKeyPath();

  OUTLINED_FUNCTION_89();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_1_1();
  *(v47 - 16) = v0;
  *(v47 - 8) = v35;
  swift_getKeyPath();
  OUTLINED_FUNCTION_128();
  v66 = v45;
  OUTLINED_FUNCTION_66();
  swift_setAtWritableKeyPath();

  OUTLINED_FUNCTION_89();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_1_1();
  *(v49 - 16) = v0;
  *(v49 - 8) = v35;
  swift_getKeyPath();
  OUTLINED_FUNCTION_128();
  v66 = v67;

  OUTLINED_FUNCTION_66();
  swift_setAtWritableKeyPath();

  OUTLINED_FUNCTION_75_0();
  v50 = v65;
  v51 = sub_197615C80();
  (*(v62 + 8))(v19, v63);
  sub_19755C7C8(v27, &qword_1EAF34B08, &qword_19761B888);
  if (v50)
  {
LABEL_16:
    OUTLINED_FUNCTION_135();
    OUTLINED_FUNCTION_19_0();
    return;
  }

  sub_197567E4C(v51);
  OUTLINED_FUNCTION_72();
  while (1)
  {
    if (v45 == v37)
    {

      goto LABEL_16;
    }

    if (v27)
    {
      v53 = OUTLINED_FUNCTION_129();
      MEMORY[0x19A8E31E0](v53);
    }

    else
    {
      if (v37 >= *(v8 + 16))
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_127();
    }

    if (__OFADD__(v37, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_60_0();
    sub_1975FF608(&qword_1ED8171B0, v52, &protocol conformance descriptor for CoreDonationRecord);

    v37 = (v37 + 1);
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1975FD7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_77(v16, v17, v18, v19, v20, v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B40, &unk_197622360);
  OUTLINED_FUNCTION_0();
  v69[3] = v24;
  v69[4] = v23;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  v27 = (v69 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B08, &qword_19761B888);
  v29 = OUTLINED_FUNCTION_5_2(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_134();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_29_10();
  if ((v11 & 1) != 0 && (v10 & 1) != 0 && (v15 & 1) == 0 && !*(a10 + 16))
  {
    type metadata accessor for CoreDonationRecord(0);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
    OUTLINED_FUNCTION_13();
    (*(v62 + 16))(v32, v12, v61);
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v61);
    OUTLINED_FUNCTION_9_23();
    v68 = sub_19755FF88(v66, 255, v67, &protocol conformance descriptor for CoreDonationRecord);
    OUTLINED_FUNCTION_93(v68);
    sub_19755C7C8(v32, &qword_1EAF34B08, &qword_19761B888);
    goto LABEL_16;
  }

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
  OUTLINED_FUNCTION_13();
  v36 = OUTLINED_FUNCTION_43();
  v37(v36);
  v38 = OUTLINED_FUNCTION_34_6();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v35);
  v41 = OUTLINED_FUNCTION_75_0();
  sub_19755F9A0(v41, v42, v43, v44);
  v45 = type metadata accessor for CoreDonationRecord(0);
  OUTLINED_FUNCTION_9_23();
  v48 = sub_19755FF88(v46, 255, v47, &protocol conformance descriptor for CoreDonationRecord);
  v69[0] = v14;
  v49 = v48;
  OUTLINED_FUNCTION_132();
  v50 = sub_197615D90();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_5_26();
  swift_getKeyPath();
  OUTLINED_FUNCTION_101();
  v71 = v11 & 1;
  OUTLINED_FUNCTION_57_0();
  swift_setAtWritableKeyPath();

  OUTLINED_FUNCTION_89();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5_26();
  swift_getKeyPath();
  v70 = v69[2];
  v71 = v10 & 1;
  OUTLINED_FUNCTION_57_0();
  swift_setAtWritableKeyPath();

  OUTLINED_FUNCTION_9_6();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5_26();
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_7();
  LOBYTE(v70) = v15 & 1;
  OUTLINED_FUNCTION_57_0();
  swift_setAtWritableKeyPath();

  OUTLINED_FUNCTION_9_6();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_5_26();
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_7();
  v54 = MEMORY[0x1E69E7CC0];
  v70 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_57_0();
  swift_setAtWritableKeyPath();

  OUTLINED_FUNCTION_9_6();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_5_26();
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_7();
  v70 = v54;
  OUTLINED_FUNCTION_57_0();
  swift_setAtWritableKeyPath();

  OUTLINED_FUNCTION_9_6();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_5_26();
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_7();
  v70 = a10;

  OUTLINED_FUNCTION_57_0();
  swift_setAtWritableKeyPath();

  OUTLINED_FUNCTION_121();
  v57 = OUTLINED_FUNCTION_119();
  v58(v57);
  sub_19755C7C8(v13, &qword_1EAF34B08, &qword_19761B888);
  if (v10)
  {
LABEL_16:
    OUTLINED_FUNCTION_135();
    OUTLINED_FUNCTION_19_0();
    return;
  }

  sub_197567E4C(v54);
  OUTLINED_FUNCTION_72();
  while (1)
  {
    if (v69 == v27)
    {

      goto LABEL_16;
    }

    if (v45)
    {
      v60 = OUTLINED_FUNCTION_129();
      MEMORY[0x19A8E31E0](v60);
    }

    else
    {
      if (v27 >= *(v49 + 16))
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_127();
    }

    if (__OFADD__(v27, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_60_0();
    sub_1975FF608(&qword_1ED8171B0, v59, &protocol conformance descriptor for CoreDonationRecord);

    v27 = (v27 + 1);
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_1975FDCC4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  v50 = a7;
  v43 = a2;
  v44 = a4;
  v47 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BA8, &qword_19761BAC8);
  v45 = *(v13 - 8);
  v46 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BA0, &qword_19761BAC0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v42 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v42 - v23;
  if ((a3 & 1) != 0 && (a5 & 1) != 0 && (a6 & 1) == 0 && !*(v50 + 16))
  {
    type metadata accessor for CoreParameterRecord(0);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D28, &qword_19761C7E0);
    (*(*(v41 - 8) + 16))(v19, a8, v41);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v41);
    sub_19755FF88(&qword_1ED817148, 255, type metadata accessor for CoreParameterRecord, &protocol conformance descriptor for CoreParameterRecord);
    sub_197615CB0();
    return sub_19755C7C8(v19, &qword_1EAF34BA0, &qword_19761BAC0);
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D28, &qword_19761C7E0);
    (*(*(v25 - 8) + 16))(v24, a8, v25);
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v25);
    sub_19755F9A0(v24, v22, &qword_1EAF34BA0, &qword_19761BAC0);
    v26 = type metadata accessor for CoreParameterRecord(0);
    v27 = sub_19755FF88(&qword_1ED817148, 255, type metadata accessor for CoreParameterRecord, &protocol conformance descriptor for CoreParameterRecord);
    v42 = v8;
    v28 = v27;
    v29 = sub_197615D90();
    MEMORY[0x1EEE9AC00](v29);
    *(&v42 - 2) = v26;
    *(&v42 - 1) = v28;
    swift_getKeyPath();
    v48 = v43;
    v49 = a3 & 1;
    swift_setAtWritableKeyPath();

    MEMORY[0x1EEE9AC00](v30);
    *(&v42 - 2) = v26;
    *(&v42 - 1) = v28;
    swift_getKeyPath();
    v48 = v44;
    v49 = a5 & 1;
    swift_setAtWritableKeyPath();

    MEMORY[0x1EEE9AC00](v31);
    *(&v42 - 2) = v26;
    *(&v42 - 1) = v28;
    swift_getKeyPath();
    LOBYTE(v48) = a6 & 1;
    swift_setAtWritableKeyPath();

    MEMORY[0x1EEE9AC00](v32);
    *(&v42 - 2) = v26;
    *(&v42 - 1) = v28;
    swift_getKeyPath();
    v33 = MEMORY[0x1E69E7CC0];
    v48 = MEMORY[0x1E69E7CC0];
    swift_setAtWritableKeyPath();

    MEMORY[0x1EEE9AC00](v34);
    *(&v42 - 2) = v26;
    *(&v42 - 1) = v28;
    swift_getKeyPath();
    v48 = v33;
    swift_setAtWritableKeyPath();

    MEMORY[0x1EEE9AC00](v35);
    *(&v42 - 2) = v26;
    *(&v42 - 1) = v28;
    swift_getKeyPath();
    v48 = v50;

    swift_setAtWritableKeyPath();

    v36 = v42;
    v37 = sub_197615C80();
    (*(v45 + 8))(v15, v46);
    result = sub_19755C7C8(v24, &qword_1EAF34BA0, &qword_19761BAC0);
    if (!v36)
    {
      result = sub_197567E4C(v37);
      v39 = result;
      for (i = 0; ; ++i)
      {
        if (v39 == i)
        {
        }

        if ((v37 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x19A8E31E0](i, v37);
        }

        else
        {
          if (i >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }
        }

        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_1975FF608(&qword_1ED817148, type metadata accessor for CoreParameterRecord, &protocol conformance descriptor for CoreParameterRecord);
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1975FE368(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  v50 = a7;
  v43 = a2;
  v44 = a4;
  v47 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC8, &unk_197622310);
  v45 = *(v13 - 8);
  v46 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC0, &qword_19761B6F0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v42 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v42 - v23;
  if ((a3 & 1) != 0 && (a5 & 1) != 0 && (a6 & 1) == 0 && !*(v50 + 16))
  {
    type metadata accessor for CoreEventRecord(0);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD0, &qword_19761B6F8);
    (*(*(v41 - 8) + 16))(v19, a8, v41);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v41);
    sub_19755FF88(&qword_1ED817218, 255, type metadata accessor for CoreEventRecord, &protocol conformance descriptor for CoreEventRecord);
    sub_197615CB0();
    return sub_19755C7C8(v19, &qword_1EAF34AC0, &qword_19761B6F0);
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD0, &qword_19761B6F8);
    (*(*(v25 - 8) + 16))(v24, a8, v25);
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v25);
    sub_19755F9A0(v24, v22, &qword_1EAF34AC0, &qword_19761B6F0);
    v26 = type metadata accessor for CoreEventRecord(0);
    v27 = sub_19755FF88(&qword_1ED817218, 255, type metadata accessor for CoreEventRecord, &protocol conformance descriptor for CoreEventRecord);
    v42 = v8;
    v28 = v27;
    v29 = sub_197615D90();
    MEMORY[0x1EEE9AC00](v29);
    *(&v42 - 2) = v26;
    *(&v42 - 1) = v28;
    swift_getKeyPath();
    v48 = v43;
    v49 = a3 & 1;
    swift_setAtWritableKeyPath();

    MEMORY[0x1EEE9AC00](v30);
    *(&v42 - 2) = v26;
    *(&v42 - 1) = v28;
    swift_getKeyPath();
    v48 = v44;
    v49 = a5 & 1;
    swift_setAtWritableKeyPath();

    MEMORY[0x1EEE9AC00](v31);
    *(&v42 - 2) = v26;
    *(&v42 - 1) = v28;
    swift_getKeyPath();
    LOBYTE(v48) = a6 & 1;
    swift_setAtWritableKeyPath();

    MEMORY[0x1EEE9AC00](v32);
    *(&v42 - 2) = v26;
    *(&v42 - 1) = v28;
    swift_getKeyPath();
    v33 = MEMORY[0x1E69E7CC0];
    v48 = MEMORY[0x1E69E7CC0];
    swift_setAtWritableKeyPath();

    MEMORY[0x1EEE9AC00](v34);
    *(&v42 - 2) = v26;
    *(&v42 - 1) = v28;
    swift_getKeyPath();
    v48 = v33;
    swift_setAtWritableKeyPath();

    MEMORY[0x1EEE9AC00](v35);
    *(&v42 - 2) = v26;
    *(&v42 - 1) = v28;
    swift_getKeyPath();
    v48 = v50;

    swift_setAtWritableKeyPath();

    v36 = v42;
    v37 = sub_197615C80();
    (*(v45 + 8))(v15, v46);
    result = sub_19755C7C8(v24, &qword_1EAF34AC0, &qword_19761B6F0);
    if (!v36)
    {
      result = sub_197567E4C(v37);
      v39 = result;
      for (i = 0; ; ++i)
      {
        if (v39 == i)
        {
        }

        if ((v37 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x19A8E31E0](i, v37);
        }

        else
        {
          if (i >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }
        }

        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_1975FF608(&qword_1ED817218, type metadata accessor for CoreEventRecord, &protocol conformance descriptor for CoreEventRecord);
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }
  }

  return result;
}

void sub_1975FEA0C()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_35_5(v2, v3, v4, v5, v6, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC8, &unk_197622310);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_27_8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC0, &qword_19761B6F0);
  v11 = OUTLINED_FUNCTION_5_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_52_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_68_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  OUTLINED_FUNCTION_5_2(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_45_0(v0);
  if (v16)
  {
    sub_19755C7C8(v0, &qword_1EAF34AB8, &qword_197622080);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_53_0();
    v18(v17);
    OUTLINED_FUNCTION_58_0();
    v21 = sub_19755FF88(v19, 255, v20, &protocol conformance descriptor for CoreEventRecord);
    if (OUTLINED_FUNCTION_67(v21))
    {
      v30 = OUTLINED_FUNCTION_43();
      v31(v30);
    }

    else
    {
      OUTLINED_FUNCTION_106(0, v23, v24, v25, v26, v27, v28, v29, v57);
      MEMORY[0x1EEE9AC00](v32);
      OUTLINED_FUNCTION_19_11();
      OUTLINED_FUNCTION_55(v33, v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD0, &qword_19761B6F8);
      v35 = OUTLINED_FUNCTION_38_3();
      __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
      v39 = OUTLINED_FUNCTION_29_5();
      sub_19755F9A0(v39, v40, v41, v42);
      v43 = OUTLINED_FUNCTION_74_0();
      MEMORY[0x1EEE9AC00](v43);
      OUTLINED_FUNCTION_2_38();
      swift_getKeyPath();
      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v44);
      OUTLINED_FUNCTION_2_38();
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();
      OUTLINED_FUNCTION_21_12(v58);
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v45);
      OUTLINED_FUNCTION_2_38();
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();
      OUTLINED_FUNCTION_20_11(v59);
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v46);
      OUTLINED_FUNCTION_2_38();
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();

      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v47);
      OUTLINED_FUNCTION_2_38();
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();
      OUTLINED_FUNCTION_125();
      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v48);
      OUTLINED_FUNCTION_2_38();
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();
      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      v49 = OUTLINED_FUNCTION_73_0();
      if (v1)
      {

        v50 = OUTLINED_FUNCTION_15_15();
        v51(v50);
      }

      else
      {
        v54 = v49;
        v55 = OUTLINED_FUNCTION_15_15();
        v56(v55);
        sub_197595B38(v54);
        OUTLINED_FUNCTION_122();
      }

      sub_19755C7C8(&qword_1EAF34AB8, &qword_1EAF34AC0, &qword_19761B6F0);
      v52 = OUTLINED_FUNCTION_36_4();
      v53(v52);
      OUTLINED_FUNCTION_91();
    }
  }

  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_14_9();
}

uint64_t sub_1975FEEE0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v42 = a7;
  v39 = a4;
  v40 = a5;
  v38 = a3;
  v45 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B40, &unk_197622360);
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B08, &qword_19761B888);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v37 - v18;
  v20 = sub_197615F50();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19755F9A0(a1, v19, &qword_1EAF34AB8, &qword_197622080);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_19755C7C8(v19, &qword_1EAF34AB8, &qword_197622080);
    return 0;
  }

  (*(v21 + 32))(v23, v19, v20);
  v24 = type metadata accessor for CoreDonationRecord(0);
  v25 = sub_19755FF88(&qword_1ED8171B0, 255, type metadata accessor for CoreDonationRecord, &protocol conformance descriptor for CoreDonationRecord);
  v26 = sub_197615C00();
  if (!v26)
  {
    v37 = &v37;
    MEMORY[0x1EEE9AC00](0);
    *(&v37 - 2) = v23;
    v48 = v24;
    sub_197615AE0();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v28);
    sub_19755F9A0(v16, v14, &qword_1EAF34B08, &qword_19761B888);
    v29 = sub_197615D90();
    MEMORY[0x1EEE9AC00](v29);
    *(&v37 - 2) = v24;
    *(&v37 - 1) = v25;
    swift_getKeyPath();
    v46 = 1;
    v47 = 0;
    swift_setAtWritableKeyPath();

    MEMORY[0x1EEE9AC00](v30);
    *(&v37 - 2) = v24;
    *(&v37 - 1) = v25;
    swift_getKeyPath();
    v46 = v38;
    v47 = v39 & 1;
    swift_setAtWritableKeyPath();

    MEMORY[0x1EEE9AC00](v31);
    *(&v37 - 2) = v24;
    *(&v37 - 1) = v25;
    swift_getKeyPath();
    LOBYTE(v46) = v40 & 1;
    swift_setAtWritableKeyPath();

    MEMORY[0x1EEE9AC00](v32);
    *(&v37 - 2) = v24;
    *(&v37 - 1) = v25;
    swift_getKeyPath();
    v46 = v41;

    swift_setAtWritableKeyPath();

    MEMORY[0x1EEE9AC00](v33);
    *(&v37 - 2) = v24;
    *(&v37 - 1) = v25;
    swift_getKeyPath();
    v46 = v42;

    swift_setAtWritableKeyPath();

    MEMORY[0x1EEE9AC00](v34);
    *(&v37 - 2) = v24;
    *(&v37 - 1) = v25;
    swift_getKeyPath();
    v46 = MEMORY[0x1E69E7CC0];
    swift_setAtWritableKeyPath();

    v36 = sub_197615C80();
    (*(v43 + 8))(v10, v44);
    v27 = sub_1976087D4(v36);

    sub_19755C7C8(v16, &qword_1EAF34B08, &qword_19761B888);
    if (v27)
    {
      (*(v21 + 8))(v23, v20);
      return v27;
    }

    (*(v21 + 8))(v23, v20);
    return 0;
  }

  v27 = v26;
  (*(v21 + 8))(v23, v20);
  return v27;
}

uint64_t sub_1975FF608(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  sub_19755FF88(a1, 255, a2, a3);
  if (sub_197615DD0())
  {
    if ((sub_197615E90() & 1) == 0)
    {
      sub_197615CC0();
    }
  }

  else
  {
    sub_19759228C();
    swift_allocError();
    *v4 = 0xD00000000000002DLL;
    v4[1] = 0x80000001976263F0;
    return swift_willThrow();
  }
}

uint64_t sub_1975FF700()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v3 = v2;
  OUTLINED_FUNCTION_110();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    v7 = *(v3 + 48);

    return MEMORY[0x1EEE6DFA0](sub_1975FF818, v7, 0);
  }

  else
  {
    OUTLINED_FUNCTION_3();

    return v8();
  }
}

uint64_t sub_1975FF818()
{
  if (qword_1ED816C98 != -1)
  {
    OUTLINED_FUNCTION_3_2();
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = type metadata accessor for logger(0);
  __swift_project_value_buffer(v2, qword_1ED816CA0);
  sub_197616A20();
  OUTLINED_FUNCTION_13_12();
  MEMORY[0x19A8E2A50](0xD000000000000040);
  swift_getErrorValue();
  sub_197616EB0();
  sub_197558864(0, 0xE000000000000000, v3);

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_1975FF930()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v3 = v2;
  OUTLINED_FUNCTION_110();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 192) = v0;

  if (v0)
  {
    v7 = *(v3 + 120);
    v8 = sub_1975FFAD8;
  }

  else
  {
    v9 = *(v3 + 120);

    v8 = sub_1975FFA40;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1975FFA40(uint64_t a1)
{
  sub_197615C90();
  OUTLINED_FUNCTION_140();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_104(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_13_20(v2);
  v4 = OUTLINED_FUNCTION_82();

  return MEMORY[0x1EEE6D8D0](v4);
}

uint64_t sub_1975FFAD8()
{
  OUTLINED_FUNCTION_1();

  sub_197615C90();

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_1975FFB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a5;
  v27 = a3;
  v8 = sub_197615D10();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v28 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A58, &qword_19761B680);
  v12 = v11 - 8;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v26 - v16);
  *v17 = a1;
  v17[1] = a2;
  v18 = *(v9 + 16);
  v18(&v26 + *(v12 + 56) - v16, v27, v8);
  v19 = (v17 + *(v12 + 72));
  v27 = a4;
  *v19 = a4;
  v19[1] = v29;
  sub_19755F9A0(v17, v15, &qword_1EAF34A58, &qword_19761B680);

  v20 = *(v12 + 56);

  v21 = v28;
  v18(v28, &v15[v20], v8);
  LODWORD(v12) = (*(v9 + 88))(v21, v8);
  LODWORD(a1) = *MEMORY[0x1E697BB90];
  v22 = *(v9 + 8);
  v22(v21, v8);
  v22(&v15[v20], v8);
  if (v12 == a1)
  {
    if (v27 == 0x6473706974 && v29 == 0xE500000000000000)
    {
      v24 = 0;
    }

    else
    {
      v24 = sub_197616EF0() ^ 1;
    }
  }

  else
  {
    v24 = 1;
  }

  sub_19755C7C8(v17, &qword_1EAF34A58, &qword_19761B680);
  return v24 & 1;
}

uint64_t sub_1975FFE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A58, &qword_19761B680);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35608, &qword_1976224D0);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1975FFF34, 0, 0);
}

uint64_t sub_1975FFF34()
{
  v65 = v0;
  v1 = v0[6];
  v64[0] = 0;
  v2 = sub_197597500(v1);
  v52 = *(v1 + 16);
  if (v2 != v52 || (v3 & 0x100) == 0)
  {
    v56 = v0[11];
    v57 = v0[14];
    v55 = v0[10];
    v5 = v0[8];
    v59 = v0[9];
    v6 = v0[6];
    swift_beginAccess();
    v7 = 0;
    v8 = 0;
    v50 = v6 + 32;
    while (1)
    {
      v53 = v8;
      if (v7)
      {
        v9 = 0;
        v10 = 0;
        v51 = v7 + 32;
        v58 = v7;
        while (1)
        {
          v54 = v10;
          v11 = 0;
          v60 = v9;
          if (v9)
          {
            while (1)
            {
              v12 = *(v9 + 16);
              if (v11 == v12)
              {
                v38 = v0[12];
                __swift_storeEnumTagSinglePayload(v38, 1, 1, v0[8]);
                sub_19755C7C8(v38, &qword_1EAF35608, &qword_1976224D0);
                goto LABEL_20;
              }

              if (v11 >= v12)
              {
                break;
              }

              v13 = v0[13];
              v14 = v0[8];
              sub_19755F9A0(v9 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v11, v0[12], &qword_1EAF34A58, &qword_19761B680);
              OUTLINED_FUNCTION_3_10();
              __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
              v18 = OUTLINED_FUNCTION_21();
              sub_197603CF8(v18, v19);
              if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
              {
                goto LABEL_24;
              }

              v20 = v0[14];
              v21 = v0[8];
              sub_197603CF8(v0[13], v20);
              if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
              {
                goto LABEL_28;
              }

              v63 = v11;
              v22 = v0[14];
              v23 = v0[11];
              v24 = *(v57 + 8);
              v25 = *(v5 + 48);
              v26 = *(v5 + 64);
              v27 = v5;
              v29 = *&v22[v26];
              v28 = *&v22[v26 + 8];
              v30 = &v23[v26];
              *v23 = *v22;
              *(v56 + 8) = v24;
              v31 = sub_197615D10();
              v32 = *(v31 - 8);
              v62 = v31;
              (*(v32 + 32))(&v23[v25], &v22[v25]);
              *v30 = v29;
              *(v30 + 1) = v28;
              Strong = swift_weakLoadStrong();
              v34 = v0[11];
              if (Strong)
              {
                v35 = v0[10];
                v61 = v0[5];
                sub_19755F9A0(v34, v35, &qword_1EAF34A58, &qword_19761B680);
                v5 = v27;
                v36 = *(v27 + 48);
                sub_1976004AC(*v35, *(v55 + 8), v35 + v36, *(v35 + *(v27 + 64)), *(v35 + *(v27 + 64) + 8), v61, v64, v37, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
                sub_19755C7C8(v0[11], &qword_1EAF34A58, &qword_19761B680);

                (*(v32 + 8))(v35 + v36, v62);
              }

              else
              {
                sub_19755C7C8(v34, &qword_1EAF34A58, &qword_19761B680);
                v5 = v27;
              }

              v9 = v60;
              v11 = v63 + 1;
              v7 = v58;
              if (!v60)
              {
                goto LABEL_20;
              }
            }

            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

LABEL_20:
          v39 = *(v7 + 16);
          if (v54 == v39)
          {
            break;
          }

          if (v54 >= v39)
          {
            goto LABEL_37;
          }

          v10 = v54 + 1;
          v40 = *(v51 + 8 * v54);

          v9 = v40;
        }

        __swift_storeEnumTagSinglePayload(v0[13], 1, 1, v0[8]);
LABEL_24:
        sub_19755C7C8(v0[13], &qword_1EAF35608, &qword_1976224D0);
      }

      if (v53 == v52)
      {
        break;
      }

      v8 = v53 + 1;
      v41 = *(v50 + 8 * v53);

      OUTLINED_FUNCTION_132();
      sub_197603CB8(v42);
      v7 = v41;
    }

    __swift_storeEnumTagSinglePayload(v0[14], 1, 1, v0[8]);
LABEL_28:
    OUTLINED_FUNCTION_132();
    sub_197603CB8(v43);
    if (v64[0])
    {
      if (qword_1ED816C98 != -1)
      {
LABEL_38:
        OUTLINED_FUNCTION_3_2();
        swift_once();
      }

      v44 = type metadata accessor for logger(0);
      __swift_project_value_buffer(v44, qword_1ED816CA0);
      OUTLINED_FUNCTION_13_12();
      sub_197558864(0xD00000000000002FLL, v45, v46);
      if (sub_197615C20())
      {
        sub_197615C70();
      }
    }
  }

  OUTLINED_FUNCTION_3();

  return v47();
}

void sub_1976004AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20();
  v131 = v22;
  v138 = v23;
  v134 = v24;
  v135 = v25;
  v27 = v26;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35598, &qword_197622088);
  OUTLINED_FUNCTION_0();
  v116 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_10_22();
  v115 = v30;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_68_0();
  v121 = v32;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355B0, &qword_1976222D0);
  OUTLINED_FUNCTION_0();
  v129 = v33;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_10_22();
  v106 = v35;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_68_0();
  v109 = v37;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355C8, &unk_197622380);
  OUTLINED_FUNCTION_0();
  v108 = v38;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_10_22();
  v107 = v40;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_68_0();
  v113 = v42;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355D8, &qword_1976223B0);
  OUTLINED_FUNCTION_0();
  v112 = v43;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_10_22();
  v111 = v45;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_68_0();
  v119 = v47;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355F0, &qword_197622448);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_10_22();
  v118 = v49;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_68_0();
  v125 = v51;
  OUTLINED_FUNCTION_117();
  v52 = sub_197615D10();
  OUTLINED_FUNCTION_0();
  v54 = v53;
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_10_22();
  v124 = v56;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_115();
  v127 = v58;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_68_0();
  v130 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A58, &qword_19761B680);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_5();
  v65 = v63 - v64;
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_52_0();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_29_10();
  *v20 = v131;
  *(v20 + 1) = v27;
  v128 = *(v68 + 48);
  v132 = *(v54 + 16);
  v132(&v20[v128], v134, v52);
  v69 = &v20[*(v61 + 64)];
  *v69 = v135;
  *(v69 + 1) = v138;
  v133 = v20;
  sub_19755F9A0(v20, v21, &qword_1EAF34A58, &qword_19761B680);
  v71 = *v21;
  v70 = v21[1];
  v72 = *(v61 + 48);

  if (v70)
  {
    v123 = v54;
    v73 = *(v54 + 8);
    v73(v21 + v72, v52);
    if (qword_1ED8172A8 != -1)
    {
      OUTLINED_FUNCTION_4_39(&qword_1ED8172A8);
    }

    v74 = type metadata accessor for logger(0);
    v117 = __swift_project_value_buffer(v74, qword_1ED8172B0);
    OUTLINED_FUNCTION_54();
    sub_197616A20();
    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_13_12();
    MEMORY[0x19A8E2A50](0xD00000000000001ALL);
    v75 = v133;
    sub_19755F9A0(v133, v65, &qword_1EAF34A58, &qword_19761B680);

    v76 = *(v61 + 48);

    v77 = sub_1975F766C();
    v79 = v78;
    v73((v65 + v76), v52);
    MEMORY[0x19A8E2A50](v77, v79);

    MEMORY[0x19A8E2A50](0x3A726F6874756128, 0xE900000000000020);
    MEMORY[0x19A8E2A50](v71, v70);

    MEMORY[0x19A8E2A50](0x7365636F7270202CLL, 0xEB00000000203A73);
    MEMORY[0x19A8E2A50](v135, v138);
    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
    sub_197558864(v136, v137, v80);

    v81 = v123;
    v82 = v130;
    v83 = v73;
  }

  else
  {
    v83 = *(v54 + 8);
    v83(v21 + v72, v52);
    v81 = v54;
    v82 = v130;
    v75 = v133;
  }

  v132(v82, v75 + v128, v52);
  v84 = OUTLINED_FUNCTION_75_0();
  v86 = v85(v84);
  if (v86 == *MEMORY[0x1E697BB98])
  {
    v87 = v127;
    v132(v127, v82, v52);
    v88 = OUTLINED_FUNCTION_42_3();
    v89(v88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35600, &qword_1976224B8);
    v91 = v125;
    v90 = v126;
    OUTLINED_FUNCTION_109();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_102();
      v92 = v118;
      v93(v118);
      OUTLINED_FUNCTION_63_0();
      sub_197600EFC();
    }

    else
    {
      v91 = v119;
      OUTLINED_FUNCTION_109();
      v90 = v120;
      if (!swift_dynamicCast())
      {
        OUTLINED_FUNCTION_129();
        if (swift_dynamicCast())
        {
          (*(v108 + 32))(v107, v113, v114);
          OUTLINED_FUNCTION_63_0();
          sub_19760203C();
          (*(v108 + 8))(v107, v114);
        }

        else
        {
          OUTLINED_FUNCTION_109();
          if (swift_dynamicCast())
          {
            (*(v129 + 32))(v106, v109, v110);
            OUTLINED_FUNCTION_63_0();
            sub_1976028DC();
            v94 = v133;
            (*(v129 + 8))(v106, v110);
            goto LABEL_18;
          }
        }

LABEL_16:
        v94 = v133;
LABEL_18:
        __swift_destroy_boxed_opaque_existential_0Tm(v87);
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_102();
      v92 = v111;
      v96(v111);
      OUTLINED_FUNCTION_63_0();
      sub_1976017B0(v97, v98, v99, v100, v101, v102, v103, v104, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117);
    }

    (*(v91 + 8))(v92, v90);
    goto LABEL_16;
  }

  v94 = v75;
  if (v86 == *MEMORY[0x1E697BBA0])
  {
    v132(v124, v82, v52);
    (*(v81 + 96))(v124, v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355F8, &qword_1976224B0);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_102();
      v95(v115);
      sub_1976031C4(v115);
      (*(v121 + 8))(v115, v122);
    }

    v87 = v124;
    goto LABEL_18;
  }

LABEL_19:
  v105 = OUTLINED_FUNCTION_75_0();
  (v83)(v105);
  sub_19755C7C8(v94, &qword_1EAF34A58, &qword_19761B680);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_19_0();
}

void sub_197600EFC()
{
  OUTLINED_FUNCTION_20();
  v111 = v0;
  v112 = v3;
  v109 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346E0, &qword_1976220A0);
  OUTLINED_FUNCTION_0();
  v106 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_3();
  v103 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34748, &qword_197622440);
  OUTLINED_FUNCTION_0();
  v104 = v10;
  v105 = v9;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_3();
  v107 = v12;
  OUTLINED_FUNCTION_117();
  v13 = sub_197615F50();
  OUTLINED_FUNCTION_0();
  v101 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_0();
  v99 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D8, &unk_197619120);
  OUTLINED_FUNCTION_5_2(v18);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_30_0();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  v21 = OUTLINED_FUNCTION_5_2(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_10_22();
  v100 = v22;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_115();
  v108 = v24;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_29_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355F0, &qword_197622448);
  sub_197615F30();
  v26 = OUTLINED_FUNCTION_34_6();
  v102 = v13;
  v27 = v13;
  v28 = v112;
  __swift_storeEnumTagSinglePayload(v26, v29, v30, v27);
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_9_15();
  sub_19757EEC4();
  v32 = v31;
  v33 = sub_19755C7C8(v1, &qword_1EAF34AB8, &qword_197622080);
  if (v32)
  {
    CoreTipRecord.id.getter(v33, v34, v35, v36, v37, v38, v39, v40, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104);
    v41 = OUTLINED_FUNCTION_124();
    v110 = &v95;
    MEMORY[0x1EEE9AC00](v41);
    v42 = OUTLINED_FUNCTION_51_0();
    v43 = type metadata accessor for CoreTipRecord(v42);
    OUTLINED_FUNCTION_130(v43);
    OUTLINED_FUNCTION_5_8();
    sub_197615AE0();
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v5);
    v47 = v111;
    sub_1975BEBD4();
    if (v47)
    {
      sub_19755C7C8(v2, &qword_1EAF346D8, &unk_197619120);
LABEL_9:

      goto LABEL_10;
    }

    v51 = v48;
    v52 = v28;
    v111 = v1;
    sub_19755C7C8(v2, &qword_1EAF346D8, &unk_197619120);
    if (v51 < 2)
    {
      goto LABEL_9;
    }

    v58 = v108;
    v59 = v111;
    sub_1975E76FC(v111, &qword_197622080, v52, v53, v54, v55, v56, v57, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106);
    type metadata accessor for CoreTip(0);
    OUTLINED_FUNCTION_114();

    v98 = v32;
    v60 = static CoreTip.modelIdentifiers.getter();
    v61 = v102;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v58, 1, v102);
    v96 = v51;
    v97 = v5;
    if (EnumTagSinglePayload == 1)
    {
      sub_19755C7C8(v58, &qword_1EAF34AB8, &qword_197622080);
      v63 = sub_19755C610(v59, &qword_197622080);
      if (v64)
      {
        v65 = v63;
        swift_isUniquelyReferenced_nonNull_native();
        v114 = v60;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35580, &qword_197621F78);
        v59 = v111;
        sub_197616BF0();
        v60 = v114;

        v66 = v100;
        (*(v101 + 32))(v100, *(v60 + 56) + *(v101 + 72) * v65, v61);
        OUTLINED_FUNCTION_29_5();
        sub_197616C10();
        v67 = 0;
        v68 = v103;
        v69 = v104;
      }

      else
      {
        v67 = 1;
        v68 = v103;
        v69 = v104;
        v66 = v100;
      }

      __swift_storeEnumTagSinglePayload(v66, v67, 1, v61);

      sub_19755C7C8(v66, &qword_1EAF34AB8, &qword_197622080);
    }

    else
    {
      v70 = v99;
      (*(v101 + 32))(v99, v58, v61);
      swift_isUniquelyReferenced_nonNull_native();
      v114 = v60;
      sub_19757B964(v70, v59, &qword_197622080);

      v60 = v114;
      v68 = v103;
      v69 = v104;
    }

    static CoreTip.modelIdentifiers.setter(v60);
    swift_getKeyPath();
    OUTLINED_FUNCTION_7_21();
    sub_19755FF88(v71, 255, v72, MEMORY[0x1E6969548]);
    v73 = v107;
    OUTLINED_FUNCTION_31_0();
    v74 = sub_197615640();
    v108 = &v95;
    MEMORY[0x1EEE9AC00](v74);
    OUTLINED_FUNCTION_2_0();
    *(v75 - 16) = v59;
    *(v75 - 8) = &qword_197622080;
    OUTLINED_FUNCTION_5_8();
    sub_197615AE0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34740, &unk_197619390);
    OUTLINED_FUNCTION_99();
    v76 = v68;
    v77 = OUTLINED_FUNCTION_120();
    v78 = OUTLINED_FUNCTION_97(v77, xmmword_197618C10) + v68;
    v79 = v105;
    v80(v78, v73, v105);
    OUTLINED_FUNCTION_18_9();
    sub_1975FCD58(v81, v82, v83, v84, v85, v86, v87, v76, v95, v96);

    v88 = OUTLINED_FUNCTION_139();
    v89(v88);
    (*(v69 + 8))(v107, v79);
    v90 = static CoreTip.tips.getter();
    v91 = sub_197580F6C(v59, &qword_197622080, v90);

    if (v91)
    {
      sub_1975DC1F8();
    }

    if (qword_1ED816C98 != -1)
    {
      OUTLINED_FUNCTION_3_2();
      swift_once();
    }

    v92 = type metadata accessor for logger(0);
    __swift_project_value_buffer(v92, qword_1ED816CA0);
    OUTLINED_FUNCTION_54();
    sub_197616A20();
    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_111();
    v113 = v96 - 1;
    v93 = sub_197616E80();
    MEMORY[0x19A8E2A50](v93);

    MEMORY[0x19A8E2A50](0x3A64692870695420, 0xE900000000000020);
    MEMORY[0x19A8E2A50](v111, &qword_197622080);

    MEMORY[0x19A8E2A50](v76 + 9, 0x8000000197626480);
    sub_197558864(v114, v115, v94);

    OUTLINED_FUNCTION_65_0();
  }

  else
  {
    if (qword_1ED8172A8 != -1)
    {
      OUTLINED_FUNCTION_4_39(&qword_1ED8172A8);
    }

    v49 = type metadata accessor for logger(0);
    __swift_project_value_buffer(v49, qword_1ED8172B0);
    OUTLINED_FUNCTION_54();
    sub_197616A20();
    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_142();
    sub_197616BC0();
    sub_197558864(v114, v115, v50);
  }

LABEL_10:
  OUTLINED_FUNCTION_19_0();
}

void sub_1976017B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20();
  v126 = v20;
  v127 = v22;
  v124 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D28, &qword_19761C7E0);
  OUTLINED_FUNCTION_0();
  v122 = v25;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_3();
  v119 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D38, &unk_1976223A0);
  OUTLINED_FUNCTION_0();
  v120 = v29;
  v121 = v28;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_3();
  v118 = v31;
  OUTLINED_FUNCTION_117();
  v32 = sub_197615F50();
  OUTLINED_FUNCTION_0();
  v116 = v33;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_6_0();
  v114 = v36 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BA0, &qword_19761BAC0);
  OUTLINED_FUNCTION_5_2(v37);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  v40 = v111 - v39;
  v41 = OUTLINED_FUNCTION_81();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(v41, v42);
  v44 = OUTLINED_FUNCTION_5_2(v43);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_10_22();
  v115 = v45;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_115();
  v123 = v47;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_29_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355D8, &qword_1976223B0);
  sub_197615F30();
  v49 = OUTLINED_FUNCTION_34_6();
  v117 = v32;
  v50 = v32;
  v51 = v127;
  __swift_storeEnumTagSinglePayload(v49, v52, v53, v50);
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_9_15();
  sub_19758DC14();
  v55 = v54;
  v56 = OUTLINED_FUNCTION_66();
  sub_19755C7C8(v56, v57, &qword_197622080);
  if (v55)
  {
    CoreParameterRecord.id.getter();
    v58 = OUTLINED_FUNCTION_124();
    v125 = v111;
    MEMORY[0x1EEE9AC00](v58);
    v59 = OUTLINED_FUNCTION_51_0();
    v60 = type metadata accessor for CoreParameterRecord(v59);
    OUTLINED_FUNCTION_130(v60);
    OUTLINED_FUNCTION_5_8();
    sub_197615AE0();
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v24);
    v64 = v126;
    sub_1975BED34();
    if (v64)
    {
      sub_19755C7C8(v40, &qword_1EAF34BA0, &qword_19761BAC0);
LABEL_9:

      goto LABEL_10;
    }

    v68 = v65;
    v126 = v21;
    sub_19755C7C8(v40, &qword_1EAF34BA0, &qword_19761BAC0);
    if (v68 < 2)
    {
      goto LABEL_9;
    }

    v113 = v68;
    v69 = v123;
    v70 = v126;
    v71 = OUTLINED_FUNCTION_81();
    sub_1975C8F20(v71, v72, v51, v73);
    type metadata accessor for CoreParameter();
    OUTLINED_FUNCTION_114();

    v111[1] = v55;
    v74 = static CoreParameter.modelIdentifiers.getter();
    v75 = v117;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v69, 1, v117);
    v112 = v24;
    if (EnumTagSinglePayload == 1)
    {
      sub_19755C7C8(v69, &qword_1EAF34AB8, &qword_197622080);
      v77 = OUTLINED_FUNCTION_81();
      sub_19755C610(v77, v78);
      v79 = v118;
      if (v80)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v129 = v74;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35580, &qword_197621F78);
        sub_197616BF0();
        v74 = v129;
        OUTLINED_FUNCTION_123();
        v81 = v115;
        v82 = OUTLINED_FUNCTION_64();
        v83(v82);
        OUTLINED_FUNCTION_21();
        sub_197616C10();
        v84 = 0;
        v85 = v119;
      }

      else
      {
        v84 = 1;
        v85 = v119;
        v81 = v115;
      }

      __swift_storeEnumTagSinglePayload(v81, v84, 1, v75);

      sub_19755C7C8(v81, &qword_1EAF34AB8, &qword_197622080);
      v87 = v126;
    }

    else
    {
      v86 = v114;
      (*(v116 + 32))(v114, v69, v75);
      swift_isUniquelyReferenced_nonNull_native();
      v129 = v74;
      sub_19757B964(v86, v70, &qword_197622080);

      v74 = v129;
      v85 = v119;
      v79 = v118;
      v87 = v70;
    }

    static CoreParameter.modelIdentifiers.setter(v74);
    swift_getKeyPath();
    OUTLINED_FUNCTION_7_21();
    sub_19755FF88(v88, 255, v89, MEMORY[0x1E6969548]);
    OUTLINED_FUNCTION_31_0();
    v90 = sub_197615640();
    MEMORY[0x1EEE9AC00](v90);
    OUTLINED_FUNCTION_2_0();
    *(v91 - 16) = v87;
    *(v91 - 8) = &qword_197622080;
    sub_197615AE0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D30, &unk_1976223E0);
    OUTLINED_FUNCTION_99();
    v92 = v85;
    v93 = OUTLINED_FUNCTION_120();
    v94 = OUTLINED_FUNCTION_97(v93, xmmword_197618C10) + v85;
    v95 = v121;
    v96(v94, v79, v121);
    OUTLINED_FUNCTION_18_9();
    sub_1975FDCC4(v97, v98, v99, v100, v101, v102, v103, v92);

    v104 = OUTLINED_FUNCTION_95();
    v105(v104, v112);
    v106 = OUTLINED_FUNCTION_137();
    v107(v106, v95);
    if (qword_1ED816C98 != -1)
    {
      OUTLINED_FUNCTION_3_2();
      swift_once();
    }

    v108 = type metadata accessor for logger(0);
    __swift_project_value_buffer(v108, qword_1ED816CA0);
    OUTLINED_FUNCTION_54();
    sub_197616A20();
    OUTLINED_FUNCTION_116();
    MEMORY[0x19A8E2A50](0xD000000000000019, 0x8000000197626460);
    v128 = v113 - 1;
    v109 = sub_197616E80();
    MEMORY[0x19A8E2A50](v109);

    MEMORY[0x19A8E2A50](0x74656D6172615020, 0xEF203A6469287265);
    MEMORY[0x19A8E2A50](v126, &qword_197622080);

    MEMORY[0x19A8E2A50](0xD000000000000022, 0x8000000197626480);
    sub_197558864(v129, v130, v110);

    OUTLINED_FUNCTION_65_0();
  }

  else
  {
    if (qword_1ED8172A8 != -1)
    {
      OUTLINED_FUNCTION_4_39(&qword_1ED8172A8);
    }

    v66 = type metadata accessor for logger(0);
    __swift_project_value_buffer(v66, qword_1ED8172B0);
    OUTLINED_FUNCTION_54();
    sub_197616A20();
    OUTLINED_FUNCTION_116();
    MEMORY[0x19A8E2A50](0xD000000000000043, 0x80000001976264B0);
    sub_197616BC0();
    sub_197558864(v129, v130, v67);
  }

LABEL_10:
  OUTLINED_FUNCTION_19_0();
}

void sub_19760203C()
{
  OUTLINED_FUNCTION_20();
  v120 = v0;
  v121 = v2;
  v118 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD0, &qword_19761B6F8);
  OUTLINED_FUNCTION_0();
  v110 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_3();
  v114 = v7;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD8, &unk_1976222C0);
  OUTLINED_FUNCTION_0();
  v115 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_3();
  v108 = v10;
  OUTLINED_FUNCTION_117();
  v11 = sub_197615F50();
  OUTLINED_FUNCTION_0();
  v113 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6_0();
  v111 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC0, &qword_19761B6F0);
  OUTLINED_FUNCTION_5_2(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v105 - v18;
  v20 = OUTLINED_FUNCTION_81();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
  v23 = OUTLINED_FUNCTION_5_2(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_10_22();
  v112 = v24;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_115();
  v117 = v26;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_29_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355C8, &unk_197622380);
  sub_197615F30();
  v28 = OUTLINED_FUNCTION_34_6();
  v116 = v11;
  v29 = v11;
  v30 = v121;
  __swift_storeEnumTagSinglePayload(v28, v31, v32, v29);
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_9_15();
  sub_197594F68();
  v34 = v33;
  v35 = OUTLINED_FUNCTION_66();
  sub_19755C7C8(v35, v36, &qword_197622080);
  if (v34)
  {
    CoreEventRecord.id.getter();
    v37 = OUTLINED_FUNCTION_124();
    v119 = &v105;
    MEMORY[0x1EEE9AC00](v37);
    v38 = OUTLINED_FUNCTION_51_0();
    v39 = type metadata accessor for CoreEventRecord(v38);
    OUTLINED_FUNCTION_130(v39);
    OUTLINED_FUNCTION_5_8();
    sub_197615AE0();
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v4);
    v43 = v120;
    sub_1975BEA74();
    if (v43)
    {
      sub_19755C7C8(v19, &qword_1EAF34AC0, &qword_19761B6F0);
LABEL_11:

      goto LABEL_12;
    }

    v49 = v44;
    v50 = v4;
    v51 = v30;
    v120 = v1;
    sub_19755C7C8(v19, &qword_1EAF34AC0, &qword_19761B6F0);
    if (v49 < 2)
    {
      goto LABEL_11;
    }

    v107 = v49;
    v52 = v117;
    v53 = v120;
    v54 = OUTLINED_FUNCTION_81();
    sub_1975C6974(v54, v55, v51, v56, v57, v58, v59, v60, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
    type metadata accessor for CoreEvent();
    OUTLINED_FUNCTION_114();

    v106 = v34;
    v61 = static CoreEvent.modelIdentifiers.getter();
    if (__swift_getEnumTagSinglePayload(v52, 1, v116) == 1)
    {
      sub_19755C7C8(v52, &qword_1EAF34AB8, &qword_197622080);
      v62 = OUTLINED_FUNCTION_81();
      sub_19755C610(v62, v63);
      if (v64)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v123 = v61;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35580, &qword_197621F78);
        sub_197616BF0();
        v61 = v123;
        OUTLINED_FUNCTION_123();
        v65 = v112;
        v66 = OUTLINED_FUNCTION_64();
        v67 = v116;
        v68(v66);
        OUTLINED_FUNCTION_21();
        sub_197616C10();
        v69 = 0;
        v70 = v114;
      }

      else
      {
        v69 = 1;
        v70 = v114;
        v67 = v116;
        v65 = v112;
      }

      __swift_storeEnumTagSinglePayload(v65, v69, 1, v67);

      sub_19755C7C8(v65, &qword_1EAF34AB8, &qword_197622080);
      v53 = v120;
      v75 = v70;
    }

    else
    {
      v71 = OUTLINED_FUNCTION_133();
      v72(v71);
      swift_isUniquelyReferenced_nonNull_native();
      v123 = v61;
      v73 = OUTLINED_FUNCTION_66();
      sub_19757B964(v73, v74, &qword_197622080);

      v61 = v123;
      v75 = v114;
    }

    static CoreEvent.modelIdentifiers.setter(v61);
    type metadata accessor for CoreDonationRecord(0);
    v76 = OUTLINED_FUNCTION_81();
    sub_1975C1120(v76, v77, v51);
    swift_getKeyPath();
    OUTLINED_FUNCTION_7_21();
    sub_19755FF88(v78, 255, v79, MEMORY[0x1E6969548]);
    v80 = v108;
    OUTLINED_FUNCTION_31_0();
    v81 = sub_197615640();
    MEMORY[0x1EEE9AC00](v81);
    OUTLINED_FUNCTION_2_0();
    *(v82 - 16) = v53;
    *(v82 - 8) = &qword_197622080;
    OUTLINED_FUNCTION_5_8();
    sub_197615AE0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AE0, &unk_197622300);
    OUTLINED_FUNCTION_99();
    v83 = v75;
    v86 = v85 & ~v84;
    v87 = swift_allocObject();
    v88 = OUTLINED_FUNCTION_97(v87, xmmword_197618C10) + v86;
    v89 = v109;
    v90(v88, v80, v109);
    OUTLINED_FUNCTION_18_9();
    sub_1975FE368(v91, v92, v93, v94, v95, v96, v97, v83);

    v98 = OUTLINED_FUNCTION_95();
    v99(v98, v50);
    v100 = OUTLINED_FUNCTION_137();
    v101(v100, v89);
    if (qword_1ED816C98 != -1)
    {
      OUTLINED_FUNCTION_3_2();
      swift_once();
    }

    v102 = type metadata accessor for logger(0);
    __swift_project_value_buffer(v102, qword_1ED816CA0);
    v123 = 0;
    v124 = 0xE000000000000000;
    sub_197616A20();
    OUTLINED_FUNCTION_136();
    OUTLINED_FUNCTION_111();
    v122 = v107 - 1;
    v103 = sub_197616E80();
    MEMORY[0x19A8E2A50](v103);

    MEMORY[0x19A8E2A50](0x6928746E65764520, 0xEB00000000203A64);
    MEMORY[0x19A8E2A50](v120, &qword_197622080);

    MEMORY[0x19A8E2A50](v89 + 9, 0x8000000197626480);
    sub_197558864(v123, v124, v104);

    *v118 = 1;
  }

  else
  {
    if (qword_1ED8172A8 != -1)
    {
      OUTLINED_FUNCTION_4_39(&qword_1ED8172A8);
    }

    v45 = type metadata accessor for logger(0);
    __swift_project_value_buffer(v45, qword_1ED8172B0);
    OUTLINED_FUNCTION_62_0();
    sub_197616A20();
    OUTLINED_FUNCTION_136();
    OUTLINED_FUNCTION_142();
    v46 = sub_197616BC0();
    OUTLINED_FUNCTION_126(v46, v47, v48);
  }

LABEL_12:
  OUTLINED_FUNCTION_19_0();
}

void sub_1976028DC()
{
  OUTLINED_FUNCTION_20();
  v117 = v0;
  v114 = v2;
  v4 = v3;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD0, &qword_19761B6F8);
  OUTLINED_FUNCTION_0();
  v107 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_3();
  v104 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD8, &unk_1976222C0);
  OUTLINED_FUNCTION_0();
  v105 = v9;
  v106 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_3();
  v112 = v11;
  OUTLINED_FUNCTION_117();
  v12 = sub_197615F50();
  OUTLINED_FUNCTION_0();
  v110 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6_0();
  v108 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC0, &qword_19761B6F0);
  OUTLINED_FUNCTION_5_2(v17);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v100 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  v22 = OUTLINED_FUNCTION_5_2(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_10_22();
  v109 = v23;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_115();
  v113 = v25;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_29_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355B0, &qword_1976222D0);
  sub_197615F30();
  v27 = OUTLINED_FUNCTION_34_6();
  v111 = v12;
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v12);
  v116 = v4;
  OUTLINED_FUNCTION_9_15();
  v37 = sub_1975FEEE0(v30, v31, v32, v33, v34, v35, v36);
  sub_19755C7C8(v1, &qword_1EAF34AB8, &qword_197622080);
  if (v37)
  {
    if (CoreDonationRecord.event.getter())
    {
      v102 = v37;
      v38 = CoreEventRecord.id.getter();
      v40 = v39;

      v103 = &v100;
      MEMORY[0x1EEE9AC00](v41);
      *(&v100 - 2) = v38;
      *(&v100 - 1) = v40;
      v42 = type metadata accessor for CoreEventRecord(0);
      OUTLINED_FUNCTION_130(v42);
      OUTLINED_FUNCTION_5_8();
      sub_197615AE0();
      OUTLINED_FUNCTION_3_10();
      v43 = v115;
      __swift_storeEnumTagSinglePayload(v44, v45, v46, v115);
      v48 = v116;
      v47 = v117;
      sub_1975BEA74();
      if (v47)
      {
        sub_19755C7C8(v20, &qword_1EAF34AC0, &qword_19761B6F0);
      }

      else
      {
        v54 = v49;
        v101 = v40;
        sub_19755C7C8(v20, &qword_1EAF34AC0, &qword_19761B6F0);
        if (v54 < 2)
        {
        }

        else
        {
          v60 = v113;
          v61 = v38;
          v62 = v101;
          sub_1975C6974(v38, v101, v48, v55, v56, v57, v58, v59, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
          v63 = type metadata accessor for CoreEvent();

          v64 = v63;
          static CoreEvent.modelIdentifiers.getter();
          v65 = OUTLINED_FUNCTION_114();
          v66 = v111;
          if (__swift_getEnumTagSinglePayload(v65, 1, v111) == 1)
          {
            sub_19755C7C8(v60, &qword_1EAF34AB8, &qword_197622080);
            v67 = OUTLINED_FUNCTION_66();
            sub_19755C610(v67, v68);
            if (v69)
            {
              swift_isUniquelyReferenced_nonNull_native();
              v118 = v63;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35580, &qword_197621F78);
              sub_197616BF0();
              v64 = v118;
              OUTLINED_FUNCTION_123();
              v70 = v109;
              v71 = OUTLINED_FUNCTION_64();
              v72(v71);
              OUTLINED_FUNCTION_21();
              sub_197616C10();
              v73 = 0;
            }

            else
            {
              v73 = 1;
              v70 = v109;
            }

            __swift_storeEnumTagSinglePayload(v70, v73, 1, v66);
            v62 = v101;

            sub_19755C7C8(v70, &qword_1EAF34AB8, &qword_197622080);
          }

          else
          {
            v74 = v108;
            (*(v110 + 32))(v108, v60, v66);
            swift_isUniquelyReferenced_nonNull_native();
            v118 = v63;
            sub_19757B964(v74, v61, v62);

            v64 = v118;
          }

          static CoreEvent.modelIdentifiers.setter(v64);
          type metadata accessor for CoreDonationRecord(0);
          v75 = OUTLINED_FUNCTION_66();
          sub_1975C1120(v75, v76, v116);
          v77 = v112;
          swift_getKeyPath();
          OUTLINED_FUNCTION_7_21();
          sub_19755FF88(v78, 255, v79, MEMORY[0x1E6969548]);
          OUTLINED_FUNCTION_31_0();
          v80 = sub_197615640();
          v117 = &v100;
          MEMORY[0x1EEE9AC00](v80);
          OUTLINED_FUNCTION_2_0();
          *(v81 - 16) = v61;
          *(v81 - 8) = v62;
          OUTLINED_FUNCTION_5_8();
          v82 = v104;
          sub_197615AE0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AE0, &unk_197622300);
          v83 = v105;
          v84 = OUTLINED_FUNCTION_120();
          *(v84 + 16) = xmmword_197618C10;
          v85 = v84 + v63;
          v86 = v106;
          (*(v83 + 16))(v85, v77, v106);
          OUTLINED_FUNCTION_18_9();
          sub_1975FE368(v87, v88, v89, v90, v91, v92, v93, v82);

          v94 = OUTLINED_FUNCTION_95();
          v95(v94, v43);
          (*(v83 + 8))(v112, v86);
          if (qword_1ED816C98 != -1)
          {
            OUTLINED_FUNCTION_3_2();
            swift_once();
          }

          v96 = type metadata accessor for logger(0);
          __swift_project_value_buffer(v96, qword_1ED816CA0);
          OUTLINED_FUNCTION_62_0();
          sub_197616A20();
          OUTLINED_FUNCTION_136();
          MEMORY[0x19A8E2A50](0xD000000000000031, 0x8000000197626390);
          MEMORY[0x19A8E2A50](v61, v101);

          OUTLINED_FUNCTION_13_12();
          v97 = MEMORY[0x19A8E2A50](0xD000000000000015);
          OUTLINED_FUNCTION_126(v97, v98, v99);

          *v114 = 1;
        }
      }

      goto LABEL_19;
    }
  }

  if (qword_1ED8172A8 != -1)
  {
    OUTLINED_FUNCTION_4_39(&qword_1ED8172A8);
  }

  v50 = type metadata accessor for logger(0);
  __swift_project_value_buffer(v50, qword_1ED8172B0);
  OUTLINED_FUNCTION_62_0();
  sub_197616A20();
  OUTLINED_FUNCTION_136();
  MEMORY[0x19A8E2A50](0xD00000000000004DLL, 0x8000000197626340);
  v51 = sub_197616BC0();
  OUTLINED_FUNCTION_126(v51, v52, v53);

LABEL_19:
  OUTLINED_FUNCTION_19_0();
}

uint64_t sub_1976031C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  OUTLINED_FUNCTION_5_2(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_69_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35598, &qword_197622088);
  sub_197615F40();
  sub_197615F50();
  v4 = OUTLINED_FUNCTION_38_3();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_9_15();
  sub_19757EEC4();
  v9 = v8;
  v10 = sub_19755C7C8(v1, &qword_1EAF34AB8, &qword_197622080);
  if (v9)
  {
    CoreTipRecord.id.getter(v10, v11, v12, v13, v14, v15, v16, v17, v29, v31, v33, v34, v35, v36, v37, v38, v39, v40);
    v19 = v18;
    v21 = v20;

    type metadata accessor for CoreTip(0);
    v22 = static CoreTip.tips.getter();
    v23 = sub_197580F6C(v19, v21, v22);

    if (!v23)
    {
      return result;
    }

    sub_1975DC1F8();
    if (qword_1ED816C98 != -1)
    {
      OUTLINED_FUNCTION_3_2();
      swift_once();
    }

    v25 = type metadata accessor for logger(0);
    __swift_project_value_buffer(v25, qword_1ED816CA0);
    OUTLINED_FUNCTION_131();
    sub_197616A20();
    OUTLINED_FUNCTION_13_12();
    MEMORY[0x19A8E2A50](0xD000000000000037);
    MEMORY[0x19A8E2A50](*(v23 + 16), *(v23 + 24));
    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
    sub_197558864(v30, v32, v26);
  }

  else
  {
    if (qword_1ED8172A8 != -1)
    {
      OUTLINED_FUNCTION_4_39(&qword_1ED8172A8);
    }

    v27 = type metadata accessor for logger(0);
    __swift_project_value_buffer(v27, qword_1ED8172B0);
    OUTLINED_FUNCTION_131();
    sub_197616A20();
    MEMORY[0x19A8E2A50](0xD00000000000003DLL, 0x80000001976262C0);
    sub_197616BC0();
    sub_197558864(v29, v31, v28);
  }
}

uint64_t sub_197603444()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_19760347C@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355A0, &qword_197622258);
  v5 = *(v4 - 8);
  v19 = v4;
  v20 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B28, &qword_19761B8C8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355B8, &qword_197622370);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v18 - v14;
  sub_197559AAC(&qword_1ED8164B0, &qword_1EAF34B28, &qword_19761B8C8, MEMORY[0x1E6968DA8]);
  sub_197615820();
  v21 = type metadata accessor for CoreDonationRecord(0);
  v22 = sub_19755FF88(&qword_1ED8171B0, 255, type metadata accessor for CoreDonationRecord, &protocol conformance descriptor for CoreDonationRecord);
  swift_getKeyPath();
  sub_197615700();

  (*(v9 + 8))(v11, v8);
  sub_197615F50();
  sub_197615810();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355C0, &qword_197622378);
  a3[4] = sub_197603950();
  __swift_allocate_boxed_opaque_existential_0(a3);
  sub_197559AAC(&qword_1ED815700, &qword_1EAF355B8, &qword_197622370, MEMORY[0x1E6968D58]);
  sub_197559AAC(&qword_1ED816D10, &qword_1EAF355A0, &qword_197622258, MEMORY[0x1E6968D20]);
  sub_19755FF88(&qword_1ED816C88, 255, MEMORY[0x1E697BC90], MEMORY[0x1E697BCA8]);
  v16 = v19;
  sub_1976156F0();
  (*(v20 + 8))(v7, v16);
  return (*(v13 + 8))(v15, v12);
}

unint64_t sub_197603898()
{
  result = qword_1ED816AF0;
  if (!qword_1ED816AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34750, &qword_1976193C8);
    sub_197559AAC(&qword_1ED816CE8, &qword_1EAF34710, &unk_197622260, MEMORY[0x1E6968DA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816AF0);
  }

  return result;
}

unint64_t sub_197603950()
{
  result = qword_1ED815710;
  if (!qword_1ED815710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF355C0, &qword_197622378);
    sub_1976039DC();
    sub_197595A48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815710);
  }

  return result;
}

unint64_t sub_1976039DC()
{
  result = qword_1ED815708;
  if (!qword_1ED815708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF355B8, &qword_197622370);
    sub_197559AAC(&qword_1ED8164B8, &qword_1EAF34B28, &qword_19761B8C8, MEMORY[0x1E6968DA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815708);
  }

  return result;
}

unint64_t sub_197603A94()
{
  result = qword_1ED816008;
  if (!qword_1ED816008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34C08, &qword_19761BD98);
    sub_197559AAC(&qword_1ED8164C8, &qword_1EAF34AF0, &unk_197622320, MEMORY[0x1E6968DA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816008);
  }

  return result;
}

unint64_t sub_197603B4C()
{
  result = qword_1ED8166B0;
  if (!qword_1ED8166B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF355E0, &qword_197622430);
    sub_197559AAC(&qword_1ED8166F0, &qword_1EAF34D70, &unk_1976223F0, MEMORY[0x1E6968DA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8166B0);
  }

  return result;
}

uint64_t sub_197603C04(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_19755CCE8;

  return sub_1975FFE08(a1, a2, v7, v6);
}

uint64_t sub_197603CB8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_197603CF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35608, &qword_1976224D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_74_0()
{

  return sub_197615D90();
}

uint64_t OUTLINED_FUNCTION_77(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 - 72) = a7;
  *(v7 - 136) = a2;
  *(v7 - 128) = a4;
  *(v7 - 104) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_85()
{

  return sub_197615F50();
}

uint64_t OUTLINED_FUNCTION_88(uint64_t a1, uint64_t a2)
{

  return sub_197615D90();
}

void OUTLINED_FUNCTION_111()
{

  JUMPOUT(0x19A8E2A50);
}

void OUTLINED_FUNCTION_116()
{
  v1 = *(v0 - 96);
  *(v0 - 104) = *(v0 - 104);
  *(v0 - 96) = v1;
}

uint64_t OUTLINED_FUNCTION_120()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_121()
{

  return sub_197615C80();
}

uint64_t OUTLINED_FUNCTION_123()
{
}

uint64_t OUTLINED_FUNCTION_124()
{
}

void OUTLINED_FUNCTION_126(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 96);
  v6 = *(v3 - 88);

  sub_197558864(v5, v6, a3);
}

uint64_t OUTLINED_FUNCTION_127()
{
}

void OUTLINED_FUNCTION_136()
{
  v1 = *(v0 - 88);
  *(v0 - 96) = *(v0 - 96);
  *(v0 - 88) = v1;
}

uint64_t OUTLINED_FUNCTION_140()
{
  v2 = *(v0 + 40);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v2);
}

uint64_t OUTLINED_FUNCTION_141@<X0>(char a1@<W8>)
{
  *(v1 - 88) = a1;

  return swift_setAtWritableKeyPath();
}

void OUTLINED_FUNCTION_142()
{

  JUMPOUT(0x19A8E2A50);
}

uint64_t MiniTipsDatastore.performAndWait<A>(_:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(v4 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelContainer);
  if (!v6)
  {
    return __swift_storeEnumTagSinglePayload(a4, 1, 1, a3);
  }

  if (pthread_main_np() == 1 && _CFRunLoopCurrentIsMain())
  {
    v9 = sub_197616590();
    v15[1] = v15;
    MEMORY[0x1EEE9AC00](v9);
    v14[2] = a3;
    v14[3] = v4;
    v14[4] = a1;
    v14[5] = a2;
    v10 = sub_197616860();
    sub_1976045A8(sub_19760473C, v14, "TipKitCore/MiniTipsDatastore+DatastoreQueue.swift", 49, 2u, 19, v10);
  }

  else
  {
    sub_197615CF0();
    v13 = *(v4 + 48);
    v12 = *(v4 + 56);

    sub_19755D67C(v6, 0, v13, v12);
    sub_197607984(a1);
  }
}

uint64_t static DatastoreActor.shared.getter()
{
  if (qword_1ED817448 != -1)
  {
    swift_once();
  }
}

uint64_t DatastoreActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1976043CC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DatastoreActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

uint64_t sub_197604404@<X0>(uint64_t (*a2)(uint64_t)@<X1>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  sub_197616590();
  sub_197616580();
  sub_197616560();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1976044E0(a2, a4, x8_0);
}

uint64_t sub_1976044E0@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!*(v4 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelContainer))
  {
    return __swift_storeEnumTagSinglePayload(a4, 1, 1, a3);
  }

  sub_197615D20();

  if (sub_197615C40())
  {
    sub_197615C50();
  }

  sub_197607984(a1);
}

uint64_t sub_1976045A8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  sub_197616580();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v11 = swift_allocObject();
  v11[2] = a7;
  v11[3] = a1;
  v11[4] = a2;
  sub_1976063EC();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_197616A20();
    MEMORY[0x19A8E2A50](0xD00000000000003FLL, 0x8000000197624F40);
    v14 = sub_197617320();
    MEMORY[0x19A8E2A50](v14);

    MEMORY[0x19A8E2A50](46, 0xE100000000000000);
    result = sub_197616C20();
    __break(1u);
  }

  return result;
}

uint64_t sub_19760475C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_11_21();
}

uint64_t sub_197604778()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_0_45();
  sub_19756F538(v1, 255, v2, &protocol conformance descriptor for MiniTipsDatastore.DatastoreQueue);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_22_12(v3);
  OUTLINED_FUNCTION_20_12(&unk_197622508);
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  *(v0 + 64) = v4;
  *v4 = v5;
  v4[1] = sub_197604868;
  OUTLINED_FUNCTION_16_16();

  return v6();
}

uint64_t sub_197604868()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_1976049A4(uint64_t a1, uint64_t *a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a3;
  v6[3] = a6;
  v9 = swift_task_alloc();
  v6[4] = v9;
  v10 = *a2;
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v6[5] = v11;
  *v11 = v6;
  v11[1] = sub_197604ADC;

  return v13(v9, v10);
}

uint64_t sub_197604ADC()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_19_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_197604BC0()
{
  OUTLINED_FUNCTION_1();
  sub_197604C28(v0[4], v0[2], v0[3]);

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_197604C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 - 8) + 32))(*(*(a2 + 64) + 40), a1);

  return swift_continuation_resume();
}

uint64_t sub_197604CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_197616560();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_197604D34, v6, v8);
}

uint64_t sub_197604D34()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[11];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_197606418;
  v3 = swift_continuation_init();
  v1(v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_197604DD8()
{
  OUTLINED_FUNCTION_8_0();
  if (qword_1ED815ED8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = type metadata accessor for logger(0);
  __swift_project_value_buffer(v2, qword_1ED815EE0);
  sub_197616A20();
  MEMORY[0x19A8E2A50](0xD00000000000001FLL, 0x80000001976266B0);
  swift_getErrorValue();
  sub_197616EB0();
  sub_197558864(0, 0xE000000000000000, v3);

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_197604EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_11_21();
}

uint64_t sub_197604F18()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_0_45();
  sub_19756F538(v1, 255, v2, &protocol conformance descriptor for MiniTipsDatastore.DatastoreQueue);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_22_12(v3);
  OUTLINED_FUNCTION_20_12(&unk_197622528);
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  *(v0 + 64) = v4;
  *v4 = v5;
  v4[1] = sub_197605008;
  OUTLINED_FUNCTION_16_16();

  return v6();
}

uint64_t sub_197605008()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    v7 = *(v3 + 48);

    return MEMORY[0x1EEE6DFA0](sub_19760512C, v7, 0);
  }

  else
  {

    OUTLINED_FUNCTION_3();

    return v8();
  }
}

uint64_t sub_19760512C()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_197605188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C70, &qword_19761BEF8);
  OUTLINED_FUNCTION_0();
  v14 = v13;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v20 - v16;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a1;
  v18[4] = a3;
  v18[5] = a4;
  v22 = v21;
  v23 = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C78, &qword_19761BF10);
  sub_197616600();
  return (*(v14 + 8))(v17, v12);
}

uint64_t sub_19760533C(uint64_t a1, uint64_t *a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a3;
  v6[4] = a6;
  v9 = swift_task_alloc();
  v6[5] = v9;
  v10 = *a2;
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v6[6] = v11;
  *v11 = v6;
  v11[1] = sub_197605474;

  return v13(v9, v10);
}

uint64_t sub_197605474()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    v7 = sub_19760560C;
  }

  else
  {
    v7 = sub_197605574;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_197605574()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C80, &qword_19761BF20);
  sub_1976056AC(v2, v3, v1);

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_19760560C()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[3];
  v2 = v0[4];
  v0[2] = v0[7];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C80, &qword_19761BF20);
  sub_197605724((v0 + 2), v1, v2, v3, MEMORY[0x1E69E7288]);

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_1976056AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 - 8) + 32))(*(*(a2 + 64) + 40), a1);

  return swift_continuation_throwingResume();
}

uint64_t sub_197605724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v7, a1, a4);

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_1976057B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_197616560();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_19760584C, v6, v8);
}

uint64_t sub_19760584C()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[11];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1975C41B0;
  v3 = swift_continuation_init();
  v1(v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_197605910()
{
  OUTLINED_FUNCTION_1();
  *(v1 + 16) = v0;
  OUTLINED_FUNCTION_20_12(&dword_19761BED8);
  v5 = v2;
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_1976059C0;

  return v5();
}

uint64_t sub_1976059C0()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 32) = v0;

  if (v0)
  {
    v9 = sub_197605AD4;
  }

  else
  {
    v9 = sub_1975A9254;
  }

  return MEMORY[0x1EEE6DFA0](v9, v5, 0);
}

uint64_t sub_197605B18()
{
  OUTLINED_FUNCTION_25();
  if (sub_197615C20())
  {
    sub_197615C70();
  }

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t MiniTipsDatastore.DatastoreQueue.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C78, &qword_19761BF10);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  v8 = OBJC_IVAR____TtCC10TipKitCore17MiniTipsDatastore14DatastoreQueue_continuations;
  (*(v4 + 16))(&v13 - v6, v1 + OBJC_IVAR____TtCC10TipKitCore17MiniTipsDatastore14DatastoreQueue_continuations, v2);
  sub_197616610();
  v9 = *(v4 + 8);
  v9(v7, v2);
  v9((v1 + v8), v2);
  v10 = OBJC_IVAR____TtCC10TipKitCore17MiniTipsDatastore14DatastoreQueue_stream;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35610, &qword_197622548);
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t MiniTipsDatastore.DatastoreQueue.__deallocating_deinit()
{
  MiniTipsDatastore.DatastoreQueue.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t dispatch thunk of MiniTipsDatastore.DatastoreQueue.addTask(_:)()
{
  return (*(*v0 + 120))();
}

{
  return (*(*v0 + 136))();
}

uint64_t dispatch thunk of MiniTipsDatastore.DatastoreQueue.addTask<A>(_:)()
{
  OUTLINED_FUNCTION_17_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_14_12(v1);

  return v4(v3);
}

{
  OUTLINED_FUNCTION_17_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_14_12(v1);

  return v4(v3);
}

uint64_t dispatch thunk of MiniTipsDatastore.DatastoreQueue.barrier()()
{
  OUTLINED_FUNCTION_25();
  v4 = (*(*v0 + 152) + **(*v0 + 152));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  OUTLINED_FUNCTION_23_10(v2);

  return v4();
}

uint64_t dispatch thunk of MiniTipsDatastore.DatastoreQueue.saveChanges()()
{
  OUTLINED_FUNCTION_25();
  v4 = (*(*v0 + 160) + **(*v0 + 160));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  OUTLINED_FUNCTION_23_10(v2);

  return v4();
}

uint64_t sub_197606218()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_21_13();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_5_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5_27(v3);

  return sub_1976058F0(v5, v6, v1);
}

uint64_t sub_1976062AC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_13();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_27(v1);
  OUTLINED_FUNCTION_24_11();

  return sub_19760533C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_19760634C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_13();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_27(v1);
  OUTLINED_FUNCTION_24_11();

  return sub_1976049A4(v3, v4, v5, v6, v7, v8);
}

void static MiniTipsDatastore.resetModelManagers()()
{
  type metadata accessor for CoreTip(0);
  sub_1975E1368();
  type metadata accessor for CoreRule();
  sub_19757536C();

  sub_19757AAD8(MEMORY[0x1E69E7CD0]);
  type metadata accessor for CoreParameter();
  sub_1975C7940();
  type metadata accessor for CoreEvent();
  sub_1975C4848();
}

uint64_t static MiniTipsDatastore.datastore(appleBundleID:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = sub_197615880();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_197615970();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  if (qword_1ED817448 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED817450;
  v3[20] = qword_1ED817450;

  return MEMORY[0x1EEE6DFA0](sub_197606604, v6, 0);
}

uint64_t sub_197606604()
{
  if (qword_1ED8174E0 != -1)
  {
    swift_once();
  }

  if (byte_1ED8174EA != 1)
  {
    sub_19759228C();
    swift_allocError();
    *v1 = 0xD000000000000043;
    v1[1] = 0x80000001976266E0;
    swift_willThrow();

    OUTLINED_FUNCTION_4_41();

    __asm { BRAA            X1, X16 }
  }

  static MiniTipsDatastore.activeStores.getter();
  sub_1975A75D0();

  if (*(v0 + 64))
  {
    sub_19755C404(v0 + 56, &qword_1EAF35558, &qword_197621E38);
  }

  else
  {
    sub_197606DF4(v0 + 56, v0 + 72);
    sub_19755C404(v0 + 56, &qword_1EAF35558, &qword_197621E38);
    Strong = swift_weakLoadStrong();
    sub_19755C404(v0 + 72, &qword_1EAF346B0, &qword_1976190C8);
    if (Strong)
    {
      goto LABEL_34;
    }
  }

  if (qword_1ED817510 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_1ED817510);
  }

  swift_beginAccess();
  if (qword_1ED817578)
  {
    v3 = qword_1ED817570;
    v4 = qword_1ED817578;
  }

  else
  {
    if (qword_1ED8174D8 != -1)
    {
      OUTLINED_FUNCTION_4_3(&qword_1ED8174D8);
    }

    if (qword_1ED81D218)
    {
      v3 = qword_1ED81D210;
      v4 = qword_1ED81D218;
    }

    else
    {
      type metadata accessor for CFBundle(0);
      v5 = sub_1975A5740();
      if (v6)
      {
        v3 = v5;
      }

      else
      {
        v3 = 0;
      }

      if (v6)
      {
        v4 = v6;
      }

      else
      {
        v4 = 0xE000000000000000;
      }
    }
  }

  if (v3 == *(v0 + 80) && v4 == *(v0 + 88))
  {
  }

  else
  {
    v8 = sub_197616EF0();

    if ((v8 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  if (qword_1ED817358 != -1)
  {
    OUTLINED_FUNCTION_2_39(&qword_1ED817358);
  }

  if (MiniTipsDatastore.hasConfigured.getter())
  {

LABEL_34:

    OUTLINED_FUNCTION_4_41();

    __asm { BRAA            X2, X16 }
  }

LABEL_37:
  if (qword_1ED8172A8 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 88);
  v12 = *(v0 + 80);
  v13 = type metadata accessor for logger(0);
  __swift_project_value_buffer(v13, qword_1ED8172B0);
  sub_197616A20();
  MEMORY[0x19A8E2A50](0x1000000000000038, 0x8000000197626730);
  MEMORY[0x19A8E2A50](v12, v11);
  sub_197558864(0, 0xE000000000000000, v14);

  swift_allocObject();
  swift_bridgeObjectRetain_n();
  *(v0 + 168) = MiniTipsDatastore.init(id:bundleID:)(v12, v11, v12, v11);
  v15 = [objc_opt_self() defaultManager];
  URL.init(groupIdentifier:fileManager:)(0xD000000000000018, 0x8000000197623C40, v15);
  v18 = *(v0 + 144);
  v19 = *(v0 + 128);
  v20 = *(v0 + 136);
  v22 = *(v0 + 112);
  v21 = *(v0 + 120);
  v23 = *(v0 + 104);
  v24 = *(v0 + 88);
  *(v0 + 40) = *(v0 + 80);
  *(v0 + 48) = v24;
  (*(v22 + 104))(v21, *MEMORY[0x1E6968F58], v23);
  sub_1975607A8();
  sub_197615960();
  (*(v22 + 8))(v21, v23);
  v25 = *(v20 + 8);
  *(v0 + 176) = v25;
  *(v0 + 184) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25(v18, v19);
  v26 = swift_task_alloc();
  *(v0 + 192) = v26;
  *v26 = v0;
  v26[1] = sub_197606BC0;
  OUTLINED_FUNCTION_4_41();

  return MiniTipsDatastore.configure(url:monitorChanges:cloudKitContainer:)();
}

uint64_t sub_197606BC0()
{
  v2 = *v1;
  v3 = *v1;
  v2[25] = v0;

  v4 = v2[22];
  if (v0)
  {
    v5 = v2[20];
    v4(v2[19], v2[16]);

    return MEMORY[0x1EEE6DFA0](sub_197606D6C, v5, 0);
  }

  else
  {
    v4(v2[19], v2[16]);
    v6 = v2[21];

    v7 = v3[1];

    return v7(v6);
  }
}

uint64_t sub_197606D6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_197606DF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346B0, &qword_1976190C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*static MiniTipsDatastore.activeStores.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = static MiniTipsDatastore.activeStores.getter();
  return sub_197606ECC;
}

void sub_197606ECC(uint64_t *a1, char a2)
{
  if (a2)
  {

    static MiniTipsDatastore.activeStores.setter(v2);
  }

  else
  {
    static MiniTipsDatastore.activeStores.setter(*a1);
  }
}

uint64_t _ss6MirrorV10TipKitCoreE5value7subject4pathypSgx_SSdtlFZ_0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a2[2];
  if (v8 != 1)
  {
    if (!v8)
    {
      *(a4 + 24) = a3;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
      v10 = *(*(a3 - 8) + 16);

      return v10(boxed_opaque_existential_0, a1, a3);
    }

    v14 = a2[4];
    v15 = a2[5];

    static Mirror.value<A>(subject:path:)(a1, v14, v15, a3, &v29);

    if (!v30)
    {
      result = sub_19755C404(&v29, &qword_1EAF34340, &unk_19761C8E0);
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }

    sub_19756A94C(&v29, &v31);
    v16 = v32;
    v17 = __swift_project_boxed_opaque_existential_1Tm(&v31, v32);

    v18 = sub_1976124C4(1, a2);
    v20 = v19;
    v22 = v21;
    v24 = v23;
    if (v23)
    {
      sub_197617090();
      swift_unknownObjectRetain_n();
      v27 = swift_dynamicCastClass();
      if (!v27)
      {
        swift_unknownObjectRelease();
        v27 = MEMORY[0x1E69E7CC0];
      }

      v28 = *(v27 + 16);

      if (__OFSUB__(v24 >> 1, v22))
      {
        __break(1u);
      }

      else if (v28 == (v24 >> 1) - v22)
      {
        v26 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v26)
        {
LABEL_20:
          _ss6MirrorV10TipKitCoreE5value7subject4pathypSgx_SSdtlFZ_0(v17, v26, v16, a4);

          return __swift_destroy_boxed_opaque_existential_0Tm(&v31);
        }

        v26 = MEMORY[0x1E69E7CC0];
LABEL_19:
        swift_unknownObjectRelease();
        goto LABEL_20;
      }

      swift_unknownObjectRelease();
    }

    sub_197607524(v18, v20, v22, v24);
    v26 = v25;
    goto LABEL_19;
  }

  v13 = a2[4];
  v12 = a2[5];

  static Mirror.value<A>(subject:path:)(a1, v13, v12, a3, a4);
}

double static Mirror.value<A>(subject:path:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v10 = sub_197617220();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v21 + 1) = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v20);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a1, a4);
  sub_197617200();
  sub_197617210();
  (*(v11 + 8))(v13, v10);
  sub_197616BB0();
  while (1)
  {
    sub_197616D00();
    if (!*(&v22 + 1))
    {

      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      goto LABEL_13;
    }

    v17 = v20;
    v18 = v21;
    v19 = v22;
    if (*(&v20 + 1))
    {
      v15 = v17 == a2 && *(&v20 + 1) == a3;
      if (v15 || (sub_197616EF0() & 1) != 0)
      {
        break;
      }
    }

    sub_19755C404(&v17, &qword_1EAF35658, &qword_197622760);
  }

  v24 = v18;
  v25 = v19;
  v23 = v17;
  if (*(&v19 + 1))
  {

    sub_19756A94C(&v24, a5);
    return result;
  }

LABEL_13:
  sub_19755C404(&v23, &qword_1EAF35650, &qword_197622758);
  result = 0.0;
  *a5 = 0u;
  a5[1] = 0u;
  return result;
}

uint64_t static Mirror.typeName<A>(subject:path:)(uint64_t a1, void *a2, uint64_t a3)
{
  _ss6MirrorV10TipKitCoreE5value7subject4pathypSgx_SSdtlFZ_0(a1, a2, a3, &v8);
  if (v9)
  {
    sub_19756A94C(&v8, &v10);
    v3 = __swift_project_boxed_opaque_existential_1Tm(&v10, v11);
    MEMORY[0x1EEE9AC00](v3);
    (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v6 = sub_197616220();
    __swift_destroy_boxed_opaque_existential_0Tm(&v10);
  }

  else
  {
    sub_19755C404(&v8, &qword_1EAF34340, &unk_19761C8E0);
    return 0;
  }

  return v6;
}

void sub_197607524(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A38, &qword_19761B660);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1976075F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
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

uint64_t sub_1976076A8(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35608, &qword_1976224D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A58, &qword_19761B680);
  v30 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v29 = &v27 - v13;
  v14 = 0;
  v15 = *(a3 + 16);
  v31 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v15 == v14)
    {
      return v31;
    }

    v16 = *(sub_197615D10() - 8);
    a1(a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v14);
    if (v3)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_1976079FC(v8);
      ++v14;
    }

    else
    {
      v28 = v12;
      v17 = v29;
      sub_1975EBE20(v8, v29);
      sub_1975EBE20(v17, v28);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1975BBF88(0, *(v31 + 16) + 1, 1, v31);
        v31 = v23;
      }

      v19 = *(v31 + 16);
      v18 = *(v31 + 24);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v27 = v19 + 1;
        sub_1975BBF88(v18 > 1, v19 + 1, 1, v31);
        v20 = v27;
        v31 = v24;
      }

      ++v14;
      v21 = v31;
      *(v31 + 16) = v20;
      v22 = v21 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v19;
      v12 = v28;
      sub_1975EBE20(v28, v22);
    }
  }

  v25 = v31;

  return v25;
}

uint64_t sub_1976079F0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1976079FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35608, &qword_1976224D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_197607A64()
{
  result = qword_1ED816C30;
  if (!qword_1ED816C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF356E8, &qword_197622858);
    sub_197588D18();
    sub_197588F64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816C30);
  }

  return result;
}

uint64_t Mutex<A>.value.setter(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(v2);
  v5 = *(a2 + 28);
  v6 = *(a2 + 16);
  sub_197607C0C(v2 + v5, a1, v6);
  os_unfair_lock_unlock(v2);
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

void Mutex<A>.value.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  os_unfair_lock_lock(v2);
  (*(*(*(a1 + 16) - 8) + 16))(a2, v2 + *(a1 + 28));

  os_unfair_lock_unlock(v2);
}

uint64_t sub_197607C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  (*(v6 + 8))(a1, a3);
  return (*(v6 + 16))(a1, a2, a3);
}

void (*Mutex<A>.value.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v6 = *(a2 + 16);
  v5[2] = v6;
  v7 = *(v6 - 8);
  v5[3] = v7;
  v8 = *(v7 + 64);
  v5[4] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v5[5] = v9;
  Mutex<A>.value.getter(a2, v9);
  return sub_197607DA0;
}

void sub_197607DA0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    (*(v6 + 16))((*a1)[4], v4, v5);
    Mutex<A>.value.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    Mutex<A>.value.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_197607E60(void *a1, char a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v13 = 0;
  v5 = [v4 archivedDataWithRootObject:sub_197616EE0() requiringSecureCoding:a2 & 1 error:&v13];
  swift_unknownObjectRelease();
  v6 = v13;
  if (v5)
  {
    v7 = sub_1976159A0();
  }

  else
  {
    v8 = v6;
    v9 = sub_197615830();

    swift_willThrow();
    if (qword_1EAF34288 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for logger(0);
    __swift_project_value_buffer(v10, qword_1EAF35488);
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_197616A20();
    MEMORY[0x19A8E2A50](0xD00000000000002ALL, 0x8000000197626800);
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_197616EB0();
    MEMORY[0x19A8E2A50](2112041, 0xE300000000000000);
    swift_getErrorValue();
    sub_197616EB0();
    sub_197558864(v13, v14, v11);

    return 0;
  }

  return v7;
}

void sub_197608064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
  sub_1976080E8(a1, a2, a3, a4);
}

void sub_1976080E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v9 = sub_1976158C0();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = v16;
  v11 = swift_allocObject();
  v11[2] = sub_197608368;
  v11[3] = v10;
  v15[4] = sub_19758BE90;
  v15[5] = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_19758BD70;
  v15[3] = &block_descriptor_0;
  v12 = _Block_copy(v15);

  v15[0] = 0;
  [v5 coordinateWritingItemAtURL:v9 options:a2 error:v15 byAccessor:v12];
  _Block_release(v12);

  v13 = v15[0];
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  if (v13)
  {
    goto LABEL_5;
  }

  if (v16[0])
  {
    v14 = v16[0];
LABEL_5:
    swift_willThrow();

    return;
  }
}

uint64_t NSObject.typeName.getter()
{
  swift_getObjectType();

  return sub_197617320();
}

Swift::String __swiftcall NSObject.typeName(qualified:)(Swift::Bool qualified)
{
  swift_getObjectType();

  v1 = sub_197617320();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t Notification.BOOL(_:)(uint64_t a1)
{
  v2 = sub_197615580();
  if (!v2)
  {
    return 2;
  }

  sub_197586610(v2, &v14, a1);

  if (!v15)
  {
    sub_19755643C(&v14);
    return 2;
  }

  sub_19756A94C(&v14, v16);
  v3 = sub_1975586C0(v16, &v14);
  if (!OUTLINED_FUNCTION_0_48(v3, v4, v5, MEMORY[0x1E69E6370], v6))
  {
    v8 = sub_19756A94C(v16, &v14);
    if (OUTLINED_FUNCTION_0_48(v8, v9, v10, MEMORY[0x1E69E6530], v11))
    {
      return v13 == 1;
    }

    return 2;
  }

  v7 = v13;
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  return v7;
}

uint64_t sub_1976084B4()
{
  result = sub_197611DF4(&unk_1F0BB09D0);
  qword_1EAF3E330 = result;
  *algn_1EAF3E338 = v1;
  return result;
}

uint64_t OptionSet<>.components.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v16[-v8];
  sub_1976163E0();
  v10 = FixedWidthInteger.bitComponents.getter(AssociatedTypeWitness, a3);
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  v21 = v10;
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a1;
  v11 = sub_197616530();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1975F7818(sub_1976087B0, v16, v11, a1, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v13);

  return v14;
}

uint64_t sub_1976086A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v7 + 16))(&v9 - v6, a1);
  return sub_197617310();
}

uint64_t sub_1976087EC(uint64_t a1)
{
  v3 = sub_197615F50();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  if (*(a1 + 16))
  {
    (*(v5 + 16))(v9, a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3);
    (*(v5 + 32))(v12, v9, v3);
  }

  OUTLINED_FUNCTION_29_11();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  swift_dynamicCast();
  OUTLINED_FUNCTION_29_11();
  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

void static PersistentModel.delete(in:fetchLimit:fetchOffset:includePendingChanges:sortBy:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_20();
  v68 = v24;
  v69 = v22;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v65 = v31;
  v66 = v32;
  v34 = v33;
  v35 = a21;
  v71 = v36;
  v72 = a22;
  v37 = OUTLINED_FUNCTION_11_22();
  v70 = sub_197616860();
  OUTLINED_FUNCTION_0();
  v67 = v38;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_16();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v62 - v41;
  if (v34 & 1) != 0 && (v30 & 1) != 0 && (v28 & 1) == 0 && (v73 = v71, sub_197615630(), OUTLINED_FUNCTION_16_2(), sub_197616530(), HIDWORD(v64) = v30, v63 = a21, OUTLINED_FUNCTION_2_40(), swift_getWitnessTable(), v35 = v63, LOBYTE(v30) = BYTE4(v64), (sub_197616770()))
  {
    OUTLINED_FUNCTION_18();
    (*(v43 + 16))(v23, v26, v37);
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v37);
    sub_197615CB0();
    (*(v67 + 8))(v23, v70);
  }

  else
  {
    OUTLINED_FUNCTION_18();
    (*(v47 + 16))(v42, v26, v37);
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v37);
    v51 = v72;
    v52 = default argument 4 of static PersistentModel.fetch(in:fetchLimit:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:_:)();
    v53 = default argument 5 of static PersistentModel.fetch(in:fetchLimit:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:_:)();
    v54 = v69;
    static PersistentModel.fetch(in:fetchLimit:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:_:)(v68, v65, v34 & 1, v66, v30 & 1, v28 & 1, v52, v53, v71, v42, v35, v51, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
    if (v54)
    {
      v56 = OUTLINED_FUNCTION_54_0();
      v57(v56);
    }

    else
    {
      v58 = v55;
      v59 = OUTLINED_FUNCTION_54_0();
      v60(v59);

      v73 = v58;
      MEMORY[0x1EEE9AC00](v61);
      OUTLINED_FUNCTION_42_4();
      sub_197616530();
      OUTLINED_FUNCTION_0_2();
      swift_getWitnessTable();
      sub_1976163C0();
    }
  }

  OUTLINED_FUNCTION_19_0();
}

void static PersistentModel.fetch(in:fetchLimit:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_20();
  v54 = v25;
  v52 = v26;
  v55 = v27;
  OUTLINED_FUNCTION_11_22();
  OUTLINED_FUNCTION_16_2();
  v28 = sub_197616860();
  OUTLINED_FUNCTION_0();
  v30 = v29;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_49_0();
  v53 = sub_197615DA0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_0_49();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_21_14();
  v35 = MEMORY[0x1EEE9AC00](v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_15_16();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_16_17();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_16_17();
  v39 = MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_45_1(v39, v40, v41, v42, v43, v44, v45, v46, v51);
  (*(v30 + 16))(v24, a22, v28);
  sub_19760A92C();
  OUTLINED_FUNCTION_27_9();
  sub_197615D90();
  swift_getKeyPath();
  OUTLINED_FUNCTION_47_1();
  KeyPathAccessible.with<A>(_:_:)();

  swift_getKeyPath();
  OUTLINED_FUNCTION_47_1();
  KeyPathAccessible.with<A>(_:_:)();

  swift_getKeyPath();
  KeyPathAccessible.with<A>(_:_:)();

  swift_getKeyPath();
  OUTLINED_FUNCTION_40_2(v52);
  OUTLINED_FUNCTION_56_1(v47, v48);

  swift_getKeyPath();
  OUTLINED_FUNCTION_40_2(v54);
  KeyPathAccessible.with<A>(_:_:)();

  swift_getKeyPath();
  OUTLINED_FUNCTION_40_2(a21);
  OUTLINED_FUNCTION_56_1(v49, v50);

  sub_1975F75B8(v55, v53);
  OUTLINED_FUNCTION_19_0();
}

uint64_t static PersistentModel.getOrCreate(in:includePendingChanges:relationshipPaths:sortBy:_:_:)(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  HIDWORD(v23) = a2;
  v14 = sub_197615630();
  OUTLINED_FUNCTION_42_4();
  sub_197616E90();
  OUTLINED_FUNCTION_14();
  v16 = v15;
  OUTLINED_FUNCTION_13_21();
  v17 = sub_197616480();
  (*(v16 + 16))(v18, a4, v14);
  v19 = sub_1975A1CC4(v17, v14);
  static PersistentModel.getOrCreate(in:includePendingChanges:relationshipPaths:sortBy:_:_:)(a1, HIDWORD(v23), a3, v19, a5, sub_19760D210, v26, a8, a9, v23, a3, a5, v26[0], v26[1], a8, a9, a6, a7, v26[6], v26[7], v26[8]);
  v21 = v20;

  return v21;
}

uint64_t static PersistentModel.get(id:in:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v43 = __PAIR64__(a5, a4);
  v14 = sub_197615AD0();
  sub_197616860();
  OUTLINED_FUNCTION_0();
  v46 = v15;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_30_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  OUTLINED_FUNCTION_5_2(v17);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_5();
  v19 = sub_197615F50();
  OUTLINED_FUNCTION_0();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_49_0();
  sub_19755F9FC(a1, v10, &qword_1EAF34AB8, &qword_197622080);
  if (__swift_getEnumTagSinglePayload(v10, 1, v19) == 1)
  {
    sub_19756E748(v10);
    return 0;
  }

  (*(v21 + 32))(v9, v10, v19);
  v23 = sub_197615C00();
  if (!v23)
  {
    MEMORY[0x1EEE9AC00](0);
    sub_197615AE0();
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v14);
    OUTLINED_FUNCTION_43();
    v30 = default argument 5 of static PersistentModel.get(in:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:_:)();
    static PersistentModel.get(in:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:_:)(a2, a3, v43 & 1, BYTE4(v43) & 1, a6, a7, v30, v11, a8, a9, v39, v40, a8, a9, v9, v41, v42, v43, a3, a6, v46, a7);
    v24 = v34;
    v35 = OUTLINED_FUNCTION_55_0();
    v36(v35);

    if (v24)
    {
      v37 = OUTLINED_FUNCTION_36_5();
      v38(v37);
      return v24;
    }

    v31 = OUTLINED_FUNCTION_36_5();
    v32(v31);
    return 0;
  }

  v24 = v23;
  v25 = OUTLINED_FUNCTION_36_5();
  v26(v25);
  return v24;
}

void static PersistentModel.count(in:includePendingChanges:_:)()
{
  OUTLINED_FUNCTION_20();
  v11 = v1;
  v3 = v2;
  OUTLINED_FUNCTION_11_22();
  OUTLINED_FUNCTION_16_2();
  v4 = sub_197616860();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_30_0();
  v8 = sub_197615DA0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_0_49();
  MEMORY[0x1EEE9AC00](v10);
  (*(v6 + 16))(v0, v3, v4);
  sub_19760A92C();
  OUTLINED_FUNCTION_27_9();
  sub_197615D90();
  swift_getKeyPath();
  KeyPathAccessible.with<A>(_:_:)();

  sub_1975F7560(v11, v8);
  OUTLINED_FUNCTION_19_0();
}

void static PersistentModel.batchDelete<A>(in:deleteOffset:sortBy:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_20();
  a19 = v28;
  a20 = v29;
  v105 = v24;
  v106 = v30;
  v109 = v31;
  v110 = v23;
  v108 = v32;
  v34 = v33;
  v36 = v35;
  LODWORD(v107) = v37;
  v39 = v38;
  v104 = v40;
  v41 = a21;
  v95 = sub_1976157A0();
  OUTLINED_FUNCTION_0();
  v93 = v42;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_6_0();
  v92 = v45 - v44;
  a10 = v36;
  v100 = sub_197615AD0();
  OUTLINED_FUNCTION_0();
  v97 = v46;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  v96 = &v90 - v48;
  v103 = sub_197615630();
  OUTLINED_FUNCTION_0();
  v50 = v49;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_18_10();
  v52 = sub_197616860();
  OUTLINED_FUNCTION_0();
  v99 = v53;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_14();
  v101 = v55;
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_49_0();

  v94 = v41;
  sub_197615640();
  v98 = v36;
  v102 = v34;
  v57 = v108;
  v58 = default argument 2 of static PersistentModel.value<A>(in:for:includePendingChanges:fetchOffset:sortBy:_:)();
  v59 = v105;
  static PersistentModel.value<A>(in:for:includePendingChanges:fetchOffset:sortBy:_:)(v109, v39, v58 & 1, v104, 0, v26, v106, v57);
  if (v59)
  {
    (*(v50 + 8))(v26, v103);
  }

  else
  {
    v104 = v39;
    v105 = 0;
    v60 = v25;
    v61 = v101;
    v63 = v99;
    v62 = v100;
    (*(v50 + 8))(v26, v103);
    if (__swift_getEnumTagSinglePayload(v27, 1, v102) == 1)
    {
      (*(v63 + 8))(v27, v52);
    }

    else
    {
      v99 = a23;
      v103 = a22;
      v64 = v102;
      (*(v61 + 32))(v60, v27, v102);
      v65 = sub_197616860();
      OUTLINED_FUNCTION_32_7();
      sub_197616E90();
      OUTLINED_FUNCTION_14();
      v67 = v66;
      swift_allocObject();
      v91 = sub_197616480();
      (*(v67 + 16))(v68, v106, v65);
      v69 = sub_197615AF0();
      v71 = v92;
      v70 = v93;
      v72 = MEMORY[0x1E6968C38];
      if ((v69 & 1) == 0)
      {
        v72 = MEMORY[0x1E6968C30];
      }

      v73 = v95;
      (*(v93 + 104))(v92, *v72, v95);
      v107 = v60;
      v74 = v64;
      v75 = v62;
      static Predicate.comparison<A>(_:value:comparison:)(v104, v60, v71, 1, &a10, v74, v94, v103, v99);
      (*(v70 + 8))(v71, v73);
      OUTLINED_FUNCTION_3_10();
      __swift_storeEnumTagSinglePayload(v76, v77, v78, v62);
      v79 = sub_1975A1CC4(v91, v65);
      v80 = v96;
      static Predicate.conjunction(_:)(v79, 1, &a10, v96);

      v81 = v98;
      v82 = v108;
      default argument 3 of static PersistentModel.delete(in:fetchLimit:fetchOffset:includePendingChanges:sortBy:_:)();
      v83 = default argument 4 of static PersistentModel.delete(in:fetchLimit:fetchOffset:includePendingChanges:sortBy:_:)();
      OUTLINED_FUNCTION_51_1();
      static PersistentModel.delete(in:fetchLimit:fetchOffset:includePendingChanges:sortBy:_:)(v84, v85, v86, v87, v88, v89, v83, v80, v81, v82, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101);

      (*(v97 + 8))(v80, v75);
      (*(v101 + 8))(v107, v102);
    }
  }

  OUTLINED_FUNCTION_19_0();
}

uint64_t static PersistentModel.get(in:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:_:)(uint64_t a1, uint64_t a2, char a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  HIDWORD(v23) = a4;
  v14 = sub_197615630();
  OUTLINED_FUNCTION_33_7();
  sub_197616E90();
  OUTLINED_FUNCTION_14();
  v16 = v15;
  OUTLINED_FUNCTION_13_21();
  v17 = sub_197616480();
  (*(v16 + 16))(v18, a7, v14);
  v19 = sub_1975A1CC4(v17, v14);
  static PersistentModel.get(in:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:_:)(a1, a2, a3 & 1, HIDWORD(v23), a5, a6, v19, a8, a9, a10, v23, a5, a6, a8, v27, v28, v29, v30, v31, v32, v33, v34);
  v21 = v20;

  return v21;
}

void static PersistentModel.identifier(in:includePendingChanges:sortBy:_:)()
{
  OUTLINED_FUNCTION_20();
  v23 = v1;
  v22 = v2;
  v3 = OUTLINED_FUNCTION_11_22();
  v4 = sub_197616860();
  OUTLINED_FUNCTION_5_2(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v21 = sub_197615DA0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_0_49();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17_16();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21_14();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18();
  v10 = OUTLINED_FUNCTION_43();
  v11(v10);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v3);
  sub_19760A92C();
  OUTLINED_FUNCTION_27_9();
  sub_197615D90();
  swift_getKeyPath();
  KeyPathAccessible.with<A>(_:_:)();

  swift_getKeyPath();
  KeyPathAccessible.with<A>(_:_:)();

  swift_getKeyPath();
  v15 = sub_197615630();
  OUTLINED_FUNCTION_33_7();
  sub_197616E90();
  OUTLINED_FUNCTION_14();
  v17 = v16;
  OUTLINED_FUNCTION_13_21();
  v18 = sub_197616480();
  (*(v17 + 16))(v19, v22, v15);
  sub_1975A1CC4(v18, v15);
  KeyPathAccessible.with<A>(_:_:)();

  v20 = sub_1975F758C(v23, v21);
  if (!v0)
  {
    sub_1976087EC(v20);
  }

  OUTLINED_FUNCTION_19_0();
}

void static PersistentModel.get(id:in:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_20();
  v40 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5_5();
  if (!static PersistentModel.get(id:in:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:)(v36, v34, v32, v30 & 1, v28, v26, v24, v40, a21))
  {
    sub_197616A20();

    sub_19755F9FC(v36, v21, &qword_1EAF34AB8, &qword_197622080);
    v38 = sub_197616200();
    MEMORY[0x19A8E2A50](v38);

    sub_19759228C();
    swift_allocError();
    *v39 = 0xD000000000000026;
    v39[1] = 0x8000000197625400;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_19_0();
}

uint64_t PersistentModel.set<A>(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - v3);
  v7 = v1;
  swift_unknownObjectRetain();
  swift_setAtReferenceWritableKeyPath();
  swift_unknownObjectRelease();
  return swift_unknownObjectRetain();
}

uint64_t PersistentModel.update<A>(keyPath:value:)(uint64_t a1)
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  if (sub_197615DD0())
  {

    v3 = OUTLINED_FUNCTION_43();
    v4(v3);
    swift_unknownObjectRetain();
    swift_setAtReferenceWritableKeyPath();
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
  }

  else
  {
    sub_19759228C();
    swift_allocError();
    *v5 = 0xD000000000000036;
    v5[1] = 0x8000000197625740;
    swift_willThrow();
  }

  return v1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PersistentModel.delete()()
{
  if (sub_197615DD0())
  {
    if ((sub_197615E90() & 1) == 0)
    {
      sub_197615CC0();
    }
  }

  else
  {
    sub_19759228C();
    swift_allocError();
    *v0 = 0xD00000000000002DLL;
    v0[1] = 0x80000001976263F0;
    swift_willThrow();
  }
}

uint64_t static PersistentModel.delete(in:fetchLimit:fetchOffset:includePendingChanges:sortBy:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  HIDWORD(v24) = a6;
  HIDWORD(v22) = a5;
  v14 = sub_197615630();
  OUTLINED_FUNCTION_33_7();
  sub_197616E90();
  OUTLINED_FUNCTION_14();
  v16 = v15;
  OUTLINED_FUNCTION_13_21();
  v17 = sub_197616480();
  (*(v16 + 16))(v18, a7, v14);
  v19 = sub_1975A1CC4(v17, v14);
  static PersistentModel.delete(in:fetchLimit:fetchOffset:includePendingChanges:sortBy:_:)(a1, a2, a3 & 1, a4, BYTE4(v22) & 1, HIDWORD(v24), v19, a8, a9, a10, v21, v22, a4, v24, a8, v26, v27, v28, v29, v30, v31, v32);
}

uint64_t static PersistentModel.create(in:_:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2();
  sub_197615CD0();
  return v5;
}

uint64_t sub_19760A92C()
{
  sub_197615630();

  return sub_1976164B0();
}

uint64_t sub_19760A964@<X0>(_BYTE *a3@<X8>)
{
  sub_197615DA0();
  result = sub_197615D70();
  *a3 = result & 1;
  return result;
}

uint64_t sub_19760A9A4()
{
  OUTLINED_FUNCTION_38_4();
  sub_197615DA0();
  return sub_197615D80();
}

uint64_t static PersistentModel.value<A>(in:for:includePendingChanges:fetchOffset:sortBy:_:)(uint64_t a1, uint64_t *a2, unsigned int a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345D0, &qword_19761B410);
  swift_allocObject();
  v14 = sub_197616480();
  *v15 = a2;
  v16 = *(v13 + *MEMORY[0x1E69E77B0]);
  OUTLINED_FUNCTION_33_7();
  v17 = sub_197616AB0();
  v18 = sub_1975A1CC4(v14, v17);

  v19 = default argument 3 of static PersistentModel.get(in:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:_:)();
  v20 = static PersistentModel.get(in:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:_:)(a1, a4, a5 & 1, a3, v19, v18, a6, a7, v16, a8);

  if (!v28)
  {
    if (v20)
    {
      swift_getAtKeyPath();
      swift_unknownObjectRelease();
      v22 = OUTLINED_FUNCTION_52_1();
      v24 = 0;
    }

    else
    {
      v22 = OUTLINED_FUNCTION_52_1();
      v24 = 1;
    }

    return __swift_storeEnumTagSinglePayload(v22, v24, 1, v23);
  }

  return result;
}

void static PersistentModel.all(in:includePendingChanges:relationshipPaths:propertiesToFetch:)()
{
  OUTLINED_FUNCTION_20();
  v12 = v0;
  v1 = OUTLINED_FUNCTION_11_22();
  OUTLINED_FUNCTION_32_7();
  v2 = sub_197616860();
  OUTLINED_FUNCTION_5_2(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_10();
  v4 = sub_197615DA0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_0_49();
  v7 = MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21_14();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_35_6();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v1);
  sub_19760A92C();
  OUTLINED_FUNCTION_27_9();
  sub_197615D90();
  swift_getKeyPath();
  KeyPathAccessible.with<A>(_:_:)();

  swift_getKeyPath();
  KeyPathAccessible.with<A>(_:_:)();

  swift_getKeyPath();
  KeyPathAccessible.with<A>(_:_:)();

  sub_1975F75B8(v12, v4);
  OUTLINED_FUNCTION_19_0();
}

void static PersistentModel.all<A>(in:includePendingChanges:propertyToFetch:)()
{
  OUTLINED_FUNCTION_20();
  v28 = v1;
  v29 = v0;
  v3 = v2;
  v5 = v4;
  v26 = v6;
  v7 = *v4;
  v37 = *(*v4 + *MEMORY[0x1E69E77B0]);
  v8 = OUTLINED_FUNCTION_11_22();
  v9 = sub_197616860();
  OUTLINED_FUNCTION_5_2(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_10();
  v27 = sub_197615DA0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_0_49();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17_16();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_35_6();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v8);
  sub_19760A92C();
  OUTLINED_FUNCTION_27_9();
  sub_197615D90();
  v33 = v37;
  v17 = *(v7 + *MEMORY[0x1E69E77B0] + 8);
  v34 = v17;
  v35 = v3;
  swift_getKeyPath();
  KeyPathAccessible.with<A>(_:_:)();

  v30 = v37;
  v31 = v17;
  v32 = v3;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345D0, &qword_19761B410);
  swift_allocObject();
  v18 = sub_197616480();
  *v19 = v5;
  OUTLINED_FUNCTION_32_7();
  v20 = sub_197616AB0();
  v36 = sub_1975A1CC4(v18, v20);

  KeyPathAccessible.with<A>(_:_:)();

  v21 = sub_1975F75B8(v28, v27);
  if (!v29)
  {
    v36 = v21;
    MEMORY[0x1EEE9AC00](v21);
    v25[2] = v3;
    v25[3] = v5;
    OUTLINED_FUNCTION_32_7();
    v22 = sub_197616530();
    OUTLINED_FUNCTION_2_40();
    WitnessTable = swift_getWitnessTable();
    sub_1975F7818(sub_19760D244, v25, v22, v17, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v24);
  }

  OUTLINED_FUNCTION_19_0();
}

uint64_t sub_19760B0B4@<X0>(_BYTE *a3@<X8>)
{
  sub_197615DA0();
  result = sub_197615D70();
  *a3 = result & 1;
  return result;
}

uint64_t sub_19760B13C@<X0>(uint64_t *a3@<X8>)
{
  sub_197615DA0();
  result = sub_197615D50();
  *a3 = result;
  return result;
}

uint64_t sub_19760B17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_197615DA0();

  return sub_197615D60();
}

uint64_t sub_19760B1D0(uint64_t *a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  return swift_unknownObjectRelease();
}

uint64_t sub_19760B274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_39_2(a1, a2, a3);
  result = v3(v5);
  *v4 = result;
  *(v4 + 8) = v7 & 1;
  return result;
}

uint64_t sub_19760B2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_38_4();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = sub_197615DA0();
  return a5(v7, v8, v9);
}

uint64_t sub_19760B330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_39_2(a1, a2, a3);
  result = v3(v5);
  *v4 = result;
  return result;
}

uint64_t sub_19760B37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_38_4();
  v6 = sub_197615DA0();

  return a5(v7, v6);
}

void sub_19760B3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (**a21)(uint64_t, uint64_t, uint64_t), void (**a22)(uint64_t, uint64_t, uint64_t), unint64_t a23, unsigned __int8 a24, uint64_t a25, void (*a26)(uint64_t), uint64_t a27, uint64_t *a28)
{
  OUTLINED_FUNCTION_20();
  v166 = v31;
  v167 = v28;
  LODWORD(v168) = v32;
  LODWORD(v170) = v33;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v176 = v42;
  v177 = a27;
  v43 = a26;
  v174 = a22;
  v175 = a23;
  v169 = a21;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  v45 = OUTLINED_FUNCTION_5_2(v44);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5();
  v171 = v46 - v47;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v48);
  v161 = &v157 - v49;
  sub_197615F50();
  OUTLINED_FUNCTION_0();
  v172 = v51;
  v173 = v50;
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_5();
  v179 = v52 - v53;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_115();
  v178 = v55;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_115();
  v165 = v57;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v58);
  v164 = &v157 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D8, &unk_197619120);
  OUTLINED_FUNCTION_5_2(v60);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_5_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D0, &unk_197622090);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_16();
  MEMORY[0x1EEE9AC00](v63);
  v67 = &v157 - v66;
  if ((v39 & 1) == 0)
  {
    v178 = v37;
    v179 = a25;
    v104 = v167;
    if (v35)
    {
      if (v170)
      {
        v105 = 0;
      }

      else
      {
        v105 = v176;
      }

      v106 = 0x7FFFFFFFFFFFFFFFLL;
      v107 = v174;
      v108 = v169;
      v109 = v168;
      v110 = v179;
    }

    else
    {
      v111 = v176;
      v110 = v179;
      if ((v170 & 1) == 0)
      {
        HIDWORD(v157) = a24;
        v159 = a26;
        if (v178 >= v166)
        {
          v112 = v166;
        }

        else
        {
          v112 = v178;
        }

        v162 = v65;
        v163 = v64;
        sub_19755F9FC(v179, v29, &qword_1EAF346D8, &unk_197619120);
        v113 = type metadata accessor for CoreTipRecord(0);
        v160 = v41;
        v114 = v113;
        OUTLINED_FUNCTION_12_17();
        v117 = sub_19760D2F4(v115, v116, &protocol conformance descriptor for CoreTipRecord);
        v118 = sub_197615D90();
        MEMORY[0x1EEE9AC00](v118);
        OUTLINED_FUNCTION_1_1();
        *(v119 - 16) = v114;
        *(v119 - 8) = v117;
        swift_getKeyPath();
        v180 = v112;
        v181 = 0;
        OUTLINED_FUNCTION_43();
        swift_setAtWritableKeyPath();

        OUTLINED_FUNCTION_89();
        MEMORY[0x1EEE9AC00](v120);
        OUTLINED_FUNCTION_1_1();
        *(v121 - 16) = v114;
        *(v121 - 8) = v117;
        swift_getKeyPath();
        OUTLINED_FUNCTION_43_4();
        v180 = v111;
        v181 = 0;
        OUTLINED_FUNCTION_43();
        swift_setAtWritableKeyPath();

        OUTLINED_FUNCTION_89();
        MEMORY[0x1EEE9AC00](v122);
        OUTLINED_FUNCTION_1_1();
        *(v123 - 16) = v114;
        *(v123 - 8) = v117;
        swift_getKeyPath();
        OUTLINED_FUNCTION_43_4();
        LOBYTE(v180) = v168 & 1;
        OUTLINED_FUNCTION_43();
        swift_setAtWritableKeyPath();

        OUTLINED_FUNCTION_89();
        MEMORY[0x1EEE9AC00](v124);
        OUTLINED_FUNCTION_1_1();
        *(v125 - 16) = v114;
        *(v125 - 8) = v117;
        swift_getKeyPath();
        OUTLINED_FUNCTION_43_4();
        v180 = v169;

        OUTLINED_FUNCTION_43();
        swift_setAtWritableKeyPath();

        OUTLINED_FUNCTION_89();
        MEMORY[0x1EEE9AC00](v126);
        OUTLINED_FUNCTION_1_1();
        *(v127 - 16) = v114;
        *(v127 - 8) = v117;
        swift_getKeyPath();
        OUTLINED_FUNCTION_43_4();
        v180 = v174;

        OUTLINED_FUNCTION_43();
        swift_setAtWritableKeyPath();

        OUTLINED_FUNCTION_89();
        MEMORY[0x1EEE9AC00](v128);
        OUTLINED_FUNCTION_1_1();
        *(v129 - 16) = v114;
        *(v129 - 8) = v117;
        swift_getKeyPath();
        OUTLINED_FUNCTION_43_4();
        v180 = v175;

        OUTLINED_FUNCTION_43();
        swift_setAtWritableKeyPath();

        v130 = sub_197615C80();
        (v162[1])(v30, v163);
        if (v104)
        {
          goto LABEL_47;
        }

        v171 = sub_197568EEC(v130);
        if (!v171)
        {
          goto LABEL_46;
        }

        v131 = v130;
        v132 = 0;
        v167 = v131 & 0xC000000000000001;
        v170 = v131;
        v133 = (v172 + 32);
        v162 = (v172 + 16);
        v163 = v131 & 0xFFFFFFFFFFFFFF8;
        v158 = v172 + 8;
        v134 = v159;
        v135 = v173;
        v136 = v161;
        while (v171 != v132)
        {
          if (v167)
          {
            v137 = MEMORY[0x19A8E31E0](v132, v170);
          }

          else
          {
            if (v132 >= *(v163 + 16))
            {
              goto LABEL_61;
            }

            v137 = *(v170 + 8 * v132 + 32);
          }

          if (__OFADD__(v132, 1))
          {
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
            return;
          }

          v134(v137);
          if (__swift_getEnumTagSinglePayload(v136, 1, v135) == 1)
          {
            sub_19756E748(v136);
          }

          else
          {
            v138 = *v133;
            v139 = v164;
            (*v133)(v164, v136, v135);
            (*v162)(v165, v139, v135);
            v140 = *a28;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *a28 = v140;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              OUTLINED_FUNCTION_29_11();
              sub_1975BBAC8();
              v140 = v146;
              OUTLINED_FUNCTION_50_0(v146);
            }

            v142 = *(v140 + 16);
            if (v142 >= *(v140 + 24) >> 1)
            {
              OUTLINED_FUNCTION_29_11();
              sub_1975BBAC8();
              OUTLINED_FUNCTION_50_0(v147);
            }

            v143 = v173;
            (*(v172 + 8))(v164, v173);
            *(*a28 + 16) = v142 + 1;
            OUTLINED_FUNCTION_41_3();
            v135 = v143;
            v138((v144 + v145 * v142), v165, v143);
            v134 = v159;
            v136 = v161;
          }

          ++v132;
        }

        if ((v157 & 0x100000000) != 0)
        {
          sub_197615C90();
        }

        v148 = v166;
        v149 = v177;
        v150 = v166 + v176;
        if (__OFADD__(v176, v166))
        {
          goto LABEL_62;
        }

        v151 = sub_197567E4C(v170);

        if (v151 == v148 && v150 < v178)
        {
          if (!__OFSUB__(v178, v150))
          {
            OUTLINED_FUNCTION_47_1();
            LOBYTE(v156) = v153;
            sub_19760B3CC(v160, v154, 0, v155, 0, v150, 0, v168 & 1, v169, v174, v175, v156, v179, v134, v149, a28, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168);
            goto LABEL_47;
          }

          goto LABEL_63;
        }

        goto LABEL_47;
      }

      v105 = 0;
      v107 = v174;
      v108 = v169;
      v109 = v168;
      v106 = v178;
    }

    LOBYTE(v156) = a24 & 1;
    sub_19760B3CC(v41, v166, 0, v106, 0, v105, 0, v109 & 1, v108, v107, v175, v156, v110, a26, v177, a28, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168);
    goto LABEL_47;
  }

  v162 = v65;
  v163 = v64;
  sub_19755F9FC(a25, v29, &qword_1EAF346D8, &unk_197619120);
  v68 = type metadata accessor for CoreTipRecord(0);
  OUTLINED_FUNCTION_12_17();
  v71 = sub_19760D2F4(v69, v70, &protocol conformance descriptor for CoreTipRecord);
  sub_197615D90();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_1_1();
  *(v73 - 16) = v68;
  *(v73 - 8) = v71;
  swift_getKeyPath();
  OUTLINED_FUNCTION_28_9();
  v180 = v37;
  v181 = v35 & 1;
  OUTLINED_FUNCTION_22_13();

  OUTLINED_FUNCTION_21_0();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_1_1();
  *(v75 - 16) = v68;
  *(v75 - 8) = v71;
  swift_getKeyPath();
  OUTLINED_FUNCTION_28_9();
  v180 = v176;
  v181 = v170 & 1;
  OUTLINED_FUNCTION_22_13();

  OUTLINED_FUNCTION_21_0();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_1_1();
  *(v77 - 16) = v68;
  *(v77 - 8) = v71;
  swift_getKeyPath();
  OUTLINED_FUNCTION_28_9();
  LOBYTE(v180) = v168 & 1;
  OUTLINED_FUNCTION_22_13();

  OUTLINED_FUNCTION_21_0();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_1_1();
  *(v79 - 16) = v68;
  *(v79 - 8) = v71;
  swift_getKeyPath();
  OUTLINED_FUNCTION_28_9();
  v180 = v169;

  OUTLINED_FUNCTION_22_13();

  OUTLINED_FUNCTION_21_0();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_1_1();
  *(v81 - 16) = v68;
  *(v81 - 8) = v71;
  swift_getKeyPath();
  OUTLINED_FUNCTION_28_9();
  v180 = v174;

  OUTLINED_FUNCTION_22_13();

  OUTLINED_FUNCTION_21_0();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_1_1();
  *(v83 - 16) = v68;
  *(v83 - 8) = v71;
  swift_getKeyPath();
  OUTLINED_FUNCTION_28_9();
  v180 = v175;

  OUTLINED_FUNCTION_22_13();

  v84 = v167;
  v85 = sub_197615C80();
  (v162[1])(v67, v163);
  if (!v84)
  {
    v86 = sub_197568EEC(v85);
    v87 = 0;
    v175 = v85 & 0xFFFFFFFFFFFFFF8;
    v176 = v85 & 0xC000000000000001;
    v88 = v173;
    v174 = (v172 + 32);
    v167 = v172 + 8;
    v168 = (v172 + 16);
    v89 = v171;
    v90 = v85;
    v169 = v86;
    v170 = v85;
    while (v86 != v87)
    {
      if (v176)
      {
        v101 = OUTLINED_FUNCTION_43();
        v91 = MEMORY[0x19A8E31E0](v101);
      }

      else
      {
        if (v87 >= *(v175 + 16))
        {
          goto LABEL_59;
        }

        v91 = *(v90 + 8 * v87 + 32);
      }

      if (__OFADD__(v87, 1))
      {
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v43(v91);
      if (__swift_getEnumTagSinglePayload(v89, 1, v88) == 1)
      {
        sub_19756E748(v89);
      }

      else
      {
        v92 = v43;
        v93 = *v174;
        v94 = v178;
        (*v174)(v178, v89, v88);
        (*v168)(v179, v94, v88);
        v95 = *a28;
        v96 = swift_isUniquelyReferenced_nonNull_native();
        *a28 = v95;
        if ((v96 & 1) == 0)
        {
          OUTLINED_FUNCTION_29_11();
          sub_1975BBAC8();
          v95 = v102;
          OUTLINED_FUNCTION_50_0(v102);
        }

        v97 = *(v95 + 16);
        if (v97 >= *(v95 + 24) >> 1)
        {
          OUTLINED_FUNCTION_29_11();
          sub_1975BBAC8();
          OUTLINED_FUNCTION_50_0(v103);
        }

        v98 = v173;
        (*(v172 + 8))(v178, v173);
        *(*a28 + 16) = v97 + 1;
        v88 = v98;
        OUTLINED_FUNCTION_41_3();
        v93(v99 + v100 * v97, v179, v98);
        v43 = v92;
        v90 = v170;
        v89 = v171;
        v86 = v169;
      }

      ++v87;
    }

LABEL_46:
  }

LABEL_47:
  OUTLINED_FUNCTION_19_0();
}

void static PersistentModel.forEach(in:batchSize:fetchLimit:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:resetsContext:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned __int8 a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_20();
  v38 = v35;
  v39 = v33;
  if (v40)
  {
    static PersistentModel.fetch(in:fetchLimit:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:_:)(v31, v33, v34 & 1, v35, v36 & 1, v37 & 1, a21, a22, a23, a25, a28, a29, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
    if (!v30)
    {
      MEMORY[0x1EEE9AC00](v41);
      v52 = a28;
      v53 = a29;
      v54 = a26;
      v55 = a27;
      sub_197616530();
      OUTLINED_FUNCTION_0_2();
      swift_getWitnessTable();
      sub_1976163C0();
    }

    goto LABEL_10;
  }

  if (v34)
  {
    v39 = 0x7FFFFFFFFFFFFFFFLL;
    if ((v36 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v36)
  {
LABEL_8:
    v38 = 0;
LABEL_9:
    LOBYTE(v50) = a24 & 1;
    static PersistentModel.forEach(in:batchSize:fetchLimit:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:resetsContext:_:_:)(v31, v32, 0, v39, 0, v38, 0, v37 & 1, a21, a22, a23, v50, a25, a26, a27, a28, a29, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
LABEL_10:
    OUTLINED_FUNCTION_19_0();
    return;
  }

  HIDWORD(v67) = a24;
  v68 = a27;
  v65 = v29;
  v66 = v32;
  if (v33 < v32)
  {
    v32 = v33;
  }

  v42 = v31;
  HIDWORD(v62) = v37;
  static PersistentModel.fetch(in:fetchLimit:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:_:)(v31, v32, 0, v35, 0, v37 & 1, a21, a22, a23, a25, a28, a29, v56, v57, v58, v59, v60, v61, v62, a21, a22, v65, v66, v67);
  if (v30)
  {
    goto LABEL_10;
  }

  v58 = v42;
  v60 = a26;
  v61 = v43;
  v44 = sub_197616530();
  OUTLINED_FUNCTION_2_40();
  swift_getWitnessTable();
  v59 = v44;
  v45 = sub_197616770();
  if (v45)
  {

    goto LABEL_10;
  }

  v57 = &v56;
  MEMORY[0x1EEE9AC00](v45);
  v56 = v51;
  v52 = a28;
  v53 = a29;
  v54 = v60;
  v55 = v68;
  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  sub_1976163C0();
  if ((v67 & 0x100000000) != 0)
  {
    sub_197615C90();
  }

  v46 = v66;
  v59 = v38 + v66;
  if (__OFADD__(v38, v66))
  {
    __break(1u);
  }

  else
  {
    v47 = sub_1976164E0();

    if (v47 != v46 || v59 >= v39)
    {
      goto LABEL_10;
    }

    if (!__OFSUB__(v39, v59))
    {
      if (v39 - v59 >= v46)
      {
        v49 = v46;
      }

      else
      {
        v49 = v39 - v59;
      }

      static PersistentModel.forEach(in:batchSize:fetchLimit:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:resetsContext:_:_:)(v58, v49, 0, v39, 0, v59, 0, BYTE4(v62) & 1, v68, a28, a29, v50, v51[0], v51[1], v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_19760C480(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[1] = a4;
  v9 = sub_197616860();
  v22[0] = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v22 - v11;
  v13 = *(a6 - 8);
  v14 = MEMORY[0x1EEE9AC00](v10);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v22 - v17;
  v19 = v22[3];
  result = a2(a1);
  if (!v19)
  {
    v21 = v22[0];
    if (__swift_getEnumTagSinglePayload(v12, 1, a6) == 1)
    {
      return (*(v21 + 8))(v12, v9);
    }

    else
    {
      (*(v13 + 32))(v18, v12, a6);
      (*(v13 + 16))(v16, v18, a6);
      sub_197616530();
      sub_1976164F0();
      return (*(v13 + 8))(v18, a6);
    }
  }

  return result;
}

uint64_t sub_19760C6A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v27 = a4;
  v28 = a2;
  v26 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355A0, &qword_197622258);
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v8 = &v26 - v7;
  v9 = sub_197615800();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = sub_197615F50();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_1976157F0();
  v30 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  sub_197615820();
  v32 = a3;
  v33 = v27;
  KeyPath = swift_getKeyPath();
  sub_19760D858(v12, KeyPath, v9, v13, WitnessTable);

  (*(v10 + 8))(v12, v9);
  sub_197615810();
  v19 = swift_getWitnessTable();
  v20 = sub_19760D290();
  v21 = sub_19760D2F4(&qword_1ED816C88, MEMORY[0x1E697BC90], MEMORY[0x1E697BCA8]);
  v22 = v29;
  v37 = v15;
  v38 = v29;
  v39 = v19;
  v40 = v20;
  v41 = v21;
  a5[3] = sub_1976157B0();
  v36 = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  v24 = sub_197595A48();
  v34 = v23;
  v35 = v24;
  a5[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_0(a5);
  sub_1976156F0();
  (*(v31 + 8))(v8, v22);
  return (*(v30 + 8))(v17, v15);
}

void static PersistentModel.get(in:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_20();
  v46 = v24;
  v48 = v25;
  OUTLINED_FUNCTION_11_22();
  OUTLINED_FUNCTION_16_2();
  v26 = sub_197616860();
  OUTLINED_FUNCTION_0();
  v28 = v27;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_42_4();
  v47 = sub_197615DA0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_0_49();
  v32 = MEMORY[0x1EEE9AC00](v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_53_1();
  v34 = MEMORY[0x1EEE9AC00](v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_16_17();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_16_17();
  v37 = MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_45_1(v37, v38, v39, v40, v41, v42, v43, v44, v45);
  (*(v28 + 16))(v23, v46, v26);
  sub_19760A92C();
  OUTLINED_FUNCTION_27_9();
  sub_197615D90();
  swift_getKeyPath();
  KeyPathAccessible.with<A>(_:_:)();

  swift_getKeyPath();
  OUTLINED_FUNCTION_47_1();
  KeyPathAccessible.with<A>(_:_:)();

  swift_getKeyPath();
  KeyPathAccessible.with<A>(_:_:)();

  swift_getKeyPath();
  KeyPathAccessible.with<A>(_:_:)();

  swift_getKeyPath();
  KeyPathAccessible.with<A>(_:_:)();

  swift_getKeyPath();
  KeyPathAccessible.with<A>(_:_:)();

  sub_1975F75B8(v48, v47);
  if (!v22)
  {
    Array.first<A>(of:)(a21, &v49);
  }

  OUTLINED_FUNCTION_19_0();
}

void static PersistentModel.getOrCreate(in:includePendingChanges:relationshipPaths:sortBy:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_20();
  v57 = v23;
  v25 = v24;
  v50 = v27;
  v51 = v26;
  v52 = v28;
  v54 = v29;
  v55 = v30;
  v53 = v31;
  v32 = OUTLINED_FUNCTION_11_22();
  v33 = sub_197616860();
  OUTLINED_FUNCTION_5_2(v33);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_42_4();
  v58 = sub_197615DA0();
  OUTLINED_FUNCTION_0();
  v56 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_0_49();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_15_16();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_17_16();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_53_1();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v50 - v41;
  OUTLINED_FUNCTION_18();
  (*(v43 + 16))(v22, v52, v32);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v32);
  sub_19760A92C();
  OUTLINED_FUNCTION_27_9();
  sub_197615D90();
  v65 = v25;
  v66 = a21;
  swift_getKeyPath();
  v68 = 1;
  v69 = 0;
  KeyPathAccessible.with<A>(_:_:)();

  v63 = v25;
  v64 = a21;
  swift_getKeyPath();
  LOBYTE(v68) = v53;
  KeyPathAccessible.with<A>(_:_:)();

  v61 = v25;
  v62 = a21;
  swift_getKeyPath();
  OUTLINED_FUNCTION_40_2(v55);
  KeyPathAccessible.with<A>(_:_:)();

  v59 = v25;
  v60 = a21;
  swift_getKeyPath();
  OUTLINED_FUNCTION_40_2(v57);
  KeyPathAccessible.with<A>(_:_:)();

  v47 = sub_197615C80();
  if (v21)
  {
    (*(v56 + 8))(v42, v58);
  }

  else
  {
    v48 = v56;
    v68 = v47;
    OUTLINED_FUNCTION_42_4();
    sub_197616530();
    OUTLINED_FUNCTION_2_40();
    swift_getWitnessTable();
    sub_197616760();

    if (!v67)
    {
      v51(v49);
      sub_197615CD0();
    }

    (*(v48 + 8))(v42, v58);
  }

  OUTLINED_FUNCTION_19_0();
}

unint64_t sub_19760D290()
{
  result = qword_1ED816D10;
  if (!qword_1ED816D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF355A0, &qword_197622258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816D10);
  }

  return result;
}

uint64_t sub_19760D2F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Platform.System.name.getter()
{
  result = 5459817;
  switch(*v0)
  {
    case 1:
      result = 0x534F63616DLL;
      break;
    case 2:
      result = 1397716596;
      break;
    case 3:
      result = 0x534F6E6F69736976;
      break;
    case 4:
      result = 0x534F6863746177;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static Platform.current.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED817298 != -1)
  {
    result = swift_once();
  }

  v2 = byte_1ED8172A2;
  v3 = byte_1ED8172A3;
  v4 = byte_1ED8172A4;
  v5 = byte_1ED8172A5;
  *a1 = unk_1ED8172A0;
  *(a1 + 2) = v2;
  *(a1 + 3) = v3;
  *(a1 + 4) = v4;
  *(a1 + 5) = v5;
  return result;
}

uint64_t sub_19760D4E8()
{
  v1 = *v0;
  sub_197617190();
  MEMORY[0x19A8E3940](v1);
  return sub_1976171F0();
}

unint64_t sub_19760D534()
{
  result = qword_1EAF356F0;
  if (!qword_1EAF356F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF356F0);
  }

  return result;
}

unint64_t sub_19760D58C()
{
  result = qword_1EAF356F8;
  if (!qword_1EAF356F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF356F8);
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

uint64_t getEnumTagSinglePayload for Platform(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 6))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 2);
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

uint64_t storeEnumTagSinglePayload for Platform(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 2) = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Platform.Device(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Platform.System(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t static Predicate.conjunction(_:_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
  if (a3 == 1)
  {
    swift_checkMetadataState();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_0_50();
    while (a3 != v7)
    {
      OUTLINED_FUNCTION_1_49(v6, v7);
    }

    swift_getTupleTypeMetadata();
  }

  sub_197615AD0();
  return sub_1976163A0();
}

uint64_t static Predicate.comparison<A>(_:value:comparison:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a4 != 1)
  {
    MEMORY[0x1EEE9AC00](a1);
    OUTLINED_FUNCTION_0_50();
    while (v10 != v11)
    {
      OUTLINED_FUNCTION_1_49(v9, v11);
    }

    swift_getTupleTypeMetadata();
  }

  return sub_197615AE0();
}

uint64_t static Predicate.conjunction(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v23 = a3;
  if (a2 == 1)
  {
    TupleTypeMetadata = swift_checkMetadataState();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    OUTLINED_FUNCTION_0_50();
    while (a2 != v8)
    {
      OUTLINED_FUNCTION_1_49(v7, v8);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v28[7] = TupleTypeMetadata;
  v9 = sub_197615AD0();
  v10 = sub_197616860();
  v25 = &v22;
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  v24 = &v22;
  v22 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v22 - v15;
  v28[6] = a1;
  v17 = sub_197616530();
  WitnessTable = swift_getWitnessTable();
  v19 = Sequence.removeNil<A>()(v17, v9, WitnessTable);
  v28[5] = v19;
  sub_197616530();
  swift_getWitnessTable();
  sub_197616760();
  if (__swift_getEnumTagSinglePayload(v14, 1, v9) == 1)
  {
    (*(v11 + 8))(v14, v10);

    return sub_197615AB0();
  }

  else
  {
    v21 = v22;
    (*(v22 + 32))(v16, v14, v9);
    v27 = v19;
    v28[3] = sub_197616940();
    v28[4] = swift_getWitnessTable();
    v28[0] = swift_allocObject();
    sub_197616780();
    static Predicate.conjunction(_:_:)(v16, v28, a2, v23);
    (*(v21 + 8))(v16, v9);
    return __swift_destroy_boxed_opaque_existential_0Tm(v28);
  }
}

uint64_t sub_19760DDB8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v40 = a4;
  v41 = a8;
  v35[3] = a2;
  v35[1] = a1;
  v38 = a9;
  v36 = a10;
  v37 = a11;
  v13 = sub_1976157C0();
  v39 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v35 - v15;
  if (a5 == 1)
  {
    swift_checkMetadataState();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v14);
    v18 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; a5 != i; ++i)
    {
      *&v18[8 * i] = *((a6 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    swift_getTupleTypeMetadata();
  }

  v20 = sub_197615800();
  v35[4] = v35;
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v35 - v22;
  swift_getWitnessTable();
  v24 = sub_1976157F0();
  v35[2] = v35;
  v35[0] = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v35 - v25;
  sub_197615820();
  sub_197615700();
  (*(v21 + 8))(v23, v20);
  sub_197615810();
  WitnessTable = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v47 = v24;
  v48 = v13;
  v49 = WitnessTable;
  v50 = v28;
  v51 = v41;
  v29 = sub_1976156D0();
  v30 = v16;
  v31 = v38;
  v38[3] = v29;
  v46 = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  v44 = v36;
  v45 = v37;
  v33 = swift_getWitnessTable();
  v42 = v32;
  v43 = v33;
  v31[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_0(v31);
  sub_197615760();
  (*(v39 + 8))(v30, v13);
  return (*(v35[0] + 8))(v26, v24);
}

uint64_t sub_19760E21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v13 = a4;
  v14 = a1;
  v15 = a2;
  if (a3 == 1)
  {
    TupleTypeMetadata = *(a4 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
    for (i = 0; v5 != i; ++i)
    {
      *&v8[8 * i] = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v16 = TupleTypeMetadata;
  return sub_197615AE0();
}

uint64_t sub_19760E35C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a6@<X8>)
{
  v46 = a3;
  v42 = a2;
  v48 = a6;
  if (a4 == 1)
  {
    TupleTypeMetadata = swift_checkMetadataState();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; v7 != i; ++i)
    {
      *&v10[8 * i] = *((v8 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v12 = sub_197615800();
  v40 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  v65[1] = TupleTypeMetadata;
  v15 = sub_197615AD0();
  v16 = sub_1976157C0();
  v47 = &v36;
  v50 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  v65[0] = v12;
  WitnessTable = swift_getWitnessTable();
  v37 = swift_getWitnessTable();
  v59 = 1;
  v60 = v16;
  v61 = v65;
  v62 = WitnessTable;
  v38 = WitnessTable;
  v63 = &v64;
  v64 = v37;
  v20 = sub_1976156B0();
  v45 = &v36;
  v44 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v49 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = &v36;
  MEMORY[0x1EEE9AC00](v21);
  v41 = &v36 - v23;
  v39 = v15;
  sub_197615810();
  sub_197615820();
  v58 = v14;
  sub_197615750();
  v24 = *(v50 + 8);
  v50 += 8;
  v24(v18, v16);
  v25 = *(v40 + 8);
  v25(v14, v12);
  sub_197615810();
  sub_197615820();
  v57 = v14;
  sub_197615750();
  v24(v18, v16);
  v25(v14, v12);
  v26 = swift_getWitnessTable();
  v59 = v20;
  v60 = v20;
  v61 = v26;
  v62 = v26;
  v27 = sub_1976156E0();
  v28 = v48;
  v48[3] = v27;
  v29 = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  v55 = v29;
  v56 = v30;
  v31 = swift_getWitnessTable();
  v59 = swift_getWitnessTable();
  v53 = v31;
  v54 = &v59;
  v51 = swift_getWitnessTable();
  v52 = v51;
  v28[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_0(v28);
  v32 = v41;
  v33 = v49;
  sub_197615780();
  v34 = *(v44 + 8);
  v34(v33, v20);
  return (v34)(v32, v20);
}

uint64_t sub_19760E968(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_197616930();
    swift_retain_n();
    sub_197616200();

    sub_197615850();
  }

  return 1;
}

uint64_t sub_19760EA00()
{
  swift_getKeyPath();

  sub_197615850();

  swift_getKeyPath();

  sub_197615850();

  swift_getKeyPath();

  sub_197615850();
}

uint64_t sub_19760EAF0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = sub_197615870();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  sub_197615840();
  sub_19758493C(a2, v11);
  v12 = *(v6 + 8);
  v12(v9, v5);
  a3(a2, a2);
  return (v12)(v11, v5);
}

uint64_t sub_19760EC30@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_197616BE0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_197615870();
  (*(*(v9 - 8) + 16))(a2, v3, v9);
  v12 = a2;
  sub_197584B7C();
  sub_197616EA0();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_19760ED74(uint64_t a1, void *a2)
{
  swift_getMetatypeMetadata();

  sub_197616220();

  sub_197615850();

  return 1;
}

uint64_t static PredicateCoder.encode<A>(_:fallback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = static PredicateCoder.encode<A>(_:)(a1, a3);
  if (v3)
  {
    if (qword_1ED815ED8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for logger(0);
    __swift_project_value_buffer(v7, qword_1ED815EE0);
    sub_197616A20();
    MEMORY[0x19A8E2A50](0x7461636964657250, 0xEF287265646F4365);
    sub_197615AD0();
    swift_getWitnessTable();
    sub_197616EC0();
    MEMORY[0x19A8E2A50](0xD000000000000023, 0x80000001976268B0);
    swift_getErrorValue();
    sub_197616EB0();
    sub_197558864(0, 0xE000000000000000, v8);

    return static PredicateCoder.encode<A>(_:)(a2, a3);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PredicateCoder(_BYTE *result, int a2, int a3)
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

uint64_t RawRepresentable.init(raw:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  sub_197616860();
  OUTLINED_FUNCTION_14();
  v29 = v8;
  v30 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v31 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_197616860();
  OUTLINED_FUNCTION_14();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  OUTLINED_FUNCTION_14();
  v19 = v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v29 - v24;
  v32 = a1;
  sub_1975674F0(a1, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34340, &unk_19761C8E0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v17, 0, 1, AssociatedTypeWitness);
    (*(v19 + 32))(v25, v17, AssociatedTypeWitness);
    (*(v19 + 16))(v23, v25, AssociatedTypeWitness);
    sub_1976163F0();
    sub_19755643C(v32);
    (*(v19 + 8))(v25, AssociatedTypeWitness);
    if (!__swift_getEnumTagSinglePayload(v10, 1, a2))
    {
      v27 = v33;
      (*(*(a2 - 8) + 32))(v33, v10, a2);
      v26 = 0;
      return __swift_storeEnumTagSinglePayload(v27, v26, 1, a2);
    }

    (*(v29 + 8))(v10, v30);
    v26 = 1;
  }

  else
  {
    v26 = 1;
    __swift_storeEnumTagSinglePayload(v17, 1, 1, AssociatedTypeWitness);
    sub_19755643C(v32);
    (*(v14 + 8))(v17, v12);
  }

  v27 = v33;
  return __swift_storeEnumTagSinglePayload(v27, v26, 1, a2);
}

uint64_t static RegexComponent<>.uuidString.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED816B78 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34688, &qword_197619420);
  v3 = __swift_project_value_buffer(v2, qword_1ED816B80);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_19760F4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_19760F5B0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_19760F5F0(uint64_t result, int a2, int a3)
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

uint64_t Sequence.asyncCompactMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_20_13(a1, a2, a3, a4, a5);
  v7 = sub_197616860();
  v5[9] = v7;
  OUTLINED_FUNCTION_20_0(v7);
  v5[10] = v8;
  v5[11] = OUTLINED_FUNCTION_12_18();
  v5[12] = *(a4 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = OUTLINED_FUNCTION_7_22();
  OUTLINED_FUNCTION_0();
  v5[16] = v9;
  v5[17] = OUTLINED_FUNCTION_12_18();
  sub_197616860();
  v5[18] = OUTLINED_FUNCTION_12_18();
  OUTLINED_FUNCTION_14();
  v5[19] = v10;
  v5[20] = OUTLINED_FUNCTION_12_18();
  v11 = OUTLINED_FUNCTION_7_22();
  v5[21] = v11;
  OUTLINED_FUNCTION_20_0(v11);
  v5[22] = v12;
  v5[23] = OUTLINED_FUNCTION_12_18();
  OUTLINED_FUNCTION_12_0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_19760F878()
{
  v1 = sub_1976164B0();
  v2 = OUTLINED_FUNCTION_10_23(v1);
  v3(v2);
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_17_17();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_9_24(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_6_21();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_8_27();
    v7(v6);
    v8 = *(v0 + 16);

    OUTLINED_FUNCTION_22_14();
    v13 = v8;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_21_15();
    v10(v9);
    OUTLINED_FUNCTION_0_51();
    swift_task_alloc();
    OUTLINED_FUNCTION_13_16();
    *(v0 + 192) = v11;
    *v11 = v12;
    v13 = OUTLINED_FUNCTION_4_42(v11);
  }

  return v14(v13);
}

uint64_t sub_19760FA30()
{
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v2 + 200) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_12_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_19760FB40()
{
  v1 = v0[11];
  v2 = v0[6];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  if (EnumTagSinglePayload == 1)
  {
    v7 = v0[9];
    v8 = v0[10];
    (*(v5 + 8))(v0[17], v0[15]);
    (*(v8 + 8))(v1, v7);
  }

  else
  {
    v10 = v0[13];
    v9 = v0[14];
    v11 = v0[12];
    (*(v11 + 32))(v9, v1, v2);
    (*(v11 + 16))(v10, v9, v2);
    sub_197616530();
    sub_1976164F0();
    (*(v11 + 8))(v9, v2);
    (*(v5 + 8))(v4, v6);
  }

  OUTLINED_FUNCTION_17_17();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_9_24(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_6_21();
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_8_27();
    v15(v14);
    v16 = v0[2];

    OUTLINED_FUNCTION_22_14();
    v21 = v16;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_21_15();
    v18(v17);
    OUTLINED_FUNCTION_0_51();
    swift_task_alloc();
    OUTLINED_FUNCTION_13_16();
    v0[24] = v19;
    *v19 = v20;
    v21 = OUTLINED_FUNCTION_4_42(v19);
  }

  return v22(v21);
}

uint64_t sub_19760FDC0()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t Sequence.mapSet<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v7 = a6;
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = a1;
  v15[7] = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C80, &qword_19761BF20);
  v12 = sub_197585E28(sub_1976119FC, v15, a3, a4, v11, a5, MEMORY[0x1E69E7288], &v16);
  if (!v6)
  {
    v16 = v12;
    sub_197616530();
    OUTLINED_FUNCTION_0_2();
    swift_getWitnessTable();
    Sequence.asSet<>()();
    v7 = v13;
  }

  return v7;
}

uint64_t Sequence.removeNil<A>()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  v3 = sub_197616370();

  return v3;
}

uint64_t sub_197610058(uint64_t a1, __int128 *a2)
{
  type metadata accessor for CoreTip.ConstellationAction(0);
  OUTLINED_FUNCTION_0();
  v20 = v4;
  v21 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v7 = (v6 - v5);
  v33 = MEMORY[0x1E69E7CC0];
  sub_1975D1FE4(0, 0, 0);
  v8 = 0;
  v9 = v33;
  v22 = *(a1 + 16);
  v10 = (a1 + 32);
  while (v22 != v8)
  {
    memcpy(v29, v10, sizeof(v29));
    memcpy(v31, v10, sizeof(v31));
    v30 = v8;
    v32 = *a2;
    v27 = v32;
    sub_1975B13E4(v29, v28);
    sub_197611B68(&v32, v28);
    v26 = v10;
    MEMORY[0x19A8E2A50](45, 0xE100000000000000);
    v28[0] = v8;
    v11 = sub_197616E80();
    MEMORY[0x19A8E2A50](v11);

    v12 = v27;
    v14 = v31[0];
    v13 = v31[1];
    v24 = v31[2];
    v25 = *(&v27 + 1);
    v15 = v31[3];
    memcpy(v28, v31, sizeof(v28));
    v16 = *(v21 + 32);

    sub_1975D99A0(&v31[4], &v27);
    sub_1975B8790(v28, v7 + v16);
    sub_197611BC4(&v30);
    *v7 = v12;
    v7[1] = v25;
    v7[2] = v14;
    v7[3] = v13;
    v7[4] = v24;
    v7[5] = v15;
    memcpy(v7 + 6, &v31[4], 0x70uLL);
    v33 = v9;
    v18 = *(v9 + 16);
    v17 = *(v9 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_1975D1FE4((v17 > 1), v18 + 1, 1);
      v9 = v33;
    }

    *(v9 + 16) = v18 + 1;
    sub_197611C2C(v7, v9 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v18);
    v10 = v26 + 144;
    ++v8;
  }

  sub_1975AB278(a2);
  return v9;
}

uint64_t sub_197610368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *__return_ptr, uint64_t, uint64_t *, uint64_t, uint64_t))
{
  v24 = a7;
  v25 = a8;
  MEMORY[0x1EEE9AC00](a1);
  (*(v14 + 16))(&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  sub_197616860();
  v23 = a6;
  v27 = a6;
  swift_getWitnessTable();
  result = sub_197616100();
  if (!v8)
  {
    swift_getAssociatedTypeWitness();
    sub_197616530();
    v17 = sub_1975F457C();

    v26 = v17;
    MEMORY[0x1EEE9AC00](v18);
    *(&v22 - 4) = a3;
    *(&v22 - 3) = a4;
    v19 = v23;
    *(&v22 - 2) = a5;
    *(&v22 - 1) = v19;
    v20 = sub_197616530();
    OUTLINED_FUNCTION_0_2();
    WitnessTable = swift_getWitnessTable();
    v25(&v28, v24, &v22 - 6, v20, WitnessTable);

    return v28;
  }

  return result;
}

void Sequence.asSet<>()()
{
  OUTLINED_FUNCTION_15_12();
  v2 = v1;
  OUTLINED_FUNCTION_0();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v9 = *(v4 + 16);
  v9(&v11[-v10], v0, v2);
  swift_getAssociatedTypeWitness();
  sub_1976166F0();
  if (!swift_dynamicCast())
  {
    v9(v8, v0, v2);
    sub_197616700();
  }

  OUTLINED_FUNCTION_14_9();
}

uint64_t Sequence.asArray<>()(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_0();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = *(v6 + 16);
  v11(v14 - v12, v3, a1);
  swift_getAssociatedTypeWitness();
  sub_197616530();
  if (swift_dynamicCast())
  {
    return v14[1];
  }

  v11(v10, v3, a1);
  return sub_197616540();
}

uint64_t Sequence.asDictionary<A, B>()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  (*(v10 + 16))(v9 - v8, v5, a1);
  return sub_1976160C0();
}

uint64_t Sequence.asyncMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_20_13(a1, a2, a3, a4, a5);
  v5[9] = OUTLINED_FUNCTION_12_18();
  v5[10] = OUTLINED_FUNCTION_7_22();
  OUTLINED_FUNCTION_0();
  v5[11] = v6;
  v5[12] = OUTLINED_FUNCTION_12_18();
  sub_197616860();
  v5[13] = OUTLINED_FUNCTION_12_18();
  OUTLINED_FUNCTION_14();
  v5[14] = v7;
  v5[15] = OUTLINED_FUNCTION_12_18();
  v8 = OUTLINED_FUNCTION_7_22();
  v5[16] = v8;
  OUTLINED_FUNCTION_20_0(v8);
  v5[17] = v9;
  v5[18] = OUTLINED_FUNCTION_12_18();
  OUTLINED_FUNCTION_12_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_197610B34()
{
  v1 = sub_1976164B0();
  v2 = OUTLINED_FUNCTION_10_23(v1);
  v3(v2);
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_17_17();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_9_24(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_6_21();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_11_23();
    v7(v6);
    v8 = *(v0 + 16);

    OUTLINED_FUNCTION_22_14();
    v15 = v8;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_19_13();
    v11(v10);
    OUTLINED_FUNCTION_0_51();
    v17 = v12;
    swift_task_alloc();
    OUTLINED_FUNCTION_13_16();
    *(v0 + 152) = v13;
    *v13 = v14;
    v15 = OUTLINED_FUNCTION_5_28(v13);
    v9 = v17;
  }

  return v9(v15);
}

uint64_t sub_197610CD8()
{
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v2 + 160) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_12_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_197610DE8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  sub_197616530();
  sub_1976164F0();
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_17_17();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_9_24(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_6_21();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_11_23();
    v7(v6);
    v8 = v0[2];

    OUTLINED_FUNCTION_22_14();
    v15 = v8;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_19_13();
    v11(v10);
    OUTLINED_FUNCTION_0_51();
    v17 = v12;
    swift_task_alloc();
    OUTLINED_FUNCTION_13_16();
    v0[19] = v13;
    *v13 = v14;
    v15 = OUTLINED_FUNCTION_5_28(v13);
    v9 = v17;
  }

  return v9(v15);
}

uint64_t sub_197610F98()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_197611074(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a2();
  if (!v4 && (result & 1) != 0)
  {
    return a4(a1);
  }

  return result;
}

uint64_t sub_19761114C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *), void (*a6)(uint64_t, uint64_t, uint64_t), uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a1;
  v14[6] = sub_197585E28(a5, v14, a2, *(v10 + *MEMORY[0x1E69E77B0] + 8), MEMORY[0x1E69E73E0], a3, MEMORY[0x1E69E7410], a8);
  v11 = sub_197616530();
  OUTLINED_FUNCTION_0_2();
  WitnessTable = swift_getWitnessTable();
  a6(v11, WitnessTable, a4);
}

uint64_t sub_197611270(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(char *, char *), void (*a8)(uint64_t, uint64_t, uint64_t))
{
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = a1;
  v13[7] = a2;
  v13[8] = sub_197585E28(a7, v13, a3, a4, MEMORY[0x1E69E73E0], a5, MEMORY[0x1E69E7410], a8);
  v10 = sub_197616530();
  OUTLINED_FUNCTION_0_2();
  WitnessTable = swift_getWitnessTable();
  a8(v10, WitnessTable, a6);
}

void Sequence.sum<>()()
{
  OUTLINED_FUNCTION_15_12();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v12 - v10;
  sub_197616C40();
  v12[2] = v5;
  v12[3] = v3;
  v12[4] = v1;
  sub_1976163A0();
  (*(v8 + 8))(v11, AssociatedTypeWitness);
  OUTLINED_FUNCTION_14_9();
}

void Sequence.sum<A>(_:)()
{
  OUTLINED_FUNCTION_15_12();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(*v6 + *MEMORY[0x1E69E77B0] + 8);
  OUTLINED_FUNCTION_14();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v14 - v12;
  sub_197616C40();
  v14[2] = v5;
  v14[3] = v3;
  v14[4] = v1;
  v14[5] = v7;
  sub_1976163A0();
  (*(v10 + 8))(v13, v8);
  OUTLINED_FUNCTION_14_9();
}

{
  OUTLINED_FUNCTION_15_12();
  v1 = v0;
  OUTLINED_FUNCTION_14();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  v7 = v6 - v5;
  sub_197616C40();
  sub_1976163A0();
  (*(v3 + 8))(v7, v1);
  OUTLINED_FUNCTION_14_9();
}

uint64_t sub_19761162C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v11 - v8;
  swift_getAtKeyPath();
  sub_197616C30();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_19761187C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13(v12);
  sub_197616C30();
  return (*(v9 + 8))(v11, a6);
}

BOOL sub_197611980(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  v5 = sub_1976164E0();
  return v5 < sub_1976164E0();
}

uint64_t sub_1976119FC(uint64_t a1, void *a2)
{
  result = (*(v2 + 48))(a1);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_197611BC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35788, &qword_197622DB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_197611C2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreTip.ConstellationAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_197611CE8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_197616290();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      sub_197616340();
      OUTLINED_FUNCTION_0_52();
      return OUTLINED_FUNCTION_1_52();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_197611D9C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = OUTLINED_FUNCTION_2_41(result, a2);
    if (v3 >= result)
    {
      sub_197612390(result, v3, v2);
      OUTLINED_FUNCTION_0_52();
      return OUTLINED_FUNCTION_1_52();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_197611DF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1975D2064();
    v2 = 32;
    do
    {
      v3 = sub_197616250();
      v5 = v4;
      v6 = *(v9 + 16);
      if (v6 >= *(v9 + 24) >> 1)
      {
        sub_1975D2064();
      }

      *(v9 + 16) = v6 + 1;
      v7 = v9 + 16 * v6;
      *(v7 + 32) = v3;
      *(v7 + 40) = v5;
      ++v2;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35790, &qword_197622DC8);
  sub_197559AAC(&qword_1EAF35798, &qword_1EAF35790, &qword_197622DC8, MEMORY[0x1E69E6328]);
  return sub_197616320();
}

void sub_197611F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1975607A8();
  v5 = sub_1976168A0();
  v6 = 0;
  v19 = *(v5 + 16);
  v7 = (v5 + 40);
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v19 == v6)
    {

      sub_197612158(1, v8);
      return;
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    v9 = *(v7 - 1);
    v10 = *v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A38, &qword_19761B660);
    inited = swift_initStackObject();
    *(inited + 32) = v9;
    *(inited + 16) = xmmword_197618C00;
    *(inited + 40) = v10;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    v12 = *(v8 + 16);
    if (__OFADD__(v12, 2))
    {
      goto LABEL_13;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || (v13 = *(v8 + 24) >> 1, v13 < v12 + 2))
    {
      sub_1975BB398();
      v8 = v14;
      v13 = *(v14 + 24) >> 1;
    }

    if (v13 - *(v8 + 16) < 2)
    {
      goto LABEL_14;
    }

    swift_arrayInitWithCopy();

    v15 = *(v8 + 16);
    v16 = __OFADD__(v15, 2);
    v17 = v15 + 2;
    if (v16)
    {
      goto LABEL_15;
    }

    *(v8 + 16) = v17;
    v7 += 2;
    ++v6;
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_197612158(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  if (result)
  {
    v34 = 0;
    v4 = 0;
    v36 = *(a2 + 16);
    v5 = a2 + 40;
    v6 = MEMORY[0x1E69E7CC0];
    v35 = MEMORY[0x1E69E7CC0];
    for (i = a2 + 40; ; v5 = i)
    {
      for (j = (v5 + 16 * v4); ; j += 2)
      {
        if (v36 == v4)
        {

          return;
        }

        if (v4 >= *(a2 + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        v9 = *(j - 1);
        v8 = *j;
        v10 = *(v6 + 16);
        if (v10 >= result)
        {
          break;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_197553D0C(0, v10 + 1, 1, v11, v12, v13, v14);
        }

        v16 = *(v6 + 16);
        v15 = *(v6 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_197553D0C(v15 > 1, v16 + 1, 1, v11, v12, v13, v14);
        }

        *(v6 + 16) = v16 + 1;
        v17 = v6 + 16 * v16;
        *(v17 + 32) = v9;
        *(v17 + 40) = v8;
        ++v4;
      }

      if (v34 >= v10)
      {
        goto LABEL_29;
      }

      v18 = v6 + 16 * v34;
      v19 = *(v18 + 32);
      v20 = *(v18 + 40);

      v21 = v35;
      v32 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_197553D0C(0, *(v35 + 16) + 1, 1, v22, v23, v24, v25);
        v21 = v35;
      }

      v27 = *(v21 + 16);
      v26 = *(v21 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_197553D0C(v26 > 1, v27 + 1, 1, v22, v23, v24, v25);
        v21 = v35;
      }

      *(v21 + 16) = v27 + 1;
      v35 = v21;
      v28 = v21 + 16 * v27;
      *(v28 + 32) = v32;
      *(v28 + 40) = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1976124B0();
        v6 = v29;
      }

      if (v34 >= *(v6 + 16))
      {
        break;
      }

      v30 = v6 + 16 * v34;
      ++v4;
      *(v30 + 32) = v9;
      *(v30 + 40) = v8;

      if ((v34 + 1) < result)
      {
        v31 = v34 + 1;
      }

      else
      {
        v31 = 0;
      }

      v34 = v31;
    }

    goto LABEL_30;
  }
}

unint64_t sub_197612390(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_197612444(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t static Task.sleep<>(for:)()
{
  OUTLINED_FUNCTION_1();
  v0[2] = v1;
  v2 = sub_197616B80();
  v0[3] = v2;
  v0[4] = *(v2 - 8);
  v0[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197612584, 0, 0);
}

uint64_t sub_197612584()
{
  OUTLINED_FUNCTION_8_0();
  v1 = Double.seconds.getter(*(v0 + 16));
  sub_1975877EC(v1);
  sub_197617290();
  v2 = sub_1976172B0();
  v4 = v3;
  sub_197617130();
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_1976126AC;

  return sub_197612968(v2, v4, 0, 0, 1);
}

uint64_t sub_1976126AC()
{
  OUTLINED_FUNCTION_8_0();
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v8 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v8;
  *(v8 + 56) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_197612844, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_3();

    return v6();
  }
}

uint64_t sub_197612844()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t Task.finish()()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = swift_task_alloc();
  *(v0 + 16) = v11;
  *v11 = v0;
  v11[1] = sub_1975831B8;

  return MEMORY[0x1EEE6DA20](v10, v8, v6, v4, v2);
}

uint64_t sub_197612968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_197616B60();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_197612A68, 0, 0);
}

uint64_t sub_197612A68()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_197616B80();
  v5 = sub_1975B9FFC(&qword_1ED815FC8, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_197617100();
  sub_1975B9FFC(&qword_1ED815FD0, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_197616B90();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_197612BF8;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_197612BF8()
{
  OUTLINED_FUNCTION_8_0();
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v8 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v8;
  *(v8 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_197612DA4, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_3();

    return v6();
  }
}

uint64_t sub_197612DA4()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_3();

  return v0();
}

double static Double.years<A>(_:)()
{
  OUTLINED_FUNCTION_1_53();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_0_53(v1, v14);
  v3(v2);
  OUTLINED_FUNCTION_3_38();
  if (sub_1976168F0() < 65)
  {
    OUTLINED_FUNCTION_18_0();
    v9 = sub_197616900();
    OUTLINED_FUNCTION_3_38();
    v10 = sub_1976168E0();
    v11 = OUTLINED_FUNCTION_2_42();
    v12(v11);
    if (v9)
    {
      v8 = v10;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    sub_1975F8894();
    v4 = sub_1975F88E8();
    OUTLINED_FUNCTION_4_43(v4, v5, MEMORY[0x1E69E63B0]);
    v6 = OUTLINED_FUNCTION_2_42();
    v7(v6);
    v8 = v15;
  }

  return OUTLINED_FUNCTION_6_22(v8, 31536000.0);
}

double static Double.seconds<A>(_:)()
{
  OUTLINED_FUNCTION_1_53();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_0_53(v1, v13);
  v3(v2);
  OUTLINED_FUNCTION_3_38();
  if (sub_1976168F0() < 65)
  {
    OUTLINED_FUNCTION_18_0();
    v9 = sub_197616900();
    OUTLINED_FUNCTION_3_38();
    v10 = sub_1976168E0();
    v11 = OUTLINED_FUNCTION_2_42();
    v12(v11);
    if (v9)
    {
      return v10;
    }

    else
    {
      return v10;
    }
  }

  else
  {
    sub_1975F8894();
    v4 = sub_1975F88E8();
    OUTLINED_FUNCTION_4_43(v4, v5, MEMORY[0x1E69E63B0]);
    v6 = OUTLINED_FUNCTION_2_42();
    v7(v6);
    return v14;
  }
}

double Double.milliseconds.getter(int8x16_t a1, int8x16_t a2)
{
  *a2.i64 = *a1.i64 - trunc(*a1.i64);
  v2.f64[0] = NAN;
  v2.f64[1] = NAN;
  return *vbslq_s8(vnegq_f64(v2), a2, a1).i64 * 1000.0;
}

double static Double.minutes<A>(_:)()
{
  OUTLINED_FUNCTION_1_53();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_0_53(v1, v14);
  v3(v2);
  OUTLINED_FUNCTION_3_38();
  if (sub_1976168F0() < 65)
  {
    OUTLINED_FUNCTION_18_0();
    v9 = sub_197616900();
    OUTLINED_FUNCTION_3_38();
    v10 = sub_1976168E0();
    v11 = OUTLINED_FUNCTION_2_42();
    v12(v11);
    if (v9)
    {
      v8 = v10;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    sub_1975F8894();
    v4 = sub_1975F88E8();
    OUTLINED_FUNCTION_4_43(v4, v5, MEMORY[0x1E69E63B0]);
    v6 = OUTLINED_FUNCTION_2_42();
    v7(v6);
    v8 = v15;
  }

  return OUTLINED_FUNCTION_6_22(v8, 60.0);
}

double static Double.hours<A>(_:)()
{
  OUTLINED_FUNCTION_1_53();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_0_53(v1, v14);
  v3(v2);
  OUTLINED_FUNCTION_3_38();
  if (sub_1976168F0() < 65)
  {
    OUTLINED_FUNCTION_18_0();
    v9 = sub_197616900();
    OUTLINED_FUNCTION_3_38();
    v10 = sub_1976168E0();
    v11 = OUTLINED_FUNCTION_2_42();
    v12(v11);
    if (v9)
    {
      v8 = v10;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    sub_1975F8894();
    v4 = sub_1975F88E8();
    OUTLINED_FUNCTION_4_43(v4, v5, MEMORY[0x1E69E63B0]);
    v6 = OUTLINED_FUNCTION_2_42();
    v7(v6);
    v8 = v15;
  }

  return OUTLINED_FUNCTION_6_22(v8, 3600.0);
}

double static Double.days<A>(_:)()
{
  OUTLINED_FUNCTION_1_53();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_0_53(v1, v14);
  v3(v2);
  OUTLINED_FUNCTION_3_38();
  if (sub_1976168F0() < 65)
  {
    OUTLINED_FUNCTION_18_0();
    v9 = sub_197616900();
    OUTLINED_FUNCTION_3_38();
    v10 = sub_1976168E0();
    v11 = OUTLINED_FUNCTION_2_42();
    v12(v11);
    if (v9)
    {
      v8 = v10;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    sub_1975F8894();
    v4 = sub_1975F88E8();
    OUTLINED_FUNCTION_4_43(v4, v5, MEMORY[0x1E69E63B0]);
    v6 = OUTLINED_FUNCTION_2_42();
    v7(v6);
    v8 = v15;
  }

  return OUTLINED_FUNCTION_6_22(v8, 86400.0);
}

double static Double.weeks<A>(_:)()
{
  OUTLINED_FUNCTION_1_53();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_0_53(v1, v14);
  v3(v2);
  OUTLINED_FUNCTION_3_38();
  if (sub_1976168F0() < 65)
  {
    OUTLINED_FUNCTION_18_0();
    v9 = sub_197616900();
    OUTLINED_FUNCTION_3_38();
    v10 = sub_1976168E0();
    v11 = OUTLINED_FUNCTION_2_42();
    v12(v11);
    if (v9)
    {
      v8 = v10;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    sub_1975F8894();
    v4 = sub_1975F88E8();
    OUTLINED_FUNCTION_4_43(v4, v5, MEMORY[0x1E69E63B0]);
    v6 = OUTLINED_FUNCTION_2_42();
    v7(v6);
    v8 = v15;
  }

  return OUTLINED_FUNCTION_6_22(v8, 604800.0);
}

TipKitCore::TipDisplayType_optional __swiftcall TipDisplayType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1976134D4()
{
  result = qword_1EAF357A0;
  if (!qword_1EAF357A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF357A0);
  }

  return result;
}

uint64_t sub_197613530@<X0>(uint64_t *a1@<X8>)
{
  result = TipDisplayType.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for TipDisplayType(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

TipKitCore::TipUsageState_optional __swiftcall TipUsageState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 9;
  if (rawValue < 9)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_197613654()
{
  result = qword_1EAF357A8;
  if (!qword_1EAF357A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF357A8);
  }

  return result;
}

uint64_t sub_1976136B0@<X0>(uint64_t *a1@<X8>)
{
  result = TipUsageState.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for TipUsageState(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t TipsError.errorDescription.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_197613810(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_197613860(uint64_t a1, uint64_t a2)
{
  sub_19758BB78();
  v5 = OUTLINED_FUNCTION_0_54();
  v8 = sub_19757F524(v5, v6, v7);

  if (!v8)
  {

    v10 = OUTLINED_FUNCTION_0_54();
    v13 = sub_197613B2C(v10, v11, v12);

    sub_197613CF4(v13);
    [*(v2 + 16) synchronize];
    if (qword_1ED816C98 != -1)
    {
      OUTLINED_FUNCTION_3_2();
      swift_once();
    }

    v14 = type metadata accessor for logger(0);
    __swift_project_value_buffer(v14, qword_1ED816CA0);
    sub_197616A20();

    MEMORY[0x19A8E2A50](a1, a2);
    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
    sub_197558864(0xD000000000000023, 0x8000000197626AB0, v15);
  }

  return result;
}

id sub_1976139C4()
{
  sub_19758BB78();
  v1 = OUTLINED_FUNCTION_0_54();
  v4 = sub_19757F524(v1, v2, v3);

  if (v4)
  {

    v6 = OUTLINED_FUNCTION_0_54();
    v9 = sub_197613BB0(v6, v7, v8);

    sub_197613CF4(v9);
    v10 = *(v0 + 16);

    return [v10 synchronize];
  }

  return result;
}

void *sub_197613A70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = sub_1975BC0A4(*(a1 + 16), 0);
  sub_1975EA294();
  v4 = v3;

  sub_1975A4D3C(v6);
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_197613B2C(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (sub_19757F524(a1, a2, a3))
  {
  }

  else
  {
    v8 = v3;

    sub_197575220(&v7, a1, a2);

    return v8;
  }

  return v3;
}

uint64_t sub_197613BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_19757F524(a1, a2, a3))
  {

    sub_19761479C(a1, a2);
  }

  else
  {
  }

  return a3;
}

void sub_197613C28()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = sub_19758BB78();
    sub_197613A70(v2);

    v3 = sub_197616450();

    v4 = sub_1976161B0();
    [v1 setObject:v3 forKey:v4];
  }
}

void sub_197613CF4(uint64_t a1)
{
  *(v1 + 24) = a1;

  sub_197613C28();
}

uint64_t TipsdUbiquitousStore.__deallocating_deinit()
{
  TipsdUbiquitousStore.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t static TipsdUbiquitousStore.deleteInvalidTips()()
{
  v1 = v0;
  v58 = *MEMORY[0x1E69E9840];
  if (qword_1ED816B18 != -1)
  {
LABEL_34:
    swift_once();
  }

  if (!qword_1ED81D1C0)
  {
    sub_19759228C();
    swift_allocError();
    *v19 = 0xD000000000000030;
    v19[1] = 0x80000001976269F0;
    return swift_willThrow();
  }

  v51 = v1;

  v2 = sub_19758BB78() + 56;
  OUTLINED_FUNCTION_1_40();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  v53 = v8;

  v9 = 0;
  do
  {
    if (!v5)
    {
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v10 >= v7)
        {
        }

        v5 = *(v2 + 8 * v10);
        ++v9;
        if (v5)
        {
          v9 = v10;
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_9:
    v11 = (*(v53 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v12 = v11[1];
    v56 = *v11;
    v57 = v12;
    v13 = qword_1ED816B78;
    v54 = v12;

    if (v13 != -1)
    {
      swift_once();
    }

    v5 &= v5 - 1;
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34688, &qword_197619420);
    v14 = __swift_project_value_buffer(v1, qword_1ED816B80);
    v15 = sub_19756E0EC();
    v16 = sub_19756DDE4();
    v17 = sub_197616160();
  }

  while ((v17 & 1) == 0);
  v49 = v16;
  v50 = v15;
  v54 = v14;

  if (qword_1ED816C98 != -1)
  {
    OUTLINED_FUNCTION_3_2();
    swift_once();
  }

  v20 = type metadata accessor for logger(0);
  __swift_project_value_buffer(v20, qword_1ED816CA0);
  sub_197558864(0xD00000000000002ALL, 0x8000000197626A30, v21);
  v22 = *(v52 + 24);
  v55 = v22;
  v23 = *(v22 + 32);
  v24 = v23 & 0x3F;
  v25 = ((1 << v23) + 63) >> 6;
  isStackAllocationSafe = swift_bridgeObjectRetain_n();
  if (v24 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    v46[1] = v46;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v47 = v25;
    v48 = (v46 - ((8 * v25 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_197614384(0, v25, v48);
    v53 = 0;
    v1 = 0;
    OUTLINED_FUNCTION_1_40();
    v29 = v28 & v27;
    v31 = (v30 + 63) >> 6;
    while (v29)
    {
      v32 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
LABEL_26:
      v35 = v32 | (v1 << 6);
      v36 = (*(v22 + 48) + 16 * v35);
      v37 = v36[1];
      v56 = *v36;
      v57 = v37;

      v38 = sub_197616160();

      if (v38)
      {
        *(v48 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
        if (__OFADD__(v53++, 1))
        {
          __break(1u);
LABEL_30:
          v40 = sub_197614DAC(v48, v47, v53, v22);
          goto LABEL_31;
        }
      }
    }

    v33 = v1;
    while (1)
    {
      v1 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v1 >= v31)
      {
        goto LABEL_30;
      }

      v34 = *(v22 + 56 + 8 * v1);
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        v29 = (v34 - 1) & v34;
        goto LABEL_26;
      }
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v43 = swift_slowAlloc();
  v44 = v51;
  v45 = sub_197614D1C(v43, v25, v22, sub_1976142B8);
  v51 = v44;
  if (v44)
  {
    MEMORY[0x19A8E4300](v43, -1, -1);

    __break(1u);
  }

  else
  {
    v40 = v45;
    MEMORY[0x19A8E4300](v43, -1, -1);
LABEL_31:
    sub_197614A7C(v40);

    v41 = v52;
    sub_197613CF4(v55);
    v42 = *(v41 + 16);
    [v42 synchronize];
  }

  return result;
}

uint64_t sub_1976142B8()
{
  if (qword_1ED816B78 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34688, &qword_197619420);
  __swift_project_value_buffer(v0, qword_1ED816B80);
  sub_19756E0EC();
  sub_19756DDE4();
  return sub_197616160() & 1;
}

uint64_t sub_197614384(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_197619440;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1976143E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF357B0, &qword_1976230E8);
  result = sub_1976169F0();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_197614384(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_197617190();
    sub_197616260();
    result = sub_1976171F0();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void *sub_197614644()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF357B0, &qword_1976230E8);
  v2 = *v0;
  v3 = sub_1976169E0();
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
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

uint64_t sub_19761479C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_197617190();
  sub_197616260();
  v6 = sub_1976171F0();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_197616EF0() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_197614644();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_1976148C4(v8);
  *v2 = v15;
  return v13;
}

unint64_t sub_1976148C4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_197616970();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_197617190();

        sub_197616260();
        v10 = sub_1976171F0();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_197614A7C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_19761479C(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

unint64_t *sub_197614BA8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return sub_197614DAC(v21, a2, v22, v19);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_197614D1C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_197614BA8(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_197614DAC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF357B0, &qword_1976230E8);
  result = sub_197616A00();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_197617190();

    sub_197616260();
    result = sub_1976171F0();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_197615074(uint64_t (*a1)(uint64_t))
{
  v3 = [objc_opt_self() defaultManager];
  LOBYTE(a1) = a1(v1);

  return a1 & 1;
}

uint64_t sub_1976150DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1976155C0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - v9;
  result = sub_1976155D0();
  if (result)
  {
    v12 = result;
    v21 = v10;
    v13 = 0;
    v14 = *(result + 16);
    v22 = v5 + 16;
    v23 = v14;
    while (1)
    {
      if (v23 == v13)
      {

        return 0;
      }

      if (v13 >= *(v12 + 16))
      {
        break;
      }

      (*(v5 + 16))(v8, v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v4);
      if (sub_1976155A0() == a1 && v15 == a2)
      {

LABEL_14:

        v19 = v21;
        (*(v5 + 32))(v21, v8, v4);
        v18 = sub_1976155B0();
        (*(v5 + 8))(v19, v4);
        return v18;
      }

      v17 = sub_197616EF0();

      if (v17)
      {
        goto LABEL_14;
      }

      result = (*(v5 + 8))(v8, v4);
      ++v13;
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t WeakReference.init(_:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_197615354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = type metadata accessor for WeakReference(0, *(a2 + a3 - 8), a3, a4);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v11, a1, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v8 + 8))(v11, v7);
  *a5 = Strong;
  return result;
}

uint64_t WeakReference.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_unknownObjectWeakInit();
  if (a1)
  {
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v10 = type metadata accessor for WeakReference(0, a2, v8, v9);
    result = (*(*(v10 - 8) + 32))(a3, v13, v10);
  }

  else
  {
    v12 = type metadata accessor for WeakReference(0, a2, v6, v7);
    result = (*(*(v12 - 8) + 8))(v13, v12);
    *a3 = 0;
  }

  *(a3 + 8) = a1 == 0;
  return result;
}
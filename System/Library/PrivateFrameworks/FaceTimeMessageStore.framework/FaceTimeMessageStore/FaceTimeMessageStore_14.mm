uint64_t static OSTransaction.transaction(withID:and:beginInterval:endInterval:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_5();
  *(v13 + 120) = a12;
  *(v13 + 128) = v12;
  *(v13 + 234) = a10;
  *(v13 + 104) = v14;
  *(v13 + 112) = a11;
  *(v13 + 233) = v15;
  *(v13 + 88) = v16;
  *(v13 + 96) = v17;
  *(v13 + 232) = v18;
  *(v13 + 72) = v19;
  *(v13 + 80) = v20;
  v21 = sub_1BC8F76C4();
  *(v13 + 136) = v21;
  OUTLINED_FUNCTION_26(v21);
  *(v13 + 144) = v22;
  *(v13 + 152) = swift_task_alloc();
  v23 = sub_1BC8F7684();
  *(v13 + 160) = v23;
  OUTLINED_FUNCTION_26(v23);
  *(v13 + 168) = v24;
  *(v13 + 176) = swift_task_alloc();
  *(v13 + 184) = swift_task_alloc();
  *(v13 + 192) = swift_task_alloc();
  OUTLINED_FUNCTION_15();
  return OUTLINED_FUNCTION_26_13(v25, v26, v27);
}

{
  OUTLINED_FUNCTION_5();
  *(v13 + 80) = a12;
  *(v13 + 88) = v12;
  *(v13 + 194) = a10;
  *(v13 + 64) = v14;
  *(v13 + 72) = a11;
  *(v13 + 193) = v15;
  *(v13 + 48) = v16;
  *(v13 + 56) = v17;
  *(v13 + 192) = v18;
  *(v13 + 32) = v19;
  *(v13 + 40) = v20;
  v21 = sub_1BC8F76C4();
  *(v13 + 96) = v21;
  OUTLINED_FUNCTION_26(v21);
  *(v13 + 104) = v22;
  *(v13 + 112) = swift_task_alloc();
  v23 = sub_1BC8F7684();
  *(v13 + 120) = v23;
  OUTLINED_FUNCTION_26(v23);
  *(v13 + 128) = v24;
  *(v13 + 136) = swift_task_alloc();
  *(v13 + 144) = swift_task_alloc();
  *(v13 + 152) = swift_task_alloc();
  OUTLINED_FUNCTION_15();
  return OUTLINED_FUNCTION_26_13(v25, v26, v27);
}

void sub_1BC8D4FE0()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 80);
  v2 = *(v0 + 72);
  v3 = *(v0 + 232);
  *(v0 + 200) = swift_initStackObject();
  sub_1BC8D418C(v2, v1, v3);
  sub_1BC8F76A4();
  sub_1BC8F7664();
  v4 = sub_1BC8F76A4();
  sub_1BC8F82D4();
  if (sub_1BC8F83D4())
  {
    v5 = *(v0 + 96);
    if ((*(v0 + 233) & 1) == 0)
    {
      if (v5)
      {
LABEL_8:
        OUTLINED_FUNCTION_45();
        v7 = swift_slowAlloc();
        *v7 = 0;
        sub_1BC8F7674();
        OUTLINED_FUNCTION_12_0();
        _os_signpost_emit_with_name_impl(v8, v9, v10, v11, v12, v13, v7, 2u);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
        goto LABEL_9;
      }

      __break(1u);
    }

    if (HIDWORD(v5))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_9_19();
      if (v6)
      {
LABEL_14:
        __break(1u);
        return;
      }

      if (v5 >> 16 <= 0x10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:
  v15 = *(v0 + 184);
  v14 = *(v0 + 192);
  v16 = *(v0 + 160);
  v17 = *(v0 + 168);
  v18 = *(v0 + 112);

  (*(v17 + 16))(v15, v14, v16);
  sub_1BC8F76F4();
  OUTLINED_FUNCTION_21_16();
  swift_allocObject();
  *(v0 + 208) = sub_1BC8F76E4();
  v20 = (v18 + *v18);
  v19 = swift_task_alloc();
  *(v0 + 216) = v19;
  *v19 = v0;
  v19[1] = sub_1BC8D5218;

  v20();
}

uint64_t sub_1BC8D5218()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1BC8D5310()
{
  OUTLINED_FUNCTION_71();
  v1 = sub_1BC8F76A4();
  sub_1BC8F76D4();
  sub_1BC8F82C4();
  if (sub_1BC8F83D4())
  {
    v2 = *(v0 + 104);
    if ((*(v0 + 234) & 1) == 0)
    {
      if (v2)
      {
LABEL_8:

        sub_1BC8F7704();

        v4 = OUTLINED_FUNCTION_125();
        if (v5(v4) != *MEMORY[0x1E69E93E8])
        {
          (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
        }

        OUTLINED_FUNCTION_45();
        v6 = swift_slowAlloc();
        OUTLINED_FUNCTION_18_16(v6);
        sub_1BC8F7674();
        OUTLINED_FUNCTION_12_0();
        OUTLINED_FUNCTION_17_16();
        _os_signpost_emit_with_name_impl(v7, v8, v9, v10, v11, v12, v13, v14);
        v15 = OUTLINED_FUNCTION_17_11();
        MEMORY[0x1BFB2AA50](v15);
        goto LABEL_11;
      }

      __break(1u);
    }

    if (HIDWORD(v2))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_9_19();
      if (v3)
      {
LABEL_16:
        __break(1u);
        return;
      }

      if (v2 >> 16 <= 0x10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_11:
  v16 = *(v0 + 192);
  v17 = *(v0 + 168);
  v18 = *(v0 + 160);

  v19 = *(v17 + 8);
  v20 = OUTLINED_FUNCTION_125();
  v19(v20);
  (v19)(v16, v18);

  OUTLINED_FUNCTION_11();

  v21();
}

uint64_t sub_1BC8D5508()
{
  OUTLINED_FUNCTION_71();
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[20];

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_27();

  return v4();
}

void sub_1BC8D56F8()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);
  v3 = *(v0 + 192);
  v4 = swift_allocObject();
  *(v0 + 160) = v4;
  sub_1BC8D418C(v2, v1, v3);
  sub_1BC8F76A4();
  sub_1BC8F7664();
  v5 = sub_1BC8F76A4();
  sub_1BC8F82D4();
  if (sub_1BC8F83D4())
  {
    v6 = *(v0 + 56);
    if ((*(v0 + 193) & 1) == 0)
    {
      if (v6)
      {
LABEL_8:
        OUTLINED_FUNCTION_45();
        v8 = swift_slowAlloc();
        OUTLINED_FUNCTION_18_16(v8);
        sub_1BC8F7674();
        OUTLINED_FUNCTION_17_16();
        _os_signpost_emit_with_name_impl(v9, v10, v11, v12, v13, v14, v15, v16);
        v17 = OUTLINED_FUNCTION_17_11();
        MEMORY[0x1BFB2AA50](v17);
        goto LABEL_9;
      }

      __break(1u);
    }

    if (HIDWORD(v6))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_9_19();
      if (v7)
      {
LABEL_14:
        __break(1u);
        return;
      }

      if (v6 >> 16 <= 0x10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:

  v18 = *(v0 + 72);
  (*(*(v0 + 128) + 16))(*(v0 + 144), *(v0 + 152), *(v0 + 120));
  sub_1BC8F76F4();
  OUTLINED_FUNCTION_21_16();
  swift_allocObject();
  *(v0 + 168) = sub_1BC8F76E4();
  v20 = (v18 + *v18);
  v19 = swift_task_alloc();
  *(v0 + 176) = v19;
  *v19 = v0;
  v19[1] = sub_1BC8D5930;

  v20(v4);
}

uint64_t sub_1BC8D5930()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1BC8D5A28()
{
  OUTLINED_FUNCTION_71();
  v1 = sub_1BC8F76A4();
  sub_1BC8F76D4();
  sub_1BC8F82C4();
  if (sub_1BC8F83D4())
  {
    v2 = *(v0 + 64);
    if ((*(v0 + 194) & 1) == 0)
    {
      if (v2)
      {
LABEL_8:

        sub_1BC8F7704();

        v4 = OUTLINED_FUNCTION_125();
        if (v5(v4) != *MEMORY[0x1E69E93E8])
        {
          (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
        }

        OUTLINED_FUNCTION_45();
        v6 = swift_slowAlloc();
        OUTLINED_FUNCTION_18_16(v6);
        sub_1BC8F7674();
        OUTLINED_FUNCTION_12_0();
        OUTLINED_FUNCTION_17_16();
        _os_signpost_emit_with_name_impl(v7, v8, v9, v10, v11, v12, v13, v14);
        v15 = OUTLINED_FUNCTION_17_11();
        MEMORY[0x1BFB2AA50](v15);
        goto LABEL_11;
      }

      __break(1u);
    }

    if (HIDWORD(v2))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_9_19();
      if (v3)
      {
LABEL_16:
        __break(1u);
        return;
      }

      if (v2 >> 16 <= 0x10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_11:
  v16 = *(v0 + 152);
  v17 = *(v0 + 128);
  v18 = *(v0 + 120);

  v19 = *(v17 + 8);
  v20 = OUTLINED_FUNCTION_125();
  v19(v20);
  (v19)(v16, v18);

  OUTLINED_FUNCTION_11();

  v21();
}

uint64_t sub_1BC8D5C20()
{
  OUTLINED_FUNCTION_71();
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[15];

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_27();

  return v4();
}

FaceTimeMessageStore::MessageKey_optional __swiftcall MessageKey.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = MessageKey.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_1BC8D5DBC()
{
  result = qword_1EDC1F9C0;
  if (!qword_1EDC1F9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F9C0);
  }

  return result;
}

unint64_t sub_1BC8D5E24()
{
  result = qword_1EDC1F9E0;
  if (!qword_1EDC1F9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F9E0);
  }

  return result;
}

unint64_t sub_1BC8D5E94()
{
  result = qword_1EBCF68D8;
  if (!qword_1EBCF68D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF68E0, &qword_1BC909A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF68D8);
  }

  return result;
}

uint64_t sub_1BC8D5F08(uint64_t a1)
{
  v2 = sub_1BC8D5F80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC8D5F44(uint64_t a1)
{
  v2 = sub_1BC8D5F80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1BC8D5F80()
{
  result = qword_1EDC1F9D0;
  if (!qword_1EDC1F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F9D0);
  }

  return result;
}

uint64_t sub_1BC8D5FD4@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for OutgoingVideoMessage(0);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12();
  v12 = v11 - v10;
  v13 = 0;
  v14 = *(a2 + 16);
  while (1)
  {
    if (v14 == v13)
    {
      v16 = 1;
      v17 = a3;
      return __swift_storeEnumTagSinglePayload(v17, v16, 1, v6);
    }

    sub_1BC8D2AC8(a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v13, v12);
    v15 = a1(v12);
    if (v3)
    {
      return sub_1BC890934(v12);
    }

    if (v15)
    {
      break;
    }

    sub_1BC890934(v12);
    ++v13;
  }

  v17 = a3;
  sub_1BC8DC144(v12, a3);
  v16 = 0;
  return __swift_storeEnumTagSinglePayload(v17, v16, 1, v6);
}

void sub_1BC8D6128(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC7C0454(a3);
  for (i = 0; v6 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1BFB29A00](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v8 = *(a3 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v11 = v8;
    v10 = a1(&v11);
    if (v3)
    {

      return;
    }

    if (v10)
    {
      return;
    }
  }
}

uint64_t sub_1BC8D6214(void *a1, void *a2)
{
  *(v2 + 112) = 0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 120) = MEMORY[0x1E69E7CC0];
  sub_1BC7A792C(a1, v2 + 64);
  *(v2 + 104) = a2;
  v5 = objc_opt_self();
  v6 = a2;
  v7 = [v5 defaultCenter];
  OUTLINED_FUNCTION_20_16(v7, v8, v9, v10, *MEMORY[0x1E69E06D8]);

  v11 = [v5 defaultCenter];
  OUTLINED_FUNCTION_20_16(v11, v12, v13, v14, *MEMORY[0x1E69E06C0]);

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_1BC8D6308(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF68E8, &qword_1BC909C30);
  sub_1BC8F8264();
  return v2;
}

void sub_1BC8D6380(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = sub_1BC8F7264();
  v107 = *(v8 - 8);
  v108 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v101 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v102 = &v97 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v97 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v97 - v16;
  *(a1 + 112) = 1;
  v106 = a2;
  v18 = sub_1BC7C0454(a2);
  v98 = a3;
  v99 = v3;
  if (!v18)
  {
LABEL_11:
    sub_1BC899C68();
    v100 = v29;
    v30 = *(a1 + 88);
    v31 = *(a1 + 96);
    __swift_project_boxed_opaque_existential_1((a1 + 64), v30);
    v32 = *(v31 + 48);

    v33 = v32(sub_1BC8D83A0, a1, v30, v31);

    v105 = *(v33 + 16);
    if (v105)
    {
      v34 = 0;
      v35 = v33 + 32;
      v103 = v107 + 16;
      v104 = (v107 + 8);
      v36 = MEMORY[0x1E69E7CC8];
      do
      {
        if (v34 >= *(v33 + 16))
        {
          goto LABEL_72;
        }

        v37 = v33;
        sub_1BC7A792C(v35, &v110);
        v38 = v111;
        v39 = v112;
        __swift_project_boxed_opaque_existential_1(&v110, v111);
        (*(v39 + 128))(v38, v39);
        sub_1BC7A792C(&v110, v109);
        swift_isUniquelyReferenced_nonNull_native();
        v113 = v36;
        v40 = sub_1BC83C928();
        v42 = v36[2];
        v43 = (v41 & 1) == 0;
        v36 = (v42 + v43);
        if (__OFADD__(v42, v43))
        {
          goto LABEL_73;
        }

        v4 = v40;
        v44 = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF68F0, &qword_1BC909C38);
        if (sub_1BC8F8734())
        {
          v45 = sub_1BC83C928();
          if ((v44 & 1) != (v46 & 1))
          {
            goto LABEL_77;
          }

          v4 = v45;
        }

        v36 = v113;
        if (v44)
        {
          v47 = (v113[7] + 40 * v4);
          __swift_destroy_boxed_opaque_existential_1(v47);
          sub_1BC7CF5EC(v109, v47);
          (*v104)(v15, v108);
        }

        else
        {
          v113[(v4 >> 6) + 8] |= 1 << v4;
          v49 = v107;
          v48 = v108;
          (*(v107 + 16))(v36[6] + *(v107 + 72) * v4, v15, v108);
          sub_1BC7CF5EC(v109, v36[7] + 40 * v4);
          (*(v49 + 8))(v15, v48);
          v50 = v36[2];
          v51 = __OFADD__(v50, 1);
          v52 = v50 + 1;
          if (v51)
          {
            goto LABEL_74;
          }

          v36[2] = v52;
        }

        v34 = (v34 + 1);
        __swift_destroy_boxed_opaque_existential_1(&v110);
        v35 += 40;
        v33 = v37;
      }

      while (v105 != v34);
    }

    else
    {
      v36 = MEMORY[0x1E69E7CC8];
    }

    sub_1BC89A158();
    *&v109[0] = v53;
    v97 = v53;

    sub_1BC8DB0E8(v100);
    v35 = *&v109[0];
    v54 = *&v109[0] + 56;
    v55 = 1 << *(*&v109[0] + 32);
    v56 = -1;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    v57 = v56 & *(*&v109[0] + 56);
    v58 = (v55 + 63) >> 6;
    v104 = (v107 + 16);
    v105 = (v107 + 8);
    swift_bridgeObjectRetain_n();
    v4 = 0;
    v59 = MEMORY[0x1E69E7CC0];
    v60 = v108;
    v61 = v102;
    v103 = v35;
    if (v57)
    {
      goto LABEL_32;
    }

    while (1)
    {
      v62 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v62 >= v58)
      {

        *&v110 = v59;

        v68 = v99;
        sub_1BC8D840C(&v110);
        v4 = v68;
        if (!v68)
        {

          v35 = v110;
          if (qword_1EDC1E1A0 == -1)
          {
            goto LABEL_45;
          }

          goto LABEL_75;
        }

        goto LABEL_78;
      }

      v57 = *(v54 + 8 * v62);
      ++v4;
      if (v57)
      {
        v4 = v62;
        do
        {
LABEL_32:
          (*(v107 + 16))(v61, *(v35 + 48) + *(v107 + 72) * (__clz(__rbit64(v57)) | (v4 << 6)), v60);
          if (v36[2])
          {
            v63 = sub_1BC83C928();
            if (v64)
            {
              sub_1BC7A792C(v36[7] + 40 * v63, &v110);
              (*v105)(v61, v60);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1BC7F7600();
                v59 = v66;
              }

              v35 = v103;
              v65 = *(v59 + 16);
              if (v65 >= *(v59 + 24) >> 1)
              {
                sub_1BC7F7600();
                v59 = v67;
              }

              *(v59 + 16) = v65 + 1;
              sub_1BC7CF5EC(&v110, v59 + 40 * v65 + 32);
              v60 = v108;
              v61 = v102;
            }

            else
            {
              (*v105)(v61, v60);
              v35 = v103;
            }
          }

          else
          {
            (*v105)(v61, v60);
          }

          v57 &= v57 - 1;
        }

        while (v57);
      }
    }

    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      swift_once();
LABEL_45:
      v69 = sub_1BC8F7734();
      __swift_project_value_buffer(v69, qword_1EDC2B208);

      v70 = sub_1BC8F7714();
      v71 = sub_1BC8F8204();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 134349056;
        *(v72 + 4) = *(v35 + 16);

        _os_log_impl(&dword_1BC7A3000, v70, v71, "Calculated %{public}ld voicemails to be inserted", v72, 0xCu);
        MEMORY[0x1BFB2AA50](v72, -1, -1);
      }

      else
      {
      }

      v73 = sub_1BC8D9B8C(v97, v100);

      v74 = v103;

      v75 = sub_1BC8F7714();
      v76 = sub_1BC8F8204();
      v77 = os_log_type_enabled(v75, v76);
      v102 = v35;
      if (v77)
      {
        v78 = swift_slowAlloc();
        *v78 = 134349056;
        v79 = *(v74 + 16);

        *(v78 + 4) = v79;

        _os_log_impl(&dword_1BC7A3000, v75, v76, "Calculated %{public}ld voicemails to be updated", v78, 0xCu);
        MEMORY[0x1BFB2AA50](v78, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v80 = v106;

      v81 = sub_1BC8DB304(v73, v80, v36);
      v82 = v81;
      v106 = v4;
      v83 = v81 + 56;
      v84 = 1 << *(v81 + 32);
      v85 = -1;
      if (v84 < 64)
      {
        v85 = ~(-1 << v84);
      }

      v35 = v85 & *(v81 + 56);
      v86 = (v84 + 63) >> 6;

      v4 = 0;
      v87 = MEMORY[0x1E69E7CC0];
      for (i = v101; v35; v35 &= v35 - 1)
      {
LABEL_58:
        v90 = v108;
        (*(v107 + 16))(i, *(v82 + 48) + *(v107 + 72) * (__clz(__rbit64(v35)) | (v4 << 6)), v108);
        if (v36[2])
        {
          v91 = sub_1BC83C928();
          if (v92)
          {
            sub_1BC7A792C(v36[7] + 40 * v91, &v110);
            (*v105)(i, v108);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1BC7F7600();
              v87 = v94;
            }

            v93 = *(v87 + 16);
            if (v93 >= *(v87 + 24) >> 1)
            {
              sub_1BC7F7600();
              v87 = v95;
            }

            *(v87 + 16) = v93 + 1;
            sub_1BC7CF5EC(&v110, v87 + 40 * v93 + 32);
            i = v101;
          }

          else
          {
            (*v105)(i, v108);
          }
        }

        else
        {
          (*v105)(i, v90);
        }
      }

      while (1)
      {
        v89 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v89 >= v86)
        {

          v96 = v98;
          *v98 = v102;
          v96[1] = v87;
          return;
        }

        v35 = *(v83 + 8 * v89);
        ++v4;
        if (v35)
        {
          v4 = v89;
          goto LABEL_58;
        }
      }
    }
  }

  v19 = v18;
  *&v110 = MEMORY[0x1E69E7CC0];
  sub_1BC7DDB5C(0, v18 & ~(v18 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    v21 = v110;
    v105 = (v106 & 0xC000000000000001);
    v4 = v107 + 16;
    v103 = a1;
    v104 = (v107 + 32);
    v22 = v19;
    do
    {
      if (v105)
      {
        v23 = MEMORY[0x1BFB29A00](v20, v106);
      }

      else
      {
        v23 = *(v106 + 8 * v20 + 32);
      }

      v24 = v23;
      v25 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
      swift_beginAccess();
      v26 = v108;
      (*v4)(v17, &v24[v25], v108);

      *&v110 = v21;
      v28 = *(v21 + 16);
      v27 = *(v21 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1BC7DDB5C(v27 > 1, v28 + 1, 1);
        v21 = v110;
      }

      ++v20;
      *(v21 + 16) = v28 + 1;
      (*(v107 + 32))(v21 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v28, v17, v26);
    }

    while (v22 != v20);
    a1 = v103;
    goto LABEL_11;
  }

  __break(1u);
LABEL_77:
  sub_1BC8F8B44();
  __break(1u);
LABEL_78:

  __break(1u);
}

id sub_1BC8D6EE8(void *a1, void *a2)
{
  v4 = sub_1BC8F7014();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2[11];
  v9 = a2[12];
  __swift_project_boxed_opaque_existential_1(a2 + 8, v8);
  if ((*(v9 + 104))(a1, v8, v9))
  {
    return 0;
  }

  v11 = [objc_opt_self() defaultManager];
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  (*(v13 + 72))(v12, v13);
  sub_1BC8F6FC4();
  (*(v5 + 8))(v7, v4);
  v14 = sub_1BC8F7BE4();

  v10 = [v11 fileExistsAtPath_];

  return v10;
}

uint64_t sub_1BC8D70A0(void *a1, void *a2)
{
  v4 = sub_1BC8F71E4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v17 - v9;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 40))(v11, v12);
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  (*(v14 + 40))(v13, v14);
  LOBYTE(a1) = sub_1BC8F7184();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  return a1 & 1;
}

uint64_t sub_1BC8D7230(uint64_t *a1, uint64_t a2)
{
  v3 = sub_1BC8F7264();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
  swift_beginAccess();
  (*(v4 + 16))(v6, v7 + v8, v3);
  v9 = sub_1BC8F7234();
  (*(v4 + 8))(v6, v3);
  return v9 & 1;
}

void sub_1BC8D7364()
{
  OUTLINED_FUNCTION_29_0();
  v2 = sub_1BC8F78B4();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_16_9();
  v6 = sub_1BC8F78E4();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12();
  v12 = v11 - v10;
  v19[4] = sub_1BC8D837C;
  v20 = v0;
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_7_18(COERCE_DOUBLE(1107296256));
  v19[2] = v13;
  v19[3] = &block_descriptor_25;
  v14 = _Block_copy(v19);

  sub_1BC8F78D4();
  OUTLINED_FUNCTION_8_28();
  sub_1BC8DC0FC(v15, v16, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E58, &qword_1BC8FC3A0);
  v17 = sub_1BC7D9414();
  OUTLINED_FUNCTION_10_25(v17);
  v18 = OUTLINED_FUNCTION_15_14();
  MEMORY[0x1BFB296A0](v18);
  _Block_release(v14);
  (*(v4 + 8))(v1, v2);
  (*(v8 + 8))(v12, v6);

  OUTLINED_FUNCTION_24();
}

void sub_1BC8D7548(uint64_t a1)
{
  *(a1 + 112) = 0;
  swift_beginAccess();
  if (*(*(a1 + 120) + 16))
  {

    sub_1BC8D7DB8();

    *(a1 + 120) = MEMORY[0x1E69E7CC0];
  }

  else
  {
    if (qword_1EDC1E1A0 != -1)
    {
      swift_once();
    }

    v2 = sub_1BC8F7734();
    __swift_project_value_buffer(v2, qword_1EDC2B208);
    v3 = sub_1BC8F7714();
    v4 = sub_1BC8F8204();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BC7A3000, v3, v4, "No notifications received while performing diff!", v5, 2u);
      MEMORY[0x1BFB2AA50](v5, -1, -1);
    }
  }
}

void sub_1BC8D767C()
{
  OUTLINED_FUNCTION_29_0();
  v3 = v2;
  v4 = sub_1BC8F78B4();
  OUTLINED_FUNCTION_0();
  v29 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_16_9();
  sub_1BC8F78E4();
  OUTLINED_FUNCTION_0();
  v27 = v8;
  v28 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12();
  v11 = v10 - v9;
  v12 = sub_1BC8F6D24();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v26[1] = *(v0 + 104);
  (*(v14 + 16))(v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v12);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = swift_allocObject();
  (*(v14 + 32))(v19 + v18, v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  *(v19 + ((v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v0;
  v31[4] = sub_1BC8D82D8;
  v31[5] = v19;
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_7_18(COERCE_DOUBLE(1107296256));
  v31[2] = v20;
  v31[3] = &block_descriptor_9;
  v21 = _Block_copy(v31);

  sub_1BC8F78D4();
  v30 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_8_28();
  sub_1BC8DC0FC(v22, v23, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E58, &qword_1BC8FC3A0);
  v24 = sub_1BC7D9414();
  OUTLINED_FUNCTION_10_25(v24);
  v25 = OUTLINED_FUNCTION_15_14();
  MEMORY[0x1BFB296A0](v25);
  _Block_release(v21);
  (*(v29 + 8))(v1, v4);
  (*(v27 + 8))(v11, v28);

  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC8D7944(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC8F6D24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC1E1A0 != -1)
  {
    swift_once();
  }

  v8 = sub_1BC8F7734();
  __swift_project_value_buffer(v8, qword_1EDC2B208);
  v28 = *(v5 + 16);
  v28(v7, a1, v4);
  v9 = sub_1BC8F7714();
  v10 = sub_1BC8F8204();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v27 = a2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v26 = a1;
    v14 = v13;
    v29[0] = v13;
    *v12 = 136315138;
    sub_1BC8DC0FC(&unk_1EDC1FF10, MEMORY[0x1E6968160], MEMORY[0x1E6968168]);
    v15 = sub_1BC8F8A54();
    v17 = v16;
    (*(v5 + 8))(v7, v4);
    v18 = sub_1BC7A9A4C(v15, v17, v29);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_1BC7A3000, v9, v10, "Received voicemailsChanged notification: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    v19 = v14;
    a1 = v26;
    MEMORY[0x1BFB2AA50](v19, -1, -1);
    v20 = v12;
    a2 = v27;
    MEMORY[0x1BFB2AA50](v20, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  if (*(a2 + 112))
  {
    swift_beginAccess();
    sub_1BC8ABEF0();
    v21 = *(*(a2 + 120) + 16);
    sub_1BC8ABF34(v21);
    v22 = *(a2 + 120);
    *(v22 + 16) = v21 + 1;
    v28((v22 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v21), a1, v4);
    *(a2 + 120) = v22;
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5660, &qword_1BC900B10);
    v24 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1BC8FC230;
    v28((v25 + v24), a1, v4);
    sub_1BC8D7DB8();
    swift_setDeallocating();
    return sub_1BC8554C4();
  }
}

void sub_1BC8D7DB8()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v0;
  v4 = v3;
  v5 = sub_1BC8F6D24();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_16_9();
  v9 = sub_1BC8F78F4();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_12();
  v15 = v14 - v13;
  v16 = v2[13];
  *(v14 - v13) = v16;
  (*(v11 + 104))(v14 - v13, *MEMORY[0x1E69E8020], v9);
  v17 = v16;
  LOBYTE(v16) = sub_1BC8F7904();
  (*(v11 + 8))(v15, v9);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v42 = MEMORY[0x1E69E7CC0];
  v43 = MEMORY[0x1E69E7CC0];
  v18 = *(v4 + 16);
  if (!v18)
  {
    goto LABEL_30;
  }

  v20 = *(v7 + 16);
  v19 = v7 + 16;
  v21 = v4 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
  v37 = *(v19 + 56);
  v38 = v20;
  v22 = (v19 - 8);
  do
  {
    v38(v1, v21, v5);
    v23 = sub_1BC8F6D14();
    if (!v23)
    {
      goto LABEL_11;
    }

    v24 = v23;
    sub_1BC8F7C24();
    sub_1BC8F8544();
    if (!*(v24 + 16) || (v25 = sub_1BC83C8E8(), (v26 & 1) == 0))
    {

      sub_1BC8037DC(v39);
LABEL_11:
      v40 = 0u;
      v41 = 0u;
LABEL_12:
      sub_1BC7F1790(&v40, &unk_1EBCF5E50, &qword_1BC8FE850);
      goto LABEL_13;
    }

    sub_1BC7ABB48(*(v24 + 56) + 32 * v25, &v40);
    sub_1BC8037DC(v39);

    if (!*(&v41 + 1))
    {
      goto LABEL_12;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5010, &qword_1BC8FC7B0);
    if (swift_dynamicCast())
    {
      sub_1BC7F3C50(v39[0]);
    }

LABEL_13:
    v27 = sub_1BC8F6D14();
    if (!v27)
    {
      goto LABEL_20;
    }

    v28 = v27;
    sub_1BC8F7C24();
    sub_1BC8F8544();
    if (!*(v28 + 16) || (v29 = sub_1BC83C8E8(), (v30 & 1) == 0))
    {

      sub_1BC8037DC(v39);
LABEL_20:
      v40 = 0u;
      v41 = 0u;
LABEL_21:
      sub_1BC7F1790(&v40, &unk_1EBCF5E50, &qword_1BC8FE850);
      goto LABEL_22;
    }

    sub_1BC7ABB48(*(v28 + 56) + 32 * v29, &v40);
    sub_1BC8037DC(v39);

    if (!*(&v41 + 1))
    {
      goto LABEL_21;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5010, &qword_1BC8FC7B0);
    if (swift_dynamicCast())
    {
      sub_1BC7F3C50(v39[0]);
    }

LABEL_22:
    v31 = v43;
    if (*(v43 + 16))
    {
      v32 = v2[2];
      if (v32)
      {
        v33 = v2[3];

        v32(v31);
        sub_1BC7BE108(v32, v33);
      }
    }

    v34 = v42;
    if (*(v42 + 16))
    {
      v35 = v2[6];
      if (v35)
      {
        v36 = v2[7];

        v35(v34, 0);
        sub_1BC7BE108(v35, v36);
      }
    }

    (*v22)(v1, v5);
    v21 += v37;
    --v18;
  }

  while (v18);

LABEL_30:
  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC8D8208()
{
  sub_1BC7BE108(*(v0 + 16), *(v0 + 24));
  sub_1BC7BE108(*(v0 + 32), *(v0 + 40));
  sub_1BC7BE108(*(v0 + 48), *(v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return v0;
}

uint64_t sub_1BC8D8250()
{
  sub_1BC8D8208();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

uint64_t sub_1BC8D82A8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  v5 = *(*v2 + 24);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return sub_1BC7BE108(v4, v5);
}

uint64_t sub_1BC8D82C0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v5 = *(*v2 + 56);
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;
  return sub_1BC7BE108(v4, v5);
}

uint64_t sub_1BC8D82D8()
{
  v1 = *(sub_1BC8F6D24() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BC8D7944(v0 + v2, v3);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BC8D83A8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1BC909B90;
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

void sub_1BC8D840C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BC8DC0E8();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v4;
  sub_1BC8D8478(v5);
  *a1 = v2;
}

void sub_1BC8D8478(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BC8F8A44();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F40, &unk_1BC900B00);
        v6 = sub_1BC8F7EB4();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1BC8D87D0(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1BC8D857C(0, v2, 1, a1);
  }
}

uint64_t sub_1BC8D857C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = sub_1BC8F71E4();
  v8 = MEMORY[0x1EEE9AC00](v38);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v14 = &v26 - v13;
  v27 = a2;
  if (a3 != a2)
  {
    v15 = (v12 + 8);
    v31 = *a4;
    v16 = v31 + 40 * a3;
    v17 = a1 - a3;
    while (2)
    {
      v29 = v16;
      v30 = a3;
      v28 = v17;
      do
      {
        sub_1BC7A792C(v16, &v35);
        sub_1BC7A792C(v16 - 40, v32);
        v18 = v36;
        v19 = v37;
        __swift_project_boxed_opaque_existential_1(&v35, v36);
        (*(v19 + 40))(v18, v19);
        v20 = v33;
        v21 = v34;
        __swift_project_boxed_opaque_existential_1(v32, v33);
        (*(v21 + 40))(v20, v21);
        LOBYTE(v20) = sub_1BC8F7184();
        v22 = *v15;
        v23 = v38;
        (*v15)(v10, v38);
        v22(v14, v23);
        __swift_destroy_boxed_opaque_existential_1(v32);
        result = __swift_destroy_boxed_opaque_existential_1(&v35);
        if ((v20 & 1) == 0)
        {
          break;
        }

        if (!v31)
        {
          __break(1u);
          return result;
        }

        sub_1BC7CF5EC(v16, &v35);
        v24 = *(v16 - 24);
        *v16 = *(v16 - 40);
        *(v16 + 16) = v24;
        *(v16 + 32) = *(v16 - 8);
        result = sub_1BC7CF5EC(&v35, v16 - 40);
        v16 -= 40;
      }

      while (!__CFADD__(v17++, 1));
      a3 = v30 + 1;
      v16 = v29 + 40;
      v17 = v28 - 1;
      if (v30 + 1 != v27)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1BC8D87D0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v115 = a1;
  v132 = sub_1BC8F71E4();
  v6 = MEMORY[0x1EEE9AC00](v132);
  v125 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v124 = &v111 - v9;
  v119 = a3;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v132 = *v115;
    if (!v132)
    {
      goto LABEL_135;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_94;
    }

    goto LABEL_129;
  }

  v112 = a4;
  v11 = 0;
  v123 = (v8 + 8);
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v13 = v11++;
    if (v11 < v10)
    {
      v14 = *v119;
      sub_1BC7A792C(*v119 + 40 * v11, &v129);
      sub_1BC7A792C(&v14[40 * v13], v126);
      v15 = v121;
      LODWORD(v122) = sub_1BC8D70A0(&v129, v126);
      v121 = v15;
      if (v15)
      {
        __swift_destroy_boxed_opaque_existential_1(v126);
        __swift_destroy_boxed_opaque_existential_1(&v129);
LABEL_104:

        return;
      }

      v113 = v12;
      __swift_destroy_boxed_opaque_existential_1(v126);
      __swift_destroy_boxed_opaque_existential_1(&v129);
      v118 = 40 * v13;
      v16 = &v14[40 * v13 + 80];
      v114 = v13;
      v17 = v13 + 2;
      while (1)
      {
        v18 = v17;
        v19 = v11 + 1;
        if (v19 >= v10)
        {
          break;
        }

        sub_1BC7A792C(v16, &v129);
        sub_1BC7A792C(v16 - 40, v126);
        v120 = v19;
        v20 = v10;
        v21 = v130;
        v22 = v131;
        __swift_project_boxed_opaque_existential_1(&v129, v130);
        v23 = v124;
        (*(v22 + 40))(v21, v22);
        v24 = v127;
        v25 = v128;
        __swift_project_boxed_opaque_existential_1(v126, v127);
        v26 = v125;
        (*(v25 + 40))(v24, v25);
        v27 = sub_1BC8F7184() & 1;
        v28 = *v123;
        v29 = v132;
        (*v123)(v26, v132);
        v30 = v29;
        v10 = v20;
        v11 = v120;
        v28(v23, v30);
        __swift_destroy_boxed_opaque_existential_1(v126);
        __swift_destroy_boxed_opaque_existential_1(&v129);
        v16 += 40;
        v17 = v18 + 1;
        if ((v122 & 1) != v27)
        {
          goto LABEL_10;
        }
      }

      v11 = v10;
LABEL_10:
      if (v122)
      {
        if (v11 < v114)
        {
          goto LABEL_128;
        }

        if (v114 >= v11)
        {
          v12 = v113;
          v13 = v114;
          goto LABEL_23;
        }

        if (v10 >= v18)
        {
          v31 = v18;
        }

        else
        {
          v31 = v10;
        }

        v32 = 40 * v31 - 40;
        v33 = v11;
        v34 = v114;
        v35 = v118;
        do
        {
          if (v34 != --v33)
          {
            v36 = *v119;
            if (!*v119)
            {
              goto LABEL_133;
            }

            v37 = v36 + v35;
            v38 = v36 + v32;
            v39 = v35;
            sub_1BC7CF5EC((v36 + v35), &v129);
            v40 = *(v38 + 32);
            v41 = *(v38 + 16);
            *v37 = *v38;
            *(v37 + 16) = v41;
            *(v37 + 32) = v40;
            sub_1BC7CF5EC(&v129, v38);
            v35 = v39;
          }

          ++v34;
          v32 -= 40;
          v35 += 40;
        }

        while (v34 < v33);
      }

      v12 = v113;
      v13 = v114;
    }

LABEL_23:
    v42 = v119[1];
    if (v11 < v42)
    {
      if (__OFSUB__(v11, v13))
      {
        goto LABEL_125;
      }

      if (v11 - v13 < v112)
      {
        break;
      }
    }

LABEL_39:
    if (v11 < v13)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1BC7F6FCC();
      v12 = v100;
    }

    v57 = *(v12 + 2);
    v58 = v57 + 1;
    if (v57 >= *(v12 + 3) >> 1)
    {
      sub_1BC7F6FCC();
      v12 = v101;
    }

    *(v12 + 2) = v58;
    v59 = v12 + 32;
    v60 = &v12[16 * v57 + 32];
    *v60 = v13;
    *(v60 + 1) = v11;
    v122 = *v115;
    if (!v122)
    {
      goto LABEL_134;
    }

    if (v57)
    {
      while (1)
      {
        v61 = v58 - 1;
        v62 = &v59[16 * v58 - 16];
        v63 = &v12[16 * v58];
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v64 = *(v12 + 4);
          v65 = *(v12 + 5);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_59:
          if (v67)
          {
            goto LABEL_111;
          }

          v79 = *v63;
          v78 = *(v63 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_114;
          }

          v83 = *(v62 + 1);
          v84 = v83 - *v62;
          if (__OFSUB__(v83, *v62))
          {
            goto LABEL_117;
          }

          if (__OFADD__(v81, v84))
          {
            goto LABEL_119;
          }

          if (v81 + v84 >= v66)
          {
            if (v66 < v84)
            {
              v61 = v58 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v58 < 2)
        {
          goto LABEL_113;
        }

        v86 = *v63;
        v85 = *(v63 + 1);
        v74 = __OFSUB__(v85, v86);
        v81 = v85 - v86;
        v82 = v74;
LABEL_74:
        if (v82)
        {
          goto LABEL_116;
        }

        v88 = *v62;
        v87 = *(v62 + 1);
        v74 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v74)
        {
          goto LABEL_118;
        }

        if (v89 < v81)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v61 - 1 >= v58)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v119)
        {
          goto LABEL_131;
        }

        v93 = v12;
        v94 = &v59[16 * v61 - 16];
        v95 = *v94;
        v96 = &v59[16 * v61];
        v97 = *(v96 + 1);
        v98 = v121;
        sub_1BC8D90B4((*v119 + 40 * *v94), (*v119 + 40 * *v96), *v119 + 40 * v97, v122);
        v121 = v98;
        if (v98)
        {
          goto LABEL_104;
        }

        if (v97 < v95)
        {
          goto LABEL_106;
        }

        v99 = *(v93 + 2);
        if (v61 > v99)
        {
          goto LABEL_107;
        }

        *v94 = v95;
        *(v94 + 1) = v97;
        if (v61 >= v99)
        {
          goto LABEL_108;
        }

        v58 = v99 - 1;
        memmove(&v59[16 * v61], v96 + 16, 16 * (v99 - 1 - v61));
        v12 = v93;
        *(v93 + 2) = v99 - 1;
        if (v99 <= 2)
        {
          goto LABEL_88;
        }
      }

      v68 = &v59[16 * v58];
      v69 = *(v68 - 8);
      v70 = *(v68 - 7);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_109;
      }

      v73 = *(v68 - 6);
      v72 = *(v68 - 5);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_110;
      }

      v75 = *(v63 + 1);
      v76 = v75 - *v63;
      if (__OFSUB__(v75, *v63))
      {
        goto LABEL_112;
      }

      v74 = __OFADD__(v66, v76);
      v77 = v66 + v76;
      if (v74)
      {
        goto LABEL_115;
      }

      if (v77 >= v71)
      {
        v91 = *v62;
        v90 = *(v62 + 1);
        v74 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v74)
        {
          goto LABEL_123;
        }

        if (v66 < v92)
        {
          v61 = v58 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v10 = v119[1];
    if (v11 >= v10)
    {
      goto LABEL_92;
    }
  }

  v43 = v13 + v112;
  if (__OFADD__(v13, v112))
  {
    goto LABEL_126;
  }

  if (v43 >= v42)
  {
    v43 = v119[1];
  }

  if (v43 < v13)
  {
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    v12 = sub_1BC8D94F4();
LABEL_94:
    v102 = v12 + 16;
    v103 = *(v12 + 2);
    while (v103 >= 2)
    {
      if (!*v119)
      {
        goto LABEL_132;
      }

      v104 = v12;
      v105 = &v12[16 * v103];
      v106 = *v105;
      v107 = &v102[2 * v103];
      v108 = v107[1];
      v109 = v121;
      sub_1BC8D90B4((*v119 + 40 * *v105), (*v119 + 40 * *v107), *v119 + 40 * v108, v132);
      v121 = v109;
      if (v109)
      {
        break;
      }

      if (v108 < v106)
      {
        goto LABEL_120;
      }

      if (v103 - 2 >= *v102)
      {
        goto LABEL_121;
      }

      *v105 = v106;
      *(v105 + 1) = v108;
      v110 = *v102 - v103;
      if (*v102 < v103)
      {
        goto LABEL_122;
      }

      v103 = *v102 - 1;
      memmove(v107, v107 + 2, 16 * v110);
      *v102 = v103;
      v12 = v104;
    }

    goto LABEL_104;
  }

  if (v11 == v43)
  {
    goto LABEL_39;
  }

  v113 = v12;
  v122 = *v119;
  v44 = &v122[40 * v11];
  v114 = v13;
  v45 = v13 - v11;
  v116 = v43;
LABEL_32:
  v120 = v11;
  v117 = v45;
  v118 = v44;
  while (1)
  {
    sub_1BC7A792C(v44, &v129);
    sub_1BC7A792C((v44 - 40), v126);
    v46 = v130;
    v47 = v131;
    __swift_project_boxed_opaque_existential_1(&v129, v130);
    v48 = v124;
    (*(v47 + 40))(v46, v47);
    v49 = v127;
    v50 = v128;
    __swift_project_boxed_opaque_existential_1(v126, v127);
    v51 = v125;
    (*(v50 + 40))(v49, v50);
    v52 = sub_1BC8F7184();
    v53 = *v123;
    v54 = v132;
    (*v123)(v51, v132);
    v53(v48, v54);
    __swift_destroy_boxed_opaque_existential_1(v126);
    __swift_destroy_boxed_opaque_existential_1(&v129);
    if ((v52 & 1) == 0)
    {
LABEL_37:
      v11 = v120 + 1;
      v44 = (v118 + 40);
      v45 = v117 - 1;
      if (v120 + 1 == v116)
      {
        v11 = v116;
        v12 = v113;
        v13 = v114;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v122)
    {
      break;
    }

    sub_1BC7CF5EC(v44, &v129);
    v55 = *(v44 - 24);
    *v44 = *(v44 - 40);
    *(v44 + 1) = v55;
    *(v44 + 4) = *(v44 - 1);
    sub_1BC7CF5EC(&v129, (v44 - 40));
    v44 -= 40;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_37;
    }
  }

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
}

uint64_t sub_1BC8D90B4(char *a1, char *a2, unint64_t a3, char *a4)
{
  v57 = sub_1BC8F71E4();
  v8 = MEMORY[0x1EEE9AC00](v57);
  v56 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v51 - v10;
  v12 = (a2 - a1) / 40;
  v55 = (v13 + 8);
  v14 = (a3 - a2) / 40;
  if (v12 < v14)
  {
    sub_1BC7DD7EC(a1, (a2 - a1) / 40, a4);
    v64 = &a4[40 * v12];
    while (1)
    {
      if (a4 >= v64 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_28;
      }

      v16 = a3;
      sub_1BC7A792C(a2, v61);
      sub_1BC7A792C(a4, v58);
      v17 = v62;
      v18 = v63;
      __swift_project_boxed_opaque_existential_1(v61, v62);
      (*(v18 + 40))(v17, v18);
      v19 = v59;
      v20 = v60;
      __swift_project_boxed_opaque_existential_1(v58, v59);
      v21 = v56;
      (*(v20 + 40))(v19, v20);
      LOBYTE(v19) = sub_1BC8F7184();
      v22 = *v55;
      v23 = v21;
      v24 = v57;
      (*v55)(v23, v57);
      v22(v11, v24);
      __swift_destroy_boxed_opaque_existential_1(v58);
      __swift_destroy_boxed_opaque_existential_1(v61);
      if ((v19 & 1) == 0)
      {
        break;
      }

      v25 = a2;
      v26 = a1 == a2;
      a2 += 40;
      if (!v26)
      {
        goto LABEL_12;
      }

LABEL_13:
      a1 += 40;
      a3 = v16;
    }

    v25 = a4;
    v26 = a1 == a4;
    a4 += 40;
    if (v26)
    {
      goto LABEL_13;
    }

LABEL_12:
    v27 = *v25;
    v28 = *(v25 + 1);
    *(a1 + 4) = *(v25 + 4);
    *a1 = v27;
    *(a1 + 1) = v28;
    goto LABEL_13;
  }

  sub_1BC7DD7EC(a2, (a3 - a2) / 40, a4);
  v29 = &a4[40 * v14];
  v52 = a4;
  v53 = a1;
LABEL_15:
  v30 = a2 - 40;
  a3 -= 40;
  v31 = (v29 - 40);
  v54 = a2;
  while (1)
  {
    v64 = (v31 + 40);
    if (v31 + 40 <= a4 || a2 <= a1)
    {
      break;
    }

    sub_1BC7A792C(v31, v61);
    v33 = v30;
    sub_1BC7A792C(v30, v58);
    v35 = v62;
    v34 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    (*(v34 + 40))(v35, v34);
    v36 = v59;
    v37 = v60;
    __swift_project_boxed_opaque_existential_1(v58, v59);
    v38 = v11;
    v39 = v56;
    (*(v37 + 40))(v36, v37);
    v40 = sub_1BC8F7184();
    v41 = *v55;
    v42 = v39;
    v11 = v38;
    v43 = v57;
    (*v55)(v42, v57);
    v41(v38, v43);
    __swift_destroy_boxed_opaque_existential_1(v58);
    __swift_destroy_boxed_opaque_existential_1(v61);
    if (v40)
    {
      v29 = (v31 + 40);
      a1 = v53;
      a2 = v33;
      a4 = v52;
      if ((a3 + 40) != v54)
      {
        v46 = *v33;
        v47 = *(v33 + 1);
        *(a3 + 32) = *(v33 + 4);
        *a3 = v46;
        *(a3 + 16) = v47;
        a2 = v33;
      }

      goto LABEL_15;
    }

    if (v64 != (a3 + 40))
    {
      v44 = *v31;
      v45 = *(v31 + 16);
      *(a3 + 32) = *(v31 + 32);
      *a3 = v44;
      *(a3 + 16) = v45;
    }

    a3 -= 40;
    v31 -= 40;
    a4 = v52;
    a1 = v53;
    a2 = v54;
    v30 = v33;
  }

LABEL_28:
  v48 = (v64 - a4) / 40;
  if (a2 != a4 || a2 >= &a4[40 * v48])
  {
    memmove(a2, a4, 40 * v48);
  }

  return 1;
}

char *sub_1BC8D950C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1BC8D9538(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5668, &qword_1BC900B18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_1BC8D9660()
{
  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6598, &qword_1BC909C50);
  v4 = OUTLINED_FUNCTION_12_20();
  if (*(v1 + 16))
  {
    v5 = OUTLINED_FUNCTION_3_26();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      memmove(v5, v2, 8 * v6);
    }

    v10 = 0;
    OUTLINED_FUNCTION_2_29();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_16_17();
LABEL_15:
        v20 = v16 | (v10 << 6);
        v21 = (*(v1 + 48) + 16 * v20);
        v22 = v21[1];
        v23 = (*(v4 + 48) + 16 * v20);
        *v23 = *v21;
        v23[1] = v22;
      }

      while (v13);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_17;
      }

      ++v17;
      if (*(v2 + v10))
      {
        OUTLINED_FUNCTION_5_26();
        v13 = v19 & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v3 = v4;
  }
}

void sub_1BC8D977C()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6(0);
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
  v13 = *v0;
  v14 = sub_1BC8F8554();
  v15 = v14;
  if (*(v13 + 16))
  {
    v30 = v5;
    v16 = (v14 + 56);
    v17 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v13 || v16 >= v13 + 56 + 8 * v17)
    {
      memmove(v16, (v13 + 56), 8 * v17);
    }

    v19 = 0;
    *(v15 + 16) = *(v13 + 16);
    v20 = 1 << *(v13 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v13 + 56);
    v23 = (v20 + 63) >> 6;
    v31 = v9 + 32;
    v32 = v9 + 16;
    while (v22)
    {
      v24 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v28 = *(v9 + 72) * (v24 | (v19 << 6));
      (*(v9 + 16))(v12, *(v13 + 48) + v28, v7);
      (*(v9 + 32))(*(v15 + 48) + v28, v12, v7);
    }

    v25 = v19;
    while (1)
    {
      v19 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v19 >= v23)
      {

        v5 = v30;
        goto LABEL_21;
      }

      ++v25;
      if (*(v13 + 56 + 8 * v19))
      {
        OUTLINED_FUNCTION_5_26();
        v22 = v27 & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v15;
    OUTLINED_FUNCTION_24();
  }
}

void sub_1BC8D9990()
{
  OUTLINED_FUNCTION_29_0();
  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6548, &unk_1BC909C40);
  v4 = OUTLINED_FUNCTION_12_20();
  if (*(v1 + 16))
  {
    v5 = OUTLINED_FUNCTION_3_26();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      memmove(v5, v2, 8 * v6);
    }

    v10 = 0;
    OUTLINED_FUNCTION_2_29();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_15:
        v20 = v16 | (v10 << 6);
        v21 = (*(v1 + 48) + 32 * v20);
        v22 = v21[1];
        v23 = v21[2];
        v24 = v21[3];
        v25 = (*(v4 + 48) + 32 * v20);
        *v25 = *v21;
        v25[1] = v22;
        v25[2] = v23;
        v25[3] = v24;
      }

      while (v13);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_17;
      }

      ++v17;
      if (*(v2 + v10))
      {
        OUTLINED_FUNCTION_5_26();
        v13 = v19 & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v3 = v4;
    OUTLINED_FUNCTION_24();
  }
}

void sub_1BC8D9AA0()
{
  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6570, &qword_1BC907718);
  v4 = OUTLINED_FUNCTION_12_20();
  if (*(v1 + 16))
  {
    v5 = OUTLINED_FUNCTION_3_26();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      memmove(v5, v2, 8 * v6);
    }

    v10 = 0;
    OUTLINED_FUNCTION_2_29();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_16_17();
LABEL_15:
        *(*(v4 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v1 + 48) + 8 * (v16 | (v10 << 6)));
      }

      while (v13);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_17;
      }

      ++v17;
      if (*(v2 + v10))
      {
        OUTLINED_FUNCTION_5_26();
        v13 = v19 & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v3 = v4;
  }
}

uint64_t sub_1BC8D9B8C(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v8 = (v12 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1BC8D83A8(0, v6, v8);
    v9 = sub_1BC8DA440(v8, v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_1BC8D9D54(v11, v6, a2, a1);

    MEMORY[0x1BFB2AA50](v11, -1, -1);
  }

  return v9;
}

unint64_t *sub_1BC8D9D54(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_1BC8DA440(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_1BC8D9DE4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v10 = sub_1BC8DB7C8(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void sub_1BC8D9EA4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a2;
  v63 = a1;
  v6 = sub_1BC8F73D4();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v71 = (&v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v57 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v70 = &v57 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v57 - v17;
  v18 = *(a3 + 16);
  v19 = *(a4 + 16);
  v74 = v8 + 16;
  v72 = a4;
  v73 = a3;
  v65 = v8;
  if (v19 >= v18)
  {
    v66 = 0;
    v41 = 0;
    v62 = (a3 + 56);
    OUTLINED_FUNCTION_9_20();
    v69 = a4 + 56;
    v70 = (v8 + 8);
    v64 = v43;
LABEL_18:
    while (v42)
    {
      OUTLINED_FUNCTION_82_0();
      v68 = v45;
LABEL_25:
      v67 = v44 | (v41 << 6);
      v49 = *(v8 + 16);
      OUTLINED_FUNCTION_18_17();
      v49();
      OUTLINED_FUNCTION_0_31();
      sub_1BC8DC0FC(&qword_1EBCF5678, v50, MEMORY[0x1E6993540]);
      v51 = sub_1BC8F7B54();
      v52 = ~(-1 << *(a4 + 32));
      do
      {
        v53 = v51 & v52;
        if (((*(v69 + (((v51 & v52) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v51 & v52)) & 1) == 0)
        {
          (*v70)(v71, v6);
          a4 = v72;
          a3 = v73;
          v43 = v64;
          v8 = v65;
          v42 = v68;
          goto LABEL_18;
        }

        OUTLINED_FUNCTION_18_17();
        v49();
        OUTLINED_FUNCTION_0_31();
        sub_1BC8DC0FC(&qword_1EBCF6510, v54, MEMORY[0x1E6993548]);
        v55 = sub_1BC8F7BC4();
        v56 = *v70;
        (*v70)(v14, v6);
        v51 = v53 + 1;
      }

      while ((v55 & 1) == 0);
      v56(v71, v6);
      *(v63 + ((v67 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v67;
      v8 = v65;
      v40 = __OFADD__(v66++, 1);
      a4 = v72;
      a3 = v73;
      v43 = v64;
      v42 = v68;
      if (v40)
      {
        goto LABEL_36;
      }
    }

    v46 = v41;
    while (1)
    {
      v41 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v41 >= v43)
      {
LABEL_32:

        sub_1BC8DAAA8(v63, v59, v66, a3);
        return;
      }

      ++v46;
      if (*&v62[8 * v41])
      {
        OUTLINED_FUNCTION_5_26();
        v68 = (v48 & v47);
        goto LABEL_25;
      }
    }
  }

  else
  {
    v20 = 0;
    v58 = a4 + 56;
    OUTLINED_FUNCTION_9_20();
    v60 = v22;
    v61 = v8 + 32;
    v66 = 0;
    v67 = a3 + 56;
    v71 = (v8 + 8);
LABEL_3:
    while (v21)
    {
      OUTLINED_FUNCTION_82_0();
      v64 = v23;
LABEL_10:
      v27 = v62;
      OUTLINED_FUNCTION_18_17();
      v68 = v28;
      v69 = v29;
      v28();
      (*(v8 + 32))(v70, v27, v6);
      OUTLINED_FUNCTION_0_31();
      sub_1BC8DC0FC(&qword_1EBCF5678, v30, MEMORY[0x1E6993540]);
      v31 = sub_1BC8F7B54();
      v32 = ~(-1 << *(a3 + 32));
      do
      {
        v33 = v31 & v32;
        v34 = (v31 & v32) >> 6;
        v35 = 1 << (v31 & v32);
        if ((v35 & *(v67 + 8 * v34)) == 0)
        {
          (*v71)(v70, v6);
          a3 = v73;
          v21 = v64;
          v8 = v65;
          v22 = v60;
          goto LABEL_3;
        }

        OUTLINED_FUNCTION_18_17();
        v36();
        OUTLINED_FUNCTION_0_31();
        sub_1BC8DC0FC(&qword_1EBCF6510, v37, MEMORY[0x1E6993548]);
        v38 = sub_1BC8F7BC4();
        v39 = *v71;
        (*v71)(v14, v6);
        v31 = v33 + 1;
      }

      while ((v38 & 1) == 0);
      v39(v70, v6);
      v21 = v64;
      v63[v34] |= v35;
      v8 = v65;
      v40 = __OFADD__(v66++, 1);
      a3 = v73;
      v22 = v60;
      if (v40)
      {
        goto LABEL_35;
      }
    }

    v24 = v20;
    while (1)
    {
      v20 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v20 >= v22)
      {
        goto LABEL_32;
      }

      ++v24;
      if (*(v58 + 8 * v20))
      {
        OUTLINED_FUNCTION_5_26();
        v64 = v26 & v25;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_1BC8DA440(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a2;
  v63 = a1;
  v6 = sub_1BC8F7264();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v71 = (&v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v57 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v70 = &v57 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v62 = &v57 - v16;
  v17 = *(a3 + 16);
  v18 = *(a4 + 16);
  v74 = v7 + 16;
  v72 = a4;
  v73 = a3;
  v65 = v7;
  if (v18 >= v17)
  {
    v66 = 0;
    v39 = 0;
    v40 = *(a3 + 56);
    v62 = (a3 + 56);
    v41 = 1 << *(a3 + 32);
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    else
    {
      v42 = -1;
    }

    v43 = v42 & v40;
    v44 = (v41 + 63) >> 6;
    v69 = a4 + 56;
    v70 = (v7 + 8);
    v64 = v44;
LABEL_24:
    while (v43)
    {
      v45 = __clz(__rbit64(v43));
      v68 = ((v43 - 1) & v43);
LABEL_31:
      v48 = v45 | (v39 << 6);
      v49 = *(a3 + 48);
      v50 = *(v7 + 72);
      v67 = v48;
      v51 = *(v7 + 16);
      v51(v71, v49 + v50 * v48, v6);
      sub_1BC8DC0FC(&unk_1EDC20600, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v52 = sub_1BC8F7B54();
      v53 = ~(-1 << *(a4 + 32));
      do
      {
        v54 = v52 & v53;
        if (((*(v69 + (((v52 & v53) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v52 & v53)) & 1) == 0)
        {
          result = (*v70)(v71, v6);
          a4 = v72;
          a3 = v73;
          v44 = v64;
          v7 = v65;
          v43 = v68;
          goto LABEL_24;
        }

        v51(v12, *(v72 + 48) + v54 * v50, v6);
        sub_1BC8DC0FC(&unk_1EDC205F0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v55 = sub_1BC8F7BC4();
        v56 = *v70;
        (*v70)(v12, v6);
        v52 = v54 + 1;
      }

      while ((v55 & 1) == 0);
      result = v56(v71, v6);
      *(v63 + ((v67 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v67;
      v7 = v65;
      v38 = __OFADD__(v66++, 1);
      a4 = v72;
      a3 = v73;
      v44 = v64;
      v43 = v68;
      if (v38)
      {
        goto LABEL_42;
      }
    }

    v46 = v39;
    while (1)
    {
      v39 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v39 >= v44)
      {
LABEL_38:

        return sub_1BC8DADC8(v63, v59, v66, a3);
      }

      v47 = *&v62[8 * v39];
      ++v46;
      if (v47)
      {
        v45 = __clz(__rbit64(v47));
        v68 = ((v47 - 1) & v47);
        goto LABEL_31;
      }
    }
  }

  else
  {
    v19 = 0;
    v20 = *(a4 + 56);
    v58 = a4 + 56;
    v21 = 1 << *(a4 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & v20;
    v24 = (v21 + 63) >> 6;
    v60 = v24;
    v61 = v7 + 32;
    v66 = 0;
    v67 = a3 + 56;
    v71 = (v7 + 8);
LABEL_6:
    while (v23)
    {
      v25 = __clz(__rbit64(v23));
      v64 = (v23 - 1) & v23;
LABEL_13:
      v28 = *(v7 + 72);
      v29 = *(a4 + 48) + v28 * (v25 | (v19 << 6));
      v30 = v62;
      v68 = *(v7 + 16);
      v69 = v28;
      v68(v62, v29, v6);
      (*(v7 + 32))(v70, v30, v6);
      sub_1BC8DC0FC(&unk_1EDC20600, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v31 = sub_1BC8F7B54();
      v32 = ~(-1 << *(a3 + 32));
      do
      {
        v33 = v31 & v32;
        v34 = (v31 & v32) >> 6;
        v35 = 1 << (v31 & v32);
        if ((v35 & *(v67 + 8 * v34)) == 0)
        {
          result = (*v71)(v70, v6);
          a4 = v72;
          a3 = v73;
          v23 = v64;
          v7 = v65;
          v24 = v60;
          goto LABEL_6;
        }

        v68(v12, *(v73 + 48) + v33 * v69, v6);
        sub_1BC8DC0FC(&unk_1EDC205F0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v36 = sub_1BC8F7BC4();
        v37 = *v71;
        (*v71)(v12, v6);
        v31 = v33 + 1;
      }

      while ((v36 & 1) == 0);
      result = v37(v70, v6);
      v23 = v64;
      v63[v34] |= v35;
      v7 = v65;
      v38 = __OFADD__(v66++, 1);
      a4 = v72;
      a3 = v73;
      v24 = v60;
      if (v38)
      {
        goto LABEL_41;
      }
    }

    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v19 >= v24)
      {
        goto LABEL_38;
      }

      v27 = *(v58 + 8 * v19);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v64 = (v27 - 1) & v27;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1BC8DAAA8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1BC8F73D4();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6518, &qword_1BC907698);
  result = sub_1BC8F8574();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1BC8DC0FC(&qword_1EBCF5678, MEMORY[0x1E6993530], MEMORY[0x1E6993540]);
    result = sub_1BC8F7B54();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_27:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_27;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1BC8DADC8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1BC8F7264();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF64F0, &unk_1BC907680);
  result = sub_1BC8F8574();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1BC8DC0FC(&unk_1EDC20600, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    result = sub_1BC8F7B54();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_27:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_27;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_1BC8DB0E8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = sub_1BC8F7264();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_1BC8DBACC(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_1BC7F1790(v5, &unk_1EBCF5D70, &qword_1BC8FC740);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1BC8DB304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v45[5] = *MEMORY[0x1E69E9840];
  v41 = sub_1BC8F7264();
  v8 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v36 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;

  if (v10 > 0xD)
  {
    goto LABEL_24;
  }

  while (2)
  {
    v35 = a3;
    v40 = a2;
    v42 = v4;
    v31 = &v31;
    MEMORY[0x1EEE9AC00](v13);
    v32 = v11;
    v33 = (&v31 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1BC8D83A8(0, v11, v33);
    v34 = 0;
    a2 = 0;
    a3 = a1 + 56;
    v14 = 1 << *(a1 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(a1 + 56);
    v11 = (v14 + 63) >> 6;
    v37 = v8 + 16;
    v38 = (v8 + 8);
    v17 = v8;
    v12 = v36;
    v39 = a1;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_12:
      v8 = v18 | (a2 << 6);
      v21 = v17;
      v22 = (*(v17 + 16))(v12, *(a1 + 48) + *(v17 + 72) * v8, v41);
      MEMORY[0x1EEE9AC00](v22);
      *(&v31 - 2) = v12;
      v23 = v42;
      sub_1BC8D6128(sub_1BC8DB7A8, (&v31 - 4), v40);
      v42 = v23;
      if (v24)
      {
        v4 = v24;
        sub_1BC8E7410();
        if (!v44)
        {

          sub_1BC7F1790(&v43, &qword_1EBCF6780, &qword_1BC908A10);
          v12 = v36;
          goto LABEL_19;
        }

        sub_1BC7CF5EC(&v43, v45);
        v25 = sub_1BC7EAD54(v45);

        __swift_destroy_boxed_opaque_existential_1(v45);
        v12 = v36;
        if (v25)
        {
          goto LABEL_19;
        }

        (*v38)(v36, v41);
        *(v33 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        v26 = __OFADD__(v34++, 1);
        a1 = v39;
        v17 = v21;
        if (v26)
        {
          __break(1u);
        }
      }

      else
      {
LABEL_19:
        (*v38)(v12, v41);
        a1 = v39;
        v17 = v21;
      }
    }

    v19 = a2;
    while (1)
    {
      a2 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (a2 >= v11)
      {
        v27 = sub_1BC8DADC8(v33, v32, v34, a1);

        goto LABEL_21;
      }

      v20 = *(a3 + 8 * a2);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_24:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v29 = a1;
  v30 = swift_slowAlloc();

  v27 = sub_1BC8D9DE4(v30, v11, v29, a2, a3);

  MEMORY[0x1BFB2AA50](v30, -1, -1);

  if (v4)
  {

    swift_bridgeObjectRelease_n();
  }

  else
  {

LABEL_21:
  }

  return v27;
}

uint64_t sub_1BC8DB7C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a5;
  v46 = a4;
  v34 = a2;
  v35 = a1;
  v6 = sub_1BC8F7264();
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0;
  v11 = 0;
  v41 = v8;
  v42 = a3;
  v14 = *(a3 + 56);
  v13 = a3 + 56;
  v12 = v14;
  v15 = 1 << *(v13 - 24);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v39 = (v8 + 8);
  v40 = v8 + 16;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_11:
    v22 = v19 | (v11 << 6);
    v23 = *(v42 + 48);
    v24 = *(v41 + 72);
    v37 = v22;
    v25 = v6;
    v26 = (*(v41 + 16))(v10, v23 + v24 * v22, v6);
    MEMORY[0x1EEE9AC00](v26);
    *(&v33 - 2) = v10;
    sub_1BC8D6128(sub_1BC8DC1AC, (&v33 - 4), v46);
    if (v27)
    {
      v28 = v27;
      sub_1BC8E7410();
      if (!v44)
      {

        sub_1BC7F1790(&v43, &qword_1EBCF6780, &qword_1BC908A10);
        goto LABEL_18;
      }

      sub_1BC7CF5EC(&v43, v45);
      v29 = sub_1BC7EAD54(v45);

      __swift_destroy_boxed_opaque_existential_1(v45);
      if (v29)
      {
        goto LABEL_18;
      }

      v6 = v25;
      result = (*v39)(v10, v25);
      *(v35 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
      if (__OFADD__(v36++, 1))
      {
        goto LABEL_21;
      }
    }

    else
    {
LABEL_18:
      v6 = v25;
      result = (*v39)(v10, v25);
    }
  }

  v20 = v11;
  while (1)
  {
    v11 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      v31 = v42;

      v32 = sub_1BC8DADC8(v35, v34, v36, v31);

      return v32;
    }

    v21 = *(v13 + 8 * v11);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v17 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1BC8DBACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1BC8F7264();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = *v2;
  sub_1BC8DC0FC(&unk_1EDC20600, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v25 = a1;
  v9 = sub_1BC8F7B54();
  v24 = v8;
  v10 = ~(-1 << *(v8 + 32));
  while (1)
  {
    v11 = v9 & v10;
    if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
    {
      v14 = 1;
      v15 = v23;
      return __swift_storeEnumTagSinglePayload(v15, v14, 1, v4);
    }

    v12 = *(v5 + 72) * v11;
    (*(v5 + 16))(v7, *(v24 + 48) + v12, v4);
    sub_1BC8DC0FC(&unk_1EDC205F0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v13 = sub_1BC8F7BC4();
    (*(v5 + 8))(v7, v4);
    if (v13)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16 = v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v16;
  v26 = *v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1BC8D977C();
    v18 = v26;
  }

  v19 = *(v18 + 48) + v12;
  v15 = v23;
  (*(v5 + 32))(v23, v19, v4);
  sub_1BC8DBD64(v11);
  v14 = 0;
  *v16 = v26;
  return __swift_storeEnumTagSinglePayload(v15, v14, 1, v4);
}

uint64_t sub_1BC8DBD64(int64_t a1)
{
  v3 = sub_1BC8F7264();
  v4 = *(v3 - 8);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_1BC8F84E4();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v37 = (v13 + 1) & v12;
      v15 = *(v4 + 16);
      v14 = v4 + 16;
      v36 = v15;
      v16 = *(v14 + 56);
      v38 = v14;
      v39 = v16;
      v17 = v12;
      v18 = (v14 - 8);
      v19 = v8;
      while (1)
      {
        v20 = v9;
        v21 = v39 * v11;
        v22 = v17;
        v36(v7, *(v19 + 48) + v39 * v11, v3);
        v23 = v19;
        sub_1BC8DC0FC(&unk_1EDC20600, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        v24 = sub_1BC8F7B54();
        (*v18)(v7, v3);
        v17 = v22;
        v25 = v24 & v22;
        if (a1 >= v37)
        {
          if (v25 < v37 || a1 < v25)
          {
LABEL_20:
            v19 = v23;
            goto LABEL_24;
          }
        }

        else if (v25 < v37 && a1 < v25)
        {
          goto LABEL_20;
        }

        v19 = v23;
        v27 = *(v23 + 48);
        v28 = v39 * a1;
        v29 = v27 + v39 * a1;
        v30 = v27 + v21 + v39;
        if (v39 * a1 < v21 || v29 >= v30)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v17 = v22;
          a1 = v11;
          goto LABEL_24;
        }

        a1 = v11;
        if (v28 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v11 = (v11 + 1) & v17;
        v9 = v20;
        if (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v19 = v8;
LABEL_28:
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v19 = v8;
  }

  v33 = *(v19 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v35;
    ++*(v19 + 36);
  }

  return result;
}

uint64_t sub_1BC8DC0FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BC8DC144(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OutgoingVideoMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static Int.megabytes(_:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1BC8DC734(v3, v1, v2);
}

uint64_t static Int.kilobyte(_:)(void *a1)
{
  v1 = a1[3];
  v2 = __swift_project_boxed_opaque_existential_1(a1, v1);
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_30();
  v6 = v4 - v5;
  (*(v3 + 16))(v4 - v5);
  OUTLINED_FUNCTION_1_31();
  if (sub_1BC8F8464())
  {
    OUTLINED_FUNCTION_0_32();
    if (sub_1BC8F8454() > 64)
    {
      v28 = 0x8000000000000000;
      OUTLINED_FUNCTION_1_31();
      if (sub_1BC8F8464())
      {
        OUTLINED_FUNCTION_0_32();
        v7 = sub_1BC8F8454();
        if (v7 < 64)
        {
          goto LABEL_13;
        }

LABEL_8:
        MEMORY[0x1EEE9AC00](v7);
        OUTLINED_FUNCTION_2_30();
        v11 = v9 - v10;
        sub_1BC8B5AF8();
        sub_1BC8F8434();
        sub_1BC8F7B84();
        OUTLINED_FUNCTION_3_27();
        result = v12(v11, v1);
        if (v1)
        {
LABEL_26:
          __break(1u);
          return result;
        }

        goto LABEL_14;
      }

      OUTLINED_FUNCTION_1_31();
      v8 = sub_1BC8F8464();
      OUTLINED_FUNCTION_0_32();
      v7 = sub_1BC8F8454();
      if (v8)
      {
        if (v7 <= 64)
        {
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v27 = &v27;
          MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
          swift_getAssociatedConformanceWitness();
          v15 = sub_1BC8F8B14();
          MEMORY[0x1EEE9AC00](v15);
          OUTLINED_FUNCTION_2_30();
          v18 = v16 - v17;
          sub_1BC8F8A84();
          sub_1BC8F7B84();
          OUTLINED_FUNCTION_3_27();
          result = v19(v18, v1);
          if (v1)
          {
            goto LABEL_26;
          }

          goto LABEL_13;
        }

        goto LABEL_8;
      }

      if (v7 < 64)
      {
LABEL_13:
        OUTLINED_FUNCTION_0_32();
        sub_1BC8F8444();
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_0_32();
  if (sub_1BC8F8454() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v28 = 0x7FFFFFFFFFFFFFFFLL;
    OUTLINED_FUNCTION_1_31();
    v20 = sub_1BC8F8464();
    OUTLINED_FUNCTION_0_32();
    v21 = sub_1BC8F8454();
    if ((v20 & 1) == 0)
    {
      break;
    }

    if (v21 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    MEMORY[0x1EEE9AC00](v21);
    OUTLINED_FUNCTION_2_30();
    v24 = v22 - v23;
    sub_1BC8B5AF8();
    sub_1BC8F8434();
    sub_1BC8F7B84();
    OUTLINED_FUNCTION_3_27();
    v25(v24, v1);
    if (v1)
    {
      __break(1u);
LABEL_19:
      OUTLINED_FUNCTION_0_32();
      if (sub_1BC8F8454() == 64)
      {
        OUTLINED_FUNCTION_1_31();
        if ((sub_1BC8F8464() & 1) == 0)
        {
          continue;
        }
      }
    }

    goto LABEL_24;
  }

  if (v21 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  OUTLINED_FUNCTION_0_32();
  sub_1BC8F8444();
LABEL_24:
  OUTLINED_FUNCTION_0_32();
  v26 = sub_1BC8F8444();
  (*(v3 + 8))(v6, v1);
  result = 1000 * v26;
  if ((v26 * 1000) >> 64 != (1000 * v26) >> 63)
  {
    __break(1u);
    goto LABEL_26;
  }

  return result;
}

Swift::Int __swiftcall Int.init(kilobytes:)(Swift::Int kilobytes)
{
  result = 1000 * kilobytes;
  if ((kilobytes * 1000) >> 64 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall Int.init(megabytes:)(Swift::Int megabytes)
{
  v1 = 1000 * megabytes;
  if ((megabytes * 1000) >> 64 != (1000 * megabytes) >> 63)
  {
    __break(1u);
    goto LABEL_5;
  }

  megabytes *= 1000000;
  if ((v1 * 1000) >> 64 != megabytes >> 63)
  {
LABEL_5:
    __break(1u);
  }

  return megabytes;
}

uint64_t Int.description.getter(uint64_t a1)
{
  v1 = [objc_opt_self() stringFromByteCount:a1 countStyle:0];
  v2 = sub_1BC8F7C24();

  return v2;
}

uint64_t sub_1BC8DC734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v31 = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  v7 = v30;
  v6 = v31;
  v8 = __swift_project_boxed_opaque_existential_1(v29, v30);
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  (*(v9 + 16))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v6 + 8);
  if ((sub_1BC8F8464() & 1) == 0 || sub_1BC8F8454() < 65)
  {
    goto LABEL_14;
  }

  v28 = 0x8000000000000000;
  if (sub_1BC8F8464())
  {
    v12 = sub_1BC8F8454();
    if (v12 < 64)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v13 = sub_1BC8F8464();
  v12 = sub_1BC8F8454();
  if ((v13 & 1) == 0)
  {
    if (v12 >= 64)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v12 > 64)
  {
LABEL_8:
    v27 = v26;
    MEMORY[0x1EEE9AC00](v12);
    sub_1BC8B5AF8();
    sub_1BC8F8434();
    v14 = sub_1BC8F7B84();
    result = (*(v9 + 8))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    if (v14)
    {
      goto LABEL_30;
    }

LABEL_14:
    if (sub_1BC8F8454() <= 64 && (sub_1BC8F8454() != 64 || (sub_1BC8F8464() & 1) != 0))
    {
      goto LABEL_24;
    }

    v28 = 0x7FFFFFFFFFFFFFFFLL;
    v20 = sub_1BC8F8464();
    v21 = sub_1BC8F8454();
    if (v20)
    {
      if (v21 <= 64)
      {
        goto LABEL_22;
      }
    }

    else if (v21 < 64)
    {
LABEL_22:
      sub_1BC8F8444();
      goto LABEL_24;
    }

    MEMORY[0x1EEE9AC00](v21);
    sub_1BC8B5AF8();
    sub_1BC8F8434();
    v22 = sub_1BC8F7B84();
    result = (*(v9 + 8))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    if (v22)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_24:
    v23 = sub_1BC8F8444();
    result = (*(v9 + 8))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v24 = 1000 * v23;
    if ((v23 * 1000) >> 64 == (1000 * v23) >> 63)
    {
      v25 = 1000000 * v23;
      if ((v24 * 1000) >> 64 == v25 >> 63)
      {
        __swift_destroy_boxed_opaque_existential_1(v29);
        return v25;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  v27 = *(*(v11 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26[2] = v26;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v26[0] = v26 - v17;
  swift_getAssociatedConformanceWitness();
  v18 = sub_1BC8F8B14();
  v26[1] = v26;
  MEMORY[0x1EEE9AC00](v18);
  sub_1BC8F8A84();
  v19 = sub_1BC8F7B84();
  result = (*(v9 + 8))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  if ((v19 & 1) == 0)
  {
LABEL_13:
    sub_1BC8F8444();
    goto LABEL_14;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1BC8DCCA4()
{

  return v0;
}

uint64_t sub_1BC8DCCD4()
{
  sub_1BC8DCCA4();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

id sub_1BC8DCD2C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1BC8F7BE4();

  v4 = [v2 initWithStringValue_];

  return v4;
}

id sub_1BC8DCDA0(void *a1)
{
  v2 = [a1 type];
  if (v2 == 2)
  {
    v5 = sub_1BC870714(a1);
    if (v6)
    {
      v7 = v5;
      v8 = v6;
    }

    else
    {
      v14 = [a1 value];
      v7 = sub_1BC8F7C24();
      v8 = v15;
    }

    v16 = objc_opt_self();
    sub_1BC7D9730(0, &unk_1EBCF6900, 0x1E695CF50);
    v3 = sub_1BC8DCD2C(v7, v8);
    v4 = [v16 predicateForContactsMatchingPhoneNumber_];
  }

  else if (v2 == 3)
  {
    v3 = [a1 value];
    if (!v3)
    {
      sub_1BC8F7C24();
      v3 = sub_1BC8F7BE4();
    }

    v4 = [objc_opt_self() predicateForContactsMatchingEmailAddress_];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6280, &qword_1BC904170);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BC8FC230;
    v10 = sub_1BC870714(a1);
    if (v11)
    {
      v12 = v10;
      v13 = v11;
    }

    else
    {
      v17 = [a1 value];
      v12 = sub_1BC8F7C24();
      v13 = v18;
    }

    *(v9 + 32) = v12;
    *(v9 + 40) = v13;
    v19 = objc_opt_self();
    v3 = sub_1BC8F7E34();

    v4 = [v19 predicateForContactsMatchingHandleStrings_];
  }

  v20 = v4;

  return v20;
}

void sub_1BC8DCF90(uint64_t a1, uint64_t a2)
{
  sub_1BC7D9730(0, &qword_1EDC1DD30, 0x1E69D8C00);
  v3 = sub_1BC8F7AD4();
  v4 = 0;
  v66 = a1 & 0xC000000000000001;
  v69 = sub_1BC7C0454(a1);
  v64 = a1 & 0xFFFFFFFFFFFFFF8;
  v65 = a1;
  while (v69 != v4)
  {
    if (v66)
    {
      v5 = MEMORY[0x1BFB29A00](v4, v65);
    }

    else
    {
      if (v4 >= *(v64 + 16))
      {
        goto LABEL_44;
      }

      v5 = *(v65 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
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
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v7 = sub_1BC870714(v5);
    if (v8)
    {
      v9 = v7;
      v10 = v8;
    }

    else
    {
      v11 = [v6 value];
      v9 = sub_1BC8F7C24();
      v10 = v12;
    }

    v13 = v6;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1BC803CBC(v9, v10);
    OUTLINED_FUNCTION_3_28();
    if (__OFADD__(v16, v17))
    {
      goto LABEL_45;
    }

    v18 = v14;
    v19 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6930, &qword_1BC909D58);
    if (sub_1BC8F8734())
    {
      v20 = sub_1BC803CBC(v9, v10);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_50;
      }

      v18 = v20;
    }

    if (v19)
    {

      v22 = v3[7];
      v23 = *(v22 + 8 * v18);
      *(v22 + 8 * v18) = v13;
    }

    else
    {
      OUTLINED_FUNCTION_37_10(&v3[v18 >> 6]);
      v24 = (v3[6] + 16 * v18);
      *v24 = v9;
      v24[1] = v10;
      *(v3[7] + 8 * v18) = v13;

      v25 = v3[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_46;
      }

      v3[2] = v27;
    }

    ++v4;
  }

  v28 = sub_1BC8B47F0();
  v29 = sub_1BC8DD430(v28, a2);
  if (v62)
  {
  }

  else
  {
    v30 = v29;

    v31 = 0;
    v32 = v30 + 64;
    OUTLINED_FUNCTION_45_0();
    v35 = v34 & v33;
    v37 = (v36 + 63) >> 6;
    v67 = MEMORY[0x1E69E7CC8];
    v70 = v30;
LABEL_23:
    if (v35)
    {
      v38 = v35;
      goto LABEL_29;
    }

    while (1)
    {
      v39 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_47;
      }

      if (v39 >= v37)
      {
        break;
      }

      v38 = *&v32[8 * v39];
      ++v31;
      if (v38)
      {
        v31 = v39;
LABEL_29:
        v35 = (v38 - 1) & v38;
        if (!v3[2])
        {
          goto LABEL_23;
        }

        v40 = __clz(__rbit64(v38)) | (v31 << 6);
        v41 = *(*(v30 + 7) + 8 * v40);
        v42 = (*(v30 + 6) + 16 * v40);
        v43 = *v42;
        v44 = v42[1];

        v45 = sub_1BC803CBC(v43, v44);
        v47 = v46;

        if ((v47 & 1) == 0)
        {
          goto LABEL_31;
        }

        v48 = *(v3[7] + 8 * v45);
        swift_isUniquelyReferenced_nonNull_native();
        v71 = v67;
        v63 = v48;
        sub_1BC83CAA8();
        v68 = v49;
        OUTLINED_FUNCTION_3_28();
        if (__OFADD__(v51, v52))
        {
          goto LABEL_48;
        }

        v53 = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6938, &unk_1BC909D60);
        if (sub_1BC8F8734())
        {
          v54 = v63;
          v55 = sub_1BC83CAA8();
          v57 = v68;
          if ((v68 & 1) == (v56 & 1))
          {
            v53 = v55;
            goto LABEL_38;
          }

          while (1)
          {
LABEL_50:
            sub_1BC8F8B44();
            __break(1u);
          }
        }

        v54 = v63;
        v57 = v68;
LABEL_38:
        v67 = v71;
        if ((v57 & 1) == 0)
        {
          OUTLINED_FUNCTION_37_10(v71 + 8 * (v53 >> 6));
          *(v58[6] + 8 * v53) = v54;
          *(v58[7] + 8 * v53) = v41;
          v59 = v58[2];
          v26 = __OFADD__(v59, 1);
          v60 = v59 + 1;
          if (!v26)
          {
            v58[2] = v60;
            goto LABEL_32;
          }

          goto LABEL_49;
        }

        *(*(v71 + 56) + 8 * v53) = v41;

LABEL_31:

LABEL_32:
        v30 = v70;
        goto LABEL_23;
      }
    }
  }
}

id sub_1BC8DD430(uint64_t a1, uint64_t a2)
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 16))
  {
    v3 = v2;
    sub_1BC7D9730(0, &qword_1EDC1DDE0, 0x1E695CD78);

    v5 = sub_1BC8DDEA4(v4);
    v6 = objc_opt_self();
    v7 = sub_1BC8F7E34();
    v8 = [v6 predicateForContactsMatchingHandleStrings_];

    [v5 setPredicate_];
    if (qword_1EDC20728 != -1)
    {
      swift_once();
    }

    v9 = sub_1BC8F7734();
    __swift_project_value_buffer(v9, qword_1EDC2B3A8);
    v10 = v5;
    v11 = sub_1BC8F7714();
    v12 = sub_1BC8F8204();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138477827;
      *(v13 + 4) = v10;
      *v14 = v10;
      v15 = v10;
      _os_log_impl(&dword_1BC7A3000, v11, v12, "Executing contact fetch request %{private}@", v13, 0xCu);
      sub_1BC8504B8(v14);
      MEMORY[0x1BFB2AA50](v14, -1, -1);
      MEMORY[0x1BFB2AA50](v13, -1, -1);
    }

    v23[0] = 0;
    v16 = [v3 executeFetchRequest:v10 error:v23];
    v17 = v23[0];
    if (v16)
    {
      v18 = v16;
      v19 = v23[0];
      v23[0] = [v18 value];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6910, &qword_1BC909D40);
      if (swift_dynamicCast())
      {

        return v22;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5E00, &qword_1BC9041D8);
        v17 = sub_1BC8F7AD4();
      }
    }

    else
    {
      v21 = v23[0];
      sub_1BC8F6EA4();

      swift_willThrow();
    }

    return v17;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5E00, &qword_1BC9041D8);
    return sub_1BC8F7AD4();
  }
}

void sub_1BC8DD798(uint64_t a1, uint64_t a2)
{
  v100 = a2;
  v3 = sub_1BC8F73D4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v99 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v114 = &v98 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v98 - v9;
  v11 = sub_1BC8F7AD4();
  v12 = a1 + 56;
  OUTLINED_FUNCTION_45_0();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  v107 = v4 + 8;
  v109 = v4;
  v102 = v4 + 40;
  v103 = v4 + 32;
  v111 = a1;

  v18 = v17;
  v19 = 0;
  v104 = v18;
  v105 = a1 + 56;
  v110 = v3;
  v108 = v4 + 16;
  v106 = v10;
  if (v15)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_2:
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (v20 >= v18)
    {

      v44 = sub_1BC8B47F0();
      v45 = v101;
      v46 = sub_1BC8DD430(v44, v100);
      if (v45)
      {

        return;
      }

      v47 = v46;
      v112 = 0;

      v48 = 0;
      v49 = v47 + 64;
      OUTLINED_FUNCTION_45_0();
      v52 = v51 & v50;
      v54 = (v53 + 63) >> 6;
      v113 = MEMORY[0x1E69E7CC8];
      v114 = v47;
      while (v52)
      {
        v55 = v52;
LABEL_28:
        v52 = (v55 - 1) & v55;
        if (v11[2])
        {
          v57 = __clz(__rbit64(v55)) | (v48 << 6);
          v58 = *(v47 + 6);
          v59 = *(*(v47 + 7) + 8 * v57);
          v60 = (v58 + 16 * v57);
          v61 = *v60;
          v62 = v60[1];

          v63 = sub_1BC803CBC(v61, v62);
          v65 = v64;

          if (v65)
          {
            (*(v109 + 16))(v99, v11[7] + *(v109 + 72) * v63, v110);
            sub_1BC8F73A4();
            if (v66)
            {

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              OUTLINED_FUNCTION_2_31(isUniquelyReferenced_nonNull_native);
              LODWORD(v113) = v68;
              OUTLINED_FUNCTION_3_28();
              if (__OFADD__(v70, v71))
              {
                goto LABEL_59;
              }

              v72 = v69;
              v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6920, &qword_1BC909D50);
              if (OUTLINED_FUNCTION_8_29(v73))
              {
                v74 = v111;
                sub_1BC803CBC(v106, v111);
                OUTLINED_FUNCTION_5_27();
                if (!v77)
                {
                  goto LABEL_62;
                }

                v72 = v75;
              }

              else
              {
                v74 = v111;
                v76 = v113;
              }

              if (v76)
              {

                OUTLINED_FUNCTION_4_17();
              }

              else
              {
                OUTLINED_FUNCTION_37_10(&v115[v72 >> 6]);
                v79 = (v78[6] + 16 * v72);
                *v79 = v106;
                v79[1] = v74;
                *(v78[7] + 8 * v72) = v59;
                v80 = v78[2];
                v42 = __OFADD__(v80, 1);
                v81 = v80 + 1;
                if (v42)
                {
                  goto LABEL_61;
                }

                v113 = v78;
                v78[2] = v81;
              }
            }

            sub_1BC8F73C4();
            v82 = swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_2_31(v82);
            LODWORD(v113) = v83;
            OUTLINED_FUNCTION_3_28();
            if (__OFADD__(v85, v86))
            {
              goto LABEL_58;
            }

            v87 = v84;
            v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6920, &qword_1BC909D50);
            if (OUTLINED_FUNCTION_8_29(v88))
            {
              sub_1BC803CBC(v106, v111);
              OUTLINED_FUNCTION_5_27();
              if (!v77)
              {
                goto LABEL_62;
              }

              v87 = v89;
            }

            else
            {
              v90 = v113;
            }

            if (v90)
            {

              OUTLINED_FUNCTION_4_17();
              OUTLINED_FUNCTION_6_24();
              v91(v99, v110);
            }

            else
            {
              v92 = v115;
              OUTLINED_FUNCTION_37_10(&v115[v87 >> 6]);
              v93 = (v92[6] + 16 * v87);
              v94 = v111;
              *v93 = v106;
              v93[1] = v94;
              *(v92[7] + 8 * v87) = v59;
              OUTLINED_FUNCTION_6_24();
              v95(v99);
              v96 = v92[2];
              v42 = __OFADD__(v96, 1);
              v97 = v96 + 1;
              if (v42)
              {
                goto LABEL_60;
              }

              v113 = v92;
              v92[2] = v97;
            }
          }

          else
          {
          }

          v47 = v114;
        }
      }

      while (1)
      {
        v56 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_55;
        }

        if (v56 >= v54)
        {

          return;
        }

        v55 = *&v49[8 * v56];
        ++v48;
        if (v55)
        {
          v48 = v56;
          goto LABEL_28;
        }
      }
    }

    v15 = *(v12 + 8 * v20);
    ++v19;
  }

  while (!v15);
  v19 = v20;
LABEL_6:
  while (1)
  {
    v21 = v11;
    v22 = *(v111 + 48);
    v113 = *(v109 + 72);
    v23 = *(v109 + 16);
    v23(v10, v22 + v113 * (__clz(__rbit64(v15)) | (v19 << 6)), v3);
    v24 = sub_1BC8F73A4();
    if (v25)
    {
      v26 = v25;
      v27 = v24;
    }

    else
    {
      v27 = sub_1BC8F73C4();
      v26 = v28;
    }

    v23(v114, v10, v3);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v21;
    v112 = v27;
    sub_1BC803CBC(v27, v26);
    OUTLINED_FUNCTION_3_28();
    if (__OFADD__(v31, v32))
    {
      break;
    }

    v3 = v29;
    v33 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6918, &qword_1BC909D48);
    if (sub_1BC8F8734())
    {
      v34 = sub_1BC803CBC(v112, v26);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_62;
      }

      v3 = v34;
    }

    v10 = v106;
    if (v33)
    {

      v11 = v115;
      OUTLINED_FUNCTION_7_22();
      v36();
      OUTLINED_FUNCTION_6_24();
      v37(v10, v3);
    }

    else
    {
      v11 = v115;
      OUTLINED_FUNCTION_37_10(&v115[v3 >> 6]);
      v38 = (v11[6] + 16 * v3);
      *v38 = v112;
      v38[1] = v26;
      OUTLINED_FUNCTION_7_22();
      v39();
      OUTLINED_FUNCTION_6_24();
      v40(v10, v3);
      v41 = v11[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_57;
      }

      v11[2] = v43;
    }

    v15 &= v15 - 1;
    v18 = v104;
    v12 = v105;
    if (!v15)
    {
      goto LABEL_2;
    }
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  sub_1BC8F8B44();
  __break(1u);
}

id sub_1BC8DDEA4(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF60A0, &qword_1BC905378);
  v2 = sub_1BC8F7E34();

  v3 = [v1 initWithKeysToFetch_];

  return v3;
}

id sub_1BC8DDF28(uint64_t a1, SEL *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v3 = [v2 *a2];
  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_1BC8F6EA4();

    swift_willThrow();
  }

  return v3;
}

id sub_1BC8DDFE0(void *a1)
{
  v2 = v1;
  v12[1] = *MEMORY[0x1E69E9840];
  sub_1BC7D9730(0, &qword_1EDC1DDE0, 0x1E695CD78);
  v4 = sub_1BC8DDEA4(MEMORY[0x1E69E7CC0]);
  v5 = sub_1BC8DCDA0(a1);
  [v4 setPredicate_];

  v12[0] = 0;
  v6 = [v2 countForFetchRequest:v4 error:v12];
  if (v6)
  {
    v7 = v6;
    v8 = v12[0];
    v9 = [v7 value];

    v10 = [v9 integerValue];
  }

  else
  {
    v10 = v12[0];
    sub_1BC8F6EA4();

    swift_willThrow();
  }

  return v10;
}

uint64_t sub_1BC8DE294(void *a1)
{
  v1 = [a1 currentHistoryToken];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1BC8F70D4();

  return v3;
}

void sub_1BC8DE31C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BC8F7014();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, 1, v4);
  v6 = 0;
  if (EnumTagSinglePayload != 1)
  {
    v7 = sub_1BC8F6F44();
    (*(*(v4 - 8) + 8))(a1, v4);
    v6 = v7;
  }

  v8 = v6;
  [v2 setOutputURL_];
}

id sub_1BC8DE400()
{
  v1 = [v0 error];

  return v1;
}

void sub_1BC8DE494(void *a1)
{
  [v1 setOutputFileType_];
}

uint64_t sub_1BC8DE500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_5();
  v13 = swift_task_alloc();
  *(v12 + 24) = v13;
  *v13 = v12;
  v13[1] = sub_1BC8DE5A8;

  return sub_1BC8DE690(0, 0, sub_1BC8DE690, v14, v15, v16, v17, v18, a9, a10, a11, a12);
}

uint64_t sub_1BC8DE5A8()
{
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1BC8DE690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13[2] = v13;
  v13[3] = sub_1BC8DE7A0;
  v14 = swift_continuation_init();
  v13[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5DE8, &qword_1BC9041C8);
  v13[10] = MEMORY[0x1E69E9820];
  v13[11] = 1107296256;
  v13[12] = sub_1BC860308;
  v13[13] = &block_descriptor_10;
  v13[14] = v14;
  [v12 exportAsynchronouslyWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v13 + 2, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_1BC8DE7A0()
{
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1BC8DE884@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  type metadata accessor for FaceTimeMessageStore_Summary(0);
  return sub_1BC8F7424();
}

uint64_t sub_1BC8DE8C4()
{
  v0 = sub_1BC8F7614();
  __swift_allocate_value_buffer(v0, qword_1EBD068D8);
  __swift_project_value_buffer(v0, qword_1EBD068D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF67E8, &qword_1BC9090E8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF67F0, &unk_1BC9090F0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC8FEAA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1BC8F75F4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1BC8F7604();
}

uint64_t sub_1BC8DEA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1BC8F74A4();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_1BC8F74F4();
    }

    else if (result == 1)
    {
      sub_1BC8F74B4();
    }
  }

  return result;
}

uint64_t sub_1BC8DEB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1BC8F7594(), !v4))
  {
    v6 = *(v3 + 16);
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *(v3 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_1BC8F75B4(), !v4))
    {
      type metadata accessor for FaceTimeMessageStore_Summary(0);
      return sub_1BC8F7414();
    }
  }

  return result;
}

uint64_t sub_1BC8DEBDC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v2 && (sub_1BC8F8AA4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FaceTimeMessageStore_Summary(0);
  sub_1BC8F7434();
  sub_1BC8DF0B8(&qword_1EBCF4F18, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1BC8F7BC4() & 1;
}

uint64_t sub_1BC8DECAC()
{
  sub_1BC8F8C04();
  type metadata accessor for FaceTimeMessageStore_Summary(0);
  sub_1BC8DF0B8(&qword_1EBCF6948, type metadata accessor for FaceTimeMessageStore_Summary, &unk_1BC909E78);
  sub_1BC8F7B64();
  return sub_1BC8F8C64();
}

uint64_t sub_1BC8DED84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC8DF0B8(&qword_1EBCF6958, type metadata accessor for FaceTimeMessageStore_Summary, &unk_1BC909F08);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1BC8DEE00@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBCF47A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BC8F7614();
  v3 = __swift_project_value_buffer(v2, qword_1EBD068D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BC8DEEA8(uint64_t a1)
{
  v2 = sub_1BC8DF0B8(&qword_1EBCF5B58, type metadata accessor for FaceTimeMessageStore_Summary, &unk_1BC909F40);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1BC8DEF18(uint64_t a1, uint64_t a2)
{
  sub_1BC8DF0B8(&qword_1EBCF5B58, type metadata accessor for FaceTimeMessageStore_Summary, &unk_1BC909F40);

  return sub_1BC8F7584();
}

uint64_t sub_1BC8DF0B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BC8DF128(uint64_t a1)
{
  result = sub_1BC8F7434();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1BC8DF1AC(char a1)
{
  if (((1 << a1) & 0x1F) != 0)
  {
    return 0xD000000000000027;
  }

  if (((1 << a1) & 0xE0) != 0)
  {
    return 0xD000000000000025;
  }

  v2 = sub_1BC8DF268(a1);
  MEMORY[0x1BFB29120](v2);

  return 0xD000000000000016;
}

unint64_t sub_1BC8DF268(char a1)
{
  result = 7173740;
  switch(a1)
  {
    case 1:
      v3 = 1701602660;
      goto LABEL_9;
    case 2:
      result = 1684104562;
      break;
    case 3:
      v3 = 1633972341;
LABEL_9:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 4:
      result = 0x7246657461647075;
      break;
    case 5:
      return result;
    case 6:
      result = 7173750;
      break;
    case 7:
      result = 28022;
      break;
    case 8:
      result = 0xD00000000000001CLL;
      break;
    case 9:
      result = 0xD00000000000001BLL;
      break;
    default:
      result = 6579297;
      break;
  }

  return result;
}

uint64_t sub_1BC8DF360()
{
  *(v0 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6960, &qword_1BC90A0F8);
  swift_allocObject();
  *(v0 + 16) = sub_1BC8F78A4();
  swift_allocObject();
  swift_weakInit();

  sub_1BC8F7864();

  return v0;
}

uint64_t sub_1BC8DF424(uint64_t a1, uint64_t a2)
{
  if (qword_1EDC20720 != -1)
  {
    swift_once();
  }

  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EDC2B390);
  v3 = sub_1BC8F7714();
  v4 = sub_1BC8F8204();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BC7A3000, v3, v4, "Server disconnected", v5, 2u);
    MEMORY[0x1BFB2AA50](v5, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    atomic_store(0, (result + 24));
  }

  return result;
}

uint64_t sub_1BC8DF534()
{
  OUTLINED_FUNCTION_5();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_1BC8F7014();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC8DF5F0, 0, 0);
}

uint64_t sub_1BC8DF5F0()
{
  v27 = v0;
  if (qword_1EDC20720 != -1)
  {
    swift_once();
  }

  v1 = sub_1BC8F7734();
  __swift_project_value_buffer(v1, qword_1EDC2B390);
  v2 = sub_1BC8F7714();
  v3 = sub_1BC8F8204();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v26 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1BC7A9A4C(0xD000000000000014, 0x80000001BC90E5E0, &v26);
    _os_log_impl(&dword_1BC7A3000, v2, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1BFB2AA50](v5, -1, -1);
    MEMORY[0x1BFB2AA50](v4, -1, -1);
  }

  sub_1BC8F6CB4();
  swift_allocObject();
  sub_1BC8F6CA4();
  v6 = type metadata accessor for OutgoingVideoMessage(0);
  sub_1BC8DFB4C();
  v7 = sub_1BC8F6C94();
  v0[10] = v7;
  v0[11] = v8;
  v9 = v7;
  v10 = v8;
  v12 = v0[8];
  v11 = v0[9];
  v13 = v0[7];
  v14 = v0[5];

  (*(v12 + 16))(v11, v14 + *(v6 + 32), v13);
  v15 = objc_allocWithZone(type metadata accessor for SandboxExtendedURL());
  v16 = SandboxExtendedURL.init(url:)(v11);
  v0[12] = v16;
  v0[2] = v9;
  v0[3] = v10;
  v0[4] = v16;
  sub_1BC7EC5DC(v9, v10);
  v17 = v16;
  v18 = swift_task_alloc();
  v0[13] = v18;
  v19 = sub_1BC8DFBA4();
  *v18 = v0;
  v18[1] = sub_1BC8DF8E4;

  return MEMORY[0x1EEDF2E08](v0 + 2, &type metadata for SendVideoMessage, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_1BC8DF8E4()
{
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  v2[14] = v0;

  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  sub_1BC7D4C94(v3, v4);

  if (v0)
  {
    v6 = sub_1BC8DFA84;
  }

  else
  {
    v6 = sub_1BC8DFA04;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1BC8DFA04()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);

  sub_1BC7D4C94(v2, v1);

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_1BC8DFA84()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[12];
  sub_1BC7D4C94(v0[10], v0[11]);

  OUTLINED_FUNCTION_27();

  return v2();
}

uint64_t sub_1BC8DFAF0()
{

  return MEMORY[0x1EEE6BDC0](v0, 25, 7);
}

unint64_t sub_1BC8DFB4C()
{
  result = qword_1EBCF5720;
  if (!qword_1EBCF5720)
  {
    type metadata accessor for OutgoingVideoMessage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5720);
  }

  return result;
}

unint64_t sub_1BC8DFBA4()
{
  result = qword_1EDC1FA18;
  if (!qword_1EDC1FA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1FA18);
  }

  return result;
}

uint64_t sub_1BC8DFC10()
{
  v0 = sub_1BC8F7794();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC8F7764();
  swift_allocObject();
  sub_1BC8F7754();
  sub_1BC8F7744();
  if (sub_1BC8F7774())
  {
    (*(v1 + 8))(v3, v0);

    v4 = 1;
  }

  else
  {
    v4 = sub_1BC8F7784();

    (*(v1 + 8))(v3, v0);
  }

  return v4 & 1;
}

uint64_t sub_1BC8DFD48(uint64_t a1)
{
  v43 = sub_1BC8F73D4();
  v3 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v34[1] = v1;
    v47 = MEMORY[0x1E69E7CC0];
    sub_1BC7AD404(0, v5, 0);
    v7 = v47;
    v10 = sub_1BC83053C();
    result = v7;
    v11 = 0;
    v12 = a1 + 56;
    v39 = v3 + 8;
    v40 = v3 + 16;
    v35 = a1 + 64;
    v36 = v5;
    v37 = v3;
    v38 = a1;
    v41 = a1 + 56;
    if ((v10 & 0x8000000000000000) == 0)
    {
      while (v10 < 1 << *(a1 + 32))
      {
        v13 = v10 >> 6;
        if ((*(v12 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v8)
        {
          goto LABEL_25;
        }

        v46 = v9;
        v44 = v11;
        v45 = v8;
        v14 = v42;
        v15 = v43;
        v16 = result;
        (*(v3 + 16))(v42, *(a1 + 48) + *(v3 + 72) * v10, v43);
        v17 = sub_1BC8F7394();
        v19 = v18;
        (*(v3 + 8))(v14, v15);
        result = v16;
        v47 = v16;
        v21 = *(v16 + 16);
        v20 = *(v16 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1BC7AD404(v20 > 1, v21 + 1, 1);
          result = v47;
        }

        *(result + 16) = v21 + 1;
        v22 = result + 16 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
        v12 = v41;
        if (v46)
        {
          goto LABEL_29;
        }

        v3 = v37;
        a1 = v38;
        v23 = 1 << *(v38 + 32);
        if (v10 >= v23)
        {
          goto LABEL_26;
        }

        v24 = *(v41 + 8 * v13);
        if ((v24 & (1 << v10)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v38 + 36) != v45)
        {
          goto LABEL_28;
        }

        v25 = v24 & (-2 << (v10 & 0x3F));
        if (v25)
        {
          v23 = __clz(__rbit64(v25)) | v10 & 0x7FFFFFFFFFFFFFC0;
          v26 = v36;
        }

        else
        {
          v27 = v13 << 6;
          v28 = v13 + 1;
          v26 = v36;
          v29 = (v35 + 8 * v13);
          while (v28 < (v23 + 63) >> 6)
          {
            v31 = *v29++;
            v30 = v31;
            v27 += 64;
            ++v28;
            if (v31)
            {
              v32 = result;
              sub_1BC7FBED8(v10, v45, 0);
              result = v32;
              v23 = __clz(__rbit64(v30)) + v27;
              goto LABEL_19;
            }
          }

          v33 = result;
          sub_1BC7FBED8(v10, v45, 0);
          result = v33;
        }

LABEL_19:
        v11 = v44 + 1;
        if (v44 + 1 == v26)
        {
          return result;
        }

        v9 = 0;
        v8 = *(a1 + 36);
        v10 = v23;
        if (v23 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BC8E0074(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1BC8F8504();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t Person.description.getter()
{
  v42 = *MEMORY[0x1E69E9840];
  v1 = sub_1BC8F7C64();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  v5 = v0[1];
  v7 = v0[2];
  v6 = v0[3];
  v8 = sub_1BC8E0074(v7);
  if (v8)
  {
    v9 = v8;
    v41 = MEMORY[0x1E69E7CC0];
    v10 = v8 & ~(v8 >> 63);

    sub_1BC7DD9E4(0, v10, 0);
    if (v9 < 0)
    {
      goto LABEL_22;
    }

    v37 = v5;
    v38 = v4;
    v39 = v6;
    v40 = v3;
    v11 = 0;
    v12 = v41;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1BFB29A00](v11, v7);
      }

      else
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
        }

        if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v13 = *(v7 + 8 * v11 + 32);
      }

      v14 = v13;
      sub_1BC8E15CC(v13);
      v16 = v15;

      v41 = v12;
      v18 = v12[2];
      v17 = v12[3];
      if (v18 >= v17 >> 1)
      {
        sub_1BC7DD9E4(v17 > 1, v18 + 1, 1);
        v12 = v41;
      }

      ++v11;
      v12[2] = v18 + 1;
      v12[v18 + 4] = v16;
      if (v9 == v11)
      {
        v6 = v39;
        v4 = v38;
        v5 = v37;
        goto LABEL_14;
      }
    }
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF55B0, &qword_1BC90A130);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC8FE840;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  v20 = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 72) = v20;
  *(inited + 80) = 0x73746361746E6F63;
  *(inited + 88) = 0xE800000000000000;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF55B8, &qword_1BC900668);
  *(inited + 96) = v12;
  *(inited + 120) = v21;
  *(inited + 128) = 0x73656C646E6168;
  *(inited + 136) = 0xE700000000000000;
  v22 = sub_1BC8DFD48(v6);
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
  *(inited + 144) = v22;
  v23 = sub_1BC8F7AD4();
  v24 = objc_opt_self();
  v41 = v23;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5030, &unk_1BC8FC7D0);
  v25 = sub_1BC8F8B24();
  v41 = 0;
  v26 = [v24 dataWithJSONObject:v25 options:1 error:&v41];
  swift_unknownObjectRelease();
  v27 = v41;
  if (!v26)
  {
    v34 = v27;
    v35 = sub_1BC8F6EA4();

    swift_willThrow();
    goto LABEL_18;
  }

  v28 = sub_1BC8F70D4();
  v30 = v29;

  sub_1BC8F7C54();
  v31 = sub_1BC8F7C34();
  v33 = v32;
  sub_1BC7D4C94(v28, v30);
  if (!v33)
  {
LABEL_18:

    return 32123;
  }

  return v31;
}

uint64_t sub_1BC8E04AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BC83053C();
  if (v6)
  {
    goto LABEL_10;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    v7 = 1;
  }

  else
  {
    sub_1BC8E2298(result, v5, a1, a2);
    v7 = 0;
  }

  v8 = sub_1BC8F73D4();

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v8);
}

double sub_1BC8E0544@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1BC7A792C(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t Person.init(contacts:handles:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF56B8, &unk_1BC900B80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v30 - v7;
  if (sub_1BC8E0074(a1))
  {
    v9 = sub_1BC8E0074(a1);
    v10 = MEMORY[0x1E69E7CC0];
    if (!v9)
    {
LABEL_12:
      v32 = v10;

      sub_1BC7F8024(&v32);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
      sub_1BC7ADBA4();
      v23 = sub_1BC8F7B74();
      v25 = v24;

LABEL_17:
      *a3 = v23;
      a3[1] = v25;
      a3[2] = a1;
      a3[3] = a2;
      return result;
    }

    v11 = v9;
    v32 = MEMORY[0x1E69E7CC0];
    v12 = v9 & ~(v9 >> 63);

    sub_1BC7AD404(0, v12, 0);
    if ((v11 & 0x8000000000000000) == 0)
    {
      v30 = a3;
      v31 = a2;
      v13 = 0;
      v10 = v32;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1BFB29A00](v13, a1);
        }

        else
        {
          v14 = *(a1 + 8 * v13 + 32);
        }

        v15 = v14;
        v16 = [v15 identifier];
        v17 = sub_1BC8F7C24();
        v19 = v18;

        v32 = v10;
        v21 = *(v10 + 16);
        v20 = *(v10 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1BC7AD404(v20 > 1, v21 + 1, 1);
          v10 = v32;
        }

        ++v13;
        *(v10 + 16) = v21 + 1;
        v22 = v10 + 16 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
      }

      while (v11 != v13);

      a3 = v30;
      a2 = v31;
      goto LABEL_12;
    }

    __break(1u);
  }

  else
  {

    sub_1BC8E04AC(v27, v8);

    v11 = sub_1BC8F73D4();
    if (__swift_getEnumTagSinglePayload(v8, 1, v11) != 1)
    {
      sub_1BC8F73A4();
      if (!v28)
      {
        sub_1BC8F73C4();
      }

      v23 = sub_1BC8F7C84();
      v25 = v29;

      result = (*(*(v11 - 8) + 8))(v8, v11);
      goto LABEL_17;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t Person.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1BC8E087C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (OUTLINED_FUNCTION_0_4(0x696669746E656469, 0xEA00000000007265) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73746361746E6F63 && a2 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_4(0x73746361746E6F63, 0xE800000000000000) & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x73656C646E6168 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_0_4(0x73656C646E6168, 0xE700000000000000);

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1BC8E0970(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0x73746361746E6F63;
  }

  return 0x73656C646E6168;
}

uint64_t sub_1BC8E09D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC8E087C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC8E0A08(uint64_t a1)
{
  v2 = sub_1BC8E1EB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC8E0A44(uint64_t a1)
{
  v2 = sub_1BC8E1EB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Person.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6968, &qword_1BC90A138);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v28 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8E1EB4();
  sub_1BC8F8C84();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6978, &unk_1BC90A140);
    v38 = 1;
    v11 = sub_1BC8E1FD4(&qword_1EBCF6980, sub_1BC872C5C, MEMORY[0x1E69E6330]);
    OUTLINED_FUNCTION_2_32(v11);
    v12 = v39;
    LOBYTE(v39) = 0;
    v13 = sub_1BC8F88A4();
    v15 = v14;
    v34 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F50, &qword_1BC8FC6F8);
    v38 = 2;
    v16 = sub_1BC8E1F08(&qword_1EBCF6988, &qword_1EBCF6990, MEMORY[0x1E6993550], MEMORY[0x1E69E6510]);
    OUTLINED_FUNCTION_2_32(v16);
    v30 = v15;
    v31 = v7;
    v32 = v5;
    v17 = 0;
    v29 = v39;
    v33 = MEMORY[0x1E69E7CC0];
    v39 = MEMORY[0x1E69E7CC0];
    v36 = *(v12 + 16);
    v37 = v12;
    v18 = v12 + 40;
    v28[0] = v12 + 40;
    v28[1] = 0;
    v35 = a1;
LABEL_4:
    v19 = (v18 + 16 * v17);
    while (1)
    {
      if (v36 == v17)
      {
        (*(v31 + 8))(v10, v32);

        v25 = v33;
        v27 = v29;
        v26 = v30;
        *a2 = v34;
        a2[1] = v26;
        a2[2] = v25;
        a2[3] = v27;

        __swift_destroy_boxed_opaque_existential_1(a1);

        return;
      }

      if (v17 >= *(v37 + 16))
      {
        break;
      }

      v20 = a2;
      v21 = *(v19 - 1);
      v22 = *v19;
      sub_1BC7D9730(0, &qword_1EBCF5548, 0x1E696ACD0);
      sub_1BC7D9730(0, &qword_1EBCF4FB0, 0x1E695CD58);
      sub_1BC7EC5DC(v21, v22);
      v23 = sub_1BC8F8214();
      ++v17;
      v19 += 2;
      v24 = sub_1BC7D4C94(v21, v22);
      a2 = v20;
      a1 = v35;
      if (v23)
      {
        MEMORY[0x1BFB29230](v24);
        if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BC8F7E94();
        }

        sub_1BC8F7ED4();
        v33 = v39;
        v18 = v28[0];
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

double Person.encode(to:)(void *a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6998, &qword_1BC90A150);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v32 - v7;
  v9 = *(v1 + 24);
  v39 = *(v1 + 16);
  v37 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8E1EB4();
  sub_1BC8F8CA4();
  LOBYTE(v41) = 0;
  v10 = v38;
  sub_1BC8F89A4();
  if (v10)
  {
    (*(v5 + 8))(v8, v3);
    return result;
  }

  v41 = v37;
  LOBYTE(v40) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F50, &qword_1BC8FC6F8);
  v11 = sub_1BC8E1F08(&qword_1EBCF69A0, &qword_1EBCF69A8, MEMORY[0x1E6993538], MEMORY[0x1E69E64F0]);
  OUTLINED_FUNCTION_3_29(v11);
  v13 = v39;
  v14 = sub_1BC8E0074(v39);
  v15 = MEMORY[0x1E69E7CC0];
  if (!v14)
  {
    goto LABEL_18;
  }

  v16 = v14;
  v32[1] = 0;
  v33 = v5;
  v34 = v8;
  v35 = v3;
  v41 = MEMORY[0x1E69E7CC0];
  sub_1BC7DDE5C(0, v14 & ~(v14 >> 63), 0);
  if (v16 < 0)
  {
LABEL_21:
    __break(1u);
  }

  v17 = v16;
  v15 = v41;
  v18 = 0;
  v37 = objc_opt_self();
  v38 = v13 & 0xC000000000000001;
  v36 = v13 & 0xFFFFFFFFFFFFFF8;
  do
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v38)
    {
      v20 = MEMORY[0x1BFB29A00](v18, v13);
    }

    else
    {
      if (v18 >= *(v36 + 16))
      {
        goto LABEL_20;
      }

      v20 = *(v13 + 8 * v18 + 32);
    }

    v21 = v20;
    v40 = 0;
    v22 = [v37 archivedDataWithRootObject:v20 requiringSecureCoding:1 error:&v40];
    v23 = v40;
    if (!v22)
    {
      v30 = v23;
      sub_1BC8F6EA4();

      swift_willThrow();
      (*(v33 + 8))(v34, v35);

      return result;
    }

    v24 = sub_1BC8F70D4();
    v26 = v25;

    v41 = v15;
    v28 = v15[2];
    v27 = v15[3];
    if (v28 >= v27 >> 1)
    {
      sub_1BC7DDE5C((v27 > 1), v28 + 1, 1);
      v15 = v41;
    }

    v15[2] = v28 + 1;
    v29 = &v15[2 * v28];
    v29[4] = v24;
    v29[5] = v26;
    ++v18;
    v13 = v39;
  }

  while (v19 != v17);
  v8 = v34;
  v3 = v35;
  v5 = v33;
LABEL_18:
  v41 = v15;
  LOBYTE(v40) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6978, &unk_1BC90A140);
  v31 = sub_1BC8E1FD4(&qword_1EBCF69B0, sub_1BC872CB0, MEMORY[0x1E69E6300]);
  OUTLINED_FUNCTION_3_29(v31);
  (*(v5 + 8))(v8, v3);

  return result;
}

void Person.hash(into:)(uint64_t a1)
{
  v2 = sub_1BC8F73D4();
  OUTLINED_FUNCTION_0();
  v27 = v3;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v26 = v25 - v8;
  v9 = *(v1 + 16);
  v28 = *(v1 + 24);
  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_11:
    v15 = v28 + 56;
    v16 = 1 << *(v28 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v28 + 56);
    v19 = (v16 + 63) >> 6;
    v25[1] = v27 + 32;
    v25[2] = v27 + 16;
    v25[0] = v27 + 8;

    v20 = 0;
    if (v18)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        return;
      }

      v18 = *(v15 + 8 * v21);
      ++v20;
      if (v18)
      {
        v20 = v21;
        do
        {
LABEL_18:
          v22 = v27;
          v23 = v26;
          (*(v27 + 16))(v26, *(v28 + 48) + *(v27 + 72) * (__clz(__rbit64(v18)) | (v20 << 6)), v2);
          (*(v22 + 32))(v7, v23, v2);
          sub_1BC8F73A4();
          if (!v24)
          {
            sub_1BC8F73C4();
          }

          sub_1BC8F7C84();

          v18 &= v18 - 1;
          sub_1BC8F7CD4();

          (*v25[0])(v7, v2);
        }

        while (v18);
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v10 = sub_1BC8F8504();
  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v10 < 1)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v11 = 0;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1BFB29A00](v11, v9);
    }

    else
    {
      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    ++v11;
    v14 = [v12 identifier];
    sub_1BC8F7C24();

    sub_1BC8F7CD4();
  }

  while (v10 != v11);
}

void sub_1BC8E15CC(void *a1)
{
  v2 = sub_1BC8F6CE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 givenName];
  v7 = sub_1BC8F7C24();
  v9 = v8;

  v63 = v7;
  v64 = v9;
  MEMORY[0x1BFB29120](32, 0xE100000000000000);
  v10 = [a1 familyName];
  v11 = sub_1BC8F7C24();
  v13 = v12;

  MEMORY[0x1BFB29120](v11, v13);

  sub_1BC8F6CC4();
  sub_1BC7B7A9C();
  v14 = sub_1BC8F8414();
  v55 = v15;
  (*(v3 + 8))(v5, v2);

  v57 = a1;
  v16 = [a1 phoneNumbers];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6500, &qword_1BC907690);
  v18 = sub_1BC8F7E54();

  v19 = sub_1BC8E0074(v18);
  v20 = MEMORY[0x1E69E7CC0];
  v56 = v14;
  if (v19)
  {
    v21 = v19;
    v63 = MEMORY[0x1E69E7CC0];
    sub_1BC7DDE7C(0, v19 & ~(v19 >> 63), 0);
    if ((v21 & 0x8000000000000000) == 0)
    {
      v54[1] = v17;
      v22 = 0;
      v23 = v63;
      v59 = v18;
      v60 = v18 & 0xC000000000000001;
      v58 = v18 & 0xFFFFFFFFFFFFFF8;
      v24 = v21;
      while (1)
      {
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v60)
        {
          v26 = MEMORY[0x1BFB29A00](v22, v18);
        }

        else
        {
          if (v22 >= *(v58 + 16))
          {
            goto LABEL_25;
          }

          v26 = *(v18 + 8 * v22 + 32);
        }

        v27 = v26;
        v61 = v26;
        sub_1BC8E1B44(&v61, &v62);

        v28 = v62;
        v63 = v23;
        v30 = *(v23 + 16);
        v29 = *(v23 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1BC7DDE7C(v29 > 1, v30 + 1, 1);
          v23 = v63;
        }

        *(v23 + 16) = v30 + 1;
        *(v23 + 8 * v30 + 32) = v28;
        ++v22;
        v18 = v59;
        if (v25 == v24)
        {

          v20 = MEMORY[0x1E69E7CC0];
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  v23 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v31 = [v57 emailAddresses];
  v32 = sub_1BC8F7E54();

  v33 = sub_1BC8E0074(v32);
  if (!v33)
  {
LABEL_23:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF55B0, &qword_1BC90A130);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC8FC240;
    *(inited + 32) = 0x696669746E656469;
    *(inited + 40) = 0xEA00000000007265;
    v46 = [v57 identifier];
    v47 = sub_1BC8F7C24();
    v49 = v48;

    *(inited + 48) = v47;
    *(inited + 56) = v49;
    v50 = MEMORY[0x1E69E6158];
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 80) = 1701667182;
    v51 = v55;
    v52 = v56;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v52;
    *(inited + 104) = v51;
    *(inited + 120) = v50;
    strcpy((inited + 128), "phoneNumbers");
    *(inited + 141) = 0;
    *(inited + 142) = -5120;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF69D8, &qword_1BC90A378);
    *(inited + 144) = v23;
    *(inited + 168) = v53;
    strcpy((inited + 176), "emailAddresses");
    *(inited + 191) = -18;
    *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
    *(inited + 192) = v20;
    sub_1BC8F7AD4();
    return;
  }

  v34 = v33;
  v63 = v20;
  sub_1BC7AD404(0, v33 & ~(v33 >> 63), 0);
  if ((v34 & 0x8000000000000000) == 0)
  {
    v35 = 0;
    v20 = v63;
    v59 = v32 & 0xC000000000000001;
    v60 = v32;
    do
    {
      if (v59)
      {
        v36 = MEMORY[0x1BFB29A00](v35, v32);
      }

      else
      {
        v36 = *(v32 + 8 * v35 + 32);
      }

      v37 = v36;
      v38 = [v36 value];
      v39 = sub_1BC8F7C24();
      v41 = v40;

      v63 = v20;
      v43 = *(v20 + 16);
      v42 = *(v20 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_1BC7AD404(v42 > 1, v43 + 1, 1);
        v20 = v63;
      }

      ++v35;
      *(v20 + 16) = v43 + 1;
      v44 = v20 + 16 * v43;
      *(v44 + 32) = v39;
      *(v44 + 40) = v41;
      v32 = v60;
    }

    while (v34 != v35);
    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
}

void sub_1BC8E1B44(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 value];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4EB0, &qword_1BC90A380);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC8FC230;
  *(inited + 32) = 0x7265626D756ELL;
  *(inited + 40) = 0xE600000000000000;
  v5 = [v3 stringValue];
  v6 = sub_1BC8F7C24();
  v8 = v7;

  *(inited + 48) = v6;
  *(inited + 56) = v8;
  v9 = sub_1BC8F7AD4();
  v10 = sub_1BC8F7BE4();
  v11 = [v3 valueForKey_];

  if (v11)
  {
    sub_1BC8F8474();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    if (swift_dynamicCast())
    {
      swift_isUniquelyReferenced_nonNull_native();
      *&v14[0] = v9;
      sub_1BC83E138();
    }
  }

  else
  {

    sub_1BC803774(v14);
  }

  *a2 = v9;
}

void static Person.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1BC8F8AA4()) && (sub_1BC7DAD3C(v2, v3))
  {

    sub_1BC7F56A4();
  }
}

uint64_t Person.hashValue.getter()
{
  OUTLINED_FUNCTION_1_32();
  sub_1BC8F8C04();
  Person.hash(into:)(v1);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC8E1E4C()
{
  OUTLINED_FUNCTION_1_32();
  sub_1BC8F8C04();
  Person.hash(into:)(v1);
  return sub_1BC8F8C64();
}

unint64_t sub_1BC8E1E90(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1BC8E1EB4()
{
  result = qword_1EBCF6970;
  if (!qword_1EBCF6970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6970);
  }

  return result;
}

uint64_t sub_1BC8E1F08(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF4F50, &qword_1BC8FC6F8);
    sub_1BC8E1F90(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BC8E1F90(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1BC8F73D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BC8E1FD4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF6978, &unk_1BC90A140);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BC8E2050()
{
  result = qword_1EBCF69B8;
  if (!qword_1EBCF69B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF69B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Person.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BC8E2194()
{
  result = qword_1EBCF69C0;
  if (!qword_1EBCF69C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF69C0);
  }

  return result;
}

unint64_t sub_1BC8E21EC()
{
  result = qword_1EBCF69C8;
  if (!qword_1EBCF69C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF69C8);
  }

  return result;
}

unint64_t sub_1BC8E2244()
{
  result = qword_1EBCF69D0;
  if (!qword_1EBCF69D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF69D0);
  }

  return result;
}

uint64_t sub_1BC8E2298@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_1BC8F73D4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t VideoMessagingService.__allocating_init()()
{
  v0 = swift_allocObject();
  VideoMessagingService.init()();
  return v0;
}

void *VideoMessagingService.init()()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v23 - v4;
  v6 = sub_1BC8F7014();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_0_19(&qword_1EDC20728);
  }

  v10 = sub_1BC8F7734();
  __swift_project_value_buffer(v10, qword_1EDC2B3A8);
  v11 = sub_1BC8F7714();
  v12 = sub_1BC8F8204();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1BC7A3000, v11, v12, "Initialising video messaging service", v13, 2u);
    MEMORY[0x1BFB2AA50](v13, -1, -1);
  }

  *(swift_allocObject() + 16) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF69E0, &qword_1BC90A388);
  swift_allocObject();
  v1[2] = sub_1BC8F77E4();
  if (qword_1EDC1E220 != -1)
  {
    swift_once();
  }

  v23[5] = &type metadata for RadioNetworkQualityProvider;
  v23[6] = &off_1F3B3E120;
  v23[0] = sub_1BC841570;
  v23[1] = 0;
  v14 = qword_1EDC1E948;
  v15 = qword_1EDC2B2F8;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v6, qword_1EDC1E950);
  (*(v7 + 16))(v9, v16, v6);
  type metadata accessor for OutgoingMessageCache(0);
  swift_allocObject();
  v17 = sub_1BC7FDA14(v9);
  type metadata accessor for VideoMessagingServer();
  v18 = swift_allocObject();
  v18[2] = v15;
  v18[3] = &off_1F3B3ACC8;
  sub_1BC8E2878(v23, (v18 + 4));
  v18[11] = v17;
  *&v15[OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_outgoingDelegate + 8] = &off_1F3B3C410;
  swift_unknownObjectWeakAssign();
  v19 = sub_1BC8F7FC4();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v17;
  v20[5] = v18;
  swift_retain_n();
  v21 = v15;

  sub_1BC8333D4();

  sub_1BC890B18(v23);
  v1[3] = v18;
  return v1;
}

uint64_t sub_1BC8E28D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BC7B0168;

  return sub_1BC888138(a1, v4, v5, v7, v6);
}

uint64_t sub_1BC8E2994()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF69F0, &unk_1BC90A400);
  v0 = sub_1BC8F77F4();
  v1 = v14;
  if (v14)
  {
    v14 = 0xD000000000000019;
    v15 = 0x80000001BC90C970;
    MEMORY[0x1EEE9AC00](v0);
    v13 = &v14;
    v2 = sub_1BC7AFC0C(sub_1BC7AFCBC, v12, v1);
    if (v2)
    {

LABEL_5:
      if (qword_1EDC20728 != -1)
      {
        swift_once();
      }

      v4 = sub_1BC8F7734();
      __swift_project_value_buffer(v4, qword_1EDC2B3A8);
      v5 = sub_1BC8F7714();
      v6 = sub_1BC8F8204();
      if (!os_log_type_enabled(v5, v6))
      {
        v8 = 1;
        goto LABEL_16;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1BC7A3000, v5, v6, "Accepting incoming XPC connection request", v7, 2u);
      v8 = 1;
      goto LABEL_13;
    }

    v14 = 0xD000000000000019;
    v15 = 0x80000001BC90C990;
    MEMORY[0x1EEE9AC00](v2);
    v13 = &v14;
    v3 = sub_1BC7AFC0C(sub_1BC7E8C84, v12, v1);

    if (v3)
    {
      goto LABEL_5;
    }
  }

  if (qword_1EDC20728 != -1)
  {
    swift_once();
  }

  v9 = sub_1BC8F7734();
  __swift_project_value_buffer(v9, qword_1EDC2B3A8);
  v5 = sub_1BC8F7714();
  v10 = sub_1BC8F8204();
  if (!os_log_type_enabled(v5, v10))
  {
    v8 = 0;
    goto LABEL_16;
  }

  v7 = swift_slowAlloc();
  *v7 = 0;
  _os_log_impl(&dword_1BC7A3000, v5, v10, "Rejecting connection from unentitled process", v7, 2u);
  v8 = 0;
LABEL_13:
  MEMORY[0x1BFB2AA50](v7, -1, -1);
LABEL_16:

  return v8;
}

Swift::Void __swiftcall VideoMessagingService.start()()
{
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_0_19(&qword_1EDC20728);
  }

  v0 = sub_1BC8F7734();
  __swift_project_value_buffer(v0, qword_1EDC2B3A8);
  v1 = sub_1BC8F7714();
  v2 = sub_1BC8F8204();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BC7A3000, v1, v2, "Starting video messaging service", v3, 2u);
    MEMORY[0x1BFB2AA50](v3, -1, -1);
  }

  sub_1BC8DFBA4();

  sub_1BC8F7824();

  sub_1BC8F7834();
}

uint64_t sub_1BC8E2DA0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BC7B0168;

  return sub_1BC8E2E38(a1);
}

uint64_t sub_1BC8E2E38(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BC8E2E58, 0, 0);
}

uint64_t sub_1BC8E2E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_0_19(&qword_1EDC20728);
  }

  v13 = sub_1BC8F7734();
  __swift_project_value_buffer(v13, qword_1EDC2B3A8);
  v14 = sub_1BC8F7714();
  v15 = sub_1BC8F8204();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1BC7A3000, v14, v15, "Handling incoming SendVideoMessage message", v16, 2u);
    MEMORY[0x1BFB2AA50](v16, -1, -1);
  }

  v17 = v12[19];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF69E8, &qword_1BC90A3F8);
  sub_1BC8F77C4();
  v18 = v12[11];
  v12[20] = v12[10];
  v12[21] = v18;
  v19 = v12[12];
  v12[22] = v19;
  v20 = *(v17 + 24);
  v21 = sub_1BC8F70C4();
  v12[23] = v21;
  v12[2] = v12;
  v12[3] = sub_1BC8E3064;
  v22 = swift_continuation_init();
  v12[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E40, &unk_1BC8FC390);
  v12[10] = MEMORY[0x1E69E9820];
  v12[11] = 1107296256;
  v12[12] = sub_1BC8E3268;
  v12[13] = &block_descriptor_11;
  v12[14] = v22;
  [v20 sendVideoMessageWithData:v21 url:v19 completionHandler:v12 + 10];

  return MEMORY[0x1EEE6DEC8](v12 + 2, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_1BC8E3064()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 192) = v2;
  if (v2)
  {
    v3 = sub_1BC8E31D8;
  }

  else
  {
    v3 = sub_1BC8E316C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BC8E316C()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[22];
  v2 = v0[23];
  sub_1BC7D4C94(v0[20], v0[21]);

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_1BC8E31D8(uint64_t a1)
{
  v2 = v1[23];
  v3 = v1[21];
  v4 = v1[22];
  v5 = v1[20];
  swift_willThrow();
  sub_1BC7D4C94(v5, v3);

  OUTLINED_FUNCTION_27();

  return v6();
}

uint64_t sub_1BC8E3268(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;

    return sub_1BC899994();
  }

  else
  {
    v6 = *v3;

    return j__swift_continuation_throwingResume(v6);
  }
}

uint64_t VideoMessagingService.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t VideoMessagingService.__deallocating_deinit()
{
  VideoMessagingService.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1BC8E3334()
{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1BC7B0168;

  return sub_1BC8E2DA0(v2);
}

uint64_t _s20FaceTimeMessageStore16AsyncSerialQueueV8priority15bufferingPolicy18executorPreferenceACScPSg_ScS12ContinuationV09BufferingJ0OyyyYaYbc__GSch_pSgtcfC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a4;
  v50 = a3;
  v51 = a2;
  v45 = a5;
  v46 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  OUTLINED_FUNCTION_25(v5);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E80, &unk_1BC8FC3C0);
  OUTLINED_FUNCTION_0();
  v10 = v9;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E70, &qword_1BC8FC3B0);
  OUTLINED_FUNCTION_0();
  v16 = v15;
  v18 = *(v17 + 64);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v44 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E78, &qword_1BC8FC3B8);
  v24 = OUTLINED_FUNCTION_25(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_20_0();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v42 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v31);
  v49 = v10;
  (*(v10 + 16))(v13, v51, v8);
  v52 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E90, &qword_1BC8FC3D0);
  sub_1BC8F8014();
  v48 = v30;
  sub_1BC7D9558(v30, v27, &qword_1EBCF4E78, &qword_1BC8FC3B8);
  result = __swift_getEnumTagSinglePayload(v27, 1, v31);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_10();
    (*(v33 + 32))(v45, v27, v31);
    v34 = v44;
    (*(v16 + 16))(v44, v22, v14);
    OUTLINED_FUNCTION_23_15();
    v35 = swift_allocObject();
    (*(v16 + 32))(&v13[v35], v34, v14);
    v37 = v46;
    v36 = v47;
    sub_1BC7D9558(v46, v47, &qword_1EBCF63D0, &qword_1BC902140);
    v38 = sub_1BC8F7FC4();
    if (__swift_getEnumTagSinglePayload(v36, 1, v38) == 1)
    {
      sub_1BC7C1744(v36, &qword_1EBCF63D0, &qword_1BC902140);
    }

    else
    {
      sub_1BC8F7FB4();
      OUTLINED_FUNCTION_10();
      (*(v39 + 8))(v36, v38);
    }

    v40 = v50;
    OUTLINED_FUNCTION_34();
    v41 = swift_allocObject();
    *(v41 + 16) = &unk_1BC8FC3D8;
    *(v41 + 24) = v35;
    swift_unknownObjectRetain();
    if (v40 != 1)
    {
      v53 = 6;
      v54 = 0;
      v55 = v40;
      v56 = v43;
    }

    swift_task_create();
    swift_unknownObjectRelease();

    (*(v49 + 8))(v51, v8);
    sub_1BC7C1744(v37, &qword_1EBCF63D0, &qword_1BC902140);
    (*(v16 + 8))(v22, v14);
    return sub_1BC7C1744(v48, &qword_1EBCF4E78, &qword_1BC8FC3B8);
  }

  return result;
}

uint64_t AsyncSerialQueue.perform(_:)(uint64_t a1, uint64_t a2)
{
  return sub_1BC8E413C(a1, a2, &unk_1F3B3E320, &unk_1BC8FC280);
}

{
  return sub_1BC8E413C(a1, a2, &unk_1F3B3E398, &unk_1BC902CF8);
}

uint64_t AsyncSerialQueue.init(priority:bufferingPolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a2;
  v52 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E70, &qword_1BC8FC3B0);
  OUTLINED_FUNCTION_0();
  v55 = v5;
  v56 = v4;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v53 = v7;
  v54 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v51 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E78, &qword_1BC8FC3B8);
  v11 = OUTLINED_FUNCTION_25(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_20_0();
  v60 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E80, &unk_1BC8FC3C0);
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_20_0();
  v23 = (v21 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v51 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v28 = OUTLINED_FUNCTION_25(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_20_0();
  v51 = v29 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v51 - v32;
  v59 = a1;
  sub_1BC7D9558(a1, &v51 - v32, &qword_1EBCF63D0, &qword_1BC902140);
  v34 = v19;
  v35 = *(v19 + 16);
  v35(v26, v62, v17);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v36);
  v57 = v26;
  v58 = v17;
  v35(v23, v26, v17);
  v37 = v16;
  v63 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E90, &qword_1BC8FC3D0);
  v61 = v9;
  v38 = v60;
  sub_1BC8F8014();
  sub_1BC7D9558(v16, v38, &qword_1EBCF4E78, &qword_1BC8FC3B8);
  result = __swift_getEnumTagSinglePayload(v38, 1, v36);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_10();
    (*(v40 + 32))(v52, v38, v36);
    v41 = v54;
    v42 = v55;
    v43 = v56;
    (*(v55 + 16))(v54, v61, v56);
    OUTLINED_FUNCTION_23_15();
    v44 = swift_allocObject();
    (*(v42 + 32))(&v26[v44], v41, v43);
    v45 = v51;
    sub_1BC7D9558(v33, v51, &qword_1EBCF63D0, &qword_1BC902140);
    v46 = sub_1BC8F7FC4();
    if (__swift_getEnumTagSinglePayload(v45, 1, v46) == 1)
    {
      sub_1BC7C1744(v45, &qword_1EBCF63D0, &qword_1BC902140);
    }

    else
    {
      sub_1BC8F7FB4();
      OUTLINED_FUNCTION_10();
      (*(v47 + 8))(v45, v46);
    }

    OUTLINED_FUNCTION_34();
    v48 = swift_allocObject();
    *(v48 + 16) = &unk_1BC90A450;
    *(v48 + 24) = v44;
    swift_task_create();

    v49 = *(v34 + 8);
    v50 = v58;
    v49(v62, v58);
    sub_1BC7C1744(v59, &qword_1EBCF63D0, &qword_1BC902140);
    (*(v42 + 8))(v61, v43);
    v49(v57, v50);
    sub_1BC7C1744(v33, &qword_1EBCF63D0, &qword_1BC902140);
    return sub_1BC7C1744(v37, &qword_1EBCF4E78, &qword_1BC8FC3B8);
  }

  return result;
}

uint64_t AsyncSerialQueue.performAndWaitFor<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_1_0();
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC8E3EEC()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  OUTLINED_FUNCTION_21_18(v0);
  v1 = OUTLINED_FUNCTION_25_17();
  v2 = OUTLINED_FUNCTION_19_20(v1);
  *v2 = v3;
  v2[1] = sub_1BC8E3FA0;
  OUTLINED_FUNCTION_13_21();

  return v5();
}

uint64_t sub_1BC8E3FA0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_27();

    return v10();
  }
}

uint64_t sub_1BC8E40C0()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_1BC8E413C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DD8, &unk_1BC90A440);
  OUTLINED_FUNCTION_0();
  v9 = v8;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v15 - v11;
  OUTLINED_FUNCTION_34();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v15[0] = a4;
  v15[1] = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
  sub_1BC8F7FD4();
  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_1BC8E4250(uint64_t a1, uint64_t a2)
{
  sub_1BC7C1744(a2, &qword_1EBCF4E78, &qword_1BC8FC3B8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1, v4);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

uint64_t sub_1BC8E42F8()
{
  OUTLINED_FUNCTION_5();
  v0[4] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF69F8, &qword_1BC90A4E0);
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BC8E43BC()
{
  OUTLINED_FUNCTION_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E70, &qword_1BC8FC3B0);
  sub_1BC8F7FF4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19_20(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_8_30(v1);
  OUTLINED_FUNCTION_13_21();

  return MEMORY[0x1EEE6D9C8]();
}

uint64_t sub_1BC8E445C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BC8E4544()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[2];
  v0[9] = v1;
  if (v1)
  {
    v0[10] = v0[3];
    v5 = (v1 + *v1);
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_1BC8E468C;

    return v5();
  }

  else
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    OUTLINED_FUNCTION_27();

    return v4();
  }
}

uint64_t sub_1BC8E468C()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;
  v4 = *(v1 + 80);
  v5 = *(v1 + 72);
  v6 = *v0;
  *v3 = *v0;

  sub_1BC7BE108(v5, v4);
  v7 = swift_task_alloc();
  *(v2 + 64) = v7;
  *v7 = v6;
  OUTLINED_FUNCTION_8_30(v7);
  OUTLINED_FUNCTION_13_21();

  return MEMORY[0x1EEE6D9C8]();
}

uint64_t sub_1BC8E4808()
{
  OUTLINED_FUNCTION_5();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1BC8E48EC;

  return v4();
}

uint64_t sub_1BC8E48EC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_11_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v10();
  }
}

uint64_t sub_1BC8E4A04()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_1BC8E4A78()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  OUTLINED_FUNCTION_21_18(v0);
  v1 = OUTLINED_FUNCTION_25_17();
  v2 = OUTLINED_FUNCTION_19_20(v1);
  *v2 = v3;
  v2[1] = sub_1BC8E4B2C;
  OUTLINED_FUNCTION_13_21();

  return v5();
}

uint64_t sub_1BC8E4B2C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_1BC8E4C28(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v6 = swift_task_alloc();
  v4[4] = v6;
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  v4[5] = v7;
  *v7 = v4;
  v7[1] = sub_1BC8E4D50;

  return v9(v6);
}

uint64_t sub_1BC8E4D50()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BC8E4E38()
{
  OUTLINED_FUNCTION_5();
  sub_1BC8E4EA0(v0[4], v0[2], v0[3]);

  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_1BC8E4EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 - 8) + 32))(*(*(a2 + 64) + 40), a1);

  return swift_continuation_resume();
}

uint64_t sub_1BC8E4F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1BC8F7F54();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1BC8E4FAC, v6, v8);
}

uint64_t sub_1BC8E4FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32();
  v13 = v12[11];
  v14 = v12[10];
  v12[2] = v12;
  v12[7] = v14;
  v12[3] = sub_1BC8E5050;
  v15 = swift_continuation_init();
  v13(v15);

  return MEMORY[0x1EEE6DEC8](v12 + 2, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_1BC8E5050()
{
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;
  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_1BC8E5118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[0] = a8;
  v22[1] = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DD8, &unk_1BC90A440);
  OUTLINED_FUNCTION_0();
  v15 = v14;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v22 - v17;
  v19 = swift_allocObject();
  v19[2] = a5;
  v19[3] = a1;
  v19[4] = a3;
  v19[5] = a4;
  OUTLINED_FUNCTION_34();
  v20 = swift_allocObject();
  *(v20 + 16) = v22[0];
  *(v20 + 24) = v19;
  v22[2] = a9;
  v22[3] = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
  sub_1BC8F7FD4();
  return (*(v15 + 8))(v18, v13);
}

uint64_t sub_1BC8E5268(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v6 = swift_task_alloc();
  v4[5] = v6;
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  v4[6] = v7;
  *v7 = v4;
  v7[1] = sub_1BC8E5390;

  return v9(v6);
}

uint64_t sub_1BC8E5390()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_11_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC8E548C()
{
  OUTLINED_FUNCTION_32();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E20, &unk_1BC902A40);
  sub_1BC8E55C4(v2, v3, v1);

  OUTLINED_FUNCTION_27();

  return v4();
}

uint64_t sub_1BC8E5524()
{
  OUTLINED_FUNCTION_32();
  v1 = v0[3];
  v2 = v0[4];
  v0[2] = v0[7];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E20, &unk_1BC902A40);
  sub_1BC8E563C((v0 + 2), v1, v2, v3, MEMORY[0x1E69E7288]);

  OUTLINED_FUNCTION_27();

  return v4();
}

uint64_t sub_1BC8E55C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 - 8) + 32))(*(*(a2 + 64) + 40), a1);

  return swift_continuation_throwingResume();
}

uint64_t sub_1BC8E563C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocError();
  (*(*(a4 - 8) + 32))(v9, a1, a4);

  return MEMORY[0x1EEE6DEE8](a2, v8);
}

uint64_t sub_1BC8E56D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1BC8F7F54();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1BC8E5764, v6, v8);
}

uint64_t sub_1BC8E5764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32();
  v13 = v12[11];
  v14 = v12[10];
  v12[2] = v12;
  v12[7] = v14;
  v12[3] = sub_1BC8E5808;
  v15 = swift_continuation_init();
  v13(v15);

  return MEMORY[0x1EEE6DEC8](v12 + 2, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_1BC8E5808()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_13_0();
  v1 = *v0;
  OUTLINED_FUNCTION_11_3();
  *v2 = v1;
  if (*(v3 + 48))
  {
    swift_willThrow();
  }

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_1BC8E5904()
{
  OUTLINED_FUNCTION_32();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v2[1] = sub_1BC7B0968;
  v4 = OUTLINED_FUNCTION_12_21();

  return v6(v4);
}

uint64_t objectdestroyTm_3()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E70, &qword_1BC8FC3B0);
  OUTLINED_FUNCTION_4_1();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC8E5A78()
{
  OUTLINED_FUNCTION_32();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E70, &qword_1BC8FC3B0);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_23_15();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v2[1] = sub_1BC7B0248;
  OUTLINED_FUNCTION_12_21();

  return sub_1BC8E42F8();
}

uint64_t sub_1BC8E5B48()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16(v1);

  return v4(v3);
}

uint64_t type metadata accessor for AsyncSerialQueue(uint64_t a1)
{
  result = qword_1EDC20980;
  if (!qword_1EDC20980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BC8E5D0C(uint64_t a1)
{
  sub_1BC811D20(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1BC8E5D78()
{
  OUTLINED_FUNCTION_32();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_18_18(v1);

  return sub_1BC8E4C28(v2, v3, v4, v5);
}

uint64_t sub_1BC8E5E0C()
{
  OUTLINED_FUNCTION_32();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_18_18(v1);

  return sub_1BC8E5268(v2, v3, v4, v5);
}

uint64_t CustomStringConvertible<>.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1BC8F7C64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1BC8F6C74();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1BC8F6CB4();
  swift_allocObject();
  sub_1BC8F6CA4();
  sub_1BC8F6C64();
  sub_1BC8F6C84();
  v6 = sub_1BC8F6C94();
  v8 = v7;
  sub_1BC8F7C54();
  v9 = sub_1BC8F7C34();
  v11 = v10;
  sub_1BC7D4C94(v6, v8);

  if (!v11)
  {
    return 0xD000000000000012;
  }

  return v9;
}

uint64_t sub_1BC8E6040(uint64_t a1)
{
  swift_defaultActor_initialize();
  swift_weakInit();
  swift_weakAssign();

  return v1;
}

uint64_t sub_1BC8E60AC()
{
  Strong = swift_weakLoadStrong();
  v0[3] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_1BC8E6180;

    return sub_1BC85CBA0();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1BC8E6180()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1BC8E6290, v1, 0);
}

uint64_t sub_1BC8E6290()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BC8E62F0()
{
  swift_weakDestroy();
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BC8E636C()
{
  Strong = swift_weakLoadStrong();
  v0[3] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_1BC8E6440;

    return sub_1BC85D254();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1BC8E6440()
{
  v2 = *v1;
  *(*v1 + 40) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_1BC8E65D0;
  }

  else
  {
    v4 = sub_1BC8E656C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BC8E656C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BC8E65D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BC8E6658(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BC8E66F4()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 104) + 8));
  return v0;
}

uint64_t sub_1BC8E6784()
{
  sub_1BC8E66F4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

id sub_1BC8E6824()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 24);
  os_unfair_lock_unlock((v0 + 16));
  return v1;
}

uint64_t sub_1BC8E6860(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  return v1;
}

id sub_1BC8E6870(uint64_t a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1BC8E6824();
  v6[0] = 0;
  v3 = [v2 setTaskExpiredWithRetryAfter:v6 error:sub_1BC8F8CB4()];

  if (v3)
  {
    return v6[0];
  }

  v5 = v6[0];
  sub_1BC8F6EA4();

  return swift_willThrow();
}

void sub_1BC8E6940(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC8E6824();
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1BC80CE70;
  v6[3] = &block_descriptor_12;
  v5 = _Block_copy(v6);

  [v4 setExpirationHandler_];
  _Block_release(v5);
}

uint64_t sub_1BC8E6A04()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1BC8E6A6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BC8F85C4();
  *a1 = result;
  return result;
}

unint64_t sub_1BC8E6A98(uint64_t a1)
{
  result = sub_1BC8E6AC0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BC8E6AC0()
{
  result = qword_1EBCF6A10;
  if (!qword_1EBCF6A10)
  {
    type metadata accessor for SendableBGSystemTask();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6A10);
  }

  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BC8E6B2C()
{
  v0 = [objc_opt_self() sharedScheduler];
  type metadata accessor for SystemTaskScheduler();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v0;
  qword_1EDC2B318 = result;
  return result;
}

void sub_1BC8E6B8C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*a1 == 1)
  {
    if (qword_1EDC1E218 != -1)
    {
      OUTLINED_FUNCTION_6_1(&qword_1EDC1E218);
    }

    v8 = sub_1BC8F7734();
    __swift_project_value_buffer(v8, qword_1EDC2B2E0);

    v9 = sub_1BC8F7714();
    v10 = sub_1BC8F8204();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v29 = OUTLINED_FUNCTION_28();
      *v11 = 136446210;
      *(v11 + 4) = OUTLINED_FUNCTION_2_33(v29, v12, v13, v14, v15, v16);
      _os_log_impl(&dword_1BC7A3000, v9, v10, "Handling expiration for ScheduledActivity(%{public}s)", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    sub_1BC8E6870(a5, a6);
    goto LABEL_11;
  }

  v17 = sub_1BC8E6824();
  [v17 setTaskCompleted];

  if (qword_1EDC1E218 != -1)
  {
    OUTLINED_FUNCTION_6_1(&qword_1EDC1E218);
  }

  v18 = sub_1BC8F7734();
  __swift_project_value_buffer(v18, qword_1EDC2B2E0);

  oslog = sub_1BC8F7714();
  v19 = sub_1BC8F8204();

  if (os_log_type_enabled(oslog, v19))
  {
    v20 = swift_slowAlloc();
    v30 = OUTLINED_FUNCTION_28();
    *v20 = 136446210;
    *(v20 + 4) = OUTLINED_FUNCTION_2_33(v30, v21, v22, v23, v24, v25);
    _os_log_impl(&dword_1BC7A3000, oslog, v19, "Finished running ScheduledActivity(%{public}s)", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();

LABEL_11:
    OUTLINED_FUNCTION_62();
    return;
  }

  OUTLINED_FUNCTION_62();
}

uint64_t sub_1BC8E6F30(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_1EDC1E218 != -1)
  {
    OUTLINED_FUNCTION_6_1(&qword_1EDC1E218);
  }

  v5 = sub_1BC8F7734();
  __swift_project_value_buffer(v5, qword_1EDC2B2E0);

  v6 = sub_1BC8F7714();
  v7 = sub_1BC8F8204();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = OUTLINED_FUNCTION_28();
    v11 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1BC7A9A4C(a1, a2, &v11);
    _os_log_impl(&dword_1BC7A3000, v6, v7, "ScheduledActivity(%{public}s) deferred", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  return sub_1BC8F8024();
}

uint64_t sub_1BC8E70B0()
{
  OUTLINED_FUNCTION_25_18();
  if (v2 && (v3 = v1, v4 = sub_1BC83C928(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = type metadata accessor for TrackedOutgoingMessage(0);
    sub_1BC8EA7FC(v7 + *(*(v8 - 8) + 72) * v6, v0);
    v9 = v0;
    v10 = 0;
    v11 = v8;
  }

  else
  {
    v11 = type metadata accessor for TrackedOutgoingMessage(0);
    v9 = v0;
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, 1, v11);
}

double sub_1BC8E715C()
{
  OUTLINED_FUNCTION_25_18();
  if (!v0)
  {
    return OUTLINED_FUNCTION_24_15();
  }

  v1 = sub_1BC83C8E8();
  if ((v2 & 1) == 0)
  {
    return OUTLINED_FUNCTION_24_15();
  }

  v3 = OUTLINED_FUNCTION_10_26(v1);

  sub_1BC7ABB48(v3, v4);
  return result;
}

double sub_1BC8E71B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return OUTLINED_FUNCTION_24_15();
  }

  v3 = sub_1BC803CBC(a1, a2);
  if ((v4 & 1) == 0)
  {
    return OUTLINED_FUNCTION_24_15();
  }

  v5 = OUTLINED_FUNCTION_10_26(v3);

  sub_1BC7ABB48(v5, v6);
  return result;
}

uint64_t sub_1BC8E7208(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1BC83C928();
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BC8E7258(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1BC83C928();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 32 * v3);

  return v5;
}

void *sub_1BC8E72D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1BC803CBC(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

double sub_1BC8E731C()
{
  OUTLINED_FUNCTION_25_18();
  if (!v1)
  {
    return OUTLINED_FUNCTION_24_15();
  }

  v2 = sub_1BC83CA14(v0);
  if ((v3 & 1) == 0)
  {
    return OUTLINED_FUNCTION_24_15();
  }

  v4 = OUTLINED_FUNCTION_10_26(v2);

  sub_1BC7ABB48(v4, v5);
  return result;
}

void sub_1BC8E7370(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_1BC83CAA8();
    if (v2)
    {
    }
  }
}

void sub_1BC8E73C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_1BC803CBC(a1, a2);
    if (v3)
    {
    }
  }
}

double sub_1BC8E7410()
{
  OUTLINED_FUNCTION_25_18();
  if (v2 && (v3 = v1, v4 = sub_1BC83C928(), (v5 & 1) != 0))
  {
    v6 = *(v3 + 56) + 40 * v4;

    sub_1BC7A792C(v6, v0);
  }

  else
  {
    *(v0 + 32) = 0;
    return OUTLINED_FUNCTION_24_15();
  }

  return result;
}

uint64_t sub_1BC8E7474(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BC8F6D24();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v9 = v8 - v7;
  v10 = *(a1 + 32);
  sub_1BC8F6D04();

  v10(v9);

  return (*(v5 + 8))(v9, v3);
}

uint64_t sub_1BC8E7554(void *a1, void *a2)
{
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 2;
  *(v2 + 152) = a1;
  v4 = a1;
  v5 = [a2 deviceType];

  *(v2 + 160) = v5;
  return v2;
}

void sub_1BC8E75C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_20_17(a1, a2, a3, a4, a5, a6, a7, a8, v9, v11, v13, v15, v17, v19, v21, v22, v23, v24, v25, v26);
  if (!v8)
  {

    OUTLINED_FUNCTION_14_19();
  }
}

void *sub_1BC8E7650@<X0>(void *(*a1)(void *__return_ptr, void *)@<X0>, void *a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v10[1] = *MEMORY[0x1E69E9840];
  result = a1(a4, a2);
  if (!v4)
  {
    result = [a2 hasChanges];
    if (result)
    {
      v10[0] = 0;
      if ([a2 save_])
      {
        return v10[0];
      }

      else
      {
        v9 = v10[0];
        sub_1BC8F6EA4();

        swift_willThrow();
        return (*(*(a3 - 8) + 8))(a4, a3);
      }
    }
  }

  return result;
}

void sub_1BC8E776C(void *a1)
{
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_0_19(&qword_1EDC20728);
  }

  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EDC2B3A8);
  v3 = a1;
  v4 = sub_1BC8F7714();
  v5 = sub_1BC8F8204();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_21_1();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1BC7A3000, v4, v5, "Attempting to recover from error %{public}@", v6, 0xCu);
    sub_1BC8504B8(v7);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  sub_1BC8E78A4();
}

void sub_1BC8E78A4()
{
  v154 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_20_0();
  v5 = v3 - v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_20_4();
  v148 = v7;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_20_4();
  v146 = v9;
  OUTLINED_FUNCTION_17_0();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v143 - v12;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_20_4();
  v149 = v14;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_20_4();
  v153 = v16;
  OUTLINED_FUNCTION_17_0();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v143 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v143 - v21;
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_0_19(&qword_1EDC20728);
  }

  v147 = v13;
  v145 = v5;
  v23 = sub_1BC8F7734();
  v144 = __swift_project_value_buffer(v23, qword_1EDC2B3A8);
  v24 = sub_1BC8F7714();
  v25 = sub_1BC8F8204();
  v26 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v26, v27))
  {
    OUTLINED_FUNCTION_45();
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1BC7A3000, v24, v25, "Loading persistent store", v28, 2u);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  type metadata accessor for CoreDataMessageStore(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = objc_opt_self();
  v31 = [v30 bundleForClass_];
  v32 = sub_1BC8F7BE4();
  v33 = sub_1BC8EA670(v32, 1684893549, 0xE400000000000000, v31);

  if (v33)
  {
    sub_1BC8F6FB4();

    v34 = *(v1 + 32);
    v35 = v22;
    v152 = v22;
    v36 = v154;
    v34(v35, v20, v154);
    v37 = [v30 bundleForClass_];
    v38 = sub_1BC8F7BE4();
    v39 = sub_1BC8EA670(v38, 1684893549, 0xE400000000000000, v37);

    if (v39)
    {
      v143 = v1;
      v40 = v149;
      sub_1BC8F6FB4();

      v41 = v153;
      v34(v153, v40, v36);
      v42 = v150;
      sub_1BC8E889C(v152, 1, v43, v44, v45, v46, v47, v48, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154);
      v150 = v55;
      if (v42)
      {
        v57 = v151;
        v58 = v151[17];
        v151[12] = v42;
        *(v57 + 13) = 0u;
        *(v57 + 15) = 0u;
        v57[17] = 0;
        v59 = *(v57 + 144);
        *(v57 + 144) = 1;
        v60 = v42;
        v61 = OUTLINED_FUNCTION_16_18();
        sub_1BC8EA6E4(v61, v62, v63, v64, v65, v58, v59);
        swift_willThrow();
        v66 = *(v143 + 8);
        v67 = v154;
        v66(v153, v154);
        v66(v152, v67);
      }

      else
      {
        v56 = v36;
        sub_1BC8E889C(v41, 0, v49, v50, v51, v52, v53, v54, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154);
        v149 = v72;
        v73 = v146;
        _s20FaceTimeMessageStore011getUserDataD12DirectoryURL10Foundation0I0VyF_0();
        v74 = v147;
        sub_1BC8F6F64();
        v75 = v143 + 8;
        v76 = *(v143 + 8);
        v76(v73, v56);
        _s20FaceTimeMessageStore011getUserDataD12DirectoryURL10Foundation0I0VyF_0();
        sub_1BC8F6F64();
        v76(v73, v56);
        v77 = v151;
        sub_1BC8E8DF0();
        v146 = v78;
        v79 = OUTLINED_FUNCTION_22_14();
        (v76)(v79);
        v76(v74, v56);
        sub_1BC8D321C();
        sub_1BC8E96D8();
        v148 = 0;
        v81 = v77;
        v147 = v80;
        v82 = OUTLINED_FUNCTION_22_14();
        v143 = v75;
        (v76)(v82);
        v83 = sub_1BC8F7714();
        v84 = sub_1BC8F8204();
        v85 = OUTLINED_FUNCTION_36_0();
        v87 = v76;
        if (os_log_type_enabled(v85, v86))
        {
          OUTLINED_FUNCTION_45();
          v88 = swift_slowAlloc();
          *v88 = 0;
          _os_log_impl(&dword_1BC7A3000, v83, v84, "Loading primary context", v88, 2u);
          OUTLINED_FUNCTION_6_0();
          MEMORY[0x1BFB2AA50]();
        }

        v146 = v146;
        v89 = [v146 viewContext];
        [v89 setAutomaticallyMergesChangesFromParent_];
        [v89 setShouldRefreshAfterSave_];
        v90 = v81[19];
        v158 = sub_1BC8EA770;
        v159 = v81;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v156 = sub_1BC8E7474;
        v157 = &block_descriptor_13;
        v91 = _Block_copy(aBlock);
        v92 = v90;
        v145 = v89;
        v93 = v89;

        v94 = OUTLINED_FUNCTION_11_17();
        _Block_release(v91);
        swift_unknownObjectRelease();

        v95 = v151[19];
        v158 = sub_1BC8EA790;
        v159 = v151;
        aBlock[0] = MEMORY[0x1E69E9820];
        OUTLINED_FUNCTION_0_33();
        v156 = v96;
        v157 = &block_descriptor_36;
        v97 = _Block_copy(aBlock);
        v98 = v93;

        v99 = v95;

        v100 = OUTLINED_FUNCTION_11_17();
        _Block_release(v97);
        swift_unknownObjectRelease();

        v101 = v151;
        v102 = v101[19];
        v103 = *MEMORY[0x1E695D2E0];
        v158 = sub_1BC8EA798;
        v159 = v101;
        aBlock[0] = MEMORY[0x1E69E9820];
        OUTLINED_FUNCTION_0_33();
        v156 = v104;
        v157 = &block_descriptor_39;
        _Block_copy(aBlock);

        v105 = v102;
        v106 = v103;

        v107 = OUTLINED_FUNCTION_13_22();
        v108 = OUTLINED_FUNCTION_10_2();
        _Block_release(v108);
        swift_unknownObjectRelease();

        v109 = v101[19];
        v110 = *MEMORY[0x1E695D2D0];
        v158 = sub_1BC8EA7A0;
        v159 = v101;
        aBlock[0] = MEMORY[0x1E69E9820];
        OUTLINED_FUNCTION_0_33();
        v156 = v111;
        v157 = &block_descriptor_42;
        _Block_copy(aBlock);

        v112 = v109;
        v113 = v110;

        v114 = OUTLINED_FUNCTION_13_22();
        v115 = OUTLINED_FUNCTION_10_2();
        _Block_release(v115);
        swift_unknownObjectRelease();

        v116 = v101[19];
        v158 = sub_1BC8EA7A8;
        v159 = v101;
        aBlock[0] = MEMORY[0x1E69E9820];
        OUTLINED_FUNCTION_0_33();
        v156 = v117;
        v157 = &block_descriptor_45;
        _Block_copy(aBlock);

        v118 = v116;

        v119 = OUTLINED_FUNCTION_12_22();
        v120 = OUTLINED_FUNCTION_16_3();
        _Block_release(v120);
        swift_unknownObjectRelease();

        v121 = v101[19];
        v158 = sub_1BC8EA898;
        v159 = v101;
        aBlock[0] = MEMORY[0x1E69E9820];
        OUTLINED_FUNCTION_0_33();
        v156 = v122;
        v157 = &block_descriptor_48;
        _Block_copy(aBlock);

        v123 = v121;

        v124 = OUTLINED_FUNCTION_12_22();
        v125 = OUTLINED_FUNCTION_16_3();
        _Block_release(v125);
        swift_unknownObjectRelease();

        v126 = v144;
        v127 = sub_1BC8F7714();
        v128 = sub_1BC8F8204();
        if (OUTLINED_FUNCTION_7_23(v128))
        {
          OUTLINED_FUNCTION_45();
          v129 = swift_slowAlloc();
          *v129 = 0;
          _os_log_impl(&dword_1BC7A3000, v127, v126, "Loading temporary context", v129, 2u);
          OUTLINED_FUNCTION_6_0();
          MEMORY[0x1BFB2AA50]();
        }

        v130 = v147;
        v144 = [v147 viewContext];
        v131 = v146;

        v132 = v154;
        v87(v153, v154);
        v87(v152, v132);
        v133 = v101[17];
        v134 = v150;
        v101[12] = v150;
        v101[13] = v131;
        v135 = v149;
        v101[14] = v145;
        v101[15] = v135;
        v136 = v144;
        v101[16] = v130;
        v101[17] = v136;
        LOBYTE(v130) = *(v101 + 144);
        *(v101 + 144) = 0;
        v137 = v134;
        v138 = OUTLINED_FUNCTION_16_18();
        sub_1BC8EA6E4(v138, v139, v140, v141, v142, v133, v130);
      }
    }

    else
    {
      v70 = sub_1BC8EA61C();
      OUTLINED_FUNCTION_225(&type metadata for ContextProviderError, v70);
      OUTLINED_FUNCTION_28_15(v71, 1);
      (*(v1 + 8))(v152, v36);
    }
  }

  else
  {
    v68 = sub_1BC8EA61C();
    OUTLINED_FUNCTION_225(&type metadata for ContextProviderError, v68);
    *v69 = 0;
    swift_willThrow();
  }
}

uint64_t sub_1BC8E84D8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v3 = result;
    v4 = *(a2 + 40);

    v2(v3);

    return sub_1BC7BE108(v2, v4);
  }

  return result;
}

uint64_t sub_1BC8E854C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = *(a2 + 24);

    v2(v3);

    return sub_1BC7BE108(v2, v4);
  }

  return result;
}

void sub_1BC8E85C0(uint64_t a1, uint64_t a2)
{
  if (qword_1EDC1E1D8 != -1)
  {
    swift_once();
  }

  v4 = sub_1BC8F7734();
  __swift_project_value_buffer(v4, qword_1EDC2B280);
  v5 = sub_1BC8F7714();
  v6 = sub_1BC8F8204();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1BC7A3000, v5, v6, "willResetSync!", v7, 2u);
    MEMORY[0x1BFB2AA50](v7, -1, -1);
  }

  v8 = *(a2 + 48);
  if (v8)
  {
    v9 = *(a2 + 56);

    v8(a1);

    sub_1BC7BE108(v8, v9);
  }
}

void sub_1BC8E86F4(uint64_t a1, uint64_t a2)
{
  if (qword_1EDC1E1D8 != -1)
  {
    swift_once();
  }

  v4 = sub_1BC8F7734();
  __swift_project_value_buffer(v4, qword_1EDC2B280);
  v5 = sub_1BC8F7714();
  v6 = sub_1BC8F8204();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1BC7A3000, v5, v6, "didResetSync!", v7, 2u);
    MEMORY[0x1BFB2AA50](v7, -1, -1);
  }

  v8 = *(a2 + 64);
  if (v8)
  {
    v9 = *(a2 + 72);

    v8(a1);

    sub_1BC7BE108(v8, v9);
  }
}

uint64_t sub_1BC8E8828(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 80);
  if (v2)
  {
    v3 = result;
    v4 = *(a2 + 88);

    v2(v3);

    return sub_1BC7BE108(v2, v4);
  }

  return result;
}

void sub_1BC8E889C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22();
  a19 = v21;
  a20 = v22;
  v72 = v20;
  v73 = v23;
  v25 = v24;
  v26 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_20_0();
  v32 = (v30 - v31);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v72 - v34;
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_0_19(&qword_1EDC20728);
  }

  v36 = sub_1BC8F7734();
  v37 = __swift_project_value_buffer(v36, qword_1EDC2B3A8);
  v38 = sub_1BC8F7714();
  v39 = sub_1BC8F8204();
  v40 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v40, v41))
  {
    OUTLINED_FUNCTION_45();
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_1BC7A3000, v38, v39, "MessageContainer: Attempting to load managed object model", v42, 2u);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  sub_1BC7D9730(0, &unk_1EDC1DDE8, 0x1E695D638);
  v43 = *(v28 + 16);
  v43(v35, v25, v26);
  v44 = sub_1BC8B5518(v35);
  if (v44)
  {
    v45 = v44;
    if (v73 - 1 <= 1)
    {
      v46 = [v44 entitiesByName];
      sub_1BC7D9730(0, &qword_1EDC1DE00, 0x1E695D5B8);
      v47 = sub_1BC8F7AA4();

      v48 = sub_1BC8E72D4(0x654D6465726F7453, 0xED00006567617373, v47);

      if (v48)
      {
        v49 = [v48 attributesByName];
        sub_1BC7D9730(0, &unk_1EDC1DDC0, 0x1E695D530);
        v50 = sub_1BC8F7AA4();

        v51 = sub_1BC8E72D4(0x466567617373656DLL, 0xEB00000000656C69, v50);

        if (v51)
        {
          [v51 setIsFileBackedFuture_];
        }

        else
        {
          v67 = sub_1BC8F7714();
          v68 = sub_1BC8F81E4();
          if (OUTLINED_FUNCTION_7_23(v68))
          {
            OUTLINED_FUNCTION_45();
            v69 = swift_slowAlloc();
            *v69 = 0;
            _os_log_impl(&dword_1BC7A3000, v67, v37, "MessageContainer: Failed to get attributes for the messageFile!", v69, 2u);
            OUTLINED_FUNCTION_6_0();
            MEMORY[0x1BFB2AA50]();
          }

          v70 = sub_1BC8EA61C();
          OUTLINED_FUNCTION_225(&type metadata for ContextProviderError, v70);
          OUTLINED_FUNCTION_28_15(v71, 4);
        }
      }

      else
      {
        v62 = sub_1BC8F7714();
        v63 = sub_1BC8F81E4();
        if (OUTLINED_FUNCTION_7_23(v63))
        {
          OUTLINED_FUNCTION_45();
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&dword_1BC7A3000, v62, v37, "MessageContainer: Failed to get StoredMessage entity! Check for CoreData errors!", v64, 2u);
          OUTLINED_FUNCTION_6_0();
          MEMORY[0x1BFB2AA50]();
        }

        v65 = sub_1BC8EA61C();
        OUTLINED_FUNCTION_225(&type metadata for ContextProviderError, v65);
        OUTLINED_FUNCTION_28_15(v66, 3);
      }
    }
  }

  else
  {
    v43(v32, v25, v26);
    v52 = sub_1BC8F7714();
    v53 = sub_1BC8F81E4();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = OUTLINED_FUNCTION_21_1();
      v55 = swift_slowAlloc();
      a10 = v55;
      *v54 = 136446210;
      sub_1BC80DFB0();
      v56 = sub_1BC8F8A54();
      v58 = v57;
      (*(v28 + 8))(v32, v26);
      v59 = sub_1BC7A9A4C(v56, v58, &a10);

      *(v54 + 4) = v59;
      _os_log_impl(&dword_1BC7A3000, v52, v53, "MessageContainer: Error initializing mom from: %{public}s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    else
    {

      (*(v28 + 8))(v32, v26);
    }

    v60 = sub_1BC8EA61C();
    OUTLINED_FUNCTION_225(&type metadata for ContextProviderError, v60);
    OUTLINED_FUNCTION_28_15(v61, 2);
  }

  OUTLINED_FUNCTION_23();
}

void sub_1BC8E8DF0()
{
  OUTLINED_FUNCTION_22();
  v68 = v1;
  v76 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  LODWORD(v69) = v8;
  v78[1] = *MEMORY[0x1E69E9840];
  v9 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_20_0();
  v74 = v13 - v14;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_20_4();
  v73 = v16;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v68 - v18;
  v20 = objc_allocWithZone(MEMORY[0x1E695D668]);
  v21 = sub_1BC8EA5B8(0xD000000000000014, 0x80000001BC90A760, v3);
  v22 = [v21 viewContext];
  [v22 setMergePolicy_];

  v23 = [v21 viewContext];
  v24 = OUTLINED_FUNCTION_19_21();
  [v23 setTransactionAuthor_];

  v77 = v21;
  v25 = [v21 viewContext];
  [v25 setAutomaticallyMergesChangesFromParent_];

  v26 = sub_1BC7D9730(0, &qword_1EDC1DD88, 0x1E695D6C8);
  v75 = v11;
  isa = v11[2].isa;
  v71 = v5;
  isa(v19, v5, v9);
  v27 = sub_1BC8E95C8(v19);
  sub_1BC7D9730(0, &qword_1EDC210D0, 0x1E696AD98);
  v28 = sub_1BC8F8374();
  [v27 setOption:v28 forKey:*MEMORY[0x1E695D3C0]];

  sub_1BC7C3588(0x6C61636F4CLL, 0xE500000000000000, v27, &selRef_setConfiguration_);
  v72 = v7;
  v29 = sub_1BC8E9AD8(v7);
  sub_1BC7C3588(0x64756F6C43, 0xE500000000000000, v29, &selRef_setConfiguration_);
  v76 = sub_1BC8E9C78();
  if (v69 == 1)
  {
    if (qword_1EDC20728 != -1)
    {
      OUTLINED_FUNCTION_0_19(&qword_1EDC20728);
    }

    v30 = sub_1BC8F7734();
    __swift_project_value_buffer(v30, qword_1EDC2B3A8);
    v31 = sub_1BC8F7714();
    v32 = sub_1BC8F8204();
    v33 = OUTLINED_FUNCTION_36_0();
    if (os_log_type_enabled(v33, v34))
    {
      OUTLINED_FUNCTION_45();
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1BC7A3000, v31, v32, "MessageContainer: Cloud mirroring enabled, setting container options", v35, 2u);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    sub_1BC7D9730(0, &qword_1EDC1DD80, 0x1E695D680);
    v36 = sub_1BC8E9664(0xD00000000000001FLL, 0x80000001BC90E8B0);
    v37 = sub_1BC8F7BE4();
    [v36 setApsConnectionMachServiceName_];

    [v36 setAutomaticallyDownloadFileBackedFutures_];
    v38 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    [v36 setOperationMemoryThresholdBytes_];

    [v36 setUseDeviceToDeviceEncryption_];
    [v36 setContainerOptions_];
    v39 = sub_1BC8F8384();
    [v36 setCkAssetThresholdBytes_];

    [v29 setCloudKitContainerOptions_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1BC8FEA90;
  *(v40 + 32) = v29;
  *(v40 + 40) = v27;
  v41 = v29;
  v42 = v27;
  sub_1BC8F7E34();
  OUTLINED_FUNCTION_16_3();

  v43 = v77;
  [v77 setPersistentStoreDescriptions_];

  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_0_19(&qword_1EDC20728);
  }

  v44 = sub_1BC8F7734();
  v45 = __swift_project_value_buffer(v44, qword_1EDC2B3A8);
  v46 = v73;
  v47 = isa;
  isa(v73, v71, v9);
  v48 = v74;
  v47(v74, v72, v9);
  v49 = sub_1BC8F7714();
  v50 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_7_23(v50))
  {
    v51 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v78[0] = v71;
    *v51 = 136446466;
    sub_1BC80DFB0();
    v72 = v41;
    v52 = v48;
    LODWORD(isa) = v45;
    v53 = sub_1BC8F8A54();
    v69 = v49;
    v54 = v42;
    v56 = v55;
    v57 = v75[1].isa;
    v57(v46, v9);
    v58 = sub_1BC7A9A4C(v53, v56, v78);
    v42 = v54;

    *(v51 + 4) = v58;
    *(v51 + 12) = 2082;
    v59 = sub_1BC8F8A54();
    v61 = v60;
    v62 = v52;
    v41 = v72;
    v57(v62, v9);
    v63 = sub_1BC7A9A4C(v59, v61, v78);

    *(v51 + 14) = v63;
    v64 = v69;
    _os_log_impl(&dword_1BC7A3000, v69, isa, "MessageContainer: Attempting to load persistent stores. local store: %{public}s, cloudStore: %{public}s", v51, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    v43 = v77;
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {

    v64 = v75 + 1;
    v65 = v75[1].isa;
    v65(v48, v9);
    v65(v46, v9);
  }

  v78[0] = 0;
  if ([v43 load_])
  {
    v66 = v78[0];
  }

  else
  {
    v67 = v78[0];
    OUTLINED_FUNCTION_10_2();
    sub_1BC8F6EA4();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_23();
}

id sub_1BC8E95C8(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1BC8F6F44();
  v4 = [v2 initWithURL_];

  v5 = sub_1BC8F7014();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

id sub_1BC8E9664(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1BC8F7BE4();

  v4 = [v2 initWithContainerIdentifier_];

  return v4;
}

void sub_1BC8E96D8()
{
  OUTLINED_FUNCTION_22();
  v2 = v1;
  v4 = v3;
  v35[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  v11 = v10 - v9;
  v12 = objc_allocWithZone(MEMORY[0x1E695D688]);
  v13 = sub_1BC8EA5B8(0xD000000000000014, 0x80000001BC90A760, v2);
  v14 = sub_1BC8E9AD8(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BC904010;
  *(v15 + 32) = v14;
  sub_1BC7D9730(0, &qword_1EDC1DD88, 0x1E695D6C8);
  v34 = v14;
  v16 = sub_1BC8F7E34();

  [v13 setPersistentStoreDescriptions_];

  v17 = &off_1E7FF5000;
  v18 = [v13 viewContext];
  [v18 setMergePolicy_];

  v19 = [v13 viewContext];
  v20 = OUTLINED_FUNCTION_19_21();
  [v19 setTransactionAuthor_];

  v21 = [v13 viewContext];
  [v21 setAutomaticallyMergesChangesFromParent_];

  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_0_19(&qword_1EDC20728);
  }

  v22 = sub_1BC8F7734();
  __swift_project_value_buffer(v22, qword_1EDC2B3A8);
  (*(v7 + 16))(v11, v4, v5);
  v23 = sub_1BC8F7714();
  v24 = v11;
  v25 = sub_1BC8F8204();
  if (os_log_type_enabled(v23, v25))
  {
    v26 = OUTLINED_FUNCTION_21_1();
    v27 = swift_slowAlloc();
    v35[0] = v27;
    *v26 = 136446210;
    sub_1BC80DFB0();
    v28 = sub_1BC8F8A54();
    v29 = v7;
    v30 = v28;
    v17 = v31;
    (*(v29 + 8))(v24, v5);
    sub_1BC7A9A4C(v30, v17, v35);
    OUTLINED_FUNCTION_10_2();

    *(v26 + 4) = v24;
    _os_log_impl(&dword_1BC7A3000, v23, v25, "MessageContainer: Attempting to load persistent store at: %{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {

    (*(v7 + 8))(v24, v5);
  }

  v35[0] = 0;
  if ([v13 load_])
  {
    v32 = v35[0];
  }

  else
  {
    v33 = v35[0];
    OUTLINED_FUNCTION_16_3();
    sub_1BC8F6EA4();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_23();
}

id sub_1BC8E9AD8(uint64_t a1)
{
  v2 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v8 = v7 - v6;
  sub_1BC7D9730(0, &qword_1EDC1DD88, 0x1E695D6C8);
  (*(v4 + 16))(v8, a1, v2);
  v9 = sub_1BC8E95C8(v8);
  [v9 setType_];
  sub_1BC7D9730(0, &qword_1EDC210D0, 0x1E696AD98);
  v10 = sub_1BC8F8374();
  [v9 setOption:v10 forKey:*MEMORY[0x1E695D3C0]];

  v11 = sub_1BC8F8374();
  [v9 setOption:v11 forKey:*MEMORY[0x1E695D380]];

  v12 = sub_1BC8F8374();
  [v9 setOption:v12 forKey:*MEMORY[0x1E695D430]];

  return v9;
}

id sub_1BC8E9C78()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695B8B0]) init];
  v2 = sub_1BC84A1F4(*(v0 + 160) != 2);
  sub_1BC7C3588(v2, v3, v1, &selRef_setApplicationBundleIdentifierOverrideForNetworkAttribution_);
  sub_1BC7C3588(0xD000000000000012, 0x80000001BC90B6C0, v1, &selRef_setApplicationBundleIdentifierOverrideForPushTopicGeneration_);
  [v1 setMmcsEncryptionSupport_];
  return v1;
}

uint64_t sub_1BC8E9D10()
{
  sub_1BC7BE108(*(v0 + 16), *(v0 + 24));
  sub_1BC7BE108(*(v0 + 32), *(v0 + 40));
  sub_1BC7BE108(*(v0 + 48), *(v0 + 56));
  sub_1BC7BE108(*(v0 + 64), *(v0 + 72));
  sub_1BC7BE108(*(v0 + 80), *(v0 + 88));
  sub_1BC8EA6E4(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));

  return v0;
}

uint64_t sub_1BC8E9D6C()
{
  sub_1BC8E9D10();

  return MEMORY[0x1EEE6BDC0](v0, 168, 7);
}

uint64_t get_enum_tag_for_layout_string_20FaceTimeMessageStore23CloudKitContextProviderC5State33_7E350AE206DE3E3E724D8207B39219CFLLO(uint64_t a1)
{
  if ((*(a1 + 48) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1BC8E9DFC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 49))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 2)
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

uint64_t sub_1BC8E9E3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BC8E9E90(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_1BC8E9EC8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v5 = *(*v2 + 40);
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  return sub_1BC7BE108(v4, v5);
}

uint64_t sub_1BC8E9EE0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *(*v2 + 72);
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  return sub_1BC7BE108(v4, v5);
}

uint64_t sub_1BC8E9EF8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 88);
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;
  return sub_1BC7BE108(v4, v5);
}

uint64_t sub_1BC8E9F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (qword_1EDC1E1D8 != -1)
  {
    swift_once();
  }

  v13 = sub_1BC8F7734();
  __swift_project_value_buffer(v13, qword_1EDC2B280);
  v14 = sub_1BC8F7714();
  v15 = sub_1BC8F8204();
  v16 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v16, v17))
  {
    OUTLINED_FUNCTION_45();
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1BC7A3000, v14, v15, "Fetching account info from CloudKit!", v18, 2u);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  sub_1BC7D9730(0, &unk_1EDC1DE90, 0x1E695B888);
  sub_1BC7D9730(0, &qword_1EDC1DE68, 0x1E695B8A0);
  v19 = sub_1BC8EA450(0xD00000000000001FLL, 0x80000001BC90E8B0, 1);
  v20 = sub_1BC8E9C78();
  v21 = sub_1BC8EA4CC(v19, v20);
  v12[20] = v21;
  v12[2] = v12;
  v12[7] = v12 + 18;
  v12[3] = sub_1BC8EA1A0;
  v22 = swift_continuation_init();
  v12[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6A28, &qword_1BC90A870);
  v12[10] = MEMORY[0x1E69E9820];
  v12[11] = 1107296256;
  v12[12] = sub_1BC8EA528;
  v12[13] = &block_descriptor_51_0;
  v12[14] = v22;
  [v21 accountInfoWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v12 + 2, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_1BC8EA1A0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1BC8EA3E0;
  }

  else
  {
    v2 = sub_1BC8EA2B0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BC8EA2B0()
{
  v1 = v0[18];
  sub_1BC887800([v1 accountStatus]);
  if (([v1 supportsDeviceToDeviceEncryption] & 1) == 0)
  {
    [v1 deviceToDeviceEncryptionAvailability];
  }

  if ([v1 hasValidCredentials])
  {
    [v1 supportsDeviceToDeviceEncryption];
  }

  v2 = v0[20];
  [v1 hasValidCredentials];
  v3 = objc_allocWithZone(type metadata accessor for AccountInfo());
  v4 = AccountInfo.init(accountStatus:deviceToDeviceEncryption:hasValidCredentials:)();

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1BC8EA3E0(uint64_t a1)
{
  v2 = *(v1 + 160);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

id sub_1BC8EA450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1BC8F7BE4();

  v6 = [v4 initWithContainerIdentifier:v5 environment:a3];

  return v6;
}

id sub_1BC8EA4CC(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContainerID:a1 options:a2];

  return v4;
}

uint64_t *sub_1BC8EA528(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1BC899994();
  }

  else if (a2)
  {
    v8 = a2;

    return sub_1BC891000(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BC8EA5B8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1BC8F7BE4();

  v6 = [v3 initWithName:v5 managedObjectModel:a3];

  return v6;
}

unint64_t sub_1BC8EA61C()
{
  result = qword_1EBCF6A20;
  if (!qword_1EBCF6A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6A20);
  }

  return result;
}

id sub_1BC8EA670(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1BC8F7BE4();

  v7 = [a4 URLForResource:a1 withExtension:v6];

  return v7;
}

void sub_1BC8EA6E4(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, char a7)
{
  if (a7 == 1)
  {
  }

  else
  {
    if (a7)
    {
      return;
    }

    a1 = a6;
  }
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BC8EA7FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrackedOutgoingMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

FaceTimeMessageStore::Caption __swiftcall Caption.init(confidence:range:)(Swift::Double confidence, FaceTimeMessageStore::CaptionRange_optional range)
{
  v3 = *(range.value.location + 16);
  *v2 = *range.value.location;
  *(v2 + 16) = v3;
  *(v2 + 24) = confidence;
  result.range = range;
  result.confidence = confidence;
  return result;
}

__n128 Caption.range.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

BOOL static Caption.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }

    return v2 == *(a2 + 24);
  }

  result = 0;
  if ((*(a2 + 16) & 1) == 0 && *a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == *(a2 + 24);
  }

  return result;
}

uint64_t sub_1BC8EA91C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BC8F8AA4();

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

uint64_t sub_1BC8EA9E8(char a1)
{
  if (a1)
  {
    return 0x6E656469666E6F63;
  }

  else
  {
    return 0x65676E6172;
  }
}

uint64_t sub_1BC8EAA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC8EA91C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC8EAA50(uint64_t a1)
{
  v2 = sub_1BC8EAC54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC8EAA8C(uint64_t a1)
{
  v2 = sub_1BC8EAC54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Caption.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6A30, &qword_1BC90A8C0);
  OUTLINED_FUNCTION_0();
  v14 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8EAC54();
  sub_1BC8F8CA4();
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v15 = 0;
  sub_1BC8EACA8();
  v11 = v13;
  sub_1BC8F8974();
  if (!v11)
  {
    LOBYTE(v16) = 1;
    sub_1BC8F89C4();
  }

  return (*(v14 + 8))(v7, v3);
}

unint64_t sub_1BC8EAC54()
{
  result = qword_1EDC206F8;
  if (!qword_1EDC206F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC206F8);
  }

  return result;
}

unint64_t sub_1BC8EACA8()
{
  result = qword_1EDC1F1F0;
  if (!qword_1EDC1F1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F1F0);
  }

  return result;
}

uint64_t Caption.hash(into:)()
{
  v1 = v0[3];
  if (*(v0 + 16) == 1)
  {
    sub_1BC8F8C24();
  }

  else
  {
    v3 = *v0;
    v2 = *(v0 + 1);
    sub_1BC8F8C24();
    MEMORY[0x1BFB2A020](*&v3);
    MEMORY[0x1BFB2A020](v2);
  }

  v4 = 0.0;
  if (v1 != 0.0)
  {
    v4 = v1;
  }

  return MEMORY[0x1BFB2A060](*&v4);
}

uint64_t Caption.hashValue.getter()
{
  v2 = *v0;
  v1 = *(v0 + 1);
  v3 = *(v0 + 16);
  v4 = v0[3];
  sub_1BC8F8C04();
  sub_1BC8F8C24();
  if (v3 != 1)
  {
    MEMORY[0x1BFB2A020](*&v2);
    MEMORY[0x1BFB2A020](v1);
  }

  v5 = 0.0;
  if (v4 != 0.0)
  {
    v5 = v4;
  }

  MEMORY[0x1BFB2A060](*&v5);
  return sub_1BC8F8C64();
}

uint64_t Caption.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6A38, &qword_1BC90A8C8);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8EAC54();
  sub_1BC8F8C84();
  if (!v2)
  {
    v17 = 0;
    sub_1BC8EB0C4();
    sub_1BC8F8864();
    v11 = v18;
    v12 = v19;
    v16 = v20;
    LOBYTE(v18) = 1;
    sub_1BC8F88C4();
    v14 = v13;
    (*(v7 + 8))(v10, v5);
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v16;
    *(a2 + 24) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BC8EB024(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 1);
  v4 = *(v1 + 16);
  v5 = v1[3];
  sub_1BC8F8C04();
  sub_1BC8F8C24();
  if (v4 != 1)
  {
    MEMORY[0x1BFB2A020](*&v3);
    MEMORY[0x1BFB2A020](v2);
  }

  v6 = 0.0;
  if (v5 != 0.0)
  {
    v6 = v5;
  }

  MEMORY[0x1BFB2A060](*&v6);
  return sub_1BC8F8C64();
}

unint64_t sub_1BC8EB0C4()
{
  result = qword_1EDC202E0;
  if (!qword_1EDC202E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC202E0);
  }

  return result;
}

unint64_t sub_1BC8EB11C()
{
  result = qword_1EBCF6A40;
  if (!qword_1EBCF6A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6A40);
  }

  return result;
}

uint64_t sub_1BC8EB174(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BC8EB194(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for Caption.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BC8EB2B0()
{
  result = qword_1EBCF6A48;
  if (!qword_1EBCF6A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6A48);
  }

  return result;
}

unint64_t sub_1BC8EB308()
{
  result = qword_1EDC206E8;
  if (!qword_1EDC206E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC206E8);
  }

  return result;
}

unint64_t sub_1BC8EB360()
{
  result = qword_1EDC206F0;
  if (!qword_1EDC206F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC206F0);
  }

  return result;
}

uint64_t sub_1BC8EB3B4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore21ProtectedAppsProvider_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1BC8EB400()
{
  *&v0[OBJC_IVAR____TtC20FaceTimeMessageStore21ProtectedAppsProvider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ProtectedAppsProvider();
  v1 = objc_msgSendSuper2(&v6, sel_init);
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [objc_msgSend(v2 subjectMonitorRegistry)];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1BC8EB4EC(uint64_t a1)
{
  if (qword_1EDC1E208 != -1)
  {
    OUTLINED_FUNCTION_0_34(&qword_1EDC1E208);
  }

  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EDC2B2C8);

  v3 = sub_1BC8F7714();
  v4 = sub_1BC8F8204();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = sub_1BC8F83C4();
    v8 = MEMORY[0x1BFB29280](a1, v7);
    v10 = sub_1BC7A9A4C(v8, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1BC7A3000, v3, v4, "Posting appProtectionSubjectsChanged notification for subjects: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1BC87C68C();

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1BC8EB704(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ProtectedAppsProvider();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1BC8EB798(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1BC8F7BE4();

  v4 = [v2 initWithString_];

  return v4;
}

id sub_1BC8EB80C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1BC7D9730(0, &unk_1EDC1FF20, 0x1E69E58C0);
    v4 = sub_1BC8F7A94();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1BC8EB8A8(char a1, uint64_t a2)
{
  v3 = sub_1BC8DF1AC(a1);
  v5 = v4;
  if (qword_1EDC1FFC8 != -1)
  {
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

  v6 = sub_1BC8F7734();
  __swift_project_value_buffer(v6, qword_1EDC2B350);

  v7 = sub_1BC8F7714();
  v8 = sub_1BC8F8204();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = sub_1BC7A9A4C(v3, v5, v22);
    *(v9 + 12) = 2082;
    sub_1BC7D9730(0, &unk_1EDC1FF20, 0x1E69E58C0);
    v10 = sub_1BC8F7AB4();
    v12 = sub_1BC7A9A4C(v10, v11, v22);

    *(v9 + 14) = v12;
    _os_log_impl(&dword_1BC7A3000, v7, v8, "Reporting analytics with event %{public}s and payload %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v13 = sub_1BC8F7BE4();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  v22[4] = sub_1BC8ED8F0;
  v22[5] = v14;
  OUTLINED_FUNCTION_1_34();
  v22[1] = 1107296256;
  v22[2] = sub_1BC8EB80C;
  v22[3] = &block_descriptor_14;
  v15 = _Block_copy(v22);

  v16 = AnalyticsSendEventLazy();
  _Block_release(v15);

  if (v16)
  {
  }

  else
  {

    v17 = sub_1BC8F7714();
    v18 = sub_1BC8F81E4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22[0] = v20;
      *v19 = 136446210;
      v21 = sub_1BC7A9A4C(v3, v5, v22);

      *(v19 + 4) = v21;
      _os_log_impl(&dword_1BC7A3000, v17, v18, "CoreAnalytics rejected report with event %{public}s. Check that the event is enabled in the current config.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    else
    {
    }
  }
}

uint64_t sub_1BC8EBC08(uint64_t a1, char a2)
{
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  *(v2 + 56) = a1;
  if (a2)
  {
    v3 = *MEMORY[0x1E69E9C50];
    OUTLINED_FUNCTION_1_34();
    v6[1] = 1107296256;
    v6[2] = sub_1BC8342F0;
    v6[3] = &block_descriptor_27;
    v4 = _Block_copy(v6);

    xpc_activity_register("com.apple.telephonyutilities.facetimemessagestored.analytics.daily", v3, v4);

    _Block_release(v4);
  }

  return v2;
}

void sub_1BC8EBCEC(_xpc_activity_s *a1)
{
  state = xpc_activity_get_state(a1);
  if (state == 2)
  {
    sub_1BC8EBFD0(a1);
    return;
  }

  if (!state)
  {
    if (qword_1EDC1FFC8 != -1)
    {
      swift_once();
    }

    v3 = sub_1BC8F7734();
    __swift_project_value_buffer(v3, qword_1EDC2B350);
    swift_unknownObjectRetain();
    oslog = sub_1BC8F7714();
    v4 = sub_1BC8F8204();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v15 = v6;
      *v5 = 136315138;
      if (xpc_activity_copy_criteria(a1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6AC8, qword_1BC90ABE8);
        v7 = sub_1BC8F7C94();
        v9 = v8;
      }

      else
      {
        v9 = 0xE300000000000000;
        v7 = 7104878;
      }

      v13 = sub_1BC7A9A4C(v7, v9, &v15);

      *(v5 + 4) = v13;
      _os_log_impl(&dword_1BC7A3000, oslog, v4, "XPC activity checked in. Criteria: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x1BFB2AA50](v6, -1, -1);
      MEMORY[0x1BFB2AA50](v5, -1, -1);

      return;
    }

    goto LABEL_13;
  }

  if (qword_1EDC1FFC8 != -1)
  {
    swift_once();
  }

  v10 = sub_1BC8F7734();
  __swift_project_value_buffer(v10, qword_1EDC2B350);
  swift_unknownObjectRetain();
  oslog = sub_1BC8F7714();
  v11 = sub_1BC8F8204();
  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = xpc_activity_get_state(a1);
    swift_unknownObjectRelease();
    _os_log_impl(&dword_1BC7A3000, oslog, v11, "unhandled xpc activity state %ld", v12, 0xCu);
    MEMORY[0x1BFB2AA50](v12, -1, -1);
LABEL_13:

    return;
  }

  swift_unknownObjectRelease();
}

void sub_1BC8EBFD0(_xpc_activity_s *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18[-v5 - 8];
  OUTLINED_FUNCTION_17_1(v1 + 16, v18);
  sub_1BC8ECDAC(v1 + 16, &v19);
  if (v20)
  {
    sub_1BC7CF5EC(&v19, v21);
    if (qword_1EDC1FFC8 != -1)
    {
      OUTLINED_FUNCTION_0_35();
      swift_once();
    }

    v7 = sub_1BC8F7734();
    __swift_project_value_buffer(v7, qword_1EDC2B350);
    v8 = sub_1BC8F7714();
    v9 = sub_1BC8F8204();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BC7A3000, v8, v9, "beginDailyMaintenance", v10, 2u);
      OUTLINED_FUNCTION_6();
    }

    xpc_activity_set_state(a1, 4);
    v11 = sub_1BC8F7FC4();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v11);
    sub_1BC7A792C(v21, &v19);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v2;
    sub_1BC7CF5EC(&v19, (v12 + 5));
    v12[10] = a1;

    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_85();
    sub_1BC8333D4();

    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    sub_1BC7E6180(&v19, &qword_1EBCF5AF8, &qword_1BC9034C8);
    if (qword_1EDC1FFC8 != -1)
    {
      OUTLINED_FUNCTION_0_35();
      swift_once();
    }

    v13 = sub_1BC8F7734();
    __swift_project_value_buffer(v13, qword_1EDC2B350);
    v14 = sub_1BC8F7714();
    v15 = sub_1BC8F81E4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1BC7A3000, v14, v15, "Can't perform daily maintenance because data source is nil!", v16, 2u);
      OUTLINED_FUNCTION_6();
    }
  }
}

uint64_t sub_1BC8EC280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v8 = *__swift_project_boxed_opaque_existential_1(a5, a5[3]);
  v9 = swift_task_alloc();
  *(v6 + 24) = v9;
  *v9 = v6;
  v9[1] = sub_1BC8EC344;

  return sub_1BC8ECED0(v8, a4);
}

uint64_t sub_1BC8EC344()
{
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1BC8EC434, 0, 0);
}

uint64_t sub_1BC8EC434()
{
  OUTLINED_FUNCTION_5();
  xpc_activity_set_state(*(v0 + 16), 5);
  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_1BC8EC490(char a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v17 - v12;
  sub_1BC8F7FA4();
  v14 = sub_1BC8F7FC4();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  *(v15 + 48) = a3;
  *(v15 + 56) = a4;
  *(v15 + 64) = a5;
  *(v15 + 72) = v5;

  OUTLINED_FUNCTION_85();
  sub_1BC8333D4();
}

uint64_t sub_1BC8EC5A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = a8;
  *(v8 + 120) = v10;
  *(v8 + 96) = a6;
  *(v8 + 104) = a7;
  *(v8 + 128) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BC8EC5D4, 0, 0);
}

uint64_t sub_1BC8EC5D4()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6AC0, &qword_1BC90ABA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC8FEAA0;
  v15 = sub_1BC8DF268(v3);
  v18 = v5;

  MEMORY[0x1BFB29120](0x746E756F635FLL, 0xE600000000000000);

  *(inited + 32) = v15;
  *(inited + 40) = v18;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  v16 = sub_1BC8DF268(v3);
  v19 = v6;

  MEMORY[0x1BFB29120](0x5F646165726E755FLL, 0xED0000746E756F63);

  *(inited + 56) = v16;
  *(inited + 64) = v19;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  sub_1BC7D9730(0, &unk_1EDC1FF20, 0x1E69E58C0);
  v7 = sub_1BC8F7AD4();
  if (v1)
  {
    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    v17 = sub_1BC8DF268(*(v0 + 128));
    v20 = v10;

    MEMORY[0x1BFB29120](0x7A69735F6576615FLL, 0xE900000000000065);

    v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1BC83E268(v11, v17, v20, isUniquelyReferenced_nonNull_native);
  }

  sub_1BC8EB8A8(*(v0 + 128), v7);

  OUTLINED_FUNCTION_27();

  return v13();
}

uint64_t sub_1BC8EC824(char a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  sub_1BC8F7FA4();
  v8 = sub_1BC8F7FC4();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 48) = v2;
  v10 = a2;

  OUTLINED_FUNCTION_85();
  sub_1BC8333D4();
}

uint64_t sub_1BC8EC920(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 192) = a5;
  *(v6 + 200) = a6;
  *(v6 + 208) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BC8EC944, 0, 0);
}

uint64_t sub_1BC8EC944()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6AC0, &qword_1BC90ABA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC8FC240;
  *(inited + 32) = 0x6E6F69746361;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 56) = 1701869940;
  *(inited + 64) = 0xE400000000000000;
  sub_1BC7D9730(0, &qword_1EDC20640, 0x1E696AEC0);
  v4 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
  OUTLINED_FUNCTION_17_1(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType, v0 + 144);
  v5 = sub_1BC80BFE8(*(v1 + v4));
  *(inited + 72) = sub_1BC8EB798(v5, v6);
  *(inited + 80) = 0x6E6F697461727564;
  *(inited + 88) = 0xE800000000000000;
  v7 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_duration;
  OUTLINED_FUNCTION_17_1(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_duration, v0 + 168);
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  *(inited + 104) = 1702521203;
  *(inited + 112) = 0xE400000000000000;
  v8 = sub_1BC8657DC();
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  *(inited + 120) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  sub_1BC7D9730(0, &unk_1EDC1FF20, 0x1E69E58C0);
  v11 = sub_1BC8F7AD4();
  sub_1BC86EC18();
  if ((v13 & 1) == 0)
  {
    v14 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1BC83E268(v14, 0x6E656469666E6F63, 0xEA00000000006563, isUniquelyReferenced_nonNull_native);
  }

  sub_1BC8EB8A8(*(v0 + 208), v11);

  OUTLINED_FUNCTION_27();

  return v16();
}

uint64_t sub_1BC8ECBA8()
{
  sub_1BC7E6180(v0 + 16, &qword_1EBCF5AF8, &qword_1BC9034C8);

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1BC8ECC1C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v5[1] = sub_1BC80E420;
  v7 = OUTLINED_FUNCTION_3_31();

  return sub_1BC8EC920(v7, v8, v9, v3, v1, v2);
}

uint64_t sub_1BC8ECCD0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 32);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_19(v6);
  *v7 = v8;
  v7[1] = sub_1BC80E420;
  v9 = OUTLINED_FUNCTION_3_31();

  return sub_1BC8EC5A4(v9, v10, v11, v5, v4, v1, v2, v3);
}

uint64_t sub_1BC8ECDAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5AF8, &qword_1BC9034C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC8ECE1C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 80);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_19(v3);
  *v4 = v5;
  v4[1] = sub_1BC80E234;
  v6 = OUTLINED_FUNCTION_3_31();

  return sub_1BC8EC280(v6, v7, v8, v1, v9, v2);
}

uint64_t sub_1BC8ECED0(uint64_t a1, uint64_t a2)
{
  v2[28] = a2;
  v4 = sub_1BC8F7014();
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = type metadata accessor for MessageStoreFetchRequest(0);
  v2[33] = swift_task_alloc();
  v5 = type metadata accessor for MessageStoreProviderDataSource();
  v2[34] = v5;
  v2[5] = v5;
  v2[6] = &off_1F3B3B9B8;
  v2[2] = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BC8ECFEC, 0, 0);
}

uint64_t sub_1BC8ECFEC()
{
  v1 = v0[33];
  v2 = v0[32];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[34]);
  sub_1BC8F7254();
  *(v1 + v2[5]) = 0xE000000000000000;
  *(v1 + v2[6]) = 512;
  *(v1 + v2[7]) = 0;
  v3 = sub_1BC7A6640([objc_allocWithZone(MEMORY[0x1E698E740]) init]);
  v4 = (v1 + v2[8]);
  *v4 = v3;
  v4[1] = v5;
  *(v1 + v2[9]) = 0x7FFFFFFFFFFFFFFFLL;
  *(v1 + v2[10]) = 0;
  v6 = swift_task_alloc();
  v0[35] = v6;
  *v6 = v0;
  v6[1] = sub_1BC8ED104;

  return sub_1BC7BED60();
}

uint64_t sub_1BC8ED104()
{
  OUTLINED_FUNCTION_5();
  v2 = *(*v1 + 264);
  v3 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;
  *(v6 + 288) = v5;
  *(v6 + 296) = v0;

  sub_1BC7ADC24(v2);
  if (v0)
  {
    v7 = sub_1BC8ED74C;
  }

  else
  {
    v7 = sub_1BC8ED22C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1BC8ED22C()
{
  v59 = sub_1BC7C0454(*(v0 + 288));
  if (v59)
  {
    v1 = 0;
    OUTLINED_FUNCTION_12_24();
    v2 = *(v0 + 288);
    v58 = v2 & 0xC000000000000001;
    v47 = v2 + 32;
    v48 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v58)
      {
        v3 = MEMORY[0x1BFB29A00](v1, *(v0 + 288));
      }

      else
      {
        if (v1 >= *(v48 + 16))
        {
          goto LABEL_47;
        }

        v3 = *(v47 + 8 * v1);
      }

      v4 = v3;
      v5 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
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
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        return;
      }

      if (qword_1EDC1FFC8 != -1)
      {
        OUTLINED_FUNCTION_0_35();
        swift_once();
      }

      v6 = sub_1BC8F7734();
      __swift_project_value_buffer(v6, qword_1EDC2B350);
      v7 = v4;
      v8 = sub_1BC8F7714();
      v9 = sub_1BC8F8204();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138412290;
        *(v10 + 4) = v7;
        *v11 = v7;
        v12 = v7;
        _os_log_impl(&dword_1BC7A3000, v8, v9, "%@", v10, 0xCu);
        sub_1BC7E6180(v11, &unk_1EBCF5DB0, &unk_1BC900410);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_6();
      }

      v13 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
      OUTLINED_FUNCTION_17_1(&v7[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType], v0 + 56);
      v14 = *&v7[v13];
      if (*&v7[v13])
      {
        if (v14 == 2)
        {
          OUTLINED_FUNCTION_17_1(&v7[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead], v0 + 80);
          OUTLINED_FUNCTION_10_28();
          if (__CFADD__(v57, v26))
          {
            goto LABEL_49;
          }

          if (v54 == -1)
          {
            goto LABEL_51;
          }

          v57 += v26;
          ++v54;
          OUTLINED_FUNCTION_17_1(&v7[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageFile], v0 + 104);
          v27 = OUTLINED_FUNCTION_2_34();
          v28(v27);
          sub_1BC7EF368();
          v30 = v29;
          v32 = v31;

          v33 = OUTLINED_FUNCTION_8_32();
          v34(v33);
          if (v32)
          {
            v35 = 0;
          }

          else
          {
            v35 = v30;
          }

          v25 = __CFADD__(v51, v35);
          v51 += v35;
          if (v25)
          {
            goto LABEL_56;
          }
        }

        else
        {
          if (v14 != 1)
          {
            *(v0 + 304) = v14;

            sub_1BC8F8B04();
            return;
          }

          OUTLINED_FUNCTION_17_1(&v7[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead], v0 + 176);
          OUTLINED_FUNCTION_10_28();
          if (__CFADD__(v56, v15))
          {
            goto LABEL_48;
          }

          if (v53 == -1)
          {
            goto LABEL_53;
          }

          v56 += v15;
          ++v53;
          OUTLINED_FUNCTION_17_1(&v7[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageFile], v0 + 200);
          v16 = OUTLINED_FUNCTION_2_34();
          v17(v16);
          sub_1BC7EF368();
          v19 = v18;
          v21 = v20;

          v22 = OUTLINED_FUNCTION_8_32();
          v23(v22);
          if (v21)
          {
            v24 = 0;
          }

          else
          {
            v24 = v19;
          }

          v25 = __CFADD__(v50, v24);
          v50 += v24;
          if (v25)
          {
            goto LABEL_54;
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_17_1(&v7[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead], v0 + 128);
        OUTLINED_FUNCTION_10_28();
        if (__CFADD__(v55, v36))
        {
          goto LABEL_50;
        }

        if (v52 == -1)
        {
          goto LABEL_52;
        }

        v55 += v36;
        ++v52;
        OUTLINED_FUNCTION_17_1(&v7[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageFile], v0 + 152);
        v37 = OUTLINED_FUNCTION_2_34();
        v38(v37);
        sub_1BC7EF368();
        v40 = v39;
        v42 = v41;

        v43 = OUTLINED_FUNCTION_8_32();
        v44(v43);
        if (v42)
        {
          v45 = 0;
        }

        else
        {
          v45 = v40;
        }

        v25 = __CFADD__(v49, v45);
        v49 += v45;
        if (v25)
        {
          goto LABEL_55;
        }
      }

      ++v1;
      if (v5 == v59)
      {
        goto LABEL_40;
      }
    }
  }

  OUTLINED_FUNCTION_12_24();
LABEL_40:

  sub_1BC8EC490(5, 0, v55, v52, v49);
  sub_1BC8EC490(6, 1, v56, v53, v50);
  sub_1BC8EC490(7, 2, v57, v54, v51);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_27();

  v46();
}

uint64_t sub_1BC8ED74C()
{
  if (qword_1EDC1FFC8 != -1)
  {
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

  v1 = *(v0 + 296);
  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EDC2B350);
  v3 = v1;
  v4 = sub_1BC8F7714();
  v5 = sub_1BC8F81E4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 296);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1BC7A3000, v4, v5, "Got an error while fetching messages for daily maintenance: %{public}@", v8, 0xCu);
    sub_1BC7E6180(v9, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_27();

  return v12();
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 MessageUpdate.__allocating_init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:undelete:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unsigned int a8, uint64_t a9, char a10, int a11, uint64_t a12, uint64_t a13, int a14, char a15, __int128 a16, uint64_t a17, char a18)
{
  v19 = objc_allocWithZone(v18);
  LOBYTE(v23) = a18;
  BYTE4(v22) = a15;
  LODWORD(v22) = a14 & 0x1FFFF;
  HIDWORD(v21) = a11 & 0x1FFFF;
  LOBYTE(v21) = a10 & 1;
  MessageUpdate.init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:undelete:)(a1, a2, a3, a4, a5, a6, a7 & 1, a8, a9, v21, a12, a13, v22, a16, *(&a16 + 1), a17, v23, v24, a16, *(&a16 + 1), v25, v26, v27, a7, SBYTE2(a7), a1, a2, a3, SBYTE2(a3), SBYTE3(a3), BYTE4(a3), a4, a5, a6, a8);
  return result;
}

id MessageUpdate.__allocating_init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:dateCreated:voicemailID:summary:undelete:reminderUUID:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, uint64_t a12, uint64_t a13, int a14, char a15, __int128 a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t *a20, char a21, uint64_t a22)
{
  v23 = objc_allocWithZone(v22);
  v34 = a19 | ((HIDWORD(a19) & 1) << 32);
  OUTLINED_FUNCTION_67_4();
  return MessageUpdate.init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:dateCreated:voicemailID:summary:undelete:reminderUUID:)(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10 & 1, v33, a11, (a11 & 0x1FFFFu) >> 16, a12, a13, a14, (a14 & 0x1FFFFu) >> 16, (a14 & 0x1FFFFu) >> 24, a15, a16, *(&a16 + 1), a17, a18, v34, SBYTE4(v34), a20, a21, a22);
}

id MessageUpdate.__allocating_init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:dateCreated:voicemailID:summary:undelete:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, uint64_t a12, uint64_t a13, int a14, char a15, __int128 a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t *a20, char a21)
{
  v22 = objc_allocWithZone(v21);
  v33 = a19 | ((HIDWORD(a19) & 1) << 32);
  OUTLINED_FUNCTION_67_4();
  return MessageUpdate.init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:dateCreated:voicemailID:summary:undelete:)(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10 & 1, v32, a11, (a11 & 0x1FFFFu) >> 16, a12, a13, a14, (a14 & 0x1FFFFu) >> 16, (a14 & 0x1FFFFu) >> 24, a15, a16, *(&a16 + 1), a17, a18, v33, SBYTE4(v33), a20, a21);
}

uint64_t MessageUpdate.recordUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recordUUID;
  sub_1BC8F7264();
  OUTLINED_FUNCTION_10();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

double MessageUpdate.summary.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary);
  *(a1 + 16) = v2;

  return result;
}

id MessageUpdate.init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:dateCreated:voicemailID:summary:undelete:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, uint64_t a14, uint64_t a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, char a25, uint64_t *a26, char a27)
{
  v28 = v27;
  ObjectType = swift_getObjectType();
  v57 = a26[1];
  v58 = *a26;
  v56 = a26[2];
  v33 = OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recordUUID;
  v34 = sub_1BC8F7264();
  v35 = *(v34 - 8);
  (*(v35 + 16))(&v28[v33], a1, v34);
  OUTLINED_FUNCTION_74_5(a2, &v28[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_callUUID]);
  OUTLINED_FUNCTION_74_5(a3, &v28[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_conversationID]);
  v36 = 0;
  v37 = 0;
  v38 = &v28[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_from];
  *v38 = a4;
  v38[1] = a5;
  if ((a7 & 1) == 0)
  {
    v36 = MessageStoreProvider.identifierString.getter(a6);
  }

  v39 = &v28[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_provider];
  *v39 = v36;
  v39[1] = v37;
  v28[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRead] = a8;
  v40 = &v28[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_duration];
  *v40 = a9;
  v40[8] = a10 & 1;
  v41 = &v28[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_mailboxType];
  *v41 = a12;
  v41[2] = a13 & 1;
  v42 = &v28[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recipient];
  *v42 = a14;
  v42[1] = a15;
  v43 = &v28[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptionStatus];
  *v43 = a16;
  v43[2] = a17 & 1;
  v28[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRTT] = a19;
  sub_1BC8EEA08(a20, &v28[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptURL], &qword_1EBCF5A20, &qword_1BC901BF0);
  v44 = &v28[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_simID];
  *v44 = a21;
  v44[1] = a22;
  sub_1BC8EEA08(a23, &v28[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_dateCreated], &unk_1EBCF5D80, &qword_1BC8FEA60);
  v45 = &v28[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_voicemailID];
  *v45 = a24;
  v45[4] = a25 & 1;
  v46 = &v28[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary];
  *v46 = v58;
  v46[1] = v57;
  v46[2] = v56;
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v34);
  v28[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_undelete] = a27 & 1;
  v60.receiver = v28;
  v60.super_class = ObjectType;
  v50 = objc_msgSendSuper2(&v60, sel_init);
  sub_1BC862F74(a23, &unk_1EBCF5D80, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_51_9(a20);
  OUTLINED_FUNCTION_51_9(a3);
  OUTLINED_FUNCTION_51_9(a2);
  (*(v35 + 8))(a1, v34);
  return v50;
}

void MessageUpdate.init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:undelete:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, __int16 a23, __int16 a24, char a25, uint64_t a26, uint64_t a27, __int16 a28, char a29, char a30, unsigned __int8 a31, uint64_t a32, uint64_t a33, uint64_t a34, unsigned __int8 a35)
{
  OUTLINED_FUNCTION_29_0();
  v36 = v35;
  v83 = v37;
  v79 = v38;
  v76 = v40;
  v77 = v39;
  v78 = v41;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v89 = a35;
  v86 = a33;
  v87 = a34;
  v90 = a32;
  v85 = a31;
  v84 = a27;
  v82 = a26;
  v81 = a22;
  v80 = a21;
  ObjectType = swift_getObjectType();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_25(v48);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v75 - v50;
  v52 = OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recordUUID;
  v53 = sub_1BC8F7264();
  v54 = *(v53 - 8);
  v55 = *(v54 + 16);
  v93 = v47;
  v55(&v36[v52], v47, v53);
  v92 = v45;
  OUTLINED_FUNCTION_74_5(v45, &v36[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_callUUID]);
  v91 = v43;
  OUTLINED_FUNCTION_74_5(v43, &v36[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_conversationID]);
  v56 = 0;
  v57 = 0;
  v58 = &v36[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_from];
  v59 = v78;
  *v58 = v77;
  v58[1] = v59;
  if ((v79 & 1) == 0)
  {
    v56 = MessageStoreProvider.identifierString.getter(v76);
  }

  v60 = &v36[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_provider];
  *v60 = v56;
  v60[1] = v57;
  v36[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRead] = v83;
  v61 = &v36[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_duration];
  *v61 = v80;
  v61[8] = v81 & 1;
  v62 = &v36[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_mailboxType];
  *v62 = a24;
  v62[2] = a25 & 1;
  v63 = &v36[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recipient];
  v64 = v84;
  *v63 = v82;
  v63[1] = v64;
  v65 = &v36[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptionStatus];
  *v65 = a28;
  v65[2] = a29 & 1;
  v36[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRTT] = v85;
  v66 = v90;
  sub_1BC8EEA08(v90, &v36[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptURL], &qword_1EBCF5A20, &qword_1BC901BF0);
  v67 = &v36[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_simID];
  v68 = v87;
  *v67 = v86;
  v67[1] = v68;
  sub_1BC8F71D4();
  v69 = sub_1BC8F71E4();
  __swift_storeEnumTagSinglePayload(v51, 0, 1, v69);
  sub_1BC8EF81C(v51, &v36[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_dateCreated], &unk_1EBCF5D80, &qword_1BC8FEA60);
  v70 = &v36[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_voicemailID];
  *v70 = 0;
  v70[4] = 1;
  v71 = &v36[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary];
  *v71 = 0;
  v71[1] = 0;
  v71[2] = 0;
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v53);
  v36[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_undelete] = v89 & 1;
  v94.receiver = v36;
  v94.super_class = ObjectType;
  objc_msgSendSuper2(&v94, sel_init);
  OUTLINED_FUNCTION_51_9(v66);
  OUTLINED_FUNCTION_51_9(v91);
  OUTLINED_FUNCTION_51_9(v92);
  (*(v54 + 8))(v93, v53);
  OUTLINED_FUNCTION_24();
}

id MessageUpdate.init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:dateCreated:voicemailID:summary:undelete:reminderUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, uint64_t a14, uint64_t a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, char a25, uint64_t *a26, char a27, uint64_t a28)
{
  v29 = v28;
  ObjectType = swift_getObjectType();
  v64 = a26[1];
  v65 = *a26;
  v63 = a26[2];
  v35 = OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recordUUID;
  v36 = sub_1BC8F7264();
  v37 = *(v36 - 8);
  v67 = v36;
  (*(v37 + 16))(&v29[v35], a1);
  sub_1BC8EEA08(a2, &v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_callUUID], &unk_1EBCF5D70, &qword_1BC8FC740);
  sub_1BC8EEA08(a3, &v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_conversationID], &unk_1EBCF5D70, &qword_1BC8FC740);
  v38 = 0;
  v39 = 0;
  v40 = &v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_from];
  *v40 = a4;
  v40[1] = a5;
  if ((a7 & 1) == 0)
  {
    v38 = MessageStoreProvider.identifierString.getter(a6);
  }

  v41 = &v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_provider];
  *v41 = v38;
  v41[1] = v39;
  v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRead] = a8;
  v42 = &v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_duration];
  *v42 = a9;
  v42[8] = a10 & 1;
  v43 = &v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_mailboxType];
  *v43 = a12;
  v43[2] = a13 & 1;
  v44 = &v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recipient];
  *v44 = a14;
  v44[1] = a15;
  v45 = &v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptionStatus];
  *v45 = a16;
  v45[2] = a17 & 1;
  v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRTT] = a19;
  sub_1BC8EEA08(a20, &v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptURL], &qword_1EBCF5A20, &qword_1BC901BF0);
  v46 = &v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_simID];
  *v46 = a21;
  v46[1] = a22;
  sub_1BC8EEA08(a23, &v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_dateCreated], &unk_1EBCF5D80, &qword_1BC8FEA60);
  v47 = &v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_voicemailID];
  *v47 = a24;
  v47[4] = a25 & 1;
  v48 = &v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary];
  *v48 = v65;
  v48[1] = v64;
  v48[2] = v63;
  sub_1BC8EEA08(a28, &v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_reminderUUID], &unk_1EBCF5D70, &qword_1BC8FC740);
  v29[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_undelete] = a27 & 1;
  v68.receiver = v29;
  v68.super_class = ObjectType;
  v49 = objc_msgSendSuper2(&v68, sel_init);
  OUTLINED_FUNCTION_50_8();
  sub_1BC862F74(v50, v51, v52);
  sub_1BC862F74(a23, &unk_1EBCF5D80, &qword_1BC8FEA60);
  sub_1BC862F74(a20, &qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_50_8();
  sub_1BC862F74(v53, v54, v55);
  OUTLINED_FUNCTION_50_8();
  sub_1BC862F74(v56, v57, v58);
  (*(v37 + 8))(a1, v67);
  return v49;
}

uint64_t sub_1BC8EEA08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_33_8(a1, a2, a3, a4);
  OUTLINED_FUNCTION_10();
  v5 = OUTLINED_FUNCTION_29();
  v6(v5);
  return v4;
}

void MessageUpdate.init(coder:)()
{
  OUTLINED_FUNCTION_29_0();
  v3 = v0;
  v5 = v4;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  v7 = OUTLINED_FUNCTION_25(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_31();
  v158 = v8;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v9);
  v159 = &v153 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v12 = OUTLINED_FUNCTION_25(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_31();
  v156 = v13;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v14);
  v157 = &v153 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v17 = OUTLINED_FUNCTION_25(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_31();
  v160 = v18;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v19);
  v161 = &v153 - v20;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_7_3();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v153 - v24;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_15_5();
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v153 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v153 - v30;
  v32 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v164 = v33;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v153 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v163 = &v153 - v38;
  v166 = sub_1BC7D9730(0, &qword_1EDC20648, 0x1E696AFB0);
  v39 = sub_1BC8F8364();
  if (!v39)
  {

    goto LABEL_6;
  }

  v40 = v39;
  v165 = v3;
  v162 = v5;
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v32);
  OUTLINED_FUNCTION_5_28();
  v155 = sub_1BC8F322C(v44, v45, MEMORY[0x1E69695D8]);
  sub_1BC8F87F4();

  OUTLINED_FUNCTION_28_16(v31);
  if (v46)
  {

LABEL_6:
    swift_deallocPartialClassInstance();
LABEL_70:
    OUTLINED_FUNCTION_24();
    return;
  }

  v47 = v164;
  v48 = *(v164 + 32);
  v48(v37, v31, v32);
  v49 = v163;
  v154 = v48;
  v48(v163, v37, v32);
  (*(v47 + 16))(&v165[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recordUUID], v49, v32);
  v50 = sub_1BC8F8364();
  if (v50)
  {
    v51 = v50;
    v52 = 1;
    OUTLINED_FUNCTION_122();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v32);
    OUTLINED_FUNCTION_52_7(v51, v1);

    OUTLINED_FUNCTION_28_16(v1);
    if (!v46)
    {
      v154(v29, v1, v32);
      v52 = 0;
    }
  }

  else
  {
    v52 = 1;
  }

  v56 = 1;
  __swift_storeEnumTagSinglePayload(v29, v52, 1, v32);
  sub_1BC8EF81C(v29, &v165[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_callUUID], &unk_1EBCF5D70, &qword_1BC8FC740);
  v57 = v162;
  v58 = v162;
  v59 = sub_1BC8F8364();
  if (v59)
  {
    v60 = v59;
    OUTLINED_FUNCTION_122();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v32);
    OUTLINED_FUNCTION_52_7(v60, v2);

    OUTLINED_FUNCTION_28_16(v2);
    v64 = v158;
    v65 = v156;
    if (!v46)
    {
      v154(v25, v2, v32);
      v56 = 0;
    }
  }

  else
  {
    v64 = v158;
    v65 = v156;
  }

  __swift_storeEnumTagSinglePayload(v25, v56, 1, v32);
  v66 = v165;
  sub_1BC8EF81C(v25, &v165[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_conversationID], &unk_1EBCF5D70, &qword_1BC8FC740);
  v67 = sub_1BC7D9730(0, &qword_1EDC20640, 0x1E696AEC0);
  v68 = OUTLINED_FUNCTION_55_5(v67, 1836020326, 0xE400000000000000);
  if (v68)
  {
    OUTLINED_FUNCTION_45_13(v68);

    OUTLINED_FUNCTION_32_11();
  }

  else
  {
    OUTLINED_FUNCTION_63_6();
  }

  OUTLINED_FUNCTION_62_4(v69);
  v70 = sub_1BC8F8364();
  if (v70)
  {
    OUTLINED_FUNCTION_45_13(v70);

    OUTLINED_FUNCTION_32_11();
  }

  else
  {
    OUTLINED_FUNCTION_63_6();
  }

  OUTLINED_FUNCTION_62_4(v71);
  v72 = sub_1BC7D9730(0, &qword_1EDC210D0, 0x1E696AD98);
  v73 = OUTLINED_FUNCTION_55_5(v72, 0x646165527369, 0xE600000000000000);
  v74 = 2;
  if (v73)
  {
    v75 = v73;
    LOBYTE(v168) = 2;
    MEMORY[0x1BFB29350](v73, &v168);

    v74 = v168;
  }

  v66[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRead] = v74;
  v76 = OUTLINED_FUNCTION_53_9(v72, 0x6E6F697461727564, 0xE800000000000000);
  v77 = 1;
  if (v76)
  {
    v78 = v76;
    *&v168 = 0;
    BYTE8(v168) = 1;
    MEMORY[0x1BFB294E0](v76, &v168);

    v79 = v168;
    v77 = BYTE8(v168);
  }

  else
  {
    v79 = 0;
  }

  v80 = &v66[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_duration];
  *v80 = v79;
  v80[8] = v77;
  v81 = OUTLINED_FUNCTION_53_9(v72, 0x5454527369, 0xE500000000000000);
  v82 = 2;
  if (v81)
  {
    v83 = v81;
    LOBYTE(v168) = 2;
    MEMORY[0x1BFB29350](v81, &v168);

    v82 = v168;
  }

  v66[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRTT] = v82;
  v84 = sub_1BC8F8364();
  if (v84)
  {
    OUTLINED_FUNCTION_45_13(v84);

    OUTLINED_FUNCTION_32_11();
  }

  else
  {
    OUTLINED_FUNCTION_63_6();
  }

  OUTLINED_FUNCTION_62_4(v85);
  v86 = sub_1BC7D9730(0, &qword_1EDC1FF38, 0x1E695DFF8);
  v87 = OUTLINED_FUNCTION_55_5(v86, 0x7263736E6172745FLL, 0xEB00000000747069);
  if (v87)
  {
    v88 = v87;
    v89 = sub_1BC8F7014();
    OUTLINED_FUNCTION_122();
    __swift_storeEnumTagSinglePayload(v90, v91, v92, v89);
    OUTLINED_FUNCTION_4_20();
    sub_1BC8F322C(v93, v94, MEMORY[0x1E6968FD8]);
    sub_1BC8F87F4();

    OUTLINED_FUNCTION_43(v65, 1, v89);
    if (v46)
    {
      v98 = v157;
      v99 = v157;
      v100 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_10();
      v98 = v157;
      (*(v97 + 32))(v157, v65, v89);
      v99 = v98;
      v100 = 0;
    }

    v95 = 1;
    v96 = v89;
  }

  else
  {
    sub_1BC8F7014();
    v98 = v157;
    OUTLINED_FUNCTION_122();
  }

  __swift_storeEnumTagSinglePayload(v99, v100, v95, v96);
  sub_1BC8EF81C(v98, &v66[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptURL], &qword_1EBCF5A20, &qword_1BC901BF0);
  v101 = sub_1BC8F8364();
  if (v101)
  {
    OUTLINED_FUNCTION_45_13(v101);

    OUTLINED_FUNCTION_32_11();
  }

  else
  {
    OUTLINED_FUNCTION_63_6();
  }

  v103 = v160;
  OUTLINED_FUNCTION_62_4(v102);
  v104 = sub_1BC7D9730(0, &qword_1EDC1FF30, 0x1E695DF00);
  v105 = OUTLINED_FUNCTION_55_5(v104, 0x6165724365746164, 0xEB00000000646574);
  if (v105)
  {
    v106 = v105;
    v107 = sub_1BC8F71E4();
    OUTLINED_FUNCTION_122();
    __swift_storeEnumTagSinglePayload(v108, v109, v110, v107);
    OUTLINED_FUNCTION_3_32();
    sub_1BC8F322C(v111, v112, MEMORY[0x1E6969568]);
    OUTLINED_FUNCTION_46_10();
    sub_1BC8F87F4();

    OUTLINED_FUNCTION_43(v64, 1, v107);
    if (v46)
    {
      v115 = v159;
      v118 = v159;
      v119 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_10();
      v115 = v159;
      v116 = OUTLINED_FUNCTION_46_10();
      v117(v116);
      v118 = v115;
      v119 = 0;
    }

    v113 = 1;
    v114 = v107;
  }

  else
  {
    sub_1BC8F71E4();
    v115 = v159;
    OUTLINED_FUNCTION_122();
  }

  __swift_storeEnumTagSinglePayload(v118, v119, v113, v114);
  sub_1BC8EF81C(v115, &v66[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_dateCreated], &unk_1EBCF5D80, &qword_1BC8FEA60);
  v120 = OUTLINED_FUNCTION_53_9(v72, 0x69616D6563696F76, 0xEB0000000044496CLL);
  v121 = 1;
  if (v120)
  {
    v122 = v120;
    LODWORD(v168) = 0;
    BYTE4(v168) = 1;
    sub_1BC8F8BF4();

    v123 = v168;
    v121 = BYTE4(v168);
  }

  else
  {
    v123 = 0;
  }

  v124 = &v66[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_voicemailID];
  *v124 = v123;
  v124[4] = v121;
  v125 = OUTLINED_FUNCTION_53_9(v72, 0x6574656C65646E75, 0xE800000000000000);
  if (v125)
  {
    v126 = v125;
    LOBYTE(v168) = 2;
    MEMORY[0x1BFB29350](v125, &v168);

    v127 = v168;
  }

  else
  {
    v127 = 0;
  }

  v66[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_undelete] = v127 & 1;
  v128 = OUTLINED_FUNCTION_55_5(v166, 0x7265646E696D6572, 0xEC00000044495555);
  if (v128)
  {
    v129 = v128;
    v130 = 1;
    OUTLINED_FUNCTION_122();
    __swift_storeEnumTagSinglePayload(v131, v132, v133, v32);
    OUTLINED_FUNCTION_52_7(v129, v103);

    OUTLINED_FUNCTION_28_16(v103);
    v134 = v161;
    if (!v46)
    {
      v154(v161, v103, v32);
      v130 = 0;
    }
  }

  else
  {
    v130 = 1;
    v134 = v161;
  }

  v135 = 1;
  __swift_storeEnumTagSinglePayload(v134, v130, 1, v32);
  sub_1BC8EF81C(v134, &v66[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_reminderUUID], &unk_1EBCF5D70, &qword_1BC8FC740);
  v136 = OUTLINED_FUNCTION_53_9(v72, 0x54786F626C69616DLL, 0xEB00000000657079);
  if (v136)
  {
    v137 = v136;
    LOWORD(v168) = 0;
    BYTE2(v168) = 1;
    sub_1BC8F8BD4();

    if (BYTE2(v168))
    {
      LOWORD(v136) = 0;
    }

    else
    {
      v136 = MailboxType.init(rawValue:)(v168);
      if ((v136 & 0x10000) != 0)
      {
        __break(1u);
        goto LABEL_72;
      }

      v135 = 0;
    }
  }

  v138 = &v66[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_mailboxType];
  *v138 = v136;
  v138[2] = v135;
  v139 = OUTLINED_FUNCTION_53_9(v72, 0xD000000000000013, 0x80000001BC90B210);
  v140 = 1;
  if (!v139)
  {
LABEL_66:
    v142 = &v66[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptionStatus];
    *v142 = v139;
    v142[2] = v140;
    v143 = type metadata accessor for XPCWrapper();
    v144 = OUTLINED_FUNCTION_55_5(v143, 0x7972616D6D7573, 0xE700000000000000);
    if (v144)
    {
      v145 = v144;
      sub_1BC864600();
      v149 = OUTLINED_FUNCTION_47_10();
      v150(v149);

      v151 = v169;
      v152 = &v66[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary];
      *v152 = v168;
      *(v152 + 2) = v151;
    }

    else
    {
      v146 = OUTLINED_FUNCTION_47_10();
      v147(v146);
      v148 = &v66[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary];
      v148[1] = 0;
      v148[2] = 0;
      *v148 = 0;
    }

    v170.receiver = v66;
    v170.super_class = ObjectType;
    objc_msgSendSuper2(&v170, sel_init);

    goto LABEL_70;
  }

  v141 = v139;
  LOWORD(v168) = 0;
  BYTE2(v168) = 1;
  sub_1BC8F8BD4();

  if (BYTE2(v168))
  {
    LOWORD(v139) = 0;
    goto LABEL_66;
  }

  v139 = TranscriptionStatus.init(rawValue:)(v168);
  if ((v139 & 0x10000) == 0)
  {
    v140 = 0;
    goto LABEL_66;
  }

LABEL_72:
  __break(1u);
}

uint64_t sub_1BC8EF81C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_33_8(a1, a2, a3, a4);
  OUTLINED_FUNCTION_10();
  v5 = OUTLINED_FUNCTION_29();
  v6(v5);
  return v4;
}

Swift::Void __swiftcall MessageUpdate.encode(with:)(NSCoder with)
{
  OUTLINED_FUNCTION_29_0();
  v3 = v1;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_25(v6);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v61 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v10);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v61 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v15 = OUTLINED_FUNCTION_25(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_31();
  v62 = v16;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v61 - v19;
  v22 = *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary);
  v21 = *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary + 8);
  v23 = *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary + 16);
  v24 = objc_allocWithZone(type metadata accessor for XPCWrapper());

  v61 = sub_1BC8642A4(v22, v21, v23);
  v25 = sub_1BC8F7214();
  v26 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_68_1();

  sub_1BC8EEA08(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_callUUID, v20, &unk_1EBCF5D70, &qword_1BC8FC740);
  v27 = sub_1BC8F7264();
  if (__swift_getEnumTagSinglePayload(v20, 1, v27) != 1)
  {
    sub_1BC8F7214();
    OUTLINED_FUNCTION_10();
    (*(v28 + 8))(v20, v27);
  }

  v29 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_1_35(v29);
  swift_unknownObjectRelease();

  sub_1BC8EEA08(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_conversationID, v2, &unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_43(v2, 1, v27);
  if (!v30)
  {
    sub_1BC8F7214();
    OUTLINED_FUNCTION_10();
    (*(v31 + 8))(v2, v27);
  }

  v32 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_1_35(v32);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_61_5();
  if (v33)
  {
    sub_1BC8F7BE4();
  }

  v34 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_1_35(v34);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_61_5();
  if (v35)
  {
    sub_1BC8F7BE4();
  }

  v36 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_1_35(v36);
  swift_unknownObjectRelease();

  if (*(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRead) != 2)
  {
    sub_1BC8F7F34();
  }

  v37 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_1_35(v37);
  swift_unknownObjectRelease();

  if ((*(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_duration + 8) & 1) == 0)
  {
    sub_1BC8F80C4();
  }

  v38 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_1_35(v38);
  swift_unknownObjectRelease();

  if ((*(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_mailboxType + 2) & 1) == 0)
  {
    v64 = *(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_mailboxType);
    sub_1BC8F8A94();
  }

  v39 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_1_35(v39);
  swift_unknownObjectRelease();

  if ((*(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptionStatus + 2) & 1) == 0)
  {
    v63 = *(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptionStatus);
    sub_1BC8F8A94();
  }

  v40 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_1_35(v40);
  swift_unknownObjectRelease();

  if (*(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRTT) != 2)
  {
    sub_1BC8F7F34();
  }

  v41 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_1_35(v41);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_61_5();
  if (v42)
  {
    sub_1BC8F7BE4();
  }

  v43 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_1_35(v43);
  swift_unknownObjectRelease();

  sub_1BC8EEA08(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptURL, v13, &qword_1EBCF5A20, &qword_1BC901BF0);
  v44 = sub_1BC8F7014();
  if (__swift_getEnumTagSinglePayload(v13, 1, v44) != 1)
  {
    sub_1BC8F6F44();
    OUTLINED_FUNCTION_10();
    (*(v45 + 8))(v13, v44);
  }

  v46 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_1_35(v46);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_61_5();
  if (v47)
  {
    sub_1BC8F7BE4();
  }

  v48 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_1_35(v48);
  swift_unknownObjectRelease();

  sub_1BC8EEA08(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_dateCreated, v9, &unk_1EBCF5D80, &qword_1BC8FEA60);
  v49 = sub_1BC8F71E4();
  if (__swift_getEnumTagSinglePayload(v9, 1, v49) != 1)
  {
    sub_1BC8F7174();
    OUTLINED_FUNCTION_10();
    (*(v50 + 8))(v9, v49);
  }

  v51 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_1_35(v51);
  swift_unknownObjectRelease();

  if ((*(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_voicemailID + 4) & 1) == 0)
  {
    sub_1BC8F8BE4();
  }

  v52 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_1_35(v52);
  swift_unknownObjectRelease();

  v53 = v61;
  v54 = sub_1BC8F7BE4();
  [v5 encodeObject:v53 forKey:v54];

  v55 = *(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_undelete);
  v56 = sub_1BC8F7BE4();
  [v5 encodeBool:v55 forKey:v56];

  v57 = v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_reminderUUID;
  v58 = v62;
  sub_1BC8EEA08(v57, v62, &unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_43(v58, 1, v27);
  if (!v30)
  {
    sub_1BC8F7214();
    OUTLINED_FUNCTION_10();
    (*(v59 + 8))(v58, v27);
  }

  v60 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_68_1();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_24();
}

void MessageUpdate.description.getter()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v0;
  v173[5] = *MEMORY[0x1E69E9840];
  v3 = sub_1BC8F7C64();
  v4 = OUTLINED_FUNCTION_25(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_18_1(v5);
  v163 = sub_1BC8F7134();
  OUTLINED_FUNCTION_0();
  v162 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_18_1(v8);
  v161 = sub_1BC8F7154();
  OUTLINED_FUNCTION_0();
  v159 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_18_1(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_25(v12);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_18_1(v158 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v15);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v158 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v20 = OUTLINED_FUNCTION_25(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_31();
  v165 = v21;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_15_5();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v158 - v24;
  *&v171 = 0x555564726F636572;
  *(&v171 + 1) = 0xEA00000000004449;
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_50_8();
  sub_1BC8F8544();
  v26 = sub_1BC8F7204();
  OUTLINED_FUNCTION_66_5(v26, v27);
  sub_1BC7F0E58(&v171, &v169);
  v28 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_36(isUniquelyReferenced_nonNull_native);
  OUTLINED_FUNCTION_37_13();
  OUTLINED_FUNCTION_65_5(0x444955556C6C6163);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_50_8();
  sub_1BC8F8544();
  sub_1BC8EEA08(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_callUUID, v25, &unk_1EBCF5D70, &qword_1BC8FC740);
  v30 = sub_1BC8F7264();
  if (__swift_getEnumTagSinglePayload(v25, 1, v30) == 1)
  {
    sub_1BC862F74(v25, &unk_1EBCF5D70, &qword_1BC8FC740);
    OUTLINED_FUNCTION_87();
    if (v31)
    {
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_27_13();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_26_14();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_10_29();
      v32 = OUTLINED_FUNCTION_21_19();
      OUTLINED_FUNCTION_20_18(v32, v33, MEMORY[0x1E69E69B8]);
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v173);
    sub_1BC862F74(&v171, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v34 = sub_1BC8F7204();
    OUTLINED_FUNCTION_66_5(v34, v35);
    OUTLINED_FUNCTION_10();
    (*(v36 + 8))(v25, v30);
    v37 = OUTLINED_FUNCTION_16_11();
    OUTLINED_FUNCTION_0_36(v37);
    OUTLINED_FUNCTION_37_13();
  }

  strcpy(&v171, "conversationID");
  HIBYTE(v171) = -18;
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  sub_1BC8EEA08(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_conversationID, v1, &unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_43(v1, 1, v30);
  if (v38)
  {
    sub_1BC862F74(v1, &unk_1EBCF5D70, &qword_1BC8FC740);
    OUTLINED_FUNCTION_87();
    if (v39)
    {
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_11_19();
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_17_17(v40);
      OUTLINED_FUNCTION_10_29();
      v41 = OUTLINED_FUNCTION_21_19();
      OUTLINED_FUNCTION_20_18(v41, v42, MEMORY[0x1E69E69B8]);
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v173);
    sub_1BC862F74(&v171, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v43 = sub_1BC8F7204();
    OUTLINED_FUNCTION_66_5(v43, v44);
    OUTLINED_FUNCTION_10();
    (*(v45 + 8))(v1, v30);
    v46 = OUTLINED_FUNCTION_16_11();
    OUTLINED_FUNCTION_0_36(v46);
    OUTLINED_FUNCTION_37_13();
  }

  *&v171 = 1836020326;
  *(&v171 + 1) = 0xE400000000000000;
  v47 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v48 = *(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_from + 8);
  if (v48)
  {
    sub_1BC7EB6B4(*(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_from), v48);
    v172 = v47;
    *&v171 = v49;
    *(&v171 + 1) = v50;
    v51 = OUTLINED_FUNCTION_16_11();
    OUTLINED_FUNCTION_0_36(v51);
    OUTLINED_FUNCTION_37_13();
  }

  else
  {
    OUTLINED_FUNCTION_87();
    if (v52)
    {
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_11_19();
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_17_17(v53);
      OUTLINED_FUNCTION_10_29();
      v54 = OUTLINED_FUNCTION_21_19();
      OUTLINED_FUNCTION_20_18(v54, v55, MEMORY[0x1E69E69B8]);
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v173);
    sub_1BC862F74(&v171, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  OUTLINED_FUNCTION_65_5(0x72656469766F7270);
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  if (*(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_provider + 8))
  {
    OUTLINED_FUNCTION_59_8((v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_provider));
    v56 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_36(v56);
    OUTLINED_FUNCTION_37_13();
  }

  else
  {
    OUTLINED_FUNCTION_15_10();
    sub_1BC862F74(&v171, &unk_1EBCF5E50, &qword_1BC8FE850);
    OUTLINED_FUNCTION_87();
    if (v57)
    {
      OUTLINED_FUNCTION_39_7();
      *&v167 = v28;
      v28 = *(v28 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      sub_1BC8F8734();
      OUTLINED_FUNCTION_71_5();
      v58 = sub_1BC7F0E58(*(v28 + 56), &v169);
      OUTLINED_FUNCTION_20_18(v58, v59, MEMORY[0x1E69E69B8]);
    }

    else
    {
      v169 = 0u;
      v170 = 0u;
    }

    sub_1BC8037DC(v173);
    sub_1BC862F74(&v169, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  *&v171 = 0x646165527369;
  *(&v171 + 1) = 0xE600000000000000;
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v60 = *(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRead);
  v61 = MEMORY[0x1E69E6370];
  if (v60 == 2)
  {
    OUTLINED_FUNCTION_87();
    if (v62)
    {
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_11_19();
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_17_17(v63);
      OUTLINED_FUNCTION_10_29();
      v64 = OUTLINED_FUNCTION_21_19();
      OUTLINED_FUNCTION_20_18(v64, v65, MEMORY[0x1E69E69B8]);
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v173);
    sub_1BC862F74(&v171, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v172 = MEMORY[0x1E69E6370];
    LOBYTE(v171) = v60 & 1;
    v66 = OUTLINED_FUNCTION_16_11();
    OUTLINED_FUNCTION_0_36(v66);
    OUTLINED_FUNCTION_37_13();
  }

  OUTLINED_FUNCTION_65_5(0x6E6F697461727564);
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  if (*(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_duration + 8))
  {
    OUTLINED_FUNCTION_87();
    if (v67)
    {
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_11_19();
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_17_17(v68);
      OUTLINED_FUNCTION_10_29();
      v69 = OUTLINED_FUNCTION_21_19();
      OUTLINED_FUNCTION_20_18(v69, v70, MEMORY[0x1E69E69B8]);
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v173);
    sub_1BC862F74(&v171, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v71 = *(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_duration);
    v172 = MEMORY[0x1E69E63B0];
    *&v171 = v71;
    v72 = OUTLINED_FUNCTION_16_11();
    OUTLINED_FUNCTION_0_36(v72);
    OUTLINED_FUNCTION_37_13();
  }

  OUTLINED_FUNCTION_58_7(0x54786F626C69616DLL);
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  if (*(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_mailboxType + 2))
  {
    OUTLINED_FUNCTION_87();
    if (v73)
    {
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_11_19();
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_17_17(v74);
      OUTLINED_FUNCTION_10_29();
      v75 = OUTLINED_FUNCTION_21_19();
      OUTLINED_FUNCTION_20_18(v75, v76, MEMORY[0x1E69E69B8]);
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v173);
    sub_1BC862F74(&v171, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v77 = *(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_mailboxType);
    v172 = MEMORY[0x1E69E7290];
    LOWORD(v171) = v77;
    v78 = OUTLINED_FUNCTION_16_11();
    OUTLINED_FUNCTION_0_36(v78);
    OUTLINED_FUNCTION_37_13();
  }

  *&v171 = 0xD000000000000013;
  *(&v171 + 1) = 0x80000001BC90B210;
  v79 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  if (*(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptionStatus + 2))
  {
    OUTLINED_FUNCTION_87();
    if (v80)
    {
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_11_19();
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_17_17(v81);
      OUTLINED_FUNCTION_10_29();
      v82 = OUTLINED_FUNCTION_21_19();
      OUTLINED_FUNCTION_20_18(v82, v83, MEMORY[0x1E69E69B8]);
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v173);
    sub_1BC862F74(&v171, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v84 = sub_1BC8C21C4(*(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptionStatus));
    v172 = v79;
    *&v171 = v84;
    *(&v171 + 1) = v85;
    v86 = OUTLINED_FUNCTION_16_11();
    OUTLINED_FUNCTION_0_36(v86);
    OUTLINED_FUNCTION_37_13();
  }

  *&v171 = 0x5454527369;
  *(&v171 + 1) = 0xE500000000000000;
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v87 = *(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRTT);
  if (v87 == 2)
  {
    OUTLINED_FUNCTION_87();
    if (v88)
    {
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_11_19();
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_17_17(v89);
      OUTLINED_FUNCTION_10_29();
      v90 = OUTLINED_FUNCTION_21_19();
      OUTLINED_FUNCTION_20_18(v90, v91, MEMORY[0x1E69E69B8]);
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v173);
    sub_1BC862F74(&v171, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v172 = v61;
    LOBYTE(v171) = v87 & 1;
    v92 = OUTLINED_FUNCTION_16_11();
    OUTLINED_FUNCTION_0_36(v92);
    OUTLINED_FUNCTION_37_13();
  }

  *&v171 = 0x6E65697069636572;
  *(&v171 + 1) = 0xE900000000000074;
  v93 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v94 = *(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recipient + 8);
  if (v94)
  {
    sub_1BC7EB6B4(*(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recipient), v94);
    v172 = v93;
    *&v171 = v95;
    *(&v171 + 1) = v96;
    v97 = OUTLINED_FUNCTION_16_11();
    OUTLINED_FUNCTION_0_36(v97);
    OUTLINED_FUNCTION_37_13();
  }

  else
  {
    OUTLINED_FUNCTION_87();
    if (v98)
    {
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_11_19();
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_17_17(v99);
      OUTLINED_FUNCTION_10_29();
      v100 = OUTLINED_FUNCTION_21_19();
      OUTLINED_FUNCTION_20_18(v100, v101, MEMORY[0x1E69E69B8]);
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v173);
    sub_1BC862F74(&v171, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  OUTLINED_FUNCTION_58_7(0x7263736E6172745FLL);
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  sub_1BC8EEA08(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptURL, v18, &qword_1EBCF5A20, &qword_1BC901BF0);
  v102 = sub_1BC8F7014();
  OUTLINED_FUNCTION_43(v18, 1, v102);
  if (v38)
  {
    sub_1BC862F74(v18, &qword_1EBCF5A20, &qword_1BC901BF0);
    OUTLINED_FUNCTION_87();
    if (v103)
    {
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_27_13();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_26_14();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_10_29();
      v104 = OUTLINED_FUNCTION_21_19();
      OUTLINED_FUNCTION_20_18(v104, v105, MEMORY[0x1E69E69B8]);
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v173);
    sub_1BC862F74(&v171, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v106 = sub_1BC8F6EF4();
    OUTLINED_FUNCTION_66_5(v106, v107);
    OUTLINED_FUNCTION_10();
    (*(v108 + 8))(v18, v102);
    v109 = OUTLINED_FUNCTION_16_11();
    OUTLINED_FUNCTION_0_36(v109);
    OUTLINED_FUNCTION_37_13();
  }

  *&v171 = 0x44496D6973;
  *(&v171 + 1) = 0xE500000000000000;
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  if (*(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_simID + 8))
  {
    OUTLINED_FUNCTION_59_8((v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_simID));
    v110 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_36(v110);
    OUTLINED_FUNCTION_37_13();
    v111 = v164;
  }

  else
  {
    OUTLINED_FUNCTION_15_10();
    sub_1BC862F74(&v171, &unk_1EBCF5E50, &qword_1BC8FE850);
    OUTLINED_FUNCTION_87();
    if (v112)
    {
      OUTLINED_FUNCTION_39_7();
      *&v167 = v28;
      v28 = *(v28 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      sub_1BC8F8734();
      OUTLINED_FUNCTION_71_5();
      v113 = sub_1BC7F0E58(*(v28 + 56), &v169);
      OUTLINED_FUNCTION_20_18(v113, v114, MEMORY[0x1E69E69B8]);
    }

    else
    {
      v169 = 0u;
      v170 = 0u;
    }

    v111 = v164;
    sub_1BC8037DC(v173);
    sub_1BC862F74(&v169, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  OUTLINED_FUNCTION_58_7(0x6165724365746164);
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  sub_1BC8EEA08(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_dateCreated, v111, &unk_1EBCF5D80, &qword_1BC8FEA60);
  v115 = sub_1BC8F71E4();
  OUTLINED_FUNCTION_28_16(v111);
  if (v38)
  {
    sub_1BC862F74(v111, &unk_1EBCF5D80, &qword_1BC8FEA60);
    OUTLINED_FUNCTION_87();
    if (v116)
    {
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_27_13();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_26_14();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_10_29();
      v117 = OUTLINED_FUNCTION_21_19();
      OUTLINED_FUNCTION_20_18(v117, v118, MEMORY[0x1E69E69B8]);
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v173);
    sub_1BC862F74(&v171, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v119 = v158[1];
    sub_1BC8F7144();
    v120 = v61;
    v121 = v160;
    sub_1BC8F7124();
    v122 = sub_1BC8F71C4();
    v124 = v123;
    v125 = v121;
    v61 = v120;
    (*(v162 + 8))(v125, v163);
    (*(v159 + 8))(v119, v161);
    OUTLINED_FUNCTION_10();
    (*(v126 + 8))(v111, v115);
    v172 = MEMORY[0x1E69E6158];
    *&v171 = v122;
    *(&v171 + 1) = v124;
    v127 = OUTLINED_FUNCTION_16_11();
    OUTLINED_FUNCTION_0_36(v127);
    OUTLINED_FUNCTION_37_13();
  }

  OUTLINED_FUNCTION_58_7(0x69616D6563696F76);
  v128 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  if (*(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_voicemailID + 4))
  {
    OUTLINED_FUNCTION_87();
    if (v129)
    {
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_11_19();
      v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_17_17(v130);
      OUTLINED_FUNCTION_10_29();
      v131 = OUTLINED_FUNCTION_21_19();
      OUTLINED_FUNCTION_20_18(v131, v132, MEMORY[0x1E69E69B8]);
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v173);
    sub_1BC862F74(&v171, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v133 = *(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_voicemailID);
    v172 = MEMORY[0x1E69E72F0];
    LODWORD(v171) = v133;
    v134 = OUTLINED_FUNCTION_16_11();
    OUTLINED_FUNCTION_0_36(v134);
    OUTLINED_FUNCTION_37_13();
  }

  *&v171 = 0x7972616D6D7573;
  *(&v171 + 1) = 0xE700000000000000;
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v135 = *(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary + 16);
  v167 = *(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary);
  v168 = v135;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5EC0, &qword_1BC9048A0);
  v136 = sub_1BC8F83E4();
  v172 = v128;
  *&v171 = v136;
  *(&v171 + 1) = v137;
  v138 = OUTLINED_FUNCTION_16_11();
  v166 = v28;
  sub_1BC83D6F0(&v169, v173, v138);
  sub_1BC8037DC(v173);
  strcpy(&v171, "reminderUUID");
  BYTE13(v171) = 0;
  HIWORD(v171) = -5120;
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v139 = v165;
  sub_1BC8EEA08(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_reminderUUID, v165, &unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_43(v139, 1, v30);
  if (v38)
  {
    sub_1BC862F74(v139, &unk_1EBCF5D70, &qword_1BC8FC740);
    OUTLINED_FUNCTION_87();
    if (v140)
    {
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_27_13();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_26_14();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_10_29();
      v141 = OUTLINED_FUNCTION_21_19();
      OUTLINED_FUNCTION_20_18(v141, v142, MEMORY[0x1E69E69B8]);
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v173);
    sub_1BC862F74(&v171, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v143 = sub_1BC8F7204();
    v172 = v128;
    *&v171 = v143;
    *(&v171 + 1) = v144;
    OUTLINED_FUNCTION_10();
    (*(v145 + 8))(v139, v30);
    v146 = OUTLINED_FUNCTION_16_11();
    OUTLINED_FUNCTION_0_36(v146);
    OUTLINED_FUNCTION_37_13();
  }

  OUTLINED_FUNCTION_65_5(0x6574656C65646E75);
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v147 = *(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_undelete);
  v172 = v61;
  LOBYTE(v171) = v147;
  v148 = OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_0_36(v148);
  OUTLINED_FUNCTION_37_13();
  v149 = objc_opt_self();
  v150 = sub_1BC8F7A94();
  v173[0] = 0;
  v151 = [v149 dataWithJSONObject:v150 options:11 error:v173];

  v152 = v173[0];
  if (v151)
  {
    v153 = sub_1BC8F70D4();
    v155 = v154;

    sub_1BC8F7C54();
    OUTLINED_FUNCTION_46_10();
    sub_1BC8F7C34();
    sub_1BC7D4C94(v153, v155);
  }

  else
  {
    v156 = v152;

    v157 = sub_1BC8F6EA4();

    swift_willThrow();
    v173[0] = 0;
    v173[1] = 0xE000000000000000;
    swift_getErrorValue();
    sub_1BC8F8A64();
  }

  OUTLINED_FUNCTION_24();
}

id MessageUpdate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1BC8F17BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x555564726F636572 && a2 == 0xEA00000000004449;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x444955556C6C6163 && a2 == 0xE800000000000000;
    if (v6 || (sub_1BC8F8AA4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x61737265766E6F63 && a2 == 0xEE0044496E6F6974;
      if (v7 || (sub_1BC8F8AA4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1836020326 && a2 == 0xE400000000000000;
        if (v8 || (sub_1BC8F8AA4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x72656469766F7270 && a2 == 0xE800000000000000;
          if (v9 || (sub_1BC8F8AA4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x646165527369 && a2 == 0xE600000000000000;
            if (v10 || (sub_1BC8F8AA4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
              if (v11 || (sub_1BC8F8AA4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x54786F626C69616DLL && a2 == 0xEB00000000657079;
                if (v12 || (sub_1BC8F8AA4() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6E65697069636572 && a2 == 0xE900000000000074;
                  if (v13 || (sub_1BC8F8AA4() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000013 && 0x80000001BC90B210 == a2;
                    if (v14 || (sub_1BC8F8AA4() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x5454527369 && a2 == 0xE500000000000000;
                      if (v15 || (sub_1BC8F8AA4() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x697263736E617274 && a2 == 0xED00004C52557470;
                        if (v16 || (sub_1BC8F8AA4() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x44496D6973 && a2 == 0xE500000000000000;
                          if (v17 || (sub_1BC8F8AA4() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6165724365746164 && a2 == 0xEB00000000646574;
                            if (v18 || (sub_1BC8F8AA4() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x69616D6563696F76 && a2 == 0xEB0000000044496CLL;
                              if (v19 || (sub_1BC8F8AA4() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000;
                                if (v20 || (sub_1BC8F8AA4() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x7265646E696D6572 && a2 == 0xEC00000044495555;
                                  if (v21 || (sub_1BC8F8AA4() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else if (a1 == 0x6574656C65646E75 && a2 == 0xE800000000000000)
                                  {

                                    return 17;
                                  }

                                  else
                                  {
                                    v23 = sub_1BC8F8AA4();

                                    if (v23)
                                    {
                                      return 17;
                                    }

                                    else
                                    {
                                      return 18;
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
      }
    }
  }
}

uint64_t sub_1BC8F1D38(char a1)
{
  result = 0x555564726F636572;
  switch(a1)
  {
    case 1:
      result = 0x444955556C6C6163;
      break;
    case 2:
      result = 0x61737265766E6F63;
      break;
    case 3:
      result = 1836020326;
      break;
    case 4:
      v3 = 0x6469766F7270;
      goto LABEL_7;
    case 5:
      result = 0x646165527369;
      break;
    case 6:
      result = 0x6E6F697461727564;
      break;
    case 7:
      result = 0x54786F626C69616DLL;
      break;
    case 8:
      result = 0x6E65697069636572;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x5454527369;
      break;
    case 11:
      result = 0x697263736E617274;
      break;
    case 12:
      result = 0x44496D6973;
      break;
    case 13:
      result = 0x6165724365746164;
      break;
    case 14:
      result = 0x69616D6563696F76;
      break;
    case 15:
      result = 0x7972616D6D7573;
      break;
    case 16:
      v3 = 0x646E696D6572;
LABEL_7:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
      break;
    case 17:
      result = 0x6574656C65646E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BC8F1F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC8F17BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC8F1F68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC8F1D30();
  *a1 = result;
  return result;
}

uint64_t sub_1BC8F1F90(uint64_t a1)
{
  v2 = sub_1BC8F31D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC8F1FCC(uint64_t a1)
{
  v2 = sub_1BC8F31D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id MessageUpdate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MessageUpdate.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6AF0, &qword_1BC90AC10);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8F31D8();
  sub_1BC8F8CA4();
  LOBYTE(v22) = 0;
  sub_1BC8F7264();
  OUTLINED_FUNCTION_5_28();
  sub_1BC8F322C(v11, v12, MEMORY[0x1E69695B0]);
  OUTLINED_FUNCTION_8_33();
  sub_1BC8F89F4();
  if (!v2)
  {
    LOBYTE(v22) = 1;
    OUTLINED_FUNCTION_8_33();
    sub_1BC8F8974();
    LOBYTE(v22) = 2;
    OUTLINED_FUNCTION_8_33();
    sub_1BC8F8974();
    OUTLINED_FUNCTION_51_5(OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_from);
    OUTLINED_FUNCTION_2_35(3);
    sub_1BC8F8944();
    OUTLINED_FUNCTION_51_5(OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_provider);
    OUTLINED_FUNCTION_2_35(4);
    sub_1BC8F8944();
    OUTLINED_FUNCTION_160(5);
    OUTLINED_FUNCTION_18_19();
    sub_1BC8F8954();
    OUTLINED_FUNCTION_2_35(6);
    sub_1BC8F8964();
    OUTLINED_FUNCTION_45_10(OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_mailboxType);
    v24[0] = 7;
    sub_1BC7B5C78();
    OUTLINED_FUNCTION_18_19();
    sub_1BC8F8974();
    OUTLINED_FUNCTION_51_5(OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recipient);
    OUTLINED_FUNCTION_2_35(8);
    sub_1BC8F8944();
    OUTLINED_FUNCTION_45_10(OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptionStatus);
    v24[0] = 9;
    sub_1BC7C4F00();
    OUTLINED_FUNCTION_18_19();
    sub_1BC8F8974();
    OUTLINED_FUNCTION_160(10);
    OUTLINED_FUNCTION_18_19();
    sub_1BC8F8954();
    LOBYTE(v22) = 11;
    sub_1BC8F7014();
    OUTLINED_FUNCTION_4_20();
    v15 = sub_1BC8F322C(v13, v14, MEMORY[0x1E6968FB8]);
    OUTLINED_FUNCTION_42_14(v15);
    OUTLINED_FUNCTION_51_5(OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_simID);
    OUTLINED_FUNCTION_2_35(12);
    sub_1BC8F8944();
    LOBYTE(v22) = 13;
    sub_1BC8F71E4();
    OUTLINED_FUNCTION_3_32();
    v18 = sub_1BC8F322C(v16, v17, MEMORY[0x1E6969538]);
    OUTLINED_FUNCTION_42_14(v18);
    v19 = *(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_voicemailID + 4);
    LOBYTE(v22) = 14;
    v24[0] = v19;
    OUTLINED_FUNCTION_18_19();
    sub_1BC8F8984();
    v20 = *(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary + 16);
    v22 = *(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary);
    v23 = v20;
    v24[0] = 15;
    sub_1BC7C518C();

    sub_1BC8F8974();

    LOBYTE(v22) = 16;
    OUTLINED_FUNCTION_8_33();
    sub_1BC8F8974();
    OUTLINED_FUNCTION_160(17);
    OUTLINED_FUNCTION_18_19();
    sub_1BC8F89B4();
  }

  return (*(v7 + 8))(v10, v5);
}

void *MessageUpdate.init(from:)(void *a1)
{
  v4 = v1;
  v106 = v4;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_25(v6);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v7);
  v98 = &v96 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v9);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v10);
  v99 = &v96 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v13 = OUTLINED_FUNCTION_25(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_31();
  v97 = v14;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15_5();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v96 - v17;
  v19 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v101 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_4();
  v107 = v22;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6B00, &qword_1BC90AC18);
  OUTLINED_FUNCTION_0();
  v24 = v23;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v96 - v26;
  v28 = a1[3];
  v102 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_1BC8F31D8();
  v103 = v27;
  sub_1BC8F8C84();
  v29 = &unk_1EDC2B000;
  v100 = v19;
  if (v2)
  {
    v107 = v2;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    OUTLINED_FUNCTION_16_19();
  }

  else
  {
    v30 = v3;
    v96 = v24;
    LOBYTE(v109) = 0;
    OUTLINED_FUNCTION_5_28();
    v33 = sub_1BC8F322C(v31, v32, MEMORY[0x1E69695D0]);
    OUTLINED_FUNCTION_48_11();
    sub_1BC8F88F4();
    v42 = v106;
    (*(v101 + 32))(&v106[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recordUUID], v107, v19);
    OUTLINED_FUNCTION_160(1);
    OUTLINED_FUNCTION_48_11();
    sub_1BC8F8864();
    v43 = v33;
    sub_1BC8EF81C(v18, &v42[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_callUUID], &unk_1EBCF5D70, &qword_1BC8FC740);
    OUTLINED_FUNCTION_160(2);
    v3 = v30;
    v34 = v43;
    v35 = v103;
    sub_1BC8F8864();
    sub_1BC8EF81C(v3, &v42[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_conversationID], &unk_1EBCF5D70, &qword_1BC8FC740);
    OUTLINED_FUNCTION_12_25(3);
    v44 = sub_1BC8F8834();
    v45 = &v42[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_from];
    *v45 = v44;
    v45[1] = v46;
    OUTLINED_FUNCTION_12_25(4);
    v47 = sub_1BC8F8834();
    v48 = &v42[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_provider];
    *v48 = v47;
    v48[1] = v49;
    OUTLINED_FUNCTION_12_25(5);
    v42[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRead] = sub_1BC8F8844();
    OUTLINED_FUNCTION_12_25(6);
    v50 = sub_1BC8F8854();
    v51 = &v42[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_duration];
    *v51 = v50;
    v51[8] = v52 & 1;
    v111 = 7;
    sub_1BC7C7198();
    OUTLINED_FUNCTION_30_13();
    sub_1BC8F8864();
    v53 = BYTE2(v109);
    v54 = &v42[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_mailboxType];
    *v54 = v109;
    v54[2] = v53;
    OUTLINED_FUNCTION_12_25(8);
    v55 = sub_1BC8F8834();
    v107 = 0;
    v36 = v34;
    v57 = &v42[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recipient];
    *v57 = v55;
    v57[1] = v56;
    v111 = 9;
    sub_1BC7C7244();
    OUTLINED_FUNCTION_30_13();
    v58 = v107;
    sub_1BC8F8864();
    v107 = v58;
    if (v58)
    {
      v67 = OUTLINED_FUNCTION_6_27();
      v68(v67);
      LODWORD(v103) = 0;
      LODWORD(v104) = 0;
      OUTLINED_FUNCTION_14_20();
      LODWORD(v29) = 1;
      LODWORD(v3) = 1;
    }

    else
    {
      v59 = BYTE2(v109);
      v60 = &v106[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptionStatus];
      *v60 = v109;
      v60[2] = v59;
      OUTLINED_FUNCTION_12_25(10);
      v61 = sub_1BC8F8844();
      v107 = 0;
      v106[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRTT] = v61;
      v35 = sub_1BC8F7014();
      LOBYTE(v109) = 11;
      OUTLINED_FUNCTION_4_20();
      v64 = sub_1BC8F322C(v62, v63, MEMORY[0x1E6968FD0]);
      OUTLINED_FUNCTION_70_5(v64, &v109, v65, v66, v64);
      v107 = 0;
      sub_1BC8EF81C(v99, &v106[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptURL], &qword_1EBCF5A20, &qword_1BC901BF0);
      OUTLINED_FUNCTION_12_25(12);
      v69 = v107;
      v70 = sub_1BC8F8834();
      v107 = v69;
      if (!v69)
      {
        v74 = &v106[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_simID];
        *v74 = v70;
        v74[1] = v71;
        sub_1BC8F71E4();
        LOBYTE(v109) = 13;
        OUTLINED_FUNCTION_3_32();
        v77 = sub_1BC8F322C(v75, v76, MEMORY[0x1E6969558]);
        OUTLINED_FUNCTION_70_5(v77, &v109, v78, v79, v77);
        v107 = 0;
        sub_1BC8EF81C(v98, &v106[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_dateCreated], &unk_1EBCF5D80, &qword_1BC8FEA60);
        OUTLINED_FUNCTION_12_25(14);
        v80 = v107;
        v81 = sub_1BC8F8874();
        v107 = v80;
        if (v80 || (v82 = &v106[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_voicemailID], *v82 = v81, v82[4] = BYTE4(v81) & 1, v111 = 15, sub_1BC7C75C4(), OUTLINED_FUNCTION_30_13(), v83 = v107, sub_1BC8F8864(), (v107 = v83) != 0))
        {
          v84 = OUTLINED_FUNCTION_6_27();
          v85(v84);
          v39 = 0;
          v38 = 0;
        }

        else
        {
          v87 = v110;
          v88 = &v106[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary];
          *v88 = v109;
          *(v88 + 2) = v87;
          OUTLINED_FUNCTION_160(16);
          sub_1BC8F8864();
          v107 = 0;
          sub_1BC8EF81C(v97, &v106[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_reminderUUID], &unk_1EBCF5D70, &qword_1BC8FC740);
          OUTLINED_FUNCTION_12_25(17);
          v89 = v107;
          v90 = sub_1BC8F88B4();
          v107 = v89;
          if (!v89)
          {
            v93 = v106;
            v106[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_undelete] = v90 & 1;
            v108.receiver = v93;
            v108.super_class = ObjectType;
            v37 = objc_msgSendSuper2(&v108, sel_init);
            v94 = OUTLINED_FUNCTION_6_27();
            v95(v94);
            __swift_destroy_boxed_opaque_existential_1(v102);
            return v37;
          }

          v91 = OUTLINED_FUNCTION_6_27();
          v92(v91);
          v39 = 1;
          v38 = 1;
        }

        __swift_destroy_boxed_opaque_existential_1(v102);
        LOBYTE(v35) = 1;
        v36 = 1;
        OUTLINED_FUNCTION_31_11();
        LODWORD(v104) = v86;
        v40 = 1;
        v37 = v106;
        (*(v101 + 8))(&v106[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recordUUID], v100);
LABEL_5:
        sub_1BC862F74(v37 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_callUUID, &unk_1EBCF5D70, &qword_1BC8FC740);
        if (v35)
        {
          goto LABEL_17;
        }

LABEL_6:
        if (!v36)
        {
          goto LABEL_18;
        }

LABEL_7:
        OUTLINED_FUNCTION_132(OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_from);

        if (v29)
        {
          goto LABEL_19;
        }

LABEL_8:
        if (!v3)
        {
          goto LABEL_20;
        }

LABEL_9:
        OUTLINED_FUNCTION_132(OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recipient);

        if (v103)
        {
          goto LABEL_21;
        }

LABEL_10:
        if (!v104)
        {
          goto LABEL_22;
        }

LABEL_11:
        OUTLINED_FUNCTION_132(OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_simID);

        if (v40)
        {
          goto LABEL_23;
        }

LABEL_12:
        if (!v39)
        {
          goto LABEL_24;
        }

LABEL_13:

        if ((v38 & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

      v72 = OUTLINED_FUNCTION_6_27();
      v73(v72);
      LODWORD(v104) = 0;
      OUTLINED_FUNCTION_14_20();
      OUTLINED_FUNCTION_31_11();
    }
  }

  v37 = v106;
  __swift_destroy_boxed_opaque_existential_1(v102);
  v38 = 0;
  v39 = 0;
  v40 = 0;
  if (v34)
  {
    goto LABEL_5;
  }

  if (!v35)
  {
    goto LABEL_6;
  }

LABEL_17:
  sub_1BC862F74(v37 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_conversationID, &unk_1EBCF5D70, &qword_1BC8FC740);
  if (v36)
  {
    goto LABEL_7;
  }

LABEL_18:
  if (!v29)
  {
    goto LABEL_8;
  }

LABEL_19:
  OUTLINED_FUNCTION_132(OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_provider);

  if (v3)
  {
    goto LABEL_9;
  }

LABEL_20:
  if (!v103)
  {
    goto LABEL_10;
  }

LABEL_21:
  sub_1BC862F74(v37 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptURL, &qword_1EBCF5A20, &qword_1BC901BF0);
  if (v104)
  {
    goto LABEL_11;
  }

LABEL_22:
  if (!v40)
  {
    goto LABEL_12;
  }

LABEL_23:
  sub_1BC862F74(v37 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_dateCreated, &unk_1EBCF5D80, &qword_1BC8FEA60);
  if (v39)
  {
    goto LABEL_13;
  }

LABEL_24:
  if (v38)
  {
LABEL_25:
    sub_1BC862F74(v37 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_reminderUUID, &unk_1EBCF5D70, &qword_1BC8FC740);
  }

LABEL_26:
  swift_deallocPartialClassInstance();
  return v37;
}

void *sub_1BC8F3188@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = MessageUpdate.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1BC8F31D8()
{
  result = qword_1EDC20548;
  if (!qword_1EDC20548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20548);
  }

  return result;
}

uint64_t sub_1BC8F322C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MessageUpdate(uint64_t a1)
{
  result = qword_1EDC211E0;
  if (!qword_1EDC211E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BC8F32C8(uint64_t a1)
{
  sub_1BC8F7264();
  if (v1 <= 0x3F)
  {
    sub_1BC8F3714(319, &unk_1EDC21200, MEMORY[0x1E69695A8]);
    if (v2 <= 0x3F)
    {
      sub_1BC8F3714(319, &qword_1EDC21220, MEMORY[0x1E6968FB0]);
      if (v3 <= 0x3F)
      {
        sub_1BC8F3714(319, &unk_1EDC21210, MEMORY[0x1E6969530]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of MessageUpdate.__allocating_init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:dateCreated:voicemailID:summary:undelete:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v9 = *(v7 + 224);
  v10 = a7 & 1;

  return v9(a1, a2, a3, a4, a5, a6, v10);
}

uint64_t dispatch thunk of MessageUpdate.__allocating_init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:undelete:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v9 = *(v7 + 232);
  v10 = a7 & 1;

  return v9(a1, a2, a3, a4, a5, a6, v10);
}

uint64_t dispatch thunk of MessageUpdate.__allocating_init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:dateCreated:voicemailID:summary:undelete:reminderUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v9 = *(v7 + 240);
  v10 = a7 & 1;

  return v9(a1, a2, a3, a4, a5, a6, v10);
}

void sub_1BC8F3714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BC8F83F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for MessageUpdate.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
    if (a2 + 17 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 17) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MessageUpdate.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BC8F38D0()
{
  result = qword_1EBCF6B08;
  if (!qword_1EBCF6B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6B08);
  }

  return result;
}

unint64_t sub_1BC8F3928()
{
  result = qword_1EDC20530;
  if (!qword_1EDC20530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20530);
  }

  return result;
}

unint64_t sub_1BC8F3980()
{
  result = qword_1EDC20538;
  if (!qword_1EDC20538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20538);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_39_7()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1BC8F3A04(void *a1, uint64_t a2, uint64_t a3)
{
  if (((*(a3 + 8))(a2, a3) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  return (*(v5 + 80))(v4, v5) & 1;
}

void sub_1BC8F3A88(id a1, uint64_t (*a2)(uint64_t *))
{
  v4 = [v2 allVoicemails];
  v19 = sub_1BC8F5238();
  v5 = sub_1BC8F7E54();

  v20[0] = MEMORY[0x1E69E7CC0];
  v6 = sub_1BC7C0454(v5);
  for (i = 0; v6 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1BFB29A00](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v8 = *(v5 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    if ([v8 mailboxType] == a1)
    {
      sub_1BC8F8654();
      sub_1BC8F8694();
      sub_1BC8F86A4();
      sub_1BC8F8664();
    }

    else
    {
    }
  }

  v10 = v20[0];
  v21 = MEMORY[0x1E69E7CC0];
  v11 = sub_1BC7C0454(v20[0]);
  for (j = 0; v11 != j; ++j)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1BFB29A00](j, v10);
    }

    else
    {
      if (j >= *(v10 + 16))
      {
        goto LABEL_27;
      }

      v13 = *(v10 + 8 * j + 32);
    }

    v14 = v13;
    if (__OFADD__(j, 1))
    {
      goto LABEL_26;
    }

    v20[3] = v19;
    OUTLINED_FUNCTION_4_21();
    v20[4] = sub_1BC7AABA4(&qword_1EDC1DE80, v15, &unk_1BC9003DC);
    v20[0] = v14;
    v16 = v14;
    v17 = a2(v20);
    __swift_destroy_boxed_opaque_existential_1(v20);
    if (v17)
    {
      sub_1BC8F8654();
      sub_1BC8F8694();
      sub_1BC8F86A4();
      sub_1BC8F8664();
    }

    else
    {
    }
  }

  sub_1BC8F3D18(v21);
}

void sub_1BC8F3D18(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1BC8F8504();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1BC7DDDE4(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = 0;
      v4 = v19;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1BFB29A00](v3, a1);
        }

        else
        {
          v5 = *(a1 + 8 * v3 + 32);
        }

        v6 = v5;
        v7 = sub_1BC8F5238();
        v17 = v7;
        v8 = sub_1BC7AABA4(&qword_1EDC1DE80, sub_1BC8F5238, &unk_1BC9003DC);
        v18 = v8;
        v19 = v4;
        v16[0] = v6;
        v10 = *(v4 + 16);
        v9 = *(v4 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_1BC7DDDE4(v9 > 1, v10 + 1, 1);
          v7 = v17;
          v11 = v18;
        }

        else
        {
          v11 = v8;
        }

        ++v3;
        v12 = __swift_mutable_project_boxed_opaque_existential_1(v16, v7);
        MEMORY[0x1EEE9AC00](v12);
        v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v15 + 16))(v14);
        sub_1BC8F5354(v10, v14, &v19, v7, v11);
        __swift_destroy_boxed_opaque_existential_1(v16);
        v4 = v19;
      }

      while (v2 != v3);
    }
  }
}

void sub_1BC8F3F38()
{
  OUTLINED_FUNCTION_29_0();
  v22 = v0;
  v2 = v1;
  v3 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v20 = v5 + 32;
  v21 = v7;
  v10 = *(v5 + 16);
  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  v19 = v2;
  while (v9 != 32)
  {
    v11 = *(&unk_1F3B36D08 + v9 + 32);
    v10(v8, v22, v3);
    v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v13 = swift_allocObject();
    (*(v5 + 32))(v13 + v12, v8, v3);
    sub_1BC8F3A88(v11, sub_1BC8F527C);
    v15 = v14;

    if (*(v15 + 16))
    {
      sub_1BC8E0544(v15, v23);

      v16 = v19;
      sub_1BC8F52EC(v19);
      v17 = v23[1];
      *v16 = v23[0];
      *(v16 + 16) = v17;
      *(v16 + 32) = v24;
      break;
    }

    v9 += 8;
  }

  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC8F40F4(void *a1, uint64_t a2)
{
  v3 = sub_1BC8F7264();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 128))(v7, v8);
  v9 = sub_1BC8F7234();
  (*(v4 + 8))(v6, v3);
  return v9 & 1;
}

void sub_1BC8F420C()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v89 = v4;
  v90 = v3;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v85 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v86 = (&v81 - v8);
  MEMORY[0x1EEE9AC00](v7);
  v87 = (&v81 - v9);
  v10 = [v0 allVoicemails];
  v11 = sub_1BC8F5238();
  v12 = sub_1BC8F7E54();

  v92 = MEMORY[0x1E69E7CC0];
  v13 = sub_1BC7C0454(v12);
  v14 = 0;
  v15 = v12 & 0xFFFFFFFFFFFFFF8;
  v88 = v13;
  while (v13 != v14)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1BFB29A00](v14, v12);
    }

    else
    {
      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_90;
      }

      v16 = *(v12 + 8 * v14 + 32);
    }

    v17 = v16;
    if (__OFADD__(v14, 1))
    {
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
      goto LABEL_97;
    }

    v91[3] = v11;
    OUTLINED_FUNCTION_4_21();
    v91[4] = sub_1BC7AABA4(&qword_1EDC1DE80, v18, &unk_1BC9003DC);
    v91[0] = v17;
    v19 = v17;
    v20 = (v2)(v91);
    __swift_destroy_boxed_opaque_existential_1(v91);
    if (v20)
    {
      sub_1BC8F8654();
      sub_1BC8F8694();
      v13 = v88;
      sub_1BC8F86A4();
      sub_1BC8F8664();
    }

    else
    {
    }

    ++v14;
  }

  v15 = v92;
  if (qword_1EDC1E1A0 == -1)
  {
    goto LABEL_13;
  }

LABEL_97:
  OUTLINED_FUNCTION_1_1(&qword_1EDC1E1A0);
LABEL_13:
  v21 = sub_1BC8F7734();
  v22 = __swift_project_value_buffer(v21, qword_1EDC2B208);

  v23 = sub_1BC8F7714();
  v24 = sub_1BC8F8204();

  v25 = os_log_type_enabled(v23, v24);
  v26 = &off_1E7FF5000;
  v88 = v22;
  if (v25)
  {
    LODWORD(v83) = v24;
    v84 = v23;
    OUTLINED_FUNCTION_21_1();
    v81 = OUTLINED_FUNCTION_14_21();
    v91[0] = v81;
    v82 = v23;
    LODWORD(v23->isa) = 136446210;
    v92 = MEMORY[0x1E69E7CC0];
    sub_1BC7C0454(v15);
    OUTLINED_FUNCTION_10_30();
    while (&unk_1BC8FB000 != v13)
    {
      if (v2)
      {
        v27 = MEMORY[0x1BFB29A00](v13, v15);
      }

      else
      {
        if (v13 >= *(v15 + 16))
        {
          goto LABEL_92;
        }

        v27 = *(v15 + 8 * v13 + 32);
      }

      v28 = v27;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_91;
      }

      if ([v27 mailboxType] == 1)
      {
        sub_1BC8F8654();
        OUTLINED_FUNCTION_15_16();
        sub_1BC8F86A4();
        sub_1BC8F8664();
      }

      else
      {
      }

      ++v13;
    }

    v29 = v92;
    v30 = sub_1BC7C0454(v92);
    if (v30)
    {
      v2 = v30;
      OUTLINED_FUNCTION_5_29(v30, MEMORY[0x1E69E7CC0]);
      if (v2 < 0)
      {
        __break(1u);
        goto LABEL_99;
      }

      v31 = 0;
      v32 = v92;
      v13 = v29 & 0xC000000000000001;
      v33 = v87;
      do
      {
        if (v13)
        {
          v34 = MEMORY[0x1BFB29A00](v31, v29);
        }

        else
        {
          v34 = *(v29 + 8 * v31 + 32);
        }

        v35 = v34;
        v36 = [v35 uuid];
        sub_1BC8F7244();

        OUTLINED_FUNCTION_7_25();
        if (v38)
        {
          OUTLINED_FUNCTION_6_28(v37);
          v32 = v92;
        }

        v31 = (v31 + 1);
        v39 = OUTLINED_FUNCTION_0_37();
        v40(v39, v33);
      }

      while (v2 != v31);

      v26 = &off_1E7FF5000;
    }

    else
    {

      v32 = MEMORY[0x1E69E7CC0];
    }

    MEMORY[0x1BFB29280](v32, v90);
    OUTLINED_FUNCTION_16_20();
    v41 = OUTLINED_FUNCTION_12_26();

    *(&v82->isa + 4) = v41;
    v42 = v84;
    OUTLINED_FUNCTION_13_23(&dword_1BC7A3000, v43, v83, "Inbox messages: %{public}s");
    __swift_destroy_boxed_opaque_existential_1(v81);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();

    v22 = v88;
  }

  else
  {
  }

  v44 = sub_1BC8F7714();
  v45 = sub_1BC8F8204();

  if (os_log_type_enabled(v44, v45))
  {
    LODWORD(v87) = v45;
    OUTLINED_FUNCTION_21_1();
    v83 = OUTLINED_FUNCTION_14_21();
    v91[0] = v83;
    v84 = v45;
    LODWORD(v45->isa) = 136446210;
    v92 = MEMORY[0x1E69E7CC0];
    sub_1BC7C0454(v15);
    OUTLINED_FUNCTION_10_30();
    while (&unk_1BC8FB000 != v13)
    {
      if (v2)
      {
        v46 = MEMORY[0x1BFB29A00](v13, v15);
      }

      else
      {
        if (v13 >= *(v15 + 16))
        {
          goto LABEL_94;
        }

        v46 = *(v15 + 8 * v13 + 32);
      }

      v47 = v46;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_93;
      }

      if ([v46 v26[123]] == 2)
      {
        sub_1BC8F8654();
        OUTLINED_FUNCTION_15_16();
        sub_1BC8F86A4();
        sub_1BC8F8664();
      }

      else
      {
      }

      ++v13;
    }

    v82 = v44;
    v48 = v92;
    v49 = sub_1BC7C0454(v92);
    if (!v49)
    {

      v51 = MEMORY[0x1E69E7CC0];
LABEL_62:
      MEMORY[0x1BFB29280](v51, v90);
      OUTLINED_FUNCTION_16_20();
      v59 = OUTLINED_FUNCTION_12_26();

      *(&v84->isa + 4) = v59;
      v60 = v82;
      OUTLINED_FUNCTION_13_23(&dword_1BC7A3000, v61, v87, "Junk messages: %{public}s");
      __swift_destroy_boxed_opaque_existential_1(v83);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();

      v22 = v88;
      goto LABEL_63;
    }

    v2 = v49;
    OUTLINED_FUNCTION_5_29(v49, MEMORY[0x1E69E7CC0]);
    if ((v2 & 0x8000000000000000) == 0)
    {
      v50 = 0;
      v51 = v92;
      v13 = v48 & 0xC000000000000001;
      v52 = v86;
      do
      {
        if (v13)
        {
          v53 = MEMORY[0x1BFB29A00](v50, v48);
        }

        else
        {
          v53 = *(v48 + 8 * v50 + 32);
        }

        v54 = v53;
        v55 = [v54 uuid];
        sub_1BC8F7244();

        OUTLINED_FUNCTION_7_25();
        if (v38)
        {
          OUTLINED_FUNCTION_6_28(v56);
          v51 = v92;
        }

        v50 = (v50 + 1);
        v57 = OUTLINED_FUNCTION_0_37();
        v58(v57, v52);
      }

      while (v2 != v50);

      v26 = &off_1E7FF5000;
      goto LABEL_62;
    }

LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

LABEL_63:

  v62 = sub_1BC8F7714();
  v63 = sub_1BC8F8204();

  if (!os_log_type_enabled(v62, v63))
  {

LABEL_88:
    sub_1BC8F3D18(v15);

    OUTLINED_FUNCTION_24();
    return;
  }

  OUTLINED_FUNCTION_21_1();
  v87 = OUTLINED_FUNCTION_14_21();
  v91[0] = v87;
  v88 = v22;
  *v22 = 136446210;
  v92 = MEMORY[0x1E69E7CC0];
  sub_1BC7C0454(v15);
  OUTLINED_FUNCTION_10_30();
  while (&unk_1BC8FB000 != v13)
  {
    if (v2)
    {
      v64 = MEMORY[0x1BFB29A00](v13, v15);
    }

    else
    {
      if (v13 >= *(v15 + 16))
      {
        goto LABEL_96;
      }

      v64 = *(v15 + 8 * v13 + 32);
    }

    v65 = v64;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_95;
    }

    if ([v64 v26[123]] == 3)
    {
      sub_1BC8F8654();
      OUTLINED_FUNCTION_15_16();
      sub_1BC8F86A4();
      sub_1BC8F8664();
    }

    else
    {
    }

    ++v13;
  }

  LODWORD(v84) = v63;
  v86 = v62;
  v66 = v92;
  v67 = sub_1BC7C0454(v92);
  if (!v67)
  {

    v70 = MEMORY[0x1E69E7CC0];
LABEL_87:
    MEMORY[0x1BFB29280](v70, v90);
    OUTLINED_FUNCTION_16_20();
    v78 = OUTLINED_FUNCTION_12_26();

    *(v88 + 1) = v78;
    v79 = v86;
    OUTLINED_FUNCTION_13_23(&dword_1BC7A3000, v80, v84, "Trash messages: %{public}s");
    __swift_destroy_boxed_opaque_existential_1(v87);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();

    goto LABEL_88;
  }

  v68 = v67;
  OUTLINED_FUNCTION_5_29(v67, MEMORY[0x1E69E7CC0]);
  if ((v68 & 0x8000000000000000) == 0)
  {
    v69 = 0;
    v70 = v92;
    do
    {
      if ((v66 & 0xC000000000000001) != 0)
      {
        v71 = MEMORY[0x1BFB29A00](v69, v66);
      }

      else
      {
        v71 = *(v66 + 8 * v69 + 32);
      }

      v72 = v71;
      v73 = [v72 uuid];
      v74 = v85;
      sub_1BC8F7244();

      OUTLINED_FUNCTION_7_25();
      if (v38)
      {
        OUTLINED_FUNCTION_6_28(v75);
        v70 = v92;
      }

      ++v69;
      v76 = OUTLINED_FUNCTION_0_37();
      v77(v76, v74);
    }

    while (v68 != v69);

    goto LABEL_87;
  }

LABEL_100:
  __break(1u);
}

void sub_1BC8F4BDC()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_11_20();
  sub_1BC7A792C(v7, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F40, &unk_1BC900B00);
  sub_1BC8F5238();
  if (swift_dynamicCast())
  {
    v27 = v4;
    if (qword_1EDC1E1A0 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_1EDC1E1A0);
    }

    v9 = sub_1BC8F7734();
    __swift_project_value_buffer(v9, qword_1EDC2B208);
    v10 = v28;
    v11 = sub_1BC8F7714();
    v12 = sub_1BC8F8204();

    if (os_log_type_enabled(v11, v12))
    {
      v25 = v2;
      v13 = OUTLINED_FUNCTION_21_1();
      v26 = v5;
      v14 = swift_slowAlloc();
      v29[0] = v14;
      *v13 = 136446210;
      v15 = [v10 uuid];
      sub_1BC8F7244();

      OUTLINED_FUNCTION_3_33();
      sub_1BC7AABA4(v16, v17, MEMORY[0x1E69695E0]);
      v18 = sub_1BC8F8A54();
      v20 = v19;
      v21 = OUTLINED_FUNCTION_9_22();
      v22(v21);
      v23 = sub_1BC7A9A4C(v18, v20, v29);

      *(v13 + 4) = v23;
      _os_log_impl(&dword_1BC7A3000, v11, v12, v27, v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      v5 = v26;
      OUTLINED_FUNCTION_6();
      v2 = v25;
      OUTLINED_FUNCTION_6();
    }

    v24 = [v5 *v2];
  }

  OUTLINED_FUNCTION_24();
}

void sub_1BC8F4E5C()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_11_20();
  if (qword_1EDC1E1A0 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1EDC1E1A0);
  }

  v11 = sub_1BC8F7734();
  __swift_project_value_buffer(v11, qword_1EDC2B208);
  (*(v9 + 16))(v1, v6, v7);
  v12 = sub_1BC8F7714();
  v13 = sub_1BC8F8204();
  if (os_log_type_enabled(v12, v13))
  {
    v27 = v0;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28 = v15;
    *v14 = 67240450;
    *(v14 + 4) = v4 & 1;
    *(v14 + 8) = 2082;
    OUTLINED_FUNCTION_3_33();
    sub_1BC7AABA4(v16, v17, MEMORY[0x1E69695E0]);
    v18 = sub_1BC8F8A54();
    v20 = v19;
    v21 = OUTLINED_FUNCTION_9_22();
    v22(v21);
    v23 = sub_1BC7A9A4C(v18, v20, &v28);

    *(v14 + 10) = v23;
    _os_log_impl(&dword_1BC7A3000, v12, v13, "Reporting transcription wasAccurate %{BOOL,public}d for voicemail with recordUUID %{public}s", v14, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_6();
    v2 = v27;
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v24 = OUTLINED_FUNCTION_9_22();
    v25(v24);
  }

  v26 = sub_1BC8F7214();
  [v2 reportTranscriptionRatedAccurateForUUID:v4 & 1 forVoicemailUUID:v26];

  OUTLINED_FUNCTION_24();
}

unint64_t sub_1BC8F5238()
{
  result = qword_1EDC1DE78;
  if (!qword_1EDC1DE78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC1DE78);
  }

  return result;
}

uint64_t sub_1BC8F527C(void *a1)
{
  v3 = *(sub_1BC8F7264() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BC8F40F4(a1, v4);
}

uint64_t sub_1BC8F52EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6780, &qword_1BC908A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC8F5354(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1BC7CF5EC(&v12, v10 + 40 * a1 + 32);
}

id FTLocalMessage.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id FTLocalMessage.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for FTLocalMessage();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id FTLocalMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FTLocalMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static FTLocalMessage.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_1BC8F7BE4();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_1BC8F55B4(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1BC8F62A8(a1, &v10 - v5, &unk_1EBCF5D70, &qword_1BC8FC740);
  v7 = *a2;
  v8 = sub_1BC8F7264();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_1BC8F7214();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setCallUUID_];
}

void sub_1BC8F56D0(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1BC8F62A8(a1, &v10 - v5, &unk_1EBCF5D70, &qword_1BC8FC740);
  v7 = *a2;
  v8 = sub_1BC8F7264();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_1BC8F7214();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setConversationID_];
}

void sub_1BC8F57EC(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1BC8F62A8(a1, &v10 - v5, &unk_1EBCF5D80, &qword_1BC8FEA60);
  v7 = *a2;
  v8 = sub_1BC8F71E4();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_1BC8F7174();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setDateCreated_];
}

void sub_1BC8F5908(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1BC8F62A8(a1, &v10 - v5, &unk_1EBCF5D80, &qword_1BC8FEA60);
  v7 = *a2;
  v8 = sub_1BC8F71E4();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_1BC8F7174();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setDateModified_];
}

void sub_1BC8F5A24(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1BC8F62A8(a1, &v10 - v5, &qword_1EBCF5A20, &qword_1BC901BF0);
  v7 = *a2;
  v8 = sub_1BC8F7014();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_1BC8F6F44();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setMessageFile_];
}

void sub_1BC8F5B40(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1BC8F62A8(a1, &v10 - v5, &qword_1EBCF5A20, &qword_1BC901BF0);
  v7 = *a2;
  v8 = sub_1BC8F7014();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_1BC8F6F44();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setMessageThumbnail_];
}

void sub_1BC8F5C5C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1BC8F62A8(a1, &v10 - v5, &unk_1EBCF5D70, &qword_1BC8FC740);
  v7 = *a2;
  v8 = sub_1BC8F7264();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_1BC8F7214();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setRecordUUID_];
}

void sub_1BC8F5D78(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1BC8F62A8(a1, &v10 - v5, &unk_1EBCF5D70, &qword_1BC8FC740);
  v7 = *a2;
  v8 = sub_1BC8F7264();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_1BC8F7214();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setReminderUUID_];
}

uint64_t sub_1BC8F5E94@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);

  return __swift_storeEnumTagSinglePayload(a5, v10, 1, v11);
}

void sub_1BC8F5F28(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1BC8F62A8(a1, &v10 - v5, &qword_1EBCF5A20, &qword_1BC901BF0);
  v7 = *a2;
  v8 = sub_1BC8F7014();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_1BC8F6F44();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setTranscript_];
}

void sub_1BC8F6044(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3_34(a1);
  v4 = [v2 *v3];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1BC8F70D4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *v1 = v6;
  v1[1] = v8;
}

void sub_1BC8F60A4()
{
  OUTLINED_FUNCTION_4_3();
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1BC8F70C4();
  }

  v4 = v3;
  [v1 *v0];
}

void sub_1BC8F6110()
{
  OUTLINED_FUNCTION_4_3();
  if (v2)
  {
    v3 = sub_1BC8F7BE4();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v1 *v0];
}

uint64_t sub_1BC8F6174@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for FTLocalMessage();
  result = sub_1BC8F85C4();
  *a2 = result;
  return result;
}

uint64_t sub_1BC8F62A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id FTLocalMessageProperties.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id FTLocalMessageProperties.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for FTLocalMessageProperties();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id FTLocalMessageProperties.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FTLocalMessageProperties();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static FTLocalMessageProperties.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_1BC8F7BE4();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_1BC8F64D4@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 recordUUID];
  if (v3)
  {
    v4 = v3;
    sub_1BC8F7244();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1BC8F7264();

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

void sub_1BC8F6554(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1BC7E8B8C(a1, &v10 - v5);
  v7 = *a2;
  v8 = sub_1BC8F7264();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_1BC8F7214();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setRecordUUID_];
}

uint64_t sub_1BC8F6658@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for FTLocalMessageProperties();
  result = sub_1BC8F85C4();
  *a2 = result;
  return result;
}

id FTStoredMessage.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id FTStoredMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FTStoredMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BC8F6740(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1BC8F6BB0(a1, &v15 - v9, &unk_1EBCF5D70, &qword_1BC8FC740);
  v11 = *a2;
  v12 = sub_1BC8F7264();
  v13 = 0;
  if (__swift_getEnumTagSinglePayload(v10, 1, v12) != 1)
  {
    v13 = sub_1BC8F7214();
    OUTLINED_FUNCTION_10();
    (*(v14 + 8))(v10, v12);
  }

  [v11 *a5];
}

void sub_1BC8F687C(uint64_t a1, void **a2)
{
  v5 = &unk_1EBCF5D80;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_3_35(v7, v12);
  v8 = *a2;
  v9 = sub_1BC8F71E4();
  OUTLINED_FUNCTION_6_29(v9);
  if (!v10)
  {
    v5 = sub_1BC8F7174();
    OUTLINED_FUNCTION_10();
    (*(v11 + 8))(v2, a1);
  }

  [v8 setDateCreated_];
}

void sub_1BC8F6960(uint64_t a1, void **a2)
{
  v5 = &unk_1EBCF5D80;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_3_35(v7, v12);
  v8 = *a2;
  v9 = sub_1BC8F71E4();
  OUTLINED_FUNCTION_6_29(v9);
  if (!v10)
  {
    v5 = sub_1BC8F7174();
    OUTLINED_FUNCTION_10();
    (*(v11 + 8))(v2, a1);
  }

  [v8 setDateModified_];
}

void sub_1BC8F6A44(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1BC8F6BB0(a1, &v10 - v5, &unk_1EBCF5D80, &qword_1BC8FEA60);
  v7 = *a2;
  v8 = sub_1BC8F71E4();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_1BC8F7174();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setDateDeleted_];
}

uint64_t sub_1BC8F6B60@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for FTStoredMessage();
  result = sub_1BC8F85C4();
  *a2 = result;
  return result;
}

uint64_t sub_1BC8F6BB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_10();
  (*(v6 + 16))(a2, a1);
  return a2;
}
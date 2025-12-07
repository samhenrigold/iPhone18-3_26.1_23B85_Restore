uint64_t sub_1BF9A3B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *v8;

  v10 = *(v12 + 8);

  return v10(a1);
}

uint64_t FilterResolver.getRoot()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 56);
  v4 = __swift_project_boxed_opaque_existential_1((v1 + 32), v3);
  a1[3] = v3;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
  v6 = *(*(v3 - 8) + 16);

  return v6(boxed_opaque_existential_1Tm, v4, v3);
}

uint64_t static FilterResolver.filter(for:using:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  sub_1BF8D2004(a3, v14);
  OUTLINED_FUNCTION_17_1();
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  sub_1BF8D5C74(v14, (v12 + 4));
  v12[9] = a1;
  v12[10] = a2;
  a6[3] = v6;
  a6[4] = &protocol witness table for FilterResolver;
  *a6 = v12;
}

uint64_t sub_1BF9A3D28(void *a1)
{
  if (qword_1EDBF0898 != -1)
  {
    swift_once();
  }

  v2 = sub_1BF9B47C8();
  __swift_project_value_buffer(v2, qword_1EDBF08A0);
  sub_1BF9A4160(a1, v20);
  v3 = sub_1BF9B47A8();
  v4 = sub_1BF9B5028();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    v7 = v22;
    v8 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (*(v8 + 64))(&v18, v7, v8);
    v9 = sub_1BF9B4B08();
    v11 = v10;
    sub_1BF9A3F80(v20);
    v12 = sub_1BF8DE810(v9, v11, &v19);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_1BF8B8000, v3, v4, "Checking if device is locked: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1BFB5F320](v6, -1, -1);
    MEMORY[0x1BFB5F320](v5, -1, -1);
  }

  else
  {

    sub_1BF9A3F80(v20);
  }

  v13 = a1[8];
  v14 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v13);
  (*(v14 + 64))(v20, v13, v14);
  if (v20[0])
  {
    v15 = sub_1BF9B56D8();

    v16 = v15 ^ 1;
  }

  else
  {

    v16 = 0;
  }

  return v16 & 1;
}

uint64_t FilterResolver.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return v0;
}

uint64_t FilterResolver.__deallocating_deinit()
{
  FilterResolver.deinit();
  v0 = OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF9A4054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BF9090B8;

  return FilterResolver.resolveParameter(parameter:suggestion:interaction:environment:)(a1, a2, a3, a4);
}

uint64_t DelegatingResolver.__allocating_init(resolverTypeOperand:delegationType:delegation:params:valuePostProcessor:dependentValuesUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_3_30();
  v17 = swift_allocObject();
  DelegatingResolver.init(resolverTypeOperand:delegationType:delegation:params:valuePostProcessor:dependentValuesUpdate:)(v15, v14, v13, v12, v11, v10, a7, a8, a9, a10);
  return v17;
}

uint64_t DelegatingResolver.resolverTypeOperand.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t DelegatingResolver.delegationType.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t sub_1BF9A42A4()
{
  OUTLINED_FUNCTION_7();
  sub_1BF9B4988();
  OUTLINED_FUNCTION_4();

  return v0();
}

uint64_t DelegatingResolver.init(resolverTypeOperand:delegationType:delegation:params:valuePostProcessor:dependentValuesUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_3_30();
  swift_defaultActor_initialize();
  *(v10 + 176) = 0;
  *(v10 + 160) = 0u;
  *(v10 + 144) = 0u;
  *(v10 + 112) = v16;
  *(v10 + 120) = v15;
  *(v10 + 128) = v14;
  *(v10 + 136) = v13;
  swift_beginAccess();
  sub_1BF9A43CC(v12, v10 + 144);
  swift_endAccess();
  *(v10 + 184) = v11;
  *(v10 + 192) = a7;
  *(v10 + 200) = a8;
  *(v10 + 208) = a9;
  *(v10 + 216) = a10;
  return v10;
}

uint64_t sub_1BF9A43CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA6A8, &qword_1BF9C9030);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF9A443C(uint64_t a1, uint64_t a2)
{
  *(v3 + 296) = a2;
  *(v3 + 304) = v2;
  return OUTLINED_FUNCTION_1_18(sub_1BF9A4458, v2);
}

uint64_t sub_1BF9A4458()
{
  v56 = v0;
  v1 = *(v0 + 304);
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  v4 = v2 == 0x76697463616F7270 && v3 == 0xE900000000000065;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {
    v5 = *(v0 + 296);
    v6 = v5[3];
    v7 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v6);
    (*(v7 + 32))(v54, v6, v7);
    v9 = v54[0];
    v8 = v54[1];
    v11 = v54[2];
    v10 = v54[3];
    v12 = v55;
    if (v55 == 255)
    {
      v31 = OUTLINED_FUNCTION_0_31();
      sub_1BF969CB0(v31, v32, v33, v34, 255);
      OUTLINED_FUNCTION_6_21();
    }

    else
    {
      *(v0 + 96) = 5;
      *(v0 + 104) = 0;
      *(v0 + 112) = 0;
      *(v0 + 120) = 0;
      *(v0 + 128) = 2;
      *(v0 + 136) = v9;
      *(v0 + 144) = v8;
      *(v0 + 152) = v11;
      *(v0 + 160) = v10;
      *(v0 + 168) = v12;
      v13 = OUTLINED_FUNCTION_0_31();
      sub_1BF8E6A24(v13, v14, v15, v16, v12);
      v17 = sub_1BF8CA80C(v0 + 136, v0 + 96);
      v18 = OUTLINED_FUNCTION_0_31();
      sub_1BF969CB0(v18, v19, v20, v21, v12);
      OUTLINED_FUNCTION_6_21();
      v22 = OUTLINED_FUNCTION_0_31();
      sub_1BF969CB0(v22, v23, v24, v25, v12);
      if (v17)
      {
        if (qword_1EDBF0898 != -1)
        {
          OUTLINED_FUNCTION_3_29(&qword_1EDBF0898);
        }

        v26 = sub_1BF9B47C8();
        __swift_project_value_buffer(v26, qword_1EDBF08A0);
        v27 = sub_1BF9B47A8();
        v28 = sub_1BF9B5038();
        if (!os_log_type_enabled(v27, v28))
        {
          goto LABEL_22;
        }

        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1BF8B8000, v27, v28, "Not running ProactiveResolver for siriAutoComplete deliveryVehicle.", v29, 2u);
        v30 = v29;
LABEL_21:
        MEMORY[0x1BFB5F320](v30, -1, -1);
LABEL_22:

        OUTLINED_FUNCTION_4();
        v52 = MEMORY[0x1E69E7CC0];

        return v51(v52);
      }
    }
  }

  v35 = *(v0 + 304);
  swift_beginAccess();
  sub_1BF9A4C48(v35 + 144, v0 + 56);
  if (!*(v0 + 80))
  {
    sub_1BF8EE3F8(v0 + 56, &qword_1EBDEA6A8, &qword_1BF9C9030);
    if (qword_1EDBF0898 != -1)
    {
      OUTLINED_FUNCTION_3_29(&qword_1EDBF0898);
    }

    v46 = sub_1BF9B47C8();
    __swift_project_value_buffer(v46, qword_1EDBF08A0);

    v27 = sub_1BF9B47A8();
    v47 = sub_1BF9B5048();

    if (!os_log_type_enabled(v27, v47))
    {
      goto LABEL_22;
    }

    v48 = *(v0 + 304);
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v54[0] = v50;
    *v49 = 136315394;
    *(v49 + 4) = sub_1BF8DE810(*(v48 + 112), *(v48 + 120), v54);
    *(v49 + 12) = 2080;
    *(v49 + 14) = sub_1BF8DE810(v2, v3, v54);
    _os_log_impl(&dword_1BF8B8000, v27, v47, "No delegation set. Unable to resolve parameter for %s using %s", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB5F320](v50, -1, -1);
    v30 = v49;
    goto LABEL_21;
  }

  v36 = *(v0 + 296);
  v37 = *(v0 + 304);
  sub_1BF8C2C9C((v0 + 56), v0 + 16);
  v38 = *(v37 + 208);
  v39 = v36[3];
  v40 = v36[4];
  __swift_project_boxed_opaque_existential_1(v36, v39);
  v41 = (*(v40 + 8))(v39, v40);
  v43 = v42;
  *(v0 + 312) = v41;
  v53 = (v38 + *v38);
  v44 = swift_task_alloc();
  *(v0 + 320) = v44;
  *v44 = v0;
  v44[1] = sub_1BF9A4900;

  return v53(v41, v43);
}

uint64_t sub_1BF9A4900()
{
  OUTLINED_FUNCTION_7();
  v1 = *(*v0 + 304);
  v2 = *v0;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  *(v5 + 328) = v4;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1BF9A4A28, v1, 0);
}

uint64_t sub_1BF9A4A28()
{
  v18 = v0;
  v1 = *(v0 + 328);
  v2 = *(*(v0 + 304) + 184);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = v2;
  sub_1BF969A2C(v1, sub_1BF9A4FA0, 0, isUniquelyReferenced_nonNull_native, &v17);
  v4 = v17;
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
  v7 = (*(v6 + 8))(v4, v5, v6);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = *(*(v0 + 304) + 192);
    v10 = v7 + 32;
    v11 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1BF8C187C(v10, v0 + 176);
      v9(v0 + 176);
      __swift_destroy_boxed_opaque_existential_1((v0 + 176));
      if (*(v0 + 264))
      {
        sub_1BF8C192C((v0 + 240), (v0 + 208));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BF8DCEAC();
          v11 = v13;
        }

        v12 = *(v11 + 16);
        if (v12 >= *(v11 + 24) >> 1)
        {
          sub_1BF8DCEAC();
          v11 = v14;
        }

        *(v11 + 16) = v12 + 1;
        sub_1BF8C192C((v0 + 208), (v11 + 32 * v12 + 32));
      }

      else
      {
        sub_1BF8EE3F8(v0 + 240, &qword_1EBDE9208, &unk_1BF9C2A50);
      }

      v10 += 32;
      --v8;
    }

    while (v8);
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_4();

  return v15(v11);
}

uint64_t sub_1BF9A4C48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA6A8, &qword_1BF9C9030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF9A4CB8(uint64_t a1)
{
  sub_1BF8D2004(a1, v3);
  swift_beginAccess();
  sub_1BF9A43CC(v3, v1 + 144);
  return swift_endAccess();
}

uint64_t DelegatingResolver.deinit()
{

  sub_1BF8EE3F8(v0 + 144, &qword_1EBDEA6A8, &qword_1BF9C9030);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DelegatingResolver.__deallocating_deinit()
{
  DelegatingResolver.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BF9A4DDC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BF9A4E74;

  return sub_1BF9A443C(v4, a2);
}

uint64_t sub_1BF9A4E74()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  OUTLINED_FUNCTION_4();

  return v5(v2);
}

uint64_t sub_1BF9A4F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BF8C187C(a4, a1);

  return a2;
}

uint64_t sub_1BF9A4FA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BF9A4F60((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t dispatch thunk of DelegatingResolver.resolveParameter(parameter:suggestion:interaction:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 168) + **(*v4 + 168));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1BF9A4E74;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_1BF9A51A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1BF9A51E4@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_1BF8C187C(*(v3 + 56) + 32 * v10, v18);
    *&v19 = v13;
    *(&v19 + 1) = v12;
    sub_1BF8C192C(v18, &v20);

    v15 = *(&v19 + 1);
    v16 = v19;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v15)
    {
      v17 = v1[5];
      *&v18[0] = v16;
      *(&v18[0] + 1) = v15;
      v18[1] = v20;
      v18[2] = v21;
      v17(v18);
      return sub_1BF8EE3F8(v18, &unk_1EBDE9600, &qword_1BF9C9160);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v15 = 0;
        v16 = 0;
        v9 = 0;
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

void OUTLINED_FUNCTION_6_21()
{

  sub_1BF969CB0(5, 0, 0, 0, 2);
}

void sub_1BF9A5358(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  v30 = a3;

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
LABEL_8:
    while (1)
    {
      v12 = __clz(__rbit64(v7)) | (v9 << 6);
      v13 = (*(v30 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v30 + 56) + 8 * v12);
      v29[0] = *v13;
      v29[1] = v14;
      v29[2] = v15;

      a1(&v25, v29);
      if (v3)
      {
        break;
      }

      v16 = v26;
      if (v26)
      {
        v23 = v27;
        v21 = v25;
        v22 = v28;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BF8DD964();
          v10 = v19;
        }

        v17 = *(v10 + 16);
        if (v17 >= *(v10 + 24) >> 1)
        {
          sub_1BF8DD964();
          v10 = v20;
        }

        *(v10 + 16) = v17 + 1;
        v18 = (v10 + 32 * v17);
        v18[4] = v21;
        v18[5] = v16;
        v18[6] = v23;
        v18[7] = v22;
      }

      v7 &= v7 - 1;
      if (!v7)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return;
      }

      v7 = *(v4 + 8 * v11);
      ++v9;
      if (v7)
      {
        v9 = v11;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1BF9A554C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE92B0, &qword_1BF9C9210);
    v3 = sub_1BF9B5478();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1BF9A6934(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t SimpleActionKeyMapper.__allocating_init(actionId:loggingParamsIdTransformer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = OBJC_IVAR____TtC18SiriSuggestionsKit21SimpleActionKeyMapper_loggingParamsIdTransformer;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA2D0, &unk_1BF9C5540);
  OUTLINED_FUNCTION_13();
  (*(v8 + 32))(v6 + v7, a3);
  return v6;
}

uint64_t sub_1BF9A569C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  return SimpleActionKeyMapper.map(suggestion:resolvedParams:associatedAppId:)(a1, a2, v4, a3);
}

uint64_t ActionKeyMapper.map(suggestion:resolvedParams:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  return (*(a4 + 8))(a1, a2, v5, a3);
}

uint64_t static ActionKeyMappers.simpleActionKeyMapper(actionId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA2D0, &unk_1BF9C5540);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96F8, &qword_1BF9BF440);
  sub_1BF9B4598();
  v10 = type metadata accessor for SimpleActionKeyMapper(0);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  (*(v7 + 32))(v11 + OBJC_IVAR____TtC18SiriSuggestionsKit21SimpleActionKeyMapper_loggingParamsIdTransformer, v9, v6);
  a3[3] = v10;
  a3[4] = &protocol witness table for SimpleActionKeyMapper;
  *a3 = v11;
}

uint64_t sub_1BF9A586C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = v3;
  a2[1] = v2;
}

uint64_t SimpleActionKeyMapper.init(actionId:loggingParamsIdTransformer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v5 = OBJC_IVAR____TtC18SiriSuggestionsKit21SimpleActionKeyMapper_loggingParamsIdTransformer;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA2D0, &unk_1BF9C5540);
  OUTLINED_FUNCTION_13();
  (*(v6 + 32))(v3 + v5, a3);
  return v3;
}

uint64_t type metadata accessor for SimpleActionKeyMapper(uint64_t a1)
{
  result = qword_1EDBF25D0;
  if (!qword_1EDBF25D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SimpleActionKeyMapper.map(suggestion:resolvedParams:associatedAppId:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a3;
  v7 = a3[1];
  v9 = *(a3 + 16);
  v10 = sub_1BF9A5A7C(a1, a2, v4 + OBJC_IVAR____TtC18SiriSuggestionsKit21SimpleActionKeyMapper_loggingParamsIdTransformer);
  if (*(v4 + 24))
  {
    v11 = *(v4 + 16);
    v12 = *(v4 + 24);
  }

  else
  {
    v11 = *a1;
    v12 = a1[1];
  }

  MEMORY[0x1BFB5DE90](v11, v12);

  *a4 = 0;
  *(a4 + 8) = 0xE000000000000000;
  *(a4 + 16) = v10;

  v13 = sub_1BF8C482C(0, 0xE000000000000000, v10);
  v15 = v14;

  *(a4 + 24) = v13;
  *(a4 + 32) = v15;
  *(a4 + 40) = v8;
  *(a4 + 48) = v7;
  *(a4 + 56) = v9;
  return result;
}

uint64_t sub_1BF9A5A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 96);
  v7[2] = a2;
  v7[3] = a3;
  sub_1BF9A5358(sub_1BF9A6914, v7, v3);
  v5 = sub_1BF9871F4(v4);

  return sub_1BF9A554C(v5);
}

void sub_1BF9A5AF4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *a1;
  v8 = a1[1];

  sub_1BF925088(v7, v8, a2, v34);
  sub_1BF8DFB90(v34, &v31, &qword_1EBDE9208, &unk_1BF9C2A50);
  if (!v32)
  {
    sub_1BF8DFBF0(v34, &qword_1EBDE9208, &unk_1BF9C2A50);

    v9 = &v31;
LABEL_5:
    sub_1BF8DFBF0(v9, &qword_1EBDE9208, &unk_1BF9C2A50);
    goto LABEL_14;
  }

  sub_1BF8C192C(&v31, v33);
  sub_1BF8C187C(v33, &v31);
  type metadata accessor for ResolvableParameter(0);
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_1(v33);
    sub_1BF8DFBF0(v34, &qword_1EBDE9208, &unk_1BF9C2A50);

LABEL_14:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1A8, &qword_1BF9C4670);
  v10 = sub_1BF9B45A8();
  v10(&v31, v33);
  if (v4)
  {

    __swift_destroy_boxed_opaque_existential_1(v33);
    sub_1BF8DFBF0(v34, &qword_1EBDE9208, &unk_1BF9C2A50);
    if (qword_1EDBF5568 != -1)
    {
      swift_once();
    }

    v12 = sub_1BF9B47C8();
    __swift_project_value_buffer(v12, qword_1EDBF5570);

    v13 = v4;
    v14 = sub_1BF9B47A8();
    v15 = sub_1BF9B5048();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v35 = a3;
      v17 = v16;
      v18 = swift_slowAlloc();
      *&v34[0] = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_1BF8DE810(v7, v8, v34);
      *(v17 + 12) = 2080;
      *&v33[0] = v4;
      v19 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E30, &unk_1BF9B9B10);
      v20 = sub_1BF9B4B08();
      v22 = sub_1BF8DE810(v20, v21, v34);

      *(v17 + 14) = v22;
      _os_log_impl(&dword_1BF8B8000, v14, v15, "Unable to transform param: %s to logging equivalent: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB5F320](v18, -1, -1);
      v23 = v17;
      a3 = v35;
      MEMORY[0x1BFB5F320](v23, -1, -1);
    }

    else
    {
    }

    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA2D0, &unk_1BF9C5540);
  v11 = sub_1BF9B45A8();
  *&v30[0] = v7;
  *(&v30[0] + 1) = v8;
  v11(&v28, v30);

  v24 = v28;
  sub_1BF8DFB90(&v31, &v28, &qword_1EBDE9208, &unk_1BF9C2A50);
  if (!v29)
  {

    sub_1BF8DFBF0(&v31, &qword_1EBDE9208, &unk_1BF9C2A50);
    __swift_destroy_boxed_opaque_existential_1(v33);
    sub_1BF8DFBF0(v34, &qword_1EBDE9208, &unk_1BF9C2A50);
    v9 = &v28;
    goto LABEL_5;
  }

  sub_1BF8C192C(&v28, v30);
  if (!*(&v24 + 1))
  {

    __swift_destroy_boxed_opaque_existential_1(v30);
    sub_1BF8DFBF0(&v31, &qword_1EBDE9208, &unk_1BF9C2A50);
    __swift_destroy_boxed_opaque_existential_1(v33);
    v9 = v34;
    goto LABEL_5;
  }

  sub_1BF9A604C(v30, &v28);
  v25 = sub_1BF9B4B08();
  v27 = v26;

  __swift_destroy_boxed_opaque_existential_1(v30);
  sub_1BF8DFBF0(&v31, &qword_1EBDE9208, &unk_1BF9C2A50);
  __swift_destroy_boxed_opaque_existential_1(v33);
  sub_1BF8DFBF0(v34, &qword_1EBDE9208, &unk_1BF9C2A50);
  *a3 = v24;
  *(a3 + 16) = v25;
  *(a3 + 24) = v27;
}

_OWORD *sub_1BF9A604C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v38 = a2;
  v3 = sub_1BF9B5808();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA6B0, &qword_1BF9C9218);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA6B8, &qword_1BF9C9220);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v32[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v32[-v15];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v32[-v17];
  v19 = sub_1BF9B5838();
  v36 = *(v19 - 8);
  v37 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(&v42 + 1) = MEMORY[0x1E69E7CA0] + 8;
  *&v41 = swift_allocObject();
  v35 = a1;
  sub_1BF8C187C(a1, v41 + 16);
  sub_1BF9B57F8();
  sub_1BF9B5818();
  (*(v4 + 104))(v16, *MEMORY[0x1E69E75C0], v3);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v3);
  v22 = *(v7 + 56);
  sub_1BF8DFB90(v18, v9, &qword_1EBDEA6B8, &qword_1BF9C9220);
  sub_1BF8DFB90(v16, v9 + v22, &qword_1EBDEA6B8, &qword_1BF9C9220);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
  {
    sub_1BF8DFBF0(v16, &qword_1EBDEA6B8, &qword_1BF9C9220);
    sub_1BF8DFBF0(v18, &qword_1EBDEA6B8, &qword_1BF9C9220);
    if (__swift_getEnumTagSinglePayload(v9 + v22, 1, v3) == 1)
    {
      sub_1BF8DFBF0(v9, &qword_1EBDEA6B8, &qword_1BF9C9220);
LABEL_8:
      v28 = sub_1BF9B5828();
      sub_1BF8F04F8(v28, &v41);

      if (*(&v43 + 1))
      {
        (*(v36 + 8))(v21, v37);
        v39 = v41;
        v40[0] = v42;
        v40[1] = v43;

        return sub_1BF8C192C(v40, v38);
      }

      v23 = &unk_1EBDEA6C0;
      v24 = &unk_1BF9C9228;
      v25 = &v41;
      goto LABEL_11;
    }

LABEL_6:
    v23 = &qword_1EBDEA6B0;
    v24 = &qword_1BF9C9218;
    v25 = v9;
LABEL_11:
    sub_1BF8DFBF0(v25, v23, v24);
    goto LABEL_12;
  }

  sub_1BF8DFB90(v9, v13, &qword_1EBDEA6B8, &qword_1BF9C9220);
  if (__swift_getEnumTagSinglePayload(v9 + v22, 1, v3) == 1)
  {
    sub_1BF8DFBF0(v16, &qword_1EBDEA6B8, &qword_1BF9C9220);
    sub_1BF8DFBF0(v18, &qword_1EBDEA6B8, &qword_1BF9C9220);
    (*(v4 + 8))(v13, v3);
    goto LABEL_6;
  }

  v26 = v34;
  (*(v4 + 32))(v34, v9 + v22, v3);
  v33 = sub_1BF9B4A88();
  v27 = *(v4 + 8);
  v27(v26, v3);
  sub_1BF8DFBF0(v16, &qword_1EBDEA6B8, &qword_1BF9C9220);
  sub_1BF8DFBF0(v18, &qword_1EBDEA6B8, &qword_1BF9C9220);
  v27(v13, v3);
  sub_1BF8DFBF0(v9, &qword_1EBDEA6B8, &qword_1BF9C9220);
  if (v33)
  {
    goto LABEL_8;
  }

LABEL_12:
  v30 = v38;
  v38[3] = MEMORY[0x1E69E7CA0] + 8;
  v31 = swift_allocObject();
  *v30 = v31;
  sub_1BF8C187C(v35, v31 + 16);
  return (*(v36 + 8))(v21, v37);
}

uint64_t SimpleActionKeyMapper.deinit()
{

  v1 = OBJC_IVAR____TtC18SiriSuggestionsKit21SimpleActionKeyMapper_loggingParamsIdTransformer;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA2D0, &unk_1BF9C5540);
  OUTLINED_FUNCTION_13();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t SimpleActionKeyMapper.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC18SiriSuggestionsKit21SimpleActionKeyMapper_loggingParamsIdTransformer;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA2D0, &unk_1BF9C5540);
  OUTLINED_FUNCTION_13();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

_BYTE *storeEnumTagSinglePayload for ActionKeyMappers(_BYTE *result, int a2, int a3)
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

void sub_1BF9A67E0(uint64_t a1)
{
  sub_1BF9A68A8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BF9A68A8(uint64_t a1)
{
  if (!qword_1EDBF3F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE96F8, &qword_1BF9BF440);
    v1 = sub_1BF9B45B8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBF3F50);
    }
  }
}

uint64_t sub_1BF9A6934(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v29 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v29 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v31 = v4;
    v7 = *(i - 3);
    v6 = *(i - 2);
    v8 = *(i - 1);
    v9 = *i;
    v10 = *a3;

    v12 = sub_1BF8C2E64(v7, v6);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_17;
    }

    v15 = v11;
    if (v10[3] >= v13 + v14)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA2F0, &unk_1BF9C5570);
        sub_1BF9B53B8();
      }
    }

    else
    {
      sub_1BF95BE84();
      v16 = sub_1BF8C2E64(v7, v6);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_19;
      }

      v12 = v16;
    }

    v18 = *a3;
    if (v15)
    {
      v19 = (v18[7] + 16 * v12);
      v21 = *v19;
      v20 = v19[1];

      v22 = (v18[7] + 16 * v12);
      *v22 = v21;
      v22[1] = v20;
    }

    else
    {
      v18[(v12 >> 6) + 8] |= 1 << v12;
      v23 = (v18[6] + 16 * v12);
      *v23 = v7;
      v23[1] = v6;
      v24 = (v18[7] + 16 * v12);
      *v24 = v8;
      v24[1] = v9;
      v25 = v18[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_18;
      }

      v18[2] = v27;
    }

    v4 = v31 + 1;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1BF9B5758();
  __break(1u);
  return result;
}

uint64_t sub_1BF9A6B24(uint64_t a1, char a2)
{
  sub_1BF9B4B48();
}

uint64_t SuggestionGroup.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(a2, a3);
  sub_1BF9B4B48();
}

uint64_t sub_1BF9A6C64(unsigned __int8 a1, char a2)
{
  v2 = 0x6E69616D6F44;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x6E69616D6F44;
  switch(v4)
  {
    case 1:
      v5 = 0x6D6574737953;
      break;
    case 2:
      v3 = 0xE300000000000000;
      v5 = 7368769;
      break;
    case 3:
      v5 = 0x656369766544;
      break;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1701736270;
      break;
    case 5:
      v5 = 0x7261506472696854;
      v3 = 0xEA00000000007974;
      break;
    case 6:
      v3 = 0xE400000000000000;
      v5 = 1819242324;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6D6574737953;
      break;
    case 2:
      v6 = 0xE300000000000000;
      v2 = 7368769;
      break;
    case 3:
      v2 = 0x656369766544;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v2 = 1701736270;
      break;
    case 5:
      v2 = 0x7261506472696854;
      v6 = 0xEA00000000007974;
      break;
    case 6:
      v6 = 0xE400000000000000;
      v2 = 1819242324;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BF9B56D8();
  }

  return v8 & 1;
}

uint64_t static SuggestionGroup.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = v6(a3, a4);
  v9 = v8;
  if (v7 == v6(a3, a4) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1BF9B56D8();
  }

  return v12 & 1;
}

Swift::String __swiftcall CoreSuggestionGroups.getName()()
{
  v1 = 0xE600000000000000;
  v2 = 0x6E69616D6F44;
  switch(*v0)
  {
    case 1:
      v2 = 0x6D6574737953;
      break;
    case 2:
      v1 = 0xE300000000000000;
      v2 = 7368769;
      break;
    case 3:
      v2 = 0x656369766544;
      break;
    case 4:
      v1 = 0xE400000000000000;
      v2 = 1701736270;
      break;
    case 5:
      v1 = 0xEA00000000007974;
      v2 = 0x7261506472696854;
      break;
    case 6:
      v1 = 0xE400000000000000;
      v2 = 1819242324;
      break;
    default:
      break;
  }

  result._object = v1;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_1BF9A6F5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D6574737973 && a2 == 0xE600000000000000;
    if (v6 || (sub_1BF9B56D8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 7368801 && a2 == 0xE300000000000000;
      if (v7 || (sub_1BF9B56D8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656369766564 && a2 == 0xE600000000000000;
        if (v8 || (sub_1BF9B56D8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1701736302 && a2 == 0xE400000000000000;
          if (v9 || (sub_1BF9B56D8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7261506472696874 && a2 == 0xEA00000000007974;
            if (v10 || (sub_1BF9B56D8() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 1819242356 && a2 == 0xE400000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_1BF9B56D8();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1BF9A7198(char a1)
{
  result = 0x6E69616D6F64;
  switch(a1)
  {
    case 1:
      result = 0x6D6574737973;
      break;
    case 2:
      result = 7368801;
      break;
    case 3:
      result = 0x656369766564;
      break;
    case 4:
      result = 1701736302;
      break;
    case 5:
      result = 0x7261506472696874;
      break;
    case 6:
      result = 1819242356;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF9A723C(uint64_t a1)
{
  v2 = sub_1BF9A7DC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9A7278(uint64_t a1)
{
  v2 = sub_1BF9A7DC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF9A72D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF9A6F5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF9A72FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF9A7190();
  *a1 = result;
  return result;
}

uint64_t sub_1BF9A7324(uint64_t a1)
{
  v2 = sub_1BF9A7C20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9A7360(uint64_t a1)
{
  v2 = sub_1BF9A7C20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF9A739C(uint64_t a1)
{
  v2 = sub_1BF9A7D70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9A73D8(uint64_t a1)
{
  v2 = sub_1BF9A7D70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF9A7414(uint64_t a1)
{
  v2 = sub_1BF9A7E6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9A7450(uint64_t a1)
{
  v2 = sub_1BF9A7E6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF9A748C(uint64_t a1)
{
  v2 = sub_1BF9A7D1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9A74C8(uint64_t a1)
{
  v2 = sub_1BF9A7D1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF9A7504(uint64_t a1)
{
  v2 = sub_1BF9A7E18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9A7540(uint64_t a1)
{
  v2 = sub_1BF9A7E18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF9A757C(uint64_t a1)
{
  v2 = sub_1BF9A7CC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9A75B8(uint64_t a1)
{
  v2 = sub_1BF9A7CC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF9A75F4(uint64_t a1)
{
  v2 = sub_1BF9A7C74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9A7630(uint64_t a1)
{
  v2 = sub_1BF9A7C74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreSuggestionGroups.encode(to:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA6C8, &qword_1BF9C9230);
  OUTLINED_FUNCTION_1();
  v62 = v5;
  v63 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v61 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA6D0, &qword_1BF9C9238);
  OUTLINED_FUNCTION_1();
  v59 = v9;
  v60 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12();
  v58 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA6D8, &qword_1BF9C9240);
  OUTLINED_FUNCTION_1();
  v56 = v13;
  v57 = v12;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_12();
  v55 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA6E0, &qword_1BF9C9248);
  OUTLINED_FUNCTION_1();
  v53 = v17;
  v54 = v16;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_12();
  v52 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA6E8, &qword_1BF9C9250);
  OUTLINED_FUNCTION_1();
  v50 = v21;
  v51 = v20;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_12();
  v49 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA6F0, &qword_1BF9C9258);
  OUTLINED_FUNCTION_1();
  v47 = v25;
  v48 = v24;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v45 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA6F8, &qword_1BF9C9260);
  OUTLINED_FUNCTION_1();
  v46 = v30;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v45 - v32;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA700, &qword_1BF9C9268);
  OUTLINED_FUNCTION_1();
  v35 = v34;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v45 - v37;
  v39 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF9A7C20();
  sub_1BF9B5898();
  v40 = (v35 + 8);
  switch(v39)
  {
    case 1:
      v66 = 1;
      sub_1BF9A7E18();
      OUTLINED_FUNCTION_2_32(&type metadata for CoreSuggestionGroups.SystemCodingKeys, &v66);
      v44 = v47;
      v43 = v48;
      goto LABEL_9;
    case 2:
      v67 = 2;
      sub_1BF9A7DC4();
      v28 = v49;
      OUTLINED_FUNCTION_2_32(&type metadata for CoreSuggestionGroups.AppCodingKeys, &v67);
      v44 = v50;
      v43 = v51;
      goto LABEL_9;
    case 3:
      v68 = 3;
      sub_1BF9A7D70();
      v28 = v52;
      OUTLINED_FUNCTION_2_32(&type metadata for CoreSuggestionGroups.DeviceCodingKeys, &v68);
      v44 = v53;
      v43 = v54;
      goto LABEL_9;
    case 4:
      v69 = 4;
      sub_1BF9A7D1C();
      v28 = v55;
      OUTLINED_FUNCTION_2_32(&type metadata for CoreSuggestionGroups.NoneCodingKeys, &v69);
      v44 = v56;
      v43 = v57;
      goto LABEL_9;
    case 5:
      v70 = 5;
      sub_1BF9A7CC8();
      v28 = v58;
      OUTLINED_FUNCTION_2_32(&type metadata for CoreSuggestionGroups.ThirdPartyCodingKeys, &v70);
      v44 = v59;
      v43 = v60;
      goto LABEL_9;
    case 6:
      v71 = 6;
      sub_1BF9A7C74();
      v28 = v61;
      OUTLINED_FUNCTION_2_32(&type metadata for CoreSuggestionGroups.ToolCodingKeys, &v71);
      v44 = v62;
      v43 = v63;
LABEL_9:
      (*(v44 + 8))(v28, v43);
      result = (*v40)(v38, v29);
      break;
    default:
      v65 = 0;
      sub_1BF9A7E6C();
      v41 = v64;
      sub_1BF9B5598();
      (*(v46 + 8))(v33, v29);
      result = (*v40)(v38, v41);
      break;
  }

  return result;
}

unint64_t sub_1BF9A7C20()
{
  result = qword_1EDBF4F78[0];
  if (!qword_1EDBF4F78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBF4F78);
  }

  return result;
}

unint64_t sub_1BF9A7C74()
{
  result = qword_1EBDEA708;
  if (!qword_1EBDEA708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA708);
  }

  return result;
}

unint64_t sub_1BF9A7CC8()
{
  result = qword_1EBDEA710;
  if (!qword_1EBDEA710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA710);
  }

  return result;
}

unint64_t sub_1BF9A7D1C()
{
  result = qword_1EDBF4F50;
  if (!qword_1EDBF4F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4F50);
  }

  return result;
}

unint64_t sub_1BF9A7D70()
{
  result = qword_1EBDEA718;
  if (!qword_1EBDEA718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA718);
  }

  return result;
}

unint64_t sub_1BF9A7DC4()
{
  result = qword_1EBDEA720;
  if (!qword_1EBDEA720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA720);
  }

  return result;
}

unint64_t sub_1BF9A7E18()
{
  result = qword_1EDBF4218;
  if (!qword_1EDBF4218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4218);
  }

  return result;
}

unint64_t sub_1BF9A7E6C()
{
  result = qword_1EBDEA728;
  if (!qword_1EBDEA728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA728);
  }

  return result;
}

uint64_t CoreSuggestionGroups.hashValue.getter()
{
  v1 = *v0;
  sub_1BF9B57A8();
  sub_1BF9A6B24(v3, v1);
  return sub_1BF9B57E8();
}

uint64_t CoreSuggestionGroups.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v84 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA730, &qword_1BF9C9270);
  OUTLINED_FUNCTION_1();
  v80 = v3;
  v81 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v87 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA738, &qword_1BF9C9278);
  OUTLINED_FUNCTION_1();
  v78 = v7;
  v79 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12();
  v86 = v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA740, &qword_1BF9C9280);
  OUTLINED_FUNCTION_1();
  v77 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_12();
  v83 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA748, &qword_1BF9C9288);
  OUTLINED_FUNCTION_1();
  v75 = v15;
  v76 = v14;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_12();
  v82 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA750, &qword_1BF9C9290);
  OUTLINED_FUNCTION_1();
  v73 = v19;
  v74 = v18;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_12();
  v85 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA758, &qword_1BF9C9298);
  OUTLINED_FUNCTION_1();
  v70 = v23;
  v71 = v22;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v64 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA760, &qword_1BF9C92A0);
  OUTLINED_FUNCTION_1();
  v69 = v28;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v29);
  v31 = v64 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA768, &unk_1BF9C92A8);
  OUTLINED_FUNCTION_1();
  v34 = v33;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v35);
  v37 = v64 - v36;
  v38 = a1[3];
  v88 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v38);
  sub_1BF9A7C20();
  v39 = v89;
  sub_1BF9B5868();
  if (v39)
  {
    return __swift_destroy_boxed_opaque_existential_1(v88);
  }

  v67 = v31;
  v66 = v27;
  v68 = v26;
  v41 = v85;
  v40 = v86;
  v42 = v87;
  v89 = v32;
  sub_1BF9B5568();
  result = sub_1BF8D21BC();
  if (v45 == v46 >> 1)
  {
    goto LABEL_7;
  }

  v64[1] = 0;
  if (v45 >= (v46 >> 1))
  {
    __break(1u);
    return result;
  }

  v65 = *(v44 + v45);
  sub_1BF8D21AC();
  v48 = v47;
  v50 = v49;
  swift_unknownObjectRelease();
  if (v48 != v50 >> 1)
  {
LABEL_7:
    v55 = v37;
    v56 = sub_1BF9B5308();
    swift_allocError();
    v58 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8310, &qword_1BF9B6400);
    *v58 = &type metadata for CoreSuggestionGroups;
    v59 = v89;
    sub_1BF9B54B8();
    sub_1BF9B52F8();
    (*(*(v56 - 8) + 104))(v58, *MEMORY[0x1E69E6AF8], v56);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v34 + 8))(v55, v59);
    return __swift_destroy_boxed_opaque_existential_1(v88);
  }

  v51 = v34;
  v52 = v84;
  v53 = v89;
  switch(v65)
  {
    case 1:
      v91 = 1;
      sub_1BF9A7E18();
      v42 = v68;
      OUTLINED_FUNCTION_1_30(&type metadata for CoreSuggestionGroups.SystemCodingKeys, &v91);
      swift_unknownObjectRelease();
      v62 = v70;
      v61 = v71;
      goto LABEL_15;
    case 2:
      v92 = 2;
      sub_1BF9A7DC4();
      OUTLINED_FUNCTION_1_30(&type metadata for CoreSuggestionGroups.AppCodingKeys, &v92);
      swift_unknownObjectRelease();
      (*(v73 + 8))(v41, v74);
      break;
    case 3:
      v93 = 3;
      sub_1BF9A7D70();
      v42 = v82;
      OUTLINED_FUNCTION_1_30(&type metadata for CoreSuggestionGroups.DeviceCodingKeys, &v93);
      swift_unknownObjectRelease();
      v62 = v75;
      v61 = v76;
      goto LABEL_15;
    case 4:
      v94 = 4;
      sub_1BF9A7D1C();
      v60 = v83;
      OUTLINED_FUNCTION_1_30(&type metadata for CoreSuggestionGroups.NoneCodingKeys, &v94);
      swift_unknownObjectRelease();
      (*(v77 + 8))(v60, v72);
      break;
    case 5:
      v95 = 5;
      sub_1BF9A7CC8();
      OUTLINED_FUNCTION_1_30(&type metadata for CoreSuggestionGroups.ThirdPartyCodingKeys, &v95);
      swift_unknownObjectRelease();
      (*(v79 + 8))(v40, v78);
      break;
    case 6:
      v96 = 6;
      sub_1BF9A7C74();
      OUTLINED_FUNCTION_1_30(&type metadata for CoreSuggestionGroups.ToolCodingKeys, &v96);
      swift_unknownObjectRelease();
      v61 = v80;
      v62 = v81;
LABEL_15:
      (*(v62 + 8))(v42, v61);
      break;
    default:
      v90 = 0;
      sub_1BF9A7E6C();
      v54 = v67;
      OUTLINED_FUNCTION_1_30(&type metadata for CoreSuggestionGroups.DomainCodingKeys, &v90);
      swift_unknownObjectRelease();
      (*(v69 + 8))(v54, v66);
      break;
  }

  (*(v51 + 8))(v37, v53);
  v63 = v88;
  *v52 = v65;
  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t sub_1BF9A875C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1BF9B57A8();
  a4(v8, v6);
  return sub_1BF9B57E8();
}

unint64_t sub_1BF9A87F0()
{
  result = qword_1EBDEA770;
  if (!qword_1EBDEA770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA770);
  }

  return result;
}

unint64_t sub_1BF9A8844(uint64_t a1)
{
  *(a1 + 8) = sub_1BF9A8874();
  result = sub_1BF9A88C8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1BF9A8874()
{
  result = qword_1EDBF4EE0;
  if (!qword_1EDBF4EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4EE0);
  }

  return result;
}

unint64_t sub_1BF9A88C8()
{
  result = qword_1EDBF4EE8;
  if (!qword_1EDBF4EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4EE8);
  }

  return result;
}

unint64_t sub_1BF9A8920()
{
  result = qword_1EBDEA778;
  if (!qword_1EBDEA778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDEA780, &qword_1BF9C9340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA778);
  }

  return result;
}

uint64_t sub_1BF9A89A8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1BF9A8A30(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BF9A8B80()
{
  result = qword_1EBDEA788;
  if (!qword_1EBDEA788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA788);
  }

  return result;
}

unint64_t sub_1BF9A8BD8()
{
  result = qword_1EDBF4F10;
  if (!qword_1EDBF4F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4F10);
  }

  return result;
}

unint64_t sub_1BF9A8C30()
{
  result = qword_1EDBF4F18;
  if (!qword_1EDBF4F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4F18);
  }

  return result;
}

unint64_t sub_1BF9A8C88()
{
  result = qword_1EDBF4F00;
  if (!qword_1EDBF4F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4F00);
  }

  return result;
}

unint64_t sub_1BF9A8CE0()
{
  result = qword_1EDBF4F08;
  if (!qword_1EDBF4F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4F08);
  }

  return result;
}

unint64_t sub_1BF9A8D38()
{
  result = qword_1EDBF4F58;
  if (!qword_1EDBF4F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4F58);
  }

  return result;
}

unint64_t sub_1BF9A8D90()
{
  result = qword_1EDBF4F60;
  if (!qword_1EDBF4F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4F60);
  }

  return result;
}

unint64_t sub_1BF9A8DE8()
{
  result = qword_1EDBF4F20;
  if (!qword_1EDBF4F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4F20);
  }

  return result;
}

unint64_t sub_1BF9A8E40()
{
  result = qword_1EDBF4F28;
  if (!qword_1EDBF4F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4F28);
  }

  return result;
}

unint64_t sub_1BF9A8E98()
{
  result = qword_1EDBF4F40;
  if (!qword_1EDBF4F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4F40);
  }

  return result;
}

unint64_t sub_1BF9A8EF0()
{
  result = qword_1EDBF4F48;
  if (!qword_1EDBF4F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4F48);
  }

  return result;
}

unint64_t sub_1BF9A8F48()
{
  result = qword_1EDBF4EF0;
  if (!qword_1EDBF4EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4EF0);
  }

  return result;
}

unint64_t sub_1BF9A8FA0()
{
  result = qword_1EDBF4EF8;
  if (!qword_1EDBF4EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4EF8);
  }

  return result;
}

unint64_t sub_1BF9A8FF8()
{
  result = qword_1EDBF4F30;
  if (!qword_1EDBF4F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4F30);
  }

  return result;
}

unint64_t sub_1BF9A9050()
{
  result = qword_1EDBF4F38;
  if (!qword_1EDBF4F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4F38);
  }

  return result;
}

unint64_t sub_1BF9A90A8()
{
  result = qword_1EDBF4F68;
  if (!qword_1EDBF4F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4F68);
  }

  return result;
}

unint64_t sub_1BF9A9100()
{
  result = qword_1EDBF4F70;
  if (!qword_1EDBF4F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4F70);
  }

  return result;
}

void sub_1BF9A915C(void (*a1)(void **, uint64_t *)@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X8>)
{
  if (a5 == -1)
  {
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = -1;
  }

  else
  {
    v8 = a2;
    v9 = a3;
    v10 = a4;
    v11 = a5;
    sub_1BF90DA94(a2, a3, a4, a5);
    a1(&v8, &v7);
    sub_1BF90D8B8(v8, v9, v10, v11);
  }
}

uint64_t sub_1BF9A9210(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1BF9B4B78();
    v3 = sub_1BF9B4C58();

    return v3;
  }

  return result;
}

uint64_t static SuggestionTransformers.passthroughParameterForLogging()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9208, &unk_1BF9C2A50);
  OUTLINED_FUNCTION_7_24();

  return sub_1BF9B4598();
}

uint64_t static SuggestionTransformers.removeParameterFromLogging()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9208, &unk_1BF9C2A50);
  OUTLINED_FUNCTION_1_31();

  return sub_1BF9B4598();
}

uint64_t static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)()
{
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_1_8();
  v4 = swift_allocObject();
  v4[2] = v0;
  v4[3] = v2;
  v4[4] = v1;
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1C0, qword_1BF9C4690);
  OUTLINED_FUNCTION_0_32();
  v3[4] = sub_1BF991690(v5, &qword_1EBDEA1C0, qword_1BF9C4690, v6);
  *v3 = &unk_1BF9C9A60;
  v3[1] = v4;
}

uint64_t static SuggestionTransformers.ignoreIntentValue()@<X0>(void *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1C0, qword_1BF9C4690);
  OUTLINED_FUNCTION_0_32();
  result = sub_1BF991690(v2, &qword_1EBDEA1C0, qword_1BF9C4690, v3);
  a1[4] = result;
  *a1 = &unk_1BF9C9A70;
  a1[1] = 0;
  return result;
}

uint64_t ResolvableParameter.typeIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ResolvableParameter.loggingKeyTransformer.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18SiriSuggestionsKit19ResolvableParameter_loggingKeyTransformer;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1A8, &qword_1BF9C4670);
  OUTLINED_FUNCTION_13();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

void ResolvableParameter.__allocating_init(typeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_65_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1A8, &qword_1BF9C4670);
  OUTLINED_FUNCTION_1();
  v28 = v27;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9208, &unk_1BF9C2A50);
  OUTLINED_FUNCTION_1_31();
  sub_1BF9B4598();
  v32 = swift_allocObject();
  v33 = (v32 + OBJC_IVAR____TtC18SiriSuggestionsKit19ResolvableParameter_intentTransformer);
  v33[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1C0, qword_1BF9C4690);
  OUTLINED_FUNCTION_0_32();
  v33[4] = sub_1BF991690(v34, &qword_1EBDEA1C0, qword_1BF9C4690, v35);
  *v33 = &unk_1BF9C9A70;
  v33[1] = 0;
  *(v32 + 16) = v25;
  *(v32 + 24) = v23;
  *(v32 + 32) = 1;
  (*(v28 + 32))(v32 + OBJC_IVAR____TtC18SiriSuggestionsKit19ResolvableParameter_loggingKeyTransformer, v31, v26);
  OUTLINED_FUNCTION_64();
}

void ResolvableParameter.__allocating_init(typeIdentifier:required:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_65_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1A8, &qword_1BF9C4670);
  OUTLINED_FUNCTION_1();
  v30 = v29;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9208, &unk_1BF9C2A50);
  OUTLINED_FUNCTION_1_31();
  sub_1BF9B4598();
  v34 = OUTLINED_FUNCTION_20_21();
  v35 = (v34 + OBJC_IVAR____TtC18SiriSuggestionsKit19ResolvableParameter_intentTransformer);
  v35[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1C0, qword_1BF9C4690);
  OUTLINED_FUNCTION_0_32();
  v35[4] = sub_1BF991690(v36, &qword_1EBDEA1C0, qword_1BF9C4690, v37);
  *v35 = &unk_1BF9C9A70;
  v35[1] = 0;
  *(v34 + 16) = v27;
  *(v34 + 24) = v25;
  *(v34 + 32) = v23;
  (*(v30 + 32))(v34 + OBJC_IVAR____TtC18SiriSuggestionsKit19ResolvableParameter_loggingKeyTransformer, v33, v28);
  OUTLINED_FUNCTION_64();
}

uint64_t ResolvableParameter.__allocating_init(typeIdentifier:required:loggingKeyTransformer:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_92();
  v9 = (v8 + OBJC_IVAR____TtC18SiriSuggestionsKit19ResolvableParameter_intentTransformer);
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1C0, qword_1BF9C4690);
  OUTLINED_FUNCTION_0_32();
  v9[4] = sub_1BF991690(v10, &qword_1EBDEA1C0, qword_1BF9C4690, v11);
  *v9 = &unk_1BF9C9A70;
  v9[1] = 0;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  v12 = OBJC_IVAR____TtC18SiriSuggestionsKit19ResolvableParameter_loggingKeyTransformer;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1A8, &qword_1BF9C4670);
  OUTLINED_FUNCTION_13();
  (*(v13 + 32))(v8 + v12, a4);
  return v8;
}

void ResolvableParameter.__allocating_init(typeIdentifier:required:intentTransformer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_65_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA790, &qword_1BF9C9A80);
  OUTLINED_FUNCTION_1();
  v26 = v25;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1A8, &qword_1BF9C4670);
  OUTLINED_FUNCTION_72(v30);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9208, &unk_1BF9C2A50);
  OUTLINED_FUNCTION_1_31();
  sub_1BF9B4598();
  (*(v26 + 16))(v29, v23, v24);
  OUTLINED_FUNCTION_20_21();
  ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:intentTransformer:)();
  (*(v26 + 8))(v23, v24);
  OUTLINED_FUNCTION_64();
}

uint64_t ResolvableParameter.__allocating_init(typeIdentifier:required:loggingKeyTransformer:intentTransformer:)()
{
  OUTLINED_FUNCTION_6_22();
  v0 = OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_19_0();
  ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:intentTransformer:)();
  return v0;
}

void ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:intentTransformer:)()
{
  OUTLINED_FUNCTION_65_0();
  v2 = v1;
  v25 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA790, &qword_1BF9C9A80);
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  (*(v12 + 16))(&v25 - v14, v2, v10);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v10);
  *(v0 + 16) = v9;
  *(v0 + 24) = v7;
  *(v0 + 32) = v5;
  v18 = OBJC_IVAR____TtC18SiriSuggestionsKit19ResolvableParameter_loggingKeyTransformer;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1A8, &qword_1BF9C4670);
  v20 = *(v19 - 8);
  v21 = v0 + v18;
  v22 = v25;
  (*(v20 + 16))(v21, v25, v19);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1C0, qword_1BF9C4690);
  OUTLINED_FUNCTION_0_32();
  v28 = sub_1BF991690(v23, &qword_1EBDEA1C0, qword_1BF9C4690, v24);
  *&v26 = &unk_1BF9C9A90;
  *(&v26 + 1) = v17;
  (*(v12 + 8))(v2, v10);
  (*(v20 + 8))(v22, v19);
  sub_1BF8C2C9C(&v26, v0 + OBJC_IVAR____TtC18SiriSuggestionsKit19ResolvableParameter_intentTransformer);
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_64();
}

uint64_t sub_1BF9A9F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BF9A9FB8, 0, 0);
}

uint64_t sub_1BF9A9FB8()
{
  v17 = v0;
  v1 = *(v0 + 32);
  SiriSuggestions.Intent.toV1Representation()(v15);
  v3 = v15[0];
  v2 = v15[1];
  v4 = v15[2];
  v5 = v16;
  *(swift_task_alloc() + 16) = v1;
  sub_1BF9A915C(sub_1BF9ADC28, v3, v2, v4, v5, v13);
  v6 = OUTLINED_FUNCTION_33();
  sub_1BF9ADC48(v6, v7, v4, v5);

  v8 = *(v0 + 16);
  if (v14 == 255)
  {
    *v8 = 0u;
    *(v8 + 16) = 0u;
    v10 = 2;
  }

  else
  {
    v9 = v13[1];
    *v8 = v13[0];
    *(v8 + 16) = v9;
    v10 = v14;
  }

  *(v8 + 32) = v10;
  OUTLINED_FUNCTION_11_1();

  return v11();
}

uint64_t sub_1BF9AA0D8(__int128 *a1, uint64_t a2, void *a3)
{
  v9 = *a1;
  v5 = *(a1 + 2);
  v6 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA790, &qword_1BF9C9A80);
  v7 = sub_1BF9B45A8();
  v10 = v9;
  v11 = v5;
  v12 = v6;
  v7(&v10);

  if (v3)
  {
    *a3 = v3;
  }

  return result;
}

uint64_t static ResolvableParameter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF9B4668();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  if (*(a1 + 32) == *(a2 + 32) && (*(a1 + 16) == *(a2 + 16) ? (v12 = *(a1 + 24) == *(a2 + 24)) : (v12 = 0), v12 || (sub_1BF9B56D8() & 1) != 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1A8, &qword_1BF9C4670);
    sub_1BF9B4638();
    sub_1BF9B4638();
    v11 = sub_1BF9B4628();
    v13 = *(v6 + 8);
    v14 = OUTLINED_FUNCTION_33();
    v13(v14);
    (v13)(v10, v4);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t ResolvableParameter.deinit()
{

  v1 = OBJC_IVAR____TtC18SiriSuggestionsKit19ResolvableParameter_loggingKeyTransformer;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1A8, &qword_1BF9C4670);
  OUTLINED_FUNCTION_13();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18SiriSuggestionsKit19ResolvableParameter_intentTransformer));
  return v0;
}

uint64_t ResolvableParameter.__deallocating_deinit()
{
  ResolvableParameter.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

double sub_1BF9AA4A8@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t static SuggestionTransformers.validSetParametersForLogging<A>(validValues:)()
{
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_1_8();
  v3 = swift_allocObject();
  v3[2] = v1;
  v3[3] = v0;
  v3[4] = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9208, &unk_1BF9C2A50);
  OUTLINED_FUNCTION_7_24();

  return sub_1BF9B4598();
}

double sub_1BF9AA580@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19[1] = a4;
  v8 = sub_1BF9B50F8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v19 - v11;
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF8C187C(a1, v20);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v12, 0, 1, a3);
    v16 = *(v13 + 32);
    v16(v15, v12, a3);
    if (sub_1BF9B4FA8())
    {
      *(a5 + 24) = a3;
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a5);
      v16(boxed_opaque_existential_1Tm, v15, a3);
      return result;
    }

    (*(v13 + 8))(v15, a3);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, a3);
    (*(v9 + 8))(v12, v8);
  }

  result = 0.0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  return result;
}

uint64_t static SuggestionTransformers.hashParametersForLogging(numCharacters:)(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9208, &unk_1BF9C2A50);
  OUTLINED_FUNCTION_7_24();

  return sub_1BF9B4598();
}

void sub_1BF9AA854(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v53 = a3;
  v46 = a2;
  v52 = a4;
  v5 = sub_1BF9B4918();
  v58 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BF9B4908();
  v54 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v45 - v12;
  sub_1BF8C187C(a1, &v56);
  v14 = sub_1BF9B4B08();
  v16 = sub_1BF9AAD58(v14, v15);
  v18 = v17;
  sub_1BF9AD978(&qword_1EDBF3F98, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  sub_1BF9B48F8();
  sub_1BF8F9A50(v16, v18);
  v19 = v55;
  sub_1BF9ACED4(v16, v18, v7);
  v47 = v19;
  v48 = v18;
  v49 = v16;
  sub_1BF8F9F3C(v16, v18);
  sub_1BF9B48E8();
  (*(v58 + 8))(v7, v5);
  v20 = *(v54 + 16);
  v50 = v13;
  v20(v11, v13, v8);
  sub_1BF9AD978(qword_1EDBF3FA0, MEMORY[0x1E69663E0], MEMORY[0x1E69663F0]);
  v51 = v8;
  sub_1BF9B4C68();
  v22 = v56;
  v21 = v57;
  v23 = *(v56 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v57 == v23)
  {
LABEL_2:

    v56 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
    sub_1BF991690(&qword_1EDBF4E48, &qword_1EBDE88A0, &qword_1BF9B7FC0, MEMORY[0x1E69E6310]);
    v25 = sub_1BF9B4A78();
    v27 = v26;

    if (v53)
    {
      v29 = v51;
      v28 = v52;
      v52[3] = MEMORY[0x1E69E6158];
LABEL_16:
      sub_1BF8F9F3C(v49, v48);
      *v28 = v25;
      v28[1] = v27;
      (*(v54 + 8))(v50, v29);
      return;
    }

    v40 = v46;
    if ((v46 & 0x8000000000000000) == 0)
    {

      v41 = sub_1BF9A9210(v40, v25, v27);
      v42 = MEMORY[0x1BFB5DE30](v41);
      v44 = v43;

      v29 = v51;
      v28 = v52;
      v52[3] = MEMORY[0x1E69E6158];
      if (v44)
      {

        v25 = v42;
        v27 = v44;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v58 = v56 + 32;
    v55 = xmmword_1BF9B6370;
    v30 = v57;
    while ((v21 & 0x8000000000000000) == 0)
    {
      if (v30 >= *(v22 + 16))
      {
        goto LABEL_18;
      }

      v31 = *(v58 + v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA798, &unk_1BF9C9C88);
      v32 = swift_allocObject();
      *(v32 + 16) = v55;
      *(v32 + 56) = MEMORY[0x1E69E7508];
      *(v32 + 64) = MEMORY[0x1E69E7558];
      *(v32 + 32) = v31;
      v33 = sub_1BF9B4AD8();
      v35 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BF8DD6D4();
        v24 = v38;
      }

      v36 = *(v24 + 16);
      if (v36 >= *(v24 + 24) >> 1)
      {
        sub_1BF8DD6D4();
        v24 = v39;
      }

      ++v30;
      *(v24 + 16) = v36 + 1;
      v37 = v24 + 16 * v36;
      *(v37 + 32) = v33;
      *(v37 + 40) = v35;
      if (v23 == v30)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BF9AAD58(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v45 = *MEMORY[0x1E69E9840];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA7A0, &qword_1BF9C9C98);
  if (swift_dynamicCast())
  {
    sub_1BF8C2C9C(v40, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_1BF9B4338();
    v40[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_59;
  }

  v41 = 0;
  memset(v40, 0, sizeof(v40));
  sub_1BF8DFBF0(v40, &qword_1EBDEA7A8, &qword_1BF9C9CA0);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v40[0] = a1;
    *(&v40[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v5 = v40;
    v6 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = sub_1BF9B5318();
  }

  sub_1BF9AC97C(v5, v6, &v43);
  v7 = *(&v43 + 1);
  v8 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    v40[0] = v43;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v40[0] = MEMORY[0x1BFB5D700](v9);
  *(&v40[0] + 1) = v10;
  MEMORY[0x1EEE9AC00](*&v40[0]);
  v34[2] = v39;
  v11 = sub_1BF9ACA98(sub_1BF9ADBAC, v34);
  v13 = *(&v40[0] + 1) >> 62;
  v14 = v11;
  v16 = v15;
  v18 = v17;
  v19 = BYTE14(v40[0]);
  switch(*(&v40[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v20) = DWORD1(v40[0]) - LODWORD(v40[0]);
      if (__OFSUB__(DWORD1(v40[0]), v40[0]))
      {
        goto LABEL_66;
      }

      v20 = v20;
LABEL_22:
      if (v12 == v20)
      {
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        v19 = *(*&v40[0] + 24);
      }

      else if (v13 == 1)
      {
        v19 = *&v40[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v22 = *(*&v40[0] + 16);
      v21 = *(*&v40[0] + 24);
      v23 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (!v23)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v12)
      {
        v19 = 0;
LABEL_56:
        if (v19 < v12)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_1BF9B43E8();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v34[4] = v4;
      v35 = v8;
      v36 = v7;
      LOBYTE(v24) = 0;
      if ((v16 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v16) & 0xF;
      }

      else
      {
        v25 = v11 & 0xFFFFFFFFFFFFLL;
      }

      v26 = (v11 >> 59) & 1;
      if ((v16 & 0x1000000000000000) == 0)
      {
        LOBYTE(v26) = 1;
      }

      v27 = 4 << v26;
      v37 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v38 = v16 & 0xFFFFFFFFFFFFFFLL;
      *(&v42 + 7) = 0;
      *&v42 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v20 = BYTE14(v40[0]);
      goto LABEL_22;
  }

  while (4 * v25 != v18 >> 14)
  {
    v4 = v18 & 0xC;
    v28 = v18;
    if (v4 == v27)
    {
      v28 = sub_1BF95DC78(v18, v14, v16);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v25)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v9 = sub_1BF9B4BA8();
      v8 = 0;
      v7 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      v31 = sub_1BF9B4BE8();
    }

    else if ((v16 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1BF9B5318();
      }

      v31 = *(v30 + v29);
    }

    if (v4 == v27)
    {
      v18 = sub_1BF95DC78(v18, v14, v16);
      if ((v16 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v18 = (v18 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v25 <= v18 >> 16)
    {
      goto LABEL_62;
    }

    v18 = sub_1BF9B4BB8();
LABEL_46:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_61;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_1BF9B4418();
      LOBYTE(v24) = 0;
    }
  }

  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_1BF9B4418();
    sub_1BF921E14(v35, v36);
    goto LABEL_58;
  }

  sub_1BF921E14(v35, v36);
LABEL_59:
  v32 = v40[0];
  sub_1BF8F9A50(*&v40[0], *(&v40[0] + 1));

  sub_1BF8F9F3C(v32, *(&v32 + 1));
  return v32;
}

void static SuggestionTransformers.obfuscateParametersForLogging(numCharacters:rngFactory:currentDate:)()
{
  OUTLINED_FUNCTION_65_0();
  v29 = v0;
  v30 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v31 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1A8, &qword_1BF9C4670);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  v15 = *(v14 + 64);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v18 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v28 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = v9;
  *(v21 + 24) = v7 & 1;
  v28[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9208, &unk_1BF9C2A50);
  OUTLINED_FUNCTION_7_24();
  sub_1BF9B4598();
  v22 = v3;
  v5(v32, 0, 1);
  v23 = v5;
  __swift_mutable_project_boxed_opaque_existential_1(v32, v32[3]);
  v24 = sub_1BF9B4A38();
  (*(v13 + 16))(v18, v20, v11);
  v25 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = v23;
  *(v26 + 3) = v22;
  v27 = v30;
  *(v26 + 4) = v29;
  *(v26 + 5) = v27;
  *(v26 + 6) = v24;
  (*(v13 + 32))(&v26[v25], v18, v11);

  sub_1BF9B4598();
  (*(v13 + 8))(v20, v11);
  __swift_destroy_boxed_opaque_existential_1(v32);
  OUTLINED_FUNCTION_64();
}

uint64_t sub_1BF9AB4C4(uint64_t a1, void (*a2)(void *__return_ptr, uint64_t, void), uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v9 = sub_1BF9AB644(a4);
  a2(v21, v9, 0);
  __swift_mutable_project_boxed_opaque_existential_1(v21, v21[3]);
  v20[0] = sub_1BF9B4A38() ^ a6;
  v10 = sub_1BF9B5668();
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1A8, &qword_1BF9C4670);
  v13 = sub_1BF9B45A8();
  sub_1BF8C187C(a1, &v18);
  v14 = sub_1BF9B4B08();
  v16 = v15;
  v18 = v10;
  v19 = v12;

  MEMORY[0x1BFB5DE90](v14, v16);

  v20[3] = MEMORY[0x1E69E6158];
  v20[0] = v18;
  v20[1] = v19;
  v13(v20);

  __swift_destroy_boxed_opaque_existential_1(v20);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

unint64_t sub_1BF9AB644(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1BF9B44C8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v4);
  sub_1BF9B4498();
  v8 = v7;
  result = (*(v3 + 8))(v6, v2);
  v10 = v8 / 604800.0;
  if (COERCE__INT64(fabs(v8 / 604800.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v10 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v10 < 1.84467441e19)
  {
    return v10;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t static SuggestionTransformers.mapINIntentValue<A>(extractor:)()
{
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_1_8();
  v3 = swift_allocObject();
  v3[2] = v0;
  v3[3] = v2;
  v3[4] = v1;

  return sub_1BF9B4598();
}

void sub_1BF9AB808(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a4@<X8>)
{
  if (*(a1 + 24) || (v6 = *a1, v7 = *(a1 + 8), v8 = *(a1 + 16), (v9 = swift_dynamicCastUnknownClass()) == 0))
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 2;
  }

  else
  {
    v10 = v9;
    v11 = v6;
    a2(v10);
    sub_1BF90D8B8(v6, v7, v8, 0);
  }
}

uint64_t sub_1BF9AB8BC()
{
  OUTLINED_FUNCTION_7();
  v0[2] = v1;
  v0[3] = v2;
  v3 = type metadata accessor for SiriSuggestions.Intent(0);
  v0[4] = v3;
  OUTLINED_FUNCTION_72(v3);
  v0[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF9AB948, 0, 0);
}

uint64_t sub_1BF9AB948()
{
  OUTLINED_FUNCTION_7();
  sub_1BF93A558(v0[3], v0[5]);
  OUTLINED_FUNCTION_33();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[5];
  if (EnumCaseMultiPayload)
  {
    v3 = v0[2];
    sub_1BF9AD920(v2, type metadata accessor for SiriSuggestions.Intent);
    *v3 = 0u;
    *(v3 + 16) = 0u;
    *(v3 + 32) = 2;

    OUTLINED_FUNCTION_11_1();

    return v4();
  }

  else
  {
    v6 = *v2;
    v0[6] = *v2;
    v7 = v6;
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v0[7] = v8;
    *v8 = v9;
    v8[1] = sub_1BF9ABA70;
    v10 = v0[2];

    return sub_1BF978728(v10, v7);
  }
}

uint64_t sub_1BF9ABA70()
{
  OUTLINED_FUNCTION_7();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  *(v4 + 64) = v0;

  if (v0)
  {
    v5 = sub_1BF9ABBDC;
  }

  else
  {
    v5 = sub_1BF9ABB78;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BF9ABB78()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_11_1();

  return v2();
}

uint64_t sub_1BF9ABBDC()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_77();

  return v2();
}

uint64_t sub_1BF9ABC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = type metadata accessor for SiriSuggestions.Intent(0);
  v5[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF9ABCE0, 0, 0);
}

uint64_t sub_1BF9ABCE0()
{
  sub_1BF93A558(v0[3], v0[8]);
  OUTLINED_FUNCTION_33();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[8];
  if (EnumCaseMultiPayload)
  {
    sub_1BF9AD920(v2, type metadata accessor for SiriSuggestions.Intent);
LABEL_3:
    v3 = v0[2];
    *v3 = 0u;
    *(v3 + 16) = 0u;
    *(v3 + 32) = 2;

    OUTLINED_FUNCTION_11_1();

    return v4();
  }

  v6 = *v2;
  v0[9] = *v2;
  v7 = swift_dynamicCastUnknownClass();
  if (!v7)
  {

    goto LABEL_3;
  }

  v8 = v7;
  v9 = v0[4];
  v10 = v6;
  v14 = (v9 + *v9);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[10] = v11;
  *v11 = v12;
  v11[1] = sub_1BF9ABE94;
  v13 = v0[2];

  return v14(v13, v8);
}

uint64_t sub_1BF9ABE94()
{
  OUTLINED_FUNCTION_7();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  *(v4 + 88) = v0;

  if (v0)
  {
    v5 = sub_1BF9AC000;
  }

  else
  {
    v5 = sub_1BF9ABF9C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BF9ABF9C()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_11_1();

  return v2();
}

uint64_t sub_1BF9AC000()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_77();

  return v2();
}

double sub_1BF9AC094@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  return result;
}

uint64_t sub_1BF9AC0C8()
{
  v1 = *(v0 + 16);
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 2;
  OUTLINED_FUNCTION_11_1();
  return v2();
}

uint64_t static SuggestionTransformers.addAppIntentValue(extractor:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for SiriSuggestions.Intent(0);
  OUTLINED_FUNCTION_3_14();

  return sub_1BF9B4598();
}

uint64_t sub_1BF9AC190@<X0>(uint64_t a1@<X0>, void (*a2)(void, void, void)@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SiriSuggestions.Intent(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BF93A558(a1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = type metadata accessor for SiriSuggestions.Intent;
  if (EnumCaseMultiPayload == 1 && (type metadata accessor for SiriSuggestions.AppIntent(0), v11 = swift_getEnumCaseMultiPayload(), v10 = type metadata accessor for SiriSuggestions.AppIntent, v11 == 1))
  {
    v12 = *v8;
    a2(*v8, v8[1], v8[2]);
  }

  else
  {
    result = sub_1BF9AD920(v8, v10);
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 2;
  }

  return result;
}

uint64_t static SuggestionTransformers.addAppIntentValue(lnActionParameterName:behaviour:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1BF9AD550;
  *(v9 + 24) = v8;
  type metadata accessor for SiriSuggestions.Intent(0);

  return sub_1BF9B4598();
}

double sub_1BF9AC3BC@<D0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, void (*a4)(uint64_t *)@<X5>, uint64_t a5@<X8>)
{
  v37 = a3;
  v5 = [a1 parameters];
  sub_1BF9AD8DC();
  v6 = sub_1BF9B4D08();

  v7 = sub_1BF965210();
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {

      goto LABEL_18;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1BFB5E5E0](i, v6);
    }

    else
    {
      if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v9 = *(v6 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v11 = [v9 identifier];
    v12 = sub_1BF9B4AA8();
    v14 = v13;

    if (v12 == a2 && v14 == v37)
    {
      break;
    }

    v16 = sub_1BF9B56D8();

    if (v16)
    {
      goto LABEL_16;
    }
  }

LABEL_16:

  v17 = [v10 value];

  if (v17)
  {
    v18 = [v17 value];
    sub_1BF9B51C8();
    swift_unknownObjectRelease();
    a4(v36);

    __swift_destroy_boxed_opaque_existential_1(v36);
    return result;
  }

LABEL_18:
  if (qword_1EDBF5568 == -1)
  {
    goto LABEL_19;
  }

LABEL_24:
  swift_once();
LABEL_19:
  v20 = sub_1BF9B47C8();
  __swift_project_value_buffer(v20, qword_1EDBF5570);
  v21 = v37;

  v22 = a1;
  v23 = sub_1BF9B47A8();
  v24 = sub_1BF9B5038();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v36[0] = v26;
    *v25 = 136315394;
    *(v25 + 4) = sub_1BF8DE810(a2, v21, v36);
    *(v25 + 12) = 2080;
    v27 = [v22 description];
    v28 = sub_1BF9B4AA8();
    v30 = v29;

    v31 = sub_1BF8DE810(v28, v30, v36);

    *(v25 + 14) = v31;
    _os_log_impl(&dword_1BF8B8000, v23, v24, "Unable to find parameter: %s on action: %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB5F320](v26, -1, -1);
    MEMORY[0x1BFB5F320](v25, -1, -1);
  }

  result = 0.0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 2;
  return result;
}

uint64_t static SuggestionTransformers.containsParameterForLogging()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9208, &unk_1BF9C2A50);
  OUTLINED_FUNCTION_7_24();

  return sub_1BF9B4598();
}

uint64_t sub_1BF9AC7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BF8C187C(a1, &v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9208, &unk_1BF9C2A50);
  swift_dynamicCast();
  v3 = v7 != 0;
  result = sub_1BF8DFBF0(v6, &qword_1EBDE9208, &unk_1BF9C2A50);
  *(a2 + 24) = MEMORY[0x1E69E6370];
  *a2 = v3;
  return result;
}

uint64_t IntentParameter.description.getter()
{
  sub_1BF9AD570(v0, v6);
  if (v7)
  {
    if (v7 != 1)
    {
      return 0x65726F6E6769;
    }

    sub_1BF8C192C(v6, v5);
    sub_1BF9B5288();
    v1 = 0x80000001BF9CE490;
    v2 = 0xD000000000000011;
  }

  else
  {
    sub_1BF8C192C(v6, v5);
    v2 = 0x7B747865746E6F63;
    v1 = 0xE800000000000000;
  }

  MEMORY[0x1BFB5DE90](v2, v1);
  sub_1BF9B5378();
  MEMORY[0x1BFB5DE90](125, 0xE100000000000000);
  v3 = 0;
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_1BF9AC97C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1BF9B4388();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1BF9B4328();
      swift_allocObject();
      v8 = sub_1BF9B42D8();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1BF9B43D8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1BF9ACA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_1BF9ACFB8(sub_1BF9ADC08, v5, a1, a2);
}

uint64_t sub_1BF9ACA98(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v5 = v2;
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1BF8F9F3C(v7, v6);
      *v5 = xmmword_1BF9C9A40;
      sub_1BF8F9F3C(0, 0xC000000000000000);
      v13 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v13 < v7)
      {
        goto LABEL_23;
      }

      if (sub_1BF9B42E8() && __OFSUB__(v7, sub_1BF9B4318()))
      {
        goto LABEL_24;
      }

      sub_1BF9B4328();
      swift_allocObject();
      v14 = sub_1BF9B42C8();

      v12 = v14;
LABEL_16:
      if (v13 < v7)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v4 = sub_1BF9AD01C(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1BF8F9F3C(v7, v6);
      v17 = v7;
      v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_1BF9C9A40;
      sub_1BF8F9F3C(0, 0xC000000000000000);
      sub_1BF9B4398();
      v7 = v17;
      v10 = sub_1BF9AD01C(*(v17 + 16), *(v17 + 24), a1);
      if (v3)
      {
        v11 = v18 | 0x8000000000000000;
LABEL_18:
        *v5 = v7;
        v5[1] = v11;
      }

      else
      {
        v4 = v10;
        v11 = v18 | 0x8000000000000000;
LABEL_20:
        *v5 = v7;
        v5[1] = v11;
      }

      return v4;
    case 3uLL:
      memset(v19, 0, 15);
      a1(&v17, v19, v19);
      if (!v3)
      {
        return v17;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      sub_1BF8F9F3C(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        v4 = v17;
      }

      v9 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v5 = v19[0];
      v5[1] = v9;
      return v4;
  }
}

uint64_t sub_1BF9ACE5C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_1BF9B4388();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1BFB5D6B0]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1BFB5D6D0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

void sub_1BF9ACED4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v7 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v6 = v7;
      goto LABEL_9;
    case 2uLL:
      v5 = *(a1 + 24);
      a1 = *(a1 + 16);
      v6 = v5;
LABEL_9:
      sub_1BF9ADA94(a1, v6);
      if (v3)
      {
        goto LABEL_10;
      }

      return;
    case 3uLL:
      a1 = 0;
      v4 = 0;
      goto LABEL_5;
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      sub_1BF9AD9C0(a1, v4);
      if (v3)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
      }

      return;
  }
}

uint64_t sub_1BF9ACF70(uint64_t result)
{
  if (result)
  {
    result = sub_1BF9B5298();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1BF9ACFB8(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_1BF9AD01C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1BF9B42E8();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1BF9B4318();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1BF9B4308();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1BF9AD0D0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = (a6 + OBJC_IVAR____TtC18SiriSuggestionsKit19ResolvableParameter_intentTransformer);
  v15[3] = a7;
  v15[4] = a8;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v15);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1Tm, a5, a7);
  *(a6 + 16) = a1;
  *(a6 + 24) = a2;
  *(a6 + 32) = a3;
  v17 = OBJC_IVAR____TtC18SiriSuggestionsKit19ResolvableParameter_loggingKeyTransformer;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1A8, &qword_1BF9C4670);
  OUTLINED_FUNCTION_13();
  (*(v18 + 32))(a6 + v17, a4);
  return a6;
}

uint64_t sub_1BF9AD1B8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v3 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_1BF9ADC74;

  return sub_1BF9ABC44(a1, a2, v7, v8, v6);
}

uint64_t sub_1BF9AD278(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA790, &qword_1BF9C9A80);
  OUTLINED_FUNCTION_72(v6);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v3 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_1BF9AD360;

  return sub_1BF9A9F94(a1, a2, v2 + v8);
}

uint64_t sub_1BF9AD360()
{
  OUTLINED_FUNCTION_7();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  OUTLINED_FUNCTION_77();

  return v3();
}

uint64_t sub_1BF9AD484(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1A8, &qword_1BF9C4670);
  OUTLINED_FUNCTION_72(v3);
  return sub_1BF9AB4C4(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
}

uint64_t type metadata accessor for ResolvableParameter(uint64_t a1)
{
  result = qword_1EDBF2998;
  if (!qword_1EDBF2998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BF9AD5FC(uint64_t a1)
{
  sub_1BF9AD6E8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BF9AD6E8(uint64_t a1)
{
  if (!qword_1EDBF3F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE9208, &unk_1BF9C2A50);
    v1 = sub_1BF9B45B8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBF3F48);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SuggestionTransformers(_BYTE *result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_18SiriSuggestionsKit15IntentParameterO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_1BF9AD820(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF9AD85C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1BF9AD8A8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_1BF9AD8DC()
{
  result = qword_1EBDE9650;
  if (!qword_1EBDE9650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBDE9650);
  }

  return result;
}

uint64_t sub_1BF9AD920(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BF9AD978(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BF9AD9C0(uint64_t a1, uint64_t a2)
{
  sub_1BF9B4918();
  sub_1BF9AD978(&qword_1EDBF3F98, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  return sub_1BF9B48D8();
}

uint64_t sub_1BF9ADA94(uint64_t a1, uint64_t a2)
{
  result = sub_1BF9B42E8();
  if (!result || (result = sub_1BF9B4318(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1BF9B4308();
      sub_1BF9B4918();
      sub_1BF9AD978(&qword_1EDBF3F98, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return sub_1BF9B48D8();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1BF9ADB74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1BF9ACA44(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_1BF9ADBC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BF9ACF70(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

void sub_1BF9ADC48(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    sub_1BF90D8B8(a1, a2, a3, a4);
  }
}

uint64_t OUTLINED_FUNCTION_25_16(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{

  return sub_1BF9AD0D0(a1, a2, a3, a4, v7, v4, v5, v6);
}

uint64_t PolicyConfig.invocationObservationPeriodInDays.getter()
{
  sub_1BF9323B0();

  return sub_1BF9B4988();
}

uint64_t PolicyConfig.suppressionWindowHoursSinceLastDeliveryVehicle.getter()
{
  sub_1BF9322AC();

  return sub_1BF9B4988();
}

uint64_t sub_1BF9ADE30(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  type metadata accessor for ContextContainer();
  sub_1BF8D2004(v3 + 16, v9);
  v8 = v6;
  static ContextContainer.createContext(targetOwner:suggestionEnablementState:generationContext:)(v9, &v8, a2, a3);
  sub_1BF8EE3F8(v9, &qword_1EBDE9918, &qword_1BF9C0750);
  return OUTLINED_FUNCTION_43();
}

__n128 SuggestionDetails.init(suggestionId:resolverParams:description:viewProvider:actionIdKeyMapper:prerequisite:intentMatch:filter:inAppDonationApps:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 96) = a3;
  if (!a5)
  {

    a4 = a1;
    a5 = a2;
  }

  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  sub_1BF8D2004(a6, a9 + 104);
  sub_1BF8D2004(a7, a9 + 144);
  sub_1BF8D2004(a8, a9 + 184);
  sub_1BF9AF258(a10, &v22, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
  if (v23)
  {
    sub_1BF8EE3F8(a10, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
    OUTLINED_FUNCTION_16_20();
    __swift_destroy_boxed_opaque_existential_1(a6);
    sub_1BF8C2C9C(&v22, &v24);
  }

  else
  {
    *(&v25 + 1) = &type metadata for SiriSuggestions.IntentType;
    v26 = &protocol witness table for SiriSuggestions.IntentType;
    *&v24 = a1;
    *(&v24 + 1) = a2;
    LOBYTE(v25) = 2;

    sub_1BF8EE3F8(a10, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
    OUTLINED_FUNCTION_16_20();
    __swift_destroy_boxed_opaque_existential_1(a6);
    if (v23)
    {
      sub_1BF8EE3F8(&v22, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
    }
  }

  v18 = v25;
  *(a9 + 32) = v24;
  *(a9 + 48) = v18;
  v19 = v26;
  result = *a11;
  v21 = *(a11 + 16);
  *(a9 + 224) = *a11;
  *(a9 + 240) = v21;
  *(a9 + 256) = *(a11 + 32);
  *(a9 + 264) = a12;
  *(a9 + 72) = 0;
  *(a9 + 80) = 0;
  *(a9 + 64) = v19;
  *(a9 + 88) = -1;
  return result;
}

uint64_t Suggestion.__allocating_init(details:owner:)(const void *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  memcpy((v4 + 56), a1, 0x110uLL);
  sub_1BF8C2C9C(a2, v4 + 16);
  return v4;
}

uint64_t Suggestion.init(details:owner:)(void *__src, __int128 *a2)
{
  memcpy((v2 + 56), __src, 0x110uLL);
  sub_1BF8C2C9C(a2, v2 + 16);
  return v2;
}

uint64_t Suggestion.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1BF8E9F70(v0 + 56);
  return v0;
}

uint64_t Suggestion.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1BF8E9F70(v0 + 56);

  return MEMORY[0x1EEE6BDC0](v0, 328, 7);
}

uint64_t SuggestionDetails.historicIntentType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 88);
  *(a1 + 16) = v4;
  return sub_1BF9AE220(v2, v3, v4);
}

uint64_t sub_1BF9AE220(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1BF9439F0(a1, a2, a3);
  }

  return a1;
}

uint64_t SuggestionDetails.init(suggestionId:resolverParams:description:viewProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_1BF8D2004(a6, v8);
  SuggestionDetails.init(suggestionId:resolverParams:description:viewProvider:filter:)();
  return __swift_destroy_boxed_opaque_existential_1(a6);
}

void SuggestionDetails.init(suggestionId:resolverParams:description:viewProvider:filter:)()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v113 = v6;
  v123 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1BF8D2004(v7, v176);
  static ActionKeyMappers.simpleActionKeyMapper(actionId:)(0, 0, v175);
  OUTLINED_FUNCTION_25_17(v1, v174);
  sub_1BF8D2004(v176, v173);
  sub_1BF8D2004(v175, v172);
  v14 = type metadata accessor for NoOpPrerequisite();
  inited = swift_initStaticObject();
  v171[3] = v14;
  v171[4] = sub_1BF9AF200();
  v171[0] = inited;
  OUTLINED_FUNCTION_25_17(v174, v170);
  sub_1BF8D2004(v173, v169);
  sub_1BF8D2004(v172, v168);
  sub_1BF8D2004(v171, v167);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_25_17(v170, &v161);
  sub_1BF8D2004(v169, v160);
  sub_1BF8D2004(v168, &v155);
  sub_1BF8D2004(v167, &v150);
  v16 = sub_1BF9AF258(v166, &v145, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
  v24 = OUTLINED_FUNCTION_17_20(v16, v17, v18, v19, v20, v21, v22, v23, v113, v123, v133, v134, v135, v136, v137, v138, *(&v138 + 1), v139, v140, v141, v142.n128_i64[0], v142.n128_i64[1], v143, *(&v143 + 1), v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160[0], v160[1], v160[2], v160[3], v160[4], v161);
  v26 = OUTLINED_FUNCTION_25_17(v24, v25);
  *v13 = v11;
  v13[1] = v9;
  v13[12] = v114;
  if (!v3)
  {

    v5 = v11;
    v3 = v9;
  }

  v13[2] = v5;
  v13[3] = v3;
  v34 = OUTLINED_FUNCTION_24_14(v26, v27, v28, v29, v30, v31, v32, v33, v114, v124, v133, v134, v135, v136, v137, v138, *(&v138 + 1), v139, v140, v141, v142.n128_i64[0], v142.n128_i64[1], v143, *(&v143 + 1), v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159);
  v42 = OUTLINED_FUNCTION_21_17(v34, v35, v36, v37, v38, v39, v40, v41, v115, v125, v133, v134, v135, v136, v137, v138, *(&v138 + 1), v139, v140, v141, v142.n128_i64[0], v142.n128_i64[1], v143, *(&v143 + 1), v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154);
  v50 = OUTLINED_FUNCTION_14_17(v42, v43, v44, v45, v46, v47, v48, v49, v116, v126, v133, v134, v135, v136, v137, v138, *(&v138 + 1), v139, v140, v141, v142.n128_i64[0], v142.n128_i64[1], v143, *(&v143 + 1), v144, v145, v146, v147, v148, v149);
  v56 = OUTLINED_FUNCTION_11_18(v50, v51, &qword_1EBDEA2A0, &unk_1BF9C9CF0, v52, v53, v54, v55, v117, v127, v133, v134, v135, v136, v137, v138, *(&v138 + 1), v139, v140, v141, v142.n128_i64[0], v142.n128_i64[1], v143, *(&v143 + 1), v144, v145);
  sub_1BF9AF258(v56, v57, v58, v59);
  if (v136)
  {
    OUTLINED_FUNCTION_3_31(v1);
    v60 = __swift_destroy_boxed_opaque_existential_1(v128);
    v68 = OUTLINED_FUNCTION_4_29(v60, v61, v62, v63, v64, v65, v66, v67, v118, v128, v133, v134, v135, v136, v137, v138, *(&v138 + 1), v139, v140, v141, v142.n128_i64[0], v142.n128_i64[1], v143, *(&v143 + 1), v144, v145);
    sub_1BF8EE3F8(v68, v69, &unk_1BF9C9CF0);
    __swift_destroy_boxed_opaque_existential_1(&v150);
    __swift_destroy_boxed_opaque_existential_1(&v155);
    __swift_destroy_boxed_opaque_existential_1(v160);
    v70 = OUTLINED_FUNCTION_3_31(&v161);
    OUTLINED_FUNCTION_6_23(v70, v71, v72, v73, v74, v75, v76, v77, v119, v129, v133, v134, v135, v136, v137, v138, *(&v138 + 1), v139, v140, v141, v142.n128_i64[0], v142.n128_i64[1], v143, *(&v143 + 1), v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160[0], v160[1], v160[2], v160[3], v160[4], v161, v162, v163, v164, v165);
    __swift_destroy_boxed_opaque_existential_1(v167);
    __swift_destroy_boxed_opaque_existential_1(v168);
    __swift_destroy_boxed_opaque_existential_1(v169);
    OUTLINED_FUNCTION_3_31(v170);
    v78 = OUTLINED_FUNCTION_5_22(v172);
    OUTLINED_FUNCTION_3_31(v78);
    OUTLINED_FUNCTION_2_33();
    v79 = __swift_destroy_boxed_opaque_existential_1(v171);
    v83 = OUTLINED_FUNCTION_15_25(v79, v80, v81, v82);
  }

  else
  {
    OUTLINED_FUNCTION_10_22();

    OUTLINED_FUNCTION_3_31(v1);
    v93 = __swift_destroy_boxed_opaque_existential_1(v128);
    v101 = OUTLINED_FUNCTION_4_29(v93, v94, v95, v96, v97, v98, v99, v100, v118, v128, v133, v134, v135, 0, v137, v11, v9, v139, &type metadata for SiriSuggestions.IntentType, &protocol witness table for SiriSuggestions.IntentType, v142.n128_i64[0], v142.n128_i64[1], v143, *(&v143 + 1), v144, v145);
    sub_1BF8EE3F8(v101, v102, &unk_1BF9C9CF0);
    __swift_destroy_boxed_opaque_existential_1(&v150);
    __swift_destroy_boxed_opaque_existential_1(&v155);
    __swift_destroy_boxed_opaque_existential_1(v160);
    v103 = OUTLINED_FUNCTION_3_31(&v161);
    OUTLINED_FUNCTION_6_23(v103, v104, v105, v106, v107, v108, v109, v110, v121, v131, v133, v134, v135, v136, v137, v138, *(&v138 + 1), v139, v140, v141, v142.n128_i64[0], v142.n128_i64[1], v143, *(&v143 + 1), v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160[0], v160[1], v160[2], v160[3], v160[4], v161, v162, v163, v164, v165);
    __swift_destroy_boxed_opaque_existential_1(v167);
    __swift_destroy_boxed_opaque_existential_1(v168);
    __swift_destroy_boxed_opaque_existential_1(v169);
    OUTLINED_FUNCTION_3_31(v170);
    v111 = OUTLINED_FUNCTION_5_22(v172);
    OUTLINED_FUNCTION_3_31(v111);
    OUTLINED_FUNCTION_2_33();
    v83 = __swift_destroy_boxed_opaque_existential_1(v171);
    if (v136)
    {
      v83 = sub_1BF8EE3F8(&v133, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
    }
  }

  OUTLINED_FUNCTION_1_32(v83, v84, v85, v86, v87, v88, v89, v90, v91, v120, v130, v133, v134, v135, v136, v137, v92, v138);
  OUTLINED_FUNCTION_0_33(v112, v122, v132, v133, v134, v135, v136, v137, v138, *(&v138 + 1), v139, v140, v141, v142, v143);
  OUTLINED_FUNCTION_64();
}

void SuggestionDetails.init(suggestionId:resolverParams:description:viewProvider:actionIdKeyMapper:filter:)()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  OUTLINED_FUNCTION_13_17(v12, v10, v8, v6, v4, v16);
  sub_1BF8D2004(v3, v127);
  v17 = type metadata accessor for NoOpPrerequisite();
  inited = swift_initStaticObject();
  v126[3] = v17;
  v126[4] = sub_1BF9AF200();
  v126[0] = inited;
  sub_1BF9AF258(v1, v125, &qword_1EBDE8E10, &qword_1BF9B9980);
  sub_1BF8D2004(&v128, v124);
  sub_1BF8D2004(v127, v123);
  sub_1BF8D2004(v126, v122);
  OUTLINED_FUNCTION_8_19();
  sub_1BF9AF258(v125, v120, &qword_1EBDE8E10, &qword_1BF9B9980);
  sub_1BF8D2004(v124, v119);
  sub_1BF8D2004(v123, &v114);
  sub_1BF8D2004(v122, &v109);
  v19 = sub_1BF9AF258(v121, &v104, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
  v27 = OUTLINED_FUNCTION_17_20(v19, v20, v21, v22, v23, v24, v25, v26, v78, v85, v92, v93, v94, v95, v96, v97, *(&v97 + 1), v98, v99, v100, v101.n128_i64[0], v101.n128_i64[1], v102, *(&v102 + 1), v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119[0], v119[1], v119[2], v119[3], v119[4], v120[0]);
  v29 = sub_1BF9AF258(v27, v28, &qword_1EBDE8E10, &qword_1BF9B9980);
  *v15 = v13;
  v15[1] = v11;
  v15[12] = v9;
  if (!v5)
  {

    v7 = v13;
    v5 = v11;
  }

  v15[2] = v7;
  v15[3] = v5;
  v37 = OUTLINED_FUNCTION_24_14(v29, v30, v31, v32, v33, v34, v35, v36, v79, v86, v92, v93, v94, v95, v96, v97, *(&v97 + 1), v98, v99, v100, v101.n128_i64[0], v101.n128_i64[1], v102, *(&v102 + 1), v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118);
  v45 = OUTLINED_FUNCTION_21_17(v37, v38, v39, v40, v41, v42, v43, v44, v80, v87, v92, v93, v94, v95, v96, v97, *(&v97 + 1), v98, v99, v100, v101.n128_i64[0], v101.n128_i64[1], v102, *(&v102 + 1), v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
  v53 = OUTLINED_FUNCTION_14_17(v45, v46, v47, v48, v49, v50, v51, v52, v81, v88, v92, v93, v94, v95, v96, v97, *(&v97 + 1), v98, v99, v100, v101.n128_i64[0], v101.n128_i64[1], v102, *(&v102 + 1), v103, v104, v105, v106, v107, v108);
  v59 = OUTLINED_FUNCTION_11_18(v53, v54, &qword_1EBDEA2A0, &unk_1BF9C9CF0, v55, v56, v57, v58, v82, v89, v92, v93, v94, v95, v96, v97, *(&v97 + 1), v98, v99, v100, v101.n128_i64[0], v101.n128_i64[1], v102, *(&v102 + 1), v103, v104);
  sub_1BF9AF258(v59, v60, v61, v62);
  if (v95)
  {
    OUTLINED_FUNCTION_12_21(v1);
    __swift_destroy_boxed_opaque_existential_1(v3);
    __swift_destroy_boxed_opaque_existential_1(v90);
    OUTLINED_FUNCTION_22_13(&v104);
    __swift_destroy_boxed_opaque_existential_1(&v109);
    __swift_destroy_boxed_opaque_existential_1(&v114);
    __swift_destroy_boxed_opaque_existential_1(v119);
    OUTLINED_FUNCTION_12_21(v120);
    OUTLINED_FUNCTION_22_13(v121);
    __swift_destroy_boxed_opaque_existential_1(v122);
    __swift_destroy_boxed_opaque_existential_1(v123);
    __swift_destroy_boxed_opaque_existential_1(v124);
    OUTLINED_FUNCTION_12_21(v125);
    OUTLINED_FUNCTION_2_33();
    v63 = __swift_destroy_boxed_opaque_existential_1(v126);
    v67 = OUTLINED_FUNCTION_15_25(v63, v64, v65, v66);
  }

  else
  {
    v99 = &type metadata for SiriSuggestions.IntentType;
    v100 = &protocol witness table for SiriSuggestions.IntentType;
    *&v97 = v13;
    *(&v97 + 1) = v11;
    OUTLINED_FUNCTION_10_22();

    OUTLINED_FUNCTION_12_21(v1);
    __swift_destroy_boxed_opaque_existential_1(v3);
    __swift_destroy_boxed_opaque_existential_1(v90);
    OUTLINED_FUNCTION_22_13(&v104);
    __swift_destroy_boxed_opaque_existential_1(&v109);
    __swift_destroy_boxed_opaque_existential_1(&v114);
    __swift_destroy_boxed_opaque_existential_1(v119);
    OUTLINED_FUNCTION_12_21(v120);
    OUTLINED_FUNCTION_22_13(v121);
    __swift_destroy_boxed_opaque_existential_1(v122);
    __swift_destroy_boxed_opaque_existential_1(v123);
    __swift_destroy_boxed_opaque_existential_1(v124);
    OUTLINED_FUNCTION_12_21(v125);
    OUTLINED_FUNCTION_2_33();
    v67 = __swift_destroy_boxed_opaque_existential_1(v126);
  }

  OUTLINED_FUNCTION_1_32(v67, v68, v69, v70, v71, v72, v73, v74, v75, v83, v90, v92, v93, v94, v95, v96, v76, v97);
  OUTLINED_FUNCTION_0_33(v77, v84, v91, v92, v93, v94, v95, v96, v97, *(&v97 + 1), v98, v99, v100, v101, v102);
  OUTLINED_FUNCTION_64();
}

void SuggestionDetails.init(suggestionId:resolverParams:viewProvider:actionIdKeyMapper:filter:)()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v122 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1BF8D2004(v4, v176);
  sub_1BF9AF258(v3, &v173, &qword_1EBDEA298, &qword_1BF9C9D00);
  if (v174)
  {
    sub_1BF8C2C9C(&v173, v175);
  }

  else
  {
    static ActionKeyMappers.simpleActionKeyMapper(actionId:)(0, 0, v175);
    if (v174)
    {
      sub_1BF8EE3F8(&v173, &qword_1EBDEA298, &qword_1BF9C9D00);
    }
  }

  OUTLINED_FUNCTION_23_18(v1, &v173);
  sub_1BF8D2004(v176, v172);
  sub_1BF8D2004(v175, v171);
  v13 = type metadata accessor for NoOpPrerequisite();
  inited = swift_initStaticObject();
  v170[3] = v13;
  v170[4] = sub_1BF9AF200();
  v170[0] = inited;
  OUTLINED_FUNCTION_23_18(&v173, v169);
  sub_1BF8D2004(v172, v168);
  sub_1BF8D2004(v171, v167);
  sub_1BF8D2004(v170, v166);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_23_18(v169, &v160);
  sub_1BF8D2004(v168, v159);
  sub_1BF8D2004(v167, &v154);
  sub_1BF8D2004(v166, &v149);
  v15 = sub_1BF9AF258(v165, &v144, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
  v23 = OUTLINED_FUNCTION_17_20(v15, v16, v17, v18, v19, v20, v21, v22, v112, v122, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, v139, v140, v141.n128_i64[0], v141.n128_i64[1], v142, *(&v142 + 1), v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159[0], v159[1], v159[2], v159[3], v159[4], v160);
  v25 = OUTLINED_FUNCTION_23_18(v23, v24);
  *v12 = v10;
  v12[1] = v8;
  v12[12] = v123;
  v12[2] = v10;
  v12[3] = v8;
  v33 = OUTLINED_FUNCTION_24_14(v25, v26, v27, v28, v29, v30, v31, v32, v113, v123, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, v139, v140, v141.n128_i64[0], v141.n128_i64[1], v142, *(&v142 + 1), v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158);
  v41 = OUTLINED_FUNCTION_21_17(v33, v34, v35, v36, v37, v38, v39, v40, v114, v124, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, v139, v140, v141.n128_i64[0], v141.n128_i64[1], v142, *(&v142 + 1), v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153);
  v49 = OUTLINED_FUNCTION_14_17(v41, v42, v43, v44, v45, v46, v47, v48, v115, v125, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, v139, v140, v141.n128_i64[0], v141.n128_i64[1], v142, *(&v142 + 1), v143, v144, v145, v146, v147, v148);
  v57 = OUTLINED_FUNCTION_11_18(v49, v50, v51, v52, v53, v54, v55, v56, v116, v126, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, v139, v140, v141.n128_i64[0], v141.n128_i64[1], v142, *(&v142 + 1), v143, v144);
  sub_1BF9AF258(v57, v58, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
  if (v135)
  {

    OUTLINED_FUNCTION_9_21(v1);
    sub_1BF8EE3F8(v3, &qword_1EBDEA298, &qword_1BF9C9D00);
    v59 = __swift_destroy_boxed_opaque_existential_1(v5);
    v67 = OUTLINED_FUNCTION_4_29(v59, v60, v61, v62, v63, v64, v65, v66, v117, v127, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, v139, v140, v141.n128_i64[0], v141.n128_i64[1], v142, *(&v142 + 1), v143, v144);
    sub_1BF8EE3F8(v67, v68, &unk_1BF9C9CF0);
    __swift_destroy_boxed_opaque_existential_1(&v149);
    __swift_destroy_boxed_opaque_existential_1(&v154);
    __swift_destroy_boxed_opaque_existential_1(v159);
    v69 = OUTLINED_FUNCTION_9_21(&v160);
    OUTLINED_FUNCTION_6_23(v69, v70, v71, v72, v73, v74, v75, v76, v118, v128, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, v139, v140, v141.n128_i64[0], v141.n128_i64[1], v142, *(&v142 + 1), v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159[0], v159[1], v159[2], v159[3], v159[4], v160, v161, v162, v163, v164);
    __swift_destroy_boxed_opaque_existential_1(v166);
    __swift_destroy_boxed_opaque_existential_1(v167);
    __swift_destroy_boxed_opaque_existential_1(v168);
    OUTLINED_FUNCTION_9_21(v169);
    v77 = OUTLINED_FUNCTION_5_22(v171);
    OUTLINED_FUNCTION_9_21(v77);
    OUTLINED_FUNCTION_2_33();
    v78 = __swift_destroy_boxed_opaque_existential_1(v170);
    v82 = OUTLINED_FUNCTION_15_25(v78, v79, v80, v81);
  }

  else
  {
    OUTLINED_FUNCTION_10_22();
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_9_21(v1);
    sub_1BF8EE3F8(v3, &qword_1EBDEA298, &qword_1BF9C9D00);
    v92 = __swift_destroy_boxed_opaque_existential_1(v5);
    v100 = OUTLINED_FUNCTION_4_29(v92, v93, v94, v95, v96, v97, v98, v99, v117, v127, v132, v133, v134, 0, v136, v10, v8, v138, &type metadata for SiriSuggestions.IntentType, &protocol witness table for SiriSuggestions.IntentType, v141.n128_i64[0], v141.n128_i64[1], v142, *(&v142 + 1), v143, v144);
    sub_1BF8EE3F8(v100, v101, &unk_1BF9C9CF0);
    __swift_destroy_boxed_opaque_existential_1(&v149);
    __swift_destroy_boxed_opaque_existential_1(&v154);
    __swift_destroy_boxed_opaque_existential_1(v159);
    v102 = OUTLINED_FUNCTION_9_21(&v160);
    OUTLINED_FUNCTION_6_23(v102, v103, v104, v105, v106, v107, v108, v109, v120, v130, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, v139, v140, v141.n128_i64[0], v141.n128_i64[1], v142, *(&v142 + 1), v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159[0], v159[1], v159[2], v159[3], v159[4], v160, v161, v162, v163, v164);
    __swift_destroy_boxed_opaque_existential_1(v166);
    __swift_destroy_boxed_opaque_existential_1(v167);
    __swift_destroy_boxed_opaque_existential_1(v168);
    OUTLINED_FUNCTION_9_21(v169);
    v110 = OUTLINED_FUNCTION_5_22(v171);
    OUTLINED_FUNCTION_9_21(v110);
    OUTLINED_FUNCTION_2_33();
    v82 = __swift_destroy_boxed_opaque_existential_1(v170);
    if (v135)
    {
      v82 = sub_1BF8EE3F8(&v132, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
    }
  }

  OUTLINED_FUNCTION_1_32(v82, v83, v84, v85, v86, v87, v88, v89, v90, v119, v129, v132, v133, v134, v135, v136, v91, v137);
  OUTLINED_FUNCTION_0_33(v111, v121, v131, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, v139, v140, v141, v142);
  OUTLINED_FUNCTION_64();
}

void SuggestionDetails.init(suggestionId:resolverParams:description:viewProvider:actionIdKeyMapper:prerequisite:filter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_65_0();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  OUTLINED_FUNCTION_13_17(v33, v31, v29, v27, v25, v37);
  sub_1BF8D2004(v24, v142);
  sub_1BF8D2004(v22, v141);
  v140 = 0;
  memset(v139, 0, sizeof(v139));
  sub_1BF9AF258(a21, v138, &qword_1EBDE8E10, &qword_1BF9B9980);
  sub_1BF8D2004(&v143, v137);
  sub_1BF8D2004(v142, &v132);
  sub_1BF8D2004(v141, &v127);
  v38 = sub_1BF9AF258(v139, &v122, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
  v46 = OUTLINED_FUNCTION_17_20(v38, v39, v40, v41, v42, v43, v44, v45, v24, v103, v110, v111, v112, v113, v114, v115, *(&v115 + 1), v116, v117, v118, v119.n128_i64[0], v119.n128_i64[1], v120, *(&v120 + 1), v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137[0], v137[1], v137[2], v137[3], v137[4], v138[0]);
  v48 = sub_1BF9AF258(v46, v47, &qword_1EBDE8E10, &qword_1BF9B9980);
  *v36 = v34;
  v36[1] = v32;
  v36[12] = v30;
  if (!v26)
  {

    v28 = v34;
    v26 = v32;
  }

  v36[2] = v28;
  v36[3] = v26;
  v56 = OUTLINED_FUNCTION_24_14(v48, v49, v50, v51, v52, v53, v54, v55, v97, v104, v110, v111, v112, v113, v114, v115, *(&v115 + 1), v116, v117, v118, v119.n128_i64[0], v119.n128_i64[1], v120, *(&v120 + 1), v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);
  v64 = OUTLINED_FUNCTION_21_17(v56, v57, v58, v59, v60, v61, v62, v63, v98, v105, v110, v111, v112, v113, v114, v115, *(&v115 + 1), v116, v117, v118, v119.n128_i64[0], v119.n128_i64[1], v120, *(&v120 + 1), v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131);
  v72 = OUTLINED_FUNCTION_14_17(v64, v65, v66, v67, v68, v69, v70, v71, v99, v106, v110, v111, v112, v113, v114, v115, *(&v115 + 1), v116, v117, v118, v119.n128_i64[0], v119.n128_i64[1], v120, *(&v120 + 1), v121, v122, v123, v124, v125, v126);
  v78 = OUTLINED_FUNCTION_11_18(v72, v73, &qword_1EBDEA2A0, &unk_1BF9C9CF0, v74, v75, v76, v77, v100, v107, v110, v111, v112, v113, v114, v115, *(&v115 + 1), v116, v117, v118, v119.n128_i64[0], v119.n128_i64[1], v120, *(&v120 + 1), v121, v122);
  sub_1BF9AF258(v78, v79, v80, v81);
  if (v113)
  {
    OUTLINED_FUNCTION_7_25(a21);
    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_destroy_boxed_opaque_existential_1(v101);
    __swift_destroy_boxed_opaque_existential_1(v108);
    OUTLINED_FUNCTION_3_31(&v122);
    __swift_destroy_boxed_opaque_existential_1(&v127);
    __swift_destroy_boxed_opaque_existential_1(&v132);
    __swift_destroy_boxed_opaque_existential_1(v137);
    OUTLINED_FUNCTION_7_25(v138);
    OUTLINED_FUNCTION_3_31(v139);
    __swift_destroy_boxed_opaque_existential_1(v141);
    v82 = OUTLINED_FUNCTION_2_33();
    v86 = OUTLINED_FUNCTION_15_25(v82, v83, v84, v85);
  }

  else
  {
    v117 = &type metadata for SiriSuggestions.IntentType;
    v118 = &protocol witness table for SiriSuggestions.IntentType;
    *&v115 = v34;
    *(&v115 + 1) = v32;
    OUTLINED_FUNCTION_10_22();

    OUTLINED_FUNCTION_7_25(a21);
    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_destroy_boxed_opaque_existential_1(v101);
    __swift_destroy_boxed_opaque_existential_1(v108);
    OUTLINED_FUNCTION_3_31(&v122);
    __swift_destroy_boxed_opaque_existential_1(&v127);
    __swift_destroy_boxed_opaque_existential_1(&v132);
    __swift_destroy_boxed_opaque_existential_1(v137);
    OUTLINED_FUNCTION_7_25(v138);
    OUTLINED_FUNCTION_3_31(v139);
    __swift_destroy_boxed_opaque_existential_1(v141);
    v86 = OUTLINED_FUNCTION_2_33();
  }

  OUTLINED_FUNCTION_1_32(v86, v87, v88, v89, v90, v91, v92, v93, v94, v101, v108, v110, v111, v112, v113, v114, v95, v115);
  OUTLINED_FUNCTION_0_33(v96, v102, v109, v110, v111, v112, v113, v114, v115, *(&v115 + 1), v116, v117, v118, v119, v120);
  OUTLINED_FUNCTION_64();
}

double SuggestionDetails.init(suggestionId:resolverParams:description:viewProvider:actionIdKeyMapper:prerequisite:intentMatch:filter:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v13 = a5;
  v14 = a4;
  OUTLINED_FUNCTION_13_17(a1, a2, a3, a4, a5, a6);
  sub_1BF8D2004(a7, v97);
  sub_1BF8D2004(a8, v96);
  sub_1BF9AF258(a10, v95, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
  sub_1BF9AF258(a11, &v92, &qword_1EBDE8E10, &qword_1BF9B9980);
  *a9 = a1;
  a9[1] = a2;
  a9[12] = a3;
  if (!v13)
  {

    v14 = a1;
    v13 = a2;
  }

  a9[2] = v14;
  a9[3] = v13;
  sub_1BF8D2004(v98, (a9 + 13));
  v19 = sub_1BF8D2004(v97, (a9 + 18));
  v27 = OUTLINED_FUNCTION_14_17(v19, v20, v21, v22, v23, v24, v25, v26, v73, v78, v83, v84, v85, v86, v87, v88, *(&v88 + 1), v89, v90, v91, v92.n128_i64[0], v92.n128_i64[1], v93, *(&v93 + 1), v94, v95[0], v95[1], v95[2], v95[3], v95[4]);
  v33 = OUTLINED_FUNCTION_11_18(v27, v28, &qword_1EBDEA2A0, &unk_1BF9C9CF0, v29, v30, v31, v32, v74, v79, v83, v84, v85, v86, v87, v88, *(&v88 + 1), v89, v90, v91, v92.n128_i64[0], v92.n128_i64[1], v93, *(&v93 + 1), v94, v95[0]);
  sub_1BF9AF258(v33, v34, v35, v36);
  if (v86)
  {
    sub_1BF8EE3F8(a11, &qword_1EBDE8E10, &qword_1BF9B9980);
    sub_1BF8EE3F8(a10, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
    OUTLINED_FUNCTION_16_20();
    v37 = __swift_destroy_boxed_opaque_existential_1(v80);
    v45 = OUTLINED_FUNCTION_4_29(v37, v38, v39, v40, v41, v42, v43, v44, v75, v80, v83, v84, v85, v86, v87, v88, *(&v88 + 1), v89, v90, v91, v92.n128_i64[0], v92.n128_i64[1], v93, *(&v93 + 1), v94, v95[0]);
    sub_1BF8EE3F8(v45, v46, &unk_1BF9C9CF0);
    __swift_destroy_boxed_opaque_existential_1(v96);
    v47 = OUTLINED_FUNCTION_2_33();
    v51 = OUTLINED_FUNCTION_15_25(v47, v48, v49, v50);
  }

  else
  {
    OUTLINED_FUNCTION_10_22();

    sub_1BF8EE3F8(a11, &qword_1EBDE8E10, &qword_1BF9B9980);
    sub_1BF8EE3F8(a10, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
    OUTLINED_FUNCTION_16_20();
    v61 = __swift_destroy_boxed_opaque_existential_1(v80);
    v69 = OUTLINED_FUNCTION_4_29(v61, v62, v63, v64, v65, v66, v67, v68, v75, v80, v83, v84, v85, 0, v87, a1, a2, v89, &type metadata for SiriSuggestions.IntentType, &protocol witness table for SiriSuggestions.IntentType, v92.n128_i64[0], v92.n128_i64[1], v93, *(&v93 + 1), v94, v95[0]);
    sub_1BF8EE3F8(v69, v70, &unk_1BF9C9CF0);
    __swift_destroy_boxed_opaque_existential_1(v96);
    v51 = OUTLINED_FUNCTION_2_33();
    if (v86)
    {
      v51 = sub_1BF8EE3F8(&v83, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
    }
  }

  OUTLINED_FUNCTION_1_32(v51, v52, v53, v54, v55, v56, v57, v58, v59, v76, v81, v83, v84, v85, v86, v87, v60, v88);
  *&result = OUTLINED_FUNCTION_0_33(v71, v77, v82, v83, v84, v85, v86, v87, v88, *(&v88 + 1), v89, v90, v91, v92, v93).n128_u64[0];
  return result;
}

unint64_t sub_1BF9AF200()
{
  result = qword_1EDBF30A0;
  if (!qword_1EDBF30A0)
  {
    type metadata accessor for NoOpPrerequisite();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF30A0);
  }

  return result;
}

uint64_t sub_1BF9AF258(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v5 = OUTLINED_FUNCTION_43();
  v6(v5);
  return a2;
}

uint64_t sub_1BF9AF314(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 272))
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

uint64_t sub_1BF9AF354(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
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
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);

  return sub_1BF8EE3F8(va, v50, v51);
}

uint64_t OUTLINED_FUNCTION_21_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);

  return sub_1BF8D2004(va, v35 + 144);
}

uint64_t OUTLINED_FUNCTION_25_17(uint64_t a1, uint64_t a2)
{

  return sub_1BF9AF258(a1, a2, v2, v3);
}

void *InAppDetails.getKey(entityMapper:)@<X0>(uint64_t (*a1)(void *)@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = *v3;
  v7 = v3[1];
  v10 = v3[2];
  v9 = v3[3];
  v11 = v3[4];

  result = sub_1BF9B11C0(v11, a1, a2);
  *a3 = v8;
  a3[1] = v7;
  a3[2] = v10;
  a3[3] = v9;
  a3[4] = result;
  return result;
}

SiriSuggestionsKit::InAppIdentifier __swiftcall InAppIdentifier.init(appBundleId:placementId:)(Swift::String appBundleId, Swift::String_optional placementId)
{
  v2->value = appBundleId;
  v2[1] = placementId;
  result.placementId = placementId;
  result.appBundleId = appBundleId;
  return result;
}

void sub_1BF9AF4E0()
{
  qword_1EDC03480 = 0;
  *algn_1EDC03488 = 0xE000000000000000;
  qword_1EDC03490 = 0;
  unk_1EDC03498 = 0;
}

uint64_t InAppIdentifier.appBundleId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InAppIdentifier.placementId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t InAppIdentifier.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];

  sub_1BF9B5288();

  strcpy(v8, "{appBundleId: ");
  HIBYTE(v8[1]) = -18;
  MEMORY[0x1BFB5DE90](v1, v2);
  MEMORY[0x1BFB5DE90](0x6D6563616C70202CLL, 0xEF203A6449746E65);
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 4271950;
  }

  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  MEMORY[0x1BFB5DE90](v5, v6);

  MEMORY[0x1BFB5DE90](125, 0xE100000000000000);
  return v8[0];
}

uint64_t static InAppIdentifier.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1BF9B56D8(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_1BF9B56D8() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1BF9AF6F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xEB00000000644974)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

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

uint64_t sub_1BF9AF7C8(char a1)
{
  if (a1)
  {
    return 0x6E656D6563616C70;
  }

  else
  {
    return 0x6C646E7542707061;
  }
}

uint64_t sub_1BF9AF828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF9AF6F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF9AF850(uint64_t a1)
{
  v2 = sub_1BF9B1364();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9AF88C(uint64_t a1)
{
  v2 = sub_1BF9B1364();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void InAppIdentifier.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_39();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA7B0, &qword_1BF9C9EE0);
  OUTLINED_FUNCTION_1();
  v34 = v28;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v29);
  v31 = v33 - v30;
  v32 = *(v23 + 16);
  v33[1] = *(v23 + 24);
  v33[2] = v32;
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_1BF9B1364();
  sub_1BF9B5898();
  sub_1BF9B55F8();
  if (!v24)
  {
    sub_1BF9B55B8();
  }

  (*(v34 + 8))(v31, v27);
  OUTLINED_FUNCTION_37();
}

uint64_t InAppIdentifier.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1BF9B4B48();
  if (!v2)
  {
    return sub_1BF9B57C8();
  }

  sub_1BF9B57C8();

  return sub_1BF9B4B48();
}

uint64_t InAppIdentifier.hashValue.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_37_1();
  sub_1BF9B4B48();
  sub_1BF9B57C8();
  if (v1)
  {
    sub_1BF9B4B48();
  }

  return sub_1BF9B57E8();
}

void InAppIdentifier.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_9_22();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA7B8, &qword_1BF9C9EE8);
  OUTLINED_FUNCTION_1();
  v28 = v27;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v41 - v30;
  OUTLINED_FUNCTION_8();
  v32 = sub_1BF9B1364();
  OUTLINED_FUNCTION_53(&type metadata for InAppIdentifier.CodingKeys, v33, v32);
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    OUTLINED_FUNCTION_6_24();
    v34 = sub_1BF9B5518();
    v36 = v35;
    OUTLINED_FUNCTION_6_24();
    v37 = sub_1BF9B54D8();
    v39 = v38;
    v40 = *(v28 + 8);
    v42 = v37;
    v40(v31, v26);
    *v25 = v34;
    v25[1] = v36;
    v25[2] = v42;
    v25[3] = v39;

    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF9AFCC8(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  v7 = *(v1 + 1);
  sub_1BF9B57A8();
  InAppIdentifier.hash(into:)(v4);
  return sub_1BF9B57E8();
}

uint64_t InAppDetails.identifier.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_14_18(a1);
}

__n128 InAppDetails.init(identifier:entities:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a1->n128_u64[1];
  a3->n128_u64[0] = a1->n128_u64[0];
  a3->n128_u64[1] = v3;
  result = a1[1];
  a3[1] = result;
  a3[2] = a2;
  return result;
}

__n128 InAppDetails.init(identifier:entities:intentQueries:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a1->n128_u64[1];
  a4->n128_u64[0] = a1->n128_u64[0];
  a4->n128_u64[1] = v4;
  result = a1[1];
  a4[1] = result;
  a4[2].n128_u64[0] = a2;
  a4[2].n128_u64[1] = a3;
  return result;
}

void InAppDetails.init(identifier:entities:intentToSuggest:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SiriSuggestions.Intent(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a1;
  v11 = a1[1];
  v13 = *(a1 + 1);
  v14 = *(a3 + 24);
  if (v14 == 255)
  {
    v17 = 0;
  }

  else
  {
    v26 = v11;
    v27 = v13;
    v15 = *a3;
    v25 = *(a3 + 8);
    v16 = *(a3 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9E80, &unk_1BF9C9EF0);
    type metadata accessor for SiriSuggestions.IntentQuery(0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1BF9B6370;
    if (v14)
    {
      v18 = v15;
      v24[1] = v8;
      v19 = v12;
      v20 = a2;
      v21 = v18;

      *v10 = v21;
      a2 = v20;
      v12 = v19;
      v22 = v25;
      v10[1] = v25;
      v10[2] = v16;
      type metadata accessor for SiriSuggestions.AppIntent(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      *v10 = v15;
      swift_storeEnumTagMultiPayload();
      v23 = v15;
      v22 = v25;
    }

    SiriSuggestions.Intent.getIntentQuery()();
    sub_1BF90DBB4(v10);
    sub_1BF9ADC48(v15, v22, v16, v14);
    v13 = v27;
    v11 = v26;
  }

  *a4 = v12;
  *(a4 + 8) = v11;
  *(a4 + 16) = v13;
  *(a4 + 32) = a2;
  *(a4 + 40) = v17;
}

void InAppDetails.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_9_22();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDE95B0, &unk_1BF9BEFA0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v39 - v27;
  OUTLINED_FUNCTION_8();
  v29 = sub_1BF9B13B8();
  OUTLINED_FUNCTION_53(&unk_1F3F00538, v30, v29);
  if (!v24)
  {
    sub_1BF8E61A4();
    OUTLINED_FUNCTION_6_24();
    sub_1BF9B5558();
    v31 = v46;
    v44 = v45;
    v32 = v47;
    v33 = v48;
    v41 = sub_1BF915B7C(1, v28);
    v42 = v31;
    v43 = v33;
    v40 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9AB8, &qword_1BF9C1D20);
    sub_1BF9B140C(&qword_1EBDEA7C8, &qword_1EDBF3A90, &protocol conformance descriptor for SiriSuggestions.IntentQuery, MEMORY[0x1E69E6330]);
    OUTLINED_FUNCTION_4_30();
    sub_1BF9B5508();
    v34 = OUTLINED_FUNCTION_60();
    v35(v34);
    v36 = v45;
    v37 = v42;
    *v25 = v44;
    v25[1] = v37;
    v38 = v43;
    v25[2] = v40;
    v25[3] = v38;
    v25[4] = v41;
    v25[5] = v36;
  }

  __swift_destroy_boxed_opaque_existential_1(v23);
  OUTLINED_FUNCTION_37();
}

void __swiftcall InAppDetailsKey.init(identifier:entities:)(SiriSuggestionsKit::InAppDetailsKey *__return_ptr retstr, SiriSuggestionsKit::InAppIdentifier identifier, Swift::OpaquePointer entities)
{
  v3 = *(identifier.appBundleId._countAndFlagsBits + 8);
  retstr->identifier.appBundleId._countAndFlagsBits = *identifier.appBundleId._countAndFlagsBits;
  retstr->identifier.appBundleId._object = v3;
  retstr->identifier.placementId = *(identifier.appBundleId._countAndFlagsBits + 16);
  retstr->entities._rawValue = identifier.appBundleId._object;
}

uint64_t InAppDetails.description.getter()
{

  sub_1BF9B5288();
  MEMORY[0x1BFB5DE90](0xD000000000000011, 0x80000001BF9CE580);
  v0 = InAppIdentifier.description.getter();
  MEMORY[0x1BFB5DE90](v0);

  MEMORY[0x1BFB5DE90](0x65697469746E650ALL, 0xEB00000000203A73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88E8, &qword_1BF9B7FF0);
  v1 = sub_1BF9B4978();
  MEMORY[0x1BFB5DE90](v1);

  MEMORY[0x1BFB5DE90](0xD000000000000013, 0x80000001BF9CE5A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9EB0, &qword_1BF9C31A8);
  v2 = sub_1BF9B4B08();
  MEMORY[0x1BFB5DE90](v2);

  return 0;
}

uint64_t sub_1BF9B05EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (OUTLINED_FUNCTION_70(0x696669746E656469, 0xEA00000000007265) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7365697469746E65 && a2 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_70(0x7365697469746E65, 0xE800000000000000) & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x80000001BF9CE5C0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_70(0xD000000000000010, 0x80000001BF9CE5C0);

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

uint64_t sub_1BF9B06E8(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0x7365697469746E65;
  }

  return 0xD000000000000010;
}

uint64_t sub_1BF9B0758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF9B05EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF9B0780(uint64_t a1)
{
  v2 = sub_1BF9B13B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9B07BC(uint64_t a1)
{
  v2 = sub_1BF9B13B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InAppDetailsKey.identifier.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_14_18(a1);
}

uint64_t InAppDetailsKey.description.getter()
{
  sub_1BF9B5288();

  strcpy(v3, "{identifier: ");
  v0 = InAppIdentifier.description.getter();
  MEMORY[0x1BFB5DE90](v0);

  MEMORY[0x1BFB5DE90](0x697469746E65202CLL, 0xEC000000203A7365);
  v1 = sub_1BF9B4978();
  MEMORY[0x1BFB5DE90](v1);

  MEMORY[0x1BFB5DE90](125, 0xE100000000000000);
  return v3[0];
}

void static InAppDetailsKey.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_1BF9B56D8() & 1) == 0)
  {
    return;
  }

  if (!v4)
  {
    if (v5)
    {
      return;
    }

    goto LABEL_13;
  }

  if (v5)
  {
    v9 = v2 == v6 && v4 == v5;
    if (v9 || (sub_1BF9B56D8() & 1) != 0)
    {
LABEL_13:

      sub_1BF8D5F08(v3, v7);
    }
  }
}

uint64_t sub_1BF9B0A38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365697469746E65 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

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

uint64_t sub_1BF9B0B08(char a1)
{
  if (a1)
  {
    return 0x7365697469746E65;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1BF9B0B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1BF9B57A8();
  a4(v8, v6);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF9B0B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF9B0A38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF9B0BC0(uint64_t a1)
{
  v2 = sub_1BF9B14D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9B0BFC(uint64_t a1)
{
  v2 = sub_1BF9B14D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void InAppDetailsKey.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v16 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA7D8, &unk_1BF9C9F00);
  OUTLINED_FUNCTION_1();
  v17 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = *v0;
  v10 = v0[1];
  v11 = v0[2];
  v12 = v0[3];
  v14 = v0[4];
  v15 = v11;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1BF9B14D8();

  sub_1BF9B5898();
  v18 = v9;
  v19 = v10;
  v20 = v15;
  v21 = v12;
  sub_1BF8E61F8();
  OUTLINED_FUNCTION_3_32();
  v13 = v16;
  sub_1BF9B5638();

  if (!v13)
  {
    v18 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8888, &qword_1BF9B7D48);
    sub_1BF8D7594(&qword_1EDBF4758, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    OUTLINED_FUNCTION_3_32();
    sub_1BF9B5638();
  }

  (*(v17 + 8))(v8, v4);
  OUTLINED_FUNCTION_37();
}

uint64_t InAppDetailsKey.hash(into:)(const void *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  sub_1BF9B4B48();
  sub_1BF9B57C8();
  if (v3)
  {
    sub_1BF9B4B48();
  }

  return sub_1BF8D7448(a1, v4);
}

uint64_t InAppDetailsKey.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  OUTLINED_FUNCTION_37_1();
  sub_1BF9B4B48();
  sub_1BF9B57C8();
  if (v1)
  {
    sub_1BF9B4B48();
  }

  sub_1BF8D7448(v4, v2);
  return sub_1BF9B57E8();
}

void InAppDetailsKey.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_9_22();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA7E8, &qword_1BF9C9F10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_8();
  v27 = sub_1BF9B14D8();
  OUTLINED_FUNCTION_53(&type metadata for InAppDetailsKey.CodingKeys, v28, v27);
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    sub_1BF8E61A4();
    OUTLINED_FUNCTION_6_24();
    sub_1BF9B5558();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8888, &qword_1BF9B7D48);
    sub_1BF8D7594(&qword_1EDBF4E50, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    OUTLINED_FUNCTION_4_30();
    sub_1BF9B5558();
    v29 = OUTLINED_FUNCTION_60();
    v30(v29);
    *v25 = v31;
    v25[1] = v32;
    v25[2] = v33;
    v25[3] = v34;
    v25[4] = v31;

    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF9B1160(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v5[9] = *v1;
  v5[10] = v2;
  v6 = *(v1 + 16);
  v7 = v3;
  sub_1BF9B57A8();
  InAppDetailsKey.hash(into:)(v5);
  return sub_1BF9B57E8();
}

void *sub_1BF9B11C0(uint64_t a1, uint64_t (*a2)(void *), uint64_t a3)
{
  v32[7] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE92B0, &qword_1BF9C9210);
  result = sub_1BF9B5458();
  v5 = 0;
  v29 = result;
  v30 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v28 = result + 8;
  if ((v10 & v6) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v17 = (*(v30 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      sub_1BF8D7914(*(v30 + 56) + 48 * v16, v32);

      v20 = a2(v32);
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1(v32);
      result = v29;
      *(v28 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v23 = (v29[6] + 16 * v16);
      *v23 = v18;
      v23[1] = v19;
      v24 = (v29[7] + 16 * v16);
      *v24 = v20;
      v24[1] = v22;
      v25 = v29[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v29[2] = v27;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {
        return result;
      }

      v15 = *(v7 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1BF9B1364()
{
  result = qword_1EDBF4320;
  if (!qword_1EDBF4320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4320);
  }

  return result;
}

unint64_t sub_1BF9B13B8()
{
  result = qword_1EBDEA7C0;
  if (!qword_1EBDEA7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA7C0);
  }

  return result;
}

uint64_t sub_1BF9B140C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE9AB8, &qword_1BF9C1D20);
    sub_1BF9B1494(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BF9B1494(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriSuggestions.IntentQuery(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BF9B14D8()
{
  result = qword_1EBDEA7E0;
  if (!qword_1EBDEA7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA7E0);
  }

  return result;
}

unint64_t sub_1BF9B1530()
{
  result = qword_1EDBF32D0;
  if (!qword_1EDBF32D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF32D0);
  }

  return result;
}

unint64_t sub_1BF9B1588()
{
  result = qword_1EBDEA7F0;
  if (!qword_1EBDEA7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA7F0);
  }

  return result;
}

uint64_t sub_1BF9B15E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1BF9B1628(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BF9B1680(uint64_t a1, int a2)
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

uint64_t sub_1BF9B16C0(uint64_t result, int a2, int a3)
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

_BYTE *sub_1BF9B1724(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1BF9B17FC(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF9B18DC()
{
  result = qword_1EBDEA7F8;
  if (!qword_1EBDEA7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA7F8);
  }

  return result;
}

unint64_t sub_1BF9B1934()
{
  result = qword_1EBDEA800;
  if (!qword_1EBDEA800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA800);
  }

  return result;
}

unint64_t sub_1BF9B198C()
{
  result = qword_1EBDEA808;
  if (!qword_1EBDEA808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA808);
  }

  return result;
}

unint64_t sub_1BF9B19E4()
{
  result = qword_1EBDEA810;
  if (!qword_1EBDEA810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA810);
  }

  return result;
}

unint64_t sub_1BF9B1A3C()
{
  result = qword_1EBDEA818;
  if (!qword_1EBDEA818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA818);
  }

  return result;
}

unint64_t sub_1BF9B1A94()
{
  result = qword_1EBDEA820;
  if (!qword_1EBDEA820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA820);
  }

  return result;
}

unint64_t sub_1BF9B1AEC()
{
  result = qword_1EBDEA828;
  if (!qword_1EBDEA828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA828);
  }

  return result;
}

unint64_t sub_1BF9B1B44()
{
  result = qword_1EDBF4310;
  if (!qword_1EDBF4310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4310);
  }

  return result;
}

unint64_t sub_1BF9B1B9C()
{
  result = qword_1EDBF4318;
  if (!qword_1EDBF4318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4318);
  }

  return result;
}

uint64_t static IntentParameterServiceUtils.getParametersFromIntent(intent:suggestion:checkForAllMandatoryParams:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 89) = a3;
  *(v3 + 184) = a1;
  *(v3 + 192) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BF9B1C24, 0, 0);
}

uint64_t sub_1BF9B1C24()
{
  v2 = *(v0 + 192);
  v3 = sub_1BF9B4988();
  v4 = *(v2 + 152);
  *(v0 + 200) = v4;
  v5 = *(v4 + 32);
  *(v0 + 90) = v5;
  v6 = -1;
  v7 = -1 << v5;
  if (-(-1 << v5) < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v4 + 64);
  *(v0 + 208) = v3;
  *(v0 + 216) = v3;

  if (v8)
  {
    v10 = 0;
LABEL_8:
    *(v0 + 224) = v8;
    *(v0 + 232) = v10;
    OUTLINED_FUNCTION_2_34(v9, __clz(__rbit64(v8)) | (v10 << 6));
    sub_1BF8D2004(v8 + OBJC_IVAR____TtC18SiriSuggestionsKit19ResolvableParameter_intentTransformer, v0 + 16);
    OUTLINED_FUNCTION_4_31();

    v12 = OUTLINED_FUNCTION_5_24();
    v13 = v1(v12);
    OUTLINED_FUNCTION_0_34(v13, v14);
    v22 = v15;
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_7_26(v16);
    *v17 = v18;
    v19 = OUTLINED_FUNCTION_1_33(v17);
    v20 = v22;
  }

  else
  {
    v11 = 0;
    while (((63 - v7) >> 6) - 1 != v11)
    {
      v10 = v11 + 1;
      v8 = *(v9 + 8 * v11++ + 72);
      if (v8)
      {
        goto LABEL_8;
      }
    }

    v19 = OUTLINED_FUNCTION_5();
  }

  return v20(v19);
}

uint64_t sub_1BF9B1DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(*v9 + 280) = v8;

  if (v8)
  {

    v10 = sub_1BF9B256C;
  }

  else
  {
    v10 = sub_1BF9B1F38;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1BF9B1F38()
{
  v61 = v0;
  sub_1BF9AD570(v0 + 56, v0 + 96);
  if (*(v0 + 128) == 2)
  {
    v2 = vorrq_s8(*(v0 + 96), *(v0 + 112));
    if (!*&vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL)))
    {
      v40 = *(v0 + 89);
      sub_1BF9B29C8(v0 + 96);
      if (v40 == 1 && *(*(v0 + 256) + 32) == 1)
      {

        if (qword_1EDBF08E8 != -1)
        {
          OUTLINED_FUNCTION_3_33(&qword_1EDBF08E8);
        }

        v41 = sub_1BF9B47C8();
        __swift_project_value_buffer(v41, qword_1EDBF08F0);

        v42 = sub_1BF9B47A8();
        v43 = sub_1BF9B5048();

        v44 = os_log_type_enabled(v42, v43);
        v45 = *(v0 + 248);
        if (v44)
        {
          v46 = *(v0 + 240);
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v60 = v48;
          *v47 = 136315138;
          v49 = sub_1BF8DE810(v46, v45, &v60);

          *(v47 + 4) = v49;
          _os_log_impl(&dword_1BF8B8000, v42, v43, "%s: This is a mandatory parameter and it isnt being extracted. Returning nothing", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v48);
          OUTLINED_FUNCTION_87();
          OUTLINED_FUNCTION_87();
        }

        else
        {
        }

        sub_1BF9B4988();

        sub_1BF9B29C8(v0 + 56);
        __swift_destroy_boxed_opaque_existential_1((v0 + 16));
LABEL_38:
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_10_23();

        __asm { BRAA            X2, X16 }
      }

      if (qword_1EDBF08E8 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_44;
    }
  }

  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v5 = *(v0 + 208);
  sub_1BF9B29C8(v0 + 96);
  sub_1BF9AD570(v0 + 56, v0 + 136);
  swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 176) = v5;
  v6 = sub_1BF8C2E64(v3, v4);
  if (__OFADD__(*(v5 + 16), (v7 & 1) == 0))
  {
    goto LABEL_42;
  }

  v8 = v6;
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA830, qword_1BF9CA590);
  if ((sub_1BF9B53A8() & 1) == 0)
  {
    goto LABEL_10;
  }

  v10 = sub_1BF8C2E64(*(v0 + 240), *(v0 + 248));
  if ((v9 & 1) == (v11 & 1))
  {
    v8 = v10;
LABEL_10:
    v14 = *(v0 + 248);
    if (v9)
    {

      v15 = *(v0 + 176);
      sub_1BF9B3890(v0 + 136, v15[7] + 40 * v8);

      sub_1BF9B29C8(v0 + 56);
    }

    else
    {
      v16 = *(v0 + 240);
      v15 = *(v0 + 176);
      v15[(v8 >> 6) + 8] |= 1 << v8;
      v17 = (v15[6] + 16 * v8);
      *v17 = v16;
      v17[1] = v14;
      v18 = v15[7] + 40 * v8;
      v19 = *(v0 + 136);
      v20 = *(v0 + 152);
      *(v18 + 32) = *(v0 + 168);
      *v18 = v19;
      *(v18 + 16) = v20;

      sub_1BF9B29C8(v0 + 56);
      v21 = v15[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_43;
      }

      v15[2] = v23;
    }

    for (i = v15; ; i = *(v0 + 216))
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      v26 = *(v0 + 224);
      v25 = *(v0 + 232);
      *(v0 + 208) = v15;
      *(v0 + 216) = i;
      v27 = (v26 - 1) & v26;
      if (v27)
      {
        v28 = *(v0 + 200);
        goto LABEL_22;
      }

      while (!__OFADD__(v25, 1))
      {
        v28 = OUTLINED_FUNCTION_8_20();
        if (v31 == v22)
        {

          goto LABEL_38;
        }

        v27 = *(v28 + 8 * v30 + 64);
        v25 = v29 + 1;
        if (v27)
        {
          v25 = v30;
LABEL_22:
          *(v0 + 224) = v27;
          *(v0 + 232) = v25;
          OUTLINED_FUNCTION_2_34(v28, __clz(__rbit64(v27)) | (v25 << 6));
          sub_1BF8D2004(v8 + OBJC_IVAR____TtC18SiriSuggestionsKit19ResolvableParameter_intentTransformer, v0 + 16);
          OUTLINED_FUNCTION_4_31();

          v32 = OUTLINED_FUNCTION_5_24();
          v33 = v1(v32);
          OUTLINED_FUNCTION_0_34(v33, v34);
          v35 = swift_task_alloc();
          v36 = OUTLINED_FUNCTION_7_26(v35);
          *v36 = v37;
          OUTLINED_FUNCTION_1_33(v36);
          OUTLINED_FUNCTION_10_23();

          __asm { BRAA            X2, X16 }
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      OUTLINED_FUNCTION_3_33(&qword_1EDBF08E8);
LABEL_32:
      v50 = sub_1BF9B47C8();
      __swift_project_value_buffer(v50, qword_1EDBF08F0);

      v51 = sub_1BF9B47A8();
      v52 = sub_1BF9B5038();

      v53 = os_log_type_enabled(v51, v52);
      v54 = *(v0 + 248);
      v8 = *(v0 + 256);
      if (v53)
      {
        v55 = *(v0 + 240);
        v56 = *(v0 + 192);
        v57 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *v57 = 136315394;
        v1 = sub_1BF8DE810(v55, v54, &v60);

        *(v57 + 4) = v1;
        *(v57 + 12) = 2080;
        *(v57 + 14) = sub_1BF8DE810(*(v56 + 56), *(v56 + 64), &v60);
        _os_log_impl(&dword_1BF8B8000, v51, v52, "Ignoring intent parameter: %s for %s", v57, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_87();
        OUTLINED_FUNCTION_87();
      }

      else
      {
      }

      sub_1BF9B29C8(v0 + 56);
      v15 = *(v0 + 208);
    }
  }

  OUTLINED_FUNCTION_10_23();

  return sub_1BF9B5758();
}

uint64_t sub_1BF9B256C()
{
  v39 = v0;
  if (qword_1EDBF08E8 != -1)
  {
LABEL_19:
    OUTLINED_FUNCTION_3_33(&qword_1EDBF08E8);
  }

  v2 = v0[35];
  v3 = sub_1BF9B47C8();
  __swift_project_value_buffer(v3, qword_1EDBF08F0);

  v4 = v2;
  v5 = sub_1BF9B47A8();
  v6 = sub_1BF9B5048();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[35];
  v9 = v0[32];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v1 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v38 = v11;
    *v10 = 136315394;
    v12 = *(v9 + 16);
    v13 = *(v9 + 24);

    v14 = sub_1BF8DE810(v12, v13, &v38);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2112;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v16;
    *v1 = v16;
    _os_log_impl(&dword_1BF8B8000, v5, v6, "Error when extracting properties for %s. Ignoring result. %@", v10, 0x16u);
    sub_1BF9B2960(v1);
    OUTLINED_FUNCTION_87();
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  else
  {
  }

  v17 = v0[26];
  v18 = v0[27];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v20 = v0[28];
  v19 = v0[29];
  v0[26] = v17;
  v0[27] = v18;
  v21 = (v20 - 1) & v20;
  if (v21)
  {
    v22 = v0[25];
LABEL_12:
    v0[28] = v21;
    v0[29] = v19;
    OUTLINED_FUNCTION_2_34(v22, __clz(__rbit64(v21)) | (v19 << 6));
    sub_1BF8D2004(v17 + OBJC_IVAR____TtC18SiriSuggestionsKit19ResolvableParameter_intentTransformer, (v0 + 2));
    OUTLINED_FUNCTION_4_31();

    v27 = OUTLINED_FUNCTION_5_24();
    v28 = v1(v27);
    OUTLINED_FUNCTION_0_34(v28, v29);
    v37 = v30;
    v31 = swift_task_alloc();
    v32 = OUTLINED_FUNCTION_7_26(v31);
    *v32 = v33;
    v35 = OUTLINED_FUNCTION_1_33(v32);
    v36 = v37;
  }

  else
  {
    while (1)
    {
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      v22 = OUTLINED_FUNCTION_8_20();
      if (v25 == v26)
      {
        break;
      }

      v21 = *(v22 + 8 * v24 + 64);
      v19 = v23 + 1;
      if (v21)
      {
        v19 = v24;
        goto LABEL_12;
      }
    }

    v35 = OUTLINED_FUNCTION_5();
  }

  return v36(v35);
}

uint64_t sub_1BF9B288C(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_1BF9B28EC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1BF9B2960(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9468, &unk_1BF9C2470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BF9B2A1C(uint64_t a1)
{
  sub_1BF9B4888();
  sub_1BF9B39F4(&qword_1EBDE9DF8, MEMORY[0x1E69DB0C8]);
  v2 = sub_1BF9B4A48();

  return sub_1BF9B2D2C(a1, v2);
}

unint64_t sub_1BF9B2AA0(uint64_t a1)
{
  v2 = sub_1BF9B5208();

  return sub_1BF9B2ED4(a1, v2);
}

unint64_t sub_1BF9B2AE4(uint64_t a1)
{
  v1 = a1;
  sub_1BF9B57A8();
  sub_1BF8CD538(v5, v1, v2);
  v3 = sub_1BF9B57E8();

  return sub_1BF9B2F98(v1, v3);
}

unint64_t sub_1BF9B2B50(uint64_t a1)
{
  v1 = a1;
  v4[39] = a1;
  sub_1BF9B57A8();
  InvocationType.hash(into:)(v4);
  v2 = sub_1BF9B57E8();

  return sub_1BF9B31A4(v1, v2);
}

unint64_t sub_1BF9B2BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  sub_1BF9B57A8();
  sub_1BF8CD538(v9, v5, v6);
  MEMORY[0x1BFB5EAC0](a2);
  MEMORY[0x1BFB5EAC0](a3);
  v7 = sub_1BF9B57E8();

  return sub_1BF9B345C(v5, a2, a3, v7);
}

unint64_t sub_1BF9B2C5C(void *a1)
{
  sub_1BF9B57A8();
  __swift_project_boxed_opaque_existential_1(a1 + 10, a1[13]);
  sub_1BF9B4A58();
  sub_1BF9B57A8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF9B4A58();
  v2 = sub_1BF9B57E8();
  MEMORY[0x1BFB5EAC0](v2);
  v3 = sub_1BF9B57E8();

  return sub_1BF9B3698(a1, v3);
}

unint64_t sub_1BF9B2D2C(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_1BF9B4888();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_1BF9B39F4(&qword_1EBDEA838, MEMORY[0x1E69DB0D0]);
    v9 = sub_1BF9B4A88();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1BF9B2ED4(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1BF9B3998(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1BFB5E520](v8, a1);
    sub_1BF972B34(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1BF9B2F98(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE300000000000000;
      v8 = 5459817;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE500000000000000;
          v8 = 0x534F63616DLL;
          break;
        case 2:
          v7 = 0xE400000000000000;
          v8 = 1397716596;
          break;
        case 3:
          v7 = 0xE700000000000000;
          v8 = 0x534F6863746177;
          break;
        case 4:
          v7 = 0xE800000000000000;
          v8 = 0x534F6E6F69736976;
          break;
        case 5:
          v7 = 0xE700000000000000;
          v8 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      v9 = 0xE300000000000000;
      v10 = 5459817;
      switch(a1)
      {
        case 1:
          v9 = 0xE500000000000000;
          v10 = 0x534F63616DLL;
          break;
        case 2:
          v9 = 0xE400000000000000;
          v10 = 1397716596;
          break;
        case 3:
          v9 = 0xE700000000000000;
          v10 = 0x534F6863746177;
          break;
        case 4:
          v9 = 0xE800000000000000;
          v10 = 0x534F6E6F69736976;
          break;
        case 5:
          v9 = 0xE700000000000000;
          v10 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = sub_1BF9B56D8();

      if ((v12 & 1) == 0)
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

unint64_t sub_1BF9B31A4(unsigned int a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
  {
    return v4;
  }

  v5 = ~v3;
  v6 = a1 & 0xFF00;
  v7 = BYTE1(a1) - 2;
  v8 = a1;
  v22 = a1 & 0xFE;
  if (a1)
  {
    v9 = 0x6E61747369737361;
  }

  else
  {
    v9 = 1919251317;
  }

  v20 = v9;
  v10 = 0xE400000000000000;
  if (a1)
  {
    v10 = 0xE900000000000074;
  }

  v21 = v10;
  if ((a1 >> 8))
  {
    v11 = 0x6465707974;
  }

  else
  {
    v11 = 0x6563696F76;
  }

  while (2)
  {
    v12 = *(*(v2 + 48) + 2 * v4);
    switch(v12 >> 8)
    {
      case 2u:
        if (v6 != 512)
        {
          goto LABEL_47;
        }

        return v4;
      case 3u:
        if (v6 != 768)
        {
          goto LABEL_47;
        }

        return v4;
      case 4u:
        if (v6 != 1024)
        {
          goto LABEL_47;
        }

        return v4;
      case 5u:
        if (v6 != 1280)
        {
          goto LABEL_47;
        }

        return v4;
      case 6u:
        if (v6 != 1536)
        {
          goto LABEL_47;
        }

        return v4;
      default:
        if (v7 < 5)
        {
          goto LABEL_47;
        }

        if (*(*(v2 + 48) + 2 * v4) == 2)
        {
          if (v8 == 2)
          {
            goto LABEL_42;
          }

          goto LABEL_47;
        }

        if (*(*(v2 + 48) + 2 * v4) != 3)
        {
          if (v22 == 2)
          {
            goto LABEL_47;
          }

          if (v12)
          {
            v13 = 0x6E61747369737361;
          }

          else
          {
            v13 = 1919251317;
          }

          if (v12)
          {
            v14 = 0xE900000000000074;
          }

          else
          {
            v14 = 0xE400000000000000;
          }

          if (v13 == v20 && v14 == v21)
          {

            goto LABEL_42;
          }

          v19 = sub_1BF9B56D8();

          if (v19)
          {
            goto LABEL_42;
          }

LABEL_47:
          v4 = (v4 + 1) & v5;
          if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
          {
            continue;
          }

          return v4;
        }

        if (v8 != 3)
        {
          goto LABEL_47;
        }

LABEL_42:
        if ((v12 >> 8))
        {
          v16 = 0x6465707974;
        }

        else
        {
          v16 = 0x6563696F76;
        }

        if (v16 == v11)
        {
          swift_bridgeObjectRelease_n();
          return v4;
        }

        v17 = sub_1BF9B56D8();
        swift_bridgeObjectRelease_n();
        if ((v17 & 1) == 0)
        {
          goto LABEL_47;
        }

        return v4;
    }
  }
}

unint64_t sub_1BF9B345C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v8 = ~v5;
    do
    {
      v9 = *(v4 + 48) + 24 * v6;
      v11 = *(v9 + 8);
      v10 = *(v9 + 16);
      v12 = 0xE300000000000000;
      v13 = 5459817;
      switch(*v9)
      {
        case 1:
          v12 = 0xE500000000000000;
          v13 = 0x534F63616DLL;
          break;
        case 2:
          v12 = 0xE400000000000000;
          v13 = 1397716596;
          break;
        case 3:
          v12 = 0xE700000000000000;
          v13 = 0x534F6863746177;
          break;
        case 4:
          v12 = 0xE800000000000000;
          v13 = 0x534F6E6F69736976;
          break;
        case 5:
          v12 = 0xE700000000000000;
          v13 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      v14 = 0xE300000000000000;
      v15 = 5459817;
      switch(a1)
      {
        case 1:
          v14 = 0xE500000000000000;
          v15 = 0x534F63616DLL;
          break;
        case 2:
          v14 = 0xE400000000000000;
          v15 = 1397716596;
          break;
        case 3:
          v14 = 0xE700000000000000;
          v15 = 0x534F6863746177;
          break;
        case 4:
          v14 = 0xE800000000000000;
          v15 = 0x534F6E6F69736976;
          break;
        case 5:
          v14 = 0xE700000000000000;
          v15 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      if (v13 == v15 && v12 == v14)
      {
      }

      else
      {
        v17 = sub_1BF9B56D8();

        if ((v17 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      if (v11 == a2 && v10 == a3)
      {
        return v6;
      }

LABEL_26:
      v6 = (v6 + 1) & v8;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1BF9B3698(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    while (1)
    {
      sub_1BF932458(*(v6 + 48) + 120 * v5, v26);
      v9 = v29;
      v10 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      v11 = (*(v10 + 40))(v9, v10);
      v13 = v12;
      v14 = a1[13];
      v15 = a1[14];
      __swift_project_boxed_opaque_existential_1(a1 + 10, v14);
      if (v11 == (*(v15 + 40))(v14, v15) && v13 == v16)
      {
        break;
      }

      v18 = sub_1BF9B56D8();

      if (v18)
      {
        goto LABEL_10;
      }

      sub_1BF9324B4(v26);
LABEL_11:
      v5 = (v5 + 1) & v8;
      if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
      {
        return v5;
      }
    }

LABEL_10:
    v19 = v27;
    v20 = a1[3];
    v21 = __swift_project_boxed_opaque_existential_1(a1, v20);
    v25[3] = v20;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v25);
    (*(*(v20 - 8) + 16))(boxed_opaque_existential_1Tm, v21, v20);
    v23 = v19(v25);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_1BF9324B4(v26);
    if (v23)
    {
      return v5;
    }

    goto LABEL_11;
  }

  return v5;
}

_BYTE *storeEnumTagSinglePayload for IntentParameterServiceUtils(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BF9B39F4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1BF9B4888();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BF9B3A98@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BF9B4AF8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1BF9B4328();
  swift_allocObject();
  v13 = 0xC800000000;
  v14 = sub_1BF9B42F8();
  sub_1BF9B41D0(&v13, 0);
  v14 |= 0x4000000000000000uLL;
  v5 = sub_1BF9B3D64(&v13, a1);
  if ((v6 & 1) != 0 || v5 < 1)
  {
    result = sub_1BF8F9F3C(v13, v14);
    v9 = 0;
    v11 = 0;
  }

  else
  {
    sub_1BF9B4408();
    v7 = v13;
    v8 = v14;
    sub_1BF9B4AE8();
    v9 = sub_1BF9B4AC8();
    v11 = v10;
    result = sub_1BF8F9F3C(v7, v8);
  }

  *a2 = v9;
  a2[1] = v11;
  return result;
}

double sub_1BF9B3BD8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96F8, &qword_1BF9BF440);
    sub_1BF9B5278();
    if (!v2)
    {
      return *&v5[2];
    }

    return result;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      sub_1BF9B3A98(((a2 & 0xFFFFFFFFFFFFFFFLL) + 32), v5);
      if (!v2)
      {
        return *v5;
      }

      return result;
    }

    goto LABEL_9;
  }

  v5[0] = a1;
  v5[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  sub_1BF9B3A98(v5, &v4);
  if (!v2)
  {
    return *&v4;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SystemInformation(_BYTE *result, int a2, int a3)
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

__int128 *sub_1BF9B3D64(uint64_t *a1, char *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v3 = a1[1];
  switch(v3 >> 62)
  {
    case 1uLL:
      v12 = v3 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1BF8F9F3C(v4, v3);
      *a1 = xmmword_1BF9C9A40;
      sub_1BF8F9F3C(0, 0xC000000000000000);
      v13 = v4 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_18;
      }

      if (v13 < v4)
      {
        goto LABEL_25;
      }

      if (sub_1BF9B42E8() && __OFSUB__(v4, sub_1BF9B4318()))
      {
        goto LABEL_26;
      }

      sub_1BF9B4328();
      swift_allocObject();
      v14 = sub_1BF9B42C8();

      v12 = v14;
LABEL_18:
      if (v13 < v4)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
      }

      v7 = sub_1BF9B40EC(v4, v4 >> 32, v12, a2);

      v11 = v12 | 0x4000000000000000;
      if (v2)
      {
        *a1 = v4;
        goto LABEL_21;
      }

      *a1 = v4;
      a1[1] = v11;
      break;
    case 2uLL:

      sub_1BF8F9F3C(v4, v3);
      *&v18 = v4;
      *(&v18 + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1BF9C9A40;
      sub_1BF8F9F3C(0, 0xC000000000000000);
      v7 = &v18;
      sub_1BF9B4398();
      v9 = v18;
      v10 = sub_1BF9B40EC(*(v18 + 16), *(v18 + 24), *(&v18 + 1), a2);
      if (v2)
      {
        v11 = *(&v9 + 1) | 0x8000000000000000;
        *a1 = v9;
LABEL_21:
        a1[1] = v11;
      }

      else
      {
        v7 = v10;
        *a1 = v9;
        a1[1] = *(&v9 + 1) | 0x8000000000000000;
      }

      break;
    case 3uLL:
      *(&v18 + 7) = 0;
      v17 = 0;
      *&v18 = 0;
      if (sysctlbyname(a2, &v18, &v17, 0, 0))
      {
        return 0;
      }

      else
      {
        return v17;
      }

    default:
      sub_1BF8F9F3C(v4, v3);
      *&v18 = v4;
      WORD4(v18) = v3;
      BYTE10(v18) = BYTE2(v3);
      BYTE11(v18) = BYTE3(v3);
      BYTE12(v18) = BYTE4(v3);
      BYTE13(v18) = BYTE5(v3);
      BYTE14(v18) = BYTE6(v3);
      v17 = BYTE6(v3);
      if (sysctlbyname(a2, &v18, &v17, 0, 0))
      {
        v7 = 0;
      }

      else
      {
        v7 = v17;
      }

      v8 = DWORD2(v18) | ((WORD6(v18) | (BYTE14(v18) << 16)) << 32);
      *a1 = v18;
      a1[1] = v8;
      return v7;
  }

  return v7;
}

size_t sub_1BF9B40EC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1BF9B42E8();
  if (!v7)
  {
LABEL_13:
    __break(1u);
  }

  v8 = v7;
  v9 = sub_1BF9B4318();
  v10 = a1 - v9;
  if (__OFSUB__(a1, v9))
  {
    __break(1u);
    goto LABEL_12;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = sub_1BF9B4308();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v16[0] = v14;
  if (sysctlbyname(a4, (v8 + v10), v16, 0, 0))
  {
    return 0;
  }

  else
  {
    return v16[0];
  }
}

uint64_t sub_1BF9B41D0(int *a1, int a2)
{
  sub_1BF9B43B8();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = sub_1BF9B42E8();
  if (!v6)
  {
LABEL_10:
    __break(1u);
    return sub_1BF9B4278();
  }

  v7 = v6;
  v8 = sub_1BF9B4318();
  v9 = v4 - v8;
  if (__OFSUB__(v4, v8))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v5 - v4;
  v11 = sub_1BF9B4308();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v7 + v9), a2, v12);
}
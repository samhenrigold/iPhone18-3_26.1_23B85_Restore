uint64_t sub_18BA69654(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B987B10;

  return sub_18BA69268(a1, v4);
}

uint64_t sub_18BA696F4@<X0>(uint64_t *a2@<X8>, __n128 q0_0@<Q0>)
{
  result = sub_18BA6AAF4(q0_0);
  *a2 = result;
  return result;
}

uint64_t sub_18BA6971C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_18BC20F28();
  v2[4] = sub_18BC20F18();
  v4 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BA697B4, v4, v3);
}

uint64_t sub_18BA697B4()
{
  v1 = v0[3];

  v2 = [v1 currentScene];
  v3 = v0[2];
  if (v2)
  {
    *v3 = v2;
    v4 = *MEMORY[0x1E6985C00];
  }

  else
  {
    v4 = *MEMORY[0x1E6985BF8];
  }

  v5 = sub_18BC1F048();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  v6 = v0[1];

  return v6();
}

unint64_t sub_18BA69898()
{
  result = qword_1EA9D7398;
  if (!qword_1EA9D7398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7398);
  }

  return result;
}

uint64_t sub_18BA698EC(__n128 a1)
{
  v1 = sub_18BC1E8B8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_18BC1E8D8();
  __swift_allocate_value_buffer(v7, qword_1EA9F8070);
  __swift_project_value_buffer(v7, qword_1EA9F8070);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v2 + 104))(v4, *MEMORY[0x1E6968DF0], v1);
  return sub_18BC1E8F8();
}

uint64_t sub_18BA69AE0(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_18BC20F28();
  v2[7] = sub_18BC20F18();
  v4 = sub_18BC20ED8();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x1EEE6DFA0](sub_18BA69B78, v4, v3);
}

uint64_t sub_18BA69B78()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 safari_isSafariFamilyApplicationBundle];

  if (v2)
  {

    v3 = [objc_opt_self() sharedApplication];
    v0[3] = &unk_1F0032BB8;
    v4 = swift_dynamicCastObjCProtocolConditional();
    if (v4)
    {
      v5 = v4;
      sub_18BC1E0A8();
      v6 = v0[4];
      v7 = *(v6 + 16);
      if (v7)
      {
        v33 = v3;
        v34 = v0;
        v36 = MEMORY[0x1E69E7CC0];
        sub_18B7B7A54(0, v7, 0);
        v8 = 0;
        v9 = *(v36 + 16);
        v10 = 16 * v9;
        do
        {
          v11 = *(v6 + v8 + 32);
          v12 = *(v6 + v8 + 40);
          v13 = *(v36 + 24);
          sub_18BC1E3F8();
          if (v9 >= v13 >> 1)
          {
            sub_18B7B7A54((v13 > 1), v9 + 1, 1);
          }

          *(v36 + 16) = v9 + 1;
          v14 = v36 + v10;
          *(v14 + 32) = v11;
          *(v14 + 40) = v12;
          v10 += 16;
          v8 += 24;
          ++v9;
          --v7;
        }

        while (v7);

        v3 = v33;
        v0 = v34;
      }

      else
      {
      }

      v32 = sub_18BC20D88();

      [v5 deleteTabGroupsWithUUIDs_];

      sub_18BC1DF98();
      v29 = v0[1];
    }

    else
    {

      if (qword_1EA9D2550 != -1)
      {
        swift_once();
      }

      v26 = sub_18BC1DE48();
      v27 = __swift_project_value_buffer(v26, qword_1EA9F8578);
      sub_18B9A33F8();
      swift_allocError();
      (*(*(v26 - 8) + 16))(v28, v27, v26);
      swift_willThrow();
      v29 = v0[1];
    }

    return v29();
  }

  else
  {
    if (qword_1EA9D24D8 != -1)
    {
      swift_once();
    }

    sub_18BC1E0A8();
    v15 = v0[2];
    v16 = *(v15 + 16);
    if (v16)
    {
      v35 = v0;
      v37 = MEMORY[0x1E69E7CC0];
      sub_18B7B7A54(0, v16, 0);
      v17 = 0;
      v18 = v37;
      v19 = *(v37 + 16);
      v20 = 16 * v19;
      do
      {
        v21 = v15;
        v23 = *(v15 + v17 + 32);
        v22 = *(v15 + v17 + 40);
        v24 = *(v37 + 24);
        sub_18BC1E3F8();
        if (v19 >= v24 >> 1)
        {
          sub_18B7B7A54((v24 > 1), v19 + 1, 1);
        }

        *(v37 + 16) = v19 + 1;
        v25 = v37 + v20;
        *(v25 + 32) = v23;
        *(v25 + 40) = v22;
        v20 += 16;
        v17 += 24;
        ++v19;
        --v16;
        v15 = v21;
      }

      while (v16);

      v0 = v35;
    }

    else
    {

      v18 = MEMORY[0x1E69E7CC0];
    }

    v0[10] = v18;
    v30 = swift_task_alloc();
    v0[11] = v30;
    *v30 = v0;
    v30[1] = sub_18BA69FEC;

    return SiriLinkDataSource.deleteTabGroups(uuids:)(v18);
  }
}

uint64_t sub_18BA69FEC()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_18BA6A130, v3, v2);
}

uint64_t sub_18BA6A130()
{

  sub_18BC1DF98();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_18BA6A1DC()
{
  result = qword_1EA9D73A0;
  if (!qword_1EA9D73A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D73A0);
  }

  return result;
}

unint64_t sub_18BA6A234()
{
  result = qword_1EA9D73A8;
  if (!qword_1EA9D73A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D73A8);
  }

  return result;
}

uint64_t sub_18BA6A348@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_18BA6A3F0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B7B6968;

  return sub_18BA69AE0(a1, v4);
}

uint64_t sub_18BA6A490@<X0>(uint64_t *a2@<X8>, __n128 q0_0@<Q0>)
{
  result = sub_18BA6B018(q0_0);
  *a2 = result;
  return result;
}

uint64_t sub_18BA6A4B8(uint64_t a1)
{
  v2 = sub_18BA3F600();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

uint64_t sub_18BA6A544(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_18BC21FD8() & 1;
  }
}

uint64_t sub_18BA6A59C()
{
  v0 = sub_18BC1E488();
  v28 = *(v0 - 8);
  v29 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v27 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0, &unk_18BC472F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v26 = &v21 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7430, &unk_18BC50F30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v25 = &v21 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0, &qword_18BC41D40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v24 = &v21 - v7;
  v8 = sub_18BC1E8B8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v22 = sub_18BC1E8D8();
  v14 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7438, &qword_18BC482D0);
  sub_18BC20B18();
  sub_18BC1EC38();
  v15 = *MEMORY[0x1E6968DF0];
  v16 = *(v9 + 104);
  v16(v11, v15, v8);
  sub_18BC1E8E8();
  sub_18BC20B18();
  sub_18BC1EC38();
  v16(v11, v15, v8);
  v17 = v24;
  sub_18BC1E8F8();
  (*(v14 + 56))(v17, 0, 1, v22);
  v18 = sub_18BC20AF8();
  v30 = 0;
  v31 = 0;
  (*(*(v18 - 8) + 56))(v25, 1, 1, v18);
  v19 = sub_18BC1DF68();
  (*(*(v19 - 8) + 56))(v26, 1, 1, v19);
  (*(v28 + 104))(v27, *MEMORY[0x1E695A4F8], v29);
  return sub_18BC1E168();
}

uint64_t sub_18BA6AAF4(__n128 a1)
{
  v1 = sub_18BC1E488();
  v27 = *(v1 - 8);
  v28 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v26 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0, &unk_18BC472F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v25 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v24 = v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0, &qword_18BC41D40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v23 = v22 - v8;
  v9 = sub_18BC1E8B8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v22[0] = sub_18BC1E8D8();
  v15 = *(v22[0] - 8);
  MEMORY[0x1EEE9AC00](v22[0]);
  v22[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7428, &qword_18BC482B8);
  sub_18BC20B18();
  sub_18BC1EC38();
  v16 = *MEMORY[0x1E6968DF0];
  v17 = *(v10 + 104);
  v17(v12, v16, v9);
  sub_18BC1E8E8();
  sub_18BC20B18();
  sub_18BC1EC38();
  v17(v12, v16, v9);
  v18 = v23;
  sub_18BC1E8F8();
  (*(v15 + 56))(v18, 0, 1, v22[0]);
  v19 = sub_18BC1DF68();
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v20 = *(*(v19 - 8) + 56);
  v20(v24, 1, 1, v19);
  v20(v25, 1, 1, v19);
  (*(v27 + 104))(v26, *MEMORY[0x1E695A4F8], v28);
  sub_18BA67C48();
  return sub_18BC1E118();
}

uint64_t sub_18BA6B018(__n128 a1)
{
  v1 = sub_18BC1E488();
  v27 = *(v1 - 8);
  v28 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v26 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0, &unk_18BC472F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v25 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v24 = v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0, &qword_18BC41D40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v23 = v22 - v8;
  v9 = sub_18BC1E8B8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v22[0] = sub_18BC1E8D8();
  v15 = *(v22[0] - 8);
  MEMORY[0x1EEE9AC00](v22[0]);
  v22[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D73C0, &qword_18BC482A8);
  sub_18BC20B18();
  sub_18BC1EC38();
  v16 = *MEMORY[0x1E6968DF0];
  v17 = *(v10 + 104);
  v17(v12, v16, v9);
  sub_18BC1E8E8();
  sub_18BC20B18();
  sub_18BC1EC38();
  v17(v12, v16, v9);
  v18 = v23;
  sub_18BC1E8F8();
  (*(v15 + 56))(v18, 0, 1, v22[0]);
  v29 = 0;
  v19 = sub_18BC1DF68();
  v20 = *(*(v19 - 8) + 56);
  v20(v24, 1, 1, v19);
  v20(v25, 1, 1, v19);
  (*(v27 + 104))(v26, *MEMORY[0x1E695A4F8], v28);
  sub_18BA67C48();
  return sub_18BC1E118();
}

double sub_18BA6B52C(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[0] = a2;
  v7 = sub_18BC1E8B8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_18BC1E8D8();
  MEMORY[0x1EEE9AC00](v13 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5460, &qword_18BC482F0);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v8 + 104))(v10, *MEMORY[0x1E6968DF0], v7);
  sub_18BC1E8E8();
  sub_18BC1E038();
  v15[1] = a4;
  v15[2] = a5;
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  sub_18BC1DFF8();

  return result;
}

uint64_t sub_18BA6B7E0()
{
  v14 = v0;
  if (qword_1EA9D22B0 != -1)
  {
    swift_once();
  }

  v1 = sub_18BC1F2C8();
  __swift_project_value_buffer(v1, qword_1EA9F7EC8);
  sub_18BC1E3F8();
  v2 = sub_18BC1F2A8();
  v3 = sub_18BC21258();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 32);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    v7 = MEMORY[0x18CFFC2A0](v4, MEMORY[0x1E69E6158]);
    v9 = sub_18B7EA850(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_18B7AC000, v2, v3, "Tab group entities query for: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x18CFFEEE0](v6, -1, -1);
    MEMORY[0x18CFFEEE0](v5, -1, -1);
  }

  if (qword_1EA9D24D8 != -1)
  {
    swift_once();
  }

  v10 = swift_task_alloc();
  *(v0 + 40) = v10;
  *v10 = v0;
  v10[1] = sub_18BA6B9E8;

  return sub_18BB98D88(v11);
}

uint64_t sub_18BA6B9E8(uint64_t a1)
{
  v3 = *v2;
  v3[6] = a1;
  v3[7] = v1;

  if (v1)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_18BA6BB1C, 0, 0);
  }
}

void sub_18BA6BB1C()
{
  v1 = v0[6];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v17 = -v2;
    v4 = v1 + 48;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v16 = v5;
      v6 = (v4 + 24 * v3++);
      while (1)
      {
        if ((v3 - 1) >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v7 = v0[4];
        v9 = *(v6 - 2);
        v8 = *(v6 - 1);
        v10 = *v6;
        v0[2] = v9;
        v0[3] = v8;
        v11 = swift_task_alloc();
        *(v11 + 16) = v0 + 2;
        sub_18BC1E3F8();
        sub_18BC1E1A8();
        LOBYTE(v7) = sub_18B9B4FCC(sub_18BA6BD28, v11, v7);

        if (v7)
        {
          break;
        }

        ++v3;
        v6 += 3;
        if (v17 + v3 == 1)
        {
          v5 = v16;
          goto LABEL_15;
        }
      }

      v5 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_18B9B6904(0, *(v16 + 16) + 1, 1);
        v5 = v16;
      }

      v4 = v1 + 48;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_18B9B6904((v12 > 1), v13 + 1, 1);
        v4 = v1 + 48;
        v5 = v16;
      }

      *(v5 + 16) = v13 + 1;
      v14 = (v5 + 24 * v13);
      v14[4] = v9;
      v14[5] = v8;
      v14[6] = v10;
    }

    while (v17 + v3);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:

  v15 = v0[1];

  v15(v5);
}

uint64_t sub_18BA6BD28(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_18BC21FD8() & 1;
  }
}

uint64_t sub_18BA6BD80(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18BA6BDA0, 0, 0);
}

uint64_t sub_18BA6BDA0()
{
  v12 = v0;
  if (qword_1EA9D22B0 != -1)
  {
    swift_once();
  }

  v1 = sub_18BC1F2C8();
  __swift_project_value_buffer(v1, qword_1EA9F7EC8);
  sub_18BC1E3F8();
  v2 = sub_18BC1F2A8();
  v3 = sub_18BC21258();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[4];
    v4 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_18B7EA850(v5, v4, &v11);
    _os_log_impl(&dword_18B7AC000, v2, v3, "Tab group string query for: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x18CFFEEE0](v7, -1, -1);
    MEMORY[0x18CFFEEE0](v6, -1, -1);
  }

  if (qword_1EA9D24D8 != -1)
  {
    swift_once();
  }

  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_18BA6BF90;

  return sub_18BB98D88(v9);
}

uint64_t sub_18BA6BF90(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_18BA6C0C4, 0, 0);
  }
}

void sub_18BA6C0C4()
{
  v1 = v0[7];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v19 = -v2;
    v17 = v1 + 48;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      v18 = v4;
      v5 = (v17 + 24 * v3++);
      while (1)
      {
        if ((v3 - 1) >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v6 = *(v5 - 1);
        v7 = *v5;
        if (*(v5 - 2) == v0[4] && v6 == v0[5])
        {
          break;
        }

        v20 = *(v5 - 2);
        if (sub_18BC21FD8())
        {
          goto LABEL_14;
        }

        sub_18BC1E3F8();
        sub_18BC1E1A8();
        sub_18BC1DFE8();
        v9 = v1;
        v10 = sub_18BC20B98();

        v11 = sub_18BC20B98();
        v12 = [v10 safari:v11 hasLocalizedCaseAndDiacriticInsensitivePrefix:?];

        v1 = v9;
        if (v12)
        {
          goto LABEL_15;
        }

        ++v3;
        v5 += 3;
        if (v19 + v3 == 1)
        {
          v4 = v18;
          goto LABEL_22;
        }
      }

      v20 = v0[4];
LABEL_14:
      sub_18BC1E3F8();
      sub_18BC1E1A8();
LABEL_15:
      v4 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_18B9B6904(0, *(v18 + 16) + 1, 1);
        v4 = v18;
      }

      v14 = *(v4 + 16);
      v13 = *(v4 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_18B9B6904((v13 > 1), v14 + 1, 1);
        v4 = v18;
      }

      *(v4 + 16) = v14 + 1;
      v15 = (v4 + 24 * v14);
      v15[4] = v20;
      v15[5] = v6;
      v15[6] = v7;
    }

    while (v19 + v3);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

LABEL_22:

  v16 = v0[1];

  v16(v4);
}

id sub_18BA6C4B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PassthroughView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_18BA6C4F0()
{
  result = qword_1EA9D7440;
  if (!qword_1EA9D7440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7440);
  }

  return result;
}

unint64_t sub_18BA6C548()
{
  result = qword_1EA9D5810;
  if (!qword_1EA9D5810)
  {
    sub_18BC1E348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D5810);
  }

  return result;
}

uint64_t sub_18BA6C5A0()
{
  v0 = sub_18BC1E348();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1E0A8();
  v4 = sub_18BC1E338();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_18BA6C684(__n128 a1)
{
  v1 = sub_18BC1E8B8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_18BC1E8D8();
  __swift_allocate_value_buffer(v7, qword_1EA9F8088);
  __swift_project_value_buffer(v7, qword_1EA9F8088);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v2 + 104))(v4, *MEMORY[0x1E6968DF0], v1);
  return sub_18BC1E8E8();
}

uint64_t sub_18BA6C8BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BC1DE08();
  *a1 = result;
  return result;
}

uint64_t sub_18BA6C8E4(uint64_t a1)
{
  v2 = sub_18BC1E348();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_18BC1E0B8();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_18BA6C9D4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18BC1E098();
  return sub_18B99C650;
}

uint64_t sub_18BA6CA84@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EA9D23A8 != -1)
  {
    swift_once();
  }

  v3 = sub_18BC1E8D8();
  v4 = __swift_project_value_buffer(v3, qword_1EA9F8088);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_18BA6CB2C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7468, &qword_18BC484B8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7470, &qword_18BC484C0);
  MEMORY[0x1EEE9AC00](v3);
  sub_18BC1E458();
  sub_18BC1E448();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7478, &qword_18BC484F0);
  sub_18BC1E438();

  sub_18BC1E448();
  sub_18BC1E478();
  return sub_18BC1E418();
}

uint64_t sub_18BA6CCDC@<X0>(uint64_t *a2@<X8>, __n128 q0_0@<Q0>)
{
  result = sub_18BA6CD14(q0_0);
  *a2 = result;
  return result;
}

uint64_t sub_18BA6CD14(__n128 a1)
{
  v1 = sub_18BC1E488();
  v23 = *(v1 - 8);
  v24 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v22 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0, &unk_18BC472F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v21 = v19 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0, &qword_18BC41D40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v20 = v19 - v6;
  v7 = sub_18BC1E8B8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v19[0] = sub_18BC1E8D8();
  v13 = *(v19[0] - 8);
  MEMORY[0x1EEE9AC00](v19[0]);
  v19[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5830, &qword_18BC44428);
  sub_18BC20B18();
  sub_18BC1EC38();
  v14 = *MEMORY[0x1E6968DF0];
  v15 = *(v8 + 104);
  v15(v10, v14, v7);
  sub_18BC1E8E8();
  sub_18BC20B18();
  sub_18BC1EC38();
  v15(v10, v14, v7);
  v16 = v20;
  sub_18BC1E8F8();
  (*(v13 + 56))(v16, 0, 1, v19[0]);
  v17 = sub_18BC1DF68();
  (*(*(v17 - 8) + 56))(v21, 1, 1, v17);
  (*(v23 + 104))(v22, *MEMORY[0x1E695A4F8], v24);
  return sub_18BC1E138();
}

id sub_18BA6D1C4()
{
  v1 = OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton____lazy_storage___blurRadius;
  v2 = *(v0 + OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton____lazy_storage___blurRadius);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton____lazy_storage___blurRadius);
  }

  else
  {
    v4 = sub_18BB8CE88();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_18BA6D224(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton____lazy_storage___blurRadius] = 0;
  v9 = &v4[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_configuration];
  *(v9 + 2) = 0;
  *(v9 + 12) = 256;
  *v9 = 0u;
  *(v9 + 2) = 0u;
  *&v4[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_menu] = 0;
  v10 = &v4[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_minimumTapTargetSize];
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_borderView;
  *&v4[v11] = [objc_allocWithZone(SFBorderView) init];
  v12 = OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_highlightView;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v13 = OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_imageView;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v14 = OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_vibrantEffectView;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x1E69DD298]) init];
  v4[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_isHovered] = 0;
  v17.receiver = v4;
  v17.super_class = _s12CornerButtonCMa();
  v15 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  sub_18BA6D520();

  return v15;
}

id sub_18BA6D3B0(void *a1)
{
  *&v1[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton____lazy_storage___blurRadius] = 0;
  v3 = &v1[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_configuration];
  *(v3 + 2) = 0;
  *(v3 + 12) = 256;
  *v3 = 0u;
  *(v3 + 2) = 0u;
  *&v1[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_menu] = 0;
  v4 = &v1[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_minimumTapTargetSize];
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_borderView;
  *&v1[v5] = [objc_allocWithZone(SFBorderView) init];
  v6 = OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_highlightView;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v7 = OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_imageView;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v8 = OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_vibrantEffectView;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x1E69DD298]) init];
  v1[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_isHovered] = 0;
  v13.receiver = v1;
  v13.super_class = _s12CornerButtonCMa();
  v9 = objc_msgSendSuper2(&v13, sel_initWithCoder_, a1);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    sub_18BA6D520();
  }

  return v10;
}

void sub_18BA6D520()
{
  [v0 setAccessibilityTraits_];
  [v0 _setCornerRadius_];
  v1 = *&v0[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_borderView];
  [v1 setBounds_];
  [v1 setUserInteractionEnabled_];
  v2 = [v1 layer];
  [v2 setBorderWidth_];

  [v1 _setCornerRadius_];
  v3 = *&v0[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_highlightView];
  [v3 setBounds_];
  [v3 setUserInteractionEnabled_];
  [v3 _setCornerRadius_];
  v4 = *&v0[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_imageView];
  [v4 setContentMode_];
  [v4 setFrame_];
  v5 = [objc_opt_self() configurationWithPointSize:6 weight:2 scale:12.0];
  [v4 setPreferredSymbolConfiguration_];

  [v4 setTintAdjustmentMode_];
  v6 = *&v0[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_vibrantEffectView];
  [v6 setBounds_];
  [v6 setUserInteractionEnabled_];
  [v6 _setCornerRadius_];
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCAA0]) initWithTarget:v0 action:sel_didReceiveHover_];
  [v0 addGestureRecognizer_];

  [v0 addSubview_];
  [v0 addSubview_];
  [v0 addSubview_];
  v8 = [v6 contentView];
  [v8 addSubview_];
}

void sub_18BA6D7EC()
{
  v0 = sub_18BC20B98();
  v1 = [objc_opt_self() systemImageNamed_];

  v2 = objc_opt_self();
  v3 = [v2 secondarySystemBackgroundColor];
  v4 = [v3 colorWithAlphaComponent_];

  v5 = [v2 blackColor];
  v6 = [objc_opt_self() effectWithStyle_];
  v7 = [objc_opt_self() effectForBlurEffect:v6 style:1];

  qword_1EA9F80A0 = v4;
  *algn_1EA9F80A8 = 0;
  qword_1EA9F80B0 = v1;
  word_1EA9F80B8 = 256;
  qword_1EA9F80C0 = v5;
  unk_1EA9F80C8 = v7;
}

void sub_18BA6D93C()
{
  v0 = sub_18BC20B98();
  v1 = [objc_opt_self() systemImageNamed_];

  v2 = objc_opt_self();
  v3 = [v2 secondarySystemBackgroundColor];
  v4 = [v3 colorWithAlphaComponent_];

  v5 = [v2 blackColor];
  v6 = [objc_opt_self() effectWithStyle_];
  v7 = [objc_opt_self() effectForBlurEffect:v6 style:1];

  qword_1EA9F80D0 = v4;
  *algn_1EA9F80D8 = 0;
  qword_1EA9F80E0 = v1;
  word_1EA9F80E8 = 256;
  qword_1EA9F80F0 = v5;
  unk_1EA9F80F8 = v7;
}

uint64_t sub_18BA6DA90(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = *(a1 + 16);
  if (v4)
  {
    if (v5)
    {
      sub_18B7B0AC0(0, &qword_1ED6514F0, 0x1E69DCAB8);
      v6 = v5;
      v7 = v4;
      v8 = sub_18BC215C8();

      if (v8)
      {
        goto LABEL_4;
      }
    }
  }

  else if (!v5)
  {
LABEL_4:
    v9 = 0;
    return v9 & 1;
  }

  v10 = *(v2 + 32);
  v11 = *(a1 + 32);
  v12 = (v10 | v11) == 0;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    sub_18B7B0AC0(0, &unk_1EA9D91D0, 0x1E69DC888);
    v14 = v11;
    v15 = v10;
    v12 = sub_18BC215C8();
  }

  v9 = v12 ^ 1;
  return v9 & 1;
}

BOOL sub_18BA6DB8C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_18BA6EFA0(v7, v8);
}

void sub_18BA6DBD4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18BC208E8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18BC208C8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v15 = *&v2[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_configuration + 16];
  v32 = *&v2[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_configuration];
  v33 = v15;
  v34 = *&v2[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_configuration + 32];
  if (BYTE8(v15) & 1) != 0 && (*(a1 + 24))
  {
    sub_18BA6F3A8(&v32, aBlock);
LABEL_6:
    [v2 _removeAllAnimations_];
    [v2 setUserInteractionEnabled_];
    v17 = 0;
    goto LABEL_7;
  }

  v29 = v5;
  v16 = objc_opt_self();
  sub_18BA6F3A8(&v32, aBlock);
  if (([v16 areAnimationsEnabled] & 1) == 0 || objc_msgSend(v2, sel_isHiddenOrHasHiddenAncestor))
  {
    goto LABEL_6;
  }

  [v2 setUserInteractionEnabled_];
  if (sub_18BA6DA90(a1))
  {
    sub_18BA6E09C(a1);
    v17 = 1;
    goto LABEL_8;
  }

  if (v33)
  {
    v23 = *&v2[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_imageView];
    v24 = v33;
    v25 = [v23 image];
    if (v25)
    {

      sub_18BC208B8();
      v28 = v23;
      sub_18BC208A8();
      v26 = *(v9 + 8);
      v26(v14, v8);
      sub_18BC208D8();
      sub_18BA6F41C(v27);
      sub_18BC211D8();

      (*(v29 + 8))(v7, v4);
      v26(v11, v8);
      v17 = 1;
      goto LABEL_8;
    }
  }

  v17 = 1;
LABEL_7:
  [*&v2[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_imageView] setImage_];
LABEL_8:
  v18 = objc_opt_self();
  v19 = swift_allocObject();
  v20 = v33;
  *(v19 + 24) = v32;
  *(v19 + 16) = v2;
  *(v19 + 40) = v20;
  *(v19 + 56) = v34;
  aBlock[4] = sub_18BA6F3E0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B7B0DB0;
  aBlock[3] = &block_descriptor_51_0;
  v21 = _Block_copy(aBlock);
  sub_18BA6F3A8(&v32, v30);
  v22 = v2;

  [v18 sf:v17 animate:0 usingDefaultTimingWithOptions:v21 animations:0 completion:?];
  sub_18BA6F3EC(&v32);
  _Block_release(v21);
}

id sub_18BA6E008(char *a1, void *a2)
{
  [a1 setBackgroundColor_];
  [*&a1[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_borderView] setBorderColor_];
  [*&a1[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_imageView] setTintColor_];
  v4 = *&a1[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_vibrantEffectView];
  v5 = a2[5];

  return [v4 setEffect_];
}

void sub_18BA6E09C(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_imageView];
  v4 = [v3 snapshotViewAfterScreenUpdates_];
  if (v4)
  {
    v5 = v4;
    if (*(a1 + 40))
    {
      v6 = [*&v1[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_vibrantEffectView] contentView];
      [v6 addSubview_];
    }

    else
    {
      [v1 addSubview_];
    }

    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_18BA6F2D0;
    *(v10 + 24) = v9;
    v24 = sub_18B7D1E94;
    v25 = v10;
    v20 = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    v22 = sub_18B7E3BF4;
    v23 = &block_descriptor_33_0;
    v11 = _Block_copy(&v20);
    v12 = v1;
    sub_18BC1E1A8();

    [v8 performWithoutAnimation_];
    _Block_release(v11);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if (v11)
    {
      __break(1u);
    }

    else
    {
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = v5;
      v24 = sub_18BA6F350;
      v25 = v13;
      v20 = MEMORY[0x1E69E9820];
      v21 = 1107296256;
      v22 = sub_18B7B0DB0;
      v23 = &block_descriptor_39_1;
      v14 = _Block_copy(&v20);
      v15 = v12;
      v16 = v5;

      v17 = swift_allocObject();
      *(v17 + 16) = v16;
      v24 = sub_18BA1A81C;
      v25 = v17;
      v20 = MEMORY[0x1E69E9820];
      v21 = 1107296256;
      v22 = sub_18BA89100;
      v23 = &block_descriptor_45;
      v18 = _Block_copy(&v20);
      v19 = v16;

      [v8 _animateUsingDefaultTimingWithOptions_animations_completion_];

      _Block_release(v18);
      _Block_release(v14);
    }
  }

  else
  {
    v7 = *&v1[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_configuration + 16];

    [v3 setImage_];
  }
}

void sub_18BA6E570(char a1)
{
  v2 = v1;
  if ([v1 isHighlighted] != (a1 & 1))
  {
    type metadata accessor for AnimationSettings();
    inited = swift_initStaticObject();
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    v6[2] = inited;
    v6[3] = sub_18BA6F888;
    v6[4] = v4;
    v14 = sub_18B7E767C;
    v15 = v6;
    v10 = MEMORY[0x1E69E9820];
    v11 = 1107296256;
    v12 = sub_18B7B0DB0;
    v13 = &block_descriptor_77_0;
    v7 = _Block_copy(&v10);
    v8 = v2;
    sub_18BC1E1A8();

    v14 = CGRectMake;
    v15 = 0;
    v10 = MEMORY[0x1E69E9820];
    v11 = 1107296256;
    v12 = sub_18B8043A0;
    v13 = &block_descriptor_80_0;
    v9 = _Block_copy(&v10);

    [v5 _animateUsingSpringBehavior_tracking_animations_completion_];
    _Block_release(v9);
    _Block_release(v7);
  }
}

void sub_18BA6E754(unsigned __int8 *a1)
{
  if ([a1 isHighlighted])
  {
    v2 = objc_opt_self();
    v3 = &selRef_systemFillColor;
  }

  else
  {
    v4 = a1[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_isHovered];
    v2 = objc_opt_self();
    v3 = &selRef_clearColor;
    if (v4)
    {
      v3 = &selRef_secondarySystemFillColor;
    }
  }

  v5 = [v2 *v3];
  [*&a1[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_highlightView] setBackgroundColor_];
}

void sub_18BA6E818(char a1)
{
  v2 = v1[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_isHovered];
  v1[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_isHovered] = a1;
  if (v2 != (a1 & 1))
  {
    type metadata accessor for AnimationSettings();
    inited = swift_initStaticObject();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    v6[2] = inited;
    v6[3] = sub_18BA6F8E0;
    v6[4] = v4;
    v14 = sub_18B7D80AC;
    v15 = v6;
    v10 = MEMORY[0x1E69E9820];
    v11 = 1107296256;
    v12 = sub_18B7B0DB0;
    v13 = &block_descriptor_21;
    v7 = _Block_copy(&v10);
    v8 = v1;
    sub_18BC1E1A8();

    v14 = CGRectMake;
    v15 = 0;
    v10 = MEMORY[0x1E69E9820];
    v11 = 1107296256;
    v12 = sub_18B8043A0;
    v13 = &block_descriptor_24;
    v9 = _Block_copy(&v10);

    [v5 _animateUsingSpringBehavior_tracking_animations_completion_];
    _Block_release(v9);
    _Block_release(v7);
  }
}

id sub_18BA6E9F8(uint64_t a1)
{
  v24.receiver = v1;
  v24.super_class = _s12CornerButtonCMa();
  objc_msgSendSuper2(&v24, sel_layoutSubviews);
  [v1 bounds];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  MidX = CGRectGetMidX(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  [*&v1[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_borderView] setCenter_];
  v7 = *&v1[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_highlightView];
  [v1 bounds];
  v8 = v27.origin.x;
  v9 = v27.origin.y;
  v10 = v27.size.width;
  v11 = v27.size.height;
  v12 = CGRectGetMidX(v27);
  v28.origin.x = v8;
  v28.origin.y = v9;
  v28.size.width = v10;
  v28.size.height = v11;
  [v7 setCenter_];
  v13 = *&v1[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_vibrantEffectView];
  [v1 bounds];
  v14 = v29.origin.x;
  v15 = v29.origin.y;
  v16 = v29.size.width;
  v17 = v29.size.height;
  v18 = CGRectGetMidX(v29);
  v30.origin.x = v14;
  v30.origin.y = v15;
  v30.size.width = v16;
  v30.size.height = v17;
  [v13 setCenter_];
  [v1 bounds];
  v19 = CGRectGetWidth(v31);
  v20 = &v1[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_minimumTapTargetSize];
  v21 = fmin(v19 - *&v1[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_minimumTapTargetSize], 0.0);
  [v1 bounds];
  v22 = fmin(CGRectGetHeight(v32) - v20[1], 0.0) * 0.5;
  return [v1 _setTouchInsets_];
}

void sub_18BA6ECF4(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(uint64_t))
{
  v10 = a3;
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = a1;
  a6(a5);

  swift_unknownObjectRelease();
}

id sub_18BA6ED90(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s12CornerButtonCMa();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_18BA6EEB0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_18BA6EF0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

BOOL sub_18BA6EFA0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_18B7B0AC0(0, &unk_1EA9D91D0, 0x1E69DC888);
    v6 = v5;
    v7 = v4;
    v8 = sub_18BC215C8();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    sub_18B7B0AC0(0, &unk_1EA9D91D0, 0x1E69DC888);
    v11 = v10;
    v12 = v9;
    v13 = sub_18BC215C8();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = *(a1 + 16);
  v15 = *(a2 + 16);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    sub_18B7B0AC0(0, &qword_1ED6514F0, 0x1E69DCAB8);
    v16 = v15;
    v17 = v14;
    v18 = sub_18BC215C8();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if ((*(a1 + 24) ^ *(a2 + 24)) & 1) != 0 || ((*(a1 + 25) ^ *(a2 + 25)))
  {
    return 0;
  }

  v20 = *(a1 + 32);
  v21 = *(a2 + 32);
  if (v20)
  {
    if (!v21)
    {
      return 0;
    }

    sub_18B7B0AC0(0, &unk_1EA9D91D0, 0x1E69DC888);
    v22 = v21;
    v23 = v20;
    v24 = sub_18BC215C8();

    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  v25 = *(a1 + 40);
  v26 = *(a2 + 40);
  if (v25)
  {
    if (v26)
    {
      sub_18B7B0AC0(0, &qword_1EA9D74C8, 0x1E69DD248);
      v27 = v26;
      v28 = v25;
      v29 = sub_18BC215C8();

      if (v29)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v26;
}

id sub_18BA6F1CC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = objc_opt_self();
  if (a1)
  {
    v5 = v4;
    v6 = [v4 systemBlueColor];
    v7 = sub_18BC20B98();
    v8 = [objc_opt_self() systemImageNamed_];

    result = [v5 systemWhiteColor];
    v10 = 0;
  }

  else
  {
    v10 = [v4 systemFillColor];
    v6 = 0;
    v8 = 0;
    result = 0;
  }

  *a2 = v6;
  *(a2 + 8) = v10;
  *(a2 + 16) = v8;
  *(a2 + 24) = 1;
  *(a2 + 32) = result;
  *(a2 + 40) = 0;
  return result;
}

id sub_18BA6F2D0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_imageView);
  [v2 setAlpha_];
  v3 = v1 + OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_configuration;
  [v2 setImage_];
  v4 = *(v3 + 32);

  return [v2 setTintColor_];
}

id sub_18BA6F350()
{
  v1 = *(v0 + 24);
  [*(*(v0 + 16) + OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_imageView) setAlpha_];

  return [v1 setAlpha_];
}

unint64_t sub_18BA6F41C(__n128 a1)
{
  result = qword_1EA9D74D0[0];
  if (!qword_1EA9D74D0[0])
  {
    sub_18BC208C8();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA9D74D0);
  }

  return result;
}

uint64_t sub_18BA6F474(_OWORD *a1)
{
  v2 = a1;
  v3 = (v1 + OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_configuration);
  v4 = *(v1 + OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_configuration + 16);
  v14[0] = *(v1 + OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_configuration);
  v14[1] = v4;
  v14[2] = *(v1 + OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_configuration + 32);
  v5 = *(v1 + OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_configuration);
  v6 = *(v1 + OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_configuration + 8);
  v7 = *(v1 + OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_configuration + 16);
  v8 = *(v1 + OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_configuration + 32);
  v9 = *(v1 + OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_configuration + 40);
  v10 = a1[1];
  *v3 = *a1;
  v3[1] = v10;
  v3[2] = a1[2];
  sub_18BA6F3A8(v14, v15);
  sub_18BA6F3A8(v2, v15);

  v11 = v3[1];
  v15[0] = *v3;
  v15[1] = v11;
  v15[2] = v3[2];
  sub_18BA6F3A8(v15, &v13);
  LOBYTE(v2) = sub_18BA6EFA0(v15, v14);
  sub_18BA6F3EC(v15);
  if ((v2 & 1) == 0)
  {
    sub_18BA6DBD4(v14);
  }

  return sub_18BA6F3EC(v14);
}

double sub_18BA6F560(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = 1;
  if (a1)
  {
    v9[4] = sub_18BA6F8C4;
    v9[5] = v3;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_18B7B0DB0;
    v9[3] = &block_descriptor_64;
    v4 = _Block_copy(v9);
    v5 = v1;
    swift_unknownObjectRetain();
    sub_18BC1E1A8();

    [a1 addAnimations_];

    _Block_release(v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = *&v1[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_imageView];
    v8 = v1;
    [v7 setAlpha_];
  }

  return result;
}

double sub_18BA6F6C8(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = 0;
  if (a1)
  {
    v9[4] = sub_18BA6F824;
    v9[5] = v3;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_18B7B0DB0;
    v9[3] = &block_descriptor_57;
    v4 = _Block_copy(v9);
    v5 = v1;
    swift_unknownObjectRetain();
    sub_18BC1E1A8();

    [a1 addAnimations_];

    _Block_release(v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = *&v1[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_imageView];
    v8 = v1;
    [v7 setAlpha_];
  }

  return result;
}

id sub_18BA6F828()
{
  v1 = 0.3;
  if (!*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(*(v0 + 16) + OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_imageView) setAlpha_];
}

void *sub_18BA6F860()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_18BA6F8F0(void *a1)
{
  sub_18B85CBE4(a1);
}

void (*sub_18BA6F928(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18BA6F9B8;
}

void sub_18BA6F9B8(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t SFFluidCollectionView.Layout.init()()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 104);
  v5 = *(*v0 + 112);
  v6 = *(*v0 + 120);
  SFFluidCollectionView.DataSource.Snapshot.init()(v1, v2, v3, v4, v5, v6, (v0 + 16));
  SFFluidCollectionView.LayoutInvalidationContext.init()(v1, v2, v3, v4, v5, v6, v0 + 64);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  sub_18B84A364(v1, v2, v3, v4, v5, v6, v0 + 96);
  type metadata accessor for CGRect(255);
  v8 = v7;
  swift_getTupleTypeMetadata2();
  v9 = sub_18BC20DE8();
  v10 = sub_18B7C29AC(v9, v1, v8, *(v4 + 8));

  *(v0 + 160) = v10;
  sub_18B81F588(v12);
  memcpy((v0 + 168), v12, 0x139uLL);
  *(v0 + 496) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  return v0;
}

void *SFFluidCollectionView.Layout.deinit()
{
  v1 = *v0;

  memcpy(__dst, v0 + 21, 0x139uLL);
  v2 = v1[6];
  v5[0] = v1[5];
  v5[1] = v2;
  v5[2] = v1[7];
  type metadata accessor for SFFluidCollectionView.Update(255, v5);
  v3 = sub_18BC21848();
  (*(*(v3 - 8) + 8))(__dst, v3);
  sub_18B7B55F4((v0 + 61));
  MEMORY[0x18CFFF000](v0 + 63);
  return v0;
}

double sub_18BA6FD2C@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  v4 = *(v1 + 90);
  *a1 = *(v1 + 80);
  *(a1 + 10) = v4;
  *(a1 + 8) = v3;
  sub_18BC1E3F8();
  return result;
}

double sub_18BA6FD84(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 10);
  swift_beginAccess();
  *(v1 + 80) = v2;
  *(v1 + 90) = v4;
  *(v1 + 88) = v3;

  return result;
}

double sub_18BA6FDF4()
{
  sub_18BA70E60();

  sub_18BC1E3F8();
  return result;
}

double sub_18BA6FE1C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 160) = a1;

  return result;
}

uint64_t sub_18BA6FE64@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1 + 21;
  swift_beginAccess();
  memcpy(__dst, v3, 0x139uLL);
  memcpy(a1, v3, 0x139uLL);
  v5 = v4[6];
  v8[0] = v4[5];
  v8[1] = v5;
  v8[2] = v4[7];
  type metadata accessor for SFFluidCollectionView.Update(255, v8);
  v6 = sub_18BC21848();
  return (*(*(v6 - 8) + 16))(v8, __dst, v6);
}

uint64_t sub_18BA6FF4C(void *__src)
{
  v3 = *v1;
  memcpy(__dst, __src, 0x139uLL);
  memcpy(__srca, __src, sizeof(__srca));
  CGRectMake();
  memcpy(v8, __srca, 0x139uLL);
  v4 = v3[6];
  v7[0] = v3[5];
  v7[1] = v4;
  v7[2] = v3[7];
  v5 = type metadata accessor for SFFluidCollectionView.Update(0, v7);
  (*(*(v5 - 8) + 16))(v7, __dst, v5);
  return sub_18B825ABC(v8);
}

void (*sub_18BA70034(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 496);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_18BA700C8;
}

void sub_18BA700C8(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 496) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t SFFluidCollectionView.Layout.__allocating_init()()
{
  v0 = swift_allocObject();
  SFFluidCollectionView.Layout.init()();
  return v0;
}

double sub_18BA70230(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v7[0] = *a1;
  v7[1] = v1;
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v4;
  v7[5] = v5;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  return sub_18B849A44(v7);
}

double sub_18BA702B8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 9);
  v3 = *(a1 + 10);
  v5 = *a1;
  v6 = v1;
  v7 = v2;
  v8 = v3;
  sub_18BC1E3F8();
  return sub_18B8262B4(&v5);
}

void sub_18BA70310(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v12[0] = *a1;
  v12[1] = v4;
  v6 = *a1;
  v5 = a1[1];
  v13[0] = a1[2];
  *(v13 + 9) = *(a1 + 41);
  v10[0] = v6;
  v10[1] = v5;
  v11[0] = a1[2];
  *(v11 + 9) = *(a1 + 41);
  v7 = *(a3 + a4 - 32);
  v9[0] = *(a3 + a4 - 48);
  v9[1] = v7;
  v9[2] = *(a3 + a4 - 16);
  v8 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot(0, v9);
  (*(*(v8 - 8) + 16))(v9, v12, v8);
  sub_18B81BA44(v10);
}

uint64_t sub_18BA703C4(void *__src, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  memcpy(__dst, __src, 0x139uLL);
  memcpy(v10, __src, 0x139uLL);
  v6 = *(v5 - 32);
  v9[0] = *(v5 - 48);
  v9[1] = v6;
  v9[2] = *(v5 - 16);
  type metadata accessor for SFFluidCollectionView.Update(255, v9);
  v7 = sub_18BC21848();
  (*(*(v7 - 8) + 16))(v9, __dst, v7);
  return sub_18B825ABC(v10);
}

uint64_t sub_18BA70490@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v7[0] = *(*v1 + 80);
  v7[1] = v4;
  v7[2] = *(v3 + 112);
  v5 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, v7);
  return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
}

uint64_t SFFluidCollectionView.Layout.__deallocating_deinit()
{
  SFFluidCollectionView.Layout.deinit();

  return swift_deallocClassInstance();
}

void sub_18BA705B0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v36 = a2;
  v33 = *(*(*v2 + 96) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v32 = &v31 - v3;
  v5 = *(v4 + 88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v11 = *(v10 + 80);
  v12 = *(v10 + 120);
  v37[0] = v11;
  v37[1] = v5;
  v34 = v13;
  v37[2] = v13;
  v38 = *(v14 + 104);
  v39 = v12;
  v15 = type metadata accessor for SFFluidCollectionView.Element(0, v37);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = (&v31 - v21);
  v23 = *(v16 + 16);
  v23(&v31 - v21, v35, v15, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v35 = *v22;
    v31 = v16;
    v25 = v34;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v27 = swift_projectBox();
    v28 = *(TupleTypeMetadata2 + 48);
    v30 = v32;
    v29 = v33;
    (*(v33 + 16))(v32, v27, v25);
    (v23)(v18, v27 + v28, v15);
    (*(*v2 + 496))(v30, v18);
    (*(v31 + 8))(v18, v15);
    (*(v29 + 8))(v30, v25);
  }

  else if (EnumCaseMultiPayload == 1)
  {
    (*(v6 + 32))(v9, v22, v5);
    (*(*v2 + 488))(v9);
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    sub_18BC21CF8();
    __break(1u);
  }
}

void sub_18BA70A08(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v36 = a2;
  v33 = *(*(*v2 + 96) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v32 = &v31 - v3;
  v5 = *(v4 + 88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v11 = *(v10 + 80);
  v12 = *(v10 + 120);
  v37[0] = v11;
  v37[1] = v5;
  v34 = v13;
  v37[2] = v13;
  v38 = *(v14 + 104);
  v39 = v12;
  v15 = type metadata accessor for SFFluidCollectionView.Element(0, v37);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = (&v31 - v21);
  v23 = *(v16 + 16);
  v23(&v31 - v21, v35, v15, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v35 = *v22;
    v31 = v16;
    v25 = v34;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v27 = swift_projectBox();
    v28 = *(TupleTypeMetadata2 + 48);
    v30 = v32;
    v29 = v33;
    (*(v33 + 16))(v32, v27, v25);
    (v23)(v18, v27 + v28, v15);
    (*(*v2 + 512))(v30, v18);
    (*(v31 + 8))(v18, v15);
    (*(v29 + 8))(v30, v25);
  }

  else if (EnumCaseMultiPayload == 1)
  {
    (*(v6 + 32))(v9, v22, v5);
    (*(*v2 + 504))(v9);
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    sub_18BC21CF8();
    __break(1u);
  }
}

uint64_t sub_18BA713E0()
{
  sub_18BB17FF0(v0);
  v2 = v1;
  sub_18BA71464(v0);
  return v2;
}

uint64_t sub_18BA71464(uint64_t a1)
{
  v2 = type metadata accessor for SingleElementIndexPathSequence(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18BA714C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18BA71530(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC20A28();
  if (v11)
  {
    (*(v5 + 16))(v7, a1, v4);
    v10 = 1;
    v11 = 0;
    sub_18BC209F8();
    sub_18BC20A38();
    return (*v2)(a1, 1);
  }

  else
  {
    v9 = v10;
    result = (*(v5 + 16))(v7, a1, v4);
    if (__OFADD__(v9, 1))
    {
      __break(1u);
    }

    else
    {
      v10 = v9 + 1;
      v11 = 0;
      sub_18BC209F8();
      return sub_18BC20A38();
    }
  }

  return result;
}

void *sub_18BA716D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_18BC20A28();
  if ((v11 & 1) == 0)
  {
    v9 = v10;
    (*(v5 + 16))(v7, a1, v4);
    if (v9 < 2)
    {
      v10 = 0;
      v11 = 1;
      sub_18BC209F8();
      sub_18BC20A38();
      return (*v2)(a1, 0);
    }

    else
    {
      v10 = v9 - 1;
      v11 = 0;
      sub_18BC209F8();
      return sub_18BC20A38();
    }
  }

  return result;
}

void sub_18BA71898(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v22 = a3;
  v5 = *(a2 + 16);
  v6 = sub_18BC21848();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v20 - v7;
  v21 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_18BC21958();
    sub_18BC210A8();
    a1 = v23;
    v9 = v24;
    v10 = v25;
    v11 = v26;
    v12 = v27;
  }

  else
  {
    v13 = -1 << *(a1 + 32);
    v9 = a1 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(a1 + 56);
    sub_18BC1E3F8();
    v11 = 0;
  }

  v20[1] = v10;
  while (a1 < 0)
  {
    if (!sub_18BC219D8())
    {
LABEL_20:
      (*(*(v5 - 8) + 56))(v8, 1, 1, v5);
      sub_18B7D2E34(a1);
      return;
    }

    sub_18BC21FA8();
    swift_unknownObjectRelease();
    v18 = *(v5 - 8);
LABEL_10:
    (*(v18 + 56))(v8, 0, 1, v5);
    v22(v8, v21);
    (*(v18 + 8))(v8, v5);
  }

  if (v12)
  {
    v16 = v11;
LABEL_9:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = *(v5 - 8);
    (*(v18 + 16))(v8, *(a1 + 48) + *(v18 + 72) * (v17 | (v16 << 6)), v5);
    goto LABEL_10;
  }

  v19 = v11;
  while (1)
  {
    v16 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v16 >= ((v10 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v12 = *(v9 + 8 * v16);
    ++v19;
    if (v12)
    {
      v11 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_18BA71B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CGRectMake();
  sub_18BC209B8();
  swift_getWitnessTable();
  return sub_18BC21178();
}

double sub_18BA71C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CGRectMake();
  sub_18BC209B8();
  sub_18BC1E3F8();
  swift_getWitnessTable();
  sub_18BC20D08();

  return result;
}

void sub_18BA71CF4(void (**a1)()@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  v4 = sub_18BA71F08(a2, *(a3 + 16), *(a3 + 24));
  v6 = v5;
  v8 = v7;

  *a1 = v4;
  a1[1] = v6;
  a1[2] = v8;
}

double sub_18BA71D50@<D0>(uint64_t a2@<X8>)
{
  sub_18BA71E98(v7);
  v3 = sub_18BC209A8();
  (*(*(v3 - 8) + 16))(&v6, v7, v3);

  result = *v7;
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_18BA71E2C(uint64_t a1, uint64_t a2)
{
  v3 = sub_18BA71F04(v2, a1, a2);

  return v3;
}

uint64_t sub_18BA71E98@<X0>(void *a1@<X8>)
{
  CGRectMake();
  v3 = -1 << *(v2 + 32);
  v4 = ~v3;
  *a1 = v2;
  v7 = *(v2 + 64);
  result = v2 + 64;
  v6 = v7;
  v8 = -v3;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  a1[1] = result;
  a1[2] = v4;
  a1[3] = 0;
  a1[4] = v9 & v6;
  return result;
}

void (*sub_18BA71F08(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v21 = v7;
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = CGRectMake;
  v23 = CGRectMake;
  v24 = v9;
  v11 = MEMORY[0x1E69E6530];
  swift_getTupleTypeMetadata2();
  v12 = sub_18BC20DE8();
  v13 = sub_18B7C29AC(v12, a2, v11, a3);

  v25 = v13;
  if (!sub_18BC20E28())
  {
    return v10;
  }

  for (i = 0; ; ++i)
  {
    v15 = sub_18BC20E08();
    sub_18BC20DC8();
    if (v15)
    {
      (*(v6 + 16))(v8, a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * i, a2);
      v17 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = sub_18BC21B08();
    if (v21 != 8)
    {
      break;
    }

    v22 = result;
    (*(v6 + 16))(v8, &v22, a2);
    swift_unknownObjectRelease();
    v17 = i + 1;
    if (__OFADD__(i, 1))
    {
LABEL_10:
      __break(1u);
      return v23;
    }

LABEL_5:
    v18 = type metadata accessor for CountedSet(0, a2, a3, v16);
    sub_18BA71530(v8, v18);
    (*(v6 + 8))(v8, a2);
    if (v17 == sub_18BC20E28())
    {
      return v23;
    }
  }

  __break(1u);
  return result;
}

void sub_18BA72188(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))();
  v5 = *(v4 + 16);

  v6.origin.x = (*(a2 + 120))(v5 - 1, a1, a2);
  CGRectGetMinX(v6);
  (*(a2 + 200))(a1, a2);
  v7.origin.x = sub_18BA72244(a1, a2);
  CGRectGetMaxX(v7);
}

double sub_18BA72244(uint64_t a1, uint64_t a2)
{
  (*(a2 + 64))(v14);
  v4 = *&v14[4];
  v5 = *&v14[5];
  v7 = *&v14[6];
  v6 = *&v14[7];
  v8 = (*(a2 + 112))(a1, a2);
  v10 = v9;
  (*(a2 + 40))(v15, a1, a2);
  if (v16)
  {
    v17.origin.x = 0.0;
    v17.origin.y = 0.0;
    v17.size.width = v8;
    v17.size.height = v10;
    MaxX = CGRectGetMaxX(v17);
    v18.origin.x = v4;
    v18.origin.y = v5;
    v18.size.width = v7;
    v18.size.height = v6;
    v12 = MaxX - CGRectGetMaxX(v18);
    v19.origin.x = v4;
    v19.origin.y = v5;
    v19.size.width = v7;
    v19.size.height = v6;
    CGRectGetMinY(v19);
    v20.origin.x = v4;
    v20.origin.y = v5;
    v20.size.width = v7;
    v20.size.height = v6;
    CGRectGetWidth(v20);
    v21.origin.x = v4;
    v21.origin.y = v5;
    v21.size.width = v7;
    v21.size.height = v6;
    CGRectGetHeight(v21);
    return v12;
  }

  return v4;
}

id sub_18BA723D0()
{
  v1 = OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView21ClosingBackgroundView____lazy_storage___blurRadius;
  v2 = *(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView21ClosingBackgroundView____lazy_storage___blurRadius);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView21ClosingBackgroundView____lazy_storage___blurRadius);
  }

  else
  {
    v4 = sub_18BA72434();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_18BA72434()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD268]) init];
  v1 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18BC3E3E0;
  *(v2 + 32) = v0;
  sub_18B7B0AC0(0, &qword_1EA9D50B0, 0x1E69DC658);
  v3 = v0;
  v4 = sub_18BC20D88();

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8[4] = sub_18B7CC878;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_18B7B0DB0;
  v8[3] = &block_descriptor_14;
  v6 = _Block_copy(v8);

  [v1 _createTransformerWithInputAnimatableProperties_presentationValueChangedCallback_];
  _Block_release(v6);

  return v3;
}

char *sub_18BA725C0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView21ClosingBackgroundView____lazy_storage___blurRadius] = 0;
  v9 = OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView21ClosingBackgroundView_backdropView;
  *&v4[v9] = [objc_allocWithZone(SFBackdropView) init];
  v10 = &v4[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView21ClosingBackgroundView_lastLayoutSize];
  v11 = _s21ClosingBackgroundViewCMa();
  *v10 = 0;
  *(v10 + 1) = 0;
  v14.receiver = v4;
  v14.super_class = v11;
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  [v12 setUserInteractionEnabled_];
  [v12 setHidden_];
  [v12 addSubview_];

  return v12;
}

id sub_18BA726E8(void *a1)
{
  *&v1[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView21ClosingBackgroundView____lazy_storage___blurRadius] = 0;
  v3 = OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView21ClosingBackgroundView_backdropView;
  *&v1[v3] = [objc_allocWithZone(SFBackdropView) init];
  v4 = &v1[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView21ClosingBackgroundView_lastLayoutSize];
  v5 = _s21ClosingBackgroundViewCMa();
  *v4 = 0;
  *(v4 + 1) = 0;
  v10.receiver = v1;
  v10.super_class = v5;
  v6 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    [v8 setUserInteractionEnabled_];
    [v8 setHidden_];
    [v8 addSubview_];
  }

  return v7;
}

void sub_18BA727F4()
{
  v20.receiver = v0;
  v20.super_class = _s21ClosingBackgroundViewCMa();
  objc_msgSendSuper2(&v20, sel_layoutSubviews);
  v1 = sub_18BA723D0();
  [v1 presentationValue];
  v3 = v2;

  [v0 setHidden_];
  if (([v0 isHidden] & 1) == 0)
  {
    v4 = [v0 bounds];
    v7 = &v0[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView21ClosingBackgroundView_lastLayoutSize];
    if (v8 == *&v0[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView21ClosingBackgroundView_lastLayoutSize] && v6 == *&v0[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView21ClosingBackgroundView_lastLayoutSize + 8])
    {
      v10 = *&v0[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView21ClosingBackgroundView_backdropView];
      v11 = [v10 layer];
      v12 = [v11 filters];

      if (v12)
      {
        v13 = sub_18BC20D98();

        if (*(v13 + 16))
        {
          sub_18B7B193C(v13 + 32, v19);

          sub_18B7E0F80(v19);
          v14 = [v10 layer];
          [*&v0[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView21ClosingBackgroundView____lazy_storage___blurRadius] presentationValue];
          v15 = sub_18BC1EEA8();
          v16 = sub_18BC20B98();
          [v14 setValue:v15 forKey:v16];

          return;
        }
      }

      memset(v19, 0, sizeof(v19));
      v4 = sub_18B7E0F80(v19);
    }

    sub_18BA72A40(v4, v5);
    [v0 bounds];
    *v7 = v17;
    *(v7 + 1) = v18;
  }
}

void sub_18BA72A40(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_18BC20B98();
  v6 = [objc_opt_self() imageNamed:v5 inBundle:v4];

  if (v6)
  {
    [v6 size];
    UIEdgeInsetsMakeWithEdges();
    v7 = [v6 resizableImageWithCapInsets_];
    v8 = *&v2[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView21ClosingBackgroundView_backdropView];
    [v2 bounds];
    UIRectRoundToViewScale();
    [v8 setFrame_];
    [v8 bounds];
    v11 = v10;
    v13 = v12;
    v14 = [v2 traitCollection];
    v15 = [objc_opt_self() formatForTraitCollection_];

    v16 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize:v15 format:{v11, v13}];
    v17 = swift_allocObject();
    *(v17 + 16) = v7;
    *(v17 + 24) = v2;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_18BA73010;
    *(v18 + 24) = v17;
    aBlock[4] = sub_18BA73064;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18BA72F20;
    aBlock[3] = &block_descriptor_22;
    v19 = _Block_copy(aBlock);
    v20 = v7;
    v21 = v2;
    sub_18BC1E1A8();

    v22 = [v16 imageWithActions_];

    _Block_release(v19);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    if (v16)
    {
      __break(1u);
    }

    else
    {
      v23 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
      v24 = [v22 CGImage];
      v25 = sub_18BC20B98();
      [v23 setValue:v24 forKey:v25];

      v26 = sub_18BA723D0();
      [v26 presentationValue];

      v27 = sub_18BC1EEA8();
      [v23 setValue:v27 forKey:*MEMORY[0x1E6979BA8]];

      v28 = [v8 layer];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3A10, &qword_18BC3EFC0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_18BC3E410;
      *(v29 + 56) = sub_18B7B0AC0(0, &qword_1EA9D40B8, 0x1E6979378);
      *(v29 + 32) = v23;
      v30 = v23;
      v31 = sub_18BC20D88();

      [v28 setFilters_];
    }
  }
}

void sub_18BA72F20(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_18BA72F6C()
{
  v2.receiver = v0;
  v2.super_class = _s21ClosingBackgroundViewCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_18BA73010()
{
  v1 = *(v0 + 16);
  [*(*(v0 + 24) + OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView21ClosingBackgroundView_backdropView) bounds];

  return [v1 drawInRect_];
}

id sub_18BA73094()
{
  v1 = OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell____lazy_storage___imageContainerView;
  v2 = *(v0 + OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell____lazy_storage___imageContainerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell____lazy_storage___imageContainerView);
  }

  else
  {
    v4 = sub_18BA730F8(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_18BA730F8(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v2 setClipsToBounds_];
  v3 = sub_18BA733D4();
  [v2 addSubview_];

  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_18BC48920;
  v6 = OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell____lazy_storage___imageView;
  v7 = [*(a1 + OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell____lazy_storage___imageView) centerXAnchor];
  v8 = [v2 centerXAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v5 + 32) = v9;
  v10 = [*(a1 + v6) centerYAnchor];
  v11 = [v2 centerYAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v5 + 40) = v12;
  v13 = [*(a1 + v6) widthAnchor];
  v14 = [*(a1 + v6) heightAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v5 + 48) = v15;
  *(v5 + 56) = sub_18BA7348C();
  v16 = [v2 widthAnchor];
  v17 = [v16 constraintEqualToConstant_];

  *(v5 + 64) = v17;
  v18 = [v2 heightAnchor];
  v19 = [v2 widthAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v5 + 72) = v20;
  sub_18B7B0AC0(0, &qword_1EA9D4700, 0x1E696ACD8);
  v21 = sub_18BC20D88();

  [v4 activateConstraints_];

  return v2;
}

id sub_18BA733D4()
{
  v1 = OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell____lazy_storage___imageView);
  }

  else
  {
    v4 = [objc_allocWithZone(_SFSiteIconView) init];
    [v4 setImageContentMode_];
    v5 = v4;
    [v5 setClipsToBounds_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_18BA7348C()
{
  v1 = OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell____lazy_storage___imageViewSizeConstraint;
  v2 = *(v0 + OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell____lazy_storage___imageViewSizeConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell____lazy_storage___imageViewSizeConstraint);
  }

  else
  {
    v4 = sub_18BA733D4();
    v5 = [v4 widthAnchor];

    v6 = [v5 constraintEqualToConstant_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_18BA73530@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AC0, &unk_18BC3F030);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v27 - v4;
  v6 = sub_18BC1F568();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18BC1F4E8();
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7620, &qword_18BC489B8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v27 - v16;
  v18 = OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell____lazy_storage___iconAccessory;
  swift_beginAccess();
  sub_18BA76498(v1 + v18, v17);
  v19 = sub_18BC1F598();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v17, 1, v19) != 1)
  {
    return (*(v20 + 32))(a1, v17, v19);
  }

  sub_18BA76508(v17);
  v27[1] = sub_18BA73094();
  v21 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D6700, &unk_18BC459B0) + 48)];
  v27[0] = a1;
  v22 = *MEMORY[0x1E69DBF28];
  v23 = sub_18BC1F418();
  (*(*(v23 - 8) + 104))(v8, v22, v23);
  *v21 = sub_18BB70068;
  v21[1] = 0;
  (*(v28 + 104))(v8, *MEMORY[0x1E69DBF58], v29);
  v24 = sub_18BC1F448();
  (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
  sub_18BC1F4D8();
  v25 = v27[0];
  sub_18BC1F3D8();
  (*(v30 + 8))(v11, v31);
  (*(v20 + 16))(v14, v25, v19);
  (*(v20 + 56))(v14, 0, 1, v19);
  swift_beginAccess();
  sub_18BA76570(v14, v1 + v18);
  return swift_endAccess();
}

void sub_18BA73960()
{
  v15.receiver = v0;
  v15.super_class = _s14CompactRowCellCMa(0);
  objc_msgSendSuper2(&v15, sel_prepareForReuse);
  v1 = OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_imageViewBookmark;
  v2 = *&v0[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_imageViewBookmark];
  *&v0[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_imageViewBookmark] = 0;
  if (v2)
  {
    v3 = sub_18BA7348C();
    v4 = *&v0[v1];
    if (v4)
    {
      v5 = [v4 isFolder];
      v6 = 24.0;
      if (v5)
      {
        v6 = 28.0;
      }
    }

    else
    {
      v6 = 24.0;
    }

    [v3 setConstant_];

    [v0 setNeedsUpdateConfiguration];
  }

  v7 = *&v0[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_icon];
  *&v0[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_icon] = 0;
  if (v7)
  {
    [v0 setNeedsUpdateConfiguration];
  }

  v8 = sub_18BA733D4();
  [v8 setImage_];

  v9 = &v0[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_title];
  v10 = *&v0[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_title + 8];
  *v9 = 0;
  *(v9 + 1) = 0;
  if (v10)
  {
    [v0 setNeedsUpdateConfiguration];
  }

  v11 = &v0[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_childrenCount];
  v12 = v0[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_childrenCount + 8];
  *v11 = 0;
  v11[8] = 1;
  if ((v12 & 1) == 0)
  {
    sub_18BA74098();
  }

  v13 = v0[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_isMultiSelectable];
  v0[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_isMultiSelectable] = 0;
  if (v13)
  {
    sub_18BA74098();
  }

  v14 = v0[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_isReorderable];
  v0[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_isReorderable] = 0;
  if (v14 == 1)
  {
    sub_18BA74098();
  }
}

uint64_t sub_18BA73B2C(__n128 a1)
{
  v2 = v1;
  v3 = sub_18BC1FA08();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v42[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18BC1F708();
  v8 = _s14CompactRowCellCMa(0);
  v43.receiver = v2;
  v43.super_class = v8;
  objc_msgSendSuper2(&v43, sel__bridgedUpdateConfigurationUsingState_, v7);

  v9 = [v2 traitCollection];
  v10 = [v9 listEnvironment];

  if (v10 == 5)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 18.0;
  }

  if (v10 == 5)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = 16.0;
  }

  [v2 setDirectionalLayoutMargins_];
  v13 = OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_imageViewBookmark;
  v14 = *&v2[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_imageViewBookmark];
  if (!v14)
  {
    goto LABEL_15;
  }

  v15 = v14;
  if (![v15 isFolder])
  {

    goto LABEL_13;
  }

  v16 = WebBookmark.childrenCount.getter();
  if ((v17 & 1) != 0 || v16)
  {
    v25 = [v15 folderType];

    if (v25)
    {
      goto LABEL_15;
    }

LABEL_13:
    v18 = sub_18BA733D4();
    [v18 setCustomImageInset_];

    v19 = *&v2[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell____lazy_storage___imageView];
    v20 = *&v2[v13];
    v21 = objc_opt_self();
    v22 = v20;
    v23 = v19;
    v24 = [v21 secondarySystemFillColor];
    [v23 setBookmark:v22 withBackgroundColor:v24];
    goto LABEL_16;
  }

LABEL_15:
  v26 = sub_18BA733D4();
  [v26 setCustomImageInset_];

  v27 = *&v2[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell____lazy_storage___imageView];
  v28 = *&v2[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_icon];
  v29 = objc_opt_self();
  v22 = v28;
  v23 = v27;
  v30 = [v29 systemBlueColor];
  v24 = [v30 colorWithAlphaComponent_];

  [v23 setImage:v22 withBackgroundColor:v24];
LABEL_16:

  v31 = sub_18BA733D4();
  v32 = *&v2[v13];
  if (v32)
  {
    v33 = [v32 isFolder];
    v34 = 5.4;
    if (v33)
    {
      v34 = 6.3;
    }
  }

  else
  {
    v34 = 5.4;
  }

  [v31 _setContinuousCornerRadius_];

  MEMORY[0x18CFFC960]();
  v35 = sub_18BC1F948();
  *(v36 + 8) = 0x4028000000000000;
  v35(v42, 0);
  v37 = sub_18BC1F8A8();
  sub_18BC1F808();
  v37(v42, 0);
  v38 = sub_18BC1F8A8();
  sub_18BC1F818();
  (v38)(v42, 0);
  sub_18BC1E3F8();
  sub_18BC1F9B8();
  v42[3] = v3;
  v42[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v42);
  (*(v4 + 16))(boxed_opaque_existential_0Tm, v6, v3);
  MEMORY[0x18CFFC900](v42);
  LOBYTE(v38) = sub_18BC1F6E8();
  [v2 safari:v38 & 1 updateVisualStateIsSelected:sub_18BC1F728() & 1 isEditing:?];
  sub_18BA74098();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_18BA74098()
{
  v1 = v0;
  v2 = sub_18BC1F438();
  v90 = *(v2 - 8);
  v91 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v89 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18BC1F4B8();
  v86 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v85 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18BC1F538();
  v83 = *(v6 - 8);
  v84 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v82 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AC0, &unk_18BC3F030);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v96 = &v73 - v9;
  v10 = sub_18BC1F408();
  v79 = *(v10 - 8);
  v80 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_18BC1F418();
  v99 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_18BC1F598();
  v16 = *(v15 - 8);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v88 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v87 = &v73 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v93 = &v73 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v81 = &v73 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v92 = &v73 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v78 = &v73 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v73 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64F0, &qword_18BC45390);
  v32 = *(v16 + 72);
  v33 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v98 = v32;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_18BC3E410;
  v97 = v33;
  sub_18BA73530(v34 + v33);
  v94 = v1;
  if (*(v1 + OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_childrenCount + 8))
  {
    v35 = v94;
    v36 = v95;
    v37 = v96;
  }

  else
  {
    v38 = *(v1 + OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_childrenCount);
    v77 = v4;
    if (v38)
    {
      v39 = objc_opt_self();
      v40 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v41 = [v39 localizedStringFromNumber:v40 numberStyle:1];

      v73 = sub_18BC20BD8();
      v42 = v99;
      v43 = *(v99 + 104);
      v75 = *MEMORY[0x1E69DBF20];
      v76 = v15;
      v44 = v95;
      v74 = v43;
      (v43)(v14);
      v45 = sub_18BC1F448();
      (*(*(v45 - 8) + 56))(v96, 1, 1, v45);
      sub_18BC1F3F8();
      sub_18BC1F548();

      (*(v79 + 8))(v12, v80);
      v46 = v44;
      v15 = v76;
      (*(v42 + 8))(v14, v46);
      v47 = v78;
      (*(v17 + 16))(v78, v31, v15);
      v49 = *(v34 + 16);
      v48 = *(v34 + 24);
      if (v49 >= v48 >> 1)
      {
        v34 = sub_18B9B58D8((v48 > 1), v49 + 1, 1, v34);
      }

      (*(v17 + 8))(v31, v15);
      *(v34 + 16) = v49 + 1;
      (*(v17 + 32))(v34 + v97 + v49 * v98, v47, v15);
      v50 = v99;
      v51 = v75;
      v52 = v74;
    }

    else
    {
      v51 = *MEMORY[0x1E69DBF20];
      v50 = v99;
      v52 = *(v99 + 104);
    }

    v36 = v95;
    v52(v14, v51, v95);
    v53 = sub_18BC1F448();
    v37 = v96;
    (*(*(v53 - 8) + 56))(v96, 1, 1, v53);
    v54 = v82;
    sub_18BC1F528();
    v55 = v92;
    sub_18BC1F4C8();
    (*(v83 + 8))(v54, v84);
    (*(v50 + 8))(v14, v36);
    v56 = v81;
    (*(v17 + 16))(v81, v55, v15);
    v58 = *(v34 + 16);
    v57 = *(v34 + 24);
    v35 = v94;
    if (v58 >= v57 >> 1)
    {
      v34 = sub_18B9B58D8((v57 > 1), v58 + 1, 1, v34);
    }

    (*(v17 + 8))(v92, v15);
    *(v34 + 16) = v58 + 1;
    (*(v17 + 32))(v34 + v97 + v58 * v98, v56, v15);
    v4 = v77;
  }

  v59 = MEMORY[0x1E69DBF18];
  if (*(v35 + OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_isMultiSelectable) == 1)
  {
    v60 = v99;
    (*(v99 + 104))(v14, *MEMORY[0x1E69DBF18], v36);
    v61 = sub_18BC1F448();
    (*(*(v61 - 8) + 56))(v37, 1, 1, v61);
    v62 = v85;
    sub_18BC1F4A8();
    sub_18BC1F3E8();
    (*(v86 + 8))(v62, v4);
    (*(v60 + 8))(v14, v36);
    v64 = *(v34 + 16);
    v63 = *(v34 + 24);
    if (v64 >= v63 >> 1)
    {
      v34 = sub_18B9B58D8((v63 > 1), v64 + 1, 1, v34);
    }

    *(v34 + 16) = v64 + 1;
    (*(v17 + 32))(v34 + v97 + v64 * v98, v93, v15);
    v59 = MEMORY[0x1E69DBF18];
  }

  if (*(v35 + OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_isReorderable) == 1)
  {
    v65 = sub_18BC1F448();
    (*(*(v65 - 8) + 56))(v37, 1, 1, v65);
    v66 = v89;
    sub_18BC1F428();
    v67 = v99;
    (*(v99 + 104))(v14, *v59, v36);
    v68 = v87;
    sub_18BC1F558();
    (*(v67 + 8))(v14, v36);
    (*(v90 + 8))(v66, v91);
    v69 = v88;
    (*(v17 + 16))(v88, v68, v15);
    v71 = *(v34 + 16);
    v70 = *(v34 + 24);
    if (v71 >= v70 >> 1)
    {
      v34 = sub_18B9B58D8((v70 > 1), v71 + 1, 1, v34);
    }

    (*(v17 + 8))(v68, v15);
    *(v34 + 16) = v71 + 1;
    (*(v17 + 32))(v34 + v97 + v71 * v98, v69, v15);
  }

  return sub_18BC21458();
}

uint64_t sub_18BA74BE0(uint64_t result, char a2, __n128 a3)
{
  v4 = v3 + OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_childrenCount;
  v5 = *(v3 + OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_childrenCount);
  v6 = *(v3 + OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_childrenCount + 8);
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  if (a2)
  {
    if (v6)
    {
      return result;
    }

    return sub_18BA74098();
  }

  if (v5 != result)
  {
    LOBYTE(v6) = 1;
  }

  if (v6)
  {
    return sub_18BA74098();
  }

  return result;
}

uint64_t *(*sub_18BA74C1C(uint64_t a1))(uint64_t *result, __n128 a2)
{
  v2 = OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_childrenCount;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  v3 = (v1 + v2);
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *a1 = v4;
  *(a1 + 8) = v3;
  return sub_18BA74C5C;
}

uint64_t *sub_18BA74C5C(uint64_t *result, __n128 a2)
{
  v2 = (result[2] + result[3]);
  v3 = *result;
  v4 = *(result + 8);
  v5 = *v2;
  v6 = *(v2 + 8);
  *v2 = *result;
  *(v2 + 8) = v4;
  if (v4)
  {
    if (v6)
    {
      return result;
    }

    return sub_18BA74098();
  }

  if (v3 != v5)
  {
    v6 = 1;
  }

  if (v6)
  {
    return sub_18BA74098();
  }

  return result;
}

void sub_18BA74CB4(id a1)
{
  v3 = *&v1[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_icon];
  *&v1[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_icon] = a1;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    v8 = v3;
    goto LABEL_9;
  }

  v8 = v3;
  if (!v3)
  {
    a1 = a1;
LABEL_9:
    [v1 setNeedsUpdateConfiguration];

    v7 = v8;
    goto LABEL_10;
  }

  v4 = v1;
  sub_18B7B0AC0(0, &qword_1ED6514F0, 0x1E69DCAB8);
  a1 = a1;
  v5 = v8;
  v6 = sub_18BC215C8();

  if ((v6 & 1) == 0)
  {
    v1 = v4;
    goto LABEL_9;
  }

  v7 = v5;
LABEL_10:
}

void sub_18BA74DB0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_imageViewBookmark;
  v5 = *&v2[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_imageViewBookmark];
  if (v5)
  {
    if (a1)
    {
      sub_18B7B0AC0(0, &qword_1EA9D7E10, 0x1E69E20F0);
      v6 = v5;
      v7 = a1;
      v8 = sub_18BC215C8();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  v9 = sub_18BA7348C();
  v10 = *&v2[v4];
  if (v10)
  {
    v11 = [v10 isFolder];
    v12 = 24.0;
    if (v11)
    {
      v12 = 28.0;
    }
  }

  else
  {
    v12 = 24.0;
  }

  [v9 setConstant_];

  [v2 setNeedsUpdateConfiguration];
}

void (*sub_18BA74EC4(void *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_imageViewBookmark;
  a1[1] = v1;
  a1[2] = v2;
  v3 = *(v1 + v2);
  *a1 = v3;
  v4 = v3;
  return sub_18BA74F1C;
}

void sub_18BA74F1C(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a1;
  v6 = *&v3[v4];
  *&v3[v4] = v5;
  v25 = v5;
  if (a2)
  {
    if (v5)
    {
      if (v6)
      {
        sub_18B7B0AC0(0, &qword_1EA9D7E10, 0x1E69E20F0);
        v7 = v25;
        v8 = v6;
        v9 = sub_18BC215C8();

        if (v9)
        {

          v10 = v7;
LABEL_23:

LABEL_24:
          v14 = *a1;
          goto LABEL_32;
        }

        v3 = *(a1 + 8);
        v4 = *(a1 + 16);
      }

      else
      {
        v15 = v5;
      }
    }

    else if (!v6)
    {
      goto LABEL_24;
    }

    v17 = sub_18BA7348C();
    v18 = *&v3[v4];
    if (v18)
    {
      v19 = [v18 isFolder];
      v20 = 24.0;
      if (v19)
      {
        v20 = 28.0;
      }
    }

    else
    {
      v20 = 24.0;
    }

    [v17 setConstant_];

    [v3 setNeedsUpdateConfiguration];
    v10 = v25;
    goto LABEL_23;
  }

  if (!v5)
  {
    if (!v6)
    {
      return;
    }

    goto LABEL_26;
  }

  if (!v6)
  {
    v16 = v5;
LABEL_26:
    v21 = sub_18BA7348C();
    v22 = *&v3[v4];
    if (v22)
    {
      v23 = [v22 isFolder];
      v24 = 24.0;
      if (v23)
      {
        v24 = 28.0;
      }
    }

    else
    {
      v24 = 24.0;
    }

    [v21 setConstant_];

    [v3 setNeedsUpdateConfiguration];
    v14 = v25;
    goto LABEL_32;
  }

  sub_18B7B0AC0(0, &qword_1EA9D7E10, 0x1E69E20F0);
  v11 = v25;
  v12 = v6;
  v13 = sub_18BC215C8();

  if ((v13 & 1) == 0)
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 16);
    goto LABEL_26;
  }

  v14 = v11;
LABEL_32:
}

uint64_t (*sub_18BA75144(uint64_t a1))()
{
  v2 = OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_isMultiSelectable;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_18BA765E0;
}

uint64_t (*sub_18BA75178(uint64_t a1))()
{
  v2 = OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_isReorderable;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_18BA751AC;
}

uint64_t sub_18BA751B0(uint64_t result, __n128 a2)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = *(*result + v2);
  *(*result + v2) = v3;
  if (v3 != v4)
  {
    return sub_18BA74098();
  }

  return result;
}

double sub_18BA751E8(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_title];
  v4 = *&v2[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_title];
  v5 = *&v2[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_title + 8];
  *v3 = a1;
  *(v3 + 1) = a2;
  if (a2)
  {
    if (v5)
    {
      v6 = v4 == a1 && v5 == a2;
      if (v6 || (sub_18BC21FD8() & 1) != 0)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!v5)
  {
    return result;
  }

  [v2 setNeedsUpdateConfiguration];
LABEL_11:

  return result;
}

id sub_18BA75274(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell____lazy_storage___imageContainerView] = 0;
  *&v4[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell____lazy_storage___imageView] = 0;
  *&v4[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell____lazy_storage___imageViewSizeConstraint] = 0;
  v9 = OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell____lazy_storage___iconAccessory;
  v10 = sub_18BC1F598();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_childrenCount];
  *v11 = 0;
  v11[8] = 1;
  v12 = &v4[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_detailText];
  *v12 = 0;
  v12[1] = 0;
  *&v4[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_icon] = 0;
  *&v4[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_image] = 0;
  *&v4[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_imageViewBookmark] = 0;
  v4[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_isMultiSelectable] = 0;
  v4[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_isReorderable] = 0;
  *&v4[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_linkMetadata] = 0;
  *&v4[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_parentFolder] = 0;
  v13 = &v4[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_siteName];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v4[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_title];
  v15 = _s14CompactRowCellCMa(0);
  *v14 = 0;
  v14[1] = 0;
  v17.receiver = v4;
  v17.super_class = v15;
  return objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_18BA75418(void *a1)
{
  *&v1[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell____lazy_storage___imageContainerView] = 0;
  *&v1[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell____lazy_storage___imageView] = 0;
  *&v1[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell____lazy_storage___imageViewSizeConstraint] = 0;
  v3 = OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell____lazy_storage___iconAccessory;
  v4 = sub_18BC1F598();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = &v1[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_childrenCount];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v1[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_detailText];
  *v6 = 0;
  v6[1] = 0;
  *&v1[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_icon] = 0;
  *&v1[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_image] = 0;
  *&v1[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_imageViewBookmark] = 0;
  v1[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_isMultiSelectable] = 0;
  v1[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_isReorderable] = 0;
  *&v1[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_linkMetadata] = 0;
  *&v1[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_parentFolder] = 0;
  v7 = &v1[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_siteName];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v1[OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_title];
  v9 = _s14CompactRowCellCMa(0);
  *v8 = 0;
  v8[1] = 0;
  v12.receiver = v1;
  v12.super_class = v9;
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);

  if (v10)
  {
  }

  return v10;
}

id sub_18BA755B4()
{
  v2.receiver = v0;
  v2.super_class = _s14CompactRowCellCMa(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s14CompactRowCellCMa(uint64_t a1)
{
  result = qword_1ED651DB8;
  if (!qword_1ED651DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18BA75738(uint64_t a1)
{
  sub_18BA75804(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_18BA75804(uint64_t a1)
{
  if (!qword_1ED651DC8[0])
  {
    sub_18BC1F598();
    v1 = sub_18BC21848();
    if (!v2)
    {
      atomic_store(v1, qword_1ED651DC8);
    }
  }
}

void (*sub_18BA7587C(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18BA74C1C(v2);
  return sub_18BA765E4;
}

void *sub_18BA75964()
{
  v1 = *(v0 + OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_icon);
  v2 = v1;
  return v1;
}

void (*sub_18BA75998(void *a1))(id *a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_icon);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_18BA759EC;
}

void sub_18BA759EC(id *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_18BA74CB4(v2);
  }

  else
  {
    sub_18BA74CB4(*a1);
  }
}

void *sub_18BA75A54()
{
  v1 = OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_image;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_18BA75AA0(uint64_t a1)
{
  v3 = OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_image;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_18BA75B58()
{
  v1 = *(v0 + OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_imageViewBookmark);
  v2 = v1;
  return v1;
}

void sub_18BA75B88(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_imageViewBookmark);
  *(v1 + OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_imageViewBookmark) = a1;
  v2 = a1;
  sub_18BA74DB0(v3);
}

void (*sub_18BA75BE8(void *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_18BA74EC4(v2);
  return sub_18BA75C58;
}

uint64_t sub_18BA75C6C(uint64_t result, __n128 a2)
{
  v3 = *(v2 + OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_isMultiSelectable);
  *(v2 + OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_isMultiSelectable) = result;
  if (v3 != (result & 1))
  {
    return sub_18BA74098();
  }

  return result;
}

void (*sub_18BA75C90(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18BA75144(v2);
  return sub_18BA765E4;
}

uint64_t sub_18BA75D10(uint64_t result, __n128 a2)
{
  v3 = *(v2 + OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_isReorderable);
  *(v2 + OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_isReorderable) = result;
  if (v3 != (result & 1))
  {
    return sub_18BA74098();
  }

  return result;
}

void (*sub_18BA75D34(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18BA75178(v2);
  return sub_18BA765E4;
}

void *sub_18BA75DA4()
{
  v1 = OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_linkMetadata;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_18BA75DF0(uint64_t a1)
{
  v3 = OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_linkMetadata;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_18BA75EA8()
{
  v1 = OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_parentFolder;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_18BA75EF4(uint64_t a1)
{
  v3 = OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_parentFolder;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_18BA75FB8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (v3 + *a3);
  swift_beginAccess();
  v5 = *v4;
  sub_18BC1E3F8();
  return v5;
}

double sub_18BA76018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = (v5 + *a5);
  swift_beginAccess();
  *v8 = a1;
  v8[1] = a2;

  return result;
}

uint64_t sub_18BA760D4()
{
  v1 = *(v0 + OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_title);
  sub_18BC1E3F8();
  return v1;
}

double (*sub_18BA76114(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_title + 8);
  *a1 = *(v1 + OBJC_IVAR___SFBookmarksCollectionViewControllerCompactRowCell_title);
  a1[1] = v3;
  sub_18BC1E3F8();
  return sub_18BA76170;
}

double sub_18BA76170(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_18BA751E8(*a1, v2);
  }

  sub_18BC1E3F8();
  sub_18BA751E8(v3, v2);

  return result;
}

uint64_t sub_18BA761F8()
{
  v1 = [v0 accessibilityIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_18BC20BD8();

  return v3;
}

void sub_18BA76260(uint64_t a1, uint64_t a2, double a3)
{
  if (a2)
  {
    v4 = sub_18BC20B98();
  }

  else
  {
    v4 = 0;
  }

  [v3 setAccessibilityIdentifier_];
}

void (*sub_18BA762CC(uint64_t **a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_18BA7633C(v2);
  return sub_18BA765E4;
}

void (*sub_18BA7633C(uint64_t *a1))(uint64_t *a1, char a2, double a3)
{
  a1[2] = v1;
  v3 = [v1 accessibilityIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_18BC20BD8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_18BA763C4;
}

void sub_18BA763C4(uint64_t *a1, char a2, double a3)
{
  v4 = a1[1];
  if (a2)
  {
    if (v4)
    {
      sub_18BC1E3F8();
      v5 = sub_18BC20B98();
    }

    else
    {
      v5 = 0;
    }

    [a1[2] setAccessibilityIdentifier_];
  }

  else if (v4)
  {
    v5 = sub_18BC20B98();

    [a1[2] setAccessibilityIdentifier_];
  }

  else
  {
    v5 = 0;
    [a1[2] setAccessibilityIdentifier_];
  }
}

uint64_t sub_18BA76498(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7620, &qword_18BC489B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BA76508(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7620, &qword_18BC489B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18BA76570(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7620, &qword_18BC489B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BA765E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_18BC1EC08();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_18BA7665C()
{
  sub_18BC22158();
  sub_18B80CA58(v1);
  return sub_18BC221A8();
}

uint64_t sub_18BA766E8()
{

  return swift_deallocClassInstance();
}

id sub_18BA7674C()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    return [*(*(v0 + 40) + OBJC_IVAR___SFTabThumbnailView_borrowedContentContainerView) setAlpha_];
  }

  return result;
}

uint64_t sub_18BA767A0()
{
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18B7C0204(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_18BC20A78();
  return sub_18BC221A8();
}

uint64_t sub_18BA7683C(uint64_t a1)
{
  sub_18BC1EC08();
  sub_18B7C0204(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  return sub_18BC20A78();
}

uint64_t sub_18BA768BC(uint64_t a1)
{
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18B7C0204(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_18BC20A78();
  return sub_18BC221A8();
}

void sub_18BA76964(uint64_t a1)
{
  v1 = a1;
  v33 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_18BC219A8();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v39 = MEMORY[0x1E69E7CC0];
    sub_18B9B693C(0, v2 & ~(v2 >> 63), 0);
    v34 = v39;
    if (v33)
    {
      v3 = sub_18BC21948();
    }

    else
    {
      v3 = sub_18BC21918();
      v4 = *(v1 + 36);
    }

    v36 = v3;
    v37 = v4;
    v38 = v33 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v31 = v1 + 56;
      v30 = v1 + 64;
      v32 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v9 = v36;
        v8 = v37;
        v10 = v38;
        v11 = v1;
        sub_18BA63EA0(v36, v37, v38, v1);
        v13 = (v12 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibility);
        swift_beginAccess();
        v14 = *v13;
        v15 = v13[1];

        v16 = v34;
        v39 = v34;
        v18 = *(v34 + 16);
        v17 = *(v34 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_18B9B693C((v17 > 1), v18 + 1, 1);
          v16 = v39;
        }

        *(v16 + 16) = v18 + 1;
        v19 = v16 + 16 * v18;
        *(v19 + 32) = v14;
        *(v19 + 40) = v15;
        v34 = v16;
        if (v33)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (sub_18BC21968())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v32;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7640, &unk_18BC48BB0);
          v6 = sub_18BC21038();
          sub_18BC21A08();
          v6(v35, 0);
          if (v5 == v32)
          {
LABEL_32:
            sub_18B7B4FF8(v36, v37, v38);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v20 = 1 << *(v11 + 32);
          if (v9 >= v20)
          {
            goto LABEL_36;
          }

          v21 = v9 >> 6;
          v22 = *(v31 + 8 * (v9 >> 6));
          if (((v22 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v8)
          {
            goto LABEL_38;
          }

          v23 = v22 & (-2 << (v9 & 0x3F));
          if (v23)
          {
            v20 = __clz(__rbit64(v23)) | v9 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v24 = v21 << 6;
            v25 = v21 + 1;
            v26 = (v30 + 8 * v21);
            while (v25 < (v20 + 63) >> 6)
            {
              v28 = *v26++;
              v27 = v28;
              v24 += 64;
              ++v25;
              if (v28)
              {
                sub_18B7B4FF8(v9, v8, 0);
                v20 = __clz(__rbit64(v27)) + v24;
                goto LABEL_31;
              }
            }

            sub_18B7B4FF8(v9, v8, 0);
          }

LABEL_31:
          v29 = *(v11 + 36);
          v36 = v20;
          v37 = v29;
          v38 = 0;
          v2 = v32;
          if (v5 == v32)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_18BA76CE0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(result + 32);
    v4 = *(result + 40);
    v5 = v2 - 1;
    if (v5)
    {
      v6 = (result + 56);
      do
      {
        v7 = *(v6 - 1);
        v9 = *v6;
        v6 += 2;
        v8 = v9;
        v10 = v3 < v7;
        v11 = *&v4 < *&v9;
        if (*&v4 != *&v9)
        {
          v10 = v11;
        }

        if (v10)
        {
          v3 = v7;
          v4 = v8;
        }

        --v5;
      }

      while (v5);
    }

    *a2 = v3;
    *(a2 + 8) = v4;
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }

  return result;
}

uint64_t TabSnapshotPool.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 40) = sub_18B7B45E0(MEMORY[0x1E69E7CC0]);
  *(v0 + 48) = v1;
  *(v0 + 56) = CGRectMake;
  *(v0 + 64) = 0;
  return v0;
}

uint64_t TabSnapshotPool.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 40) = sub_18B7B45E0(MEMORY[0x1E69E7CC0]);
  *(v0 + 48) = v1;
  *(v0 + 56) = CGRectMake;
  *(v0 + 64) = 0;
  return v0;
}

double sub_18BA76E00@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = *(v3 + 24);
  }

  else
  {
    v6 = 0;
  }

  *a2 = v4;
  a2[1] = v6;
  return sub_18B824D48(v4, v5);
}

uint64_t sub_18BA76E54(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = 0;
  }

  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;
  sub_18B824D48(v2, v3);
  return sub_18B7B171C(v6, v7);
}

uint64_t sub_18BA76ECC()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_18B824D48(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_18BA76F1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_18B7B171C(v5, v6);
}

double sub_18BA76FC0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
  sub_18BC1E3F8();
  sub_18BA77028(v4);

  return result;
}

double sub_18BA77028(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = sub_18BC1E3F8();
  LOBYTE(a1) = sub_18B98E344(v4, a1);

  if ((a1 & 1) == 0)
  {
    if (qword_1EA9D2298 != -1)
    {
      swift_once();
    }

    v6 = sub_18BC1F2C8();
    __swift_project_value_buffer(v6, qword_1EA9F7E80);
    sub_18BC1E1A8();
    v7 = sub_18BC1F2A8();
    v8 = sub_18BC21218();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = *(*(v2 + 48) + 16);

      _os_log_impl(&dword_18B7AC000, v7, v8, "Visibility order did change for pool of %ld snapshots", v9, 0xCu);
      MEMORY[0x18CFFEEE0](v9, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v10 = *(v2 + 56);
    v11 = sub_18BC1E1A8();
    v10(v11);
  }

  return result;
}

double sub_18BA771AC()
{
  swift_beginAccess();
  sub_18BC1E3F8();
  return result;
}

double sub_18BA771E4@<D0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 56);
  v4 = *(v3 + 64);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_18B7D1E94;
  a2[1] = v6;
  sub_18BC1E1A8();
  return result;
}

double sub_18BA77264(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  *(v6 + 56) = sub_18B9FE68C;
  *(v6 + 64) = v5;
  sub_18BC1E1A8();

  return result;
}

uint64_t sub_18BA772F4()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  sub_18BC1E1A8();
  return v1;
}

double sub_18BA77340(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;

  return result;
}

void sub_18BA773E4(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 40);
  if (!*(v4 + 16))
  {
    return;
  }

  sub_18BC1E3F8();
  v5 = sub_18B857EE4(a1);
  if ((v6 & 1) == 0)
  {

    return;
  }

  v7 = *(*(v4 + 56) + 8 * v5);
  sub_18BC1E3F8();

  swift_beginAccess();
  v8 = *(v2 + 16);
  if (!v8)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    if ((v7 & 0xC000000000000001) != 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = 0;
    v14 = -1 << *(v7 + 32);
    v10 = v7 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v7 + 56);
    goto LABEL_12;
  }

  v9 = *(v2 + 24);
  sub_18BC1E1A8();
  v8(&v41, a1);
  sub_18B7B171C(v8, v9);
  v45 = v41;
  v46 = v42;
  v47 = v43;
  v48 = v44;
  if ((v7 & 0xC000000000000001) == 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  sub_18BC21958();
  type metadata accessor for TabSnapshotRegistration(0);
  sub_18B8585EC(&qword_1EA9D7630, type metadata accessor for TabSnapshotRegistration, &protocol conformance descriptor for TabSnapshotRegistration);
  sub_18BC210A8();
  v7 = v49;
  v10 = v50;
  v11 = v51;
  v12 = v52;
  v13 = v53;
LABEL_12:
  v17 = (v11 + 64) >> 6;
  if (v7 < 0)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v18 = v12;
    v19 = v13;
    v20 = v12;
    if (!v13)
    {
      break;
    }

LABEL_17:
    v21 = (v19 - 1) & v19;
    v22 = *(*(v7 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    sub_18BC1E1A8();
    if (!v22)
    {
LABEL_23:
      sub_18B7D2E34(v7);
      sub_18B988BAC(&v45, &qword_1EA9D92C0, &qword_18BC42F60);
      return;
    }

    while (1)
    {
      swift_beginAccess();
      v24 = *(v22 + 16);
      v25 = *(v22 + 32);
      v26 = *(v22 + 64);
      v39[2] = *(v22 + 48);
      v39[3] = v26;
      v39[0] = v24;
      v39[1] = v25;
      v27 = v48;
      *(v22 + 48) = v47;
      *(v22 + 64) = v27;
      v28 = v46;
      *(v22 + 16) = v45;
      *(v22 + 32) = v28;
      sub_18B7CA054(&v45, &v41, &qword_1EA9D92C0, &qword_18BC42F60);
      sub_18B988BAC(v39, &qword_1EA9D92C0, &qword_18BC42F60);
      swift_beginAccess();
      v29 = *(v22 + 80);
      v30 = *(v22 + 16);
      v31 = *(v22 + 32);
      v32 = *(v22 + 64);
      v40[2] = *(v22 + 48);
      v40[3] = v32;
      v40[0] = v30;
      v40[1] = v31;
      v33 = *(v22 + 32);
      v35 = *(v22 + 16);
      v36 = v33;
      v34 = *(v22 + 64);
      v37 = *(v22 + 48);
      v38 = v34;
      sub_18BC1E1A8();
      sub_18B7CA054(v40, &v41, &qword_1EA9D92C0, &qword_18BC42F60);
      v29(&v35);

      v41 = v35;
      v42 = v36;
      v43 = v37;
      v44 = v38;
      sub_18B988BAC(&v41, &qword_1EA9D92C0, &qword_18BC42F60);
      v12 = v20;
      v13 = v21;
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_19:
      v23 = sub_18BC219D8();
      if (v23)
      {
        *&v40[0] = v23;
        type metadata accessor for TabSnapshotRegistration(0);
        swift_dynamicCast();
        v22 = v41;
        v20 = v12;
        v21 = v13;
        if (v41)
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_23;
    }

    v19 = *(v10 + 8 * v20);
    ++v18;
    if (v19)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

double sub_18BA77794(uint64_t a1)
{
  if ((*(swift_unownedRetainStrong() + 32) & 1) == 0)
  {
    *(a1 + 32) = 1;
    sub_18BA7A18C();
    sub_18BC1E1A8();
    sub_18B858634(1, sub_18BA7A1DC, a1);
  }

  return result;
}

void sub_18BA7781C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C58, &qword_18BC42940);
  v67 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v65 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v78 = &v65 - v4;
  v5 = sub_18BC1EC08();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v65 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v71 = &v65 - v12;
  swift_beginAccess();
  v66 = v0;
  v13 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7638, &qword_18BC48BA8);
  v14 = sub_18BC21D68();
  v15 = v14;
  v16 = v13 + 64;
  v17 = 1 << *(v13 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v13 + 64);
  v20 = (v17 + 63) >> 6;
  v70 = v6 + 16;
  v79 = v6;
  v77 = (v6 + 32);
  v69 = v14 + 64;
  v73 = v13;
  sub_18BC1E3F8();
  v21 = 0;
  v72 = v15;
  v68 = v8;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v74 = (v19 - 1) & v19;
LABEL_10:
      v25 = v22 | (v21 << 6);
      v26 = *(v73 + 48);
      v27 = v79;
      v28 = *(v79 + 16);
      v75 = *(v79 + 72) * v25;
      v29 = v71;
      v28(v71, v26 + v75, v5);
      v30 = *(v27 + 32);
      v30(v76, v29);
      v31 = sub_18BC1E3F8();
      sub_18BA77ED8(v31, v32);
      if (v33)
      {
        v34 = v33;

        v35 = (v34 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibility);
        swift_beginAccess();
        v36 = *v35;
        v37 = v35[1];
      }

      else
      {
        if (qword_1EA9D2410 != -1)
        {
          swift_once();
        }

        v36 = qword_1EA9D8AE0;
        v37 = qword_1EA9D8AE8;
      }

      v15 = v72;
      *(v69 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      (v30)(v15[6] + v75, v76, v5);
      v38 = (v15[7] + 16 * v25);
      *v38 = v36;
      v38[1] = v37;
      v39 = v15[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        break;
      }

      v15[2] = v41;
      v8 = v68;
      v19 = v74;
      if (!v74)
      {
        goto LABEL_5;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_5:
    v23 = v21;
    while (1)
    {
      v21 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v21 >= v20)
      {
        break;
      }

      v24 = *(v16 + 8 * v21);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v74 = (v24 - 1) & v24;
        goto LABEL_10;
      }
    }

    v42 = v15[2];
    v43 = MEMORY[0x1E69E7CC0];
    if (v42)
    {
      v44 = v15;
      v45 = v5;
      v46 = sub_18BBA2354(v15[2], 0);
      v47 = v67;
      sub_18BBA29D4(v80, v46 + ((*(v67 + 80) + 32) & ~*(v67 + 80)), v42, v44);
      v48 = v80[0];
      v75 = v80[2];
      v76 = v49;
      v73 = v80[4];
      v74 = v80[3];
      sub_18BC1E3F8();
      sub_18B7D2E34(v48);
      v50 = v77;
      if (v76 != v42)
      {
        goto LABEL_32;
      }

      v5 = v45;
    }

    else
    {
      v46 = MEMORY[0x1E69E7CC0];
      v47 = v67;
      v50 = v77;
    }

    v80[0] = v46;
    sub_18BA788B4(v80);

    v51 = v80[0];
    v52 = *(v80[0] + 16);
    if (v52)
    {
      v80[0] = v43;
      sub_18B855A90(0, v52, 0);
      v53 = v80[0];
      v54 = v51 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
      v55 = *(v47 + 72);
      v76 = v51;
      v77 = v55;
      v56 = v65;
      do
      {
        v57 = v78;
        sub_18B7CA054(v54, v78, &qword_1EA9D4C58, &qword_18BC42940);
        sub_18BA7A11C(v57, v56);
        v58 = *v50;
        (*v50)(v8, v56, v5);
        v80[0] = v53;
        v59 = v8;
        v60 = v5;
        v62 = *(v53 + 16);
        v61 = *(v53 + 24);
        if (v62 >= v61 >> 1)
        {
          sub_18B855A90((v61 > 1), v62 + 1, 1);
          v56 = v65;
          v53 = v80[0];
        }

        *(v53 + 16) = v62 + 1;
        v58((v53 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v62), v59, v60);
        v54 += v77;
        --v52;
        v5 = v60;
        v8 = v59;
      }

      while (v52);
    }

    else
    {

      v53 = MEMORY[0x1E69E7CC0];
    }

    v63 = v66;
    swift_beginAccess();
    v64 = *(v63 + 48);
    *(v63 + 48) = v53;
    sub_18BA77028(v64);

    *(v63 + 32) = 0;
  }
}

void sub_18BA77ED8(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v10 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v5 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v6 = v12 & *(a1 + 56);
    sub_18BC1E3F8();
    v4 = 0;
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  swift_unknownObjectRetain();
  sub_18BC21958();
  type metadata accessor for TabSnapshotRegistration(0);
  sub_18B8585EC(&qword_1EA9D7630, type metadata accessor for TabSnapshotRegistration, &protocol conformance descriptor for TabSnapshotRegistration);
  sub_18BC210A8();
  v2 = v33;
  v3 = v34;
  v5 = v35;
  v4 = v36;
  v6 = v37;
  if ((v33 & 0x8000000000000000) == 0)
  {
    if (v37)
    {
LABEL_4:
      v30 = v2;
      v7 = (v6 - 1) & v6;
      v8 = __clz(__rbit64(v6)) | (v4 << 6);
      v9 = v4;
LABEL_14:
      v15 = *(*(v30 + 48) + 8 * v8);
      sub_18BC1E1A8();
      v29 = 1;
      if (v15)
      {
        goto LABEL_15;
      }

      goto LABEL_34;
    }

LABEL_9:
    v13 = v4;
    while (1)
    {
      v9 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_37;
      }

      if (v9 >= ((v5 + 64) >> 6))
      {
        goto LABEL_35;
      }

      v14 = *(v3 + 8 * v9);
      ++v13;
      if (v14)
      {
        v30 = v2;
        v7 = (v14 - 1) & v14;
        v8 = __clz(__rbit64(v14)) | (v9 << 6);
        goto LABEL_14;
      }
    }
  }

  if (!sub_18BC219D8())
  {
LABEL_35:
    sub_18B7D2E34(v2);
    return;
  }

  v30 = v33;
  swift_dynamicCast();
  v29 = 0;
  v15 = v32;
  v9 = v36;
  v7 = v37;
  if (!v32)
  {
LABEL_34:
    v2 = v30;
    goto LABEL_35;
  }

LABEL_15:
  v16 = (v5 + 64) >> 6;
  if (!v29)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v17 = v9;
    v18 = v7;
    v19 = v9;
    if (!v7)
    {
      break;
    }

LABEL_20:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v30 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    sub_18BC1E1A8();
    if (!v21)
    {
LABEL_31:
      sub_18B7D2E34(v30);
      return;
    }

    while (1)
    {
      v22 = v15 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibility;
      swift_beginAccess();
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = v21 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibility;
      swift_beginAccess();
      v26 = *(v25 + 8);
      v27 = v24 == v26;
      v28 = v24 < v26;
      if (v27)
      {
        v28 = v23 < *v25;
      }

      if (v28)
      {

        v15 = v21;
      }

      else
      {
      }

      v9 = v19;
      v7 = v20;
      if (v29)
      {
        break;
      }

LABEL_22:
      if (sub_18BC219D8())
      {
        type metadata accessor for TabSnapshotRegistration(0);
        swift_dynamicCast();
        v21 = v31;
        v19 = v9;
        v20 = v7;
        if (v31)
        {
          continue;
        }
      }

      goto LABEL_31;
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      goto LABEL_31;
    }

    v18 = *(v3 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_18BA78268(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  if (*(v5 + 16))
  {
    sub_18BC1E3F8();
    v6 = sub_18B857EE4(a1);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);
      sub_18BC1E3F8();

      sub_18BA76964(v8);
      v10 = v9;

      sub_18BA76CE0(v10, a2);

      return;
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
}

uint64_t sub_18BA7832C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18BC1EC08();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - v13;
  v15 = *(v5 + 16);
  v15(&v39 - v13, a1 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_id, v4, v12);
  swift_beginAccess();
  v16 = *(v1 + 40);
  if (!*(v16 + 16))
  {
    return (*(v5 + 8))(v14, v4);
  }

  sub_18BC1E3F8();
  v17 = sub_18B857EE4(v14);
  if ((v18 & 1) == 0)
  {

    return (*(v5 + 8))(v14, v4);
  }

  v41 = v2;
  v19 = *(*(v16 + 56) + 8 * v17);
  sub_18BC1E3F8();

  v43 = v19;
  sub_18B9CD848(a1);

  (v15)(v10, v14, v4);
  v20 = v43;
  v40 = v43 & 0xC000000000000001;
  if ((v43 & 0xC000000000000001) != 0)
  {
    if (sub_18BC219A8())
    {
LABEL_5:
      sub_18BC1E3F8();
      v21 = v20;
      goto LABEL_9;
    }
  }

  else if (*(v43 + 16))
  {
    goto LABEL_5;
  }

  v21 = 0;
LABEL_9:
  swift_beginAccess();
  sub_18BAD2778(v21, v10);
  swift_endAccess();
  if (qword_1EA9D2298 != -1)
  {
    swift_once();
  }

  v22 = sub_18BC1F2C8();
  __swift_project_value_buffer(v22, qword_1EA9F7E80);
  (v15)(v7, v14, v4);
  sub_18BC1E3F8();
  v23 = sub_18BC1F2A8();
  v24 = sub_18BC21218();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42[0] = v39;
    *v25 = 136315394;
    if (v40)
    {
      v26 = sub_18BC219A8();
    }

    else
    {
      v26 = *(v20 + 16);
    }

    v29 = v26 == 0;
    if (v26)
    {
      v30 = 32;
    }

    else
    {
      v30 = 0x207473616C20;
    }

    if (v29)
    {
      v31 = 0xE600000000000000;
    }

    else
    {
      v31 = 0xE100000000000000;
    }

    v32 = sub_18B7EA850(v30, v31, v42);

    *(v25 + 4) = v32;
    *(v25 + 12) = 2080;
    sub_18B8585EC(&qword_1EA9DBE50, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v33 = sub_18BC21F48();
    v35 = v34;
    (*(v5 + 8))(v7, v4);
    v36 = sub_18B7EA850(v33, v35, v42);

    *(v25 + 14) = v36;
    _os_log_impl(&dword_18B7AC000, v23, v24, "Pool released%sregistration for %s.", v25, 0x16u);
    v37 = v39;
    swift_arrayDestroy();
    MEMORY[0x18CFFEEE0](v37, -1, -1);
    MEMORY[0x18CFFEEE0](v25, -1, -1);

    v27 = v41;
    if (!v40)
    {
      goto LABEL_24;
    }
  }

  else
  {

    (*(v5 + 8))(v7, v4);

    v27 = v41;
    if (!v40)
    {
LABEL_24:
      v28 = *(v20 + 16);
      goto LABEL_25;
    }
  }

  v28 = sub_18BC219A8();
LABEL_25:

  if (!v28 && (*(v27 + 32) & 1) == 0)
  {
    *(v27 + 32) = 1;
    sub_18BA7A18C();
    sub_18BC1E1A8();
    sub_18B858634(1, sub_18BA7A1D8, v27);
  }

  return (*(v5 + 8))(v14, v4);
}

uint64_t TabSnapshotPool.deinit()
{
  sub_18B7B171C(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t TabSnapshotPool.__deallocating_deinit()
{
  sub_18B7B171C(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

void sub_18BA788B4(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C58, &qword_18BC42940) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_18BA79F30(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_18BA78968(v5);
  *a1 = v3;
}

void sub_18BA78968(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_18BC21F38();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C58, &qword_18BC42940);
        v6 = sub_18BC20DF8();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C58, &qword_18BC42940) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_18BA78D20(v8, v9, a1, v4);
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
    sub_18BA78AAC(0, v2, 1, a1);
  }
}

void sub_18BA78AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C58, &qword_18BC42940);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - v15;
  v37 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v42 = -v18;
    v43 = v17;
    v20 = a1 - a3;
    v36 = v18;
    v21 = v17 + v18 * a3;
LABEL_5:
    v40 = v19;
    v41 = a3;
    v38 = v21;
    v39 = v20;
    v22 = v20;
    while (1)
    {
      sub_18B7CA054(v21, v16, &qword_1EA9D4C58, &qword_18BC42940);
      sub_18B7CA054(v19, v12, &qword_1EA9D4C58, &qword_18BC42940);
      v23 = *(v8 + 48);
      v24 = *&v16[v23];
      v25 = *&v16[v23 + 8];
      v26 = &v12[v23];
      v27 = *v26;
      v28 = *(v26 + 1);
      v29 = v28 == v25;
      v30 = v28 < v25;
      v31 = v8;
      if (v29)
      {
        v32 = v27 < v24;
      }

      else
      {
        v32 = v30;
      }

      sub_18B988BAC(v12, &qword_1EA9D4C58, &qword_18BC42940);
      sub_18B988BAC(v16, &qword_1EA9D4C58, &qword_18BC42940);
      v29 = v32;
      v8 = v31;
      if (!v29)
      {
LABEL_4:
        a3 = v41 + 1;
        v19 = v40 + v36;
        v20 = v39 - 1;
        v21 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v33 = v44;
      sub_18BA7A11C(v21, v44);
      swift_arrayInitWithTakeFrontToBack();
      sub_18BA7A11C(v33, v19);
      v19 += v42;
      v21 += v42;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_18BA78D20(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v132 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C58, &qword_18BC42940);
  v143 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v135 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v147 = &v128 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v148 = &v128 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v149 = &v128 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v140 = &v128 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v139 = &v128 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v130 = &v128 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v129 = &v128 - v23;
  v144 = a3;
  v24 = *(a3 + 8);
  if (v24 < 1)
  {
    v26 = MEMORY[0x1E69E7CC0];
LABEL_105:
    a3 = *v132;
    if (!*v132)
    {
      goto LABEL_143;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_107:
      v151 = v26;
      v124 = *(v26 + 2);
      if (v124 >= 2)
      {
        while (*v144)
        {
          v125 = *&v26[16 * v124];
          v126 = *&v26[16 * v124 + 24];
          sub_18BA79748(*v144 + *(v143 + 72) * v125, *v144 + *(v143 + 72) * *&v26[16 * v124 + 16], *v144 + *(v143 + 72) * v126, a3);
          if (v5)
          {
            goto LABEL_115;
          }

          if (v126 < v125)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_18BA79D48(v26);
          }

          if (v124 - 2 >= *(v26 + 2))
          {
            goto LABEL_131;
          }

          v127 = &v26[16 * v124];
          *v127 = v125;
          *(v127 + 1) = v126;
          v151 = v26;
          sub_18BA79CBC(v124 - 1);
          v26 = v151;
          v124 = *(v151 + 2);
          if (v124 <= 1)
          {
            goto LABEL_115;
          }
        }

        goto LABEL_141;
      }

LABEL_115:

      return;
    }

LABEL_137:
    v26 = sub_18BA79D48(v26);
    goto LABEL_107;
  }

  v128 = a4;
  v25 = 0;
  v26 = MEMORY[0x1E69E7CC0];
  v150 = v8;
  while (1)
  {
    v27 = v25;
    if (v25 + 1 >= v24)
    {
      v42 = v25 + 1;
    }

    else
    {
      v145 = v24;
      v136 = v5;
      v28 = *v144;
      v138 = v28;
      v29 = *(v143 + 72);
      a3 = v28 + v29 * (v25 + 1);
      v30 = v129;
      sub_18B7CA054(a3, v129, &qword_1EA9D4C58, &qword_18BC42940);
      v31 = v28 + v29 * v25;
      v32 = v130;
      sub_18B7CA054(v31, v130, &qword_1EA9D4C58, &qword_18BC42940);
      v33 = *(v8 + 48);
      v34 = *(v30 + v33);
      v35 = *(v30 + v33 + 8);
      v36 = v32 + v33;
      v37 = *v36;
      v38 = *(v36 + 8);
      v53 = v38 == v35;
      v39 = v38 < v35;
      if (v53)
      {
        v39 = v37 < v34;
      }

      LODWORD(v142) = v39;
      sub_18B988BAC(v32, &qword_1EA9D4C58, &qword_18BC42940);
      sub_18B988BAC(v30, &qword_1EA9D4C58, &qword_18BC42940);
      v131 = v25;
      v40 = v25 + 2;
      v146 = v29;
      v41 = v138 + v29 * (v25 + 2);
      v141 = v26;
      while (1)
      {
        v42 = v145;
        if (v145 == v40)
        {
          break;
        }

        v43 = v139;
        sub_18B7CA054(v41, v139, &qword_1EA9D4C58, &qword_18BC42940);
        v44 = v140;
        sub_18B7CA054(a3, v140, &qword_1EA9D4C58, &qword_18BC42940);
        v45 = *(v150 + 48);
        v46 = *(v43 + v45);
        v47 = *(v43 + v45 + 8);
        v48 = v44 + v45;
        v49 = *v48;
        v50 = *(v48 + 8);
        sub_18B988BAC(v44, &qword_1EA9D4C58, &qword_18BC42940);
        sub_18B988BAC(v43, &qword_1EA9D4C58, &qword_18BC42940);
        v51 = v49 >= v46;
        v52 = v50 >= v47;
        v53 = v50 == v47;
        v26 = v141;
        v54 = v52;
        if (!v53)
        {
          v51 = v54;
        }

        ++v40;
        v41 += v146;
        a3 += v146;
        if (v142 == v51)
        {
          v42 = v40 - 1;
          break;
        }
      }

      v8 = v150;
      v5 = v136;
      v27 = v131;
      if (v142)
      {
        if (v42 < v131)
        {
          goto LABEL_134;
        }

        if (v131 < v42)
        {
          v55 = v146 * (v42 - 1);
          v56 = v42 * v146;
          v57 = v42;
          v58 = v131;
          v59 = v131 * v146;
          do
          {
            if (v58 != --v57)
            {
              v136 = v5;
              v60 = *v144;
              if (!*v144)
              {
                goto LABEL_140;
              }

              a3 = v60 + v59;
              sub_18BA7A11C(v60 + v59, v135);
              if (v59 < v55 || a3 >= v60 + v56)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v59 != v55)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_18BA7A11C(v135, v60 + v55);
              v5 = v136;
            }

            ++v58;
            v55 -= v146;
            v56 -= v146;
            v59 += v146;
          }

          while (v58 < v57);
          v26 = v141;
          v8 = v150;
          v27 = v131;
        }
      }
    }

    v61 = v144[1];
    if (v42 >= v61)
    {
      goto LABEL_39;
    }

    if (__OFSUB__(v42, v27))
    {
      goto LABEL_133;
    }

    if (v42 - v27 >= v128)
    {
LABEL_39:
      v25 = v42;
      if (v42 < v27)
      {
        goto LABEL_132;
      }

      goto LABEL_40;
    }

    if (__OFADD__(v27, v128))
    {
      goto LABEL_135;
    }

    if (v27 + v128 >= v61)
    {
      v62 = v144[1];
    }

    else
    {
      v62 = v27 + v128;
    }

    if (v62 < v27)
    {
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    if (v42 == v62)
    {
      goto LABEL_39;
    }

    v141 = v26;
    v136 = v5;
    v108 = *v144;
    v109 = *(v143 + 72);
    v110 = *v144 + v109 * (v42 - 1);
    v111 = -v109;
    v131 = v27;
    v112 = v27 - v42;
    v146 = v108;
    v133 = v109;
    v134 = v62;
    a3 = v108 + v42 * v109;
LABEL_93:
    v145 = v42;
    v137 = a3;
    v138 = v112;
    v142 = v110;
LABEL_94:
    v113 = v149;
    sub_18B7CA054(a3, v149, &qword_1EA9D4C58, &qword_18BC42940);
    v114 = v148;
    sub_18B7CA054(v110, v148, &qword_1EA9D4C58, &qword_18BC42940);
    v115 = *(v8 + 48);
    v116 = *(v113 + v115);
    v117 = *(v113 + v115 + 8);
    v118 = v114 + v115;
    v119 = *v118;
    v120 = *(v118 + 8);
    v53 = v120 == v117;
    v121 = v120 < v117;
    v122 = v53 ? v119 < v116 : v121;
    sub_18B988BAC(v114, &qword_1EA9D4C58, &qword_18BC42940);
    sub_18B988BAC(v113, &qword_1EA9D4C58, &qword_18BC42940);
    if (v122 == 1)
    {
      break;
    }

    v8 = v150;
LABEL_92:
    v42 = v145 + 1;
    v25 = v134;
    v110 = v142 + v133;
    v112 = v138 - 1;
    a3 = v137 + v133;
    if (v145 + 1 != v134)
    {
      goto LABEL_93;
    }

    v5 = v136;
    v26 = v141;
    v27 = v131;
    if (v134 < v131)
    {
      goto LABEL_132;
    }

LABEL_40:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_18B858E00(0, *(v26 + 2) + 1, 1, v26);
    }

    v64 = *(v26 + 2);
    v63 = *(v26 + 3);
    a3 = v64 + 1;
    if (v64 >= v63 >> 1)
    {
      v26 = sub_18B858E00((v63 > 1), v64 + 1, 1, v26);
    }

    *(v26 + 2) = a3;
    v65 = &v26[16 * v64];
    *(v65 + 4) = v27;
    *(v65 + 5) = v25;
    v66 = *v132;
    if (!*v132)
    {
      goto LABEL_142;
    }

    if (v64)
    {
      while (2)
      {
        v67 = a3 - 1;
        if (a3 >= 4)
        {
          v72 = &v26[16 * a3 + 32];
          v73 = *(v72 - 64);
          v74 = *(v72 - 56);
          v78 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          if (v78)
          {
            goto LABEL_119;
          }

          v77 = *(v72 - 48);
          v76 = *(v72 - 40);
          v78 = __OFSUB__(v76, v77);
          v70 = v76 - v77;
          v71 = v78;
          if (v78)
          {
            goto LABEL_120;
          }

          v79 = &v26[16 * a3];
          v81 = *v79;
          v80 = *(v79 + 1);
          v78 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v78)
          {
            goto LABEL_122;
          }

          v78 = __OFADD__(v70, v82);
          v83 = v70 + v82;
          if (v78)
          {
            goto LABEL_125;
          }

          if (v83 >= v75)
          {
            v101 = &v26[16 * v67 + 32];
            v103 = *v101;
            v102 = *(v101 + 1);
            v78 = __OFSUB__(v102, v103);
            v104 = v102 - v103;
            if (v78)
            {
              goto LABEL_129;
            }

            if (v70 < v104)
            {
              v67 = a3 - 2;
            }
          }

          else
          {
LABEL_59:
            if (v71)
            {
              goto LABEL_121;
            }

            v84 = &v26[16 * a3];
            v86 = *v84;
            v85 = *(v84 + 1);
            v87 = __OFSUB__(v85, v86);
            v88 = v85 - v86;
            v89 = v87;
            if (v87)
            {
              goto LABEL_124;
            }

            v90 = &v26[16 * v67 + 32];
            v92 = *v90;
            v91 = *(v90 + 1);
            v78 = __OFSUB__(v91, v92);
            v93 = v91 - v92;
            if (v78)
            {
              goto LABEL_127;
            }

            if (__OFADD__(v88, v93))
            {
              goto LABEL_128;
            }

            if (v88 + v93 < v70)
            {
              goto LABEL_73;
            }

            if (v70 < v93)
            {
              v67 = a3 - 2;
            }
          }
        }

        else
        {
          if (a3 == 3)
          {
            v68 = *(v26 + 4);
            v69 = *(v26 + 5);
            v78 = __OFSUB__(v69, v68);
            v70 = v69 - v68;
            v71 = v78;
            goto LABEL_59;
          }

          v94 = &v26[16 * a3];
          v96 = *v94;
          v95 = *(v94 + 1);
          v78 = __OFSUB__(v95, v96);
          v88 = v95 - v96;
          v89 = v78;
LABEL_73:
          if (v89)
          {
            goto LABEL_123;
          }

          v97 = &v26[16 * v67];
          v99 = *(v97 + 4);
          v98 = *(v97 + 5);
          v78 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v78)
          {
            goto LABEL_126;
          }

          if (v100 < v88)
          {
            break;
          }
        }

        v105 = v67 - 1;
        if (v67 - 1 >= a3)
        {
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
          goto LABEL_136;
        }

        if (!*v144)
        {
          goto LABEL_139;
        }

        a3 = *&v26[16 * v105 + 32];
        v106 = *&v26[16 * v67 + 40];
        sub_18BA79748(*v144 + *(v143 + 72) * a3, *v144 + *(v143 + 72) * *&v26[16 * v67 + 32], *v144 + *(v143 + 72) * v106, v66);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v106 < a3)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_18BA79D48(v26);
        }

        if (v105 >= *(v26 + 2))
        {
          goto LABEL_118;
        }

        v107 = &v26[16 * v105];
        *(v107 + 4) = a3;
        *(v107 + 5) = v106;
        v151 = v26;
        sub_18BA79CBC(v67);
        v26 = v151;
        a3 = *(v151 + 2);
        if (a3 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v24 = v144[1];
    if (v25 >= v24)
    {
      goto LABEL_105;
    }
  }

  if (v146)
  {
    v123 = v147;
    sub_18BA7A11C(a3, v147);
    v8 = v150;
    swift_arrayInitWithTakeFrontToBack();
    sub_18BA7A11C(v123, v110);
    v110 += v111;
    a3 += v111;
    v52 = __CFADD__(v112++, 1);
    if (v52)
    {
      goto LABEL_92;
    }

    goto LABEL_94;
  }

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
}

void sub_18BA79748(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v61 = a3;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C58, &qword_18BC42940);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v51 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - v14;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_64;
  }

  v18 = v61 - a2;
  if (v61 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_65;
  }

  v19 = (a2 - a1) / v17;
  v64 = a1;
  v63 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v32 = a4 + v21;
    if (v21 >= 1)
    {
      v33 = -v17;
      v34 = v32;
      v57 = -v17;
      v53 = a4;
      v54 = a1;
      do
      {
        v51 = v32;
        v35 = a2 + v33;
        v55 = a2;
        v56 = a2 + v33;
        while (1)
        {
          v36 = v61;
          if (a2 <= a1)
          {
            v64 = a2;
            v62 = v51;
            goto LABEL_62;
          }

          v52 = v32;
          v37 = v57;
          v38 = v58;
          v39 = v34 + v57;
          sub_18B7CA054(v34 + v57, v58, &qword_1EA9D4C58, &qword_18BC42940);
          v40 = v35;
          v41 = v59;
          sub_18B7CA054(v40, v59, &qword_1EA9D4C58, &qword_18BC42940);
          v42 = *(v60 + 48);
          v43 = *(v38 + v42);
          v44 = *(v38 + v42 + 8);
          v45 = v41 + v42;
          v46 = *v45;
          v47 = *(v45 + 8);
          v29 = v47 == v44;
          v48 = v47 < v44;
          v49 = v29 ? v46 < v43 : v48;
          v61 = v36 + v37;
          sub_18B988BAC(v41, &qword_1EA9D4C58, &qword_18BC42940);
          sub_18B988BAC(v38, &qword_1EA9D4C58, &qword_18BC42940);
          if (v49)
          {
            break;
          }

          v32 = v34 + v37;
          v50 = v53;
          if (v36 < v34 || v61 >= v34)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v56;
            a1 = v54;
          }

          else
          {
            v35 = v56;
            a1 = v54;
            if (v36 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v34 = v39;
          a2 = v55;
          if (v39 <= v50)
          {
            goto LABEL_60;
          }
        }

        if (v36 < v55 || v61 >= v55)
        {
          a2 = v56;
          swift_arrayInitWithTakeFrontToBack();
          v32 = v52;
          v33 = v57;
          a1 = v54;
        }

        else
        {
          v32 = v52;
          a2 = v56;
          v33 = v57;
          a1 = v54;
          if (v36 != v55)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v34 > v53);
    }

LABEL_60:
    v64 = a2;
    v62 = v32;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v59 = a4 + v20;
    v62 = a4 + v20;
    if (v20 >= 1 && a2 < v61)
    {
      do
      {
        sub_18B7CA054(a2, v15, &qword_1EA9D4C58, &qword_18BC42940);
        sub_18B7CA054(a4, v12, &qword_1EA9D4C58, &qword_18BC42940);
        v23 = *(v60 + 48);
        v24 = *&v15[v23];
        v25 = *&v15[v23 + 8];
        v26 = &v12[v23];
        v27 = *v26;
        v28 = *(v26 + 1);
        v29 = v28 == v25;
        v30 = v28 < v25;
        if (v29)
        {
          v31 = v27 < v24;
        }

        else
        {
          v31 = v30;
        }

        sub_18B988BAC(v12, &qword_1EA9D4C58, &qword_18BC42940);
        sub_18B988BAC(v15, &qword_1EA9D4C58, &qword_18BC42940);
        if (v31)
        {
          if (a1 < a2 || a1 >= a2 + v17)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v17;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v17)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v63 = a4 + v17;
          a4 += v17;
        }

        a1 += v17;
        v64 = a1;
      }

      while (a4 < v59 && a2 < v61);
    }
  }

LABEL_62:
  sub_18BA79E40(&v64, &v63, &v62);
}

uint64_t sub_18BA79CBC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_18BA79D48(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_18BA79D5C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = _s4ItemVMa_2(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_18BA79E40(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C58, &qword_18BC42940);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_18BA7A11C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C58, &qword_18BC42940);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_18BA7A18C()
{
  result = qword_1EA9D7648;
  if (!qword_1EA9D7648)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9D7648);
  }

  return result;
}

uint64_t type metadata accessor for TabEntity(uint64_t a1)
{
  result = qword_1EA9D7768;
  if (!qword_1EA9D7768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_18BA7A2BC()
{
  result = qword_1EA9D7668;
  if (!qword_1EA9D7668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7668);
  }

  return result;
}

uint64_t sub_18BA7A354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() sharedApplication];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {

    goto LABEL_6;
  }

  v6 = [v5 tabEntityDataSource];

  if (!v6)
  {
LABEL_6:
    v11 = sub_18BC1EC08();
    (*(*(v11 - 8) + 8))(a1, v11);
    goto LABEL_7;
  }

  v7 = sub_18BC1EBC8();
  v8 = [v6 tabEntityWithUUID_];

  if (v8)
  {
    sub_18BA7A53C(v8, a2);
    swift_unknownObjectRelease();
    v9 = sub_18BC1EC08();
    (*(*(v9 - 8) + 8))(a1, v9);
    v10 = 0;
    goto LABEL_8;
  }

  v15 = sub_18BC1EC08();
  (*(*(v15 - 8) + 8))(a1, v15);
  swift_unknownObjectRelease();
LABEL_7:
  v10 = 1;
LABEL_8:
  v12 = type metadata accessor for TabEntity(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(a2, v10, 1, v12);
}

void sub_18BA7A53C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4500, &qword_18BC478E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v31 - v6;
  v7 = sub_18BC1E8B8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_18BC1E8D8();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = type metadata accessor for TabEntity(0);
  v15 = v14[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9030, &unk_18BC498B0);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v8 + 104))(v10, *MEMORY[0x1E6968DF0], v7);
  v16 = v33;
  sub_18BC1E8E8();
  *(a2 + v15) = sub_18BC1E038();
  v17 = v14[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5460, &qword_18BC482F0);
  *(a2 + v17) = sub_18BC1E048();
  v18 = v14[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D77D0, &qword_18BC498C0);
  *(a2 + v18) = sub_18BC1E028();
  v19 = v14[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D77D8, &qword_18BC498C8);
  *(a2 + v19) = sub_18BC1E058();
  v20 = [v16 uuid];
  sub_18BC1EBE8();

  v21 = [v16 title];
  if (v21)
  {
    v22 = v21;
    v23 = sub_18BC20BD8();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  v34 = v23;
  v35 = v25;
  sub_18BC1DFF8();
  sub_18BC1DFE8();
  v26 = v34;
  v27 = v35;
  if (!v35)
  {
    v26 = 0;
    v27 = 0xE000000000000000;
  }

  v34 = v26;
  v35 = v27;
  sub_18BC1DFF8();
  LOBYTE(v34) = [v16 isPrivate];
  sub_18BC1DFF8();
  v28 = [v16 address];
  if (v28)
  {
    v29 = v28;
    sub_18BC20BD8();

    v30 = v32;
    sub_18BC1EA68();

    sub_18BA7FF9C(v30, v31);
    sub_18BC1DFF8();

    sub_18B988BAC(v30, &qword_1EA9D4500, &qword_18BC478E0);
  }

  else
  {
  }
}

uint64_t sub_18BA7AA78@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_18BC1EC08();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_18BA7AB24(uint64_t a1)
{
  v2 = sub_18BA82524(&qword_1EA9D6EF0, type metadata accessor for TabEntity, &unk_18BC48BC0);

  return MEMORY[0x1EEDB2C50](a1, v2);
}

uint64_t sub_18BA7AC30@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4608, &unk_18BC47050);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v25 = &v23 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0, &qword_18BC41D40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v24 = &v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4500, &qword_18BC478E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_18BC1EA98();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v23 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18BC1E8D8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  type metadata accessor for TabEntity(0);
  sub_18BC1DFE8();
  if (!v27)
  {
    sub_18BC1DFE8();
  }

  sub_18BC1E8A8();
  sub_18BC1DFE8();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_18B988BAC(v7, &qword_1EA9D4500, &qword_18BC478E0);
    (*(v12 + 16))(v14, v17, v11);
    (*(v12 + 56))(v24, 1, 1, v11);
    v18 = sub_18BC1E398();
    (*(*(v18 - 8) + 56))(v25, 1, 1, v18);
    sub_18BC1E3A8();
  }

  else
  {
    v19 = v23;
    (*(v9 + 32))(v23, v7, v8);
    (*(v12 + 16))(v14, v17, v11);
    sub_18BC1E9B8();
    v20 = v24;
    sub_18BC1E8A8();
    (*(v12 + 56))(v20, 0, 1, v11);
    v21 = sub_18BC1E398();
    (*(*(v21 - 8) + 56))(v25, 1, 1, v21);
    sub_18BC1E3A8();
    (*(v9 + 8))(v19, v8);
  }

  return (*(v12 + 8))(v17, v11);
}

uint64_t sub_18BA7B0C0(uint64_t a1)
{
  v2 = sub_18BA82524(qword_1EA9D7840, type metadata accessor for TabEntity, &unk_18BC496C0);

  return MEMORY[0x1EEDB39A8](a1, v2);
}

uint64_t sub_18BA7B13C(uint64_t a1)
{
  v2 = sub_18BA82524(&qword_1EA9D7690, type metadata accessor for TabEntity, &unk_18BC48D48);

  return MEMORY[0x1EEDB3F70](a1, v2);
}

uint64_t sub_18BA7B1D4(uint64_t a1)
{
  v1[20] = a1;
  sub_18BC20F28();
  v1[21] = sub_18BC20F18();
  v3 = sub_18BC20ED8();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x1EEE6DFA0](sub_18BA7B26C, v3, v2);
}

uint64_t sub_18BA7B26C()
{
  v1 = [objc_opt_self() sharedApplication];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = [v2 tabEntityDataSource];
    v0[24] = v3;

    if (v3)
    {
      v4 = sub_18BC1EBC8();
      v0[25] = v4;
      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = sub_18BA7B4B8;
      v5 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7838, qword_18BC499D0);
      v0[10] = MEMORY[0x1E69E9820];
      v0[11] = 1107296256;
      v0[12] = sub_18BA7B6FC;
      v0[13] = &block_descriptor_74;
      v0[14] = v5;
      [v3 pdfDataForTabWithUUID:v4 completionHandler:v0 + 10];

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }
  }

  else
  {
  }

  sub_18BC1DE48();
  sub_18BA82524(&qword_1EA9D4620, MEMORY[0x1E6959D38], MEMORY[0x1E6959D48]);
  swift_allocError();
  sub_18BC1DE38();
  swift_willThrow();
  v6 = v0[1];

  return v6();
}

uint64_t sub_18BA7B4B8()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x1EEE6DFA0](sub_18BA7B5C0, v2, v1);
}

uint64_t sub_18BA7B5C0()
{

  swift_unknownObjectRelease();
  v1 = v0[19];
  v2 = v0[25];
  if (v1 >> 60 == 15)
  {

    sub_18BC1DE48();
    sub_18BA82524(&qword_1EA9D4620, MEMORY[0x1E6959D38], MEMORY[0x1E6959D48]);
    swift_allocError();
    sub_18BC1DE38();
    swift_willThrow();
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[18];

    v6 = v0[1];

    return v6(v5, v1);
  }
}

uint64_t sub_18BA7B6FC(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;
    a2 = sub_18BC1EAB8();
    v6 = v5;
  }

  else
  {
    v6 = 0xF000000000000000;
  }

  v7 = *(*(v3 + 64) + 40);
  *v7 = a2;
  v7[1] = v6;

  return swift_continuation_resume();
}

uint64_t sub_18BA7B78C(uint64_t a1, uint64_t a2)
{
  v2 = sub_18BC1F1E8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_18BC1F1C8();
  return sub_18BC1EF78();
}

uint64_t sub_18BA7B838(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  sub_18BA824D8();
  **(*(v2 + 64) + 40) = sub_18BC20D98();

  return swift_continuation_resume();
}

uint64_t sub_18BA7B8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_18B9EC2C0;

  return sub_18BA80D44(a2, a3);
}

uint64_t sub_18BA7B964(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_18BA82598;

  return sub_18BA8147C();
}

unint64_t sub_18BA7BA0C()
{
  result = qword_1EA9D76A0;
  if (!qword_1EA9D76A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D76A0);
  }

  return result;
}

unint64_t sub_18BA7BA64()
{
  result = qword_1EA9D76A8;
  if (!qword_1EA9D76A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D76A8);
  }

  return result;
}

uint64_t sub_18BA7BAB8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18B9EDB00;

  return sub_18BA80798(a1);
}

uint64_t sub_18BA7BB60(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_18BC20F28();
  v1[4] = sub_18BC20F18();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_18BA682D8;

  return sub_18BA8147C();
}

unint64_t sub_18BA7BC20()
{
  result = qword_1EA9D76B0;
  if (!qword_1EA9D76B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D76B0);
  }

  return result;
}

unint64_t sub_18BA7BC78()
{
  result = qword_1EA9D76B8;
  if (!qword_1EA9D76B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D69B8, &qword_18BC460D0);
    sub_18BA82524(&qword_1EA9D69C0, type metadata accessor for TabEntity, &unk_18BC48CB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D76B8);
  }

  return result;
}

uint64_t sub_18BA7BD2C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_18BA7A2BC();
  *v5 = v2;
  v5[1] = sub_18B7B6968;

  return MEMORY[0x1EEDB2ED0](a1, a2, v6);
}

unint64_t sub_18BA7BDE4()
{
  result = qword_1EA9D76C0;
  if (!qword_1EA9D76C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D76C0);
  }

  return result;
}

uint64_t sub_18BA7BEA8(uint64_t a1)
{
  v1[3] = a1;
  sub_18BC1EC08();
  v1[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6EC8, &unk_18BC472E0);
  v1[5] = swift_task_alloc();
  v2 = type metadata accessor for TabEntity(0);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  sub_18BC20F28();
  v1[9] = sub_18BC20F18();
  v4 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BA7C000, v4, v3);
}

uint64_t sub_18BA7C000()
{

  v1 = [objc_opt_self() sharedApplication];
  v0[2] = &unk_1F0032B58;
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    v3 = v0[6];
    v4 = v0[7];
    v6 = v0[4];
    v5 = v0[5];
    v7 = [v2 createNewTab];
    sub_18BC1EBE8();

    sub_18BA7A354(v6, v5);
    if ((*(v4 + 48))(v5, 1, v3) != 1)
    {
      v13 = v0[8];
      sub_18BA5F428(v0[5], v13);
      sub_18BA82524(&qword_1EA9D69C0, type metadata accessor for TabEntity, &unk_18BC48CB8);
      sub_18BC1DF88();

      sub_18BA5F48C(v13);

      v12 = v0[1];
      goto LABEL_9;
    }

    v8 = v0[5];

    sub_18B988BAC(v8, &qword_1EA9D6EC8, &unk_18BC472E0);
  }

  else
  {
  }

  if (qword_1EA9D2550 != -1)
  {
    swift_once();
  }

  v9 = sub_18BC1DE48();
  v10 = __swift_project_value_buffer(v9, qword_1EA9F8578);
  sub_18BA82524(&qword_1EA9D4620, MEMORY[0x1E6959D38], MEMORY[0x1E6959D48]);
  swift_allocError();
  (*(*(v9 - 8) + 16))(v11, v10, v9);
  swift_willThrow();

  v12 = v0[1];
LABEL_9:

  return v12();
}

uint64_t sub_18BA7C2EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18B987B10;

  return sub_18BA7BEA8(a1);
}

id sub_18BA7C384(void *a1)
{
  result = [a1 canCreateNewTab];
  if (!result)
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v2 = sub_18BC1DE48();
    v3 = __swift_project_value_buffer(v2, qword_1EA9F8578);
    sub_18BA82524(&qword_1EA9D4620, MEMORY[0x1E6959D38], MEMORY[0x1E6959D48]);
    swift_allocError();
    (*(*(v2 - 8) + 16))(v4, v3, v2);
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_18BA7C498()
{
  result = qword_1EA9D76E0;
  if (!qword_1EA9D76E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D76E0);
  }

  return result;
}

uint64_t sub_18BA7C4EC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_18BC1EC08();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  type metadata accessor for TabEntity(0);
  v2[8] = swift_task_alloc();
  sub_18BC20F28();
  v2[9] = sub_18BC20F18();
  v5 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BA7C60C, v5, v4);
}

uint64_t sub_18BA7C60C()
{

  v1 = [objc_opt_self() sharedApplication];
  v0[2] = &unk_1F0032B58;
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    v3 = v2;
    v4 = v0[7];
    v5 = v0[8];
    v6 = v0[5];
    v7 = v0[6];
    sub_18BC1E0A8();
    (*(v7 + 16))(v4, v5, v6);
    sub_18BA5F48C(v5);
    v8 = sub_18BC1EBC8();
    (*(v7 + 8))(v4, v6);
    [v3 openTabWithUUID_];

    sub_18BC1DF98();

    v9 = v0[1];
  }

  else
  {

    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v10 = sub_18BC1DE48();
    v11 = __swift_project_value_buffer(v10, qword_1EA9F8578);
    sub_18BA82524(&qword_1EA9D4620, MEMORY[0x1E6959D38], MEMORY[0x1E6959D48]);
    swift_allocError();
    (*(*(v10 - 8) + 16))(v12, v11, v10);
    swift_willThrow();

    v9 = v0[1];
  }

  return v9();
}

void (*sub_18BA7C864(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18BC1E098();
  return sub_18BA825A0;
}

uint64_t sub_18BA7C90C(uint64_t a1)
{
  v2 = sub_18BA82484();

  return MEMORY[0x1EEDB39D0](a1, v2);
}

uint64_t sub_18BA7C958(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B7B6968;

  return sub_18BA7C4EC(a1, v4);
}

uint64_t sub_18BA7C9F8@<X0>(uint64_t *a1@<X8>)
{
  v23 = a1;
  v22 = sub_18BC1E488();
  v2 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0, &unk_18BC472F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6EC8, &unk_18BC472E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0, &qword_18BC41D40);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v22 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D77E8, &qword_18BC498E0);
  v17 = sub_18BC1E8D8();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = type metadata accessor for TabEntity(0);
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  v19 = sub_18BC1DF68();
  v20 = *(*(v19 - 8) + 56);
  v20(v10, 1, 1, v19);
  v20(v7, 1, 1, v19);
  (*(v2 + 104))(v4, *MEMORY[0x1E695A4F8], v22);
  sub_18BA82524(&qword_1EA9D6EF0, type metadata accessor for TabEntity, &unk_18BC48BC0);
  result = sub_18BC1E108();
  *v23 = result;
  return result;
}

uint64_t sub_18BA7CD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v4 = sub_18BC1EC08();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  type metadata accessor for TabEntity(0);
  v3[25] = swift_task_alloc();
  sub_18BC20F28();
  v3[26] = sub_18BC20F18();
  v6 = sub_18BC20ED8();
  v3[27] = v6;
  v3[28] = v5;

  return MEMORY[0x1EEE6DFA0](sub_18BA7CE5C, v6, v5);
}

uint64_t sub_18BA7CE5C()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[20];
  sub_18BC1E0A8();
  (*(v4 + 16))(v2, v1, v3);
  sub_18BA5F48C(v1);
  v6 = sub_18BC1EBC8();
  v0[29] = v6;
  (*(v4 + 8))(v2, v3);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_18BA7CFF4;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6ED0, &unk_18BC51EF0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_18BAB46D0;
  v0[13] = &block_descriptor_46_0;
  v0[14] = v7;
  [v5 sceneForTabWithUUID:v6 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_18BA7CFF4()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);

  return MEMORY[0x1EEE6DFA0](sub_18BA82594, v2, v1);
}

uint64_t sub_18BA7D0FC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B7B6968;

  return sub_18BA7CD38(a1, a2, v6);
}

unint64_t sub_18BA7D1B0()
{
  result = qword_1EA9D7700;
  if (!qword_1EA9D7700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7700);
  }

  return result;
}

uint64_t sub_18BA7D228(__n128 a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_18BC1E8B8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_18BC1E8D8();
  __swift_allocate_value_buffer(v12, a3);
  __swift_project_value_buffer(v12, a3);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v7 + 104))(v9, *MEMORY[0x1E6968DF0], v6);
  return sub_18BC1E8F8();
}

uint64_t sub_18BA7D414(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_18BC1EC08();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  type metadata accessor for TabEntity(0);
  v2[8] = swift_task_alloc();
  sub_18BC20F28();
  v2[9] = sub_18BC20F18();
  v5 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BA7D534, v5, v4);
}

uint64_t sub_18BA7D534()
{

  v1 = [objc_opt_self() sharedApplication];
  v0[2] = &unk_1F0032B58;
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    v3 = v2;
    v4 = v0[7];
    v5 = v0[8];
    v6 = v0[5];
    v7 = v0[6];
    sub_18BC1E0A8();
    (*(v7 + 16))(v4, v5, v6);
    sub_18BA5F48C(v5);
    v8 = sub_18BC1EBC8();
    (*(v7 + 8))(v4, v6);
    [v3 closeTabWithUUID_];

    sub_18BC1DF98();

    v9 = v0[1];
  }

  else
  {

    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v10 = sub_18BC1DE48();
    v11 = __swift_project_value_buffer(v10, qword_1EA9F8578);
    sub_18BA82524(&qword_1EA9D4620, MEMORY[0x1E6959D38], MEMORY[0x1E6959D48]);
    swift_allocError();
    (*(*(v10 - 8) + 16))(v12, v11, v10);
    swift_willThrow();

    v9 = v0[1];
  }

  return v9();
}

uint64_t sub_18BA7D78C(uint64_t a1)
{
  v2 = type metadata accessor for TabEntity(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_18BA82420(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18BC1E0B8();
  return sub_18BA5F48C(a1);
}

void (*sub_18BA7D81C(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18BC1E098();
  return sub_18BA825A0;
}

uint64_t sub_18BA7D8EC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B7B6968;

  return sub_18BA7D414(a1, v4);
}

uint64_t sub_18BA7D98C@<X0>(uint64_t *a1@<X8>, __n128 a2@<Q0>)
{
  result = sub_18BA8198C(a2);
  *a1 = result;
  return result;
}

uint64_t sub_18BA7D9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v4 = sub_18BC1EC08();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  type metadata accessor for TabEntity(0);
  v3[25] = swift_task_alloc();
  sub_18BC20F28();
  v3[26] = sub_18BC20F18();
  v6 = sub_18BC20ED8();
  v3[27] = v6;
  v3[28] = v5;

  return MEMORY[0x1EEE6DFA0](sub_18BA7DAD8, v6, v5);
}

uint64_t sub_18BA7DAD8()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[20];
  sub_18BC1E0A8();
  (*(v4 + 16))(v2, v1, v3);
  sub_18BA5F48C(v1);
  v6 = sub_18BC1EBC8();
  v0[29] = v6;
  (*(v4 + 8))(v2, v3);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_18BA7CFF4;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6ED0, &unk_18BC51EF0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_18BAB46D0;
  v0[13] = &block_descriptor_37;
  v0[14] = v7;
  [v5 sceneForTabWithUUID:v6 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_18BA7DC70(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B7B6968;

  return sub_18BA7D9B4(a1, a2, v6);
}

id sub_18BA7DD20(void *a1)
{
  result = [a1 canCloseTab];
  if (!result)
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v2 = sub_18BC1DE48();
    v3 = __swift_project_value_buffer(v2, qword_1EA9F8578);
    sub_18BA82524(&qword_1EA9D4620, MEMORY[0x1E6959D38], MEMORY[0x1E6959D48]);
    swift_allocError();
    (*(*(v2 - 8) + 16))(v4, v3, v2);
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_18BA7DE34()
{
  result = qword_1EA9D7720;
  if (!qword_1EA9D7720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7720);
  }

  return result;
}

uint64_t sub_18BA7DE88(__n128 a1)
{
  v1 = sub_18BC1E8B8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_18BC1E8D8();
  __swift_allocate_value_buffer(v7, qword_1EA9F8130);
  __swift_project_value_buffer(v7, qword_1EA9F8130);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v2 + 104))(v4, *MEMORY[0x1E6968DF0], v1);
  return sub_18BC1E8F8();
}

uint64_t sub_18BA7E07C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7800, &qword_18BC49910);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7808, &qword_18BC49918);
  MEMORY[0x1EEE9AC00](v1);
  sub_18BA3F654();
  sub_18BC1E458();
  sub_18BC1E448();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7810, &qword_18BC49948);
  sub_18BC1E438();

  sub_18BC1E448();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7818, &qword_18BC49978);
  sub_18BC1E438();

  sub_18BC1E448();
  sub_18BC1E478();
  return sub_18BC1E418();
}

uint64_t sub_18BA7E298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v3[10] = *(type metadata accessor for TabEntity(0) - 8);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0, &qword_18BC432A0);
  v3[12] = swift_task_alloc();
  v4 = sub_18BC1EC08();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  sub_18BC20F28();
  v3[17] = sub_18BC20F18();
  v6 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BA7E42C, v6, v5);
}

uint64_t sub_18BA7E42C()
{

  v1 = [objc_opt_self() sharedApplication];
  v0[5] = &unk_1F0032B58;
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (!v2)
  {

    goto LABEL_5;
  }

  v31 = v2;
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  sub_18BC1E0A8();

  sub_18BC1EB98();

  if ((*(v3 + 48))(v5, 1, v4) == 1)
  {
    v6 = v0[12];

    sub_18B988BAC(v6, &unk_1EA9D3AE0, &qword_18BC432A0);
LABEL_5:
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v7 = sub_18BC1DE48();
    v8 = __swift_project_value_buffer(v7, qword_1EA9F8578);
    sub_18BA82524(&qword_1EA9D4620, MEMORY[0x1E6959D38], MEMORY[0x1E6959D48]);
    swift_allocError();
    (*(*(v7 - 8) + 16))(v9, v8, v7);
    swift_willThrow();

    v10 = v0[1];
    goto LABEL_14;
  }

  v30 = v1;
  v32 = *(v0[14] + 32);
  v32(v0[16], v0[12], v0[13]);
  sub_18BC1E0A8();
  v11 = v0[6];
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v0[14];
    v14 = v0[10];
    v33 = MEMORY[0x1E69E7CC0];
    sub_18B855A90(0, v12, 0);
    v15 = v11 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v16 = *(v14 + 72);
    do
    {
      v17 = v0[15];
      v18 = v0[13];
      v19 = v0[11];
      sub_18BA82420(v15, v19);
      (*(v13 + 16))(v17, v19, v18);
      sub_18BA5F48C(v19);
      v21 = *(v33 + 16);
      v20 = *(v33 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_18B855A90((v20 > 1), v21 + 1, 1);
      }

      v22 = v0[15];
      v23 = v0[13];
      *(v33 + 16) = v21 + 1;
      v32(v33 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v21, v22, v23);
      v15 += v16;
      --v12;
    }

    while (v12);
  }

  v24 = v0[16];
  v26 = v0[13];
  v25 = v0[14];
  v27 = sub_18BC20D88();

  v28 = sub_18BC1EBC8();
  [v31 moveTabsWithUUIDs:v27 toTabGroupWithUUID:v28];

  sub_18BC1DF98();
  (*(v25 + 8))(v24, v26);

  v10 = v0[1];
LABEL_14:

  return v10();
}

uint64_t (*sub_18BA7E8AC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18BC1E098();
  return sub_18B99C5B4;
}

__n128 sub_18BA7E920@<Q0>(uint64_t a1@<X8>)
{
  sub_18BC1E0A8();
  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

double sub_18BA7E964(void *a1)
{
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E0B8();

  return result;
}

void (*sub_18BA7E9CC(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18BC1E098();
  return sub_18BA825A0;
}

unint64_t sub_18BA7EA48()
{
  result = qword_1EA9D7728;
  if (!qword_1EA9D7728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7728);
  }

  return result;
}

unint64_t sub_18BA7EAA0()
{
  result = qword_1EA9D7730;
  if (!qword_1EA9D7730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7730);
  }

  return result;
}

uint64_t sub_18BA7EB50@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = sub_18BC1E8D8();
  v8 = __swift_project_value_buffer(v7, a2);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_18BA7EBF0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_18B7B6968;

  return sub_18BA7E298(a1, v5, v4);
}

uint64_t sub_18BA7EC9C@<X0>(uint64_t *a2@<X8>, __n128 q0_0@<Q0>)
{
  result = sub_18BA8000C(q0_0);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_18BA7ECC4(uint64_t a1)
{
  v2 = sub_18BA3F654();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

uint64_t sub_18BA7ED88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_18BC1EC08();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  type metadata accessor for TabEntity(0);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4500, &qword_18BC478E0);
  v3[10] = swift_task_alloc();
  v5 = sub_18BC1EA98();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  sub_18BC20F28();
  v3[15] = sub_18BC20F18();
  v7 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BA7EF4C, v7, v6);
}

uint64_t sub_18BA7EF4C()
{

  v1 = [objc_opt_self() sharedApplication];
  v0[2] = &unk_1F0032B58;
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    v27 = v2;
    sub_18BC1E0A8();
    v3 = sub_18BC1E9E8();
    v4 = [v3 safari_originalDataAsString];

    if (!v4)
    {
      sub_18BC20BD8();
      v4 = sub_18BC20B98();
    }

    v5 = [v4 safari_bestURLForUserTypedString];

    if (v5)
    {
      sub_18BC1EA38();

      v6 = 0;
    }

    else
    {
      v6 = 1;
    }

    v8 = v0[12];
    v7 = v0[13];
    v10 = v0[10];
    v9 = v0[11];
    (*(v8 + 56))(v10, v6, 1, v9);
    v11 = *(v8 + 8);
    v11(v7, v9);
    if ((*(v8 + 48))(v10, 1, v9) != 1)
    {
      v17 = v0[14];
      v25 = v0[11];
      v26 = v1;
      v18 = v0[9];
      v19 = v0[7];
      v20 = v0[8];
      v21 = v0[6];
      (*(v0[12] + 32))(v17);
      sub_18BC1E0A8();
      (*(v19 + 16))(v20, v18, v21);
      sub_18BA5F48C(v18);
      v22 = sub_18BC1EBC8();
      (*(v19 + 8))(v20, v21);
      v23 = sub_18BC1E9E8();
      [v27 navigateTabWithUUID:v22 toURL:v23];

      sub_18BC1DF98();
      v11(v17, v25);

      v16 = v0[1];
      goto LABEL_14;
    }

    v12 = v0[10];

    sub_18B988BAC(v12, &qword_1EA9D4500, &qword_18BC478E0);
  }

  else
  {
  }

  if (qword_1EA9D2550 != -1)
  {
    swift_once();
  }

  v13 = sub_18BC1DE48();
  v14 = __swift_project_value_buffer(v13, qword_1EA9F8578);
  sub_18BA82524(&qword_1EA9D4620, MEMORY[0x1E6959D38], MEMORY[0x1E6959D48]);
  swift_allocError();
  (*(*(v13 - 8) + 16))(v15, v14, v13);
  swift_willThrow();

  v16 = v0[1];
LABEL_14:

  return v16();
}

uint64_t sub_18BA7F358(uint64_t a1)
{
  v2 = sub_18BA823CC();

  return MEMORY[0x1EEDB39D0](a1, v2);
}

uint64_t sub_18BA7F3A4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_18B7B6968;

  return sub_18BA7ED88(a1, v5, v4);
}

uint64_t sub_18BA7F450@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BA81F54();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18BA7F478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a2;
  v4[21] = a4;
  v4[19] = a1;
  v5 = sub_18BC1EC08();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();
  type metadata accessor for TabEntity(0);
  v4[25] = swift_task_alloc();
  sub_18BC20F28();
  v4[26] = sub_18BC20F18();
  v7 = sub_18BC20ED8();
  v4[27] = v7;
  v4[28] = v6;

  return MEMORY[0x1EEE6DFA0](sub_18BA7F59C, v7, v6);
}

uint64_t sub_18BA7F59C()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[20];
  sub_18BC1E0A8();
  (*(v4 + 16))(v2, v1, v3);
  sub_18BA5F48C(v1);
  v6 = sub_18BC1EBC8();
  v0[29] = v6;
  (*(v4 + 8))(v2, v3);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_18BA7F734;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6ED0, &unk_18BC51EF0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_18BAB46D0;
  v0[13] = &block_descriptor_23;
  v0[14] = v7;
  [v5 sceneForTabWithUUID:v6 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_18BA7F734()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);

  return MEMORY[0x1EEE6DFA0](sub_18BA7F83C, v2, v1);
}

uint64_t sub_18BA7F83C()
{
  v1 = v0[29];

  v2 = v0[18];

  if (v2)
  {
    v3 = v0[19];
    *v3 = v2;
    v4 = *MEMORY[0x1E6985C00];
    v5 = sub_18BC1F048();
    (*(*(v5 - 8) + 104))(v3, v4, v5);

    v6 = v0[1];
  }

  else
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v7 = sub_18BC1DE48();
    v8 = __swift_project_value_buffer(v7, qword_1EA9F8578);
    sub_18BA82524(&qword_1EA9D4620, MEMORY[0x1E6959D38], MEMORY[0x1E6959D48]);
    swift_allocError();
    (*(*(v7 - 8) + 16))(v9, v8, v7);
    swift_willThrow();

    v6 = v0[1];
  }

  return v6();
}

uint64_t sub_18BA7FA20(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_18B7B6968;

  return sub_18BA7F478(a1, a2, v7, v6);
}

unint64_t sub_18BA7FB20()
{
  result = qword_1EA9D7758;
  if (!qword_1EA9D7758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7758);
  }

  return result;
}

unint64_t sub_18BA7FB78()
{
  result = qword_1EA9D7760;
  if (!qword_1EA9D7760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7760);
  }

  return result;
}

void sub_18BA7FC18(uint64_t a1)
{
  sub_18BC1EC08();
  if (v1 <= 0x3F)
  {
    sub_18BA7FD84(319, &qword_1EA9D7778, &qword_1EA9D4C90, &qword_18BC42978, sub_18BA3F878);
    if (v2 <= 0x3F)
    {
      sub_18BA7FEA8(319, &qword_1EA9D7780, sub_18BA3F6FC, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        sub_18BA7FD84(319, &qword_1EA9D7788, &qword_1EA9D4500, &qword_18BC478E0, sub_18BA7FDF4);
        if (v4 <= 0x3F)
        {
          sub_18BA7FEA8(319, &qword_1EA9D77A0, sub_18BA7FF08, MEMORY[0x1E69E6370]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_18BA7FD84(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5();
    v7 = sub_18BC1E068();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_18BA7FDF4()
{
  result = qword_1EA9D7790;
  if (!qword_1EA9D7790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D4500, &qword_18BC478E0);
    sub_18BA82524(&qword_1EA9D7798, MEMORY[0x1E6968FB0], MEMORY[0x1E695A748]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7790);
  }

  return result;
}

void sub_18BA7FEA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_18BC1E068();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_18BA7FF08()
{
  result = qword_1EA9D77A8;
  if (!qword_1EA9D77A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D77A8);
  }

  return result;
}

uint64_t sub_18BA7FF9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4500, &qword_18BC478E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BA8000C(__n128 a1)
{
  v47 = sub_18BC1E488();
  v49 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0, &unk_18BC472F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v45 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v44 = v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0, &qword_18BC41D40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = v30 - v7;
  v8 = sub_18BC1E8B8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v43 = sub_18BC1E8D8();
  v48 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v30[1] = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D77F8, &unk_18BC498F0);
  sub_18BC20B18();
  sub_18BC1EC38();
  v16 = *(v9 + 104);
  v31 = *MEMORY[0x1E6968DF0];
  v15 = v31;
  v32 = v8;
  v16(v11, v31, v8);
  v33 = v9 + 104;
  v34 = v16;
  v40 = "Last Hour (App Entity)";
  sub_18BC1E8E8();
  sub_18BC20B18();
  sub_18BC1EC38();
  v16(v11, v15, v8);
  v17 = v42;
  sub_18BC1E8F8();
  v18 = *(v48 + 56);
  v48 += 56;
  v39 = v18;
  v18(v17, 0, 1, v43);
  v50 = 0;
  v19 = sub_18BC1DF68();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v35 = v21;
  v36 = v20 + 56;
  v21(v44, 1, 1, v19);
  v21(v45, 1, 1, v19);
  v37 = *MEMORY[0x1E695A4F8];
  v22 = *(v49 + 104);
  v49 += 104;
  v38 = v22;
  v22(v46);
  sub_18BA82524(&qword_1EA9D6EF0, type metadata accessor for TabEntity, &unk_18BC48BC0);
  v23 = sub_18BC1E118();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7428, &qword_18BC482B8);
  sub_18BC20B18();
  sub_18BC1EC38();
  v24 = v31;
  v25 = v32;
  v26 = v34;
  v34(v11, v31, v32);
  sub_18BC1E8E8();
  sub_18BC20B18();
  sub_18BC1EC38();
  v26(v11, v24, v25);
  v27 = v42;
  sub_18BC1E8F8();
  v39(v27, 0, 1, v43);
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v28 = v35;
  v35(v44, 1, 1, v19);
  v28(v45, 1, 1, v19);
  v38(v46, v37, v47);
  sub_18BA67C48();
  sub_18BC1E118();
  return v23;
}

uint64_t sub_18BA80798(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6EC8, &unk_18BC472E0);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for TabEntity(0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_18BC1EC08();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_18BC20F28();
  v1[11] = sub_18BC20F18();
  v5 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BA8092C, v5, v4);
}

uint64_t sub_18BA8092C()
{

  if (qword_1EA9D22B0 != -1)
  {
    swift_once();
  }

  v1 = sub_18BC1F2C8();
  __swift_project_value_buffer(v1, qword_1EA9F7EC8);
  v2 = sub_18BC1F2A8();
  v3 = sub_18BC21218();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_18B7AC000, v2, v3, "Matching tab with identifiers", v4, 2u);
    MEMORY[0x18CFFEEE0](v4, -1, -1);
  }

  v5 = v0[2];

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v0[8];
    v8 = v0[5];
    v9 = v0[2];
    v10 = objc_opt_self();
    v11 = *(v7 + 16);
    v7 += 16;
    v37 = v11;
    v38 = v10;
    v12 = v9 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v13 = (v7 - 8);
    v35 = (v8 + 56);
    v36 = *(v7 + 56);
    v33 = v8;
    v34 = (v8 + 48);
    v39 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v15 = v0[9];
      v14 = v0[10];
      v16 = v0[7];
      v37(v14, v12, v16);
      v37(v15, v14, v16);
      v17 = [v38 sharedApplication];
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (!v18)
      {
        break;
      }

      v19 = [v18 tabEntityDataSource];

      if (!v19)
      {
        goto LABEL_15;
      }

      v20 = sub_18BC1EBC8();
      v21 = [v19 tabEntityWithUUID_];

      if (!v21)
      {
        swift_unknownObjectRelease();
        goto LABEL_15;
      }

      sub_18BA7A53C(v21, v0[3]);
      swift_unknownObjectRelease();
      v22 = 0;
LABEL_16:
      v23 = v0[10];
      v24 = v0[7];
      v25 = v0[3];
      v26 = v0[4];
      v27 = *v13;
      (*v13)(v0[9], v24);
      v27(v23, v24);
      (*v35)(v25, v22, 1, v26);
      if ((*v34)(v25, 1, v26) == 1)
      {
        sub_18B988BAC(v0[3], &qword_1EA9D6EC8, &unk_18BC472E0);
      }

      else
      {
        sub_18BA5F428(v0[3], v0[6]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_18B9B6128(0, v39[2] + 1, 1, v39);
        }

        v29 = v39[2];
        v28 = v39[3];
        if (v29 >= v28 >> 1)
        {
          v39 = sub_18B9B6128((v28 > 1), v29 + 1, 1, v39);
        }

        v30 = v0[6];
        v39[2] = v29 + 1;
        sub_18BA5F428(v30, v39 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v29);
      }

      v12 += v36;
      if (!--v6)
      {
        goto LABEL_23;
      }
    }

LABEL_15:
    v22 = 1;
    goto LABEL_16;
  }

  v39 = MEMORY[0x1E69E7CC0];
LABEL_23:

  v31 = v0[1];

  return v31(v39);
}

uint64_t sub_18BA80D44(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v2[21] = *(type metadata accessor for TabEntity(0) - 8);
  v2[22] = swift_task_alloc();
  sub_18BC20F28();
  v2[23] = sub_18BC20F18();
  v4 = sub_18BC20ED8();
  v2[24] = v4;
  v2[25] = v3;

  return MEMORY[0x1EEE6DFA0](sub_18BA80E34, v4, v3);
}

uint64_t sub_18BA80E34()
{
  if (qword_1EA9D22B0 != -1)
  {
    swift_once();
  }

  v1 = sub_18BC1F2C8();
  __swift_project_value_buffer(v1, qword_1EA9F7EC8);
  v2 = sub_18BC1F2A8();
  v3 = sub_18BC21218();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_18B7AC000, v2, v3, "Matching tab with a string", v4, 2u);
    MEMORY[0x18CFFEEE0](v4, -1, -1);
  }

  v5 = [objc_opt_self() sharedApplication];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = [v6 tabEntityDataSource];
    v0[26] = v7;

    if (v7)
    {
      v8 = sub_18BC20B98();
      v0[27] = v8;
      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = sub_18BA811B0;
      v9 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7830, &qword_18BC499C0);
      v0[10] = MEMORY[0x1E69E9820];
      v0[11] = 1107296256;
      v0[12] = sub_18BA7B838;
      v0[13] = &block_descriptor_70;
      v0[14] = v9;
      [v7 tabEntitiesMatchingQuery:v8 completionHandler:v0 + 10];

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }
  }

  else
  {
  }

  if (qword_1EA9D2550 != -1)
  {
    swift_once();
  }

  v10 = sub_18BC1DE48();
  v11 = __swift_project_value_buffer(v10, qword_1EA9F8578);
  sub_18BA82524(&qword_1EA9D4620, MEMORY[0x1E6959D38], MEMORY[0x1E6959D48]);
  swift_allocError();
  (*(*(v10 - 8) + 16))(v12, v11, v10);
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_18BA811B0()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_18BA812B8, v2, v1);
}

void *sub_18BA812B8()
{
  v1 = v0[27];

  v2 = v0[18];

  if (v2 >> 62)
  {
    v3 = sub_18BC219A8();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    swift_unknownObjectRelease();
    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v13 = MEMORY[0x1E69E7CC0];
  result = sub_18B9B695C(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
    return result;
  }

  v5 = 0;
  v6 = v0[21];
  v7 = v13;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x18CFFD010](v5, v2);
    }

    else
    {
      v8 = *(v2 + 8 * v5 + 32);
    }

    sub_18BA7A53C(v8, v0[22]);
    v10 = *(v13 + 16);
    v9 = *(v13 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_18B9B695C((v9 > 1), v10 + 1, 1);
    }

    v11 = v0[22];
    ++v5;
    *(v13 + 16) = v10 + 1;
    sub_18BA5F428(v11, v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10);
  }

  while (v3 != v5);

  swift_unknownObjectRelease();
LABEL_14:

  v12 = v0[1];

  return v12(v7);
}

uint64_t sub_18BA8147C()
{
  v0[2] = *(type metadata accessor for TabEntity(0) - 8);
  v0[3] = swift_task_alloc();
  sub_18BC20F28();
  v0[4] = sub_18BC20F18();
  v2 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BA81568, v2, v1);
}

void *sub_18BA81568()
{

  if (qword_1EA9D22B0 != -1)
  {
    swift_once();
  }

  v1 = sub_18BC1F2C8();
  __swift_project_value_buffer(v1, qword_1EA9F7EC8);
  v2 = sub_18BC1F2A8();
  v3 = sub_18BC21218();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_18B7AC000, v2, v3, "Get all tabs", v4, 2u);
    MEMORY[0x18CFFEEE0](v4, -1, -1);
  }

  v5 = [objc_opt_self() sharedApplication];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = [v6 tabEntityDataSource];

    if (v7)
    {
      v8 = [v7 allTabEntities];
      sub_18BA824D8();
      v9 = sub_18BC20D98();

      if (v9 >> 62)
      {
        v10 = sub_18BC219A8();
        if (v10)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v10)
        {
LABEL_9:
          v24 = MEMORY[0x1E69E7CC0];
          result = sub_18B9B695C(0, v10 & ~(v10 >> 63), 0);
          if (v10 < 0)
          {
            __break(1u);
            return result;
          }

          v12 = 0;
          v13 = v0[2];
          v14 = v24;
          do
          {
            if ((v9 & 0xC000000000000001) != 0)
            {
              v15 = MEMORY[0x18CFFD010](v12, v9);
            }

            else
            {
              v15 = *(v9 + 8 * v12 + 32);
            }

            sub_18BA7A53C(v15, v0[3]);
            v17 = *(v24 + 16);
            v16 = *(v24 + 24);
            if (v17 >= v16 >> 1)
            {
              sub_18B9B695C((v16 > 1), v17 + 1, 1);
            }

            v18 = v0[3];
            ++v12;
            *(v24 + 16) = v17 + 1;
            sub_18BA5F428(v18, v24 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v17);
          }

          while (v10 != v12);

          swift_unknownObjectRelease();
          goto LABEL_26;
        }
      }

      swift_unknownObjectRelease();
      v14 = MEMORY[0x1E69E7CC0];
LABEL_26:

      v23 = v0[1];

      return v23(v14);
    }
  }

  else
  {
  }

  if (qword_1EA9D2550 != -1)
  {
    swift_once();
  }

  v19 = sub_18BC1DE48();
  v20 = __swift_project_value_buffer(v19, qword_1EA9F8578);
  sub_18BA82524(&qword_1EA9D4620, MEMORY[0x1E6959D38], MEMORY[0x1E6959D48]);
  swift_allocError();
  (*(*(v19 - 8) + 16))(v21, v20, v19);
  swift_willThrow();

  v22 = v0[1];

  return v22();
}

uint64_t sub_18BA8198C(__n128 a1)
{
  v1 = sub_18BC1E488();
  v32 = *(v1 - 8);
  v33 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v31 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0, &unk_18BC472F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v29 = &v25 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6EC8, &unk_18BC472E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v28 = &v25 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0, &qword_18BC41D40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v26 = &v25 - v10;
  v11 = sub_18BC1E8B8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v25 = sub_18BC1E8D8();
  v17 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D77E8, &qword_18BC498E0);
  sub_18BC20B18();
  sub_18BC1EC38();
  v18 = *MEMORY[0x1E6968DF0];
  v19 = *(v12 + 104);
  v19(v14, v18, v11);
  sub_18BC1E8E8();
  sub_18BC20B18();
  sub_18BC1EC38();
  v19(v14, v18, v11);
  v20 = v26;
  sub_18BC1E8F8();
  (*(v17 + 56))(v20, 0, 1, v25);
  v21 = type metadata accessor for TabEntity(0);
  (*(*(v21 - 8) + 56))(v28, 1, 1, v21);
  v22 = sub_18BC1DF68();
  v23 = *(*(v22 - 8) + 56);
  v23(v29, 1, 1, v22);
  v23(v30, 1, 1, v22);
  (*(v32 + 104))(v31, *MEMORY[0x1E695A4F8], v33);
  sub_18BA82524(&qword_1EA9D6EF0, type metadata accessor for TabEntity, &unk_18BC48BC0);
  return sub_18BC1E118();
}

uint64_t sub_18BA81F54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6EC8, &unk_18BC472E0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v32 = &v25 - v1;
  v2 = sub_18BC1E488();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0, &unk_18BC472F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v31 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4500, &qword_18BC478E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0, &qword_18BC41D40);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v25 - v15;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D77E0, &qword_18BC498D8);
  v17 = sub_18BC1E8D8();
  v18 = *(v17 - 8);
  v28 = *(v18 + 56);
  v29 = v18 + 56;
  v28(v16, 1, 1, v17);
  v19 = sub_18BC1EA98();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  v20 = sub_18BC1DF68();
  v21 = *(*(v20 - 8) + 56);
  v21(v10, 1, 1, v20);
  v27 = *MEMORY[0x1E695A4F8];
  v22 = *(v3 + 104);
  v25 = v3 + 104;
  v26 = v22;
  v22(v5);
  v30 = sub_18BC1E148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D77E8, &qword_18BC498E0);
  v28(v16, 1, 1, v17);
  v23 = type metadata accessor for TabEntity(0);
  (*(*(v23 - 8) + 56))(v32, 1, 1, v23);
  v21(v10, 1, 1, v20);
  v21(v31, 1, 1, v20);
  v26(v5, v27, v2);
  sub_18BA82524(&qword_1EA9D6EF0, type metadata accessor for TabEntity, &unk_18BC48BC0);
  sub_18BC1E108();
  return v30;
}

unint64_t sub_18BA823CC()
{
  result = qword_1EA9D77F0;
  if (!qword_1EA9D77F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D77F0);
  }

  return result;
}

uint64_t sub_18BA82420(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TabEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_18BA82484()
{
  result = qword_1EA9D7820;
  if (!qword_1EA9D7820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7820);
  }

  return result;
}

unint64_t sub_18BA824D8()
{
  result = qword_1EA9D7828;
  if (!qword_1EA9D7828)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9D7828);
  }

  return result;
}

uint64_t sub_18BA82524(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18BA8261C()
{
  v1 = *(v0 + 72);
  v2 = sub_18BC1E1A8();
  v1(v2);

  return v0;
}

uint64_t sub_18BA8268C()
{
  sub_18BA8261C();

  return swift_deallocClassInstance();
}

uint64_t sub_18BA826E4()
{
  v1 = *(*v0 + 24);
  sub_18BC1E1A8();
  return v1;
}

uint64_t sub_18BA82718()
{
  v1 = *(*v0 + 40);
  sub_18BC1E1A8();
  return v1;
}

uint64_t sub_18BA8274C()
{
  v1 = *(*v0 + 56);
  sub_18BC1E1A8();
  return v1;
}

uint64_t sub_18BA82780(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v46 = sub_18BC1DE78();
  MEMORY[0x1EEE9AC00](v46);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v47 = v43 - v13;
  v14 = sub_18BC1DFB8();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v45 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6EC8, &unk_18BC472E0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v43 - v17;
  v48 = type metadata accessor for TabEntity(0);
  v19 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v44 = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v49 = v43 - v22;
  v23 = sub_18BC1EC08();
  v50 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v43 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v43 - v30;
  Strong = swift_unknownObjectWeakLoadStrong();
  v33 = MEMORY[0x1E69E7CC0];
  if (Strong)
  {
    v34 = Strong;
    v43[0] = v5;
    v43[1] = v11;
    v35 = swift_unknownObjectUnownedLoadStrong();
    v36 = [v34 tabEntityUUIDForView_];

    if (v36)
    {
      sub_18BC1EBE8();

      v37 = v50;
      (*(v50 + 32))(v31, v28, v23);
      (*(v37 + 16))(v25, v31, v23);
      sub_18BA7A354(v25, v18);
      if ((*(v19 + 48))(v18, 1, v48) == 1)
      {
        (*(v37 + 8))(v31, v23);
        swift_unknownObjectRelease();
        sub_18BA5F3C0(v18);
      }

      else
      {
        v38 = v49;
        sub_18BA5F428(v18, v49);
        sub_18BA82420(v38, v44);
        v52.origin.x = a1;
        v52.origin.y = a2;
        v52.size.width = a3;
        v52.size.height = a4;
        CGRectGetMinX(v52);
        v53.origin.x = a1;
        v53.origin.y = a2;
        v53.size.width = a3;
        v53.size.height = a4;
        CGRectGetMinY(v53);
        v54.origin.x = a1;
        v54.origin.y = a2;
        v54.size.width = a3;
        v54.size.height = a4;
        CGRectGetWidth(v54);
        v55.origin.x = a1;
        v55.origin.y = a2;
        v55.size.width = a3;
        v55.size.height = a4;
        CGRectGetHeight(v55);
        sub_18BC1DFA8();
        v51 = v33;
        sub_18B8102A0(&qword_1EA9D78C8, MEMORY[0x1E6959D90], MEMORY[0x1E6959DA8]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D78D0, &qword_18BC49B38);
        sub_18B81034C();
        sub_18BC21908();
        sub_18BC1E528();
        swift_allocObject();
        sub_18B8102A0(&qword_1EA9D6EF0, type metadata accessor for TabEntity, &unk_18BC48BC0);
        v39 = sub_18BC1E508();
        v40 = swift_unknownObjectUnownedLoadStrong();
        v41 = [v34 tabEntityIsSelectedForView_];

        if (v41)
        {
          sub_18BC1DE68();
        }

        else
        {
          sub_18BC1DE58();
        }

        sub_18BC1E518();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_18BC3E3E0;
        *(v33 + 32) = v39;
        swift_unknownObjectRelease();
        sub_18BA5F48C(v49);
        (*(v50 + 8))(v31, v23);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return v33;
}

double sub_18BA82DC8(void *a1)
{
  v2 = sub_18BC1DE78();
  MEMORY[0x1EEE9AC00](v2);
  sub_18BBD7294(a1, &v12);
  v4 = v13;
  if (v13)
  {
    v5 = v15;
    v6 = v16;
    v7 = v14;
    v8 = v12;
    v17[0] = v12;
    v17[1] = v13;
    v11[5] = MEMORY[0x1E69E7CC0];
    sub_18B987794(v17, v11);
    sub_18B8102A0(&qword_1EA9D78C8, MEMORY[0x1E6959D90], MEMORY[0x1E6959DA8]);
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D78D0, &qword_18BC49B38);
    sub_18B81034C();
    sub_18BC21908();
    v11[0] = v8;
    v11[1] = v4;
    v11[2] = v7;
    v11[3] = v5;
    v11[4] = v6;
    v9 = objc_allocWithZone(sub_18BC1F018());
    sub_18BA5F904();
    v10 = sub_18BC1F008();
    sub_18BC21508();

    sub_18BA835C4(v17);
  }

  return result;
}

void sub_18BA82F8C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_18BA82DC8(v4);
}

void sub_18BA82FF4(void *a1)
{
  v2 = sub_18BC1DE78();
  MEMORY[0x1EEE9AC00](v2);
  sub_18BB9093C(a1);
  if (v3)
  {
    sub_18B8102A0(&qword_1EA9D78C8, MEMORY[0x1E6959D90], MEMORY[0x1E6959DA8]);
    sub_18BC1E3F8();
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D78D0, &qword_18BC49B38);
    sub_18B81034C();
    sub_18BC21908();
    v4 = objc_allocWithZone(sub_18BC1F018());
    sub_18BA83618();
    v5 = sub_18BC1F008();
    sub_18BC21508();
  }
}

void sub_18BA83198(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_18BA82FF4(v4);
}

double sub_18BA83200(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18BC1DE78();
  MEMORY[0x1EEE9AC00](v6);
  v7 = a1;
  sub_18BC1E3F8();
  sub_18BAE5A2C(v7, a2, a3, &v17);
  v9 = v18;
  if (v18)
  {
    v10 = v20;
    v11 = v21;
    v12 = v19;
    v13 = v17;
    v22[0] = v17;
    v22[1] = v18;
    v16[5] = MEMORY[0x1E69E7CC0];
    sub_18B987794(v22, v16);
    sub_18B8102A0(&qword_1EA9D78C8, MEMORY[0x1E6959D90], MEMORY[0x1E6959DA8]);
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D78D0, &qword_18BC49B38);
    sub_18B81034C();
    sub_18BC21908();
    v16[0] = v13;
    v16[1] = v9;
    v16[2] = v12;
    v16[3] = v10;
    v16[4] = v11;
    v14 = objc_allocWithZone(sub_18BC1F018());
    sub_18BA83570();
    v15 = sub_18BC1F008();
    sub_18BC21508();

    sub_18BA835C4(v22);
  }

  return result;
}

double sub_18BA833E4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_18BC20BD8();
  v8 = v7;
  v9 = a3;
  v10 = a1;
  sub_18BA83200(v9, v6, v8);

  return result;
}

uint64_t sub_18BA8345C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_18BC1DE78();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1;
  sub_18BC1DE58();
  sub_18BC214E8();

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_18BA83570()
{
  result = qword_1EA9D8FA0;
  if (!qword_1EA9D8FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8FA0);
  }

  return result;
}

unint64_t sub_18BA83618()
{
  result = qword_1EA9D78E8;
  if (!qword_1EA9D78E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D78E8);
  }

  return result;
}

uint64_t SFEditBookmarkCollectionViewController.Section.hashValue.getter()
{
  v1 = *v0;
  sub_18BC22158();
  MEMORY[0x18CFFD660](v1);
  return sub_18BC221A8();
}

unint64_t sub_18BA836F8()
{
  result = qword_1EA9D78F8;
  if (!qword_1EA9D78F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D78F8);
  }

  return result;
}

id sub_18BA8375C()
{
  v1 = OBJC_IVAR____TtC12MobileSafari31CapsuleInteractiveInsertionView____lazy_storage___imageViewMinimumWidthConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC12MobileSafari31CapsuleInteractiveInsertionView____lazy_storage___imageViewMinimumWidthConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12MobileSafari31CapsuleInteractiveInsertionView____lazy_storage___imageViewMinimumWidthConstraint);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC12MobileSafari31CapsuleInteractiveInsertionView_imageView) widthAnchor];
    v5 = [v4 constraintGreaterThanOrEqualToConstant_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_18BA83804()
{
  v1 = OBJC_IVAR____TtC12MobileSafari31CapsuleInteractiveInsertionView____lazy_storage___imageViewWidthConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC12MobileSafari31CapsuleInteractiveInsertionView____lazy_storage___imageViewWidthConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12MobileSafari31CapsuleInteractiveInsertionView____lazy_storage___imageViewWidthConstraint);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC12MobileSafari31CapsuleInteractiveInsertionView_imageView) widthAnchor];
    v5 = [v4 constraintEqualToConstant_];

    LODWORD(v6) = 1144750080;
    [v5 setPriority_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_18BA83998(void *a1)
{
  v3 = OBJC_IVAR____TtC12MobileSafari31CapsuleInteractiveInsertionView_imageView;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *&v1[OBJC_IVAR____TtC12MobileSafari31CapsuleInteractiveInsertionView____lazy_storage___imageViewMinimumWidthConstraint] = 0;
  *&v1[OBJC_IVAR____TtC12MobileSafari31CapsuleInteractiveInsertionView____lazy_storage___imageViewWidthConstraint] = 0;
  v1[OBJC_IVAR____TtC12MobileSafari31CapsuleInteractiveInsertionView_isSelected] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CapsuleInteractiveInsertionView();
  v4 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    sub_18BA83A74();
  }

  return v5;
}

void sub_18BA83A74()
{
  v1 = *&v0[OBJC_IVAR____TtC12MobileSafari31CapsuleInteractiveInsertionView_imageView];
  [v1 setContentMode_];
  v2 = sub_18BC20B98();
  v3 = [objc_opt_self() systemImageNamed_];

  [v1 setImage_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DD6C8]) initWithStyle_];
  [v1 addInteraction_];

  if (([objc_opt_self() isSolariumEnabled] & 1) == 0)
  {
    v5 = [objc_opt_self() sf_safariAccentColor];
    [v1 setTintColor_];
  }

  [v0 addSubview_];
  v6 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_18BC42C20;
  v8 = [v1 leadingAnchor];
  v9 = [v0 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v7 + 32) = v10;
  v11 = [v1 centerYAnchor];
  v12 = [v0 centerYAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v7 + 40) = v13;
  *(v7 + 48) = sub_18BA8375C();
  *(v7 + 56) = sub_18BA83804();
  sub_18BA497D0();
  v14 = sub_18BC20D88();

  [v6 activateConstraints_];
}

id sub_18BA83D34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CapsuleInteractiveInsertionView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_18BA83DD4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_contentView;
  v5 = *(a1 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_contentView);
  if (v5 && (_s27SelectionCountIndicatorViewCMa(), (v6 = swift_dynamicCastClass()) != 0))
  {
    v7 = *(v6 + OBJC_IVAR____TtCC12MobileSafari22TabOverviewDisplayItem27SelectionCountIndicatorView_selectionCount);
    *(v6 + OBJC_IVAR____TtCC12MobileSafari22TabOverviewDisplayItem27SelectionCountIndicatorView_selectionCount) = a2;
    if (v7 == a2)
    {
      return;
    }

    v11 = v5;
    sub_18BA66A2C();
  }

  else
  {
    _s27SelectionCountIndicatorViewCMa();
    v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v9 = *&v8[OBJC_IVAR____TtCC12MobileSafari22TabOverviewDisplayItem27SelectionCountIndicatorView_selectionCount];
    *&v8[OBJC_IVAR____TtCC12MobileSafari22TabOverviewDisplayItem27SelectionCountIndicatorView_selectionCount] = a2;
    if (v9 != a2)
    {
      sub_18BA66A2C();
    }

    v11 = *(a1 + v4);
    *(a1 + v4) = v8;
    v10 = v8;
    sub_18BA840A0(v11);
  }
}
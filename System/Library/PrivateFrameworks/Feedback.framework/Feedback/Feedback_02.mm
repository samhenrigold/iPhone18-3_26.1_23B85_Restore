uint64_t sub_1B8B5A21C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6290, &qword_1B8C2F800);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v44 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v44 - v8;
  v9 = sub_1B8C238B8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v49 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v48 = &v44 - v13;
  v14 = sub_1B8C237B8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1B8B5B984();
  sub_1B8C237C8();
  v18 = sub_1B8B5C388();
  v53 = *(v15 + 8);
  v54 = v14;
  result = v53(v17, v14);
  if (v18)
  {
    v50 = v10;
    v47 = v9;
    if (qword_1EBAA5968 != -1)
    {
      swift_once();
    }

    v20 = sub_1B8C23C38();
    __swift_project_value_buffer(v20, qword_1EBAB3A00);
    v21 = v0;
    v22 = sub_1B8C23C18();
    v23 = sub_1B8C25498();

    v24 = os_log_type_enabled(v22, v23);
    v25 = v51;
    v46 = v4;
    if (v24)
    {
      v26 = swift_slowAlloc();
      v45 = v7;
      v27 = v26;
      v44 = swift_slowAlloc();
      v55 = v44;
      *v27 = 136446210;
      sub_1B8C237C8();
      sub_1B8B5FB84(&qword_1EBAA6278, MEMORY[0x1E699C390], MEMORY[0x1E699C3A8]);
      v28 = v54;
      v29 = sub_1B8C259E8();
      v31 = v30;
      v53(v17, v28);
      v32 = sub_1B8B5DD48(v29, v31, &v55);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_1B8B22000, v22, v23, "Remapping dynamic alert strings for feature: [%{public}s]", v27, 0xCu);
      v33 = v44;
      v34 = __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x1B8CCB0E0](v33, -1, -1, v34);
      v35 = v27;
      v7 = v45;
      MEMORY[0x1B8CCB0E0](v35, -1, -1);
    }

    sub_1B8C238F8();
    v36 = v50;
    v37 = *(v50 + 48);
    v38 = v47;
    if (v37(v25, 1, v47) == 1)
    {
      sub_1B8B3433C(v25, &qword_1EBAA6290, &qword_1B8C2F800);
    }

    else
    {
      v39 = v25;
      v40 = v48;
      (*(v36 + 32))(v48, v39, v38);
      sub_1B8C237C8();
      sub_1B8B5C674(v17, v52 & 1);
      v53(v17, v54);
      (*(v36 + 56))(v7, 0, 1, v38);
      sub_1B8C23908();
      (*(v36 + 8))(v40, v38);
    }

    v41 = v46;
    sub_1B8C23918();
    if (v37(v41, 1, v38) == 1)
    {
      return sub_1B8B3433C(v41, &qword_1EBAA6290, &qword_1B8C2F800);
    }

    else
    {
      v43 = v49;
      v42 = v50;
      (*(v50 + 32))(v49, v41, v38);
      sub_1B8C237C8();
      sub_1B8B5C674(v17, v52 & 1);
      v53(v17, v54);
      (*(v42 + 56))(v7, 0, 1, v38);
      sub_1B8C23928();
      return (*(v42 + 8))(v43, v38);
    }
  }

  return result;
}

uint64_t sub_1B8B5A7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(v6 + 64) = a4;
  *(v6 + 72) = v5;
  *(v6 + 48) = a2;
  *(v6 + 56) = a3;
  *(v6 + 40) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6290, &qword_1B8C2F800);
  *(v6 + 80) = swift_task_alloc();
  v8 = sub_1B8C237B8();
  *(v6 + 88) = v8;
  *(v6 + 96) = *(v8 - 8);
  *(v6 + 104) = swift_task_alloc();
  v9 = sub_1B8C23938();
  *(v6 + 112) = v9;
  *(v6 + 120) = *(v9 - 8);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 145) = *a5;

  return MEMORY[0x1EEE6DFA0](sub_1B8B5A944, 0, 0);
}

uint64_t sub_1B8B5A944()
{
  v34 = v0;
  if (*(v0 + 145) != 2)
  {
    if (qword_1EBAA5968 != -1)
    {
      swift_once();
    }

    v1 = sub_1B8C23C38();
    __swift_project_value_buffer(v1, qword_1EBAB3A00);
    v2 = sub_1B8C23C18();
    v3 = sub_1B8C25458();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 145);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v33 = v6;
      *v5 = 136315138;
      if (v4)
      {
        v7 = 0x65746172656E6547;
      }

      else
      {
        v7 = 0x6C616E696769724FLL;
      }

      if (v4)
      {
        v8 = 0xE900000000000064;
      }

      else
      {
        v8 = 0xE800000000000000;
      }

      v9 = sub_1B8B5DD48(v7, v8, &v33);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1B8B22000, v2, v3, "Will attach annotated %s content.", v5, 0xCu);
      v10 = __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x1B8CCB0E0](v6, -1, -1, v10);
      MEMORY[0x1B8CCB0E0](v5, -1, -1);
    }
  }

  if ((*(*(v0 + 120) + 48))(*(v0 + 64), 1, *(v0 + 112)) != 1)
  {
    if (qword_1EBAA5968 != -1)
    {
      swift_once();
    }

    v11 = sub_1B8C23C38();
    __swift_project_value_buffer(v11, qword_1EBAB3A00);
    v12 = sub_1B8C23C18();
    v13 = sub_1B8C25478();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 145);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v33 = v16;
      *v15 = 136315138;
      v17 = 0x65746172656E6547;
      v18 = 0xE900000000000064;
      if (v14 != 1)
      {
        v17 = 0x6172747845;
        v18 = 0xE500000000000000;
      }

      if (v14)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0x6C616E696769724FLL;
      }

      if (v14)
      {
        v20 = v18;
      }

      else
      {
        v20 = 0xE800000000000000;
      }

      v21 = sub_1B8B5DD48(v19, v20, &v33);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_1B8B22000, v12, v13, "Ignoring %s content because annotated is present.", v15, 0xCu);
      v22 = __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1B8CCB0E0](v16, -1, -1, v22);
      MEMORY[0x1B8CCB0E0](v15, -1, -1);
    }
  }

  v23 = *(v0 + 145);
  v24 = *(v0 + 80);
  v25 = *(v0 + 48);
  sub_1B8C23878();
  sub_1B8C237C8();
  *(v0 + 144) = v23;
  v26 = sub_1B8C238B8();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v24, v25, v26);
  (*(v27 + 56))(v24, 0, 1, v26);
  v28 = swift_task_alloc();
  *(v0 + 136) = v28;
  *v28 = v0;
  v28[1] = sub_1B8B5AD70;
  v29 = *(v0 + 104);
  v30 = *(v0 + 80);
  v31 = *(v0 + 56);

  return sub_1B8B759CC(v0 + 16, v31, v29, (v0 + 144), v30);
}

uint64_t sub_1B8B5AD70()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);

  sub_1B8B3433C(v4, &qword_1EBAA6290, &qword_1B8C2F800);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B8B5AEF4, 0, 0);
}

uint64_t sub_1B8B5AEF4()
{
  v29 = v0;
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v1 + 16);
  if (v3)
  {
    v26 = *(v0 + 16);

    v4 = 32;
    v5 = 0x1EBAA5000uLL;
    do
    {
      v6 = *(v1 + v4);
      v7 = v6;
      if (*(v5 + 2408) != -1)
      {
        swift_once();
      }

      v8 = sub_1B8C23C38();
      __swift_project_value_buffer(v8, qword_1EBAB3A00);
      v9 = v6;
      v10 = sub_1B8C23C18();
      v11 = sub_1B8C25478();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = v1;
        v13 = *(v27 + 145);
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v28 = v15;
        *v14 = 136315394;
        if (v13)
        {
          if (v13 == 1)
          {
            v16 = 0x65746172656E6547;
          }

          else
          {
            v16 = 0x6172747845;
          }

          if (v13 == 1)
          {
            v17 = 0xE900000000000064;
          }

          else
          {
            v17 = 0xE500000000000000;
          }
        }

        else
        {
          v17 = 0xE800000000000000;
          v16 = 0x6C616E696769724FLL;
        }

        v18 = sub_1B8B5DD48(v16, v17, &v28);

        *(v14 + 4) = v18;
        *(v14 + 12) = 2082;
        *(v27 + 32) = v6;
        v19 = v6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
        v20 = sub_1B8C25178();
        v22 = sub_1B8B5DD48(v20, v21, &v28);

        *(v14 + 14) = v22;
        _os_log_impl(&dword_1B8B22000, v10, v11, "Annotated %s content attachments could not be attached: %{public}s)", v14, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B8CCB0E0](v15, -1, -1);
        MEMORY[0x1B8CCB0E0](v14, -1, -1);

        v1 = v12;
        v5 = 0x1EBAA5000;
      }

      else
      {
      }

      v4 += 8;
      --v3;
    }

    while (v3);

    v2 = v26;
  }

  v23 = *(v27 + 40);
  (*(*(v27 + 120) + 8))(*(v27 + 128), *(v27 + 112));
  *v23 = v2;
  v23[1] = v1;

  v24 = *(v27 + 8);

  return v24();
}

uint64_t sub_1B8B5B200(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(v5 + 56) = a3;
  *(v5 + 64) = v4;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6290, &qword_1B8C2F800);
  *(v5 + 72) = swift_task_alloc();
  v7 = sub_1B8C237B8();
  *(v5 + 80) = v7;
  *(v5 + 88) = *(v7 - 8);
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 121) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1B8B5B308, 0, 0);
}

uint64_t sub_1B8B5B308()
{
  v22 = v0;
  if (qword_1EBAA5968 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8C23C38();
  *(v0 + 104) = __swift_project_value_buffer(v1, qword_1EBAB3A00);
  v2 = sub_1B8C23C18();
  v3 = sub_1B8C25458();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 121);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136315138;
    v7 = 0xE900000000000064;
    v8 = 0x65746172656E6547;
    if (v4 != 1)
    {
      v8 = 0x6172747845;
      v7 = 0xE500000000000000;
    }

    if (v4)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0x6C616E696769724FLL;
    }

    if (v4)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    v11 = sub_1B8B5DD48(v9, v10, &v21);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_1B8B22000, v2, v3, "Will attach %s content.", v5, 0xCu);
    v12 = __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B8CCB0E0](v6, -1, -1, v12);
    MEMORY[0x1B8CCB0E0](v5, -1, -1);
  }

  v13 = *(v0 + 121);
  v14 = *(v0 + 72);
  sub_1B8C237C8();
  *(v0 + 120) = v13;
  v15 = sub_1B8C238B8();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_task_alloc();
  *(v0 + 112) = v16;
  *v16 = v0;
  v16[1] = sub_1B8B5B57C;
  v17 = *(v0 + 96);
  v18 = *(v0 + 72);
  v19 = *(v0 + 56);

  return sub_1B8B759CC(v0 + 16, v19, v17, (v0 + 120), v18);
}

uint64_t sub_1B8B5B57C()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);

  sub_1B8B3433C(v4, &qword_1EBAA6290, &qword_1B8C2F800);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B8B5B700, 0, 0);
}

uint64_t sub_1B8B5B700()
{
  v26 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    v23 = *(v0 + 16);

    v4 = 32;
    v24 = v2;
    do
    {
      v5 = *(v2 + v4);
      v6 = v5;
      v7 = v5;
      v8 = sub_1B8C23C18();
      v9 = sub_1B8C25478();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = *(v0 + 121);
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v25 = v12;
        *v11 = 136315394;
        if (v10)
        {
          if (v10 == 1)
          {
            v13 = 0x65746172656E6547;
          }

          else
          {
            v13 = 0x6172747845;
          }

          if (v10 == 1)
          {
            v14 = 0xE900000000000064;
          }

          else
          {
            v14 = 0xE500000000000000;
          }
        }

        else
        {
          v14 = 0xE800000000000000;
          v13 = 0x6C616E696769724FLL;
        }

        v15 = sub_1B8B5DD48(v13, v14, &v25);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2082;
        *(v0 + 32) = v5;
        v16 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
        v17 = sub_1B8C25178();
        v19 = sub_1B8B5DD48(v17, v18, &v25);

        *(v11 + 14) = v19;
        _os_log_impl(&dword_1B8B22000, v8, v9, "%s content attachments could not be attached: %{public}s)", v11, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B8CCB0E0](v12, -1, -1);
        MEMORY[0x1B8CCB0E0](v11, -1, -1);

        v2 = v24;
      }

      else
      {
      }

      v4 += 8;
      --v3;
    }

    while (v3);

    v1 = v23;
  }

  v20 = *(v0 + 40);
  *v20 = v1;
  v20[1] = v2;

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1B8B5B984()
{
  v0 = sub_1B8C238B8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v75 - v5;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6290, &qword_1B8C2F800);
  v7 = *(v82 - 1);
  v8 = v7;
  v9 = MEMORY[0x1EEE9AC00](v82);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v77 = &v75 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v75 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6668, &qword_1B8C294A0);
  v16 = *(v7 + 72);
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = swift_allocObject();
  sub_1B8C238F8();
  sub_1B8C23918();
  v83 = v18 + v17;
  sub_1B8B34450(v18 + v17, v15, &qword_1EBAA6290, &qword_1B8C2F800);
  sub_1B8B3883C(v15, v11, &qword_1EBAA6290, &qword_1B8C2F800);
  v78 = *(v1 + 48);
  v19 = v78(v11, 1, v0);
  v79 = (v1 + 32);
  v80 = v18;
  v81 = v6;
  if (v19 != 1)
  {
    v75 = *(v1 + 32);
    v76 = v0;
    v75(v6, v11, v0);
    v21 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_4;
  }

  sub_1B8B3433C(v11, &qword_1EBAA6290, &qword_1B8C2F800);
  v20 = MEMORY[0x1E69E7CC0];
LABEL_7:
  sub_1B8B34450(v83 + v16, v15, &qword_1EBAA6290, &qword_1B8C2F800);
  sub_1B8B3883C(v15, v11, &qword_1EBAA6290, &qword_1B8C2F800);
  if (v78(v11, 1, v0) == 1)
  {
    sub_1B8B3433C(v11, &qword_1EBAA6290, &qword_1B8C2F800);
    v16 = v0;
    v24 = v20;
    v21 = v82;
  }

  else
  {
    v15 = *v79;
    v25 = v81;
    (*v79)(v81, v11, v0);
    v16 = v0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1B8B5D9E4(0, v20[2] + 1, 1, v20, &qword_1EBAA6670, &qword_1B8C294A8, MEMORY[0x1E699C540]);
    }

    v27 = v20[2];
    v26 = v20[3];
    v28 = v20;
    if (v27 >= v26 >> 1)
    {
      v28 = sub_1B8B5D9E4((v26 > 1), v27 + 1, 1, v20, &qword_1EBAA6670, &qword_1B8C294A8, MEMORY[0x1E699C540]);
    }

    v28[2] = v27 + 1;
    v29 = v28 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v27;
    v24 = v28;
    (v15)(v29, v25, v0);
    v21 = v82;
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v30 = v24[2];
  if (v30)
  {
    v11 = 0;
    v31 = v24 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v80 = v84 + 1;
    v82 = (v1 + 8);
    v83 = v1 + 16;
    while (1)
    {
      if (v11 >= v24[2])
      {
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
        v21 = sub_1B8B5D9E4(0, *(v21 + 16) + 1, 1, v21, &qword_1EBAA6670, &qword_1B8C294A8, MEMORY[0x1E699C540]);
LABEL_4:
        v23 = *(v21 + 16);
        v22 = *(v21 + 24);
        v20 = v21;
        if (v23 >= v22 >> 1)
        {
          v20 = sub_1B8B5D9E4((v22 > 1), v23 + 1, 1, v21, &qword_1EBAA6670, &qword_1B8C294A8, MEMORY[0x1E699C540]);
        }

        v20[2] = v23 + 1;
        v0 = v76;
        v75(v20 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v23, v81, v76);
        goto LABEL_7;
      }

      (*(v1 + 16))(v4, &v31[*(v1 + 72) * v11], v16);
      v32 = sub_1B8C23828();
      if (!v32)
      {
        goto LABEL_24;
      }

      v15 = v32;
      v33 = sub_1B8C23808();
      if (!*(v15 + 16))
      {
        break;
      }

      v81 = v11;
      v35 = v4;
      v36 = v1;
      v37 = v16;
      v38 = v24;
      v39 = v30;
      v40 = sub_1B8B5E2DC(v33, v34);
      v42 = v41;

      if (v42)
      {
        v43 = (*(v15 + 56) + 16 * v40);
        v21 = *v43;
        v44 = v43[1];

        v45 = v44;
      }

      else
      {

        v45 = 0xE100000000000000;
        v21 = 48;
      }

      v30 = v39;
      v24 = v38;
      v16 = v37;
      v1 = v36;
      v4 = v35;
      v11 = v81;
LABEL_27:
      v46 = (HIBYTE(v45) & 0xF);
      v47 = v21 & 0xFFFFFFFFFFFFLL;
      if ((v45 & 0x2000000000000000) != 0)
      {
        v48 = HIBYTE(v45) & 0xF;
      }

      else
      {
        v48 = v21 & 0xFFFFFFFFFFFFLL;
      }

      if (!v48)
      {

        goto LABEL_17;
      }

      if ((v45 & 0x1000000000000000) == 0)
      {
        if ((v45 & 0x2000000000000000) != 0)
        {
          v84[0] = v21;
          v84[1] = v45 & 0xFFFFFFFFFFFFFFLL;
          if (v21 == 43)
          {
            if (!v46)
            {
              goto LABEL_97;
            }

            if (--v46)
            {
              v21 = 0;
              v61 = v80;
              while (1)
              {
                v62 = *v61 - 48;
                if (v62 > 9)
                {
                  break;
                }

                v63 = 10 * v21;
                if ((v21 * 10) >> 64 != (10 * v21) >> 63)
                {
                  break;
                }

                v21 = v63 + v62;
                if (__OFADD__(v63, v62))
                {
                  break;
                }

                ++v61;
                if (!--v46)
                {
                  goto LABEL_88;
                }
              }
            }
          }

          else if (v21 == 45)
          {
            if (!v46)
            {
              goto LABEL_99;
            }

            if (--v46)
            {
              v21 = 0;
              v54 = v80;
              while (1)
              {
                v55 = *v54 - 48;
                if (v55 > 9)
                {
                  break;
                }

                v56 = 10 * v21;
                if ((v21 * 10) >> 64 != (10 * v21) >> 63)
                {
                  break;
                }

                v21 = v56 - v55;
                if (__OFSUB__(v56, v55))
                {
                  break;
                }

                ++v54;
                if (!--v46)
                {
                  goto LABEL_88;
                }
              }
            }
          }

          else if (v46)
          {
            v21 = 0;
            v66 = v84;
            while (1)
            {
              v67 = *v66 - 48;
              if (v67 > 9)
              {
                break;
              }

              v68 = 10 * v21;
              if ((v21 * 10) >> 64 != (10 * v21) >> 63)
              {
                break;
              }

              v21 = v68 + v67;
              if (__OFADD__(v68, v67))
              {
                break;
              }

              ++v66;
              if (!--v46)
              {
                goto LABEL_88;
              }
            }
          }
        }

        else
        {
          if ((v21 & 0x1000000000000000) != 0)
          {
            v46 = ((v45 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v15 = v45;
            v46 = sub_1B8C25838();
          }

          v49 = *v46;
          if (v49 == 43)
          {
            if (v47 < 1)
            {
              goto LABEL_100;
            }

            v57 = v47 - 1;
            if (v47 != 1)
            {
              v21 = 0;
              if (!v46)
              {
                goto LABEL_88;
              }

              v58 = v46 + 1;
              while (1)
              {
                v59 = *v58 - 48;
                if (v59 > 9)
                {
                  break;
                }

                v60 = 10 * v21;
                if ((v21 * 10) >> 64 != (10 * v21) >> 63)
                {
                  break;
                }

                v21 = v60 + v59;
                if (__OFADD__(v60, v59))
                {
                  break;
                }

                ++v58;
                if (!--v57)
                {
LABEL_79:
                  LOBYTE(v46) = 0;
                  goto LABEL_88;
                }
              }
            }
          }

          else if (v49 == 45)
          {
            if (v47 < 1)
            {
              goto LABEL_98;
            }

            v50 = v47 - 1;
            if (v47 != 1)
            {
              v21 = 0;
              if (v46)
              {
                v51 = v46 + 1;
                while (1)
                {
                  v52 = *v51 - 48;
                  if (v52 > 9)
                  {
                    goto LABEL_87;
                  }

                  v53 = 10 * v21;
                  if ((v21 * 10) >> 64 != (10 * v21) >> 63)
                  {
                    goto LABEL_87;
                  }

                  v21 = v53 - v52;
                  if (__OFSUB__(v53, v52))
                  {
                    goto LABEL_87;
                  }

                  ++v51;
                  if (!--v50)
                  {
                    goto LABEL_79;
                  }
                }
              }

LABEL_88:
              v85 = v46;
              v15 = v46;

              if (v15)
              {
                goto LABEL_17;
              }

              goto LABEL_89;
            }
          }

          else
          {
            if (!v47)
            {
              goto LABEL_87;
            }

            v21 = 0;
            if (!v46)
            {
              goto LABEL_88;
            }

            while (1)
            {
              v64 = *v46 - 48;
              if (v64 > 9)
              {
                break;
              }

              v65 = 10 * v21;
              if ((v21 * 10) >> 64 != (10 * v21) >> 63)
              {
                break;
              }

              v21 = v65 + v64;
              if (__OFADD__(v65, v64))
              {
                break;
              }

              ++v46;
              if (!--v47)
              {
                goto LABEL_79;
              }
            }
          }
        }

LABEL_87:
        v21 = 0;
        LOBYTE(v46) = 1;
        goto LABEL_88;
      }

      sub_1B8C023FC(v21, v45, 10);
      v21 = v69;
      v15 = v70;

      if (v15)
      {
        goto LABEL_17;
      }

LABEL_89:
      if (v21 >= 2)
      {

        v71 = v77;
        (*v79)(v77, v4, v16);
        v72 = 0;
        v73 = 1;
        goto LABEL_95;
      }

LABEL_17:
      ++v11;
      (*v82)(v4, v16);
      if (v11 == v30)
      {
        goto LABEL_94;
      }
    }

LABEL_24:
    v45 = 0xE100000000000000;
    v21 = 48;
    goto LABEL_27;
  }

LABEL_94:

  v73 = 0;
  v72 = 1;
  v71 = v77;
LABEL_95:
  (*(v1 + 56))(v71, v72, 1, v16);
  sub_1B8B3433C(v71, &qword_1EBAA6290, &qword_1B8C2F800);
  return v73;
}

uint64_t sub_1B8B5C388()
{
  v1 = sub_1B8C237B8();
  v2 = *(v1 - 8);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v18 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65E8, &qword_1B8C2AEF0);
  v6 = *(v2 + 72);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v21 = 3 * v6;
  v22 = v5;
  v8 = swift_allocObject();
  v20 = xmmword_1B8C293F0;
  *(v8 + 16) = xmmword_1B8C293F0;
  v9 = *MEMORY[0x1E699C2E0];
  v19 = v3;
  v10 = *(v3 + 104);
  v10(v8 + v7, v9, v1);
  v10(v8 + v7 + v6, *MEMORY[0x1E699C2B0], v1);
  v10(v8 + v7 + 2 * v6, *MEMORY[0x1E699C308], v1);
  v23 = v0;
  v11 = sub_1B8B54E08(v0, v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v11 || (v12 = swift_allocObject(), *(v12 + 16) = v20, v10(v12 + v7, *MEMORY[0x1E699C328], v1), v10(v12 + v7 + v6, *MEMORY[0x1E699C330], v1), v10(v12 + v7 + 2 * v6, *MEMORY[0x1E699C338], v1), v13 = v23, v14 = sub_1B8B54E08(v23, v12), swift_setDeallocating(), swift_arrayDestroy(), swift_deallocClassInstance(), v14))
  {
    v15 = 1;
  }

  else
  {
    v16 = v18;
    v10(v18, *MEMORY[0x1E699C290], v1);
    v15 = MEMORY[0x1B8CC8470](v13, v16);
    (*(v19 + 8))(v16, v1);
  }

  return v15 & 1;
}

uint64_t sub_1B8B5C674(uint64_t a1, char a2)
{
  sub_1B8C23828();
  v3 = sub_1B8C23848();
  v5 = v4;
  v6 = sub_1B8B5FBCC();
  sub_1B8B54D00(v6, v7, v3, v5);
  v8 = sub_1B8C23838();
  v10 = v9;
  v11 = sub_1B8B5CA14(a2 & 1);
  v13 = v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B8B5EE34(v11, v13, v8, v10, isUniquelyReferenced_nonNull_native);

  sub_1B8C23868();
}

uint64_t sub_1B8B5CA14(int a1)
{
  v33 = a1;
  v1 = sub_1B8C237B8();
  v2 = *(v1 - 8);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65E8, &qword_1B8C2AEF0);
  v6 = *(v2 + 72);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v28 = 3 * v6;
  v30 = v5;
  v8 = swift_allocObject();
  v27 = xmmword_1B8C293F0;
  *(v8 + 16) = xmmword_1B8C293F0;
  v29 = v7;
  v9 = v8 + v7;
  v10 = *(v3 + 104);
  v10(v9, *MEMORY[0x1E699C2E0], v1);
  v10(v9 + v6, *MEMORY[0x1E699C2B0], v1);
  v11 = *MEMORY[0x1E699C308];
  v31 = 2 * v6;
  v10(v9 + 2 * v6, v11, v1);
  v12 = sub_1B8B54E08(v36, v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v12 || (v13 = v32, v10(v32, *MEMORY[0x1E699C290], v1), v14 = MEMORY[0x1B8CC8470](v36, v13), (*(v3 + 8))(v13, v1), (v14 & 1) != 0) || (v19 = v29, v20 = swift_allocObject(), *(v20 + 16) = v27, v10(v20 + v19, *MEMORY[0x1E699C328], v1), v10(v20 + v19 + v6, *MEMORY[0x1E699C330], v1), v10(v20 + v19 + v31, *MEMORY[0x1E699C338], v1), LOBYTE(v19) = sub_1B8B54E08(v36, v20), swift_setDeallocating(), swift_arrayDestroy(), swift_deallocClassInstance(), (v19 & 1) != 0))
  {
    type metadata accessor for FBKFeedbackForm();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
    v17 = sub_1B8C23348();
  }

  else
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_1B8C257E8();

    v34 = 0xD00000000000003ALL;
    v35 = 0x80000001B8C32B50;
    sub_1B8B5FB84(&qword_1EBAA6278, MEMORY[0x1E699C390], MEMORY[0x1E699C3A8]);
    v21 = sub_1B8C259E8();
    MEMORY[0x1B8CC9EB0](v21);

    v23 = v34;
    v17 = v35;
    sub_1B8B5FD80(v22, v24, v25);
    swift_allocError();
    *v26 = v23;
    v26[1] = v17;
    swift_willThrow();
  }

  return v17;
}

uint64_t sub_1B8B5CF88()
{
  v1 = *v0;
  v2 = v0[1];
  strcpy(v4, "RemapError: ");
  MEMORY[0x1B8CC9EB0](v1, v2);
  return v4[0];
}

uint64_t sub_1B8B5CFDC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

char *sub_1B8B5D0A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6690, &qword_1B8C29568);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B8B5D1AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6630, qword_1B8C2BBF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B8B5D2B8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6678, &qword_1B8C294B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B8B5D414(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA66A8, &qword_1B8C29580);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B8B5D55C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6640, &qword_1B8C29480);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B8B5D668(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6638, &qword_1B8C29478);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B8B5D784(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA66B0, &qword_1B8C2C430);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B8B5D890(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA66A0, &qword_1B8C29578);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1B8B5D9E4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1B8B5DBC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA8C30, &qword_1B8C29458);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_1B8B5DCEC(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1B8B5DD48(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1B8B5DD48(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B8B5DE14(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1B8B5FDD4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1B8B5DE14(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1B8B5DF20(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1B8C25838();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1B8B5DF20(uint64_t a1, unint64_t a2)
{
  v3 = sub_1B8B5DF6C(a1, a2);
  sub_1B8B5E09C(&unk_1F3754518);
  return v3;
}

void *sub_1B8B5DF6C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1B8C022E4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1B8C25838();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1B8C25208();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1B8C022E4(v10, 0);
        result = sub_1B8C257C8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B8B5E09C(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1B8B5E188(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1B8B5E188(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6688, &qword_1B8C294C0);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

_BYTE **sub_1B8B5E27C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_1B8B5E28C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1B8B5E2AC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_1B8B5E2DC(uint64_t a1, uint64_t a2)
{
  sub_1B8C25AB8();
  sub_1B8C251B8();
  v4 = sub_1B8C25AF8();

  return sub_1B8B5E604(a1, a2, v4);
}

unint64_t sub_1B8B5E354(uint64_t a1, uint64_t a2)
{
  sub_1B8C25AB8();
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v4 = 3;
        goto LABEL_15;
      case 4:
        v4 = 4;
        goto LABEL_15;
      case 5:
        v4 = 5;
        goto LABEL_15;
    }

LABEL_12:
    MEMORY[0x1B8CCA790](6);
    sub_1B8C251B8();
    goto LABEL_16;
  }

  if (!a2)
  {
    v4 = 0;
    goto LABEL_15;
  }

  if (a2 == 1)
  {
    v4 = 1;
    goto LABEL_15;
  }

  if (a2 != 2)
  {
    goto LABEL_12;
  }

  v4 = 2;
LABEL_15:
  MEMORY[0x1B8CCA790](v4);
LABEL_16:
  v5 = sub_1B8C25AF8();

  return sub_1B8B5E6BC(a1, a2, v5);
}

unint64_t sub_1B8B5E458(uint64_t a1)
{
  v1 = a1;
  sub_1B8C25AB8();
  MEMORY[0x1B8CCA790](v1);
  v2 = sub_1B8C25AF8();

  return sub_1B8B5E950(v1, v2);
}

uint64_t sub_1B8B5E4C4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

unint64_t sub_1B8B5E4D8(uint64_t a1)
{
  sub_1B8C25128();
  sub_1B8C25AB8();
  sub_1B8C251B8();
  v2 = sub_1B8C25AF8();

  return sub_1B8B5E9C0(a1, v2);
}

unint64_t sub_1B8B5E56C(uint64_t a1)
{
  sub_1B8C23A08();
  sub_1B8B5FB84(&qword_1EBAA85E0, MEMORY[0x1E699C658], MEMORY[0x1E699C660]);
  v2 = sub_1B8C250B8();

  return sub_1B8B5EAC4(a1, v2);
}

unint64_t sub_1B8B5E604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1B8C25A08())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B8B5E6BC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return v5;
  }

  v8 = ~v4;
  while (1)
  {
    v9 = (*(v3 + 48) + 16 * v5);
    v10 = *v9;
    v11 = v9[1];
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:
          if (a2 == 3)
          {
            v15 = *v9;
            v16 = 3;
            goto LABEL_41;
          }

          sub_1B8B5FB10(a1, a2);
          v12 = 3;
          goto LABEL_24;
        case 4:
          if (a2 == 4)
          {
            v15 = *v9;
            v16 = 4;
            goto LABEL_41;
          }

          sub_1B8B5FB10(a1, a2);
          v12 = 4;
          goto LABEL_24;
        case 5:
          if (a2 == 5)
          {
            v15 = *v9;
            v16 = 5;
            goto LABEL_41;
          }

          sub_1B8B5FB10(a1, a2);
          v12 = 5;
          goto LABEL_24;
      }
    }

    else
    {
      switch(v11)
      {
        case 0:
          if (!a2)
          {
            v15 = *v9;
            v16 = 0;
            goto LABEL_41;
          }

          sub_1B8B5FB10(a1, a2);
          v12 = 0;
          goto LABEL_24;
        case 1:
          if (a2 == 1)
          {
            v15 = *v9;
            v16 = 1;
            goto LABEL_41;
          }

          sub_1B8B5FB10(a1, a2);
          v12 = 1;
          goto LABEL_24;
        case 2:
          if (a2 == 2)
          {
            v15 = *v9;
            v16 = 2;
            goto LABEL_41;
          }

          sub_1B8B5FB10(a1, a2);
          v12 = 2;
          goto LABEL_24;
      }
    }

    if (a2 < 6)
    {
      sub_1B8B5FB10(a1, a2);
      sub_1B8B5FB10(v10, v11);
      v12 = v11;
LABEL_24:
      sub_1B8B5E4C4(v10, v12);
      sub_1B8B5E4C4(a1, a2);
      goto LABEL_25;
    }

    if (v10 == a1 && v11 == a2)
    {
      break;
    }

    v14 = sub_1B8C25A08();
    sub_1B8B5FB10(a1, a2);
    sub_1B8B5FB10(v10, v11);
    sub_1B8B5E4C4(v10, v11);
    sub_1B8B5E4C4(a1, a2);
    if (v14)
    {
      return v5;
    }

LABEL_25:
    v5 = (v5 + 1) & v8;
    if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return v5;
    }
  }

  sub_1B8B5FB10(a1, a2);
  sub_1B8B5FB10(a1, a2);
  v15 = a1;
  v16 = a2;
LABEL_41:
  sub_1B8B5E4C4(v15, v16);
  sub_1B8B5E4C4(a1, a2);
  return v5;
}

unint64_t sub_1B8B5E950(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1B8B5E9C0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1B8C25128();
      v8 = v7;
      if (v6 == sub_1B8C25128() && v8 == v9)
      {
        break;
      }

      v11 = sub_1B8C25A08();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

unint64_t sub_1B8B5EAC4(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1B8C23A08();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1B8B5FB84(&qword_1EBAA6610, MEMORY[0x1E699C658], MEMORY[0x1E699C668]);
      v15 = sub_1B8C250E8();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_1B8B5EC84(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B8C256F8() + 1) & ~v5;
    do
    {
      sub_1B8C25AB8();

      sub_1B8C251B8();
      v9 = sub_1B8C25AF8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1B8B5EE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1B8B5E2DC(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_1B8B94220();
      v13 = v21;
      goto LABEL_8;
    }

    sub_1B8B92AF4(v18, a5 & 1);
    v13 = sub_1B8B5E2DC(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      sub_1B8C25A58();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_1B8B940E8(v13, a3, a4, a1, a2, v23);
  }
}

unint64_t sub_1B8B5EF84(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B8B5E458(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B8B94398();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B8B92DB4(v16, a4 & 1);
    v11 = sub_1B8B5E458(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1B8C25A58();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    return sub_1B8B94138(v11, a3, a1, a2, v21);
  }
}

void sub_1B8B5F0C4(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B8B5E354(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B8B94514();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B8B93050(v16, a4 & 1);
    v11 = sub_1B8B5E354(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1B8C25A58();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_1B8B94180(v11, a2, a3, a1, v21);

    sub_1B8B5FB10(a2, a3);
  }
}

void sub_1B8B5F210(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B8B5E2DC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B8B94684();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B8B93390(v16, a4 & 1);
    v11 = sub_1B8B5E2DC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1B8C25A58();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_1B8B94180(v11, a2, a3, a1, v21);
  }
}

void sub_1B8B5F358(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B8B5E2DC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B8B94A74();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B8B939B8(v16, a4 & 1);
    v11 = sub_1B8B5E2DC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1B8C25A58();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + (v11 << 6);

    sub_1B8B5FB28(a1, v22);
  }

  else
  {
    sub_1B8B941C8(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_1B8B5F49C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6628, &unk_1B8C2BCB0);
    v3 = sub_1B8C258E8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1B8B5E2DC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B8B5F5B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6608, &qword_1B8C2BC60);
    v3 = sub_1B8C258E8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1B8B5FB10(v5, v6);

      result = sub_1B8B5E354(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B8B5F6B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6680, &qword_1B8C294B8);
  v3 = sub_1B8C258E8();
  LOBYTE(v4) = *(a1 + 32);
  v14 = *(a1 + 40);
  result = sub_1B8B5E458(v4);
  v6 = v14;
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 16 * result) = v6;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = (v8 + 24);
    v4 = *(v8 - 8);
    v15 = *v8;

    result = sub_1B8B5E458(v4);
    v8 = v12;
    v6 = v15;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B8B5F7EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6648, &qword_1B8C29488);
    v3 = sub_1B8C258E8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1B8B5E4D8(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B8B5F8E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7830, &unk_1B8C2C9E0);
    v3 = sub_1B8C258E8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B8B34450(v4, &v11, &qword_1EBAA66C0, qword_1B8C29590);
      v5 = v11;
      result = sub_1B8B5E4D8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1B8B5FE40(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B8B5FA0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6600, &qword_1B8C29450);
    v3 = sub_1B8C258E8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1B8B5E2DC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

double sub_1B8B5FB10(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_1B8B5FB84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B8B5FBCC()
{
  if (sub_1B8B5C388())
  {
    type metadata accessor for FBKFeedbackForm();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v1 = [objc_opt_self() bundleForClass_];
    v2 = sub_1B8C23348();
  }

  else
  {
    sub_1B8C257E8();

    sub_1B8C237B8();
    sub_1B8B5FB84(&qword_1EBAA6278, MEMORY[0x1E699C390], MEMORY[0x1E699C3A8]);
    v3 = sub_1B8C259E8();
    MEMORY[0x1B8CC9EB0](v3);

    v2 = 0xD00000000000003ALL;
    sub_1B8B5FD80(v4, v5, v6);
    swift_allocError();
    *v7 = 0xD00000000000003ALL;
    v7[1] = 0x80000001B8C32F10;
    swift_willThrow();
  }

  return v2;
}

unint64_t sub_1B8B5FD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA6660;
  if (!qword_1EBAA6660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6660);
  }

  return result;
}

uint64_t sub_1B8B5FDD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_1B8B5FE40(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1B8B5FE50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v86 = a2;
  v85 = type metadata accessor for AnalyticsEvent(0);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v74 - v7;
  v9 = sub_1B8C23498();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v80 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v79 = &v74 - v13;
  v78 = sub_1B8C23568();
  v14 = *(v78 - 1);
  MEMORY[0x1EEE9AC00](v78);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6730, &unk_1B8C29638);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v74 - v18;
  v20 = type metadata accessor for FullScreenPreviewController.Content.PreviewType(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B8B614D8(a1, v22);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1B8B615B8(v22, type metadata accessor for FullScreenPreviewController.Content.PreviewType);
    v52 = type metadata accessor for FullScreenPreviewController.Content(0);
    sub_1B8B614D8(a1, &v19[*(v52 + 20)]);
    sub_1B8C23558();
    (*(*(v52 - 8) + 56))(v19, 0, 1, v52);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v74 - 2) = v3;
    *(&v74 - 1) = v19;
    v87[0] = v3;
    sub_1B8B61570(&qword_1EBAA6148, type metadata accessor for FullScreenPreviewController, &unk_1B8C29618);
    sub_1B8C23578();

    sub_1B8B3433C(v19, &qword_1EBAA6730, &unk_1B8C29638);
    (*(v10 + 56))(v8, 1, 1, v9);
    sub_1B8B60D08(v8);
LABEL_7:
    v54 = sub_1B8C237B8();
    v55 = v84;
    (*(*(v54 - 8) + 16))(v84, v86, v54);
    swift_storeEnumTagMultiPayload();
    sub_1B8C03B68();
    return sub_1B8B615B8(v55, type metadata accessor for AnalyticsEvent);
  }

  v76 = v8;
  v82 = v10;
  v83 = v9;
  v81 = *v22;
  v23 = type metadata accessor for FullScreenPreviewController.Content(0);
  (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
  v24 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v24);
  *(&v74 - 2) = v3;
  *(&v74 - 1) = v19;
  v87[0] = v3;
  sub_1B8B61570(&qword_1EBAA6148, type metadata accessor for FullScreenPreviewController, &unk_1B8C29618);
  v77 = v3;
  v25 = 0;
  sub_1B8C23578();

  sub_1B8B3433C(v19, &qword_1EBAA6730, &unk_1B8C29638);
  v26 = NSTemporaryDirectory();
  v27 = sub_1B8C25128();
  v29 = v28;

  sub_1B8C23558();
  v30 = sub_1B8C23538();
  v32 = v31;
  (*(v14 + 8))(v16, v78);
  v87[0] = v27;
  v87[1] = v29;
  MEMORY[0x1B8CC9EB0](v30, v32);

  MEMORY[0x1B8CC9EB0](1735290926, 0xE400000000000000);
  v33 = v79;
  sub_1B8C233C8();

  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v34 = sub_1B8C23C38();
  __swift_project_value_buffer(v34, qword_1EBAB3A30);
  v36 = v82;
  v35 = v83;
  v37 = v80;
  v78 = *(v82 + 16);
  v78(v80, v33, v83);
  v38 = sub_1B8C23C18();
  v39 = sub_1B8C25468();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = v37;
    v75 = 0;
    v42 = v33;
    v43 = v40;
    v44 = swift_slowAlloc();
    v87[0] = v44;
    *v43 = 136315138;
    v45 = sub_1B8C233B8();
    v47 = v46;
    v80 = *(v82 + 8);
    (v80)(v41, v83);
    v48 = sub_1B8B5DD48(v45, v47, v87);
    v36 = v82;

    *(v43 + 4) = v48;
    _os_log_impl(&dword_1B8B22000, v38, v39, "Will store quicklook item in temp location: %s", v43, 0xCu);
    v49 = __swift_destroy_boxed_opaque_existential_0(v44);
    v50 = v44;
    v35 = v83;
    MEMORY[0x1B8CCB0E0](v50, -1, -1, v49);
    v51 = v43;
    v33 = v42;
    v25 = v75;
    MEMORY[0x1B8CCB0E0](v51, -1, -1);
  }

  else
  {

    v80 = *(v36 + 8);
    (v80)(v37, v35);
  }

  v57 = UIImagePNGRepresentation(v81);
  if (!v57)
  {
    v70 = sub_1B8C23C18();
    v71 = sub_1B8C25478();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_1B8B22000, v70, v71, "Failed to generate PNG data", v72, 2u);
      MEMORY[0x1B8CCB0E0](v72, -1, -1);
    }

    return (v80)(v33, v35);
  }

  v58 = v57;
  v59 = sub_1B8C234B8();
  v61 = v60;

  sub_1B8C234C8();
  if (!v25)
  {
    v73 = v76;
    v78(v76, v33, v35);
    (*(v36 + 56))(v73, 0, 1, v35);
    sub_1B8B60D08(v73);
    sub_1B8B4645C(v59, v61);

    (v80)(v33, v35);
    goto LABEL_7;
  }

  v62 = v25;
  v63 = sub_1B8C23C18();
  v64 = sub_1B8C25478();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v65 = 138543362;
    v67 = v25;
    v68 = _swift_stdlib_bridgeErrorToNSError();
    *(v65 + 4) = v68;
    *v66 = v68;
    _os_log_impl(&dword_1B8B22000, v63, v64, "Failed to write url: %{public}@", v65, 0xCu);
    sub_1B8B3433C(v66, &qword_1EBAA69A0, &qword_1B8C29670);
    MEMORY[0x1B8CCB0E0](v66, -1, -1);
    v69 = v65;
    v35 = v83;
    MEMORY[0x1B8CCB0E0](v69, -1, -1);
  }

  sub_1B8B4645C(v59, v61);

  return (v80)(v33, v35);
}

uint64_t sub_1B8B60900(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6730, &unk_1B8C29638);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-v5];
  sub_1B8B34450(a1, &v9[-v5], &qword_1EBAA6730, &unk_1B8C29638);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1B8B61570(&qword_1EBAA6148, type metadata accessor for FullScreenPreviewController, &unk_1B8C29618);
  sub_1B8C23578();

  return sub_1B8B3433C(v6, &qword_1EBAA6730, &unk_1B8C29638);
}

uint64_t sub_1B8B60A74@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v12 = v5;
  sub_1B8B61570(&qword_1EBAA6148, type metadata accessor for FullScreenPreviewController, &unk_1B8C29618);
  sub_1B8C23588();

  v10 = *a2;
  swift_beginAccess();
  return sub_1B8B34450(v12 + v10, a5, a3, a4);
}

uint64_t sub_1B8B60B78@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  swift_getKeyPath();
  sub_1B8B61570(&qword_1EBAA6148, type metadata accessor for FullScreenPreviewController, &unk_1B8C29618);
  sub_1B8C23588();

  v11 = *a3;
  swift_beginAccess();
  return sub_1B8B34450(v10 + v11, a6, a4, a5);
}

uint64_t sub_1B8B60C5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1B8B34450(a1, &v6 - v3, &qword_1EBAA85A0, &qword_1B8C28C20);
  return sub_1B8B60D08(v4);
}

uint64_t sub_1B8B60D08(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC8Feedback27FullScreenPreviewController__quickLookPreviewURL;
  swift_beginAccess();
  sub_1B8B34450(v1 + v6, v5, &qword_1EBAA85A0, &qword_1B8C28C20);
  v7 = sub_1B8B61618(v5, a1);
  sub_1B8B3433C(v5, &qword_1EBAA85A0, &qword_1B8C28C20);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1B8B61570(&qword_1EBAA6148, type metadata accessor for FullScreenPreviewController, &unk_1B8C29618);
    sub_1B8C23578();
  }

  else
  {
    swift_beginAccess();
    sub_1B8B6196C(a1, v1 + v6, &qword_1EBAA85A0, &qword_1B8C28C20);
    swift_endAccess();
  }

  return sub_1B8B3433C(a1, &qword_1EBAA85A0, &qword_1B8C28C20);
}

uint64_t sub_1B8B60F04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a3;
  swift_beginAccess();
  sub_1B8B6196C(a2, a1 + v9, a4, a5);
  return swift_endAccess();
}

uint64_t sub_1B8B60F84()
{
  sub_1B8B3433C(v0 + OBJC_IVAR____TtC8Feedback27FullScreenPreviewController__content, &qword_1EBAA6730, &unk_1B8C29638);
  sub_1B8B3433C(v0 + OBJC_IVAR____TtC8Feedback27FullScreenPreviewController__quickLookPreviewURL, &qword_1EBAA85A0, &qword_1B8C28C20);
  v1 = OBJC_IVAR____TtC8Feedback27FullScreenPreviewController___observationRegistrar;
  v2 = sub_1B8C235C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1B8B61088(uint64_t a1)
{
  sub_1B8B6120C(319, &qword_1EBAA66F0, type metadata accessor for FullScreenPreviewController.Content, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B8B6120C(319, &qword_1EBAA66F8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B8C235C8();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B8B6120C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1B8B612B8(uint64_t a1)
{
  result = sub_1B8C23568();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FullScreenPreviewController.Content.PreviewType(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B8B6133C(uint64_t a1)
{
  sub_1B8C23328();
  if (v1 <= 0x3F)
  {
    sub_1B8B61444();
    if (v2 <= 0x3F)
    {
      sub_1B8B6120C(319, &qword_1EBAA6720, type metadata accessor for CatchUpDonationDecoder.Result.Mail, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1B8B6120C(319, &qword_1EBAA6728, type metadata accessor for CatchUpDonationDecoder.Result.Message, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1B8B61444()
{
  result = qword_1EBAA6220;
  if (!qword_1EBAA6220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBAA6220);
  }

  return result;
}

uint64_t sub_1B8B614D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FullScreenPreviewController.Content.PreviewType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B61570(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B8B615B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B8B61618(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C23498();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6738, &qword_1B8C296A0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1B8B34450(a1, &v21 - v13, &qword_1EBAA85A0, &qword_1B8C28C20);
  sub_1B8B34450(a2, &v14[v15], &qword_1EBAA85A0, &qword_1B8C28C20);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1B8B34450(v14, v10, &qword_1EBAA85A0, &qword_1B8C28C20);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1B8B61570(&qword_1EBAA63A0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v18 = sub_1B8C250E8();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1B8B3433C(v14, &qword_1EBAA85A0, &qword_1B8C28C20);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1B8B3433C(v14, &qword_1EBAA6738, &qword_1B8C296A0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1B8B3433C(v14, &qword_1EBAA85A0, &qword_1B8C28C20);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1B8B6196C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

void sub_1B8B619D4(uint64_t a1)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1B8C23498();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  sub_1B8C23458();
  v7 = sub_1B8C250F8();

  v8 = [v6 fileExistsAtPath_];

  if (v8)
  {
    v9 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
    v10 = sub_1B8C233E8();
    v31[0] = 0;
    v11 = [v9 removeItemAtURL:v10 error:v31];

    v12 = v31[0];
    if (v11)
    {

      v13 = v12;
    }

    else
    {
      v30 = v31[0];
      v14 = v31[0];
      v15 = sub_1B8C23368();

      swift_willThrow();
      if (qword_1EBAA5978 != -1)
      {
        swift_once();
      }

      v16 = sub_1B8C23C38();
      __swift_project_value_buffer(v16, qword_1EBAB3A30);
      (*(v3 + 16))(v5, a1, v2);
      v17 = v15;
      v18 = sub_1B8C23C18();
      v19 = sub_1B8C25478();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31[0] = v30;
        *v20 = 136315394;
        sub_1B8B61570(&qword_1EBAA63C0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v22 = sub_1B8C259E8();
        v24 = v23;
        (*(v3 + 8))(v5, v2);
        v25 = sub_1B8B5DD48(v22, v24, v31);

        *(v20 + 4) = v25;
        *(v20 + 12) = 2114;
        v26 = v15;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v20 + 14) = v27;
        *v21 = v27;
        _os_log_impl(&dword_1B8B22000, v18, v19, "Failed to delete file at: %s - %{public}@", v20, 0x16u);
        sub_1B8B3433C(v21, &qword_1EBAA69A0, &qword_1B8C29670);
        MEMORY[0x1B8CCB0E0](v21, -1, -1);
        v28 = v30;
        v29 = __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x1B8CCB0E0](v28, -1, -1, v29);
        MEMORY[0x1B8CCB0E0](v20, -1, -1);
      }

      else
      {

        (*(v3 + 8))(v5, v2);
      }
    }
  }
}

uint64_t sub_1B8B61E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v25 = sub_1B8C25028();
  v10 = *(v25 - 8);
  v11 = MEMORY[0x1EEE9AC00](v25);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  v16 = sub_1B8C24FD8();
  MEMORY[0x1EEE9AC00](v16);
  v26 = a2;
  v27 = a3;
  result = sub_1B8C23F08();
  if (a4)
  {
    if (qword_1EBAA6740)
    {
      sub_1B8B247D4(a4, a5);

      sub_1B8C25048();
    }

    else
    {
    }

    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;
    aBlock[4] = sub_1B8B621CC;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B8B8B9F4;
    aBlock[3] = &block_descriptor;
    _Block_copy(aBlock);
    v28 = MEMORY[0x1E69E7CC0];
    sub_1B8B6220C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
    sub_1B8B62264();
    sub_1B8C256D8();
    sub_1B8C25058();
    swift_allocObject();
    v19 = sub_1B8C25038();

    qword_1EBAA6740 = v19;

    sub_1B8B622C8();
    v20 = sub_1B8C25538();
    sub_1B8C25018();
    sub_1B8C25078();
    v21 = *(v10 + 8);
    v22 = v13;
    v23 = v25;
    v21(v22, v25);
    sub_1B8C25508();

    sub_1B8B30A44(a4, a5);
    return (v21)(v15, v23);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1B8B6220C()
{
  result = qword_1EBAA69C0;
  if (!qword_1EBAA69C0)
  {
    sub_1B8C24FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA69C0);
  }

  return result;
}

unint64_t sub_1B8B62264()
{
  result = qword_1EBAA69D0;
  if (!qword_1EBAA69D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA69D0);
  }

  return result;
}

unint64_t sub_1B8B622C8()
{
  result = qword_1EBAA69B0;
  if (!qword_1EBAA69B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBAA69B0);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B8B62328(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B8B62370(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1B8B623E8@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v13 = *a1;
  sub_1B8B34CA8(a1, a2, a3);

  v5 = sub_1B8C249E8();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_1B8C24F48();
  sub_1B8C24088();
  *a4 = v5;
  *(a4 + 8) = v7;
  *(a4 + 16) = v9 & 1;
  *(a4 + 24) = v11;
  *(a4 + 96) = v17;
  *(a4 + 112) = v18;
  *(a4 + 128) = v19;
  *(a4 + 32) = v13;
  *(a4 + 48) = v14;
  result = v16;
  *(a4 + 64) = v15;
  *(a4 + 80) = v16;
  return result;
}

uint64_t sub_1B8B624E0@<X0>(void *a1@<X8>)
{
  v61 = a1;
  v59 = sub_1B8C24438();
  v52 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v51 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6748, &qword_1B8C29740);
  v54 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v53 = &v46 - v3;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6750, &qword_1B8C29748);
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v46 - v4;
  v5 = sub_1B8C246F8();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6758, &qword_1B8C29750);
  MEMORY[0x1EEE9AC00](v56);
  v9 = &v46 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6760, &qword_1B8C29758);
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v11 = &v46 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6768, &qword_1B8C29760);
  MEMORY[0x1EEE9AC00](v55);
  v13 = &v46 - v12;
  v14 = *(v1 + 40);
  v62 = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6770, &qword_1B8C29768);
  sub_1B8B62D94();
  sub_1B8C24DB8();
  if (v14)
  {
    v15 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6780, &qword_1B8C29770) + 36)];
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6788, &qword_1B8C2FC10) + 28);
    v17 = *MEMORY[0x1E697DC10];
    v18 = sub_1B8C23D88();
    (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
    *v15 = swift_getKeyPath();
    v19 = *(v1 + 16);
    KeyPath = swift_getKeyPath();
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    v22 = v56;
    v23 = &v9[*(v56 + 36)];
    *v23 = KeyPath;
    v23[1] = sub_1B8B38834;
    v23[2] = v21;
    v24 = v51;
    sub_1B8C24428();
    v25 = sub_1B8B62F04();
    v26 = sub_1B8B63290(&qword_1EBAA67C8, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
    v27 = v53;
    v28 = v59;
    sub_1B8C24A68();
    (*(v52 + 8))(v24, v28);
    sub_1B8B630A0(v9);
    v29 = v54;
    v30 = v60;
    (*(v54 + 16))(v58, v27, v60);
    swift_storeEnumTagMultiPayload();
    sub_1B8B63108();
    v63 = v22;
    v64 = v28;
    v65 = v25;
    v66 = v26;
    swift_getOpaqueTypeConformance2();
    sub_1B8C24598();
    return (*(v29 + 8))(v27, v30);
  }

  else
  {
    v32 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6780, &qword_1B8C29770) + 36)];
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6788, &qword_1B8C2FC10) + 28);
    v34 = *MEMORY[0x1E697DC10];
    v35 = sub_1B8C23D88();
    (*(*(v35 - 8) + 104))(v32 + v33, v34, v35);
    *v32 = swift_getKeyPath();
    v36 = *(v1 + 16);
    v37 = swift_getKeyPath();
    v38 = swift_allocObject();
    *(v38 + 16) = v36;
    v39 = v56;
    v40 = &v9[*(v56 + 36)];
    *v40 = v37;
    v40[1] = sub_1B8B38AE0;
    v40[2] = v38;
    sub_1B8C246E8();
    v41 = sub_1B8B62F04();
    v42 = sub_1B8B63290(&qword_1EBAA5ED8, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
    v43 = v50;
    sub_1B8C24A68();
    (*(v49 + 8))(v7, v43);
    sub_1B8B630A0(v9);
    v63 = v39;
    v64 = v43;
    v65 = v41;
    v66 = v42;
    swift_getOpaqueTypeConformance2();
    v44 = v48;
    sub_1B8C24BC8();
    (*(v47 + 8))(v11, v44);
    *&v13[*(v55 + 36)] = sub_1B8C24CB8();
    sub_1B8B270D0(v13, v58);
    swift_storeEnumTagMultiPayload();
    sub_1B8B63108();
    v45 = sub_1B8B63290(&qword_1EBAA67C8, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
    v63 = v39;
    v64 = v59;
    v65 = v41;
    v66 = v45;
    swift_getOpaqueTypeConformance2();
    sub_1B8C24598();
    return sub_1B8B27140(v13);
  }
}

unint64_t sub_1B8B62D94()
{
  result = qword_1EBAA6778;
  if (!qword_1EBAA6778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6770, &qword_1B8C29768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6778);
  }

  return result;
}

uint64_t sub_1B8B62E3C(uint64_t a1)
{
  v2 = sub_1B8C23D88();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return MEMORY[0x1B8CC8DB0](v4);
}

unint64_t sub_1B8B62F04()
{
  result = qword_1EBAA6790;
  if (!qword_1EBAA6790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6758, &qword_1B8C29750);
    sub_1B8B62FBC();
    sub_1B8B34CFC(&qword_1EBAA67B8, &qword_1EBAA67C0, &qword_1B8C297E0, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6790);
  }

  return result;
}

unint64_t sub_1B8B62FBC()
{
  result = qword_1EBAA6798;
  if (!qword_1EBAA6798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6780, &qword_1B8C29770);
    sub_1B8B34CFC(&qword_1EBAA67A0, &qword_1EBAA67A8, &qword_1B8C297D8, MEMORY[0x1E697D680]);
    sub_1B8B34CFC(&qword_1EBAA67B0, &qword_1EBAA6788, &qword_1B8C2FC10, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6798);
  }

  return result;
}

uint64_t sub_1B8B630A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6758, &qword_1B8C29750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B8B63108()
{
  result = qword_1EBAA67D0;
  if (!qword_1EBAA67D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6768, &qword_1B8C29760);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6760, &qword_1B8C29758);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6758, &qword_1B8C29750);
    sub_1B8C246F8();
    sub_1B8B62F04();
    sub_1B8B63290(&qword_1EBAA5ED8, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1B8B34CFC(&qword_1EBAA6A40, &qword_1EBAA5F98, qword_1B8C29DF0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA67D0);
  }

  return result;
}

uint64_t sub_1B8B63290(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B8B632E8()
{
  result = qword_1EBAA67D8;
  if (!qword_1EBAA67D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA67E0, qword_1B8C297F0);
    sub_1B8B63108();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6758, &qword_1B8C29750);
    sub_1B8C24438();
    sub_1B8B62F04();
    sub_1B8B63290(&qword_1EBAA67C8, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA67D8);
  }

  return result;
}

unint64_t sub_1B8B6340C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA67E8;
  if (!qword_1EBAA67E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA67E8);
  }

  return result;
}

uint64_t type metadata accessor for ImageWithPreview(uint64_t a1)
{
  result = qword_1EBAA67F0;
  if (!qword_1EBAA67F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8B634D8(uint64_t a1)
{
  sub_1B8B61444();
  if (v1 <= 0x3F)
  {
    sub_1B8C237B8();
    if (v2 <= 0x3F)
    {
      sub_1B8B63574(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8B63574(uint64_t a1)
{
  if (!qword_1EBAA6800)
  {
    type metadata accessor for FullScreenPreviewController(255);
    v1 = sub_1B8C23D98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBAA6800);
    }
  }
}

uint64_t sub_1B8B635E8(void **a1)
{
  v2 = type metadata accessor for FullScreenPreviewController.Content.PreviewType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1B8C242A8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ImageWithPreview(0);
  v10 = *(a1 + *(v9 + 24) + 8);

  if ((v10 & 1) == 0)
  {
    sub_1B8C25488();
    v11 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
  }

  v12 = *a1;
  *v4 = *a1;
  swift_storeEnumTagMultiPayload();
  v13 = *(v9 + 20);
  v14 = v12;
  sub_1B8B5FE50(v4, a1 + v13);

  return sub_1B8B63E2C(v4);
}

double sub_1B8B637D8@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B8C242E8();
  v25 = 1;
  sub_1B8B63964(a1, &v13);
  v34 = v21;
  v35 = v22;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v33 = v20;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v37[8] = v21;
  v37[9] = v22;
  v37[4] = v17;
  v37[5] = v18;
  v37[6] = v19;
  v37[7] = v20;
  v37[0] = v13;
  v37[1] = v14;
  v36 = v23;
  v38 = v23;
  v37[2] = v15;
  v37[3] = v16;
  sub_1B8B34450(&v26, &v12, &qword_1EBAA6818, &qword_1B8C298E0);
  sub_1B8B3433C(v37, &qword_1EBAA6818, &qword_1B8C298E0);
  *&v24[119] = v33;
  *&v24[135] = v34;
  *&v24[151] = v35;
  *&v24[55] = v29;
  *&v24[71] = v30;
  *&v24[87] = v31;
  *&v24[103] = v32;
  *&v24[7] = v26;
  *&v24[23] = v27;
  *&v24[39] = v28;
  v5 = *&v24[96];
  *(a2 + 129) = *&v24[112];
  v6 = *&v24[144];
  *(a2 + 145) = *&v24[128];
  *(a2 + 161) = v6;
  v7 = *&v24[32];
  *(a2 + 65) = *&v24[48];
  v8 = *&v24[80];
  *(a2 + 81) = *&v24[64];
  *(a2 + 97) = v8;
  *(a2 + 113) = v5;
  result = *v24;
  v10 = *&v24[16];
  *(a2 + 17) = *v24;
  *(a2 + 33) = v10;
  v24[167] = v36;
  v11 = v25;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  *(a2 + 177) = *&v24[160];
  *(a2 + 49) = v7;
  return result;
}

uint64_t sub_1B8B63964@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1B8C24F48();
  sub_1B8C24088();
  *&v30[54] = v32[3];
  *&v30[70] = v32[4];
  *&v30[86] = v32[5];
  *&v30[102] = v33;
  *&v30[6] = v32[0];
  *&v30[22] = v32[1];
  *&v30[38] = v32[2];
  v19[0] = v3;
  v19[1] = 0;
  *v20 = 1;
  v4 = *&v30[32];
  *&v20[50] = *&v30[48];
  v5 = *&v30[16];
  *&v20[34] = *&v30[32];
  v6 = *v30;
  *&v20[18] = *&v30[16];
  *&v20[2] = *v30;
  *&v20[112] = *(&v33 + 1);
  v7 = *&v30[80];
  *&v20[98] = *&v30[96];
  v8 = *&v30[64];
  *&v20[82] = *&v30[80];
  v9 = *&v30[48];
  *&v20[66] = *&v30[64];
  *&v17[7] = v3;
  *&v17[71] = *&v20[48];
  *&v17[55] = *&v20[32];
  *&v17[39] = *&v20[16];
  *&v17[23] = *v20;
  *&v17[135] = *&v20[112];
  *&v17[119] = *&v20[96];
  *&v17[103] = *&v20[80];
  *&v17[87] = *&v20[64];
  v10 = *&v17[64];
  *(a2 + 89) = *&v17[80];
  v11 = *&v17[112];
  *(a2 + 105) = *&v17[96];
  *(a2 + 121) = v11;
  *(a2 + 136) = *&v17[127];
  v12 = *v17;
  *(a2 + 25) = *&v17[16];
  v13 = *&v17[48];
  *(a2 + 41) = *&v17[32];
  *(a2 + 57) = v13;
  *(a2 + 73) = v10;
  *(a2 + 9) = v12;
  v27 = v8;
  v28 = v7;
  *v29 = *&v30[96];
  v31 = 1;
  v18 = 1;
  v16[136] = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 152) = 0;
  *(a2 + 160) = 1;
  v21[0] = v3;
  v21[1] = 0;
  v22 = 1;
  *&v29[14] = *&v30[110];
  v23 = v6;
  v24 = v5;
  v25 = v4;
  v26 = v9;
  v14 = v3;
  sub_1B8B34450(v19, v16, &qword_1EBAA6820, &qword_1B8C298E8);
  return sub_1B8B3433C(v21, &qword_1EBAA6820, &qword_1B8C298E8);
}

uint64_t sub_1B8B63B94(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1B8B63CFC(v1, &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_1B8B63D60(&v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v5 + v4);
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6808, &qword_1B8C298D8);
  sub_1B8B34CFC(&qword_1EBAA6810, &qword_1EBAA6808, &qword_1B8C298D8, MEMORY[0x1E69817F8]);
  return sub_1B8C24DB8();
}

uint64_t sub_1B8B63CFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageWithPreview(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B63D60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageWithPreview(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B63DC4()
{
  v1 = *(type metadata accessor for ImageWithPreview(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1B8B635E8(v2);
}

uint64_t sub_1B8B63E2C(uint64_t a1)
{
  v2 = type metadata accessor for FullScreenPreviewController.Content.PreviewType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8B63E88@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_1EBAA6838);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1B8B621CC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1B8B247D4(v4, v5);
}

uint64_t sub_1B8B63F28(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B8B6487C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_1EBAA6838);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1B8B247D4(v3, v4);
  return sub_1B8B30A44(v8, v9);
}

uint64_t sub_1B8B63FF0()
{
  v1 = (v0 + qword_1EBAA6838);
  swift_beginAccess();
  v2 = *v1;
  sub_1B8B247D4(*v1, v1[1]);
  return v2;
}

uint64_t sub_1B8B6404C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EBAA6838);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1B8B30A44(v6, v7);
}

char *BatchEvaluationViewController.__allocating_init(scoreController:useNavigationStack:showsCloseButton:onDismiss:)(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_allocWithZone(v5);
  v10 = &v9[qword_1EBAA6838];
  type metadata accessor for BatchController(0);
  *v10 = 0;
  *(v10 + 1) = 0;
  swift_allocObject();
  sub_1B8B504A0(a1);
  sub_1B8C24D58();
  v11 = sub_1B8C244B8();
  v12 = &v11[qword_1EBAA6838];
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  *v12 = a4;
  v12[1] = a5;
  v15 = v11;

  sub_1B8B30A44(v13, v14);
  [v15 setModalInPresentation_];

  return v15;
}

char *BatchEvaluationViewController.init(scoreController:useNavigationStack:showsCloseButton:onDismiss:)(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = (v5 + qword_1EBAA6838);
  type metadata accessor for BatchController(0);
  *v9 = 0;
  v9[1] = 0;
  swift_allocObject();
  sub_1B8B504A0(a1);
  sub_1B8C24D58();
  v10 = sub_1B8C244B8();
  v11 = &v10[qword_1EBAA6838];
  swift_beginAccess();
  v12 = *v11;
  v13 = v11[1];
  *v11 = a4;
  v11[1] = a5;
  v14 = v10;

  sub_1B8B30A44(v12, v13);
  [v14 setModalInPresentation_];

  return v14;
}

void sub_1B8B64388(uint64_t a1)
{
  v1 = (a1 + qword_1EBAA6838);
  *v1 = 0;
  v1[1] = 0;
  sub_1B8C258A8();
  __break(1u);
}

double sub_1B8B643F8(int a1, int a2, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  _s8Feedback29BatchEvaluationViewControllerC010shouldShowB2UI10completionyySbc_tFZ_0(sub_1B8B64864, v4);

  return result;
}

id sub_1B8B6446C(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for BatchEvaluationViewController(0);
  objc_msgSendSuper2(&v8, sel_viewWillDisappear_, a1 & 1);
  result = [v1 isBeingDismissed];
  if (result)
  {
    v4 = &v1[qword_1EBAA6838];
    result = swift_beginAccess();
    v5 = *v4;
    if (*v4)
    {
      v6 = *(v4 + 1);

      v5(v7);
      return sub_1B8B30A44(v5, v6);
    }
  }

  return result;
}

void sub_1B8B64518(void *a1, uint64_t a2, uint64_t a3)
{
  v9.receiver = a1;
  v9.super_class = type metadata accessor for BatchEvaluationViewController(0);
  v4 = v9.receiver;
  objc_msgSendSuper2(&v9, sel_viewWillDisappear_, a3);
  if ([v4 isBeingDismissed] && (v5 = &v4[qword_1EBAA6838], swift_beginAccess(), (v6 = *v5) != 0))
  {
    v7 = *(v5 + 1);

    v6(v8);

    sub_1B8B30A44(v6, v7);
  }

  else
  {
  }
}

id BatchEvaluationViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BatchEvaluationViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for BatchEvaluationViewController(uint64_t a1)
{
  result = qword_1EBAA6840;
  if (!qword_1EBAA6840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for ActionButton(uint64_t a1)
{
  result = qword_1EBAA6850;
  if (!qword_1EBAA6850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8B64938(uint64_t a1)
{
  type metadata accessor for BatchInteraction(319);
  if (v1 <= 0x3F)
  {
    sub_1B8B3A760(319, &qword_1EBAA5FB8, type metadata accessor for BatchController);
    if (v2 <= 0x3F)
    {
      sub_1B8B3A760(319, &qword_1EBAA5FC0, type metadata accessor for FBKEvaluationController);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B8B64A38()
{
  v1 = sub_1B8C242A8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for ActionButton(0) + 24));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_1B8C25488();
    v8 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

id sub_1B8B64B88()
{
  v1 = sub_1B8C242A8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ActionButton(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {

    return v6;
  }

  else
  {
    v10[0] = *v5;

    sub_1B8C25488();
    v8 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();
    v9 = sub_1B8B3B060(v10[0], 0);
    (*(v2 + 8))(v4, v1, v9);
    return v10[1];
  }
}

uint64_t sub_1B8B64D04()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_1B8C23348();

  return v1;
}

uint64_t sub_1B8B64E28@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = sub_1B8C23ED8();
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v43 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B8C24038();
  v38 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ActionButton(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6860, &qword_1B8C299B0);
  v37 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6868, &qword_1B8C299B8);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v14 = &v36 - v13;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6870, &qword_1B8C299C0);
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v40 = &v36 - v15;
  sub_1B8B65CA4(v1, &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = swift_allocObject();
  sub_1B8B65D08(&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v48 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6878, &qword_1B8C299C8);
  sub_1B8B34CFC(&qword_1EBAA6880, &qword_1EBAA6878, &qword_1B8C299C8, MEMORY[0x1E69817F8]);
  v18 = v1;
  sub_1B8C24DB8();
  sub_1B8C24028();
  v19 = sub_1B8B34CFC(&qword_1EBAA6888, &qword_1EBAA6860, &qword_1B8C299B0, MEMORY[0x1E697D680]);
  v20 = sub_1B8B65F8C(&qword_1EBAA59E0, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  sub_1B8C24A68();
  v21 = v4;
  (*(v38 + 8))(v6, v4);
  (*(v37 + 8))(v12, v10);
  v22 = *v18;
  if (*v18)
  {
    v23 = v43;
    if (v22 == 1)
    {
      sub_1B8C23EA8();
    }

    else
    {
      sub_1B8C23EB8();
    }
  }

  else
  {
    v23 = v43;
    sub_1B8C23EC8();
  }

  v24 = v46;
  sub_1B8C23F28();
  v51 = v10;
  v52 = v21;
  v53 = v19;
  v54 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v40;
  v26 = v41;
  sub_1B8C24AF8();
  (*(v45 + 8))(v23, v24);
  (*(v39 + 8))(v14, v26);
  if (v22 > 1)
  {
    v30 = 0xEF65636E65697265;
    v29 = 0x7078652070696B53;
  }

  else
  {
    v51 = 0;
    v52 = 0xE000000000000000;
    sub_1B8C257E8();

    v51 = 0xD000000000000013;
    v52 = 0x80000001B8C330F0;
    v28 = sub_1B8B64D04();
    MEMORY[0x1B8CC9EB0](v28);

    v29 = v51;
    v30 = v52;
  }

  v51 = v29;
  v52 = v30;
  v49 = v26;
  v50 = OpaqueTypeConformance2;
  v31 = swift_getOpaqueTypeConformance2();
  sub_1B8B34CA8(v31, v32, v33);
  v34 = v44;
  sub_1B8C24B38();

  return (*(v42 + 8))(v27, v34);
}

void sub_1B8B654C4(unsigned __int8 *a1)
{
  sub_1B8B64A38();
  v2 = *a1;
  v3 = *(type metadata accessor for ActionButton(0) + 20);
  v4 = sub_1B8B64B88();
  sub_1B8B4D64C(v2, &a1[v3], v4);
}

double sub_1B8B65544@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1B8C242E8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6890, &qword_1B8C299D0) + 44);
  *v4 = sub_1B8C24468();
  *(v4 + 8) = 0x4020000000000000;
  *(v4 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6898, &qword_1B8C299D8);
  sub_1B8B65668(a1, v4 + *(v5 + 44));
  sub_1B8C24C68();
  KeyPath = swift_getKeyPath();
  v7 = sub_1B8C23E48();
  v8 = (v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA68A0, &qword_1B8C29A10) + 36));
  *v8 = KeyPath;
  v8[1] = v7;
  LOBYTE(v7) = sub_1B8C24808();
  v9 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA68A8, &qword_1B8C29A18) + 36);
  *v9 = v7;
  result = 0.0;
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  *(v9 + 40) = 1;
  return result;
}

uint64_t sub_1B8B65668@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v52 = a2;
  v51 = sub_1B8C24FB8();
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1B8C24F98();
  v5 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5CD0, &qword_1B8C278C8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA68B0, &qword_1B8C29A20);
  v12 = v11 - 8;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v53 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v44 - v15);
  sub_1B8C07640(0, *a1, v17);
  v45 = sub_1B8C24D08();
  v18 = sub_1B8C248C8();
  v19 = *(v18 - 8);
  v46 = *(v19 + 56);
  v47 = v19 + 56;
  v46(v10, 1, 1, v18);
  v44 = sub_1B8C24908();
  sub_1B8B3433C(v10, &qword_1EBAA5CD0, &qword_1B8C278C8);
  KeyPath = swift_getKeyPath();
  sub_1B8C24F88();
  sub_1B8C24FA8();
  v21 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA68B8, &qword_1B8C29A58) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA68C0, &qword_1B8C29A60);
  sub_1B8B65F8C(&qword_1EBAA68C8, MEMORY[0x1E6982178], MEMORY[0x1E6982170]);
  v22 = v49;
  sub_1B8C24098();
  (*(v50 + 8))(v4, v51);
  (*(v5 + 8))(v7, v22);
  *v21 = swift_getKeyPath();
  *v16 = v45;
  v16[1] = KeyPath;
  v16[2] = v44;
  *(v16 + *(v12 + 44)) = sub_1B8C24C68();
  v63 = sub_1B8B64D04();
  v64 = v23;
  sub_1B8B34CA8(v63, v23, v24);
  v25 = sub_1B8C249E8();
  v27 = v26;
  LOBYTE(v12) = v28;
  v46(v10, 1, 1, v18);
  sub_1B8C24908();
  sub_1B8B3433C(v10, &qword_1EBAA5CD0, &qword_1B8C278C8);
  v29 = sub_1B8C249B8();
  v31 = v30;
  LOBYTE(v10) = v32;
  v34 = v33;

  sub_1B8B34060(v25, v27, v12 & 1);

  v35 = swift_getKeyPath();
  v36 = sub_1B8C24C68();
  LOBYTE(v10) = v10 & 1;
  v57 = v10;
  v55 = 0;
  v37 = v53;
  sub_1B8B34450(v16, v53, &qword_1EBAA68B0, &qword_1B8C29A20);
  v38 = v37;
  v39 = v52;
  sub_1B8B34450(v38, v52, &qword_1EBAA68B0, &qword_1B8C29A20);
  v40 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA68D0, &qword_1B8C29AC8) + 48);
  *&v58 = v29;
  *(&v58 + 1) = v31;
  LOBYTE(v59) = v10;
  *(&v59 + 1) = *v56;
  DWORD1(v59) = *&v56[3];
  *(&v59 + 1) = v34;
  *&v60 = v35;
  *(&v60 + 1) = 1;
  LOBYTE(v61) = 0;
  *(&v61 + 1) = *v54;
  DWORD1(v61) = *&v54[3];
  *(&v61 + 1) = v36;
  v62 = 1;
  *(v40 + 64) = 1;
  v41 = v59;
  *v40 = v58;
  *(v40 + 16) = v41;
  v42 = v61;
  *(v40 + 32) = v60;
  *(v40 + 48) = v42;
  sub_1B8B34450(&v58, &v63, &qword_1EBAA68D8, &qword_1B8C29AD0);
  sub_1B8B3433C(v16, &qword_1EBAA68B0, &qword_1B8C29A20);
  v63 = v29;
  v64 = v31;
  v65 = v10;
  *v66 = *v56;
  *&v66[3] = *&v56[3];
  v67 = v34;
  v68 = v35;
  v69 = 1;
  v70 = 0;
  *v71 = *v54;
  *&v71[3] = *&v54[3];
  v72 = v36;
  v73 = 1;
  sub_1B8B3433C(&v63, &qword_1EBAA68D8, &qword_1B8C29AD0);
  return sub_1B8B3433C(v53, &qword_1EBAA68B0, &qword_1B8C29A20);
}

uint64_t sub_1B8B65CA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B65D08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B8B65D6C()
{
  v1 = *(type metadata accessor for ActionButton(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_1B8B654C4(v2);
}

unint64_t sub_1B8B65DD4()
{
  result = qword_1EBAA68E0;
  if (!qword_1EBAA68E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA68E8, &qword_1B8C29AD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6868, &qword_1B8C299B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6860, &qword_1B8C299B0);
    sub_1B8C24038();
    sub_1B8B34CFC(&qword_1EBAA6888, &qword_1EBAA6860, &qword_1B8C299B0, MEMORY[0x1E697D680]);
    sub_1B8B65F8C(&qword_1EBAA59E0, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1B8B65F8C(&qword_1EBAA5F58, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA68E0);
  }

  return result;
}

uint64_t sub_1B8B65F8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B8B65FD4()
{
  swift_getKeyPath();
  sub_1B8B66400();
  sub_1B8C23588();

  return *(v0 + 16);
}

void sub_1B8B66044(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B66400();
    sub_1B8C23578();
  }
}

uint64_t sub_1B8B66124()
{
  swift_getKeyPath();
  sub_1B8B66400();
  sub_1B8C23588();

  return *(v0 + 17);
}

void sub_1B8B66194(char a1)
{
  if (*(v1 + 17) == (a1 & 1))
  {
    *(v1 + 17) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B66400();
    sub_1B8C23578();
  }
}

uint64_t sub_1B8B66274()
{
  v1 = OBJC_IVAR____TtC8Feedback15DebugController___observationRegistrar;
  v2 = sub_1B8C235C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugController(uint64_t a1)
{
  result = qword_1EBAA68F8;
  if (!qword_1EBAA68F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8B66364(uint64_t a1)
{
  result = sub_1B8C235C8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B8B66400()
{
  result = qword_1EBAA6908;
  if (!qword_1EBAA6908)
  {
    type metadata accessor for DebugController(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6908);
  }

  return result;
}

void sub_1B8B66594(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  sub_1B8B46130(0, &qword_1EBAA69D8, 0x1E69DD190);
  sub_1B8B67F3C();
  sub_1B8C253E8();
  v12 = a1;
  v8 = a4;
  v9 = [v12 nextResponder];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1B8C253C8();

    [v10 *a5];
  }

  else
  {
  }
}

void sub_1B8B6671C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v51 = a4;
  v7 = sub_1B8C24FD8();
  v54 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B8C25008();
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B8C25028();
  v55 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v48 - v17;
  sub_1B8B34450(a1, v70, &unk_1EBAA7DF0, &unk_1B8C2D750);
  if (!v71)
  {
    sub_1B8B3433C(v70, &unk_1EBAA7DF0, &unk_1B8C2D750);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    if (qword_1EBAA5978 != -1)
    {
      swift_once();
    }

    v35 = sub_1B8C23C38();
    __swift_project_value_buffer(v35, qword_1EBAB3A30);
    v36 = a2;
    v37 = sub_1B8C23C18();
    v38 = sub_1B8C25478();

    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_14;
    }

    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 138412290;
    if (a2)
    {
      v41 = a2;
      v42 = _swift_stdlib_bridgeErrorToNSError();
      v43 = v42;
    }

    else
    {
      v42 = 0;
      v43 = 0;
    }

    *(v39 + 4) = v42;
    *v40 = v43;
    _os_log_impl(&dword_1B8B22000, v37, v38, "Failed to evaluate webview height: %@", v39, 0xCu);
    sub_1B8B3433C(v40, &qword_1EBAA69A0, &qword_1B8C29670);
    MEMORY[0x1B8CCB0E0](v40, -1, -1);
    v44 = v39;
    goto LABEL_13;
  }

  v19 = a3 + OBJC_IVAR____TtCV8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D11BaseWebView10Controller_parent;
  v20 = *(a3 + OBJC_IVAR____TtCV8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D11BaseWebView10Controller_parent + 16);
  v64 = *(a3 + OBJC_IVAR____TtCV8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D11BaseWebView10Controller_parent);
  v65 = v20;
  v21 = *(a3 + OBJC_IVAR____TtCV8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D11BaseWebView10Controller_parent + 48);
  v66 = *(a3 + OBJC_IVAR____TtCV8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D11BaseWebView10Controller_parent + 32);
  v67 = v21;
  v68 = *(a3 + OBJC_IVAR____TtCV8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D11BaseWebView10Controller_parent + 64);
  v22 = *(&v64 + 1);
  if (*(&v64 + 1))
  {
    v23 = v65;
    v24 = v64;
    v25 = *(v19 + 40);
    v72 = *(v19 + 24);
    v73 = v25;
    v74 = *(v19 + 56);
    v56 = v64;
    v57 = v65;
    v61[9] = v69;
    v26 = *(v19 + 48);
    v62[2] = *(v19 + 32);
    v62[3] = v26;
    v63 = *(v19 + 64);
    v27 = *(v19 + 16);
    v62[0] = *v19;
    v62[1] = v27;
    sub_1B8B67D9C(v62, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA69A8, &qword_1B8C29D08);
    sub_1B8C24E48();
    sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
    v49 = sub_1B8C25538();
    sub_1B8C25018();
    sub_1B8C25078();
    v28 = *(v55 + 8);
    v55 += 8;
    v50 = v28;
    v28(v16, v13);
    v29 = swift_allocObject();
    v30 = v51;
    *(v29 + 16) = v51;
    *(v29 + 24) = v24;
    *(v29 + 32) = v22;
    *(v29 + 40) = v23;
    v31 = v73;
    *(v29 + 48) = v72;
    *(v29 + 64) = v31;
    *(v29 + 80) = v74;
    v59 = sub_1B8B67DD4;
    v60 = v29;
    *&v56 = MEMORY[0x1E69E9820];
    *(&v56 + 1) = 1107296256;
    v57 = sub_1B8B8B9F4;
    v58 = &block_descriptor_13;
    v48 = _Block_copy(&v56);
    sub_1B8B34450(&v64, v61, &qword_1EBAA69B8, &unk_1B8C29D10);
    v32 = v30;

    sub_1B8C24FF8();
    v61[0] = MEMORY[0x1E69E7CC0];
    sub_1B8B6220C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
    sub_1B8B34CFC(&qword_1EBAA69D0, &qword_1EBAA77D0, &qword_1B8C2B2A0, MEMORY[0x1E69E6328]);
    sub_1B8C256D8();
    v34 = v48;
    v33 = v49;
    MEMORY[0x1B8CCA1C0](v18, v12, v9, v48);
    _Block_release(v34);

    sub_1B8B3433C(&v64, &qword_1EBAA69B8, &unk_1B8C29D10);
    (*(v54 + 8))(v9, v7);
    (*(v52 + 8))(v12, v53);
    v50(v18, v13);
    return;
  }

  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v45 = sub_1B8C23C38();
  __swift_project_value_buffer(v45, qword_1EBAB3A30);
  v37 = sub_1B8C23C18();
  v46 = sub_1B8C25478();
  if (os_log_type_enabled(v37, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_1B8B22000, v37, v46, "parent webview is nil", v47, 2u);
    v44 = v47;
LABEL_13:
    MEMORY[0x1B8CCB0E0](v44, -1, -1);
  }

LABEL_14:
}

void sub_1B8B66E14(void *a1, uint64_t a2)
{
  v4 = sub_1B8C250F8();
  v5 = swift_allocObject();
  v6 = *(a2 + 48);
  *(v5 + 48) = *(a2 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(a2 + 64);
  v7 = *(a2 + 16);
  *(v5 + 16) = *a2;
  *(v5 + 32) = v7;
  aBlock[4] = sub_1B8B67DE0;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B67368;
  aBlock[3] = &block_descriptor_19;
  v8 = _Block_copy(aBlock);
  sub_1B8B67D9C(a2, v9);

  [a1 evaluateJavaScript:v4 completionHandler:v8];
  _Block_release(v8);
}

uint64_t sub_1B8B66F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C24FD8();
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B8C25008();
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B8C25028();
  v25 = v10;
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v23 - v15;
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v23 = sub_1B8C25538();
  sub_1B8C25018();
  sub_1B8C25078();
  v24 = *(v11 + 8);
  v24(v14, v10);
  v17 = swift_allocObject();
  v18 = *(a3 + 48);
  *(v17 + 48) = *(a3 + 32);
  *(v17 + 64) = v18;
  *(v17 + 80) = *(a3 + 64);
  v19 = *(a3 + 16);
  *(v17 + 16) = *a3;
  *(v17 + 32) = v19;
  aBlock[4] = sub_1B8B67E48;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_25;
  v20 = _Block_copy(aBlock);
  sub_1B8B67D9C(a3, v29);

  sub_1B8C24FF8();
  v29[0] = MEMORY[0x1E69E7CC0];
  sub_1B8B6220C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B34CFC(&qword_1EBAA69D0, &qword_1EBAA77D0, &qword_1B8C2B2A0, MEMORY[0x1E69E6328]);
  sub_1B8C256D8();
  v21 = v23;
  MEMORY[0x1B8CCA1C0](v16, v9, v6, v20);
  _Block_release(v20);

  (*(v28 + 8))(v6, v4);
  (*(v26 + 8))(v9, v27);
  return (v24)(v16, v25);
}

double sub_1B8B672FC(uint64_t a1)
{
  sub_1B8C24F58();
  sub_1B8C23F08();

  return result;
}

uint64_t sub_1B8B67368(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    sub_1B8B5FE40(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  swift_unknownObjectRetain();
  v6 = a3;
  v5(v10, a3);

  return sub_1B8B3433C(v10, &unk_1EBAA7DF0, &unk_1B8C2D750);
}

id sub_1B8B675BC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B8B67688(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B8B676D0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

id sub_1B8B6773C()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69853A8]) init];
  [v1 _setColorFilterEnabled_];
  [v1 _setDrawsBackground_];
  v2 = [objc_allocWithZone(type metadata accessor for UnScrollableWebView()) initWithFrame:v1 configuration:{0.0, 0.0, 0.0, 0.0}];

  v3 = v2;
  v4 = sub_1B8C250F8();

  v5 = sub_1B8C250F8();
  [v3 setNavigationDelegate_];

  return v3;
}

uint64_t sub_1B8B67908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B8B67A50(a1, a2, a3);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1B8B6796C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B8B67A50(a1, a2, a3);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1B8B679D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B8B67A50(a1, a2, a3);
  sub_1B8C24558();
  __break(1u);
}

unint64_t sub_1B8B679FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA6988;
  if (!qword_1EBAA6988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6988);
  }

  return result;
}

unint64_t sub_1B8B67A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA6990;
  if (!qword_1EBAA6990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6990);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

BOOL sub_1B8B67AC4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

double sub_1B8B67B00@<D0>(uint64_t a1@<X8>)
{
  v21 = *(v1 + 32);
  __src = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA69E8, &qword_1B8C29DB0);
  sub_1B8C24D88();
  v3 = v29;
  v4 = v30;
  v20[5] = *(v1 + 48);
  __src = *(v1 + 48);
  sub_1B8C24D88();
  v5 = v29;
  v17 = *(&v29 + 1);
  v18 = v29;
  v6 = v30;
  sub_1B8C257E8();

  *&v29 = 0xD000000000000021;
  *(&v29 + 1) = 0x80000001B8C33390;
  MEMORY[0x1B8CC9EB0](*v1, *(v1 + 8));
  MEMORY[0x1B8CC9EB0](0x3E79646F622F3CLL, 0xE700000000000000);
  v7 = [objc_allocWithZone(type metadata accessor for BaseWebView.Controller()) init];
  __src = v3;
  v23 = v30;
  v24 = v5;
  v25 = v30;
  v26 = 0xD000000000000021;
  v27 = 0x80000001B8C33390;
  v28 = v7;
  v9 = *&v7[OBJC_IVAR____TtCV8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D11BaseWebView10Controller_parent + 32];
  v8 = *&v7[OBJC_IVAR____TtCV8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D11BaseWebView10Controller_parent + 48];
  v10 = *&v7[OBJC_IVAR____TtCV8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D11BaseWebView10Controller_parent + 16];
  v33 = *&v7[OBJC_IVAR____TtCV8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D11BaseWebView10Controller_parent + 64];
  v31 = v9;
  v32 = v8;
  v30 = v10;
  v29 = *&v7[OBJC_IVAR____TtCV8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D11BaseWebView10Controller_parent];
  memmove(&v7[OBJC_IVAR____TtCV8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D11BaseWebView10Controller_parent], &__src, 0x48uLL);
  v11 = v7;
  sub_1B8B67D9C(&__src, v20);
  sub_1B8B3433C(&v29, &qword_1EBAA69B8, &unk_1B8C29D10);

  v20[0] = v21;
  sub_1B8C24D68();
  sub_1B8C24F48();
  sub_1B8C23E38();
  v12 = sub_1B8C24CB8();
  v13 = sub_1B8C24808();
  v14 = sub_1B8C24CA8();
  sub_1B8C24D68();
  result = v19;
  *a1 = v18;
  *(a1 + 16) = v4;
  *(a1 + 24) = v18;
  *(a1 + 32) = v17;
  *(a1 + 40) = v6;
  *(a1 + 48) = 0xD000000000000021;
  *(a1 + 56) = 0x80000001B8C33390;
  *(a1 + 64) = v11;
  v16 = v20[1];
  *(a1 + 72) = v20[0];
  *(a1 + 88) = v16;
  *(a1 + 104) = v20[2];
  *(a1 + 120) = v12;
  *(a1 + 128) = v13;
  *(a1 + 136) = v14;
  *(a1 + 144) = v19;
  return result;
}

uint64_t objectdestroy_15Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

double sub_1B8B67EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1B8B67F3C()
{
  result = qword_1EBAA69E0;
  if (!qword_1EBAA69E0)
  {
    sub_1B8B46130(255, &qword_1EBAA69D8, 0x1E69DD190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA69E0);
  }

  return result;
}

double sub_1B8B67FA4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_1B8C24D58();
  sub_1B8C24D58();
  result = v11;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  *(a5 + 32) = v11;
  *(a5 + 40) = v12;
  *(a5 + 48) = v11;
  *(a5 + 56) = v12;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B8B68074(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B8B680BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BatchWebView.SizeMode(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for BatchWebView.SizeMode(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1B8B6819C(uint64_t a1)
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

uint64_t sub_1B8B681B8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_1B8B681E8()
{
  result = qword_1EBAA69F0;
  if (!qword_1EBAA69F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA69F8, &qword_1B8C29DC8);
    sub_1B8B68274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA69F0);
  }

  return result;
}

unint64_t sub_1B8B68274()
{
  result = qword_1EBAA6A00;
  if (!qword_1EBAA6A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6A08, &qword_1B8C29DD0);
    sub_1B8B6832C();
    sub_1B8B34CFC(&qword_1EBAA6A40, &qword_1EBAA5F98, qword_1B8C29DF0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6A00);
  }

  return result;
}

unint64_t sub_1B8B6832C()
{
  result = qword_1EBAA6A10;
  if (!qword_1EBAA6A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6A18, &qword_1B8C29DD8);
    sub_1B8B683E4();
    sub_1B8B34CFC(&qword_1EBAA6A30, &qword_1EBAA6A38, &qword_1B8C29DE8, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6A10);
  }

  return result;
}

unint64_t sub_1B8B683E4()
{
  result = qword_1EBAA6A20;
  if (!qword_1EBAA6A20)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6A28, &qword_1B8C29DE0);
    sub_1B8B679FC(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6A20);
  }

  return result;
}

uint64_t sub_1B8B68488()
{
  v49 = type metadata accessor for BatchInteraction.ContentPolarity(0);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v47 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6008, &qword_1B8C2A5B0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v48 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v47 - v5;
  v6 = sub_1B8C237B8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v47 - v11;
  v13 = type metadata accessor for BatchInteraction(0);
  v50 = v0;
  sub_1B8C237C8();
  v14 = *MEMORY[0x1E699C2B8];
  v52 = *(v7 + 104);
  v52(v10, v14, v6);
  v15 = MEMORY[0x1B8CC8470](v12, v10);
  v16 = *(v7 + 8);
  v16(v10, v6);
  v16(v12, v6);
  if (v15)
  {
    goto LABEL_2;
  }

  if (qword_1EBAA5940 != -1)
  {
    swift_once();
  }

  v19 = qword_1EBAB39F0;
  sub_1B8C237C8();
  LOBYTE(v19) = sub_1B8B4E0BC(v12, v19);
  v16(v12, v6);
  if ((v19 & 1) == 0)
  {
    if (qword_1EBAA5938 != -1)
    {
      swift_once();
    }

    v22 = qword_1EBAB39E8;
    sub_1B8C237C8();
    LOBYTE(v22) = sub_1B8B4E0BC(v12, v22);
    v16(v12, v6);
    v23 = v52;
    if ((v22 & 1) == 0)
    {
      sub_1B8C237C8();
      v23(v10, *MEMORY[0x1E699C2C0], v6);
      v28 = MEMORY[0x1B8CC8470](v12, v10);
      v16(v10, v6);
      v16(v12, v6);
      if ((v28 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65E8, &qword_1B8C2AEF0);
        v38 = v23;
        v39 = *(v7 + 72);
        v40 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v51 = 2 * v39;
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_1B8C293F0;
        v42 = v41 + v40;
        v38(v42, *MEMORY[0x1E699C2C8], v6);
        v38((v42 + v39), *MEMORY[0x1E699C320], v6);
        v38((v42 + v51), *MEMORY[0x1E699C258], v6);
        sub_1B8C237C8();
        sub_1B8B54E08(v12, v41);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v16(v12, v6);
        v17 = [objc_opt_self() mainBundle];
        goto LABEL_3;
      }
    }

LABEL_2:
    v17 = [objc_opt_self() mainBundle];
LABEL_3:
    v18 = sub_1B8C23348();
    goto LABEL_32;
  }

  v20 = v51;
  sub_1B8B68D5C(v50 + *(v13 + 28), v51);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B8B68E28(v20, type metadata accessor for BatchInteraction.ContentPolarity);
    v21 = 0;
  }

  else
  {
    v24 = v20;
    v25 = v47;
    sub_1B8B46178(v24, v47);
    v26 = v48;
    sub_1B8B46178(v25, v48);
    v27 = type metadata accessor for BatchInteraction.ContentPreview(0);
    if ((*(*(v27 - 8) + 48))(v26, 1, v27) == 1)
    {
      sub_1B8B68DC0(v26);
    }

    else if (swift_getEnumCaseMultiPayload() == 5)
    {
      v29 = *v26;
      v30 = *(v26 + 8);
      v31 = *(v26 + 16);
      v32 = *(v26 + 24);
      v33 = *(v26 + 32);
      v34 = *(v26 + 40);
      v35 = *(v26 + 48);
      v36 = *(v26 + 56);
      v37 = *(v26 + 64);
      if (*(v26 + 72))
      {
        sub_1B8B3B06C(v29, v30, v31, v32, v33, v34, v35, v36, v37, *(v26 + 72));
      }

      else
      {
        if ((v30 & 1) == 0)
        {
          v46 = v29[2];
          sub_1B8B3B06C(v29, v30, v31, v32, v33, v34, v35, v36, v37, 0);
          v21 = v46 > 1;
          goto LABEL_25;
        }

        sub_1B8B3B06C(v29, v30, v31, v32, v33, v34, v35, v36, v37, 0);
      }
    }

    else
    {
      sub_1B8B68E28(v26, type metadata accessor for BatchInteraction.ContentPreview);
    }

    v21 = 0;
  }

LABEL_25:
  v53 = 0;
  v54 = 0xE000000000000000;
  sub_1B8C257E8();

  v53 = 0xD00000000000001ELL;
  v54 = 0x80000001B8C335A0;
  if (v21)
  {
    v43 = 0x61737265766E6F63;
  }

  else
  {
    v43 = 0x6567617373656DLL;
  }

  if (v21)
  {
    v44 = 0xEC0000006E6F6974;
  }

  else
  {
    v44 = 0xE700000000000000;
  }

  MEMORY[0x1B8CC9EB0](v43, v44);

  MEMORY[0x1B8CC9EB0](63, 0xE100000000000000);
  v17 = [objc_opt_self() mainBundle];
  v18 = sub_1B8C23348();

LABEL_32:

  return v18;
}

uint64_t sub_1B8B68D5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatchInteraction.ContentPolarity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B68DC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6008, &qword_1B8C2A5B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8B68E28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B8B68E88@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B70B14(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  sub_1B8C23588();

  *a2 = *(v3 + 24);
}

uint64_t sub_1B8B68F60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B70B14(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  sub_1B8C23588();

  *a2 = *(v3 + 32);
}

uint64_t sub_1B8B69038@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B70B14(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  sub_1B8C23588();

  *a2 = *(v3 + 40);
}

uint64_t sub_1B8B69110@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B70B14(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  sub_1B8C23588();

  *a2 = *(v3 + 48);
}

void sub_1B8B691E8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B70B14(&qword_1EBAA5F60, type metadata accessor for ScoreController, &protocol conformance descriptor for ScoreController);
  sub_1B8C23588();

  *a2 = *(v3 + 16);
}

void sub_1B8B692B8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B70B14(&qword_1EBAA5F60, type metadata accessor for ScoreController, &protocol conformance descriptor for ScoreController);
  sub_1B8C23588();

  *a2 = *(v3 + 17);
}

void BatchEvaluationView.init(scoreController:useNavigationStack:showsCloseButton:)(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  type metadata accessor for BatchController(0);
  swift_allocObject();
  sub_1B8B504A0(a1);

  sub_1B8C24D58();

  *a4 = v8;
  *(a4 + 8) = v9;
  *(a4 + 17) = a3;
  *(a4 + 16) = a2;
}

void sub_1B8B6942C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B70B14(&qword_1EBAA6908, type metadata accessor for DebugController, &unk_1B8C29B28);
  sub_1B8C23588();

  *a2 = *(v3 + 16);
}

uint64_t sub_1B8B6955C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = sub_1B8C245F8();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return a3();
}

void *BatchEvaluationView.init(controller:useNavigationStack:showsCloseButton:)@<X0>(char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  type metadata accessor for BatchController(0);
  result = sub_1B8C24D58();
  *a4 = v8;
  *(a4 + 8) = v9;
  *(a4 + 16) = a2;
  *(a4 + 17) = a3;
  return result;
}

void *BatchEvaluationView.body.getter@<X0>(void *a1@<X8>)
{
  v41 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6A90, &qword_1B8C29E20);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v34 - v3;
  v40 = type metadata accessor for BatchEvaluationViewContent(0);
  MEMORY[0x1EEE9AC00](v40);
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6A98, &qword_1B8C29E28);
  MEMORY[0x1EEE9AC00](v37);
  v8 = &v34 - v7;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AA0, &qword_1B8C29E30);
  v35 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AA8, &qword_1B8C29E38);
  MEMORY[0x1EEE9AC00](v11);
  v39 = &v34 - v12;
  v13 = *v1;
  v14 = *(v1 + 8);
  v15 = *(v1 + 16);
  v36 = *(v1 + 17);
  v16 = sub_1B8C23638();
  v45 = v16;
  v46 = sub_1B8B70B14(&unk_1EBAA7810, MEMORY[0x1E699C198], MEMORY[0x1E699C190]);
  v17 = __swift_allocate_boxed_opaque_existential_1(&v43);
  (*(*(v16 - 8) + 104))(v17, *MEMORY[0x1E699C188], v16);
  LOBYTE(v16) = sub_1B8C235D8();
  __swift_destroy_boxed_opaque_existential_0(&v43);
  if (v16)
  {
    v34 = v2;
    if (v15)
    {
      MEMORY[0x1EEE9AC00](v18);
      *(&v34 - 4) = v13;
      *(&v34 - 3) = v14;
      *(&v34 - 16) = 1;
      *(&v34 - 15) = v36;
      sub_1B8B70B14(&qword_1EBAA6AC8, type metadata accessor for BatchEvaluationViewContent, &protocol conformance descriptor for BatchEvaluationViewContent);
      sub_1B8C24008();
      v19 = v35;
      v20 = v38;
      (*(v35 + 16))(v8, v10, v38);
      swift_storeEnumTagMultiPayload();
      sub_1B8B34CFC(&qword_1EBAA6AC0, &qword_1EBAA6AA0, &qword_1B8C29E30, MEMORY[0x1E697C1A8]);
      v21 = v39;
      sub_1B8C24598();
      (*(v19 + 8))(v10, v20);
    }

    else
    {
      v43 = v13;
      *&v44 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AD8, &qword_1B8C29E48);
      sub_1B8C24D68();
      v28 = v42;
      *v6 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AE0, &qword_1B8C29E80);
      swift_storeEnumTagMultiPayload();
      v29 = v40;
      v30 = *(v40 + 20);
      *(v6 + v30) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D70, &qword_1B8C27960);
      swift_storeEnumTagMultiPayload();
      *(v6 + v29[7]) = 1;
      v31 = v29[8];
      v32 = (v6 + v29[6]);
      v42 = v28;
      type metadata accessor for BatchController(0);
      sub_1B8C24D58();
      v33 = v44;
      *v32 = v43;
      v32[1] = v33;
      *(v6 + v31) = v36;
      sub_1B8B70E3C(v6, v8, type metadata accessor for BatchEvaluationViewContent);
      swift_storeEnumTagMultiPayload();
      sub_1B8B34CFC(&qword_1EBAA6AC0, &qword_1EBAA6AA0, &qword_1B8C29E30, MEMORY[0x1E697C1A8]);
      sub_1B8B70B14(&qword_1EBAA6AC8, type metadata accessor for BatchEvaluationViewContent, &protocol conformance descriptor for BatchEvaluationViewContent);
      v21 = v39;
      sub_1B8C24598();
      sub_1B8B70EA4(v6, type metadata accessor for BatchEvaluationViewContent);
    }

    sub_1B8B34450(v21, v4, &qword_1EBAA6AA8, &qword_1B8C29E38);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AB0, &qword_1B8C29E40);
    sub_1B8B6F8C8();
    sub_1B8B34CFC(&qword_1EBAA6AD0, &qword_1EBAA6AB0, &qword_1B8C29E40, MEMORY[0x1E6981870]);
    sub_1B8C24598();
    return sub_1B8B3433C(v21, &qword_1EBAA6AA8, &qword_1B8C29E38);
  }

  else
  {
    v22 = sub_1B8C24468();
    sub_1B8B69FC0(&v43);
    v23 = v43;
    v24 = v45;
    v25 = v46;
    v26 = v44;
    LOBYTE(v43) = 0;
    LOBYTE(v42) = v45;
    *v4 = v22;
    *(v4 + 1) = 0x4020000000000000;
    v4[16] = 0;
    *(v4 + 3) = v23;
    *(v4 + 2) = v26;
    v4[48] = v24;
    *(v4 + 7) = v25;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AB0, &qword_1B8C29E40);
    sub_1B8B6F8C8();
    sub_1B8B34CFC(&qword_1EBAA6AD0, &qword_1EBAA6AB0, &qword_1B8C29E40, MEMORY[0x1E6981870]);
    return sub_1B8C24598();
  }
}

void *sub_1B8B69DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t *a4@<X8>)
{
  v4 = HIBYTE(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AD8, &qword_1B8C29E48);
  sub_1B8C24D68();
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AE0, &qword_1B8C29E80);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for BatchEvaluationViewContent(0);
  v7 = v6[5];
  *(a4 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D70, &qword_1B8C27960);
  swift_storeEnumTagMultiPayload();
  *(a4 + v6[7]) = 1;
  v8 = v6[8];
  v9 = (a4 + v6[6]);
  type metadata accessor for BatchController(0);
  result = sub_1B8C24D58();
  *v9 = a1;
  v9[1] = a2;
  *(a4 + v8) = v4 & 1;
  return result;
}

void *BatchEvaluationViewContent.init(controller:showsCloseButton:)@<X0>(char a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AE0, &qword_1B8C29E80);
  swift_storeEnumTagMultiPayload();
  v5 = type metadata accessor for BatchEvaluationViewContent(0);
  v6 = v5[5];
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D70, &qword_1B8C27960);
  swift_storeEnumTagMultiPayload();
  *(a3 + v5[7]) = 1;
  v7 = v5[8];
  v8 = (a3 + v5[6]);
  type metadata accessor for BatchController(0);
  result = sub_1B8C24D58();
  *v8 = v10;
  v8[1] = v11;
  *(a3 + v7) = a2;
  return result;
}

uint64_t sub_1B8B69FC0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B8C24D08();
  sub_1B8C243A8();
  v3 = sub_1B8C249C8();
  v5 = v4;
  v7 = v6;
  sub_1B8C248D8();
  v8 = sub_1B8C24978();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_1B8B34060(v3, v5, v7 & 1);

  *a1 = v2;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10;
  *(a1 + 24) = v12 & 1;
  *(a1 + 32) = v14;

  sub_1B8B34694(v8, v10, v12 & 1);

  sub_1B8B34060(v8, v10, v12 & 1);
}

uint64_t sub_1B8B6A120@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1B8C242A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AE0, &qword_1B8C29E80);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1B8B34450(v2, &v14 - v9, &qword_1EBAA6AE0, &qword_1B8C29E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1B8C23D38();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1B8C25488();
    v13 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1B8B6A320@<X0>(void *a1@<X8>)
{
  v3 = sub_1B8C242A8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D70, &qword_1B8C27960);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for BatchEvaluationViewContent(0);
  sub_1B8B34450(v1 + *(v10 + 20), v9, &qword_1EBAA5D70, &qword_1B8C27960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1B8C23E78();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1B8C25488();
    v13 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t BatchEvaluationViewContent.body.getter@<X0>(uint64_t a1@<X8>)
{
  v129 = a1;
  v128 = sub_1B8C23D38();
  v130 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v127 = (&v99 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for BatchEvaluationViewContent(0);
  v4 = v3 - 8;
  v126 = *(v3 - 8);
  v125 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v124 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AE8, &qword_1B8C29EC0);
  MEMORY[0x1EEE9AC00](v131);
  v7 = (&v99 - v6);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AF0, &qword_1B8C29EC8);
  v105 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v103 = &v99 - v8;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AF8, &qword_1B8C29ED0);
  v107 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v133 = &v99 - v9;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6B00, &qword_1B8C29ED8);
  v109 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v132 = &v99 - v10;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6B08, &qword_1B8C29EE0);
  v111 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v134 = &v99 - v11;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6B10, &qword_1B8C29EE8);
  v114 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v135 = (&v99 - v12);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6B18, &qword_1B8C29EF0);
  v116 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v112 = &v99 - v13;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6B20, &qword_1B8C29EF8);
  v118 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v136 = &v99 - v14;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6B28, &qword_1B8C29F00);
  v122 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v137 = &v99 - v15;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6B30, &qword_1B8C29F08);
  MEMORY[0x1EEE9AC00](v123);
  v120 = &v99 - v16;
  *v7 = sub_1B8C24F48();
  v7[1] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6B38, &qword_1B8C29F10);
  sub_1B8B6B9D8(v1, (v7 + *(v18 + 44)));
  v141 = v1;
  v119 = v1;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6B40, &qword_1B8C29F18);
  v101 = sub_1B8B34CFC(&qword_1EBAA6B48, &qword_1EBAA6AE8, &qword_1B8C29EC0, MEMORY[0x1E6981880]);
  v19 = sub_1B8B34CFC(&qword_1EBAA6B50, &qword_1EBAA6B40, &qword_1B8C29F18, MEMORY[0x1E697C5E0]);
  sub_1B8C24C28();
  sub_1B8B3433C(v7, &qword_1EBAA6AE8, &qword_1B8C29EC0);
  v20 = (v1 + *(v4 + 32));
  v22 = *v20;
  v21 = v20[1];
  v138 = v22;
  v140 = v21;
  v152 = v22;
  v153 = v21;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AD8, &qword_1B8C29E48);
  sub_1B8C24D88();
  v23 = v142;
  v24 = v143;
  v25 = v144;
  swift_getKeyPath();
  v152 = v23;
  v153 = v24;
  v154 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6B58, &qword_1B8C29F48);
  sub_1B8C24E58();

  v26 = v149;
  v27 = v150;
  v28 = v151;

  swift_getKeyPath();
  v146 = v26;
  v147 = v27;
  v148 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6B60, &qword_1B8C29F78);
  sub_1B8C24E58();

  v100 = type metadata accessor for DebugSheet(0);
  v142 = v131;
  v143 = v102;
  v144 = v101;
  v145 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = sub_1B8B70B14(&qword_1EBAA6B68, type metadata accessor for DebugSheet, &unk_1B8C2AFE0);
  v31 = v104;
  v32 = v103;
  sub_1B8C24BD8();

  (*(v105 + 8))(v32, v31);
  v152 = v138;
  v153 = v140;
  sub_1B8C24D88();
  v33 = v142;
  v34 = v143;
  v35 = v144;
  swift_getKeyPath();
  v152 = v33;
  v153 = v34;
  v154 = v35;
  sub_1B8C24E58();

  v36 = v149;
  v37 = v150;
  v38 = v151;

  swift_getKeyPath();
  v146 = v36;
  v147 = v37;
  v148 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6B70, &qword_1B8C29FD0);
  sub_1B8C24E58();

  v142 = v31;
  v143 = v100;
  v144 = OpaqueTypeConformance2;
  v145 = v30;
  v39 = swift_getOpaqueTypeConformance2();
  v98 = sub_1B8B6F9D8(v39, v40, v41);
  v42 = v106;
  v43 = v133;
  sub_1B8C24BD8();

  v44 = v42;
  (*(v107 + 8))(v43, v42);
  v45 = v138;
  v46 = v140;
  v142 = v138;
  v143 = v140;
  sub_1B8C24D68();
  v47 = type metadata accessor for BatchController(0);
  v142 = v44;
  v143 = &type metadata for ScoreLevelUp;
  v144 = v39;
  v145 = v98;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = sub_1B8B70B14(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  v50 = v108;
  v51 = v132;
  sub_1B8C24A78();

  v52 = v50;
  (*(v109 + 8))(v51, v50);
  v142 = v45;
  v143 = v46;
  sub_1B8C24D68();
  v53 = v152;
  swift_getKeyPath();
  v142 = v53;
  sub_1B8C23588();

  swift_beginAccess();

  v131 = type metadata accessor for DonationController(0);
  v142 = v52;
  v143 = v47;
  v144 = v48;
  v145 = v49;
  v133 = v49;
  v132 = MEMORY[0x1E69811C8];
  v54 = swift_getOpaqueTypeConformance2();
  v55 = sub_1B8B70B14(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  v56 = v110;
  v57 = v134;
  sub_1B8C24A78();

  (*(v111 + 8))(v57, v56);
  v58 = v138;
  v142 = v138;
  v143 = v140;
  sub_1B8C24D68();
  v59 = v149;
  swift_getKeyPath();
  v142 = v59;
  sub_1B8C23588();

  v60 = type metadata accessor for ScoreController(0);
  v142 = v56;
  v143 = v131;
  v144 = v54;
  v145 = v55;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = sub_1B8B70B14(&qword_1EBAA5F60, type metadata accessor for ScoreController, &protocol conformance descriptor for ScoreController);
  v63 = v112;
  v64 = v113;
  v65 = v135;
  sub_1B8C24A78();

  (*(v114 + 8))(v65, v64);
  v66 = v58;
  v142 = v58;
  v67 = v140;
  v143 = v140;
  sub_1B8C24D68();
  v68 = v149;
  swift_getKeyPath();
  v142 = v68;
  sub_1B8C23588();

  v135 = type metadata accessor for StateController(0);
  v142 = v64;
  v143 = v60;
  v144 = v61;
  v145 = v62;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = sub_1B8B70B14(&qword_1EBAA64D0, type metadata accessor for StateController, &protocol conformance descriptor for StateController);
  v71 = v115;
  sub_1B8C24A78();

  v72 = v63;
  v73 = v71;
  (*(v116 + 8))(v72, v71);
  v142 = v66;
  v143 = v67;
  sub_1B8C24D68();
  v74 = v149;
  swift_getKeyPath();
  v142 = v74;
  sub_1B8C23588();

  v75 = type metadata accessor for OnboardingController(0);
  v142 = v73;
  v143 = v135;
  v144 = v69;
  v145 = v70;
  v76 = swift_getOpaqueTypeConformance2();
  v77 = sub_1B8B70B14(&qword_1EBAA5AA8, type metadata accessor for OnboardingController, &unk_1B8C2ADC0);
  v78 = v117;
  v79 = v136;
  sub_1B8C24A78();

  (*(v118 + 8))(v79, v78);
  v142 = v66;
  v143 = v140;
  sub_1B8C24D68();
  v80 = v149;
  swift_getKeyPath();
  v142 = v80;
  sub_1B8C23588();

  type metadata accessor for DebugController(0);
  v142 = v78;
  v143 = v75;
  v144 = v76;
  v145 = v77;
  swift_getOpaqueTypeConformance2();
  sub_1B8B70B14(&qword_1EBAA6908, type metadata accessor for DebugController, &unk_1B8C29B28);
  v81 = v120;
  v82 = v121;
  v83 = v137;
  sub_1B8C24A78();

  (*(v122 + 8))(v83, v82);
  v84 = sub_1B8C24C68();
  KeyPath = swift_getKeyPath();
  v142 = v84;
  v86 = sub_1B8C23E48();
  v87 = (v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6B80, &qword_1B8C2A080) + 36));
  *v87 = KeyPath;
  v87[1] = v86;
  v88 = (v81 + *(v123 + 36));
  sub_1B8C23EE8();
  sub_1B8C25388();
  v89 = v119;
  v90 = v124;
  sub_1B8B70E3C(v119, v124, type metadata accessor for BatchEvaluationViewContent);
  v91 = (*(v126 + 80) + 16) & ~*(v126 + 80);
  v92 = swift_allocObject();
  sub_1B8B6FA60(v90, v92 + v91);
  *v88 = &unk_1B8C2A090;
  v88[1] = v92;
  v93 = v127;
  sub_1B8B6A120(v127);
  sub_1B8B70E3C(v89, v90, type metadata accessor for BatchEvaluationViewContent);
  v94 = swift_allocObject();
  sub_1B8B6FA60(v90, v94 + v91);
  sub_1B8B6FC10();
  sub_1B8B70B14(&qword_1EBAA6BA0, MEMORY[0x1E697BE48], MEMORY[0x1E697BE50]);
  v95 = v93;
  v96 = v128;
  sub_1B8C24C48();

  (*(v130 + 8))(v95, v96);
  return sub_1B8B3433C(v81, &qword_1EBAA6B30, &qword_1B8C29F08);
}

uint64_t sub_1B8B6B9D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v101 = a2;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6C78, &qword_1B8C2A310);
  MEMORY[0x1EEE9AC00](v102);
  v94 = &v79 - v3;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6C80, &qword_1B8C2A318);
  MEMORY[0x1EEE9AC00](v95);
  v97 = (&v79 - v4);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6C88, &qword_1B8C2A320);
  MEMORY[0x1EEE9AC00](v89);
  v91 = (&v79 - v5);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6C90, &qword_1B8C2A328);
  MEMORY[0x1EEE9AC00](v85);
  v87 = &v79 - v6;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6C98, &qword_1B8C2A330);
  MEMORY[0x1EEE9AC00](v90);
  v88 = &v79 - v7;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6CA0, &qword_1B8C2A338);
  MEMORY[0x1EEE9AC00](v96);
  v92 = &v79 - v8;
  v86 = type metadata accessor for CardStack(0);
  MEMORY[0x1EEE9AC00](v86);
  v84 = (&v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6CA8, &qword_1B8C2A340);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v98 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v100 = &v79 - v13;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6CB0, &qword_1B8C2A348);
  MEMORY[0x1EEE9AC00](v103);
  v15 = &v79 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6CB8, &qword_1B8C2A350);
  v93 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v79 - v17;
  v19 = (a1 + *(type metadata accessor for BatchEvaluationViewContent(0) + 24));
  v20 = *v19;
  v21 = v19[1];
  *&v112 = *v19;
  *(&v112 + 1) = v21;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AD8, &qword_1B8C29E48);
  sub_1B8C24D68();
  v22 = *&v108[0];
  swift_getKeyPath();
  *&v112 = v22;
  v23 = sub_1B8B70B14(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  sub_1B8C23588();

  v24 = *(v22 + 32);

  swift_getKeyPath();
  *&v112 = v24;
  sub_1B8B70B14(&qword_1EBAA5AA8, type metadata accessor for OnboardingController, &unk_1B8C2ADC0);
  sub_1B8C23588();

  LODWORD(a1) = *(v24 + 17);

  if (a1 == 1)
  {
    type metadata accessor for OnboardingController(0);
    v25 = sub_1B8C23DA8();
    v27 = v26;
    type metadata accessor for BatchController(0);
    v28 = sub_1B8C23DA8();
    *&v112 = v25;
    BYTE8(v112) = v27 & 1;
    *&v113 = v28;
    BYTE8(v113) = v29 & 1;
    v31 = sub_1B8B70DE8(v28, v29, v30);
    sub_1B8C24BA8();

    v32 = v93;
    (*(v93 + 16))(v15, v18, v16);
    swift_storeEnumTagMultiPayload();
    *&v112 = &type metadata for BatchOnboardingView;
    *(&v112 + 1) = v31;
    swift_getOpaqueTypeConformance2();
    sub_1B8B34CFC(&qword_1EBAA6D50, &qword_1EBAA6C78, &qword_1B8C2A310, MEMORY[0x1E6981F48]);
    sub_1B8C24598();
    return (*(v32 + 8))(v18, v16);
  }

  v82 = v15;
  v83 = v16;
  v81 = v20;
  *&v112 = v20;
  *(&v112 + 1) = v21;
  sub_1B8C24D68();
  v34 = *&v108[0];
  swift_getKeyPath();
  *&v112 = v34;
  v93 = v23;
  sub_1B8C23588();

  v35 = *(v34 + 40);

  swift_getKeyPath();
  *&v112 = v35;
  sub_1B8B70B14(&qword_1EBAA64D0, type metadata accessor for StateController, &protocol conformance descriptor for StateController);
  sub_1B8C23588();

  v36 = v35[2];
  v112 = v35[1];
  v37 = v35[3];
  v113 = v36;
  *v114 = v37;
  *&v114[9] = *(v35 + 57);
  sub_1B8B50FF8(&v112, v108);

  v38 = v112;
  v115 = v113;
  *v116 = *v114;
  *&v116[9] = *&v114[9];
  v80 = v21;
  if (*(&v112 + 1) > 1)
  {
    if (*(&v112 + 1) == 2)
    {
      v62 = sub_1B8C24808();
      v63 = v87;
      *v87 = v62;
      *(v63 + 8) = 0u;
      *(v63 + 24) = 0u;
      v63[40] = 1;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6CE8, &qword_1B8C2A388);
      sub_1B8B70B14(&qword_1EBAA6CD8, type metadata accessor for CardStack, &unk_1B8C291E4);
      sub_1B8B70B5C(&qword_1EBAA6CE0, &qword_1EBAA6CE8, &qword_1B8C2A388, sub_1B8B70BE0);
      v64 = v88;
      sub_1B8C24598();
      sub_1B8B34450(v64, v91, &qword_1EBAA6C98, &qword_1B8C2A330);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6D00, &qword_1B8C2A390);
      sub_1B8B70A2C();
      sub_1B8B70C34();
      v61 = v92;
      sub_1B8C24598();
      sub_1B8B3433C(v64, &qword_1EBAA6C98, &qword_1B8C2A330);
      goto LABEL_14;
    }

    if (*(&v112 + 1) != 3)
    {
      goto LABEL_10;
    }

    LOBYTE(v104) = sub_1B8C24808();
    v104 = v104;
    v105 = 0u;
    v106 = 0u;
    v47 = 1;
LABEL_12:
    v107 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6D10, &qword_1B8C2A398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6D28, &qword_1B8C2A3A0);
    sub_1B8B70B5C(&qword_1EBAA6D08, &qword_1EBAA6D10, &qword_1B8C2A398, sub_1B8B70D18);
    sub_1B8B70B5C(&qword_1EBAA6D20, &qword_1EBAA6D28, &qword_1B8C2A3A0, sub_1B8B70D6C);
    sub_1B8C24598();
    v56 = v109;
    v57 = v110;
    v58 = v111;
    v59 = v108[1];
    v60 = v91;
    *v91 = v108[0];
    v60[1] = v59;
    *(v60 + 4) = v56;
    *(v60 + 40) = v57;
    *(v60 + 41) = v58;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6D00, &qword_1B8C2A390);
    sub_1B8B70A2C();
    sub_1B8B70C34();
    v61 = v92;
    sub_1B8C24598();
LABEL_14:
    sub_1B8B34450(v61, v97, &qword_1EBAA6CA0, &qword_1B8C2A338);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6CC0, &qword_1B8C2A380);
    sub_1B8B709A0();
    sub_1B8B70B5C(&qword_1EBAA6D38, &qword_1EBAA6CC0, &qword_1B8C2A380, sub_1B8B38EB8);
    sub_1B8C24598();
    sub_1B8B3433C(v61, &qword_1EBAA6CA0, &qword_1B8C2A338);
    goto LABEL_15;
  }

  if (!*(&v112 + 1))
  {
    LOBYTE(v104) = sub_1B8C24808();
    v104 = v104;
    v105 = 0u;
    v106 = 0u;
    v47 = 257;
    goto LABEL_12;
  }

  if (*(&v112 + 1) != 1)
  {
LABEL_10:
    type metadata accessor for DonationController(0);
    sub_1B8B70B14(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
    v48 = sub_1B8C23DA8();
    v50 = v49;
    LOBYTE(v104) = 0;
    sub_1B8C24D58();
    v51 = v108[0];
    v52 = *(&v108[0] + 1);
    v50 &= 1u;
    LOBYTE(v108[0]) = v50;
    v53 = sub_1B8C24808();
    v54 = v97;
    *v97 = v38;
    v55 = *v116;
    v54[1] = v115;
    v54[2] = v55;
    *(v54 + 41) = *&v116[9];
    *(v54 + 64) = v51;
    *(v54 + 9) = v52;
    *(v54 + 10) = v48;
    *(v54 + 88) = v50;
    *(v54 + 96) = v53;
    *(v54 + 104) = 0u;
    *(v54 + 120) = 0u;
    *(v54 + 136) = 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6CC0, &qword_1B8C2A380);
    sub_1B8B709A0();
    sub_1B8B70B5C(&qword_1EBAA6D38, &qword_1EBAA6CC0, &qword_1B8C2A380, sub_1B8B38EB8);
    sub_1B8C24598();
    goto LABEL_15;
  }

  type metadata accessor for BatchController(0);
  v39 = sub_1B8C23DA8();
  v40 = v84;
  *v84 = v39;
  *(v40 + 8) = v41 & 1;
  type metadata accessor for StateController(0);
  *(v40 + 16) = sub_1B8C23DA8();
  *(v40 + 24) = v42 & 1;
  type metadata accessor for DonationController(0);
  sub_1B8B70B14(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  *(v40 + 32) = sub_1B8C23DA8();
  *(v40 + 40) = v43 & 1;
  v44 = *(v86 + 28);
  *(v40 + v44) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6D58, &qword_1B8C31BB0);
  swift_storeEnumTagMultiPayload();
  sub_1B8B70E3C(v40, v87, type metadata accessor for CardStack);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6CE8, &qword_1B8C2A388);
  sub_1B8B70B14(&qword_1EBAA6CD8, type metadata accessor for CardStack, &unk_1B8C291E4);
  sub_1B8B70B5C(&qword_1EBAA6CE0, &qword_1EBAA6CE8, &qword_1B8C2A388, sub_1B8B70BE0);
  v45 = v88;
  sub_1B8C24598();
  sub_1B8B34450(v45, v91, &qword_1EBAA6C98, &qword_1B8C2A330);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6D00, &qword_1B8C2A390);
  sub_1B8B70A2C();
  sub_1B8B70C34();
  v46 = v92;
  sub_1B8C24598();
  sub_1B8B3433C(v45, &qword_1EBAA6C98, &qword_1B8C2A330);
  sub_1B8B34450(v46, v97, &qword_1EBAA6CA0, &qword_1B8C2A338);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6CC0, &qword_1B8C2A380);
  sub_1B8B709A0();
  sub_1B8B70B5C(&qword_1EBAA6D38, &qword_1EBAA6CC0, &qword_1B8C2A380, sub_1B8B38EB8);
  sub_1B8C24598();
  sub_1B8B3433C(v46, &qword_1EBAA6CA0, &qword_1B8C2A338);
  sub_1B8B70EA4(v40, type metadata accessor for CardStack);
LABEL_15:
  v65 = v98;
  *&v108[0] = v81;
  *(&v108[0] + 1) = v80;
  sub_1B8C24D68();
  v66 = v104;
  swift_getKeyPath();
  *&v108[0] = v66;
  sub_1B8C23588();

  v67 = *(v66 + 48);

  swift_getKeyPath();
  *&v108[0] = v67;
  sub_1B8B70B14(&qword_1EBAA6908, type metadata accessor for DebugController, &unk_1B8C29B28);
  sub_1B8C23588();

  LODWORD(v66) = *(v67 + 17);

  v68 = v82;
  if (v66 == 1)
  {
    type metadata accessor for BatchController(0);
    v69 = sub_1B8C23DA8();
    v71 = v70 & 1;
  }

  else
  {
    v69 = 0;
    v71 = -1;
  }

  v72 = v100;
  sub_1B8B34450(v100, v65, &qword_1EBAA6CA8, &qword_1B8C2A340);
  v73 = v94;
  sub_1B8B34450(v65, v94, &qword_1EBAA6CA8, &qword_1B8C2A340);
  v74 = v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6D40, &qword_1B8C2A3D0) + 48);
  *v74 = v69;
  *(v74 + 8) = v71;
  sub_1B8B70DC0(v69, v71);
  sub_1B8B70DD4(v69, v71);
  sub_1B8B3433C(v65, &qword_1EBAA6CA8, &qword_1B8C2A340);
  sub_1B8B34450(v73, v68, &qword_1EBAA6C78, &qword_1B8C2A310);
  v75 = swift_storeEnumTagMultiPayload();
  v78 = sub_1B8B70DE8(v75, v76, v77);
  *&v108[0] = &type metadata for BatchOnboardingView;
  *(&v108[0] + 1) = v78;
  swift_getOpaqueTypeConformance2();
  sub_1B8B34CFC(&qword_1EBAA6D50, &qword_1EBAA6C78, &qword_1B8C2A310, MEMORY[0x1E6981F48]);
  sub_1B8C24598();
  sub_1B8B70DD4(v69, v71);
  sub_1B8B3433C(v73, &qword_1EBAA6C78, &qword_1B8C2A310);
  return sub_1B8B3433C(v72, &qword_1EBAA6CA8, &qword_1B8C2A340);
}

uint64_t sub_1B8B6CD9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6BE0, &qword_1B8C2A228);
  MEMORY[0x1EEE9AC00](v104);
  v103 = &v90 - v3;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6BE8, &qword_1B8C2A230);
  v99 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v93 = &v90 - v4;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6BF0, &qword_1B8C2A238);
  v92 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v91 = &v90 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6BF8, &qword_1B8C2A240);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v98 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v101 = &v90 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6C00, &qword_1B8C2A248);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v95 = &v90 - v12;
  v107 = sub_1B8C245F8();
  v13 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v108 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6C08, &qword_1B8C2A250);
  v94 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v97 = &v90 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6C10, &qword_1B8C2A258);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v115 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v90 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v114 = &v90 - v23;
  v24 = type metadata accessor for BatchEvaluationViewContent(0);
  v25 = (a1 + *(v24 + 24));
  v26 = *v25;
  v112 = v25[1];
  v113 = v26;
  v116 = v26;
  v117 = v112;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AD8, &qword_1B8C29E48);
  sub_1B8C24D68();
  v27 = v120;
  swift_getKeyPath();
  v116 = v27;
  v110 = sub_1B8B70B14(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  sub_1B8C23588();

  v29 = MEMORY[0x1B8CCA870](v28);
  v109 = a1;
  v96 = v13;
  v106 = v11;
  if (!v29)
  {
    goto LABEL_6;
  }

  if (qword_1EBAA5930 != -1)
  {
    swift_once();
  }

  v30 = qword_1EBAB39E0;
  swift_getKeyPath();
  v116 = v30;
  sub_1B8B70B14(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController, &unk_1B8C2D9F0);
  sub_1B8C23588();

  v31 = *(v30 + 18);
  a1 = v109;
  if (v31 == 1 && (v116 = v113, v117 = v112, sub_1B8C24D68(), v32 = v120, swift_getKeyPath(), v116 = v32, sub_1B8C23588(), , v33 = *(v32 + 32), , , swift_getKeyPath(), v116 = v33, sub_1B8B70B14(&qword_1EBAA5AA8, type metadata accessor for OnboardingController, &unk_1B8C2ADC0), sub_1B8C23588(), , v34 = *(v33 + 17), , (v34 & 1) == 0))
  {
    if (qword_1EBAA58D0 != -1)
    {
      swift_once();
    }

    v82 = v107;
    v83 = __swift_project_value_buffer(v107, qword_1EBAA6A48);
    v84 = (*(v13 + 16))(v108, v83, v82);
    MEMORY[0x1EEE9AC00](v84);
    *(&v90 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6C30, &qword_1B8C2A2A0);
    sub_1B8B34CFC(&qword_1EBAA6C38, &qword_1EBAA6C30, &qword_1B8C2A2A0, MEMORY[0x1E697D680]);
    v85 = v97;
    a1 = v109;
    sub_1B8C23DC8();
    v13 = v96;
    v86 = sub_1B8B34CFC(&qword_1EBAA6C18, &qword_1EBAA6C08, &qword_1B8C2A250, MEMORY[0x1E697BEF0]);
    v87 = v95;
    MEMORY[0x1B8CC92F0](v85, v15, v86);
    v88 = v106;
    (*(v106 + 16))(v22, v87, v10);
    v35 = *(v88 + 56);
    v35(v22, 0, 1, v10);
    v116 = v15;
    v117 = v86;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1B8CC9300](v22, v10, OpaqueTypeConformance2);
    sub_1B8B3433C(v22, &qword_1EBAA6C10, &qword_1B8C2A258);
    (*(v88 + 8))(v87, v10);
    (*(v94 + 8))(v97, v15);
  }

  else
  {
LABEL_6:
    v35 = *(v11 + 56);
    v35(v22, 1, 1, v10);
    v36 = sub_1B8B34CFC(&qword_1EBAA6C18, &qword_1EBAA6C08, &qword_1B8C2A250, MEMORY[0x1E697BEF0]);
    v116 = v15;
    v117 = v36;
    v37 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1B8CC9300](v22, v10, v37);
    sub_1B8B3433C(v22, &qword_1EBAA6C10, &qword_1B8C2A258);
  }

  if (*(a1 + *(v24 + 32)) == 1)
  {
    if (qword_1EBAA58E0 != -1)
    {
      swift_once();
    }

    v38 = v107;
    v39 = __swift_project_value_buffer(v107, qword_1EBAA6A78);
    v40 = (*(v13 + 16))(v108, v39, v38);
    MEMORY[0x1EEE9AC00](v40);
    *(&v90 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6C30, &qword_1B8C2A2A0);
    sub_1B8B34CFC(&qword_1EBAA6C38, &qword_1EBAA6C30, &qword_1B8C2A2A0, MEMORY[0x1E697D680]);
    v41 = v97;
    sub_1B8C23DC8();
    v42 = sub_1B8B34CFC(&qword_1EBAA6C18, &qword_1EBAA6C08, &qword_1B8C2A250, MEMORY[0x1E697BEF0]);
    v43 = v95;
    MEMORY[0x1B8CC92F0](v41, v15, v42);
    v44 = v106;
    (*(v106 + 16))(v22, v43, v10);
    v35(v22, 0, 1, v10);
    v116 = v15;
    v117 = v42;
    v45 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1B8CC9300](v22, v10, v45);
    sub_1B8B3433C(v22, &qword_1EBAA6C10, &qword_1B8C2A258);
    (*(v44 + 8))(v43, v10);
    v46 = v41;
    a1 = v109;
    (*(v94 + 8))(v46, v15);
  }

  else
  {
    v35(v22, 1, 1, v10);
    v47 = sub_1B8B34CFC(&qword_1EBAA6C18, &qword_1EBAA6C08, &qword_1B8C2A250, MEMORY[0x1E697BEF0]);
    v116 = v15;
    v117 = v47;
    v48 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1B8CC9300](v22, v10, v48);
    sub_1B8B3433C(v22, &qword_1EBAA6C10, &qword_1B8C2A258);
  }

  v116 = v113;
  v117 = v112;
  sub_1B8C24D68();
  v49 = v120;
  swift_getKeyPath();
  v116 = v49;
  sub_1B8C23588();

  v50 = *(v49 + 32);

  swift_getKeyPath();
  v116 = v50;
  sub_1B8B70B14(&qword_1EBAA5AA8, type metadata accessor for OnboardingController, &unk_1B8C2ADC0);
  sub_1B8C23588();

  LOBYTE(v49) = *(v50 + 17);

  v51 = v101;
  if (v49)
  {
    v52 = v98;
    v53 = v102;
    (*(v99 + 56))(v98, 1, 1, v102);
    v54 = sub_1B8B34CFC(&qword_1EBAA6C28, &qword_1EBAA6BF0, &qword_1B8C2A238, MEMORY[0x1E697BEF0]);
    v116 = v100;
    v117 = v54;
    v55 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1B8CC9300](v52, v53, v55);
    sub_1B8B3433C(v52, &qword_1EBAA6BF8, &qword_1B8C2A240);
  }

  else
  {
    if (qword_1EBAA58D8 != -1)
    {
      swift_once();
    }

    v56 = v107;
    v57 = __swift_project_value_buffer(v107, qword_1EBAA6A60);
    v58 = (*(v96 + 16))(v108, v57, v56);
    MEMORY[0x1EEE9AC00](v58);
    *(&v90 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6C20, &qword_1B8C2A288);
    v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA59C8, &unk_1B8C2A290);
    v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA59D0, &qword_1B8C26FB0);
    v61 = sub_1B8C24038();
    v62 = sub_1B8B34CFC(&qword_1EBAA59D8, &qword_1EBAA59D0, &qword_1B8C26FB0, MEMORY[0x1E697D680]);
    v63 = sub_1B8B70B14(&qword_1EBAA59E0, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
    v116 = v60;
    v117 = v61;
    v118 = v62;
    v119 = v63;
    v64 = swift_getOpaqueTypeConformance2();
    v67 = sub_1B8B33CCC(v64, v65, v66);
    v116 = v59;
    v117 = &type metadata for ScoreDetail;
    v118 = v64;
    v119 = v67;
    swift_getOpaqueTypeConformance2();
    v68 = v91;
    sub_1B8C23DC8();
    v69 = sub_1B8B34CFC(&qword_1EBAA6C28, &qword_1EBAA6BF0, &qword_1B8C2A238, MEMORY[0x1E697BEF0]);
    v70 = v93;
    v71 = v100;
    MEMORY[0x1B8CC92F0](v68, v100, v69);
    v72 = v99;
    v73 = v98;
    v74 = v102;
    (*(v99 + 16))(v98, v70, v102);
    (*(v72 + 56))(v73, 0, 1, v74);
    v116 = v71;
    v117 = v69;
    v75 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1B8CC9300](v73, v74, v75);
    sub_1B8B3433C(v73, &qword_1EBAA6BF8, &qword_1B8C2A240);
    (*(v72 + 8))(v70, v74);
    (*(v92 + 8))(v68, v71);
  }

  v76 = v103;
  v77 = *(v104 + 48);
  v78 = *(v104 + 64);
  v79 = v114;
  sub_1B8B34450(v114, v103, &qword_1EBAA6C10, &qword_1B8C2A258);
  v80 = v115;
  sub_1B8B34450(v115, v76 + v77, &qword_1EBAA6C10, &qword_1B8C2A258);
  sub_1B8B34450(v51, v76 + v78, &qword_1EBAA6BF8, &qword_1B8C2A240);
  sub_1B8C244A8();
  sub_1B8B3433C(v51, &qword_1EBAA6BF8, &qword_1B8C2A240);
  sub_1B8B3433C(v80, &qword_1EBAA6C10, &qword_1B8C2A258);
  return sub_1B8B3433C(v79, &qword_1EBAA6C10, &qword_1B8C2A258);
}

double sub_1B8B6DFB0(uint64_t a1)
{
  type metadata accessor for BatchEvaluationViewContent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AD8, &qword_1B8C29E48);
  sub_1B8C24D68();
  swift_getKeyPath();
  sub_1B8B70B14(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  sub_1B8C23588();

  v1 = *(v4 + 48);

  if (*(v1 + 16) == 1)
  {
    *(v1 + 16) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B70B14(&qword_1EBAA6908, type metadata accessor for DebugController, &unk_1B8C29B28);
    sub_1B8C23578();
  }

  return result;
}

uint64_t sub_1B8B6E190@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B8C24D08();
  *a1 = result;
  return result;
}

uint64_t sub_1B8B6E1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for BatchEvaluationViewContent(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1B8B70E3C(a1, &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BatchEvaluationViewContent);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_1B8B6FA60(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  return sub_1B8C24DB8();
}

uint64_t sub_1B8B6E2F4(uint64_t a1)
{
  v16 = sub_1B8C242A8();
  v2 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D70, &qword_1B8C27960);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = sub_1B8C23E78();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BatchEvaluationViewContent(0);
  sub_1B8B34450(a1 + *(v12 + 20), v7, &qword_1EBAA5D70, &qword_1B8C27960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_1B8C25488();
    v13 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_1B8C23E68();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1B8B6E57C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B8C24D08();
  *a1 = result;
  return result;
}

uint64_t sub_1B8B6E5BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v47 = sub_1B8C24658();
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v45 = (&v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = sub_1B8C24038();
  v42 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BatchEvaluationViewContent(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA59D0, &qword_1B8C26FB0);
  v10 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v12 = &v40 - v11;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA59C8, &unk_1B8C2A290);
  v44 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v41 = &v40 - v13;
  sub_1B8B70E3C(a1, &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BatchEvaluationViewContent);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  sub_1B8B6FA60(&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v50 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6C40, &qword_1B8C2A2D0);
  sub_1B8B70B5C(&qword_1EBAA6C48, &qword_1EBAA6C40, &qword_1B8C2A2D0, sub_1B8B70894);
  sub_1B8C24DB8();
  sub_1B8C24028();
  v16 = sub_1B8B34CFC(&qword_1EBAA59D8, &qword_1EBAA59D0, &qword_1B8C26FB0, MEMORY[0x1E697D680]);
  v17 = sub_1B8B70B14(&qword_1EBAA59E0, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v18 = v40;
  v19 = v49;
  sub_1B8C24A68();
  (*(v42 + 8))(v5, v19);
  v20 = v18;
  (*(v10 + 8))(v12, v18);
  v21 = (a1 + *(v7 + 32));
  v23 = *v21;
  v22 = v21[1];
  v61 = v23;
  v62 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AD8, &qword_1B8C29E48);
  sub_1B8C24D88();
  v24 = v51;
  v25 = v52;
  v26 = v53;
  swift_getKeyPath();
  v61 = v24;
  v62 = v25;
  v63 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6B58, &qword_1B8C29F48);
  sub_1B8C24E58();

  v27 = v58;
  v28 = v59;
  v29 = v60;

  swift_getKeyPath();
  v55 = v27;
  v56 = v28;
  v57 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6B70, &qword_1B8C29FD0);
  sub_1B8C24E58();

  v30 = sub_1B8C24DA8();
  v31 = v45;
  *v45 = v30;
  v32 = v46;
  v33 = v47;
  (*(v46 + 104))(v31, *MEMORY[0x1E697C8C0], v47);
  v51 = v20;
  v52 = v49;
  v53 = v16;
  v54 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1B8B33CCC(OpaqueTypeConformance2, v34, v35);
  v36 = v43;
  v37 = v41;
  sub_1B8C24A88();

  (*(v32 + 8))(v31, v33);
  return (*(v44 + 8))(v37, v36);
}

double sub_1B8B6EC8C(uint64_t a1)
{
  type metadata accessor for BatchEvaluationViewContent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AD8, &qword_1B8C29E48);
  sub_1B8C24D68();
  swift_getKeyPath();
  sub_1B8B70B14(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  sub_1B8C23588();

  v1 = *(v4 + 24);

  if (*(v1 + 16) == 1)
  {
    *(v1 + 16) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B70B14(&qword_1EBAA5F60, type metadata accessor for ScoreController, &protocol conformance descriptor for ScoreController);
    sub_1B8C23578();
  }

  return result;
}

void sub_1B8B6EE6C(uint64_t a2@<X8>)
{
  type metadata accessor for BatchEvaluationViewContent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AD8, &qword_1B8C29E48);
  sub_1B8C24D68();
  swift_getKeyPath();
  sub_1B8B70B14(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  sub_1B8C23588();

  v3 = *(v9 + 24);

  v4 = sub_1B8C247F8();
  sub_1B8C23D18();
  *a2 = v3;
  *(a2 + 8) = 0x403C000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = xmmword_1B8C27D60;
  *(a2 + 40) = 0;
  *(a2 + 48) = v4;
  *(a2 + 56) = v5;
  *(a2 + 64) = v6;
  *(a2 + 72) = v7;
  *(a2 + 80) = v8;
  *(a2 + 88) = 0;
}

void *sub_1B8B6EF9C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for BatchController(0);
  sub_1B8B70B14(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  *a1 = sub_1B8C23DA8();
  *(a1 + 8) = v2 & 1;
  v3 = type metadata accessor for DebugSheet(0);
  v4 = *(v3 + 20);
  *(a1 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6408, &qword_1B8C28D00);
  swift_storeEnumTagMultiPayload();
  v5 = a1 + *(v3 + 24);
  result = sub_1B8C24D58();
  *v5 = v7;
  *(v5 + 8) = v8;
  return result;
}

uint64_t sub_1B8B6F09C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ScoreController(0);
  sub_1B8B70B14(&qword_1EBAA5F60, type metadata accessor for ScoreController, &protocol conformance descriptor for ScoreController);
  result = sub_1B8C23DA8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1B8B6F118(uint64_t a1)
{
  v1[12] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5AC8, &qword_1B8C27250);
  v1[13] = swift_task_alloc();
  sub_1B8C25368();
  v1[14] = sub_1B8C25358();
  v3 = sub_1B8C25328();
  v1[15] = v3;
  v1[16] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1B8B6F1E8, v3, v2);
}

uint64_t sub_1B8B6F1E8()
{
  v1 = v0[12];
  v2 = (v1 + *(type metadata accessor for BatchEvaluationViewContent(0) + 24));
  v3 = *v2;
  v0[17] = *v2;
  v4 = v2[1];
  v0[18] = v4;
  v0[5] = v3;
  v0[6] = v4;
  v0[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AD8, &qword_1B8C29E48);
  sub_1B8C24D68();
  v5 = v0[9];
  swift_getKeyPath();
  v0[10] = v5;
  sub_1B8B70B14(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  sub_1B8C23588();

  swift_beginAccess();
  v0[20] = *(v5 + 16);

  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_1B8B6F36C;

  return sub_1B8BC20B4();
}

uint64_t sub_1B8B6F36C()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1B8B6F4B0, v3, v2);
}

uint64_t sub_1B8B6F4B0()
{
  v1 = v0[18];
  v2 = v0[17];
  v3 = v0[13];

  v0[7] = v2;
  v0[8] = v1;
  sub_1B8C24D68();
  sub_1B8B6A320(v3);
  v4 = sub_1B8C23E78();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  sub_1B8B4F4B0(v3);

  v5 = v0[1];

  return v5();
}

double sub_1B8B6F5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for BatchEvaluationViewContent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AD8, &qword_1B8C29E48);
  sub_1B8C24D68();
  sub_1B8B4FA00(a2);

  return result;
}

void sub_1B8B6F634(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B70B14(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController, &unk_1B8C2D9F0);
  sub_1B8C23588();

  *a2 = *(v3 + 18);
}

uint64_t sub_1B8B6F754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1B8B6F824@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1B8CC8ED0]();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for BatchEvaluationViewContent(uint64_t a1)
{
  result = qword_1EBAA6BB0;
  if (!qword_1EBAA6BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B8B6F8C8()
{
  result = qword_1EBAA6AB8;
  if (!qword_1EBAA6AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6AA8, &qword_1B8C29E38);
    sub_1B8B34CFC(&qword_1EBAA6AC0, &qword_1EBAA6AA0, &qword_1B8C29E30, MEMORY[0x1E697C1A8]);
    sub_1B8B70B14(&qword_1EBAA6AC8, type metadata accessor for BatchEvaluationViewContent, &protocol conformance descriptor for BatchEvaluationViewContent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6AB8);
  }

  return result;
}

void *sub_1B8B6F9B0@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 33))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1B8B69DA8(*(v1 + 16), *(v1 + 24), v2 | *(v1 + 32), a1);
}

unint64_t sub_1B8B6F9D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA6B78;
  if (!qword_1EBAA6B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6B78);
  }

  return result;
}

uint64_t sub_1B8B6FA60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatchEvaluationViewContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B6FAC4()
{
  v2 = *(type metadata accessor for BatchEvaluationViewContent(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B8B5115C;

  return sub_1B8B6F118(v0 + v3);
}

double sub_1B8B6FB90(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for BatchEvaluationViewContent(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1B8B6F5B0(a1, a2, v6);
}

unint64_t sub_1B8B6FC10()
{
  result = qword_1EBAA6B88;
  if (!qword_1EBAA6B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6B30, &qword_1B8C29F08);
    sub_1B8B6FCCC();
    sub_1B8B70B14(&qword_1EBAA6B98, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6B88);
  }

  return result;
}

unint64_t sub_1B8B6FCCC()
{
  result = qword_1EBAA6B90;
  if (!qword_1EBAA6B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6B80, &qword_1B8C2A080);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6B28, &qword_1B8C29F00);
    type metadata accessor for DebugController(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6B20, &qword_1B8C29EF8);
    type metadata accessor for OnboardingController(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6B18, &qword_1B8C29EF0);
    type metadata accessor for StateController(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6B10, &qword_1B8C29EE8);
    type metadata accessor for ScoreController(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6B08, &qword_1B8C29EE0);
    type metadata accessor for DonationController(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6B00, &qword_1B8C29ED8);
    type metadata accessor for BatchController(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6AF8, &qword_1B8C29ED0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6AF0, &qword_1B8C29EC8);
    type metadata accessor for DebugSheet(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6AE8, &qword_1B8C29EC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6B40, &qword_1B8C29F18);
    sub_1B8B34CFC(&qword_1EBAA6B48, &qword_1EBAA6AE8, &qword_1B8C29EC0, MEMORY[0x1E6981880]);
    sub_1B8B34CFC(&qword_1EBAA6B50, &qword_1EBAA6B40, &qword_1B8C29F18, MEMORY[0x1E697C5E0]);
    swift_getOpaqueTypeConformance2();
    sub_1B8B70B14(&qword_1EBAA6B68, type metadata accessor for DebugSheet, &unk_1B8C2AFE0);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1B8B6F9D8(OpaqueTypeConformance2, v2, v3);
    swift_getOpaqueTypeConformance2();
    sub_1B8B70B14(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
    swift_getOpaqueTypeConformance2();
    sub_1B8B70B14(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
    swift_getOpaqueTypeConformance2();
    sub_1B8B70B14(&qword_1EBAA5F60, type metadata accessor for ScoreController, &protocol conformance descriptor for ScoreController);
    swift_getOpaqueTypeConformance2();
    sub_1B8B70B14(&qword_1EBAA64D0, type metadata accessor for StateController, &protocol conformance descriptor for StateController);
    swift_getOpaqueTypeConformance2();
    sub_1B8B70B14(&qword_1EBAA5AA8, type metadata accessor for OnboardingController, &unk_1B8C2ADC0);
    swift_getOpaqueTypeConformance2();
    sub_1B8B70B14(&qword_1EBAA6908, type metadata accessor for DebugController, &unk_1B8C29B28);
    swift_getOpaqueTypeConformance2();
    sub_1B8B34CFC(&qword_1EBAA5FE8, &qword_1EBAA5FF0, &qword_1B8C27F88, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6B90);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B8B70254(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B8B7029C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B8B70314(uint64_t a1)
{
  sub_1B8B70450(319, &qword_1EBAA6BC0, MEMORY[0x1E697BE48], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1B8B70450(319, &qword_1EBAA5DD0, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1B8B70450(319, &qword_1EBAA6BC8, type metadata accessor for BatchController, MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8B70450(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1B8B704B4()
{
  result = qword_1EBAA6BD0;
  if (!qword_1EBAA6BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6BD8, &unk_1B8C2A1E0);
    sub_1B8B6F8C8();
    sub_1B8B34CFC(&qword_1EBAA6AD0, &qword_1EBAA6AB0, &qword_1B8C29E40, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6BD0);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for BatchEvaluationViewContent(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AE0, &qword_1B8C29E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1B8C23D38();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D70, &qword_1B8C27960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1B8C23E78();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8B70818(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for BatchEvaluationViewContent(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1B8B70894()
{
  result = qword_1EBAA6C50;
  if (!qword_1EBAA6C50)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6C58, &qword_1B8C2A2D8);
    sub_1B8B7094C(v1, v2, v3);
    sub_1B8B34CFC(&qword_1EBAA6C68, &qword_1EBAA6C70, &qword_1B8C2A2E0, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6C50);
  }

  return result;
}

unint64_t sub_1B8B7094C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA6C60;
  if (!qword_1EBAA6C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6C60);
  }

  return result;
}

unint64_t sub_1B8B709A0()
{
  result = qword_1EBAA6CC8;
  if (!qword_1EBAA6CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6CA0, &qword_1B8C2A338);
    sub_1B8B70A2C();
    sub_1B8B70C34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6CC8);
  }

  return result;
}

unint64_t sub_1B8B70A2C()
{
  result = qword_1EBAA6CD0;
  if (!qword_1EBAA6CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6C98, &qword_1B8C2A330);
    sub_1B8B70B14(&qword_1EBAA6CD8, type metadata accessor for CardStack, &unk_1B8C291E4);
    sub_1B8B70B5C(&qword_1EBAA6CE0, &qword_1EBAA6CE8, &qword_1B8C2A388, sub_1B8B70BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6CD0);
  }

  return result;
}

uint64_t sub_1B8B70B14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B8B70B5C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B8B70BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA6CF0;
  if (!qword_1EBAA6CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6CF0);
  }

  return result;
}

unint64_t sub_1B8B70C34()
{
  result = qword_1EBAA6CF8;
  if (!qword_1EBAA6CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6D00, &qword_1B8C2A390);
    sub_1B8B70B5C(&qword_1EBAA6D08, &qword_1EBAA6D10, &qword_1B8C2A398, sub_1B8B70D18);
    sub_1B8B70B5C(&qword_1EBAA6D20, &qword_1EBAA6D28, &qword_1B8C2A3A0, sub_1B8B70D6C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6CF8);
  }

  return result;
}

unint64_t sub_1B8B70D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA6D18;
  if (!qword_1EBAA6D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6D18);
  }

  return result;
}

unint64_t sub_1B8B70D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA6D30;
  if (!qword_1EBAA6D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6D30);
  }

  return result;
}

uint64_t sub_1B8B70DC0(uint64_t result, char a2)
{
  if (a2 != -1)
  {
  }

  return v2;
}

double sub_1B8B70DD4(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

unint64_t sub_1B8B70DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA6D48;
  if (!qword_1EBAA6D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6D48);
  }

  return result;
}

uint64_t sub_1B8B70E3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8B70EA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for EvaluationCard(uint64_t a1)
{
  result = qword_1EBAA6D60;
  if (!qword_1EBAA6D60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8B70F7C(uint64_t a1)
{
  type metadata accessor for BatchInteraction(319);
  if (v1 <= 0x3F)
  {
    sub_1B8B71080(319, &qword_1EBAA5FB8, type metadata accessor for BatchController, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1B8B71080(319, &qword_1EBAA6D70, type metadata accessor for FBKEvaluationController, MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8B71080(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1B8B71100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B8B74EAC(a1, a2, a3);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

double sub_1B8B71164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B8B7485C(a1, a2, a3);
  sub_1B8C242B8();
  return v4;
}

uint64_t sub_1B8B711A0@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v62 = sub_1B8C24328();
  v61 = *(v62 - 8);
  v2 = MEMORY[0x1EEE9AC00](v62);
  v59 = v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v56 - v4;
  v6 = type metadata accessor for EvaluationCard(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v71 = v9;
  v10 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6D78, &qword_1B8C2A478);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v56 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6D80, &qword_1B8C2A480);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v67 = v56 - v17;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6D88, &unk_1B8C2A488) - 8;
  MEMORY[0x1EEE9AC00](v64);
  v63 = v56 - v18;
  v72 = type metadata accessor for EvaluationCard;
  v69 = v1;
  v66 = v10;
  sub_1B8B74958(v1, v10, type metadata accessor for EvaluationCard);
  v70 = *(v8 + 80);
  v19 = (v70 + 16) & ~v70;
  v68 = v19;
  v20 = swift_allocObject();
  sub_1B8B74154(v10, v20 + v19);
  *&v80 = 0x4030000000000000;
  *(&v80 + 1) = sub_1B8B741B8;
  *&v81 = v20;
  v21 = (v1 + *(v7 + 36));
  v23 = *v21;
  v22 = v21[1];
  v58 = v23;
  v57 = v22;
  v76 = v23;
  v77 = v22;
  v56[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6D90, &qword_1B8C2A498);
  sub_1B8C24D68();
  v24 = v79[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6D98, &qword_1B8C2A4A0);
  type metadata accessor for FBKEvaluationController(0);
  sub_1B8B34CFC(&qword_1EBAA6DA0, &qword_1EBAA6D98, &qword_1B8C2A4A0, &unk_1B8C2AC90);
  v60 = sub_1B8B74E64(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C24A78();

  v25 = sub_1B8C24C68();
  KeyPath = swift_getKeyPath();
  v27 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DA8, &qword_1B8C2A4D8) + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  sub_1B8C24318();
  v28 = v61;
  v29 = v62;
  (*(v61 + 16))(v59, v5, v62);
  sub_1B8B74E64(&qword_1EBAA6DB0, MEMORY[0x1E697F400], MEMORY[0x1E697F3F8]);
  v30 = v29;
  v31 = sub_1B8C23E58();
  (*(v28 + 8))(v5, v30);
  *&v14[*(v12 + 44)] = v31;
  sub_1B8C24F48();
  sub_1B8C24088();
  v32 = v67;
  sub_1B8B3883C(v14, v67, &qword_1EBAA6D78, &qword_1B8C2A478);
  v33 = (v32 + *(v16 + 44));
  v34 = v85;
  v33[4] = v84;
  v33[5] = v34;
  v33[6] = v86;
  v35 = v81;
  *v33 = v80;
  v33[1] = v35;
  v36 = v83;
  v33[2] = v82;
  v33[3] = v36;
  v79[0] = v58;
  v79[1] = v57;
  sub_1B8C24D88();
  v37 = v76;
  v38 = v77;
  v39 = v78;
  v62 = v78;
  v40 = v66;
  sub_1B8B74958(v69, v66, v72);
  v41 = v68;
  v42 = swift_allocObject();
  sub_1B8B74154(v40, v42 + v41);
  v43 = v63;
  v44 = &v63[*(v64 + 44)];
  v45 = *(type metadata accessor for FBKEvaluationViewModifier(0) + 20);
  *&v44[v45] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DB8, &unk_1B8C2A510);
  swift_storeEnumTagMultiPayload();
  v76 = v37;
  v77 = v38;
  v78 = v39;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  MEMORY[0x1B8CC9B00](v79, v46);
  v47 = v79[0];
  swift_getKeyPath();
  v73 = v47;
  v74 = sub_1B8B7428C;
  v75 = v42;
  v76 = v47;
  sub_1B8C23578();

  *v44 = v37;
  *(v44 + 1) = v38;
  *(v44 + 2) = v62;
  v48 = v43;
  sub_1B8B3883C(v67, v43, &qword_1EBAA6D80, &qword_1B8C2A480);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC8, &qword_1B8C2A548);
  v50 = v65;
  v51 = (v65 + *(v49 + 36));
  sub_1B8C23EE8();
  sub_1B8C25378();
  v52 = v66;
  sub_1B8B74958(v69, v66, v72);
  v53 = v68;
  v54 = swift_allocObject();
  sub_1B8B74154(v52, v54 + v53);
  *v51 = &unk_1B8C2A558;
  v51[1] = v54;
  return sub_1B8B3883C(v48, v50, &qword_1EBAA6D88, &unk_1B8C2A488);
}

uint64_t sub_1B8B719FC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a2@<X8>)@<X8>)
{
  v4 = type metadata accessor for EvaluationCard(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1B8B74958(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EvaluationCard);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  result = sub_1B8B74154(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  *a2 = sub_1B8B747DC;
  a2[1] = v8;
  return result;
}

uint64_t sub_1B8B71B08@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_1B8C24468();
  *(a3 + 8) = 0x4030000000000000;
  *(a3 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DD0, &qword_1B8C2A560);
  sub_1B8B71BB0(a2, a3 + *(v5 + 44));
  KeyPath = swift_getKeyPath();
  sub_1B8C23E88();
  v8 = v7;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DD8, &qword_1B8C2A590);
  v10 = (a3 + *(result + 36));
  *v10 = KeyPath;
  v10[1] = v8;
  return result;
}

uint64_t sub_1B8B71BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DE8, &qword_1B8C2A598);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v122 = v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v120 = (v100 - v6);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DF0, &qword_1B8C2A5A0);
  MEMORY[0x1EEE9AC00](v115);
  v109 = v100 - v7;
  v110 = sub_1B8C24EA8();
  v113 = *(v110 - 8);
  v8 = MEMORY[0x1EEE9AC00](v110);
  v108 = v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v124 = v100 - v10;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DF8, &qword_1B8C2A5A8);
  MEMORY[0x1EEE9AC00](v114);
  v116 = v100 - v11;
  v12 = type metadata accessor for Previewer(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v106 = v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v107 = v100 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v112 = v100 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = v100 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6008, &qword_1B8C2A5B0);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v123 = v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v125 = v100 - v24;
  v25 = type metadata accessor for BatchInteraction.ContentPolarity(0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6E00, &qword_1B8C2A5B8);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v119 = v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v128 = v100 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6E08, &qword_1B8C2A5C0);
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v127 = v100 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v36 = v100 - v35;
  *v36 = sub_1B8C242D8();
  *(v36 + 1) = 0x4020000000000000;
  v36[16] = 0;
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6E10, &qword_1B8C2A5C8) + 44);
  v126 = v36;
  sub_1B8B72B4C(a1, &v36[v37]);
  v118 = sub_1B8C242E8();
  v136 = 1;
  sub_1B8B72E50(&v131);
  v139 = *&v132[16];
  v140 = *&v132[32];
  v141 = *&v132[48];
  v142 = v132[64];
  v137 = v131;
  v138 = *v132;
  v144 = v132[64];
  v143[2] = *&v132[16];
  v143[3] = *&v132[32];
  v143[4] = *&v132[48];
  v143[0] = v131;
  v143[1] = *v132;
  sub_1B8B34450(&v137, &v129, &qword_1EBAA6E18, &qword_1B8C2A5D0);
  sub_1B8B3433C(v143, &qword_1EBAA6E18, &qword_1B8C2A5D0);
  *&v135[39] = v139;
  *&v135[55] = v140;
  *&v135[71] = v141;
  v135[87] = v142;
  *&v135[7] = v137;
  *&v135[23] = v138;
  v117 = v136;
  v38 = type metadata accessor for BatchInteraction(0);
  sub_1B8B74958(a1 + *(v38 + 28), v27, type metadata accessor for BatchInteraction.ContentPolarity);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5FD8, &qword_1B8C28560) + 48);
    v40 = v125;
    sub_1B8B46178(v27, v125);
    sub_1B8B46178(&v27[v39], v123);
    v103 = type metadata accessor for BatchInteraction;
    sub_1B8B74958(a1, v20, type metadata accessor for BatchInteraction);
    sub_1B8B34450(v40, &v20[v12[5]], &qword_1EBAA6008, &qword_1B8C2A5B0);
    type metadata accessor for FullScreenPreviewController(0);
    v41 = swift_allocObject();
    v42 = OBJC_IVAR____TtC8Feedback27FullScreenPreviewController__content;
    v43 = type metadata accessor for FullScreenPreviewController.Content(0);
    v111 = a1;
    v44 = v43;
    v45 = *(v43 - 8);
    v46 = *(v45 + 56);
    v101 = v46;
    v102 = v45 + 56;
    v46(v41 + v42, 1, 1, v43);
    v46(v41 + v42, 1, 1, v44);
    v47 = OBJC_IVAR____TtC8Feedback27FullScreenPreviewController__quickLookPreviewURL;
    v48 = sub_1B8C23498();
    v49 = *(v48 - 8);
    v50 = *(v49 + 56);
    v100[0] = v50;
    v100[1] = v49 + 56;
    v50(v41 + v47, 1, 1, v48);
    v50(v41 + v47, 1, 1, v48);
    sub_1B8C235B8();
    v51 = v12[6];
    v105 = v20;
    v20[v51] = 1;
    v52 = &v20[v12[7]];
    *&v129 = v41;
    sub_1B8C24D58();
    v53 = *(&v131 + 1);
    *v52 = v131;
    *(v52 + 1) = v53;
    sub_1B8C24E98();
    v54 = v112;
    sub_1B8B74958(v111, v112, v103);
    sub_1B8B34450(v123, v54 + v12[5], &qword_1EBAA6008, &qword_1B8C2A5B0);
    v55 = swift_allocObject();
    v56 = OBJC_IVAR____TtC8Feedback27FullScreenPreviewController__content;
    v57 = v101;
    v101(v55 + OBJC_IVAR____TtC8Feedback27FullScreenPreviewController__content, 1, 1, v44);
    v57(v55 + v56, 1, 1, v44);
    v58 = OBJC_IVAR____TtC8Feedback27FullScreenPreviewController__quickLookPreviewURL;
    v59 = v100[0];
    (v100[0])(v55 + OBJC_IVAR____TtC8Feedback27FullScreenPreviewController__quickLookPreviewURL, 1, 1, v48);
    v59(v55 + v58, 1, 1, v48);
    sub_1B8C235B8();
    v104 = v12;
    v60 = v54;
    *(v54 + v12[6]) = 0;
    v61 = (v54 + v12[7]);
    *&v129 = v55;
    sub_1B8C24D58();
    v62 = *(&v131 + 1);
    *v61 = v131;
    v61[1] = v62;
    v63 = v107;
    sub_1B8B74958(v105, v107, type metadata accessor for Previewer);
    v64 = *(v113 + 16);
    v65 = v108;
    v66 = v110;
    v64(v108, v124, v110);
    v67 = v106;
    sub_1B8B74958(v60, v106, type metadata accessor for Previewer);
    v68 = v109;
    sub_1B8B74958(v63, v109, type metadata accessor for Previewer);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6E20, &qword_1B8C2A5D8);
    v64((v68 + *(v69 + 48)), v65, v66);
    sub_1B8B74958(v67, v68 + *(v69 + 64), type metadata accessor for Previewer);
    sub_1B8B749C0(v67, type metadata accessor for Previewer);
    v70 = *(v113 + 8);
    v70(v65, v66);
    sub_1B8B749C0(v63, type metadata accessor for Previewer);
    sub_1B8B34450(v68, v116, &qword_1EBAA6DF0, &qword_1B8C2A5A0);
    swift_storeEnumTagMultiPayload();
    sub_1B8B74E64(&qword_1EBAA6E28, type metadata accessor for Previewer, &unk_1B8C27FAC);
    sub_1B8B34CFC(&qword_1EBAA6E30, &qword_1EBAA6DF0, &qword_1B8C2A5A0, MEMORY[0x1E6981F48]);
    a1 = v111;
    sub_1B8C24598();
    sub_1B8B3433C(v68, &qword_1EBAA6DF0, &qword_1B8C2A5A0);
    sub_1B8B749C0(v112, type metadata accessor for Previewer);
    v70(v124, v66);
    sub_1B8B749C0(v105, type metadata accessor for Previewer);
    sub_1B8B3433C(v123, &qword_1EBAA6008, &qword_1B8C2A5B0);
  }

  else
  {
    v71 = v125;
    sub_1B8B46178(v27, v125);
    sub_1B8B74958(a1, v20, type metadata accessor for BatchInteraction);
    sub_1B8B34450(v71, &v20[v12[5]], &qword_1EBAA6008, &qword_1B8C2A5B0);
    type metadata accessor for FullScreenPreviewController(0);
    v72 = swift_allocObject();
    v73 = OBJC_IVAR____TtC8Feedback27FullScreenPreviewController__content;
    v74 = type metadata accessor for FullScreenPreviewController.Content(0);
    v75 = v12;
    v76 = *(*(v74 - 8) + 56);
    v76(v72 + v73, 1, 1, v74);
    v76(v72 + v73, 1, 1, v74);
    v77 = OBJC_IVAR____TtC8Feedback27FullScreenPreviewController__quickLookPreviewURL;
    v78 = sub_1B8C23498();
    v79 = *(*(v78 - 8) + 56);
    v79(v72 + v77, 1, 1, v78);
    v79(v72 + v77, 1, 1, v78);
    sub_1B8C235B8();
    v20[v75[6]] = 2;
    v80 = &v20[v75[7]];
    *&v129 = v72;
    sub_1B8C24D58();
    v81 = *(&v131 + 1);
    *v80 = v131;
    *(v80 + 1) = v81;
    sub_1B8B74958(v20, v116, type metadata accessor for Previewer);
    swift_storeEnumTagMultiPayload();
    sub_1B8B74E64(&qword_1EBAA6E28, type metadata accessor for Previewer, &unk_1B8C27FAC);
    sub_1B8B34CFC(&qword_1EBAA6E30, &qword_1EBAA6DF0, &qword_1B8C2A5A0, MEMORY[0x1E6981F48]);
    sub_1B8C24598();
    sub_1B8B749C0(v20, type metadata accessor for Previewer);
  }

  sub_1B8B3433C(v125, &qword_1EBAA6008, &qword_1B8C2A5B0);
  v82 = sub_1B8C242E8();
  v83 = v120;
  *v120 = v82;
  *(v83 + 8) = 0x4020000000000000;
  *(v83 + 16) = 0;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6E38, &qword_1B8C2A5E0);
  sub_1B8B73018(a1, (v83 + *(v84 + 44)));
  v85 = v127;
  sub_1B8B34450(v126, v127, &qword_1EBAA6E08, &qword_1B8C2A5C0);
  v86 = v119;
  sub_1B8B34450(v128, v119, &qword_1EBAA6E00, &qword_1B8C2A5B8);
  v87 = v122;
  sub_1B8B34450(v83, v122, &qword_1EBAA6DE8, &qword_1B8C2A598);
  v88 = v85;
  v89 = v121;
  sub_1B8B34450(v88, v121, &qword_1EBAA6E08, &qword_1B8C2A5C0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6E40, &qword_1B8C2A5E8);
  v91 = v90[12];
  *(&v130[1] + 1) = *&v135[16];
  *(&v130[3] + 1) = *&v135[48];
  v92 = (v89 + v91);
  v93 = v118;
  v129 = v118;
  v94 = v117;
  LOBYTE(v130[0]) = v117;
  *(&v130[2] + 1) = *&v135[32];
  *(&v130[5] + 1) = *&v135[80];
  *(&v130[4] + 1) = *&v135[64];
  *(v130 + 1) = *v135;
  BYTE9(v130[5]) = 0;
  v95 = v130[4];
  v92[4] = v130[3];
  v92[5] = v95;
  *(v92 + 90) = *(&v130[4] + 10);
  v96 = v130[0];
  *v92 = v129;
  v92[1] = v96;
  v97 = v130[2];
  v92[2] = v130[1];
  v92[3] = v97;
  sub_1B8B34450(v86, v89 + v90[16], &qword_1EBAA6E00, &qword_1B8C2A5B8);
  v98 = v89 + v90[20];
  *v98 = 0;
  *(v98 + 8) = 1;
  sub_1B8B34450(v87, v89 + v90[24], &qword_1EBAA6DE8, &qword_1B8C2A598);
  sub_1B8B34450(&v129, &v131, &qword_1EBAA6E48, &qword_1B8C2A5F0);
  sub_1B8B3433C(v83, &qword_1EBAA6DE8, &qword_1B8C2A598);
  sub_1B8B3433C(v128, &qword_1EBAA6E00, &qword_1B8C2A5B8);
  sub_1B8B3433C(v126, &qword_1EBAA6E08, &qword_1B8C2A5C0);
  sub_1B8B3433C(v87, &qword_1EBAA6DE8, &qword_1B8C2A598);
  sub_1B8B3433C(v86, &qword_1EBAA6E00, &qword_1B8C2A5B8);
  *&v132[33] = *&v135[32];
  *&v132[49] = *&v135[48];
  *&v132[65] = *&v135[64];
  *&v132[1] = *v135;
  v131 = v93;
  v132[0] = v94;
  v133 = *&v135[80];
  *&v132[17] = *&v135[16];
  v134 = 0;
  sub_1B8B3433C(&v131, &qword_1EBAA6E48, &qword_1B8C2A5F0);
  return sub_1B8B3433C(v127, &qword_1EBAA6E08, &qword_1B8C2A5C0);
}

uint64_t sub_1B8B72B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SkipButton(0);
  v5 = v4 - 8;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6E78, &qword_1B8C2A6C8);
  v12 = v11 - 8;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  sub_1B8B74958(a1, &v25 - v16, type metadata accessor for BatchInteraction);
  v17[*(v12 + 44)] = 0;
  sub_1B8B74958(a1, &v10[*(v5 + 32)], type metadata accessor for BatchInteraction);
  type metadata accessor for BatchController(0);
  sub_1B8B74E64(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  v18 = sub_1B8C23DA8();
  LOBYTE(a1) = v19;
  type metadata accessor for FBKEvaluationController(0);
  sub_1B8B74E64(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  v20 = sub_1B8C23DA8();
  *v10 = v18;
  v10[8] = a1 & 1;
  *(v10 + 2) = v20;
  v10[24] = v21 & 1;
  sub_1B8B34450(v17, v15, &qword_1EBAA6E78, &qword_1B8C2A6C8);
  sub_1B8B74958(v10, v8, type metadata accessor for SkipButton);
  sub_1B8B34450(v15, a2, &qword_1EBAA6E78, &qword_1B8C2A6C8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6E80, &unk_1B8C2A6D0);
  v23 = a2 + *(v22 + 48);
  *v23 = 0;
  *(v23 + 8) = 1;
  sub_1B8B74958(v8, a2 + *(v22 + 64), type metadata accessor for SkipButton);
  sub_1B8B749C0(v10, type metadata accessor for SkipButton);
  sub_1B8B3433C(v17, &qword_1EBAA6E78, &qword_1B8C2A6C8);
  sub_1B8B749C0(v8, type metadata accessor for SkipButton);
  return sub_1B8B3433C(v15, &qword_1EBAA6E78, &qword_1B8C2A6C8);
}

uint64_t sub_1B8B72E50@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B8B68488();
  sub_1B8B34CA8(v2, v3, v4);
  v5 = sub_1B8C249E8();
  v7 = v6;
  v9 = v8;
  sub_1B8C24938();
  v10 = sub_1B8C249B8();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_1B8B34060(v5, v7, v9 & 1);

  KeyPath = swift_getKeyPath();
  v18 = swift_getKeyPath();
  *&v27 = v10;
  *(&v27 + 1) = v12;
  LOBYTE(v28) = v14 & 1;
  v19 = *v26;
  *(&v28 + 1) = *v26;
  DWORD1(v28) = *&v26[3];
  *(&v28 + 1) = v16;
  v29 = KeyPath;
  LOBYTE(v30) = 1;
  DWORD1(v30) = *&v25[3];
  v20 = *v25;
  *(&v30 + 1) = *v25;
  *(&v30 + 1) = v18;
  v31 = 0x3FE0000000000000;
  v21 = v30;
  *(a1 + 32) = KeyPath;
  *(a1 + 48) = v21;
  v22 = v28;
  *a1 = v27;
  *(a1 + 16) = v22;
  *(a1 + 64) = 0x3FE0000000000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  v24[72] = 1;
  v32[0] = v10;
  v32[1] = v12;
  v33 = v14 & 1;
  *&v34[3] = *&v26[3];
  *v34 = v19;
  v35 = v16;
  v36 = KeyPath;
  v37 = 0;
  v38 = 1;
  *&v39[3] = *&v25[3];
  *v39 = v20;
  v40 = v18;
  v41 = 0x3FE0000000000000;
  sub_1B8B34450(&v27, v24, &qword_1EBAA6E70, &qword_1B8C2A6C0);
  return sub_1B8B3433C(v32, &qword_1EBAA6E70, &qword_1B8C2A6C0);
}

void *sub_1B8B73018@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v64 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6E50, &qword_1B8C2A5F8);
  MEMORY[0x1EEE9AC00](v61);
  v63 = v53 - v3;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6E58, &qword_1B8C2A600);
  MEMORY[0x1EEE9AC00](v62);
  v60 = v53 - v4;
  v54 = type metadata accessor for ActionButton(0);
  v5 = MEMORY[0x1EEE9AC00](v54);
  v57 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v56 = v53 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v59 = v53 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v58 = v53 - v11;
  v12 = sub_1B8C242A8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(type metadata accessor for EvaluationCard(0) + 24);
  v55 = a1;
  v17 = a1 + v16;
  v18 = *v17;
  v19 = *(v17 + 8);

  if ((v19 & 1) == 0)
  {
    sub_1B8C25488();
    v20 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v13 + 8))(v15, v12);
    v18 = v65;
  }

  swift_getKeyPath();
  v65 = v18;
  v21 = sub_1B8B74E64(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  sub_1B8C23588();

  v22 = v18[5];

  swift_getKeyPath();
  v65 = v22;
  sub_1B8B74E64(&qword_1EBAA64D0, type metadata accessor for StateController, &protocol conformance descriptor for StateController);
  sub_1B8C23588();

  v23 = v22[2];
  v24 = v22[3];
  v25 = v22[4];
  v26 = v22[5];
  v28 = v22[6];
  v27 = v22[7];
  v29 = v22[8];
  sub_1B8B748B0(v23, v24, v25, v26, v28, v27, v29);

  if (v24 == 1)
  {
    v53[1] = v21;
    v30 = v54;
    v31 = v55;
    v32 = v58;
    sub_1B8B74958(v55, &v58[*(v54 + 20)], type metadata accessor for BatchInteraction);
    type metadata accessor for BatchController(0);
    v33 = sub_1B8C23DA8();
    v35 = v34;
    type metadata accessor for FBKEvaluationController(0);
    sub_1B8B74E64(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
    v36 = sub_1B8C23DA8();
    *v32 = 0;
    v37 = &v32[v30[6]];
    *v37 = v33;
    v37[8] = v35 & 1;
    v38 = &v32[v30[7]];
    *v38 = v36;
    v38[8] = v39 & 1;
    v40 = v59;
    sub_1B8B74958(v31, &v59[v30[5]], type metadata accessor for BatchInteraction);
    v41 = sub_1B8C23DA8();
    v43 = v42;
    v44 = sub_1B8C23DA8();
    *v40 = 1;
    v45 = &v40[v30[6]];
    *v45 = v41;
    v45[8] = v43 & 1;
    v46 = &v40[v30[7]];
    *v46 = v44;
    v46[8] = v47 & 1;
    v48 = v56;
    sub_1B8B74958(v32, v56, type metadata accessor for ActionButton);
    v49 = v57;
    sub_1B8B74958(v40, v57, type metadata accessor for ActionButton);
    v50 = v60;
    sub_1B8B74958(v48, v60, type metadata accessor for ActionButton);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6E68, &qword_1B8C2A658);
    sub_1B8B74958(v49, v50 + *(v51 + 48), type metadata accessor for ActionButton);
    sub_1B8B749C0(v49, type metadata accessor for ActionButton);
    sub_1B8B749C0(v48, type metadata accessor for ActionButton);
    sub_1B8B34450(v50, v63, &qword_1EBAA6E58, &qword_1B8C2A600);
    swift_storeEnumTagMultiPayload();
    sub_1B8B34CFC(&qword_1EBAA6E60, &qword_1EBAA6E58, &qword_1B8C2A600, MEMORY[0x1E6981F48]);
    sub_1B8C24598();
    sub_1B8B3433C(v50, &qword_1EBAA6E58, &qword_1B8C2A600);
    sub_1B8B749C0(v40, type metadata accessor for ActionButton);
    return sub_1B8B749C0(v32, type metadata accessor for ActionButton);
  }

  else
  {
    sub_1B8B74904(v23, v24, v25, v26, v28, v27, v29);
    swift_storeEnumTagMultiPayload();
    sub_1B8B34CFC(&qword_1EBAA6E60, &qword_1EBAA6E58, &qword_1B8C2A600, MEMORY[0x1E6981F48]);
    return sub_1B8C24598();
  }
}

double sub_1B8B7374C@<D0>(double *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B8B7485C(a2, a3, a4);
  sub_1B8C242B8();
  result = v6;
  *a1 = v6;
  return result;
}

void sub_1B8B737E8(void *a1, char a2, uint64_t a3)
{
  v6 = sub_1B8C242A8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EvaluationCard(0);
  v11 = *(a3 + *(v10 + 24) + 8);

  if ((v11 & 1) == 0)
  {
    sub_1B8C25488();
    v12 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
  }

  v13 = (a3 + *(v10 + 28));
  v15 = *v13;
  v14 = v13[1];
  v17[2] = v15;
  v17[3] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6D90, &qword_1B8C2A498);
  sub_1B8C24D68();
  v16 = v17[1];
  sub_1B8B509C0(a1, a2 & 1);
}

uint64_t sub_1B8B739A4(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for EvaluationCard(0);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  sub_1B8C25368();
  v1[6] = sub_1B8C25358();
  v3 = sub_1B8C25328();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1B8B73A78, v3, v2);
}

uint64_t sub_1B8B73A78()
{
  v20 = v0;
  v1 = v0[2];
  if (*(v1 + *(v0[3] + 20)) == 1)
  {
    if (qword_1EBAA5978 != -1)
    {
      swift_once();
      v1 = v0[2];
    }

    v2 = v0[5];
    v3 = sub_1B8C23C38();
    v0[9] = __swift_project_value_buffer(v3, qword_1EBAB3A30);
    sub_1B8B74958(v1, v2, type metadata accessor for EvaluationCard);
    v4 = sub_1B8C23C18();
    v5 = sub_1B8C25468();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[5];
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136315138;
      sub_1B8C23568();
      sub_1B8B74E64(&qword_1EBAA6260, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v10 = sub_1B8C259E8();
      v12 = v11;
      sub_1B8B749C0(v7, type metadata accessor for EvaluationCard);
      v13 = sub_1B8B5DD48(v10, v12, &v19);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_1B8B22000, v4, v5, "Will mark interaction %s as presented", v8, 0xCu);
      v14 = __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1B8CCB0E0](v9, -1, -1, v14);
      MEMORY[0x1B8CCB0E0](v8, -1, -1);
    }

    else
    {

      sub_1B8B749C0(v7, type metadata accessor for EvaluationCard);
    }

    type metadata accessor for BatchInteraction(0);
    v18 = (*MEMORY[0x1E699C620] + MEMORY[0x1E699C620]);
    v17 = swift_task_alloc();
    v0[10] = v17;
    *v17 = v0;
    v17[1] = sub_1B8B73D7C;

    return v18();
  }

  else
  {

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1B8B73D7C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_1B8B73F28;
  }

  else
  {
    v5 = sub_1B8B73EB8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1B8B73EB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8B73F28()
{
  v18 = v0;
  v1 = v0[4];
  v2 = v0[2];

  sub_1B8B74958(v2, v1, type metadata accessor for EvaluationCard);
  v3 = sub_1B8C23C18();
  v4 = sub_1B8C25478();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  v7 = v0[4];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    sub_1B8C23568();
    sub_1B8B74E64(&qword_1EBAA6260, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v10 = sub_1B8C259E8();
    v12 = v11;
    sub_1B8B749C0(v7, type metadata accessor for EvaluationCard);
    v13 = sub_1B8B5DD48(v10, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1B8B22000, v3, v4, "Failed to mark interaction %s as presented", v8, 0xCu);
    v14 = __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B8CCB0E0](v9, -1, -1, v14);
    MEMORY[0x1B8CCB0E0](v8, -1, -1);
  }

  else
  {

    sub_1B8B749C0(v7, type metadata accessor for EvaluationCard);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1B8B74154(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EvaluationCard(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B741B8@<X0>(uint64_t (**a1)@<X0>(uint64_t a2@<X8>)@<X8>)
{
  v3 = *(type metadata accessor for EvaluationCard(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1B8B719FC(v4, a1);
}

uint64_t sub_1B8B74228@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B8C24258();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void sub_1B8B7428C(void *a1, char a2)
{
  v5 = *(type metadata accessor for EvaluationCard(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1B8B737E8(a1, a2 & 1, v6);
}

uint64_t sub_1B8B7432C()
{
  v2 = *(type metadata accessor for EvaluationCard(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B8B5115C;

  return sub_1B8B739A4(v0 + v3);
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for EvaluationCard(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v16 = *(*(v1 - 8) + 64);
  v4 = sub_1B8C23568();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = type metadata accessor for BatchInteraction(0);

  v6 = v0 + v3 + *(v5 + 28);
  type metadata accessor for BatchInteraction.ContentPolarity(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = type metadata accessor for BatchInteraction.ContentPreview(0);
  v9 = *(*(v8 - 8) + 48);
  v10 = v9(v6, 1, v8);
  if (EnumCaseMultiPayload != 1)
  {
    if (v10)
    {
      goto LABEL_26;
    }

    goto LABEL_6;
  }

  if (!v10)
  {
    v12 = swift_getEnumCaseMultiPayload();
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:

          break;
        case 4:
          v14 = sub_1B8C23328();
          (*(*(v14 - 8) + 8))(v6, v14);
          break;
        case 5:
          sub_1B8B3B06C(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), *(v6 + 48), *(v6 + 56), *(v6 + 64), *(v6 + 72));
          break;
      }
    }

    else if (v12 < 2)
    {
    }

    else if (v12 == 2)
    {
    }
  }

  v6 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5FD8, &qword_1B8C28560) + 48);
  if (!v9(v6, 1, v8))
  {
LABEL_6:
    v11 = swift_getEnumCaseMultiPayload();
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:

          break;
        case 4:
          v13 = sub_1B8C23328();
          (*(*(v13 - 8) + 8))(v6, v13);
          break;
        case 5:
          sub_1B8B3B06C(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), *(v6 + 48), *(v6 + 56), *(v6 + 64), *(v6 + 72));
          break;
      }
    }

    else if (v11 < 2)
    {
    }

    else if (v11 == 2)
    {
    }
  }

LABEL_26:

  return MEMORY[0x1EEE6BDD0](v0, v3 + v16, v2 | 7);
}

uint64_t sub_1B8B747DC@<X0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for EvaluationCard(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_1B8B71B08(v5, a2);
}

unint64_t sub_1B8B7485C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA6DE0;
  if (!qword_1EBAA6DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6DE0);
  }

  return result;
}

double sub_1B8B748B0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 >= 4)
  {
  }

  return result;
}

void sub_1B8B74904(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 >= 4)
  {
  }
}

uint64_t sub_1B8B74958(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8B749C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B8B74A30()
{
  result = qword_1EBAA6E88;
  if (!qword_1EBAA6E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6DC8, &qword_1B8C2A548);
    sub_1B8B74AEC();
    sub_1B8B74E64(&qword_1EBAA6B98, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6E88);
  }

  return result;
}

unint64_t sub_1B8B74AEC()
{
  result = qword_1EBAA6E90;
  if (!qword_1EBAA6E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6D88, &unk_1B8C2A488);
    sub_1B8B74BA8();
    sub_1B8B74E64(&qword_1EDC85630, type metadata accessor for FBKEvaluationViewModifier, &unk_1B8C2E058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6E90);
  }

  return result;
}

unint64_t sub_1B8B74BA8()
{
  result = qword_1EBAA6E98;
  if (!qword_1EBAA6E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6D80, &qword_1B8C2A480);
    sub_1B8B74C34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6E98);
  }

  return result;
}

unint64_t sub_1B8B74C34()
{
  result = qword_1EBAA6EA0;
  if (!qword_1EBAA6EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6D78, &qword_1B8C2A478);
    sub_1B8B74CEC();
    sub_1B8B34CFC(&qword_1EBAA6EC0, &qword_1EBAA6EC8, &qword_1B8C2A700, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6EA0);
  }

  return result;
}

unint64_t sub_1B8B74CEC()
{
  result = qword_1EBAA6EA8;
  if (!qword_1EBAA6EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6DA8, &qword_1B8C2A4D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6D98, &qword_1B8C2A4A0);
    type metadata accessor for FBKEvaluationController(255);
    sub_1B8B34CFC(&qword_1EBAA6DA0, &qword_1EBAA6D98, &qword_1B8C2A4A0, &unk_1B8C2AC90);
    sub_1B8B74E64(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
    swift_getOpaqueTypeConformance2();
    sub_1B8B34CFC(&qword_1EBAA6EB0, &qword_1EBAA6EB8, &qword_1B8C2A6F8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6EA8);
  }

  return result;
}

uint64_t sub_1B8B74E64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B8B74EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA6ED0;
  if (!qword_1EBAA6ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6ED0);
  }

  return result;
}

uint64_t sub_1B8B74F00(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B8B74F48(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

id sub_1B8B74FC4@<X0>(char *a1@<X8>)
{
  v84 = *v1;
  v2 = *(v1 + 16);
  v81 = *(v1 + 24);
  v82 = *(v1 + 8);
  v83 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 64);
  v80 = *(v1 + 56);
  v6 = *(v3 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  v8 = &off_1E7EB6000;
  v86 = v5;
  v87 = v2;
  if (!v6)
  {
    v19 = MEMORY[0x1E69E7CC0];
    v23 = *(v4 + 16);
    if (v23)
    {
      goto LABEL_9;
    }

LABEL_20:
    v34 = v82;
    v35 = v83;
    v39 = &unk_1B8C2A000;
    if (!v5)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v9 = [objc_opt_self() mainBundle];
  v10 = sub_1B8C23348();
  v78 = v11;

  sub_1B8C1404C(0, v6, 0);
  v12 = (v3 + 40);
  do
  {
    v13 = *(v12 - 1);
    v14 = *v12;
    v16 = *(v7 + 16);
    v15 = *(v7 + 24);

    if (v16 >= v15 >> 1)
    {
      sub_1B8C1404C((v15 > 1), v16 + 1, 1);
    }

    *(v7 + 16) = v16 + 1;
    v17 = v7 + 32 * v16;
    *(v17 + 32) = v13;
    *(v17 + 40) = v14;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    v12 += 2;
    --v6;
  }

  while (v6);
  v18 = sub_1B8B5D414(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v19 = v18;
  v21 = *(v18 + 2);
  v20 = *(v18 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1B8B5D414((v20 > 1), v21 + 1, 1, v18);
  }

  *(v19 + 2) = v21 + 1;
  v22 = &v19[24 * v21];
  *(v22 + 4) = v10;
  *(v22 + 5) = v78;
  *(v22 + 6) = v7;
  v5 = v86;
  v2 = v87;
  v8 = &off_1E7EB6000;
  v7 = MEMORY[0x1E69E7CC0];
  v23 = *(v4 + 16);
  if (!v23)
  {
    goto LABEL_20;
  }

LABEL_9:
  v24 = [objc_opt_self() mainBundle];
  v25 = sub_1B8C23348();
  v79 = v26;

  sub_1B8C1404C(0, v23, 0);
  v27 = v7;
  v28 = (v4 + 40);
  do
  {
    v29 = *(v28 - 1);
    v30 = *v28;
    v32 = *(v27 + 16);
    v31 = *(v27 + 24);

    if (v32 >= v31 >> 1)
    {
      sub_1B8C1404C((v31 > 1), v32 + 1, 1);
    }

    *(v27 + 16) = v32 + 1;
    v33 = v27 + 32 * v32;
    *(v33 + 32) = v29;
    *(v33 + 40) = v30;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    v28 += 2;
    --v23;
  }

  while (v23);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1B8B5D414(0, *(v19 + 2) + 1, 1, v19);
  }

  v34 = v82;
  v35 = v83;
  v37 = *(v19 + 2);
  v36 = *(v19 + 3);
  if (v37 >= v36 >> 1)
  {
    v19 = sub_1B8B5D414((v36 > 1), v37 + 1, 1, v19);
  }

  v8 = &off_1E7EB6000;
  *(v19 + 2) = v37 + 1;
  v38 = &v19[24 * v37];
  *(v38 + 4) = v25;
  *(v38 + 5) = v79;
  *(v38 + 6) = v27;
  v5 = v86;
  v2 = v87;
  v39 = &unk_1B8C2A000;
  if (v86)
  {
LABEL_21:
    v40 = objc_opt_self();

    v41 = v5;
    v42 = [v40 v8[330]];
    v43 = sub_1B8C23348();
    v45 = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA66B0, &qword_1B8C2C430);
    v46 = swift_allocObject();
    *(v46 + 16) = v39[116];
    *(v46 + 32) = v80;
    *(v46 + 40) = v41;
    *(v46 + 48) = 0;
    *(v46 + 56) = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1B8B5D414(0, *(v19 + 2) + 1, 1, v19);
    }

    v48 = *(v19 + 2);
    v47 = *(v19 + 3);
    if (v48 >= v47 >> 1)
    {
      v19 = sub_1B8B5D414((v47 > 1), v48 + 1, 1, v19);
    }

    *(v19 + 2) = v48 + 1;
    v49 = &v19[24 * v48];
    *(v49 + 4) = v43;
    *(v49 + 5) = v45;
    *(v49 + 6) = v46;
    v8 = &off_1E7EB6000;
  }

LABEL_26:
  if (v34)
  {
    v50 = objc_opt_self();
    v51 = v34;
    v52 = [v50 v8[330]];
    v53 = sub_1B8C23348();
    v55 = v54;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA66B0, &qword_1B8C2C430);
    v56 = swift_allocObject();
    *(v56 + 16) = v39[116];
    *(v56 + 40) = 0;
    *(v56 + 48) = 0;
    *(v56 + 32) = v34;
    *(v56 + 56) = 2;
    v57 = v51;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1B8B5D414(0, *(v19 + 2) + 1, 1, v19);
    }

    v59 = *(v19 + 2);
    v58 = *(v19 + 3);
    if (v59 >= v58 >> 1)
    {
      v19 = sub_1B8B5D414((v58 > 1), v59 + 1, 1, v19);
    }

    *(v19 + 2) = v59 + 1;
    v60 = &v19[24 * v59];
    *(v60 + 4) = v53;
    *(v60 + 5) = v55;
    *(v60 + 6) = v56;
    v8 = &off_1E7EB6000;
  }

  if (v2)
  {
    v61 = objc_opt_self();

    v62 = v8[330];
    v63 = v2;
    v64 = [v61 v62];
    v65 = sub_1B8C23348();
    v67 = v66;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA66B0, &qword_1B8C2C430);
    v68 = swift_allocObject();
    *(v68 + 16) = v39[116];
    *(v68 + 32) = v2;
    *(v68 + 40) = v81;
    *(v68 + 48) = v35;
    *(v68 + 56) = 2;
    v69 = v63;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1B8B5D414(0, *(v19 + 2) + 1, 1, v19);
    }

    v71 = *(v19 + 2);
    v70 = *(v19 + 3);
    if (v71 >= v70 >> 1)
    {
      v19 = sub_1B8B5D414((v70 > 1), v71 + 1, 1, v19);
    }

    *(v19 + 2) = v71 + 1;
    v72 = &v19[24 * v71];
    *(v72 + 4) = v65;
    *(v72 + 5) = v67;
    *(v72 + 6) = v68;
  }

  v73 = type metadata accessor for ListPreviewer.Content(0);
  v74 = *(v73 + 20);
  v75 = *MEMORY[0x1E699C2C8];
  v76 = sub_1B8C237B8();
  (*(*(v76 - 8) + 104))(&a1[v74], v75, v76);
  *a1 = v84;
  *&a1[*(v73 + 24)] = v19;

  return v84;
}
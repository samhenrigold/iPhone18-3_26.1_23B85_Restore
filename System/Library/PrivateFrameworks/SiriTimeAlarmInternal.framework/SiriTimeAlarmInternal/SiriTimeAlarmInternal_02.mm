void *sub_2692A0A8C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2692A0AEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2692A0AAC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2692A0C20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2692A0ACC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2692A0E10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2692A0AEC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280303158, &qword_2692CA980);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C28, &unk_2692C9690);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2692A0C20(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280303150, &unk_2692CA970);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C50, &unk_2692C96A0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C50, &unk_2692C96A0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_2692A0E10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302D58, &qword_2692C97C0);
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
    v10 = MEMORY[0x277D84F90];
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

void *_s21SiriTimeAlarmInternal0C18IntentHandlerUtilsO15getFiringAlarms18fromSearchResponseSayAA0aC0CGs6ResultOyAhA0C14OperationErrorOG_tFZ_0(unint64_t *a1)
{
  v1 = *a1;
  if (a1[1])
  {
    if (qword_280302AF8 != -1)
    {
      goto LABEL_23;
    }

    goto LABEL_3;
  }

  v49 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    v11 = sub_2692C7C60();
    if (v11)
    {
      goto LABEL_8;
    }

LABEL_25:
    v10 = MEMORY[0x277D84F90];
LABEL_26:
    v20 = qword_280302AF8;

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = sub_2692C77C0();
    __swift_project_value_buffer(v21, qword_280303138);
    v22 = sub_2692C77B0();
    v23 = sub_2692C7A00();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v49 = v25;
      *v24 = 136315138;
      if (v10 < 0 || (v10 & 0x4000000000000000) != 0)
      {
        v45 = v25;
        v26 = sub_2692C7C60();
        v25 = v45;
      }

      else
      {
        v26 = *(v10 + 16);
      }

      v27 = MEMORY[0x277D84F90];
      v47 = v25;
      if (v26)
      {
        v46 = v24;
        v48 = MEMORY[0x277D84F90];
        result = sub_2692A0A8C(0, v26 & ~(v26 >> 63), 0);
        if (v26 < 0)
        {
          __break(1u);
          return result;
        }

        v29 = 0;
        v27 = v48;
        do
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v30 = MEMORY[0x26D6360D0](v29, v10);
          }

          else
          {
            v30 = *(v10 + 8 * v29 + 32);
          }

          v31 = v30;
          v32 = [v30 identifier];
          if (v32)
          {
            v33 = v32;
            v34 = sub_2692C7830();
            v36 = v35;
          }

          else
          {

            v34 = 0;
            v36 = 0;
          }

          v38 = *(v48 + 16);
          v37 = *(v48 + 24);
          if (v38 >= v37 >> 1)
          {
            sub_2692A0A8C((v37 > 1), v38 + 1, 1);
          }

          ++v29;
          *(v48 + 16) = v38 + 1;
          v39 = v48 + 16 * v38;
          *(v39 + 32) = v34;
          *(v39 + 40) = v36;
        }

        while (v26 != v29);
        v24 = v46;
      }

      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C28, &unk_2692C9690);
      v41 = MEMORY[0x26D635E70](v27, v40);
      v43 = v42;

      v44 = sub_26927C4DC(v41, v43, &v49);

      *(v24 + 4) = v44;
      _os_log_impl(&dword_269270000, v22, v23, "Found firing alarms: %s.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x26D6368E0](v47, -1, -1);
      MEMORY[0x26D6368E0](v24, -1, -1);
    }

    return v10;
  }

  v11 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_25;
  }

LABEL_8:
  v12 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x26D6360D0](v12, v1);
    }

    else
    {
      if (v12 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v13 = *(v1 + 8 * v12 + 32);
    }

    v14 = v13;
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    v16 = [v13 firing];
    sub_2692822D8();
    v17 = sub_2692C7A50();
    v18 = v17;
    if (v16)
    {
      v19 = sub_2692C7A70();

      if (v19)
      {
        sub_2692C7BF0();
        sub_2692C7C20();
        sub_2692C7C30();
        sub_2692C7C00();
        goto LABEL_11;
      }
    }

    else
    {
    }

LABEL_11:
    ++v12;
    if (v15 == v11)
    {
      v10 = v49;
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  swift_once();
LABEL_3:
  v2 = sub_2692C77C0();
  __swift_project_value_buffer(v2, qword_280303138);
  v3 = sub_2692C77B0();
  v4 = sub_2692C7A00();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v49 = v6;
    *v5 = 136315138;
    v7 = sub_2692C7840();
    v9 = sub_26927C4DC(v7, v8, &v49);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_269270000, v3, v4, "Can NOT find firing alarm, error: %s.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D6368E0](v6, -1, -1);
    MEMORY[0x26D6368E0](v5, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2692A1438(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 8);
  v5 = *a1;
  v6 = v3;
  _s21SiriTimeAlarmInternal0C18IntentHandlerUtilsO15getFiringAlarms18fromSearchResponseSayAA0aC0CGs6ResultOyAhA0C14OperationErrorOG_tFZ_0(&v5);
  v2();
}

uint64_t sub_2692A14A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302D50, &qword_2692CAB70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2692A1518()
{
  v0 = sub_2692C77C0();
  __swift_allocate_value_buffer(v0, qword_280303160);
  v1 = __swift_project_value_buffer(v0, qword_280303160);
  if (qword_280302B48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280307B80);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_2692A15E0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    v4 = sub_2692C7820();
    [v3 setSourceBundleIdentifier_];

    [v3 resume];
    v5 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

id sub_2692A16A0()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = sub_2692A15E0();
    v4 = [objc_allocWithZone(MEMORY[0x277D62528]) initWithHealthStore_];

    v5 = *(v0 + 24);
    *(v0 + 24) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

void sub_2692A174C(char a1, id a2, void (*a3)(uint64_t *))
{
  if (a1)
  {
    LOWORD(v28[0]) = 0;
LABEL_14:
    (a3)(v28, a2);
    return;
  }

  if (!a2)
  {
    if (qword_280302B00 != -1)
    {
      swift_once();
    }

    v20 = sub_2692C77C0();
    __swift_project_value_buffer(v20, qword_280303160);
    v21 = sub_2692C77B0();
    v22 = sub_2692C79F0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_269270000, v21, v22, "Enable next wake up alarm failed without reason", v23, 2u);
      MEMORY[0x26D6368E0](v23, -1, -1);
    }

    v24 = sub_2692C7760();
    v29 = v24;
    v30 = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
    *boxed_opaque_existential_1 = 0xD000000000000012;
    boxed_opaque_existential_1[1] = 0x80000002692CD1F0;
    v26 = *MEMORY[0x277D61878];
    v27 = sub_2692C7710();
    (*(*(v27 - 8) + 104))(boxed_opaque_existential_1, v26, v27);
    (*(*(v24 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v24);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    LOWORD(v28[0]) = 265;
    goto LABEL_14;
  }

  v5 = a2;
  if (qword_280302B00 != -1)
  {
    swift_once();
  }

  v6 = sub_2692C77C0();
  __swift_project_value_buffer(v6, qword_280303160);
  v7 = a2;
  v8 = sub_2692C77B0();
  v9 = sub_2692C79F0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28[0] = v11;
    *v10 = 136315138;
    v12 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DD0, &qword_2692C9828);
    v13 = sub_2692C7840();
    v15 = sub_26927C4DC(v13, v14, v28);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_269270000, v8, v9, "Enable next wake up alarm failed with reason: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x26D6368E0](v11, -1, -1);
    MEMORY[0x26D6368E0](v10, -1, -1);
  }

  v16 = sub_2692C7760();
  v29 = v16;
  v30 = MEMORY[0x277D61908];
  v17 = __swift_allocate_boxed_opaque_existential_1(v28);
  *v17 = sub_2692C7320();
  v18 = *MEMORY[0x277D61838];
  v19 = sub_2692C76A0();
  (*(*(v19 - 8) + 104))(v17, v18, v19);
  (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277D618E0], v16);
  sub_2692C76B0();
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  LOWORD(v28[0]) = 265;
  a3(v28);
}

void sub_2692A1B80(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2692A1C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v12 = sub_2692A16A0();
  v13 = sub_2692C7390();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v16[4] = a5;
  v16[5] = v14;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_2692A1B80;
  v16[3] = a6;
  v15 = _Block_copy(v16);

  [v12 setUpcomingWakeUpAlarmEnabled:a7 & 1 date:v13 completion:v15];
  _Block_release(v15);
}

void sub_2692A1D50(char a1, id a2, void (*a3)(uint64_t *))
{
  if (a1)
  {
    LOWORD(v28[0]) = 0;
LABEL_14:
    (a3)(v28, a2);
    return;
  }

  if (!a2)
  {
    if (qword_280302B00 != -1)
    {
      swift_once();
    }

    v20 = sub_2692C77C0();
    __swift_project_value_buffer(v20, qword_280303160);
    v21 = sub_2692C77B0();
    v22 = sub_2692C79F0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_269270000, v21, v22, "Disable next wake up alarm failed with unknown reason", v23, 2u);
      MEMORY[0x26D6368E0](v23, -1, -1);
    }

    v24 = sub_2692C7760();
    v29 = v24;
    v30 = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
    *boxed_opaque_existential_1 = 0xD000000000000013;
    boxed_opaque_existential_1[1] = 0x80000002692CD1D0;
    v26 = *MEMORY[0x277D61878];
    v27 = sub_2692C7710();
    (*(*(v27 - 8) + 104))(boxed_opaque_existential_1, v26, v27);
    (*(*(v24 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v24);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    LOWORD(v28[0]) = 266;
    goto LABEL_14;
  }

  v5 = a2;
  if (qword_280302B00 != -1)
  {
    swift_once();
  }

  v6 = sub_2692C77C0();
  __swift_project_value_buffer(v6, qword_280303160);
  v7 = a2;
  v8 = sub_2692C77B0();
  v9 = sub_2692C79F0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28[0] = v11;
    *v10 = 136315138;
    v12 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DD0, &qword_2692C9828);
    v13 = sub_2692C7840();
    v15 = sub_26927C4DC(v13, v14, v28);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_269270000, v8, v9, "Disable next wake up alarm failed with reason: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x26D6368E0](v11, -1, -1);
    MEMORY[0x26D6368E0](v10, -1, -1);
  }

  v16 = sub_2692C7760();
  v29 = v16;
  v30 = MEMORY[0x277D61908];
  v17 = __swift_allocate_boxed_opaque_existential_1(v28);
  *v17 = sub_2692C7320();
  v18 = *MEMORY[0x277D61838];
  v19 = sub_2692C76A0();
  (*(*(v19 - 8) + 104))(v17, v18, v19);
  (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277D618E0], v16);
  sub_2692C76B0();
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  LOWORD(v28[0]) = 266;
  a3(v28);
}

void sub_2692A2184(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v58 = a3;
  v59 = a4;
  v54 = a2;
  v5 = sub_2692C7310();
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v52 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2692C7500();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v53 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2692C7440();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_2692C74F0();
  v16 = *(v51 - 8);
  v18 = MEMORY[0x28223BE20](v51, v17);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v51 - v22;
  v57 = v4;
  v24 = sub_2692A16A0();
  v25 = sub_2692C7390();
  v26 = [v24 upcomingResolvedScheduleOccurrenceAfterDate:v25 error:0];

  v60 = v26;
  if (v26)
  {
    v27 = sub_2692C7390();
    (*(v12 + 104))(v15, *MEMORY[0x277CC9830], v11);
    sub_2692C7450();
    (*(v12 + 8))(v15, v11);
    sub_2692C74B0();
    sub_2692C74C0();
    v28 = *(v16 + 8);
    v29 = v51;
    v28(v20, v51);
    sub_2692C74D0();
    v30 = sub_2692C7470();
    v28(v23, v29);
    v31 = [v60 generateOverrideOccurrenceForCurrentDate:v27 gregorianCalendar:v30];

    sub_2692C7290();
    v32 = [v31 wakeUpComponents];
    v33 = v52;
    sub_2692C7280();

    sub_2692C72A0();
    v34 = sub_2692C7270();
    v35 = v56;
    v36 = *(v55 + 8);
    v36(v33, v56);
    [v31 setWakeUpComponents_];

    sub_2692C72B0();
    v37 = [v31 wakeUpComponents];
    sub_2692C7280();

    sub_2692C72C0();
    v38 = sub_2692C7270();
    v36(v33, v35);
    [v31 setWakeUpComponents_];

    v39 = v57;
    v40 = *(v57 + 24);
    v41 = swift_allocObject();
    v42 = v59;
    v41[2] = v58;
    v41[3] = v42;
    v41[4] = v31;
    v41[5] = v39;
    aBlock[4] = sub_2692A3290;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2692A319C;
    aBlock[3] = &block_descriptor_12;
    v43 = _Block_copy(aBlock);
    v44 = v40;

    v45 = v31;

    [v44 currentSleepScheduleWithCompletion_];
    _Block_release(v43);
  }

  else
  {
    v46 = v58;
    if (qword_280302B00 != -1)
    {
      swift_once();
    }

    v47 = sub_2692C77C0();
    __swift_project_value_buffer(v47, qword_280303160);
    v48 = sub_2692C77B0();
    v49 = sub_2692C79F0();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_269270000, v48, v49, "Call sleepStore.upcomingResolvedScheduleOccurrence failed.", v50, 2u);
      MEMORY[0x26D6368E0](v50, -1, -1);
    }

    LOWORD(aBlock[0]) = 267;
    v46(aBlock);
  }
}

uint64_t sub_2692A2790(void *a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    [a1 mutableCopy];
    sub_2692C7AD0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v59, 0, sizeof(v59));
  }

  sub_2692A3344(v59, aBlock);
  if (v54)
  {
    sub_26927CC94(0, &qword_280303178, 0x277D62488);
    if (swift_dynamicCast())
    {
      v9 = v57[0];
      if (a2)
      {
        aBlock[0] = a2;
        v10 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DD0, &qword_2692C9828);
        sub_26927CC94(0, &qword_280303190, 0x277CCA9B8);
        if (swift_dynamicCast())
        {
          v11 = v57[0];
          v12 = sub_2692C7760();
          v54 = v12;
          v55 = MEMORY[0x277D61908];
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(aBlock);
          *boxed_opaque_existential_1 = v11;
          v14 = *MEMORY[0x277D61838];
          v15 = sub_2692C76A0();
          (*(*(v15 - 8) + 104))(boxed_opaque_existential_1, v14, v15);
          (*(*(v12 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618E0], v12);
          sub_2692C76B0();
          __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
        }
      }

      [v9 saveOccurrence_];
      if (qword_280302B00 != -1)
      {
        swift_once();
      }

      v16 = sub_2692C77C0();
      __swift_project_value_buffer(v16, qword_280303160);
      v17 = v9;
      v18 = sub_2692C77B0();
      v19 = sub_2692C7A00();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v52 = a3;
        aBlock[0] = swift_slowAlloc();
        v21 = aBlock[0];
        *v20 = 136315138;
        v22 = [v17 occurrences];
        v23 = sub_26927CC94(0, &qword_280303188, 0x277D62508);
        v24 = sub_2692C7930();

        v25 = MEMORY[0x26D635E70](v24, v23);
        v27 = v26;

        v28 = sub_26927C4DC(v25, v27, aBlock);

        *(v20 + 4) = v28;
        _os_log_impl(&dword_269270000, v18, v19, "mutableSleepSchedule.occurrences: %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        v29 = v21;
        a3 = v52;
        MEMORY[0x26D6368E0](v29, -1, -1);
        MEMORY[0x26D6368E0](v20, -1, -1);
      }

      v30 = v17;
      v31 = sub_2692C77B0();
      v32 = sub_2692C7A00();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        aBlock[0] = v34;
        *v33 = 136315138;
        v57[0] = [v30 overrideOccurrence];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280303180, &unk_2692CA9E0);
        v35 = sub_2692C7840();
        v37 = sub_26927C4DC(v35, v36, aBlock);

        *(v33 + 4) = v37;
        _os_log_impl(&dword_269270000, v31, v32, "mutableSleepSchedule.overrideOccurrence: %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        MEMORY[0x26D6368E0](v34, -1, -1);
        MEMORY[0x26D6368E0](v33, -1, -1);
      }

      v38 = sub_2692A16A0();
      v39 = swift_allocObject();
      *(v39 + 16) = a3;
      *(v39 + 24) = a4;
      v55 = sub_2692A341C;
      v56 = v39;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2692A1B80;
      v54 = &block_descriptor_25;
      v40 = _Block_copy(aBlock);
      v41 = v30;

      [v38 saveCurrentSleepSchedule:v41 completion:v40];
      _Block_release(v40);

      return sub_2692A33B4(v59);
    }
  }

  else
  {
    sub_2692A33B4(aBlock);
  }

  if (qword_280302B00 != -1)
  {
    swift_once();
  }

  v42 = sub_2692C77C0();
  __swift_project_value_buffer(v42, qword_280303160);
  sub_2692A3344(v59, aBlock);
  v43 = sub_2692C77B0();
  v44 = sub_2692C79F0();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v58 = v46;
    *v45 = 136315138;
    sub_2692A3344(aBlock, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CD0, &unk_2692CAE00);
    v47 = sub_2692C7840();
    v49 = v48;
    sub_2692A33B4(aBlock);
    v50 = sub_26927C4DC(v47, v49, &v58);

    *(v45 + 4) = v50;
    _os_log_impl(&dword_269270000, v43, v44, "Retrive sleep schedule failed for schedule: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x26D6368E0](v46, -1, -1);
    MEMORY[0x26D6368E0](v45, -1, -1);
  }

  else
  {

    sub_2692A33B4(aBlock);
  }

  LOWORD(aBlock[0]) = 263;
  a3(aBlock);
  return sub_2692A33B4(v59);
}

void sub_2692A2E8C(char a1, id a2, void (*a3)(uint64_t *))
{
  if (a2 && (v20[0] = a2, v5 = a2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DD0, &qword_2692C9828), sub_26927CC94(0, &qword_280303190, 0x277CCA9B8), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v20[5];
    v7 = sub_2692C7760();
    v20[3] = v7;
    v20[4] = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
    *boxed_opaque_existential_1 = v6;
    v9 = *MEMORY[0x277D61838];
    v10 = sub_2692C76A0();
    (*(*(v10 - 8) + 104))(boxed_opaque_existential_1, v9, v10);
    (*(*(v7 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618E0], v7);
    v11 = v6;
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    if (qword_280302B00 != -1)
    {
      swift_once();
    }

    v12 = sub_2692C77C0();
    __swift_project_value_buffer(v12, qword_280303160);
    v13 = sub_2692C77B0();
    v14 = sub_2692C79F0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_269270000, v13, v14, "Change sleep alarm time failed when calling sleepStore.saveCurrentSleepSchedule().", v15, 2u);
      MEMORY[0x26D6368E0](v15, -1, -1);
    }

    LOWORD(v20[0]) = 263;
    a3(v20);
  }

  else
  {
    if (qword_280302B00 != -1)
    {
      swift_once();
    }

    v16 = sub_2692C77C0();
    __swift_project_value_buffer(v16, qword_280303160);
    v17 = sub_2692C77B0();
    v18 = sub_2692C7A00();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109120;
      *(v19 + 4) = a1 & 1;
      _os_log_impl(&dword_269270000, v17, v18, "Change sleep alarm time successfully: %{BOOL}d", v19, 8u);
      MEMORY[0x26D6368E0](v19, -1, -1);
    }

    LOWORD(v20[0]) = 0;
    a3(v20);
  }
}

void sub_2692A319C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t SiriSleepAlarmManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2692A3344(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CD0, &unk_2692CAE00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2692A33B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CD0, &unk_2692CAE00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id CreateAlarmIntentHandler.__allocating_init(manager:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_2692A6A58(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

uint64_t sub_2692A3490()
{
  v0 = sub_2692C77C0();
  __swift_allocate_value_buffer(v0, qword_280303198);
  v1 = __swift_project_value_buffer(v0, qword_280303198);
  if (qword_280302B40 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280303368);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id CreateAlarmIntentHandler.init(manager:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_2692A5DF0(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

id CreateAlarmIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CreateAlarmIntentHandler.init()()
{
  if (qword_280302B28 != -1)
  {
    swift_once();
  }

  sub_269275A6C(&qword_280303238, &v12);
  v0 = type metadata accessor for SiriAlarmManagerImpl(0);
  v1 = swift_allocObject();
  sub_2692C7610();
  sub_2692C74B0();
  v2 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_sleepAlarmManager;
  type metadata accessor for SiriSleepAlarmManager();
  v3 = swift_allocObject();
  *(v1 + v2) = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_osLogObject;
  if (qword_280302B50 != -1)
  {
    swift_once();
  }

  v5 = qword_280303380;
  *(v1 + v4) = qword_280303380;
  sub_269275A30(&v12, v1 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_alarmManager);
  AlarmIntentHandler = type metadata accessor for CreateAlarmIntentHandler();
  v7 = objc_allocWithZone(AlarmIntentHandler);
  v13 = v0;
  v14 = &protocol witness table for SiriAlarmManagerImpl;
  *&v12 = v1;
  *&v7[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_osLogObject] = v5;
  sub_269275A6C(&v12, &v7[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_siriAlarmManager]);
  v11.receiver = v7;
  v11.super_class = AlarmIntentHandler;
  v8 = v5;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(&v12);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

void sub_2692A3854(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_2692C74F0();
  v90 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v88 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2692C7310();
  v91 = *(v9 - 8);
  v92 = v9;
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = (&v86 - v15);
  v17 = sub_2692C73E0();
  v89 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v18);
  v93 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280302B08 != -1)
  {
    swift_once();
  }

  v20 = sub_2692C77C0();
  __swift_project_value_buffer(v20, qword_280303198);
  v21 = a1;
  v22 = sub_2692C77B0();
  v23 = sub_2692C7A00();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v86 = v17;
    v87 = v16;
    v25 = v6;
    v26 = v13;
    v27 = a2;
    v28 = v24;
    v29 = a3;
    v30 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v21;
    *v30 = v21;
    v31 = v21;
    _os_log_impl(&dword_269270000, v22, v23, "Resolving time for intent: %@.", v28, 0xCu);
    sub_2692A14A0(v30);
    v32 = v30;
    a3 = v29;
    MEMORY[0x26D6368E0](v32, -1, -1);
    v33 = v28;
    a2 = v27;
    v13 = v26;
    v6 = v25;
    v17 = v86;
    v16 = v87;
    MEMORY[0x26D6368E0](v33, -1, -1);
  }

  v34 = [v21 relativeOffsetInMinutes];
  if (v34)
  {
    v35 = v34;
    [v34 doubleValue];
    v37 = v36;

    if (v37 <= 1.0 || v37 < 1440.0)
    {
      sub_2692C73B0();
      v38 = v88;
      sub_2692C74B0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C68, &unk_2692CAA00);
      v39 = sub_2692C74E0();
      v40 = *(v39 - 8);
      v41 = v40;
      v87 = a2;
      v42 = *(v40 + 72);
      v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_2692CA9F0;
      v45 = v44 + v43;
      v46 = *MEMORY[0x277CC9980];
      v86 = a3;
      v47 = *(v41 + 104);
      v47(v45, v46, v39);
      v47(v45 + v42, *MEMORY[0x277CC99A0], v39);
      sub_2692A5EEC(v44);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v48 = v93;
      sub_2692C7460();

      (*(v90 + 8))(v38, v6);
      v49 = objc_opt_self();
      v50 = sub_2692C7270();
      v51 = [v49 successWithResolvedDateComponents_];

      (v87)(v51);
      (*(v91 + 8))(v16, v92);
      (*(v89 + 8))(v48, v17);
      return;
    }

    v64 = sub_2692C77B0();
    v65 = sub_2692C7A00();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_269270000, v64, v65, "Duration too long, relativeOffsetInMinutes=offset, unsupported().", v66, 2u);
      MEMORY[0x26D6368E0](v66, -1, -1);
    }

    sub_26927CC94(0, &qword_280302C38, 0x277CD3B80);
    v67 = [swift_getObjCClassFromMetadata() unsupported];
    goto LABEL_23;
  }

  v52 = [v21 time];
  if (v52)
  {
    v53 = v52;
    sub_2692C7280();

    v54 = sub_2692C7290();
    if (v55 & 1) != 0 || (v56 = v54, v57 = sub_2692C72B0(), (v58))
    {
      v59 = sub_2692C77B0();
      v60 = sub_2692C7A00();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_269270000, v59, v60, "intent has no time element, needsValue().", v61, 2u);
        MEMORY[0x26D6368E0](v61, -1, -1);
      }

      sub_26927CC94(0, &qword_280302C38, 0x277CD3B80);
      v62 = [swift_getObjCClassFromMetadata() needsValue];
    }

    else
    {
      if (v56 > 0x17 || v57 > 0x3B)
      {
        v81 = sub_2692C77B0();
        v82 = sub_2692C7A00();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&dword_269270000, v81, v82, "intent time is illegal, unsupported().", v83, 2u);
          MEMORY[0x26D6368E0](v83, -1, -1);
        }
      }

      else
      {
        if ((sub_2692A6B60(v13) & 1) != 0 || (v72 = [v21 repeatSchedule]) != 0 && ((v73 = v72, type metadata accessor for AlarmRepeatSchedule(), v74 = sub_2692C7930(), v73, v74 >> 62) ? (v75 = sub_2692C7C60()) : (v75 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v75))
        {
          v76 = sub_2692C77B0();
          v77 = sub_2692C7A00();
          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            *v78 = 0;
            _os_log_impl(&dword_269270000, v76, v77, "Time resolved successfully.", v78, 2u);
            MEMORY[0x26D6368E0](v78, -1, -1);
          }

          v79 = objc_opt_self();
          v80 = sub_2692C7270();
          v63 = [v79 successWithResolvedDateComponents_];

          goto LABEL_16;
        }

        v81 = sub_2692C77B0();
        v84 = sub_2692C7A00();
        if (os_log_type_enabled(v81, v84))
        {
          v85 = swift_slowAlloc();
          *v85 = 0;
          _os_log_impl(&dword_269270000, v81, v84, "intent time is more than one day ahead and not repeating, unsupported().", v85, 2u);
          MEMORY[0x26D6368E0](v85, -1, -1);
        }
      }

      sub_26927CC94(0, &qword_280302C38, 0x277CD3B80);
      v62 = [swift_getObjCClassFromMetadata() unsupported];
    }

    v63 = v62;
LABEL_16:
    a2();

    (*(v91 + 8))(v13, v92);
    return;
  }

  v68 = sub_2692C77B0();
  v69 = sub_2692C7A00();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&dword_269270000, v68, v69, "Intent has no time or relativeOffsetInMinutes, needsValue().", v70, 2u);
    MEMORY[0x26D6368E0](v70, -1, -1);
  }

  sub_26927CC94(0, &qword_280302C38, 0x277CD3B80);
  v67 = [swift_getObjCClassFromMetadata() needsValue];
LABEL_23:
  v93 = v67;
  a2();
  v71 = v93;
}

void sub_2692A42EC(uint64_t a1, void (*a2)(char *))
{
  if (CreateAlarmIntent.eligibleForTimerReformation.getter())
  {
    if (qword_280302B08 != -1)
    {
      swift_once();
    }

    v3 = sub_2692C77C0();
    __swift_project_value_buffer(v3, qword_280303198);
    v4 = sub_2692C77B0();
    v5 = sub_2692C7A00();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_269270000, v4, v5, "Alarm2Timer: Confirming intent with reformation semantics", v6, 2u);
      MEMORY[0x26D6368E0](v6, -1, -1);
    }

    v7 = [objc_allocWithZone(type metadata accessor for CreateAlarmIntentResponse()) init];
    v8 = OBJC_IVAR___CreateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v7[v8] = 100;
  }

  else
  {
    if (qword_280302B08 != -1)
    {
      swift_once();
    }

    v9 = sub_2692C77C0();
    __swift_project_value_buffer(v9, qword_280303198);
    v10 = sub_2692C77B0();
    v11 = sub_2692C7A00();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_269270000, v10, v11, "Alarm2Timer: Confirming intent normally", v12, 2u);
      MEMORY[0x26D6368E0](v12, -1, -1);
    }

    v7 = [objc_allocWithZone(type metadata accessor for CreateAlarmIntentResponse()) init];
    v13 = OBJC_IVAR___CreateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v7[v13] = 1;
  }

  [v7 setUserActivity_];
  a2(v7);
}

void sub_2692A455C(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_2692A45EC(void *a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v8 = sub_2692C77A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v31[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CreateAlarmIntent.eligibleForTimerReformation.getter())
  {
    if (qword_280302B08 != -1)
    {
      swift_once();
    }

    v13 = sub_2692C77C0();
    __swift_project_value_buffer(v13, qword_280303198);
    v14 = sub_2692C77B0();
    v15 = sub_2692C7A00();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_269270000, v14, v15, "Alarm2Timer: NOT handling intent with reformation semantics", v16, 2u);
      MEMORY[0x26D6368E0](v16, -1, -1);
    }

    v17 = [objc_allocWithZone(type metadata accessor for CreateAlarmIntentResponse()) init];
    v18 = OBJC_IVAR___CreateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v17[v18] = 100;
    [v17 setUserActivity_];
    a2(v17);
  }

  else
  {
    if (qword_280302B08 != -1)
    {
      swift_once();
    }

    v19 = sub_2692C77C0();
    __swift_project_value_buffer(v19, qword_280303198);
    v20 = sub_2692C77B0();
    v21 = sub_2692C7A00();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_269270000, v20, v21, "Handling create alarm intent.", v22, 2u);
      MEMORY[0x26D6368E0](v22, -1, -1);
    }

    sub_2692C7A20();
    sub_2692C7790();
    sub_2692C7780();
    (*(v9 + 8))(v12, v8);
    sub_269275A6C(v4 + OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_siriAlarmManager, v31);
    v23 = v32;
    v24 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    Alarm = CreateAlarmIntent.alarmSearch.getter();
    v26 = swift_allocObject();
    v26[2] = v4;
    v26[3] = a1;
    v26[4] = a2;
    v26[5] = a3;
    v27 = *(v24 + 56);
    v28 = v4;
    v29 = a1;

    v27(Alarm, sub_2692A7328, v26, v23, v24);

    __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }
}

void sub_2692A49A4(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v96 = a3;
  v9 = sub_2692C77A0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *(a1 + 8);
  sub_2692C7A10();
  v16 = *&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_osLogObject];
  sub_2692C7790();
  v95 = v16;
  sub_2692C7780();
  v17 = *(v10 + 8);
  v17(v13, v9);
  if (v15)
  {
    if (v14 != 12)
    {
      if (qword_280302B08 != -1)
      {
        swift_once();
      }

      v33 = sub_2692C77C0();
      __swift_project_value_buffer(v33, qword_280303198);
      v19 = sub_2692C77B0();
      v20 = sub_2692C79F0();
      if (!os_log_type_enabled(v19, v20))
      {
        goto LABEL_25;
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "Search Error happens in alarm create, create an new alarm anyways!";
      goto LABEL_24;
    }

    if (qword_280302B08 == -1)
    {
LABEL_4:
      v18 = sub_2692C77C0();
      __swift_project_value_buffer(v18, qword_280303198);
      v19 = sub_2692C77B0();
      v20 = sub_2692C7A00();
      if (!os_log_type_enabled(v19, v20))
      {
LABEL_25:

        sub_2692C7A20();
        sub_2692C7790();
        sub_2692C7780();
        v17(v13, v9);
        sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_siriAlarmManager], v97);
        v34 = v98;
        v35 = v99;
        __swift_project_boxed_opaque_existential_1(v97, v98);
        v36 = swift_allocObject();
        v36[2] = a2;
        v36[3] = a4;
        v36[4] = a5;
        v37 = *(v35 + 72);
        v38 = a2;

        v39 = sub_2692A85F4;
LABEL_52:
        v37(v96, v39, v36, v34, v35);

LABEL_53:
        __swift_destroy_boxed_opaque_existential_1Tm(v97);
        return;
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "No alarm was found, create one.";
LABEL_24:
      _os_log_impl(&dword_269270000, v19, v20, v22, v21, 2u);
      MEMORY[0x26D6368E0](v21, -1, -1);
      goto LABEL_25;
    }

LABEL_56:
    swift_once();
    goto LABEL_4;
  }

  v94 = a4;
  a4 = v14 & 0xFFFFFFFFFFFFFF8;
  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

LABEL_51:
    sub_2692C7A20();
    sub_2692C7790();
    sub_2692C7780();
    v17(v13, v9);
    sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_siriAlarmManager], v97);
    v34 = v98;
    v35 = v99;
    __swift_project_boxed_opaque_existential_1(v97, v98);
    v36 = swift_allocObject();
    v74 = v94;
    v36[2] = a2;
    v36[3] = v74;
    v36[4] = a5;
    v37 = *(v35 + 72);
    v75 = a2;

    v39 = sub_2692A8698;
    goto LABEL_52;
  }

  if (!sub_2692C7C60())
  {
    goto LABEL_51;
  }

LABEL_8:
  v91 = a5;
  v92 = v14 & 0xC000000000000001;
  if ((v14 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x26D6360D0](0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_56;
    }

    v23 = *(v14 + 32);
  }

  v24 = [v23 repeatSchedule];
  v93 = v17;
  if (v24)
  {
    v25 = v24;
    type metadata accessor for AlarmRepeatSchedule();
    v26 = sub_2692C7930();

    v27 = v26 >> 62 ? sub_2692C7C60() : *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);

    v17 = v93;
    if (v27)
    {
      v28 = [v96 repeatSchedule];
      if (!v28)
      {
        goto LABEL_60;
      }

      v29 = v28;
      v30 = sub_2692C7930();

      if (v30 >> 62)
      {
        goto LABEL_59;
      }

      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v31)
      {
LABEL_60:
        if (qword_280302B08 != -1)
        {
          swift_once();
        }

        v77 = sub_2692C77C0();
        __swift_project_value_buffer(v77, qword_280303198);
        v78 = sub_2692C77B0();
        v79 = sub_2692C7A00();
        v80 = os_log_type_enabled(v78, v79);
        v81 = v91;
        v82 = v94;
        if (v80)
        {
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&dword_269270000, v78, v79, "Recurrent alarm found, create a non-recurrent alarm.", v83, 2u);
          v84 = v83;
          v17 = v93;
          MEMORY[0x26D6368E0](v84, -1, -1);
        }

        sub_2692C7A20();
        sub_2692C7790();
        sub_2692C7780();
        v17(v13, v9);
        sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_siriAlarmManager], v97);
        v85 = v98;
        v86 = v99;
        __swift_project_boxed_opaque_existential_1(v97, v98);
        v87 = swift_allocObject();
        v87[2] = a2;
        v87[3] = v82;
        v87[4] = v81;
        v88 = *(v86 + 72);
        v89 = a2;

        v88(v96, sub_2692A8698, v87, v85, v86);

        goto LABEL_53;
      }
    }
  }

  while (1)
  {

    if (v92)
    {
      v32 = MEMORY[0x26D6360D0](0, v14);
      goto LABEL_28;
    }

    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    __break(1u);
LABEL_59:
    v76 = sub_2692C7C60();

    if (!v76)
    {
      goto LABEL_60;
    }
  }

  v32 = *(v14 + 32);
LABEL_28:
  v40 = v32;
  v41 = [v32 enabled];
  sub_26927CC94(0, &qword_280302CC0, 0x277CCABB0);
  v42 = sub_2692C7A50();
  v43 = v42;
  if (!v41)
  {

LABEL_36:
    if (v92)
    {
      v14 = MEMORY[0x26D6360D0](0, v14);
      v53 = v93;
      a4 = v94;
    }

    else
    {
      v53 = v93;
      if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_66;
      }

      v14 = *(v14 + 32);
      a4 = v94;
    }

    v54 = [v14 sleepAlarmAttribute];
    if (v54)
    {
      v55 = v54;

      if (qword_280302B08 != -1)
      {
        swift_once();
      }

      v56 = sub_2692C77C0();
      __swift_project_value_buffer(v56, qword_280303198);
      v57 = sub_2692C77B0();
      v58 = sub_2692C79F0();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_269270000, v57, v58, "Found existing alarm, but it's nil. Create an new alarm anyways!", v59, 2u);
        v60 = v59;
        v53 = v93;
        MEMORY[0x26D6368E0](v60, -1, -1);
      }

      sub_2692C7A20();
      sub_2692C7790();
      sub_2692C7780();
      v53(v13, v9);
      sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_siriAlarmManager], v97);
      v34 = v98;
      v35 = v99;
      __swift_project_boxed_opaque_existential_1(v97, v98);
      v36 = swift_allocObject();
      v36[2] = a2;
      v36[3] = a4;
      v36[4] = v91;
      v37 = *(v35 + 72);
      v61 = a2;

      v39 = sub_2692A8698;
      goto LABEL_52;
    }

    if (qword_280302B08 == -1)
    {
LABEL_47:
      v62 = sub_2692C77C0();
      __swift_project_value_buffer(v62, qword_280303198);
      v63 = sub_2692C77B0();
      v64 = sub_2692C7A00();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_269270000, v63, v64, "Found disabled identical alarm, enable it.", v65, 2u);
        v66 = v65;
        v53 = v93;
        MEMORY[0x26D6368E0](v66, -1, -1);
      }

      sub_2692C7A20();
      sub_2692C7790();
      sub_2692C7780();
      v53(v13, v9);
      sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_siriAlarmManager], v97);
      v67 = v98;
      v68 = v99;
      __swift_project_boxed_opaque_existential_1(v97, v98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_2692C9430;
      *(v69 + 32) = v14;
      v70 = swift_allocObject();
      v70[2] = a2;
      v70[3] = a4;
      v70[4] = v91;
      v71 = *(v68 + 16);
      v72 = a2;

      v73 = v14;
      v71(v69, sub_2692A8600, v70, v67, v68);

      goto LABEL_53;
    }

LABEL_66:
    swift_once();
    goto LABEL_47;
  }

  v44 = sub_2692C7A70();

  if ((v44 & 1) == 0)
  {
    goto LABEL_36;
  }

  v45 = [objc_allocWithZone(type metadata accessor for CreateAlarmIntentResponse()) init];
  v46 = OBJC_IVAR___CreateAlarmIntentResponse_code;
  swift_beginAccess();
  *&v45[v46] = 4;
  [v45 setUserActivity_];
  if (qword_280302B08 != -1)
  {
    swift_once();
  }

  v47 = sub_2692C77C0();
  __swift_project_value_buffer(v47, qword_280303198);
  v48 = sub_2692C77B0();
  v49 = sub_2692C7A00();
  v50 = os_log_type_enabled(v48, v49);
  v51 = v94;
  if (v50)
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_269270000, v48, v49, "Found enabled identical alarm, do nothing.", v52, 2u);
    MEMORY[0x26D6368E0](v52, -1, -1);
  }

  [v45 setCreatedAlarm_];
  [v45 setSuccessCode_];
  v51(v45);
}

void sub_2692A5708(uint64_t *a1, uint64_t a2, void (*a3)(char *))
{
  v5 = sub_2692C77A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v22[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a1 + 8);
  sub_2692C7A10();
  sub_2692C7790();
  sub_2692C7780();
  (*(v6 + 8))(v9, v5);
  if (v11)
  {
    v12 = sub_2692C7760();
    v22[3] = v12;
    v22[4] = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
    sub_269280704();
    v14 = swift_allocError();
    *v15 = v10;
    *boxed_opaque_existential_1 = sub_2692C7320();
    v16 = *MEMORY[0x277D61838];
    v17 = sub_2692C76A0();
    (*(*(v17 - 8) + 104))(boxed_opaque_existential_1, v16, v17);
    (*(*(v12 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618F0], v12);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    v18 = [objc_allocWithZone(type metadata accessor for CreateAlarmIntentResponse()) init];
    v19 = OBJC_IVAR___CreateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v18[v19] = 5;
    [v18 setUserActivity_];
  }

  else
  {
    v18 = [objc_allocWithZone(type metadata accessor for CreateAlarmIntentResponse()) init];
    v20 = OBJC_IVAR___CreateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v18[v20] = 4;
    [v18 setUserActivity_];
    [v18 setCreatedAlarm_];
    [v18 setSuccessCode_];
  }

  a3(v18);
}

void sub_2692A5A0C(unint64_t *a1, uint64_t a2, void (*a3)(char *))
{
  v5 = sub_2692C77A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v24[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a1 + 8);
  sub_2692C7A10();
  sub_2692C7790();
  sub_2692C7780();
  (*(v6 + 8))(v9, v5);
  if (v11)
  {
    v12 = sub_2692C7760();
    v24[3] = v12;
    v24[4] = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
    sub_269280704();
    v14 = swift_allocError();
    *v15 = v10;
    *boxed_opaque_existential_1 = sub_2692C7320();
    v16 = *MEMORY[0x277D61838];
    v17 = sub_2692C76A0();
    (*(*(v17 - 8) + 104))(boxed_opaque_existential_1, v16, v17);
    (*(*(v12 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618F0], v12);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v24);

    v18 = [objc_allocWithZone(type metadata accessor for CreateAlarmIntentResponse()) init];
    v19 = OBJC_IVAR___CreateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v18[v19] = 5;
    [v18 setUserActivity_];
LABEL_12:
    a3(v18);

    return;
  }

  v18 = [objc_allocWithZone(type metadata accessor for CreateAlarmIntentResponse()) init];
  v20 = OBJC_IVAR___CreateAlarmIntentResponse_code;
  swift_beginAccess();
  *&v18[v20] = 4;
  [v18 setUserActivity_];
  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:
    v22 = 0;
    goto LABEL_11;
  }

  if (!sub_2692C7C60())
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x26D6360D0](0, v10);
    goto LABEL_8;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v10 + 32);
LABEL_8:
    v22 = v21;
LABEL_11:
    [v18 setCreatedAlarm_];

    [v18 setSuccessCode_];
    goto LABEL_12;
  }

  __break(1u);
}

id CreateAlarmIntentHandler.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CreateAlarmIntentHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_2692A5DF0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a3;
  v14[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_osLogObject;
  if (qword_280302B50 != -1)
  {
    swift_once();
  }

  v9 = qword_280303380;
  *&a2[v8] = qword_280303380;
  sub_269275A6C(v14, &a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_siriAlarmManager]);
  v13.receiver = a2;
  v13.super_class = type metadata accessor for CreateAlarmIntentHandler();
  v10 = v9;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v11;
}

uint64_t sub_2692A5EEC(uint64_t a1)
{
  v2 = sub_2692C74E0();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803031D0, &qword_2692CAA48);
    v11 = sub_2692C7B60();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_2692A864C(&qword_2803031D8, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v18 = sub_2692C77F0();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v7, *(v11 + 48) + v20 * v16, v2);
          sub_2692A864C(&qword_2803031E0, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v25 = sub_2692C7810();
          v26 = *v17;
          (*v17)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_2692A620C(void *a1, char *a2, const void *a3)
{
  v6 = sub_2692C77A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2692A84A8;
  *(v12 + 24) = v11;
  _Block_copy(a3);

  if (CreateAlarmIntent.eligibleForTimerReformation.getter())
  {
    if (qword_280302B08 != -1)
    {
      swift_once();
    }

    v13 = sub_2692C77C0();
    __swift_project_value_buffer(v13, qword_280303198);
    v14 = sub_2692C77B0();
    v15 = sub_2692C7A00();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_269270000, v14, v15, "Alarm2Timer: NOT handling intent with reformation semantics", v16, 2u);
      MEMORY[0x26D6368E0](v16, -1, -1);
    }

    v17 = [objc_allocWithZone(type metadata accessor for CreateAlarmIntentResponse()) init];
    v18 = OBJC_IVAR___CreateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v17[v18] = 100;
    [v17 setUserActivity_];
    _Block_copy(a3);
    sub_26928CC68(v17, a3);
    _Block_release(a3);
  }

  else
  {
    v19 = a1;
    if (qword_280302B08 != -1)
    {
      swift_once();
    }

    v34 = v12;
    v35 = v11;
    v20 = sub_2692C77C0();
    __swift_project_value_buffer(v20, qword_280303198);
    v21 = sub_2692C77B0();
    v22 = sub_2692C7A00();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_269270000, v21, v22, "Handling create alarm intent.", v23, 2u);
      MEMORY[0x26D6368E0](v23, -1, -1);
    }

    sub_2692C7A20();
    sub_2692C7790();
    sub_2692C7780();
    (*(v7 + 8))(v10, v6);
    sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_siriAlarmManager], v36);
    v25 = v37;
    v24 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v26 = v19;
    Alarm = CreateAlarmIntent.alarmSearch.getter();
    v28 = swift_allocObject();
    v28[2] = a2;
    v28[3] = v19;
    v29 = v34;
    v28[4] = sub_2692A84B0;
    v28[5] = v29;
    v30 = *(v24 + 56);
    v31 = a2;
    v32 = v26;

    v30(Alarm, sub_2692A8694, v28, v25, v24);

    __swift_destroy_boxed_opaque_existential_1Tm(v36);
  }
}

void sub_2692A665C(void *a1, char *a2, void (*a3)(char *), uint64_t a4)
{
  v8 = sub_2692C77A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v33[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;

  if (CreateAlarmIntent.eligibleForTimerReformation.getter())
  {
    if (qword_280302B08 != -1)
    {
      swift_once();
    }

    v14 = sub_2692C77C0();
    __swift_project_value_buffer(v14, qword_280303198);
    v15 = sub_2692C77B0();
    v16 = sub_2692C7A00();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_269270000, v15, v16, "Alarm2Timer: NOT handling intent with reformation semantics", v17, 2u);
      MEMORY[0x26D6368E0](v17, -1, -1);
    }

    v18 = [objc_allocWithZone(type metadata accessor for CreateAlarmIntentResponse()) init];
    v19 = OBJC_IVAR___CreateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v18[v19] = 100;
    [v18 setUserActivity_];
    sub_269289244(v18, a3);
  }

  else
  {
    if (qword_280302B08 != -1)
    {
      swift_once();
    }

    v20 = sub_2692C77C0();
    __swift_project_value_buffer(v20, qword_280303198);
    v21 = sub_2692C77B0();
    v22 = sub_2692C7A00();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_269270000, v21, v22, "Handling create alarm intent.", v23, 2u);
      MEMORY[0x26D6368E0](v23, -1, -1);
    }

    sub_2692C7A20();
    sub_2692C7790();
    sub_2692C7780();
    (*(v9 + 8))(v12, v8);
    sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_siriAlarmManager], v33);
    v24 = v34;
    v25 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    Alarm = CreateAlarmIntent.alarmSearch.getter();
    v27 = swift_allocObject();
    v27[2] = a2;
    v27[3] = a1;
    v27[4] = sub_2692A869C;
    v27[5] = v13;
    v28 = a2;
    v29 = *(v25 + 56);
    v30 = v28;
    v31 = a1;

    v29(Alarm, sub_2692A8694, v27, v24, v25);

    __swift_destroy_boxed_opaque_existential_1Tm(v33);
  }
}

id sub_2692A6A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(type metadata accessor for CreateAlarmIntentHandler());
  (*(v7 + 16))(v9, a1, a3);
  return sub_2692A5DF0(v9, v10, a3, a4);
}

uint64_t sub_2692A6B60(uint64_t a1)
{
  v79 = a1;
  v1 = sub_2692C74E0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_2692C74F0();
  v6 = *(v80 - 8);
  MEMORY[0x28223BE20](v80, v7);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C60, &qword_2692C96E0);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v75 - v15;
  v17 = sub_2692C73E0();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v76 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v85 = &v75 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v75 = &v75 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v84 = &v75 - v30;
  v32 = MEMORY[0x28223BE20](v29, v31);
  v34 = &v75 - v33;
  MEMORY[0x28223BE20](v32, v35);
  v37 = &v75 - v36;
  sub_2692C7610();
  sub_2692C74B0();
  (*(v2 + 104))(v5, *MEMORY[0x277CC9968], v1);
  v83 = v37;
  sub_2692C74A0();
  (*(v2 + 8))(v5, v1);
  isa = v6[1].isa;
  v39 = v80;
  v78 = v6 + 1;
  isa(v9);
  v40 = *(v18 + 48);
  result = v40(v16, 1, v17);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v81 = v34;
  v82 = v18;
  v42 = *(v18 + 32);
  v42(v34, v16, v17);
  sub_2692C74B0();
  v43 = v77;
  sub_2692C7480();
  (isa)(v9, v39);
  result = v40(v43, 1, v17);
  if (result == 1)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v44 = v84;
  v42(v84, v43, v17);
  v45 = v83;
  v47 = v75;
  v46 = v76;
  v48 = v85;
  if (qword_280302B08 != -1)
  {
    swift_once();
  }

  v49 = sub_2692C77C0();
  __swift_project_value_buffer(v49, qword_280303198);
  v50 = v82;
  v51 = *(v82 + 16);
  v51(v47, v44, v17);
  v51(v48, v45, v17);
  v52 = v47;
  v53 = v81;
  v51(v46, v81, v17);
  v54 = sub_2692C77B0();
  v55 = sub_2692C7A00();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    LODWORD(v79) = v55;
    v57 = v56;
    v80 = swift_slowAlloc();
    v86 = v80;
    *v57 = 136315650;
    sub_2692A864C(&qword_280302C70, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v78 = v54;
    v58 = sub_2692C7D30();
    v60 = v59;
    v61 = *(v50 + 8);
    v61(v52, v17);
    v62 = sub_26927C4DC(v58, v60, &v86);

    *(v57 + 4) = v62;
    *(v57 + 12) = 2080;
    v63 = v85;
    v64 = sub_2692C7D30();
    v66 = v65;
    v61(v63, v17);
    v67 = sub_26927C4DC(v64, v66, &v86);

    *(v57 + 14) = v67;
    *(v57 + 22) = 2080;
    v45 = v83;
    v68 = sub_2692C7D30();
    v70 = v69;
    v61(v46, v17);
    v44 = v84;
    v71 = sub_26927C4DC(v68, v70, &v86);
    v53 = v81;

    *(v57 + 24) = v71;
    v72 = v78;
    _os_log_impl(&dword_269270000, v78, v79, "alarmDate: %s, now: %s, oneDayLater: %s", v57, 0x20u);
    v73 = v80;
    swift_arrayDestroy();
    MEMORY[0x26D6368E0](v73, -1, -1);
    MEMORY[0x26D6368E0](v57, -1, -1);
  }

  else
  {

    v61 = *(v50 + 8);
    v61(v46, v17);
    v61(v85, v17);
    v61(v52, v17);
  }

  sub_2692A864C(&qword_2803031C8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if (sub_2692C7800())
  {
    v74 = 0;
  }

  else
  {
    v74 = sub_2692C73A0();
  }

  v61(v44, v17);
  v61(v53, v17);
  v61(v45, v17);
  return v74 & 1;
}

void sub_2692A73FC(void *a1, uint64_t a2)
{
  v4 = sub_2692C74F0();
  v81 = *(v4 - 8);
  v82 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2692C73E0();
  v83 = *(v8 - 8);
  v84 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2692C7310();
  v85 = *(v12 - 8);
  v86 = v12;
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v79 - v18;
  if (qword_280302B08 != -1)
  {
    swift_once();
  }

  v20 = sub_2692C77C0();
  __swift_project_value_buffer(v20, qword_280303198);
  v21 = a1;
  v22 = sub_2692C77B0();
  v23 = sub_2692C7A00();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v80 = v7;
    v25 = a2;
    v26 = v24;
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    *(v26 + 4) = v21;
    *v27 = v21;
    v28 = v21;
    _os_log_impl(&dword_269270000, v22, v23, "Resolving time for intent: %@.", v26, 0xCu);
    sub_2692A14A0(v27);
    MEMORY[0x26D6368E0](v27, -1, -1);
    v29 = v26;
    a2 = v25;
    v7 = v80;
    MEMORY[0x26D6368E0](v29, -1, -1);
  }

  v30 = [v21 relativeOffsetInMinutes];
  if (v30)
  {
    v31 = v30;
    [v30 doubleValue];
    v33 = v32;

    if (v33 <= 1.0 || v33 < 1440.0)
    {
      sub_2692C73B0();
      sub_2692C74B0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C68, &unk_2692CAA00);
      v34 = sub_2692C74E0();
      v35 = a2;
      v36 = *(v34 - 8);
      v37 = *(v36 + 72);
      v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_2692CA9F0;
      v40 = v39 + v38;
      v41 = *(v36 + 104);
      v41(v40, *MEMORY[0x277CC9980], v34);
      v41(v40 + v37, *MEMORY[0x277CC99A0], v34);
      sub_2692A5EEC(v39);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_2692C7460();

      (*(v81 + 8))(v7, v82);
      v42 = objc_opt_self();
      v43 = sub_2692C7270();
      v44 = [v42 successWithResolvedDateComponents_];

      (*(v35 + 16))(v35, v44);
      (*(v85 + 8))(v16, v86);
      (*(v83 + 8))(v11, v84);
      return;
    }

    v57 = sub_2692C77B0();
    v58 = sub_2692C7A00();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_269270000, v57, v58, "Duration too long, relativeOffsetInMinutes=offset, unsupported().", v59, 2u);
      MEMORY[0x26D6368E0](v59, -1, -1);
    }

    sub_26927CC94(0, &qword_280302C38, 0x277CD3B80);
    v60 = [swift_getObjCClassFromMetadata() unsupported];
    goto LABEL_23;
  }

  v45 = [v21 time];
  if (v45)
  {
    v46 = v45;
    sub_2692C7280();

    v47 = sub_2692C7290();
    if (v48 & 1) != 0 || (v49 = v47, v50 = sub_2692C72B0(), (v51))
    {
      v52 = sub_2692C77B0();
      v53 = sub_2692C7A00();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_269270000, v52, v53, "intent has no time element, needsValue().", v54, 2u);
        MEMORY[0x26D6368E0](v54, -1, -1);
      }

      sub_26927CC94(0, &qword_280302C38, 0x277CD3B80);
      v55 = [swift_getObjCClassFromMetadata() needsValue];
    }

    else
    {
      if (v49 > 0x17 || v50 >= 0x3C)
      {
        v74 = sub_2692C77B0();
        v75 = sub_2692C7A00();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          *v76 = 0;
          _os_log_impl(&dword_269270000, v74, v75, "intent time is illegal, unsupported().", v76, 2u);
          MEMORY[0x26D6368E0](v76, -1, -1);
        }
      }

      else
      {
        if ((sub_2692A6B60(v19) & 1) != 0 || (v65 = [v21 repeatSchedule]) != 0 && ((v66 = v65, type metadata accessor for AlarmRepeatSchedule(), v67 = sub_2692C7930(), v66, v67 >> 62) ? (v68 = sub_2692C7C60()) : (v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v68))
        {
          v69 = sub_2692C77B0();
          v70 = sub_2692C7A00();
          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            *v71 = 0;
            _os_log_impl(&dword_269270000, v69, v70, "Time resolved successfully.", v71, 2u);
            MEMORY[0x26D6368E0](v71, -1, -1);
          }

          v72 = objc_opt_self();
          v73 = sub_2692C7270();
          v56 = [v72 successWithResolvedDateComponents_];

          goto LABEL_16;
        }

        v74 = sub_2692C77B0();
        v77 = sub_2692C7A00();
        if (os_log_type_enabled(v74, v77))
        {
          v78 = swift_slowAlloc();
          *v78 = 0;
          _os_log_impl(&dword_269270000, v74, v77, "intent time is more than one day ahead and not repeating, unsupported().", v78, 2u);
          MEMORY[0x26D6368E0](v78, -1, -1);
        }
      }

      sub_26927CC94(0, &qword_280302C38, 0x277CD3B80);
      v55 = [swift_getObjCClassFromMetadata() unsupported];
    }

    v56 = v55;
LABEL_16:
    (*(a2 + 16))(a2, v56);

    (*(v85 + 8))(v19, v86);
    return;
  }

  v61 = sub_2692C77B0();
  v62 = sub_2692C7A00();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_269270000, v61, v62, "Intent has no time or relativeOffsetInMinutes, needsValue().", v63, 2u);
    MEMORY[0x26D6368E0](v63, -1, -1);
  }

  sub_26927CC94(0, &qword_280302C38, 0x277CD3B80);
  v60 = [swift_getObjCClassFromMetadata() needsValue];
LABEL_23:
  v86 = v60;
  (*(a2 + 16))(a2, v86);
  v64 = v86;
}

void sub_2692A7E5C(uint64_t a1, uint64_t a2)
{
  if (CreateAlarmIntent.eligibleForTimerReformation.getter())
  {
    if (qword_280302B08 != -1)
    {
      swift_once();
    }

    v3 = sub_2692C77C0();
    __swift_project_value_buffer(v3, qword_280303198);
    v4 = sub_2692C77B0();
    v5 = sub_2692C7A00();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_269270000, v4, v5, "Alarm2Timer: Confirming intent with reformation semantics", v6, 2u);
      MEMORY[0x26D6368E0](v6, -1, -1);
    }

    v7 = [objc_allocWithZone(type metadata accessor for CreateAlarmIntentResponse()) init];
    v8 = OBJC_IVAR___CreateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v7[v8] = 100;
  }

  else
  {
    if (qword_280302B08 != -1)
    {
      swift_once();
    }

    v9 = sub_2692C77C0();
    __swift_project_value_buffer(v9, qword_280303198);
    v10 = sub_2692C77B0();
    v11 = sub_2692C7A00();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_269270000, v10, v11, "Alarm2Timer: Confirming intent normally", v12, 2u);
      MEMORY[0x26D6368E0](v12, -1, -1);
    }

    v7 = [objc_allocWithZone(type metadata accessor for CreateAlarmIntentResponse()) init];
    v13 = OBJC_IVAR___CreateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v7[v13] = 1;
  }

  [v7 setUserActivity_];
  (*(a2 + 16))(a2, v7);
}

void sub_2692A80AC(void *a1, char *a2, void (**a3)(void, void))
{
  v6 = sub_2692C77A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v31[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  _Block_copy(a3);
  if (CreateAlarmIntent.eligibleForTimerReformation.getter())
  {
    if (qword_280302B08 != -1)
    {
      swift_once();
    }

    v12 = sub_2692C77C0();
    __swift_project_value_buffer(v12, qword_280303198);
    v13 = sub_2692C77B0();
    v14 = sub_2692C7A00();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_269270000, v13, v14, "Alarm2Timer: NOT handling intent with reformation semantics", v15, 2u);
      MEMORY[0x26D6368E0](v15, -1, -1);
    }

    v16 = [objc_allocWithZone(type metadata accessor for CreateAlarmIntentResponse()) init];
    v17 = OBJC_IVAR___CreateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v16[v17] = 100;
    [v16 setUserActivity_];
    (a3)[2](a3, v16);
  }

  else
  {
    if (qword_280302B08 != -1)
    {
      swift_once();
    }

    v18 = sub_2692C77C0();
    __swift_project_value_buffer(v18, qword_280303198);
    v19 = sub_2692C77B0();
    v20 = sub_2692C7A00();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_269270000, v19, v20, "Handling create alarm intent.", v21, 2u);
      MEMORY[0x26D6368E0](v21, -1, -1);
    }

    sub_2692C7A20();
    sub_2692C7790();
    sub_2692C7780();
    (*(v7 + 8))(v10, v6);
    sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_siriAlarmManager], v31);
    v22 = v32;
    v23 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    Alarm = CreateAlarmIntent.alarmSearch.getter();
    v25 = swift_allocObject();
    v25[2] = a2;
    v25[3] = a1;
    v25[4] = sub_26928062C;
    v25[5] = v11;
    v26 = a2;
    v27 = *(v23 + 56);
    v28 = v26;
    v29 = a1;

    v27(Alarm, sub_2692A8694, v25, v22, v23);

    __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }
}

uint64_t sub_2692A84B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803031C0, &qword_2692CAA40);
    v3 = sub_2692C7B60();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_2692C7DE0();
      MEMORY[0x26D636320](v10);
      result = sub_2692C7E00();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t objectdestroy_27Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2692A864C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2692A86A0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_14:
  v2 = sub_2692C7C60();
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  v3 = 0;
  v4 = 0;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D6360D0](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v8 = [v5 repeatSchedule];
    if (v8 > 6)
    {
      break;
    }

    v9 = qword_2692CAA50[v8];

    v4 |= v9;
    ++v3;
    if (v7 == v2)
    {
      return v4;
    }
  }

  result = sub_2692C7D80();
  __break(1u);
  return result;
}

uint64_t sub_2692A87CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
LABEL_24:
    v11 = a1;
    v3 = sub_2692C7C60();
    a1 = v11;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v15 = a1 & 0x10;
      v16 = a1 & 0x40;
      v18 = a1 & 8;
      v19 = a1 & 0x20;
      v17 = a1 & 2;
      v13 = a1 & 1;
      v14 = a1 & 4;
      LODWORD(v5) = 1;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          a1 = MEMORY[0x26D6360D0](v4, a2);
        }

        else
        {
          if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          a1 = *(a2 + 8 * v4 + 32);
        }

        v8 = a1;
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v10 = [a1 repeatSchedule];
        if (v10 <= 2)
        {
          if (v10)
          {
            v6 = v17;
            if (v10 != 1)
            {
              v6 = v14;
              if (v10 != 2)
              {
LABEL_27:
                result = sub_2692C7D80();
                __break(1u);
                return result;
              }
            }
          }

          else
          {
            v6 = v13;
          }
        }

        else if (v10 > 4)
        {
          v6 = v19;
          if (v10 != 5)
          {
            v6 = v16;
            if (v10 != 6)
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
          v6 = v18;
          if (v10 != 3)
          {
            v6 = v15;
          }
        }

        v7 = v6 != 0;

        v5 = v7 & v5;
        ++v4;
        if (v9 == v3)
        {
          return v5;
        }
      }
    }
  }

  return 1;
}

id sub_2692A89C8(uint64_t a1)
{
  type metadata accessor for AlarmRepeatSchedule();
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_2692C7820();
  v4 = [v2 initWithIdentifier:0 displayString:v3];

  [v4 setRepeatSchedule_];
  return v4;
}

id DismissAlarmHalIntentHandler.__allocating_init(manager:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_2692AB5DC(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

uint64_t sub_2692A8AB0()
{
  v0 = sub_2692C77C0();
  __swift_allocate_value_buffer(v0, qword_2803031E8);
  v1 = __swift_project_value_buffer(v0, qword_2803031E8);
  if (qword_280302B40 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280303368);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id DismissAlarmHalIntentHandler.init(manager:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_2692AB4E0(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

void sub_2692A8C64(void *a1, void (*a2)(char *))
{
  if (qword_280302B10 != -1)
  {
    swift_once();
  }

  v4 = sub_2692C77C0();
  __swift_project_value_buffer(v4, qword_2803031E8);
  v5 = sub_2692C77B0();
  v6 = sub_2692C7A00();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_269270000, v5, v6, "Calling DismissAlarmHalIntentHandler.confirm().", v7, 2u);
    MEMORY[0x26D6368E0](v7, -1, -1);
  }

  v8 = [a1 remoteDeviceId];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v10 = sub_2692C7830();
  v12 = v11;

  v13 = [a1 skipConfirmation];
  sub_26927CC94(0, &qword_280302CC0, 0x277CCABB0);
  v14 = sub_2692C7A50();
  v15 = v14;
  if (!v13)
  {

    goto LABEL_11;
  }

  v16 = sub_2692C7A70();

  if ((v16 & 1) == 0)
  {
LABEL_11:

LABEL_12:
    v22 = [objc_allocWithZone(type metadata accessor for DismissAlarmHalIntentResponse()) init];
    v23 = OBJC_IVAR___DismissAlarmHalIntentResponse_code;
    swift_beginAccess();
    v24 = 4;
    goto LABEL_13;
  }

  v17 = sub_2692C77B0();
  v18 = sub_2692C7A00();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25[0] = v20;
    *v19 = 136315138;
    v21 = sub_26927C4DC(v10, v12, v25);

    *(v19 + 4) = v21;
    _os_log_impl(&dword_269270000, v17, v18, "DismissAlarmHalIntentHandler returning needs confirm intent since the firing alarm is on remote device %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x26D6368E0](v20, -1, -1);
    MEMORY[0x26D6368E0](v19, -1, -1);
  }

  else
  {
  }

  v22 = [objc_allocWithZone(type metadata accessor for DismissAlarmHalIntentResponse()) init];
  v23 = OBJC_IVAR___DismissAlarmHalIntentResponse_code;
  swift_beginAccess();
  v24 = 3;
LABEL_13:
  *&v22[v23] = v24;
  [v22 setUserActivity_];
  a2(v22);
}

uint64_t sub_2692A901C(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C50, &unk_2692C96A0);
  v2[30] = swift_task_alloc();
  v3 = sub_2692C7360();
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2692A9114, 0, 0);
}

uint64_t sub_2692A9114()
{
  v54 = v0;
  if (qword_280302B10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v2 = sub_2692C77C0();
  *(v0 + 272) = __swift_project_value_buffer(v2, qword_2803031E8);
  v3 = v1;
  v4 = sub_2692C77B0();
  v5 = sub_2692C7A00();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 224);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v53 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2692C7830();
    v13 = v12;

    v14 = sub_26927C4DC(v11, v13, &v53);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_269270000, v4, v5, "Calling DismissAlarmHalIntentHandler.handle() for intent: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6368E0](v8, -1, -1);
    MEMORY[0x26D6368E0](v7, -1, -1);
  }

  v15 = [*(v0 + 224) remoteExecutionId];
  if (v15)
  {
    v16 = *(v0 + 224);
    v17 = v15;
    v18 = sub_2692C7830();
    v20 = v19;

    *(v0 + 280) = v18;
    *(v0 + 288) = v20;
    v21 = [v16 alarmId];
    if (!v21)
    {

      goto LABEL_13;
    }

    v22 = *(v0 + 248);
    v23 = *(v0 + 256);
    v24 = *(v0 + 240);
    v25 = v21;
    sub_2692C7830();

    sub_2692C7350();

    if ((*(v23 + 48))(v24, 1, v22) == 1)
    {
      v26 = *(v0 + 240);

      sub_26927CEA8(v26, &qword_280302C50, &unk_2692C96A0);
LABEL_13:
      v30 = sub_2692C77B0();
      v31 = sub_2692C79F0();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_269270000, v30, v31, "Failed to get a valid alarmId or alarmURL for SAAlarmDismiss command", v32, 2u);
        MEMORY[0x26D6368E0](v32, -1, -1);
      }

      v33 = sub_2692C7760();
      v34 = MEMORY[0x277D61908];
      *(v0 + 40) = v33;
      *(v0 + 48) = v34;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      *boxed_opaque_existential_1 = 0xD000000000000010;
      boxed_opaque_existential_1[1] = 0x80000002692CD3A0;
      v36 = *MEMORY[0x277D61878];
      v37 = sub_2692C7710();
      (*(*(v37 - 8) + 104))(boxed_opaque_existential_1, v36, v37);
      (*(*(v33 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v33);
      sub_2692C76B0();
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      v38 = [objc_allocWithZone(type metadata accessor for DismissAlarmHalIntentResponse()) init];
      v39 = OBJC_IVAR___DismissAlarmHalIntentResponse_code;
      swift_beginAccess();
      *&v38[v39] = 5;
      [v38 setUserActivity_];

      v40 = *(v0 + 8);

      return v40(v38);
    }

    v42 = *(v0 + 256);
    v41 = *(v0 + 264);
    v43 = *(v0 + 248);
    (*(v42 + 32))(v41, *(v0 + 240), v43);
    v44 = [objc_allocWithZone(MEMORY[0x277D47160]) init];
    *(v0 + 296) = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DC0, &qword_2692C9820);
    v45 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_2692C9800;
    (*(v42 + 16))(v46 + v45, v41, v43);
    v47 = sub_2692C7910();

    [v44 setAlarmIds_];

    sub_2692C7580();
    v48 = *(v0 + 80);
    v49 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v48);
    v50 = swift_task_alloc();
    *(v0 + 304) = v50;
    v51 = sub_26927CC94(0, &qword_280302DC8, 0x277D471B0);
    *v50 = v0;
    v50[1] = sub_2692A97F0;

    return MEMORY[0x2821BB680](v44, v18, v20, v48, v51, v49);
  }

  else
  {
    v27 = swift_task_alloc();
    *(v0 + 320) = v27;
    v27[1] = vextq_s8(*(v0 + 224), *(v0 + 224), 8uLL);
    v28 = swift_task_alloc();
    *(v0 + 328) = v28;
    v29 = type metadata accessor for DismissAlarmHalIntentResponse();
    *v28 = v0;
    v28[1] = sub_2692A9B0C;

    return MEMORY[0x2822007B8](v0 + 208, 0, 0, 0x6928656C646E6168, 0xEF293A746E65746ELL, sub_2692AB6C0, v27, v29);
  }
}

uint64_t sub_2692A97F0(void *a1)
{
  *(*v2 + 312) = v1;

  if (v1)
  {
    v4 = sub_2692A9C98;
  }

  else
  {

    v4 = sub_2692A990C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2692A990C()
{
  v18 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  v1 = sub_2692C77B0();
  v2 = sub_2692C7A00();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[36];
  if (v3)
  {
    v5 = v0[35];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v8 = sub_26927C4DC(v5, v4, &v17);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_269270000, v1, v2, "Execute SAAlarmDismiss on remote device %s succeeded!", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x26D6368E0](v7, -1, -1);
    MEMORY[0x26D6368E0](v6, -1, -1);
  }

  else
  {
  }

  v9 = v0[37];
  v11 = v0[32];
  v10 = v0[33];
  v12 = v0[31];
  v13 = [objc_allocWithZone(type metadata accessor for DismissAlarmHalIntentResponse()) init];
  v14 = OBJC_IVAR___DismissAlarmHalIntentResponse_code;
  swift_beginAccess();
  *&v13[v14] = 4;
  [v13 setUserActivity_];

  (*(v11 + 8))(v10, v12);

  v15 = v0[1];

  return v15(v13);
}

uint64_t sub_2692A9B0C()
{

  return MEMORY[0x2822009F8](sub_2692A9C24, 0, 0);
}

uint64_t sub_2692A9C24()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2692A9C98()
{
  v30 = v0;
  v1 = v0[39];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  v2 = v1;
  v3 = sub_2692C77B0();
  v4 = sub_2692C79F0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[39];
    v7 = v0[35];
    v6 = v0[36];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 136315394;
    v10 = sub_26927C4DC(v7, v6, &v29);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    v0[27] = v5;
    v11 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DD0, &qword_2692C9828);
    v12 = sub_2692C7840();
    v14 = sub_26927C4DC(v12, v13, &v29);

    *(v8 + 14) = v14;
    _os_log_impl(&dword_269270000, v3, v4, "Execute SAAlarmDismiss on remote device %s failed with error %s!", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6368E0](v9, -1, -1);
    MEMORY[0x26D6368E0](v8, -1, -1);
  }

  else
  {
  }

  v15 = v0[39];
  v16 = v0[37];
  v18 = v0[32];
  v17 = v0[33];
  v19 = v0[31];
  v20 = sub_2692C7760();
  v21 = MEMORY[0x277D61908];
  v0[15] = v20;
  v0[16] = v21;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
  *boxed_opaque_existential_1 = sub_2692C7320();
  v23 = *MEMORY[0x277D618D0];
  v24 = sub_2692C7750();
  (*(*(v24 - 8) + 104))(boxed_opaque_existential_1, v23, v24);
  (*(*(v20 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D61900], v20);
  sub_2692C76B0();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v25 = [objc_allocWithZone(type metadata accessor for DismissAlarmHalIntentResponse()) init];
  v26 = OBJC_IVAR___DismissAlarmHalIntentResponse_code;
  swift_beginAccess();
  *&v25[v26] = 5;
  [v25 setUserActivity_];

  (*(v18 + 8))(v17, v19);

  v27 = v0[1];

  return v27(v25);
}

uint64_t sub_2692A9FEC(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280303210, &unk_2692CAB58);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v17[-1] - v9;
  sub_269275A6C(a2 + OBJC_IVAR____TtC21SiriTimeAlarmInternal28DismissAlarmHalIntentHandler_siriAlarmManager, v17);
  (*(v7 + 16))(v10, a1, v6);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a2;
  (*(v7 + 32))(v12 + v11, v10, v6);
  v13 = a3;
  v14 = a2;
  static AlarmIntentHandlerUtils.getFiringAlarms(alarmManager:completion:)(v17, sub_2692ABE40, v12);

  return __swift_destroy_boxed_opaque_existential_1Tm(v17);
}

uint64_t sub_2692AA168(unint64_t a1, void *a2, char *a3, uint64_t a4)
{
  v35 = a4;
  v7 = sub_2692C77A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280303210, &unk_2692CAB58);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v34 - v15;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v36 = v7;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_7:
    type metadata accessor for SiriAlarm();
    v19 = [a2 alarmId];
    if (v19)
    {
      v20 = v19;
      v34 = sub_2692C7830();

      v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v22 = sub_2692C7820();
    }

    else
    {
      v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v22 = 0;
    }

    v23 = sub_2692C7820();

    v18 = [v21 initWithIdentifier:v22 displayString:v23];

    goto LABEL_11;
  }

  result = sub_2692C7C60();
  v36 = v7;
  if (!result)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x26D6360D0](0, a1);
    goto LABEL_11;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(a1 + 32);
LABEL_11:
    (*(v13 + 16))(v16, v35, v12);
    v24 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v25 = swift_allocObject();
    (*(v13 + 32))(v25 + v24, v16, v12);
    v26 = v18;
    sub_2692C7A20();
    sub_2692C7790();
    sub_2692C7780();
    (*(v8 + 8))(v11, v36);
    sub_269275A6C(&a3[OBJC_IVAR____TtC21SiriTimeAlarmInternal28DismissAlarmHalIntentHandler_siriAlarmManager], v37);
    v27 = v38;
    v28 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_2692C9430;
    *(v29 + 32) = v26;
    v30 = swift_allocObject();
    v30[2] = a3;
    v30[3] = sub_2692ABEC0;
    v30[4] = v25;
    v30[5] = v26;
    v31 = *(v28 + 40);
    v32 = v26;
    v33 = a3;

    v31(v29, sub_2692ABF3C, v30, v27, v28);

    return __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }

  __break(1u);
  return result;
}

uint64_t sub_2692AA598(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280303210, &unk_2692CAB58);
  return sub_2692C79A0();
}

uint64_t sub_2692AA770(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_269294310;

  return sub_2692A901C(v6);
}

void sub_2692AA834(uint64_t *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  v8 = sub_2692C77A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v42[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(a1 + 8);
  sub_2692C7A10();
  sub_2692C7790();
  sub_2692C7780();
  (*(v9 + 8))(v12, v8);
  if (v14 == 1)
  {
    if (qword_280302B10 != -1)
    {
      swift_once();
    }

    v15 = sub_2692C77C0();
    __swift_project_value_buffer(v15, qword_2803031E8);
    v16 = a5;
    v17 = sub_2692C77B0();
    v18 = sub_2692C79F0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42[0] = v41;
      *v19 = 136315138;
      v20 = v16;
      v21 = [v20 description];
      v22 = sub_2692C7830();
      v23 = a3;
      v25 = v24;

      v26 = sub_26927C4DC(v22, v25, v42);
      a3 = v23;

      *(v19 + 4) = v26;
      _os_log_impl(&dword_269270000, v17, v18, "Can NOT handle Dismiss alarm: %s", v19, 0xCu);
      v27 = v41;
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x26D6368E0](v27, -1, -1);
      MEMORY[0x26D6368E0](v19, -1, -1);
    }

    v28 = sub_2692C7760();
    v42[3] = v28;
    v42[4] = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
    sub_269280704();
    v30 = swift_allocError();
    *v31 = v13;
    *boxed_opaque_existential_1 = sub_2692C7320();
    v32 = *MEMORY[0x277D61838];
    v33 = sub_2692C76A0();
    (*(*(v33 - 8) + 104))(boxed_opaque_existential_1, v32, v33);
    (*(*(v28 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618F0], v28);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v42);

    v34 = [objc_allocWithZone(type metadata accessor for DismissAlarmHalIntentResponse()) init];
    v35 = OBJC_IVAR___DismissAlarmHalIntentResponse_code;
    swift_beginAccess();
    v36 = 5;
  }

  else
  {
    if (qword_280302B10 != -1)
    {
      swift_once();
    }

    v37 = sub_2692C77C0();
    __swift_project_value_buffer(v37, qword_2803031E8);
    v38 = sub_2692C77B0();
    v39 = sub_2692C7A00();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_269270000, v38, v39, "Alarm dismissed successfully", v40, 2u);
      MEMORY[0x26D6368E0](v40, -1, -1);
    }

    v34 = [objc_allocWithZone(type metadata accessor for DismissAlarmHalIntentResponse()) init];
    v35 = OBJC_IVAR___DismissAlarmHalIntentResponse_code;
    swift_beginAccess();
    v36 = 4;
  }

  *&v34[v35] = v36;
  [v34 setUserActivity_];
  a3(v34);
}

id DismissAlarmHalIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DismissAlarmHalIntentHandler.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DismissAlarmHalIntentHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2692AAE34(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2692958EC;

  return v6();
}

uint64_t sub_2692AAF1C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_26929513C;

  return v7();
}

uint64_t sub_2692AB004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DD8, &qword_2692C9868);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v24 - v11;
  sub_2692AB930(a3, v24 - v11);
  v13 = sub_2692C79C0();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_26927CEA8(v12, &qword_280302DD8, &qword_2692C9868);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2692C79B0();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_2692C7990();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_2692C7860() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_26927CEA8(a3, &qword_280302DD8, &qword_2692C9868);

    return v22;
  }

LABEL_8:
  sub_26927CEA8(a3, &qword_280302DD8, &qword_2692C9868);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2692AB2F0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2692AB3E8;

  return v6(a1);
}

uint64_t sub_2692AB3E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_2692AB4E0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a3;
  v14[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = OBJC_IVAR____TtC21SiriTimeAlarmInternal28DismissAlarmHalIntentHandler_osLogObject;
  if (qword_280302B50 != -1)
  {
    swift_once();
  }

  v9 = qword_280303380;
  *&a2[v8] = qword_280303380;
  sub_269275A6C(v14, &a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal28DismissAlarmHalIntentHandler_siriAlarmManager]);
  v13.receiver = a2;
  v13.super_class = type metadata accessor for DismissAlarmHalIntentHandler();
  v10 = v9;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v11;
}

id sub_2692AB5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(type metadata accessor for DismissAlarmHalIntentHandler());
  (*(v7 + 16))(v9, a1, a3);
  return sub_2692AB4E0(v9, v10, a3, a4);
}

uint64_t dispatch thunk of DismissAlarmHalIntentHandler.handle(intent:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_269294F8C;

  return v7(a1);
}

uint64_t sub_2692AB87C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26929513C;

  return sub_2692AA770(v2, v3, v4);
}

uint64_t sub_2692AB930(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DD8, &qword_2692C9868);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2692AB9A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2692958EC;

  return sub_2692AB2F0(a1, v4);
}

uint64_t sub_2692ABA58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26929513C;

  return sub_2692AB2F0(a1, v4);
}

void sub_2692ABB10(void *a1, uint64_t a2)
{
  if (qword_280302B10 != -1)
  {
    swift_once();
  }

  v4 = sub_2692C77C0();
  __swift_project_value_buffer(v4, qword_2803031E8);
  v5 = sub_2692C77B0();
  v6 = sub_2692C7A00();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_269270000, v5, v6, "Calling DismissAlarmHalIntentHandler.confirm().", v7, 2u);
    MEMORY[0x26D6368E0](v7, -1, -1);
  }

  v8 = [a1 remoteDeviceId];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v10 = sub_2692C7830();
  v12 = v11;

  v13 = [a1 skipConfirmation];
  sub_26927CC94(0, &qword_280302CC0, 0x277CCABB0);
  v14 = sub_2692C7A50();
  v15 = v14;
  if (!v13)
  {

    goto LABEL_11;
  }

  v16 = sub_2692C7A70();

  if ((v16 & 1) == 0)
  {
LABEL_11:

LABEL_12:
    v22 = [objc_allocWithZone(type metadata accessor for DismissAlarmHalIntentResponse()) init];
    v23 = OBJC_IVAR___DismissAlarmHalIntentResponse_code;
    swift_beginAccess();
    v24 = 4;
    goto LABEL_13;
  }

  v17 = sub_2692C77B0();
  v18 = sub_2692C7A00();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25[0] = v20;
    *v19 = 136315138;
    v21 = sub_26927C4DC(v10, v12, v25);

    *(v19 + 4) = v21;
    _os_log_impl(&dword_269270000, v17, v18, "DismissAlarmHalIntentHandler returning needs confirm intent since the firing alarm is on remote device %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x26D6368E0](v20, -1, -1);
    MEMORY[0x26D6368E0](v19, -1, -1);
  }

  else
  {
  }

  v22 = [objc_allocWithZone(type metadata accessor for DismissAlarmHalIntentResponse()) init];
  v23 = OBJC_IVAR___DismissAlarmHalIntentResponse_code;
  swift_beginAccess();
  v24 = 3;
LABEL_13:
  *&v22[v23] = v24;
  [v22 setUserActivity_];
  (*(a2 + 16))(a2, v22);
}

uint64_t sub_2692ABE40(unint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280303210, &unk_2692CAB58) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_2692AA168(a1, v4, v5, v6);
}

uint64_t sub_2692ABEC0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280303210, &unk_2692CAB58);

  return sub_2692AA598(a1);
}

uint64_t SiriAlarmManagerImpl.__allocating_init(endpointUUID:)(uint64_t a1, uint64_t a2)
{

  if (qword_280302B28 != -1)
  {
    swift_once();
  }

  sub_269275A6C(&qword_280303238, v9);
  type metadata accessor for SiriAlarmManagerImpl(0);
  v2 = swift_allocObject();
  sub_2692C7610();
  sub_2692C74B0();
  v3 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_sleepAlarmManager;
  type metadata accessor for SiriSleepAlarmManager();
  v4 = swift_allocObject();
  *(v2 + v3) = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  v5 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_osLogObject;
  if (qword_280302B50 != -1)
  {
    swift_once();
  }

  v6 = qword_280303380;
  *(v2 + v5) = qword_280303380;
  sub_269275A30(v9, v2 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_alarmManager);
  v7 = v6;
  return v2;
}

uint64_t sub_2692AC078(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v19 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2692C7C60())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x26D6360D0](v8, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_2692C7BF0();
        sub_2692C7C20();
        v4 = v15;
        sub_2692C7C30();
        sub_2692C7C00();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  return v12;
}

id sub_2692AC224(int a1)
{
  v30 = a1;
  v1 = sub_2692C77C0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v29[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_2692C7640();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = sub_2692C7660();
  v11 = *(v32 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v32, v13);
  v15 = &v29[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v29[-v17];
  (*(v7 + 104))(v10, *MEMORY[0x277D617F8], v6);
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v1, qword_280303218);
  (*(v2 + 16))(v5, v19, v1);
  mach_absolute_time();
  sub_2692C7670();
  v20 = [v31 alarmsIncludingSleepAlarm_];
  v21 = v32;
  if (!v20 || (v22 = v20, (*(v11 + 16))(v15, v18, v32), v23 = (*(v11 + 80) + 16) & ~*(v11 + 80), v24 = swift_allocObject(), (*(v11 + 32))(v24 + v23, v15, v21), aBlock[4] = sub_2692B54DC, aBlock[5] = v24, aBlock[0] = MEMORY[0x277D85DD0], aBlock[1] = 1107296256, aBlock[2] = sub_2692B54D8, aBlock[3] = &block_descriptor_92, v25 = _Block_copy(aBlock), , v26 = [v22 addCompletionBlock_], _Block_release(v25), v22, !v26))
  {
    sub_26927CC94(0, &qword_2803032E8, 0x277CBEA60);
    v27 = MEMORY[0x26D635F60](MEMORY[0x277D84F90]);
    v26 = [objc_opt_self() futureWithResult_];
  }

  (*(v11 + 8))(v18, v21);
  return v26;
}

id sub_2692AC630(uint64_t a1)
{
  v29 = a1;
  v1 = sub_2692C77C0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2692C7640();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2692C7660();
  v11 = *(v30 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v30, v13);
  v15 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v18 = v28 - v17;
  (*(v7 + 104))(v10, *MEMORY[0x277D617F0], v6);
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v1, qword_280303218);
  (*(v2 + 16))(v5, v19, v1);
  mach_absolute_time();
  sub_2692C7670();
  v20 = [v28[1] addAlarm_];
  v21 = v30;
  if (!v20 || (v22 = v20, (*(v11 + 16))(v15, v18, v30), v23 = (*(v11 + 80) + 16) & ~*(v11 + 80), v24 = swift_allocObject(), (*(v11 + 32))(v24 + v23, v15, v21), aBlock[4] = sub_2692B5148, aBlock[5] = v24, aBlock[0] = MEMORY[0x277D85DD0], aBlock[1] = 1107296256, aBlock[2] = sub_2692B54D8, aBlock[3] = &block_descriptor_86, v25 = _Block_copy(aBlock), , v26 = [v22 addCompletionBlock_], _Block_release(v25), v22, !v26))
  {
    v26 = [objc_opt_self() futureWithNoResult];
  }

  (*(v11 + 8))(v18, v21);
  return v26;
}

id sub_2692AC9FC(uint64_t a1)
{
  v29 = a1;
  v1 = sub_2692C77C0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2692C7640();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2692C7660();
  v11 = *(v30 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v30, v13);
  v15 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v18 = v28 - v17;
  (*(v7 + 104))(v10, *MEMORY[0x277D61810], v6);
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v1, qword_280303218);
  (*(v2 + 16))(v5, v19, v1);
  mach_absolute_time();
  sub_2692C7670();
  v20 = [v28[1] updateAlarm_];
  v21 = v30;
  if (!v20 || (v22 = v20, (*(v11 + 16))(v15, v18, v30), v23 = (*(v11 + 80) + 16) & ~*(v11 + 80), v24 = swift_allocObject(), (*(v11 + 32))(v24 + v23, v15, v21), aBlock[4] = sub_2692B54DC, aBlock[5] = v24, aBlock[0] = MEMORY[0x277D85DD0], aBlock[1] = 1107296256, aBlock[2] = sub_2692B54D8, aBlock[3] = &block_descriptor_80, v25 = _Block_copy(aBlock), , v26 = [v22 addCompletionBlock_], _Block_release(v25), v22, !v26))
  {
    v26 = [objc_opt_self() futureWithNoResult];
  }

  (*(v11 + 8))(v18, v21);
  return v26;
}

id sub_2692ACDC8(uint64_t a1)
{
  v29 = a1;
  v1 = sub_2692C77C0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2692C7640();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2692C7660();
  v11 = *(v30 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v30, v13);
  v15 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v18 = v28 - v17;
  (*(v7 + 104))(v10, *MEMORY[0x277D61800], v6);
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v1, qword_280303218);
  (*(v2 + 16))(v5, v19, v1);
  mach_absolute_time();
  sub_2692C7670();
  v20 = [v28[1] removeAlarm_];
  v21 = v30;
  if (!v20 || (v22 = v20, (*(v11 + 16))(v15, v18, v30), v23 = (*(v11 + 80) + 16) & ~*(v11 + 80), v24 = swift_allocObject(), (*(v11 + 32))(v24 + v23, v15, v21), aBlock[4] = sub_2692B54DC, aBlock[5] = v24, aBlock[0] = MEMORY[0x277D85DD0], aBlock[1] = 1107296256, aBlock[2] = sub_2692B54D8, aBlock[3] = &block_descriptor_74, v25 = _Block_copy(aBlock), , v26 = [v22 addCompletionBlock_], _Block_release(v25), v22, !v26))
  {
    v26 = [objc_opt_self() futureWithNoResult];
  }

  (*(v11 + 8))(v18, v21);
  return v26;
}

id sub_2692AD194(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v29 = a1;
  v2 = sub_2692C77C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2692C7640();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2692C7660();
  v12 = *(v32 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v32, v14);
  v16 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v29 - v18;
  (*(v8 + 104))(v11, *MEMORY[0x277D61818], v7);
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v2, qword_280303218);
  (*(v3 + 16))(v6, v20, v2);
  mach_absolute_time();
  sub_2692C7670();
  v21 = sub_2692C7820();
  v22 = [v31 dismissAlarmWithIdentifier_];

  v23 = v32;
  if (!v22 || ((*(v12 + 16))(v16, v19, v32), v24 = (*(v12 + 80) + 16) & ~*(v12 + 80), v25 = swift_allocObject(), (*(v12 + 32))(v25 + v24, v16, v23), aBlock[4] = sub_2692B54DC, aBlock[5] = v25, aBlock[0] = MEMORY[0x277D85DD0], aBlock[1] = 1107296256, aBlock[2] = sub_2692B54D8, aBlock[3] = &block_descriptor_68, v26 = _Block_copy(aBlock), , v27 = [v22 addCompletionBlock_], _Block_release(v26), v22, !v27))
  {
    v27 = [objc_opt_self() futureWithNoResult];
  }

  (*(v12 + 8))(v19, v23);
  return v27;
}

id sub_2692AD578(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v29 = a1;
  v2 = sub_2692C77C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2692C7640();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2692C7660();
  v12 = *(v32 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v32, v14);
  v16 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v29 - v18;
  (*(v8 + 104))(v11, *MEMORY[0x277D61808], v7);
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v2, qword_280303218);
  (*(v3 + 16))(v6, v20, v2);
  mach_absolute_time();
  sub_2692C7670();
  v21 = sub_2692C7820();
  v22 = [v31 snoozeAlarmWithIdentifier_];

  v23 = v32;
  if (!v22 || ((*(v12 + 16))(v16, v19, v32), v24 = (*(v12 + 80) + 16) & ~*(v12 + 80), v25 = swift_allocObject(), (*(v12 + 32))(v25 + v24, v16, v23), aBlock[4] = sub_2692B54DC, aBlock[5] = v25, aBlock[0] = MEMORY[0x277D85DD0], aBlock[1] = 1107296256, aBlock[2] = sub_2692B54D8, aBlock[3] = &block_descriptor_62, v26 = _Block_copy(aBlock), , v27 = [v22 addCompletionBlock_], _Block_release(v26), v22, !v27))
  {
    v27 = [objc_opt_self() futureWithNoResult];
  }

  (*(v12 + 8))(v19, v23);
  return v27;
}

uint64_t sub_2692ADA34()
{
  v0 = sub_2692C77C0();
  __swift_allocate_value_buffer(v0, qword_280303218);
  v1 = __swift_project_value_buffer(v0, qword_280303218);
  if (qword_280302B48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280307B80);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2692ADAFC()
{
  result = sub_2692A84B8(&unk_2879E27F0);
  qword_280303230 = result;
  return result;
}

uint64_t sub_2692ADB24()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D296D8]) init];
  result = sub_26927CC94(0, &qword_280303290, 0x277D296D8);
  qword_280303250 = result;
  unk_280303258 = &off_2879E3DE0;
  qword_280303238 = v0;
  return result;
}

uint64_t type metadata accessor for SiriAlarmManagerImpl(uint64_t a1)
{
  result = qword_2803032A8;
  if (!qword_2803032A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2692ADBE8(unint64_t a1, void (*a2)(uint64_t *), void (*a3)(uint64_t *), unint64_t a4)
{
  LODWORD(v5) = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v22 - v11;
  v27 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2692C7C60())
  {
    v22 = v12;
    v23 = a3;
    v24 = v5;
    v25 = a2;
    v26 = v4;
    v14 = 0;
    v5 = a1 & 0xC000000000000001;
    a3 = (a1 & 0xFFFFFFFFFFFFFF8);
    v12 = &off_279C54000;
    while (1)
    {
      if (v5)
      {
        v15 = MEMORY[0x26D6360D0](v14, a1);
      }

      else
      {
        if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v15 = *(a1 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v18 = [v15 sleepAlarmAttribute];
      if (v18)
      {
        v4 = v18;
      }

      else
      {
        v4 = &v27;
        sub_2692C7BF0();
        a2 = *(v27 + 16);
        sub_2692C7C20();
        sub_2692C7C30();
        sub_2692C7C00();
      }

      ++v14;
      if (v17 == i)
      {
        v19 = v27;
        a2 = v25;
        LODWORD(v5) = v24;
        v12 = v22;
        a3 = v23;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_18:
  v20 = sub_2692C7310();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  sub_2692AED8C(v19, v5, 0, 0, v12, 0, 1, a2, a3);

  return sub_26927CEA8(v12, &qword_280302C48, &qword_2692C9780);
}

uint64_t sub_2692ADE2C(unint64_t a1, _UNKNOWN **a2, unint64_t a3, uint64_t a4, unint64_t a5, void *a6, void (*a7)(uint64_t *))
{
  v29 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_17:
    v13 = sub_2692C7C60();
    if (v13)
    {
LABEL_3:
      v23 = a2;
      v24 = a7;
      v25 = a3;
      v26 = a4;
      v14 = 0;
      a3 = a1 & 0xC000000000000001;
      a7 = (a1 & 0xFFFFFFFFFFFFFF8);
      a2 = &off_279C54000;
      do
      {
        if (a3)
        {
          v15 = MEMORY[0x26D6360D0](v14, a1);
        }

        else
        {
          if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v15 = *(a1 + 8 * v14 + 32);
        }

        a6 = v15;
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        v17 = [v15 sleepAlarmAttribute];
        if (v17)
        {
          v18 = v17;
        }

        else
        {
          sub_2692C7BF0();
          a4 = *(v29 + 16);
          sub_2692C7C20();
          sub_2692C7C30();
          sub_2692C7C00();
        }

        ++v14;
      }

      while (v16 != v13);
      v19 = v29;
      a6 = v27;
      a3 = v25;
      a4 = v26;
      a2 = v23;
      a7 = v24;
      v20 = a5;
      if (!a5)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_3;
    }
  }

  v19 = MEMORY[0x277D84F90];
  v20 = a5;
  if (a5)
  {
LABEL_14:
    v21 = sub_2692A86A0(v20);
    goto LABEL_20;
  }

LABEL_19:
  v21 = 0;
LABEL_20:
  sub_2692AED8C(v19, 5, a2, a3, a4, v21, v20 == 0, a6, a7);
}

uint64_t sub_2692AE014(unint64_t a1, void (*a2)(uint64_t *), void (*a3)(uint64_t *), uint64_t a4)
{
  v4 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v14 - v10;
  v12 = sub_2692C7310();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_2692AED8C(a1, v4, 0, 0, v11, 0, 1, a2, a3);
  return sub_26927CEA8(v11, &qword_280302C48, &qword_2692C9780);
}

void sub_2692AE130(void (*a1)(uint64_t *), uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_alarmManager;
  sub_269275A6C(v2 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_alarmManager, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280303288, &qword_2692CAB68);
  sub_26927CC94(0, &qword_280303290, 0x277D296D8);
  if (swift_dynamicCast())
  {
    v7 = v34;
    v8 = [v34 nextSleepAlarm];
    if (v8)
    {
      v9 = v8;
      v10 = swift_allocObject();
      *(v10 + 16) = a1;
      *(v10 + 24) = a2;
      v32 = sub_2692B4BAC;
      v33 = v10;
      aBlock = MEMORY[0x277D85DD0];
      v29 = 1107296256;
      v30 = sub_2692B54D4;
      v31 = &block_descriptor_0;
      v11 = _Block_copy(&aBlock);

      v12 = [v9 addSuccessBlock_];
      _Block_release(v11);

      v13 = swift_allocObject();
      *(v13 + 16) = a1;
      *(v13 + 24) = a2;
      v32 = sub_2692B4BCC;
      v33 = v13;
      aBlock = MEMORY[0x277D85DD0];
      v29 = 1107296256;
      v30 = sub_2692AE9F8;
      v31 = &block_descriptor_6_0;
      v14 = _Block_copy(&aBlock);

      v15 = [v9 addFailureBlock_];
      _Block_release(v14);
    }

    else
    {
      if (qword_280302B18 != -1)
      {
        swift_once();
      }

      v24 = sub_2692C77C0();
      __swift_project_value_buffer(v24, qword_280303218);
      v25 = sub_2692C77B0();
      v26 = sub_2692C79F0();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_269270000, v25, v26, "Failed to search sleepAlarm in MTAlarmManager.", v27, 2u);
        MEMORY[0x26D6368E0](v27, -1, -1);
      }

      aBlock = 8;
      LOBYTE(v29) = 1;
      a1(&aBlock);
    }
  }

  else
  {
    if (qword_280302B18 != -1)
    {
      swift_once();
    }

    v16 = sub_2692C77C0();
    __swift_project_value_buffer(v16, qword_280303218);

    v17 = sub_2692C77B0();
    v18 = sub_2692C79F0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34 = v20;
      *v19 = 136315138;
      sub_269275A6C(v3 + v6, &aBlock);
      __swift_project_boxed_opaque_existential_1(&aBlock, v31);
      swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
      v21 = sub_2692C7E50();
      v23 = sub_26927C4DC(v21, v22, &v34);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_269270000, v17, v18, "Failed to cast alarm manager of type %s to MTAlarmManager: unable to search upcoming sleep alarm.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x26D6368E0](v20, -1, -1);
      MEMORY[0x26D6368E0](v19, -1, -1);
    }

    aBlock = 8;
    LOBYTE(v29) = 1;
    a1(&aBlock);
  }
}

uint64_t sub_2692AE5C8(void *a1, void (*a2)(id *))
{
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v4 = sub_2692C77C0();
  __swift_project_value_buffer(v4, qword_280303218);
  v5 = sub_2692C77B0();
  v6 = sub_2692C7A00();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_269270000, v5, v6, "SleepAlarmFuture success block called.", v7, 2u);
    MEMORY[0x26D6368E0](v7, -1, -1);
  }

  v32[3] = sub_26927CC94(0, &qword_2803032C0, 0x277D296D0);
  v32[0] = a1;
  sub_269280858(v32, &v30);
  sub_26927CC94(0, &qword_2803032F0, 0x277CBEB68);
  v8 = a1;
  if (swift_dynamicCast())
  {

    v9 = sub_2692C77B0();
    v10 = sub_2692C79F0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_269270000, v9, v10, "searchUpcomingSleepAlarm got NSNull from sleepAlarmFuture.", v11, 2u);
LABEL_14:
      MEMORY[0x26D6368E0](v11, -1, -1);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  sub_269280858(v32, &v30);
  if (!swift_dynamicCast())
  {
    v22 = v8;
    v9 = sub_2692C77B0();
    v23 = sub_2692C79F0();

    if (os_log_type_enabled(v9, v23))
    {
      v11 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30 = v24;
      *v11 = 136315138;
      swift_getObjectType();
      v25 = sub_2692C7E50();
      v27 = sub_26927C4DC(v25, v26, &v30);

      *(v11 + 4) = v27;
      _os_log_impl(&dword_269270000, v9, v23, "Cannot cast item of type %s to MTAlarm in SleepAlarmFuture SuccessBlock.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x26D6368E0](v24, -1, -1);
      goto LABEL_14;
    }

LABEL_15:

    v30 = 0;
    v31 = 0;
    a2(&v30);
    return __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  v12 = v29;
  v13 = sub_2692C77B0();
  v14 = sub_2692C79D0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30 = v16;
    *v15 = 136315138;
    v17 = [v12 alarmIDString];
    v18 = sub_2692C7830();
    v20 = v19;

    v21 = sub_26927C4DC(v18, v20, &v30);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_269270000, v13, v14, "AlarmManager got upcoming sleep alarm : %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x26D6368E0](v16, -1, -1);
    MEMORY[0x26D6368E0](v15, -1, -1);
  }

  v30 = sub_2692B54E0();
  v31 = 0;
  a2(&v30);

  sub_269274440(v30, v31);
  return __swift_destroy_boxed_opaque_existential_1Tm(v32);
}

void sub_2692AEA00(void *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v6 = sub_2692BA26C();
  if (v6)
  {
    v14 = v6;
    sub_2692B1FE8(v6, a2, a3);
  }

  else
  {
    if (qword_280302B18 != -1)
    {
      swift_once();
    }

    v7 = sub_2692C77C0();
    __swift_project_value_buffer(v7, qword_280303218);
    v8 = a1;
    v9 = sub_2692C77B0();
    v10 = sub_2692C79F0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&dword_269270000, v9, v10, "Cannot build the alarm to create from intent: %@", v11, 0xCu);
      sub_26927CEA8(v12, &qword_280302D50, &qword_2692CAB70);
      MEMORY[0x26D6368E0](v12, -1, -1);
      MEMORY[0x26D6368E0](v11, -1, -1);
    }

    v15 = 1;
    v16 = 1;
    a2(&v15);
  }
}

void sub_2692AEC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = sub_2692A16A0();
  v12 = sub_2692C7390();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v15[4] = a4;
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_2692A1B80;
  v15[3] = a5;
  v14 = _Block_copy(v15);

  [v11 setUpcomingWakeUpAlarmEnabled:a6 & 1 date:v12 completion:v14];
  _Block_release(v14);
}

uint64_t sub_2692AED8C(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void (*a8)(uint64_t *), void (*a9)(uint64_t *))
{
  v69 = a8;
  v66 = a7;
  v64 = a6;
  v65 = a3;
  v62 = a5;
  v67 = a4;
  v70 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v60 = *(v10 - 8);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v63 = &v59 - v12;
  if (a1 >> 62)
  {
LABEL_42:
    v13 = sub_2692C7C60();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = a1 & 0xC000000000000001;
  v15 = MEMORY[0x277D84F90];
  if (v13)
  {
    v16 = 0;
    while (2)
    {
      v17 = v16;
      while (1)
      {
        if (v14)
        {
          v18 = MEMORY[0x26D6360D0](v17, a1);
          v16 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (v17 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v18 = *(a1 + 8 * v17 + 32);
          v16 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }
        }

        v19 = v18;
        v20 = [v19 identifier];
        if (v20)
        {
          break;
        }

        ++v17;
        if (v16 == v13)
        {
          goto LABEL_20;
        }
      }

      v21 = v20;
      v22 = sub_2692C7830();
      v59 = v23;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_26928A5E0(0, *(v15 + 2) + 1, 1, v15);
      }

      v25 = *(v15 + 2);
      v24 = *(v15 + 3);
      if (v25 >= v24 >> 1)
      {
        v15 = sub_26928A5E0((v24 > 1), v25 + 1, 1, v15);
      }

      *(v15 + 2) = v25 + 1;
      v26 = &v15[16 * v25];
      v27 = v59;
      *(v26 + 4) = v22;
      *(v26 + 5) = v27;
      if (v16 != v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:
  v28 = 0;
  v29 = a9;
  while (1)
  {
    v30 = v28;
    if (v13 == v28)
    {
      break;
    }

    if (v14)
    {
      v31 = MEMORY[0x26D6360D0](v28, a1);
    }

    else
    {
      if (v28 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v31 = *(a1 + 8 * v28 + 32);
    }

    v32 = v31;
    if (__OFADD__(v30, 1))
    {
      goto LABEL_40;
    }

    v33 = [v31 sleepAlarmAttribute];

    v28 = v30 + 1;
    if (v33)
    {

      break;
    }
  }

  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v34 = sub_2692C77C0();
  __swift_project_value_buffer(v34, qword_280303218);

  v35 = sub_2692C77B0();
  v36 = sub_2692C7A00();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v59 = a9;
    v39 = v38;
    v72 = v38;
    *v37 = 136315394;
    v71 = v70;
    v40 = sub_2692C7840();
    v42 = sub_26927C4DC(v40, v41, &v72);

    *(v37 + 4) = v42;
    *(v37 + 12) = 2080;
    v43 = MEMORY[0x26D635E70](v15, MEMORY[0x277D837D0]);
    v45 = sub_26927C4DC(v43, v44, &v72);

    *(v37 + 14) = v45;
    _os_log_impl(&dword_269270000, v35, v36, "SiriAlarmManager: executing %s alarms: alarmIds = %s", v37, 0x16u);
    swift_arrayDestroy();
    v46 = v39;
    v29 = v59;
    MEMORY[0x26D6368E0](v46, -1, -1);
    MEMORY[0x26D6368E0](v37, -1, -1);
  }

  if (*(v15 + 2))
  {
    v47 = v13 != v30;
    v48 = v63;
    sub_26927CE40(v62, v63, &qword_280302C48, &qword_2692C9780);
    v49 = (*(v60 + 80) + 72) & ~*(v60 + 80);
    v50 = (v61 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = swift_allocObject();
    *(v51 + 16) = v15;
    *(v51 + 24) = v70;
    v52 = v67;
    v53 = v64;
    *(v51 + 32) = v68;
    *(v51 + 40) = v53;
    *(v51 + 48) = v66 & 1;
    *(v51 + 56) = v65;
    *(v51 + 64) = v52;
    sub_269280640(v48, v51 + v49);
    v54 = (v51 + v50);
    *v54 = v69;
    v54[1] = v29;

    sub_2692B274C(v47, sub_2692B5250, v51);
  }

  else
  {

    v56 = sub_2692C77B0();
    v57 = sub_2692C7A00();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_269270000, v56, v57, "Should have a sleep alarm already been handled, do nothing in this method.", v58, 2u);
      MEMORY[0x26D6368E0](v58, -1, -1);
    }

    v72 = MEMORY[0x277D84F90];
    v73 = 0;
    v69(&v72);
    return sub_2692743E4(v72, v73);
  }
}

void sub_2692AF348(uint64_t a1, void *a2, unsigned int a3, uint64_t a4, void *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t *), uint64_t a11)
{
  v184 = a8;
  v183 = a7;
  v182 = a6;
  v190 = a4;
  v191 = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v18 = &v167 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v181 = &v167 - v20;
  v21 = sub_2692C7420();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v180 = &v167 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803032B8, "$8");
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v29 = &v167 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v167 - v31;
  if (*(a1 + 8))
  {
    if (qword_280302B18 != -1)
    {
      swift_once();
    }

    v33 = sub_2692C77C0();
    __swift_project_value_buffer(v33, qword_280303218);
    v34 = sub_2692C77B0();
    v35 = sub_2692C79F0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_269270000, v34, v35, "SiriAlarmManagerImpl.operateAlarmByIds() searchFailed", v36, 2u);
      MEMORY[0x26D6368E0](v36, -1, -1);
    }

    aBlock = 8;
    LOBYTE(v196) = 1;
    a10(&aBlock);
    return;
  }

  v186 = a2;
  v189 = v22;
  v173 = v21;
  v179 = v18;
  v37 = *a1;
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v171 = sub_2692C77C0();
  v38 = __swift_project_value_buffer(v171, qword_280303218);

  v187 = v38;
  v39 = sub_2692C77B0();
  v40 = sub_2692C7A00();
  sub_2692743E4(v37, 0);
  v41 = os_log_type_enabled(v39, v40);
  v188 = v37;
  v176 = a11;
  v175 = a10;
  v170 = v32;
  v174 = a5;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    aBlock = v43;
    *v42 = 136315138;
    v44 = sub_26927CC94(0, &qword_2803032C0, 0x277D296D0);
    v45 = MEMORY[0x26D635E70](v37, v44);
    v47 = sub_26927C4DC(v45, v46, &aBlock);

    *(v42 + 4) = v47;
    _os_log_impl(&dword_269270000, v39, v40, "operateAlarmByIds(): alarmSearch success with alarms %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x26D6368E0](v43, -1, -1);
    MEMORY[0x26D6368E0](v42, -1, -1);
  }

  v49 = MEMORY[0x277D84F90];
  v201 = MEMORY[0x277D84F90];
  v202 = MEMORY[0x277D84F90];
  v50 = v186[2];
  if (!v50)
  {
LABEL_80:
    v131 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280303300, &qword_2692CADF8);
    v132 = sub_2692C7910();

    v133 = [v131 combineAllFutures:v132 ignoringErrors:0 scheduler:{objc_msgSend(objc_opt_self(), sel_globalAsyncScheduler)}];

    swift_unknownObjectRelease();
    v134 = v133;
    v135 = sub_2692C77B0();
    v136 = sub_2692C7A00();

    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      *v137 = 138412290;
      *(v137 + 4) = v134;
      *v138 = v134;
      v139 = v134;
      _os_log_impl(&dword_269270000, v135, v136, "CombinedFutures created: %@", v137, 0xCu);
      sub_26927CEA8(v138, &qword_280302D50, &qword_2692CAB70);
      MEMORY[0x26D6368E0](v138, -1, -1);
      MEMORY[0x26D6368E0](v137, -1, -1);
    }

    v140 = swift_allocObject();
    v141 = v175;
    v140[2] = v49;
    v140[3] = v141;
    v142 = v176;
    v140[4] = v176;
    v199 = sub_2692B5354;
    v200 = v140;
    aBlock = MEMORY[0x277D85DD0];
    v196 = 1107296256;
    v197 = sub_2692B54D4;
    v198 = &block_descriptor_116;
    v143 = _Block_copy(&aBlock);

    v144 = [v134 addSuccessBlock_];
    _Block_release(v143);

    v145 = swift_allocObject();
    *(v145 + 16) = v141;
    *(v145 + 24) = v142;
    v199 = sub_2692B5360;
    v200 = v145;
    aBlock = MEMORY[0x277D85DD0];
    v196 = 1107296256;
    v197 = sub_2692AE9F8;
    v198 = &block_descriptor_122;
    v146 = _Block_copy(&aBlock);

    v147 = [v134 addFailureBlock_];
    _Block_release(v146);

    return;
  }

  v167 = v29;
  v172 = (v189 + 8);
  v51 = v186 + 5;
  v185 = a9;
  v189 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_alarmManager;
  *&v48 = 138412290;
  v178 = v48;
  *&v48 = 136315138;
  v177 = v48;
  v52 = v188;
  while (1)
  {
    v54 = *(v51 - 1);
    v53 = *v51;
    if (v191 == 4)
    {
      sub_269275A6C(v190 + v189, &aBlock);
      v57 = v199;
      __swift_project_boxed_opaque_existential_1(&aBlock, v198);

      v58 = sub_2692C7880();
      v57[6](v58);
      goto LABEL_19;
    }

    if (v191 == 3)
    {
      sub_269275A6C(v190 + v189, &aBlock);
      v55 = v199;
      __swift_project_boxed_opaque_existential_1(&aBlock, v198);

      v56 = sub_2692C7880();
      v55[5](v56);
LABEL_19:

      MEMORY[0x26D635E30](v59);
      if (*((v202 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v202 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2692C7950();
      }

      sub_2692C7960();
      __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
      v52 = v188;
      goto LABEL_25;
    }

    v60 = sub_2692C77B0();
    v61 = sub_2692C79E0();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_269270000, v60, v61, "Not a dismiss or snooze alarm request", v62, 2u);
      MEMORY[0x26D6368E0](v62, -1, -1);
    }

LABEL_25:
    v63 = sub_26928E9E4(v54, v53, v52);
    if (v63)
    {
      break;
    }

LABEL_14:
    v51 += 2;
    if (!--v50)
    {
      goto LABEL_80;
    }
  }

  v64 = v63;
  if ([v63 isSleepAlarm])
  {
    if (qword_280302B20 != -1)
    {
      swift_once();
    }

    if (!sub_2692B0AF4(v191, qword_280303230))
    {

      v75 = v64;
      v76 = sub_2692C77B0();
      v77 = sub_2692C79F0();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *v78 = v178;
        *(v78 + 4) = v75;
        *v79 = v64;
        v80 = v75;
        _os_log_impl(&dword_269270000, v76, v77, "Skipping operation for sleep alarm %@", v78, 0xCu);
        sub_26927CEA8(v79, &qword_280302D50, &qword_2692CAB70);
        v81 = v79;
        v52 = v188;
        MEMORY[0x26D6368E0](v81, -1, -1);
        MEMORY[0x26D6368E0](v78, -1, -1);
      }

      else
      {
      }

      goto LABEL_14;
    }
  }

  [v64 mutableCopy];
  sub_2692C7AD0();
  swift_unknownObjectRelease();
  sub_26927CE40(v194, &aBlock, &qword_280302CD0, &unk_2692CAE00);
  if (v198)
  {
    sub_26927CC94(0, &qword_280303308, 0x277D296F0);
    if (!swift_dynamicCast())
    {
      goto LABEL_84;
    }

    v65 = v192;
    if (v191 <= 1u)
    {
      if (v191)
      {
        if (v191 == 1)
        {
          if ([v192 isEnabled])
          {
            [v65 setEnabled_];
            goto LABEL_72;
          }

          v186 = v65;
          v101 = v65;
          v86 = sub_2692C77B0();
          v102 = sub_2692C79E0();

          if (os_log_type_enabled(v86, v102))
          {
            v88 = swift_slowAlloc();
            v169 = swift_slowAlloc();
            aBlock = v169;
            *v88 = v177;
            v103 = [v101 alarmID];
            v168 = v102;
            v104 = v180;
            sub_2692C7410();

            sub_2692B538C();
            v105 = v173;
            v106 = sub_2692C7D30();
            v108 = v107;
            (*v172)(v104, v105);
            v109 = sub_26927C4DC(v106, v108, &aBlock);

            *(v88 + 4) = v109;
            v96 = v168;
            v97 = v86;
            v98 = "Alarm %s already in disabled state – skipping update";
LABEL_54:
            _os_log_impl(&dword_269270000, v97, v96, v98, v88, 0xCu);
            v110 = v169;
            __swift_destroy_boxed_opaque_existential_1Tm(v169);
            MEMORY[0x26D6368E0](v110, -1, -1);
            v111 = v88;
            v52 = v188;
            MEMORY[0x26D6368E0](v111, -1, -1);
          }

          goto LABEL_55;
        }

LABEL_44:
        v82 = sub_2692C77B0();
        v83 = sub_2692C7A00();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          *v84 = 0;
          _os_log_impl(&dword_269270000, v82, v83, "Request is dismiss/snooze, handled at the beginning of the forLoop", v84, 2u);
          MEMORY[0x26D6368E0](v84, -1, -1);
        }

LABEL_76:
        v130 = v65;
        MEMORY[0x26D635E30]();
        if (*((v201 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v201 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2692C7950();
        }

        sub_2692C7960();

        sub_26927CEA8(v194, &qword_280302CD0, &unk_2692CAE00);
        v49 = v201;
        goto LABEL_14;
      }

      if ([v192 isEnabled])
      {
        v186 = v65;
        v85 = v65;
        v86 = sub_2692C77B0();
        v87 = sub_2692C79E0();

        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v169 = swift_slowAlloc();
          aBlock = v169;
          *v88 = v177;
          v89 = [v85 alarmID];
          v168 = v87;
          v90 = v180;
          sub_2692C7410();

          sub_2692B538C();
          v91 = v173;
          v92 = sub_2692C7D30();
          v94 = v93;
          (*v172)(v90, v91);
          v95 = sub_26927C4DC(v92, v94, &aBlock);

          *(v88 + 4) = v95;
          v96 = v168;
          v97 = v86;
          v98 = "Alarm %s already in enabled state – skipping update";
          goto LABEL_54;
        }

LABEL_55:

        v65 = v186;
        goto LABEL_76;
      }

      [v65 setEnabled_];
LABEL_72:
      sub_269275A6C(v190 + v189, &aBlock);
      v128 = v198;
      v129 = v199;
      __swift_project_boxed_opaque_existential_1(&aBlock, v198);
      (v129[3])(v65, v128, v129);
LABEL_73:
      MEMORY[0x26D635E30]();
      if (*((v202 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v202 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2692C7950();
      }

      sub_2692C7960();
      __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
      goto LABEL_76;
    }

    if (v191 == 2)
    {
      sub_269275A6C(v190 + v189, &aBlock);
      v99 = v198;
      v100 = v199;
      __swift_project_boxed_opaque_existential_1(&aBlock, v198);
      v100[4](v64, v99, v100);
      goto LABEL_73;
    }

    if (v191 != 5)
    {
      goto LABEL_44;
    }

    if ((v182 & 1) == 0)
    {
      v66 = sub_2692C77B0();
      v67 = sub_2692C7A00();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v186 = swift_slowAlloc();
        aBlock = v186;
        *v68 = v177;
        v69 = v174;
        v192 = v174;
        type metadata accessor for MTAlarmRepeatSchedule();
        v70 = sub_2692C7840();
        v72 = v65;
        v73 = sub_26927C4DC(v70, v71, &aBlock);

        *(v68 + 4) = v73;
        v65 = v72;
        _os_log_impl(&dword_269270000, v66, v67, "Updating alarm repeatSchedule to %s", v68, 0xCu);
        v74 = v186;
        __swift_destroy_boxed_opaque_existential_1Tm(v186);
        MEMORY[0x26D6368E0](v74, -1, -1);
        MEMORY[0x26D6368E0](v68, -1, -1);
      }

      else
      {

        v69 = v174;
      }

      [v65 setRepeatSchedule_];
    }

    if (v184)
    {
LABEL_62:

      v114 = sub_2692C7820();
    }

    else
    {
      v112 = [v64 title];
      if (v112)
      {
        v113 = v112;
        sub_2692C7830();

        goto LABEL_62;
      }

      v114 = 0;
    }

    v186 = v65;
    [v65 setTitle_];

    v115 = v181;
    sub_26927CE40(v185, v181, &qword_280302C48, &qword_2692C9780);
    v116 = sub_2692C7310();
    v117 = *(v116 - 8);
    v118 = *(v117 + 48);
    if (v118(v115, 1, v116) == 1)
    {
      sub_26927CEA8(v115, &qword_280302C48, &qword_2692C9780);
      goto LABEL_66;
    }

    v119 = v115;
    v120 = sub_2692C7290();
    v122 = v121;
    (*(v117 + 8))(v119, v116);
    if (v122)
    {
LABEL_66:
      v120 = [v64 hour];
    }

    [v186 setHour_];
    v123 = v179;
    sub_26927CE40(v185, v179, &qword_280302C48, &qword_2692C9780);
    if (v118(v123, 1, v116) == 1)
    {
      sub_26927CEA8(v123, &qword_280302C48, &qword_2692C9780);
      v52 = v188;
      goto LABEL_70;
    }

    v124 = v123;
    v125 = sub_2692C72B0();
    v127 = v126;
    (*(v117 + 8))(v124, v116);
    v52 = v188;
    if (v127)
    {
LABEL_70:
      v125 = [v64 minute];
    }

    v65 = v186;
    [v186 setMinute_];
    goto LABEL_72;
  }

  sub_26927CEA8(&aBlock, &qword_280302CD0, &unk_2692CAE00);
LABEL_84:
  v148 = sub_2692C7760();
  v198 = v148;
  v199 = MEMORY[0x277D61908];
  v149 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
  v150 = *MEMORY[0x277D61888];
  v151 = sub_2692C7710();
  (*(*(v151 - 8) + 104))(v149, v150, v151);
  (*(*(v148 - 1) + 104))(v149, *MEMORY[0x277D618D8], v148);
  sub_2692C76B0();
  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  aBlock = 0;
  v196 = 0xE000000000000000;
  sub_2692C7B80();
  v192 = aBlock;
  v193 = v196;
  MEMORY[0x26D635DF0](0xD000000000000046, 0x80000002692CD6D0);
  sub_26927CE40(v194, &aBlock, &qword_280302CD0, &unk_2692CAE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CD0, &unk_2692CAE00);
  v152 = sub_2692C7840();
  MEMORY[0x26D635DF0](v152);

  v153 = v192;
  v154 = v193;
  v155 = v171;
  v156 = *(v171 - 8);
  v157 = v170;
  (*(v156 + 16))(v170, v187, v171);
  (*(v156 + 56))(v157, 0, 1, v155);
  v158 = v157;
  v159 = v167;
  sub_26927CE40(v158, v167, &qword_2803032B8, "$8");
  LODWORD(v159) = (*(v156 + 48))(v159, 1, v155);

  if (v159 == 1)
  {
    sub_26927CEA8(v167, &qword_2803032B8, "$8");
  }

  else
  {

    v160 = sub_2692C77B0();
    v161 = sub_2692C79F0();

    if (os_log_type_enabled(v160, v161))
    {
      v162 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      aBlock = v163;
      *v162 = 136315650;
      v164 = sub_2692C7B90();
      v166 = sub_26927C4DC(v164, v165, &aBlock);

      *(v162 + 4) = v166;
      *(v162 + 12) = 2048;
      *(v162 + 14) = 450;
      *(v162 + 22) = 2080;
      *(v162 + 24) = sub_26927C4DC(v153, v154, &aBlock);
      _os_log_impl(&dword_269270000, v160, v161, "FatalError at %s:%lu - %s", v162, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D6368E0](v163, -1, -1);
      MEMORY[0x26D6368E0](v162, -1, -1);
    }

    (*(v156 + 8))(v167, v171);
  }

  sub_2692C7570();
  sub_2692C7C40();
  __break(1u);
}

BOOL sub_2692B0AF4(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_2692C7DE0();
  MEMORY[0x26D636320](v3);
  v4 = sub_2692C7E00();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

void *sub_2692B0BC0(uint64_t a1, unint64_t a2, void (*a3)(void))
{
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v6 = sub_2692C77C0();
  v7 = __swift_project_value_buffer(v6, qword_280303218);
  v8 = sub_2692C77B0();
  v9 = sub_2692C7A00();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_269270000, v8, v9, "CombinedFutures success block called", v10, 2u);
    MEMORY[0x26D6368E0](v10, -1, -1);
  }

  if (a2 >> 62)
  {
    v11 = sub_2692C7C60();
  }

  else
  {
    v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v41 = MEMORY[0x277D84F90];
    sub_2692C7C10();
    if (v11 < 0)
    {
      __break(1u);
LABEL_38:
      v16 = sub_2692C7C60();
      goto LABEL_18;
    }

    v13 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x26D6360D0](v13, a2);
      }

      else
      {
        v14 = *(a2 + 8 * v13 + 32);
      }

      v15 = v14;
      ++v13;
      sub_2692B54E0();

      sub_2692C7BF0();
      sub_2692C7C20();
      sub_2692C7C30();
      sub_2692C7C00();
    }

    while (v11 != v13);
    v12 = v41;
  }

  a2 = sub_2692C77B0();
  v7 = sub_2692C7A00();

  if (!os_log_type_enabled(a2, v7))
  {

    goto LABEL_33;
  }

  v11 = swift_slowAlloc();
  v3 = swift_slowAlloc();
  v41 = v3;
  *v11 = 136315138;
  if (v12 >> 62)
  {
    goto LABEL_38;
  }

  v16 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_18:
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v40 = MEMORY[0x277D84F90];
    result = sub_2692A0A8C(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      __break(1u);
      return result;
    }

    v37 = v3;
    v38 = v7;
    v39 = a3;
    v19 = 0;
    v17 = v40;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x26D6360D0](v19, v12);
      }

      else
      {
        v20 = *(v12 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = [v20 identifier];
      if (v22)
      {
        v23 = v22;
        v24 = sub_2692C7830();
        v26 = v25;
      }

      else
      {

        v24 = 0;
        v26 = 0;
      }

      v28 = *(v40 + 16);
      v27 = *(v40 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_2692A0A8C((v27 > 1), v28 + 1, 1);
      }

      ++v19;
      *(v40 + 16) = v28 + 1;
      v29 = v40 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
    }

    while (v16 != v19);
    a3 = v39;
    v7 = v38;
    v3 = v37;
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C28, &unk_2692C9690);
  v31 = MEMORY[0x26D635E70](v17, v30);
  v33 = v32;

  v34 = sub_26927C4DC(v31, v33, &v41);

  *(v11 + 4) = v34;
  _os_log_impl(&dword_269270000, a2, v7, "Alarms operated successfully. allAlarms = %s", v11, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  MEMORY[0x26D6368E0](v3, -1, -1);
  MEMORY[0x26D6368E0](v11, -1, -1);

LABEL_33:
  v41 = v12;
  v42 = 0;
  a3(&v41);
  v35 = v41;
  v36 = v42;

  return sub_2692743E4(v35, v36);
}

uint64_t sub_2692B1004(void *a1, uint64_t (*a2)(void), uint64_t a3, const char *a4, void *a5, char a6)
{
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v11 = sub_2692C77C0();
  __swift_project_value_buffer(v11, qword_280303218);
  v12 = a1;
  v13 = sub_2692C77B0();
  v14 = sub_2692C79F0();

  if (os_log_type_enabled(v13, v14))
  {
    v28 = a5;
    v15 = a2;
    v16 = swift_slowAlloc();
    v17 = a4;
    v18 = swift_slowAlloc();
    v29 = v18;
    *v16 = 136315138;
    swift_getErrorValue();
    v19 = sub_2692C7D90();
    v21 = sub_26927C4DC(v19, v20, &v29);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_269270000, v13, v14, v17, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x26D6368E0](v18, -1, -1);
    v22 = v16;
    a2 = v15;
    a5 = v28;
    MEMORY[0x26D6368E0](v22, -1, -1);
  }

  v23 = sub_2692C7760();
  v31 = v23;
  v32 = MEMORY[0x277D61908];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
  *boxed_opaque_existential_1 = sub_2692C7320();
  v25 = *MEMORY[0x277D61838];
  v26 = sub_2692C76A0();
  (*(*(v26 - 8) + 104))(boxed_opaque_existential_1, v25, v26);
  (*(*(v23 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618E0], v23);
  sub_2692C76B0();
  __swift_destroy_boxed_opaque_existential_1Tm(&v29);
  v29 = a5;
  v30 = a6 & 1;
  return a2(&v29);
}

uint64_t sub_2692B1290(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v8 = sub_2692C77C0();
  __swift_project_value_buffer(v8, qword_280303218);
  v9 = a1;
  v10 = sub_2692C77B0();
  v11 = sub_2692C7A00();

  if (os_log_type_enabled(v10, v11))
  {
    v22 = a2;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    v14 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803032F8, &qword_2692CADF0);
    v15 = sub_2692C7840();
    v17 = sub_26927C4DC(v15, v16, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_269270000, v10, v11, "SiriAlarmManager: Searching alarm with alarmSearch: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x26D6368E0](v13, -1, -1);
    v18 = v12;
    a2 = v22;
    MEMORY[0x26D6368E0](v18, -1, -1);
  }

  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a1;
  v19[5] = v4;
  v20 = v9;

  sub_2692B274C(1, sub_2692B5244, v19);
}

uint64_t sub_2692B1480(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, void *a4, void *a5)
{
  v10 = sub_2692C77A0();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8))
  {
    if (qword_280302B18 != -1)
    {
LABEL_88:
      swift_once();
    }

    v16 = sub_2692C77C0();
    __swift_project_value_buffer(v16, qword_280303218);
    v17 = sub_2692C77B0();
    v18 = sub_2692C7A00();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_269270000, v17, v18, "Alarm search: .searchFailed", v19, 2u);
      MEMORY[0x26D6368E0](v19, -1, -1);
    }

    v20 = 8;
    goto LABEL_91;
  }

  v21 = *a1;
  v22 = (*a1 >> 62);
  if (v22)
  {
    v83 = v13;
    v23 = sub_2692C7C60();
    v13 = v83;
    if (v23)
    {
      goto LABEL_8;
    }

LABEL_90:
    v20 = 12;
LABEL_91:
    v93 = v20;
    v94 = 1;
    return a2(&v93);
  }

  v23 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
    goto LABEL_90;
  }

LABEL_8:
  v86 = v22;
  v91 = a3;
  v89 = v13;
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v24 = sub_2692C77C0();
  v25 = __swift_project_value_buffer(v24, qword_280303218);

  v92 = v25;
  v26 = sub_2692C77B0();
  v27 = sub_2692C7A00();
  sub_2692743E4(v21, 0);
  v28 = os_log_type_enabled(v26, v27);
  v87 = v15;
  v88 = a5;
  v90 = v11;
  if (v28)
  {
    v29 = swift_slowAlloc();
    a5 = swift_slowAlloc();
    v93 = a5;
    *v29 = 136315138;
    v30 = sub_26927CC94(0, &qword_2803032C0, 0x277D296D0);
    v31 = MEMORY[0x26D635E70](v21, v30);
    v15 = a2;
    v33 = sub_26927C4DC(v31, v32, &v93);

    *(v29 + 4) = v33;
    a2 = v15;
    _os_log_impl(&dword_269270000, v26, v27, "Alarm search succeed with results: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(a5);
    MEMORY[0x26D6368E0](a5, -1, -1);
    MEMORY[0x26D6368E0](v29, -1, -1);
  }

  if (a4)
  {
    v15 = a4;
    v34 = sub_2692C77B0();
    v35 = sub_2692C7A00();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      *(v36 + 4) = v15;
      *v37 = a4;
      v38 = v15;
      _os_log_impl(&dword_269270000, v34, v35, "Filtering search results based on alarmSearch: %@", v36, 0xCu);
      sub_26927CEA8(v37, &qword_280302D50, &qword_2692CAB70);
      MEMORY[0x26D6368E0](v37, -1, -1);
      MEMORY[0x26D6368E0](v36, -1, -1);
    }

    v39 = [v15 alarmReferenceType];
    v40 = sub_2692C77B0();
    v41 = sub_2692C7A00();
    v42 = os_log_type_enabled(v40, v41);
    v85 = a2;
    if (v39 == 2)
    {
      v92 = v15;
      if (v42)
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_269270000, v40, v41, "Searching for .next alarm", v43, 2u);
        MEMORY[0x26D6368E0](v43, -1, -1);
      }

      v44 = 0;
      v93 = MEMORY[0x277D84F90];
      a2 = &off_279C54000;
      do
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v45 = MEMORY[0x26D6360D0](v44, v21);
        }

        else
        {
          if (v44 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_86;
          }

          v45 = *(v21 + 8 * v44 + 32);
        }

        v46 = v45;
        v47 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          __break(1u);
          goto LABEL_85;
        }

        if ([v45 isEnabled])
        {
          sub_2692C7BF0();
          sub_2692C7C20();
          sub_2692C7C30();
          sub_2692C7C00();
        }

        else
        {
        }

        ++v44;
      }

      while (v47 != v23);
      v59 = v93;
      if (v93 < 0 || (v93 & 0x4000000000000000) != 0)
      {
        v60 = sub_2692C7C60();
      }

      else
      {
        v60 = *(v93 + 16);
      }

      v61 = v85;
      v62 = v92;
      v63 = v88;
      if (v60)
      {
        v64 = v59;
      }

      else
      {
        v64 = v21;
      }

      sub_26928EF70(&v63[OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_now], &v63[OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_calendar], v64);
      if (v65)
      {
        v66 = v65;
        v67 = sub_2692B54E0();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
        v68 = swift_allocObject();
        *(v68 + 16) = xmmword_2692C9430;
        v69 = v67;

        *(v68 + 32) = v69;
      }

      else
      {

        v69 = 0;
        v68 = MEMORY[0x277D84F90];
      }

      v93 = v68;
      v94 = 0;
      (v61)(&v93);
    }

    else
    {
      if (v42)
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_269270000, v40, v41, "Filtering alarms based on alarm search", v52, 2u);
        MEMORY[0x26D6368E0](v52, -1, -1);
      }

      sub_2692C7A20();
      v53 = v87;
      a5 = *&v88[OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_osLogObject];
      sub_2692C7790();
      v88 = a5;
      sub_2692C7780();
      v54 = *(v90 + 8);
      v90 += 8;
      v86 = v54;
      v54(v53, v89);
      v55 = 0;
      v93 = MEMORY[0x277D84F90];
      a2 = (v21 & 0xFFFFFFFFFFFFFF8);
      do
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v56 = MEMORY[0x26D6360D0](v55, v21);
        }

        else
        {
          if (v55 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_87;
          }

          v56 = *(v21 + 8 * v55 + 32);
        }

        v57 = v56;
        v58 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        if (sub_2692B5AD8(v15))
        {
          sub_2692C7BF0();
          a5 = *(v93 + 16);
          sub_2692C7C20();
          sub_2692C7C30();
          sub_2692C7C00();
        }

        else
        {
        }

        ++v55;
      }

      while (v58 != v23);
      v21 = v93;
      sub_2692C7A10();
      v70 = v87;
      sub_2692C7790();
      sub_2692C7780();
      v86(v70, v89);

      v71 = sub_2692C77B0();
      v49 = sub_2692C7A00();
      if (!os_log_type_enabled(v71, v49))
      {

        v72 = v85;
        goto LABEL_58;
      }

      a5 = swift_slowAlloc();
      *a5 = 134217984;
      v72 = v85;
      if (v21 < 0 || (v21 & 0x4000000000000000) != 0)
      {
        goto LABEL_99;
      }

      for (i = *(v21 + 16); ; i = sub_2692C7C60())
      {
        *(a5 + 4) = i;

        _os_log_impl(&dword_269270000, v71, v49, "matchedAlarms.size = %ld", a5, 0xCu);
        MEMORY[0x26D6368E0](a5, -1, -1);

LABEL_58:
        if (v21 < 0 || (v21 & 0x4000000000000000) != 0)
        {
          v74 = sub_2692C7C60();
          if (!v74)
          {
LABEL_94:

            v78 = MEMORY[0x277D84F90];
            goto LABEL_95;
          }
        }

        else
        {
          v74 = *(v21 + 16);
          if (!v74)
          {
            goto LABEL_94;
          }
        }

        v93 = MEMORY[0x277D84F90];
        v71 = &v93;
        sub_2692C7C10();
        if ((v74 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_98:
        __break(1u);
LABEL_99:
        ;
      }

      v75 = 0;
      do
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v76 = MEMORY[0x26D6360D0](v75, v21);
        }

        else
        {
          v76 = *(v21 + 8 * v75 + 32);
        }

        v77 = v76;
        ++v75;
        sub_2692B54E0();

        sub_2692C7BF0();
        sub_2692C7C20();
        sub_2692C7C30();
        sub_2692C7C00();
      }

      while (v74 != v75);

      v78 = v93;
LABEL_95:
      v93 = v78;
      v94 = 0;
      (v72)(&v93);
    }
  }

  else
  {

    v48 = sub_2692C77B0();
    v49 = sub_2692C7A00();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 134217984;
      if (v86)
      {
        v51 = sub_2692C7C60();
      }

      else
      {
        v51 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v50 + 4) = v51;
      sub_2692743E4(v21, 0);
      _os_log_impl(&dword_269270000, v48, v49, "No alarmSearch specified — bubbling %ld alarms up to completion", v50, 0xCu);
      MEMORY[0x26D6368E0](v50, -1, -1);
    }

    else
    {
      sub_2692743E4(v21, 0);
    }

    if (v86)
    {
      v72 = sub_2692C7C60();
    }

    else
    {
      v72 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v79 = MEMORY[0x277D84F90];
    if (v72)
    {
      v93 = MEMORY[0x277D84F90];
      v71 = &v93;
      sub_2692C7C10();
      if (v72 < 0)
      {
        __break(1u);
        goto LABEL_98;
      }

      v80 = 0;
      do
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v81 = MEMORY[0x26D6360D0](v80, v21);
        }

        else
        {
          v81 = *(v21 + 8 * v80 + 32);
        }

        v82 = v81;
        ++v80;
        sub_2692B54E0();

        sub_2692C7BF0();
        sub_2692C7C20();
        sub_2692C7C30();
        sub_2692C7C00();
      }

      while (v72 != v80);
      v79 = v93;
    }

    v93 = v79;
    v94 = 0;
    a2(&v93);
  }

  return sub_2692743E4(v93, v94);
}

void sub_2692B1FE8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v8 = sub_2692C77C0();
  __swift_project_value_buffer(v8, qword_280303218);
  v9 = a1;
  v10 = sub_2692C77B0();
  v11 = sub_2692C7A00();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_269270000, v10, v11, "SiriAlarmManager: Creating alarm %@", v12, 0xCu);
    sub_26927CEA8(v13, &qword_280302D50, &qword_2692CAB70);
    MEMORY[0x26D6368E0](v13, -1, -1);
    MEMORY[0x26D6368E0](v12, -1, -1);
  }

  sub_269275A6C(v4 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_alarmManager, &v25);
  v15 = v28;
  v16 = v29;
  __swift_project_boxed_opaque_existential_1(&v25, v28);
  v17 = v16[2](v9, v15, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(&v25);
  v18 = swift_allocObject();
  v18[2] = v9;
  v18[3] = a2;
  v18[4] = a3;
  v29 = sub_2692B5230;
  v30 = v18;
  v25 = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_2692B54D4;
  v28 = &block_descriptor_98;
  v19 = _Block_copy(&v25);
  v20 = v9;

  v21 = [v17 addSuccessBlock_];
  _Block_release(v19);

  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  v29 = sub_2692B523C;
  v30 = v22;
  v25 = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_2692AE9F8;
  v28 = &block_descriptor_104;
  v23 = _Block_copy(&v25);

  v24 = [v17 addFailureBlock_];
  _Block_release(v23);
}

void sub_2692B2314(uint64_t a1, void *a2, void (*a3)(uint64_t *))
{
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v5 = sub_2692C77C0();
  __swift_project_value_buffer(v5, qword_280303218);
  v6 = a2;
  v7 = sub_2692C77B0();
  v8 = sub_2692C7A00();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_269270000, v7, v8, "AlarmCreateFuture success block called with alarm created: %@", v9, 0xCu);
    sub_26927CEA8(v10, &qword_280302D50, &qword_2692CAB70);
    MEMORY[0x26D6368E0](v10, -1, -1);
    MEMORY[0x26D6368E0](v9, -1, -1);
  }

  v14 = sub_2692B54E0();
  v15 = 0;
  a3(&v14);
  v12 = v14;
  v13 = v15;

  sub_269274440(v12, v13);
}

void sub_2692B24A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2692B2510(void *a1, uint64_t (*a2)(uint64_t *))
{
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v4 = sub_2692C77C0();
  __swift_project_value_buffer(v4, qword_280303218);
  v5 = a1;
  v6 = sub_2692C77B0();
  v7 = sub_2692C7A00();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = sub_2692C7320();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_269270000, v6, v7, "AlarmCreateFuture failure block called with error: %@", v8, 0xCu);
    sub_26927CEA8(v9, &qword_280302D50, &qword_2692CAB70);
    MEMORY[0x26D6368E0](v9, -1, -1);
    MEMORY[0x26D6368E0](v8, -1, -1);
  }

  v11 = sub_2692C7760();
  v18 = v11;
  v19 = MEMORY[0x277D61908];
  v12 = __swift_allocate_boxed_opaque_existential_1(&v16);
  *v12 = sub_2692C7320();
  v13 = *MEMORY[0x277D61838];
  v14 = sub_2692C76A0();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D618E0], v11);
  sub_2692C76B0();
  __swift_destroy_boxed_opaque_existential_1Tm(&v16);
  v16 = 1;
  v17 = 1;
  return a2(&v16);
}

void sub_2692B274C(char a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_alarmManager;
  sub_269275A6C(v3 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_alarmManager, &aBlock);
  v8 = v31;
  v9 = v32;
  __swift_project_boxed_opaque_existential_1(&aBlock, v31);
  v10 = v9[1](0, v8, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  sub_269275A6C(v3 + v7, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280303288, &qword_2692CAB68);
  sub_26927CC94(0, &qword_280303290, 0x277D296D8);
  if (!swift_dynamicCast())
  {
    if (qword_280302B18 != -1)
    {
      swift_once();
    }

    v18 = sub_2692C77C0();
    __swift_project_value_buffer(v18, qword_280303218);
    v19 = sub_2692C77B0();
    v20 = sub_2692C79F0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_269270000, v19, v20, "Failed to search sleepAlarm in MTAlarmManager.", v21, 2u);
      MEMORY[0x26D6368E0](v21, -1, -1);
    }

    goto LABEL_14;
  }

  v11 = v34;
  if ((a1 & 1) == 0)
  {

LABEL_14:
    v16 = 0;
    goto LABEL_15;
  }

  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v12 = sub_2692C77C0();
  __swift_project_value_buffer(v12, qword_280303218);
  v13 = sub_2692C77B0();
  v14 = sub_2692C79D0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_269270000, v13, v14, "allAlarms calling nextSleepAlarm()", v15, 2u);
    MEMORY[0x26D6368E0](v15, -1, -1);
  }

  v16 = [v11 nextSleepAlarm];
  v17 = v16;
LABEL_15:
  v22 = swift_allocObject();
  v22[2] = v16;
  v22[3] = a2;
  v22[4] = a3;
  v32 = sub_2692B50C8;
  v33 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_2692B54D4;
  v31 = &block_descriptor_38;
  v23 = _Block_copy(&aBlock);

  v24 = [v10 addSuccessBlock_];
  _Block_release(v23);

  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  v32 = sub_2692B50D4;
  v33 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_2692AE9F8;
  v31 = &block_descriptor_44;
  v26 = _Block_copy(&aBlock);

  v27 = [v10 addFailureBlock_];

  _Block_release(v26);
}

void sub_2692B2B64(void *a1, void *a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803032B8, "$8");
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v48 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v48 - v13;
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v15 = sub_2692C77C0();
  v16 = __swift_project_value_buffer(v15, qword_280303218);
  v17 = sub_2692C77B0();
  v18 = sub_2692C79D0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_269270000, v17, v18, "AlarmSearchFuture success block called.", v19, 2u);
    MEMORY[0x26D6368E0](v19, -1, -1);
  }

  aBlock = 0;
  sub_26927CC94(0, &qword_2803032C0, 0x277D296D0);
  sub_2692C7920();
  v20 = aBlock;
  if (aBlock)
  {
    if (a2)
    {
      v21 = swift_allocObject();
      v21[2] = v20;
      v21[3] = a3;
      v21[4] = a4;
      v53 = sub_2692B50DC;
      v54 = v21;
      aBlock = MEMORY[0x277D85DD0];
      v50 = 1107296256;
      v51 = sub_2692B54D4;
      v52 = &block_descriptor_50;
      v22 = _Block_copy(&aBlock);
      v23 = a2;

      v24 = [v23 addSuccessBlock_];
      _Block_release(v22);

      v25 = swift_allocObject();
      v25[2] = v20;
      v25[3] = a3;
      v25[4] = a4;
      v53 = sub_2692B50E8;
      v54 = v25;
      aBlock = MEMORY[0x277D85DD0];
      v50 = 1107296256;
      v51 = sub_2692AE9F8;
      v52 = &block_descriptor_56;
      v26 = _Block_copy(&aBlock);

      v27 = [v23 addFailureBlock_];
      _Block_release(v26);
    }

    else
    {
      LOBYTE(v50) = 0;
      a3(&aBlock);
      sub_2692743E4(aBlock, v50);
    }
  }

  else
  {
    v28 = sub_2692C7760();
    v52 = v28;
    v53 = MEMORY[0x277D61908];
    v29 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
    v30 = *MEMORY[0x277D61888];
    v31 = sub_2692C7710();
    (*(*(v31 - 8) + 104))(v29, v30, v31);
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D618D8], v28);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
    aBlock = 0;
    v50 = 0xE000000000000000;
    sub_2692C7B80();
    MEMORY[0x26D635DF0](0xD00000000000003BLL, 0x80000002692CD5A0);
    v32 = a1;
    v33 = [v32 description];
    v34 = sub_2692C7830();
    v36 = v35;

    MEMORY[0x26D635DF0](v34, v36);

    v37 = aBlock;
    v38 = v50;
    v39 = *(v15 - 8);
    (*(v39 + 16))(v14, v16, v15);
    (*(v39 + 56))(v14, 0, 1, v15);
    v40 = v48;
    sub_26927CE40(v14, v48, &qword_2803032B8, "$8");
    LODWORD(v40) = (*(v39 + 48))(v40, 1, v15);

    if (v40 == 1)
    {
      sub_26927CEA8(v48, &qword_2803032B8, "$8");
    }

    else
    {

      v41 = sub_2692C77B0();
      v42 = sub_2692C79F0();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v55 = v44;
        *v43 = 136315650;
        v45 = sub_2692C7B90();
        v47 = sub_26927C4DC(v45, v46, &v55);

        *(v43 + 4) = v47;
        *(v43 + 12) = 2048;
        *(v43 + 14) = 601;
        *(v43 + 22) = 2080;
        *(v43 + 24) = sub_26927C4DC(v37, v38, &v55);
        _os_log_impl(&dword_269270000, v41, v42, "FatalError at %s:%lu - %s", v43, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x26D6368E0](v44, -1, -1);
        MEMORY[0x26D6368E0](v43, -1, -1);
      }

      (*(v39 + 8))(v48, v15);
    }

    sub_2692C7570();
    sub_2692C7C40();
    __break(1u);
  }
}

char *sub_2692B3278(void *a1, unint64_t a2, void (*a3)(void))
{
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v6 = sub_2692C77C0();
  __swift_project_value_buffer(v6, qword_280303218);
  v7 = sub_2692C77B0();
  v8 = sub_2692C79D0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_269270000, v7, v8, "SleepAlarmFuture success block called.", v9, 2u);
    MEMORY[0x26D6368E0](v9, -1, -1);
  }

  sub_26927CC94(0, &qword_2803032C0, 0x277D296D0);
  if (![a1 isKindOfClass_])
  {

    v40 = sub_2692C77B0();
    v41 = sub_2692C7A00();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 134217984;
      if (a2 >> 62)
      {
        v43 = sub_2692C7C60();
      }

      else
      {
        v43 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v42 + 4) = v43;

      _os_log_impl(&dword_269270000, v40, v41, "allAlarms got NSNull from sleepAlarmFuture. User has no sleep alarm set. Only return %ld alarms", v42, 0xCu);
      MEMORY[0x26D6368E0](v42, -1, -1);
    }

    else
    {
    }

    v44 = sub_2692C77B0();
    v45 = sub_2692C79E0();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v77 = v70;
      *v46 = 136315138;
      if (a2 >> 62)
      {
        v47 = sub_2692C7C60();
      }

      else
      {
        v47 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v48 = MEMORY[0x277D84F90];
      if (v47)
      {
        v68 = v45;
        v74 = a3;
        v76 = MEMORY[0x277D84F90];
        result = sub_2692A0ACC(0, v47 & ~(v47 >> 63), 0);
        if (v47 < 0)
        {
          goto LABEL_48;
        }

        v49 = 0;
        v48 = v76;
        do
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            v50 = MEMORY[0x26D6360D0](v49, a2);
          }

          else
          {
            v50 = *(a2 + 8 * v49 + 32);
          }

          v51 = v50;
          v52 = [v50 alarmIDString];
          v53 = sub_2692C7830();
          v55 = v54;

          v57 = *(v76 + 16);
          v56 = *(v76 + 24);
          if (v57 >= v56 >> 1)
          {
            sub_2692A0ACC((v56 > 1), v57 + 1, 1);
          }

          ++v49;
          *(v76 + 16) = v57 + 1;
          v58 = v76 + 16 * v57;
          *(v58 + 32) = v53;
          *(v58 + 40) = v55;
        }

        while (v47 != v49);
        a3 = v74;
        v45 = v68;
      }

      v63 = MEMORY[0x26D635E70](v48, MEMORY[0x277D837D0]);
      v65 = v64;

      v66 = sub_26927C4DC(v63, v65, &v77);

      *(v46 + 4) = v66;
      _os_log_impl(&dword_269270000, v44, v45, "AlarmManager got normal alarms: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      MEMORY[0x26D6368E0](v70, -1, -1);
      MEMORY[0x26D6368E0](v46, -1, -1);
    }

    v77 = a2;
    v78 = 0;

    goto LABEL_43;
  }

  v10 = a1;
  v11 = sub_2692C77B0();
  v12 = sub_2692C79D0();

  if (os_log_type_enabled(v11, v12))
  {
    v72 = a3;
    v13 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v77 = v71;
    *v13 = 136315138;
    v14 = [v10 alarmIDString];
    v15 = sub_2692C7830();
    v17 = v16;

    v18 = sub_26927C4DC(v15, v17, &v77);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_269270000, v11, v12, "allAlarms got sleep alarm, alarmId=%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    MEMORY[0x26D6368E0](v71, -1, -1);
    v19 = v13;
    a3 = v72;
    MEMORY[0x26D6368E0](v19, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2692C9430;
  *(v20 + 32) = v10;
  v77 = v20;
  v21 = v10;

  sub_2692B46E4(v22, sub_2692B4A0C);
  v23 = v77;

  v24 = sub_2692C77B0();
  v25 = sub_2692C79E0();

  if (!os_log_type_enabled(v24, v25))
  {
    goto LABEL_40;
  }

  v26 = swift_slowAlloc();
  v69 = swift_slowAlloc();
  v77 = v69;
  *v26 = 136315138;
  if (v23 >> 62)
  {
    v27 = sub_2692C7C60();
  }

  else
  {
    v27 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = MEMORY[0x277D84F90];
  if (!v27)
  {
LABEL_39:
    v59 = MEMORY[0x26D635E70](v28, MEMORY[0x277D837D0]);
    v61 = v60;

    v62 = sub_26927C4DC(v59, v61, &v77);

    *(v26 + 4) = v62;
    _os_log_impl(&dword_269270000, v24, v25, "AlarmManager got mixed alarms: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    MEMORY[0x26D6368E0](v69, -1, -1);
    MEMORY[0x26D6368E0](v26, -1, -1);
LABEL_40:

    v77 = v23;
    v78 = 0;
LABEL_43:
    a3(&v77);
    return sub_2692743E4(v77, v78);
  }

  v67 = v25;
  v73 = a3;
  v75 = MEMORY[0x277D84F90];
  result = sub_2692A0ACC(0, v27 & ~(v27 >> 63), 0);
  if ((v27 & 0x8000000000000000) == 0)
  {
    v30 = 0;
    v28 = v75;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x26D6360D0](v30, v23);
      }

      else
      {
        v31 = *(v23 + 8 * v30 + 32);
      }

      v32 = v31;
      v33 = [v31 alarmIDString];
      v34 = sub_2692C7830();
      v36 = v35;

      v38 = *(v75 + 16);
      v37 = *(v75 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_2692A0ACC((v37 > 1), v38 + 1, 1);
      }

      ++v30;
      *(v75 + 16) = v38 + 1;
      v39 = v75 + 16 * v38;
      *(v39 + 32) = v34;
      *(v39 + 40) = v36;
    }

    while (v27 != v30);
    a3 = v73;
    v25 = v67;
    goto LABEL_39;
  }

  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

char *sub_2692B3A54(void *a1, unint64_t a2, void (*a3)(void **))
{
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v6 = sub_2692C77C0();
  __swift_project_value_buffer(v6, qword_280303218);
  v7 = a1;
  v8 = sub_2692C77B0();
  v9 = sub_2692C79F0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = sub_2692C7320();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&dword_269270000, v8, v9, "SleepAlarmFuture failure block called with error %@", v10, 0xCu);
    sub_26927CEA8(v11, &qword_280302D50, &qword_2692CAB70);
    MEMORY[0x26D6368E0](v11, -1, -1);
    MEMORY[0x26D6368E0](v10, -1, -1);
  }

  v13 = sub_2692C7760();
  v44 = v13;
  v45 = MEMORY[0x277D61908];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v42);
  *boxed_opaque_existential_1 = sub_2692C7320();
  v15 = *MEMORY[0x277D61838];
  v16 = sub_2692C76A0();
  (*(*(v16 - 8) + 104))(boxed_opaque_existential_1, v15, v16);
  (*(*(v13 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618E0], v13);
  sub_2692C76B0();
  __swift_destroy_boxed_opaque_existential_1Tm(&v42);

  v17 = sub_2692C77B0();
  v18 = sub_2692C79E0();

  if (!os_log_type_enabled(v17, v18))
  {
    goto LABEL_19;
  }

  v19 = swift_slowAlloc();
  v40 = swift_slowAlloc();
  v42 = v40;
  *v19 = 136315138;
  if (a2 >> 62)
  {
    v20 = sub_2692C7C60();
  }

  else
  {
    v20 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = MEMORY[0x277D84F90];
  if (!v20)
  {
LABEL_18:
    v33 = MEMORY[0x26D635E70](v21, MEMORY[0x277D837D0]);
    v35 = v34;

    v36 = sub_26927C4DC(v33, v35, &v42);

    *(v19 + 4) = v36;
    _os_log_impl(&dword_269270000, v17, v18, "AlarmManager got normal alarms: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x26D6368E0](v40, -1, -1);
    MEMORY[0x26D6368E0](v19, -1, -1);
LABEL_19:

    v42 = a2;
    v43 = 0;

    a3(&v42);
    return sub_2692743E4(v42, v43);
  }

  v41 = MEMORY[0x277D84F90];
  result = sub_2692A0ACC(0, v20 & ~(v20 >> 63), 0);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v37 = v19;
    v38 = v18;
    v39 = a3;
    v23 = 0;
    v21 = v41;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x26D6360D0](v23, a2);
      }

      else
      {
        v24 = *(a2 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = [v24 alarmIDString];
      v27 = sub_2692C7830();
      v29 = v28;

      v31 = *(v41 + 16);
      v30 = *(v41 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_2692A0ACC((v30 > 1), v31 + 1, 1);
      }

      ++v23;
      *(v41 + 16) = v31 + 1;
      v32 = v41 + 16 * v31;
      *(v32 + 32) = v27;
      *(v32 + 40) = v29;
    }

    while (v20 != v23);
    a3 = v39;
    v18 = v38;
    v19 = v37;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_2692B3EC0(void *a1, uint64_t (*a2)(void **))
{
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v4 = sub_2692C77C0();
  __swift_project_value_buffer(v4, qword_280303218);
  v5 = a1;
  v6 = sub_2692C77B0();
  v7 = sub_2692C7A00();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DD0, &qword_2692C9828);
    v11 = sub_2692C7840();
    v13 = sub_26927C4DC(v11, v12, &v19);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_269270000, v6, v7, "AlarmSearchFuture failure block called with error %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x26D6368E0](v9, -1, -1);
    MEMORY[0x26D6368E0](v8, -1, -1);
  }

  v14 = sub_2692C7760();
  v21 = v14;
  v22 = MEMORY[0x277D61908];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  *boxed_opaque_existential_1 = sub_2692C7320();
  v16 = *MEMORY[0x277D61838];
  v17 = sub_2692C76A0();
  (*(*(v17 - 8) + 104))(boxed_opaque_existential_1, v16, v17);
  (*(*(v14 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618E0], v14);
  sub_2692C76B0();
  __swift_destroy_boxed_opaque_existential_1Tm(&v19);
  v19 = 0;
  v20 = 1;
  return a2(&v19);
}

uint64_t SiriAlarmManagerImpl.deinit()
{
  v1 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_now;
  v2 = sub_2692C73E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_calendar;
  v4 = sub_2692C74F0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_alarmManager));

  return v0;
}

uint64_t SiriAlarmManagerImpl.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_now;
  v2 = sub_2692C73E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_calendar;
  v4 = sub_2692C74F0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_alarmManager));

  return swift_deallocClassInstance();
}

uint64_t sub_2692B43A8(unint64_t a1, void (*a2)(uint64_t *), void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, int a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v16 - v12;
  v14 = sub_2692C7310();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_2692AED8C(a1, a6, 0, 0, v13, 0, 1, a2, a3);
  return sub_26927CEA8(v13, &qword_280302C48, &qword_2692C9780);
}

uint64_t AlarmOperationError.hashValue.getter()
{
  v1 = *v0;
  sub_2692C7DE0();
  MEMORY[0x26D636320](v1);
  return sub_2692C7E00();
}

uint64_t AlarmSearchError.hashValue.getter()
{
  sub_2692C7DE0();
  MEMORY[0x26D636320](0);
  return sub_2692C7E00();
}

uint64_t sub_2692B46E4(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_2692C7C60();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_2692C7C60();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_2692B47DC(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2692B47DC(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_2692C7C60();
LABEL_9:
  result = sub_2692C7BB0();
  *v2 = result;
  return result;
}

uint64_t sub_2692B487C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2692C7C60();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2692C7C60();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2692B50F4(&qword_2803032E0, &qword_2803032D8, &qword_2692CADE8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803032D8, &qword_2692CADE8);
            v9 = sub_26928A6EC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SiriAlarm();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2692B4A0C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2692C7C60();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2692C7C60();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2692B50F4(&qword_2803032D0, &qword_2803032C8, &qword_2692CADE0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803032C8, &qword_2692CADE0);
            v9 = sub_26928A774(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_26927CC94(0, &qword_2803032C0, 0x277D296D0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2692B4BFC()
{
  result = qword_280303298;
  if (!qword_280303298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303298);
  }

  return result;
}

unint64_t sub_2692B4C54()
{
  result = qword_2803032A0;
  if (!qword_2803032A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803032A0);
  }

  return result;
}

uint64_t sub_2692B4CB0(uint64_t a1)
{
  result = sub_2692C73E0();
  if (v2 <= 0x3F)
  {
    result = sub_2692C74F0();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlarmOperationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlarmOperationError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2692B50F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_58Tm()
{
  v1 = sub_2692C7660();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_2692B5250(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780) - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2692AF348(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), v1 + v4, *(v1 + v5), *(v1 + v5 + 8));
}

uint64_t objectdestroy_46Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_2692B538C()
{
  result = qword_280303310;
  if (!qword_280303310)
  {
    sub_2692C7420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303310);
  }

  return result;
}

unint64_t sub_2692B53F8()
{
  result = qword_280303318;
  if (!qword_280303318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303318);
  }

  return result;
}

id sub_2692B54E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CB0, &qword_2692C9718);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v39 = &v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CB8, &qword_2692C9720);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v38 = &v38 - v7;
  v8 = sub_2692C7310();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2692C7360();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SiriAlarm();
  v18 = [v1 alarmURL];
  sub_2692C7340();

  sub_2692C7330();
  (*(v14 + 8))(v17, v13);
  v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v20 = sub_2692C7820();

  v21 = sub_2692C7820();
  v22 = [v19 initWithIdentifier:v20 displayString:v21];

  sub_2692B66C0();
  v23 = sub_2692C7270();
  v24 = *(v9 + 8);
  v24(v12, v8);
  [v22 setDateTime_];

  v25 = [v1 title];
  [v22 setLabel_];

  [v1 isFiring];
  v26 = sub_2692C7980();
  [v22 setFiring_];

  [v1 isEnabled];
  v27 = sub_2692C7980();
  [v22 setEnabled_];

  v28 = sub_2692C7980();
  [v22 setUndoable_];

  sub_26929F7C0([v1 repeatSchedule]);
  type metadata accessor for AlarmRepeatSchedule();
  v29 = sub_2692C7910();

  [v22 setRepeatSchedule_];

  if ([v1 isSleepAlarm])
  {
    type metadata accessor for SleepAlarmAttribute();
    v30 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v31 = sub_2692C7820();
    v32 = [v30 initWithIdentifier:0 displayString:v31];

    v33 = sub_2692C74F0();
    (*(*(v33 - 8) + 56))(v38, 1, 1, v33);
    v34 = sub_2692C7500();
    (*(*(v34 - 8) + 56))(v39, 1, 1, v34);
    sub_2692C72F0();
    [v1 bedtimeHour];
    sub_2692C72A0();
    [v1 bedtimeMinute];
    sub_2692C72C0();
    v35 = sub_2692C7270();
    v24(v12, v8);
    [v32 setBedtime_];

    [v1 sleepSchedule];
    v36 = sub_2692C7970();
    [v32 setOverride_];

    [v22 setSleepAlarmAttribute_];
  }

  return v22;
}

uint64_t sub_2692B5AD8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v125 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v126 = &v114 - v8;
  v10 = MEMORY[0x28223BE20](v7, v9);
  v127 = (&v114 - v11);
  MEMORY[0x28223BE20](v10, v12);
  v129 = (&v114 - v13);
  v14 = sub_2692C7310();
  v128 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14, v15);
  v18 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v114 - v21;
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = &v114 - v25;
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = &v114 - v29;
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v114 - v32;
  v34 = sub_2692C7740();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v36);
  v38 = &v114 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = [a1 identifier];
  if (v39)
  {
    v40 = v39;
    v41 = sub_2692C7830();
    v43 = v42;

    LOBYTE(v40) = sub_2692B696C(v41, v43);

    return v40 & 1;
  }

  v118 = v18;
  v119 = v14;
  v121 = v35;
  v122 = v38;
  v123 = v34;
  v124 = a1;
  v115 = v30;
  v116 = v26;
  v117 = v33;
  v120 = v22;
  v45 = [a1 includeSleepAlarm];
  sub_2692822D8();
  v46 = sub_2692C7A50();
  v47 = v46;
  if (v45)
  {
    v48 = sub_2692C7A70();

    if (v48)
    {
      v49 = [v130 isSleepAlarm];
      return v49 & 1;
    }
  }

  else
  {
  }

  v50 = [v124 label];
  v51 = v130;
  if (v50)
  {
    v52 = v50;
    sub_2692C7830();
  }

  v53 = [v51 title];
  if (v53)
  {
    v54 = v53;
    sub_2692C7830();
  }

  v55 = v122;
  sub_2692C7720();

  v56 = v121;
  v57 = v123;
  v58 = (*(v121 + 88))(v55, v123);
  if (v58 != *MEMORY[0x277D618C8])
  {
    if (v58 != *MEMORY[0x277D61898])
    {
LABEL_71:
      v63 = sub_2692C7D50();
      __break(1u);
      goto LABEL_72;
    }

    goto LABEL_19;
  }

  (*(v56 + 96))(v55, v57);
  v59 = sub_2692C7730();
  v60 = (*(*(v59 - 8) + 88))(v55, v59);
  if (v60 != *MEMORY[0x277D618A8])
  {
    v61 = v60;
    if (v60 != *MEMORY[0x277D618B8] && v60 != *MEMORY[0x277D618C0])
    {
      v49 = 0;
      if (v61 == *MEMORY[0x277D618A0] || v61 == *MEMORY[0x277D618B0])
      {
        return v49 & 1;
      }

      goto LABEL_71;
    }
  }

  v62 = v124;
  v63 = [v124 alarmSearchStatus];
  if (v63 <= 1)
  {
    v64 = v120;
    v65 = v129;
    if (!v63)
    {
      goto LABEL_33;
    }

    if (v63 == 1)
    {
      v66 = [v51 isEnabled];
      goto LABEL_32;
    }
  }

  else
  {
    v64 = v120;
    v65 = v129;
    switch(v63)
    {
      case 2:
        if ([v51 isEnabled])
        {
          goto LABEL_19;
        }

LABEL_33:
        v67 = [v62 repeatSchedule];
        if (!v67)
        {
          goto LABEL_40;
        }

        v68 = v67;
        type metadata accessor for AlarmRepeatSchedule();
        v69 = sub_2692C7930();

        if (v69 >> 62)
        {
          if (sub_2692C7C60())
          {
LABEL_36:
            v70 = sub_2692A87CC([v51 repeatSchedule], v69);

            if (v70)
            {
LABEL_40:
              v71 = [v62 timeRange];
              if (v71)
              {
                v72 = v71;
                v73 = [v71 startDateComponents];

                if (v73)
                {
                  v74 = v127;
                  sub_2692C7280();

                  v75 = 0;
                }

                else
                {
                  v75 = 1;
                  v74 = v127;
                }

                v80 = v128;
                v81 = v119;
                v129 = *(v128 + 56);
                v129(v74, v75, 1, v119);
                sub_269280640(v74, v65);
                v82 = *(v80 + 48);
                if (v82(v65, 1, v81) == 1)
                {
                  v79 = v65;
                  v78 = v81;
                }

                else
                {
                  v83 = v65;
                  v84 = v117;
                  v127 = *(v80 + 32);
                  v127(v117, v83, v81);
                  v85 = [v62 timeRange];
                  if (v85)
                  {
                    v86 = v85;
                    v87 = [v85 endDateComponents];

                    if (v87)
                    {
                      v88 = v125;
                      sub_2692C7280();

                      v89 = 0;
                      v78 = v119;
                    }

                    else
                    {
                      v89 = 1;
                      v78 = v119;
                      v88 = v125;
                    }

                    v107 = v117;
                    v129(v88, v89, 1, v78);
                    v108 = v88;
                    v109 = v126;
                    sub_269280640(v108, v126);
                    v110 = v109;
                    if (v82(v109, 1, v78) != 1)
                    {
                      v111 = v115;
                      v127(v115, v109, v78);
                      v112 = v116;
                      sub_2692B66C0();
                      v106 = sub_26927607C();
                      v113 = *(v128 + 8);
                      v113(v112, v78);
                      v113(v111, v78);
                      v113(v107, v78);
LABEL_70:
                      v49 = v106;
                      return v49 & 1;
                    }

                    (*(v128 + 8))(v107, v78);
                    v64 = v120;
                    v62 = v124;
                    v91 = v118;
                    v79 = v110;
LABEL_52:
                    sub_2692B6904(v79);
                    v92 = [v62 time];
                    if (!v92)
                    {
LABEL_55:
                      v49 = 1;
                      return v49 & 1;
                    }

                    v93 = v92;
                    sub_2692C7280();

                    v94 = v128;
                    (*(v128 + 32))(v64, v91, v78);
                    v95 = sub_2692C7290();
                    if (v96)
                    {
                      (*(v94 + 8))(v64, v78);
                      goto LABEL_55;
                    }

                    v97 = v95;
                    v98 = sub_2692C72B0();
                    if (v99)
                    {
                      (*(v128 + 8))(v64, v78);
                      v49 = 1;
                      return v49 & 1;
                    }

                    v100 = v98;
                    v101 = [v62 isMeridianInferred];
                    v102 = sub_2692C7A50();
                    v103 = v102;
                    if (v101)
                    {
                      v104 = sub_2692C7A70();

                      if (v104)
                      {
                        v105 = v130;
                        if (v97 % 12 != [v130 hour] % 12)
                        {
LABEL_61:
                          v106 = 0;
LABEL_69:
                          (*(v128 + 8))(v64, v78);
                          goto LABEL_70;
                        }

LABEL_68:
                        v106 = v100 == [v105 minute];
                        goto LABEL_69;
                      }
                    }

                    else
                    {
                    }

                    v105 = v130;
                    if (v97 != [v130 hour])
                    {
                      goto LABEL_61;
                    }

                    goto LABEL_68;
                  }

                  (*(v80 + 8))(v84, v81);
                  v90 = v126;
                  v129(v126, 1, 1, v81);
                  v79 = v90;
                  v78 = v81;
                  v64 = v120;
                  v62 = v124;
                }
              }

              else
              {
                v76 = v65;
                v77 = v65;
                v78 = v119;
                (*(v128 + 56))(v76, 1, 1, v119);
                v79 = v77;
              }

              v91 = v118;
              goto LABEL_52;
            }

LABEL_19:
            v49 = 0;
            return v49 & 1;
          }
        }

        else if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        goto LABEL_40;
      case 3:
        v66 = [v51 isFiring];
        goto LABEL_32;
      case 4:
        v66 = [v51 isSnoozed];
LABEL_32:
        if ((v66 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_33;
    }
  }

LABEL_72:
  v131 = v63;
  result = sub_2692C7D80();
  __break(1u);
  return result;
}

uint64_t sub_2692B65F8()
{
  v0 = sub_2692C77C0();
  __swift_allocate_value_buffer(v0, qword_280303320);
  v1 = __swift_project_value_buffer(v0, qword_280303320);
  if (qword_280302B48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280307B80);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2692B66C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CB0, &qword_2692C9718);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CB8, &qword_2692C9720);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v13 - v7;
  v9 = sub_2692C74F0();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 1, 1, v9);
  v11 = sub_2692C7500();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  sub_2692C72F0();
  [v0 hour];
  sub_2692C72A0();
  [v0 minute];
  sub_2692C72C0();
  sub_2692C74B0();
  v10(v8, 0, 1, v9);
  return sub_2692C7300();
}

uint64_t sub_2692B6904(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2692B696C(uint64_t a1, unint64_t a2)
{
  v5 = sub_2692C7420();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s21SiriTimeAlarmInternal0C2IDO9alarmUUID14fromIdentifierSSSgAF_tFZ_0(a1, a2);
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    v14 = [v2 alarmID];
    sub_2692C7410();

    v15 = sub_2692C7400();
    v17 = v16;
    (*(v6 + 8))(v9, v5);
    if (v15 == v12 && v13 == v17)
    {

      v19 = 1;
    }

    else
    {
      v19 = sub_2692C7D60();
    }
  }

  else
  {
    if (qword_280302B30 != -1)
    {
      swift_once();
    }

    v20 = sub_2692C77C0();
    __swift_project_value_buffer(v20, qword_280303320);

    v21 = sub_2692C77B0();
    v22 = sub_2692C79F0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136315138;
      if (a2)
      {
        v25 = a2;
      }

      else
      {
        a1 = 0;
        v25 = 0xE000000000000000;
      }

      v26 = sub_26927C4DC(a1, v25, &v29);

      *(v23 + 4) = v26;
      _os_log_impl(&dword_269270000, v21, v22, "MTAlarm+Additions Bad alarm identifier: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x26D6368E0](v24, -1, -1);
      MEMORY[0x26D6368E0](v23, -1, -1);
    }

    v19 = 0;
  }

  return v19 & 1;
}

id DeleteAlarmIntentHandler.__allocating_init(manager:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_2692B8D0C(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

uint64_t sub_2692B6C70()
{
  v0 = sub_2692C77C0();
  __swift_allocate_value_buffer(v0, qword_280303338);
  v1 = __swift_project_value_buffer(v0, qword_280303338);
  if (qword_280302B40 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280303368);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id DeleteAlarmIntentHandler.init(manager:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_2692B8C10(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

id DeleteAlarmIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeleteAlarmIntentHandler.init()()
{
  if (qword_280302B38 != -1)
  {
    swift_once();
  }

  v0 = sub_2692C77C0();
  __swift_project_value_buffer(v0, qword_280303338);
  v1 = sub_2692C77B0();
  v2 = sub_2692C7A00();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_269270000, v1, v2, "DeleteAlarmIntentHandler init().", v3, 2u);
    MEMORY[0x26D6368E0](v3, -1, -1);
  }

  if (qword_280302B28 != -1)
  {
    swift_once();
  }

  sub_269275A6C(&qword_280303238, &v16);
  v4 = type metadata accessor for SiriAlarmManagerImpl(0);
  v5 = swift_allocObject();
  sub_2692C7610();
  sub_2692C74B0();
  v6 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_sleepAlarmManager;
  type metadata accessor for SiriSleepAlarmManager();
  v7 = swift_allocObject();
  *(v5 + v6) = v7;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  v8 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_osLogObject;
  if (qword_280302B50 != -1)
  {
    swift_once();
  }

  v9 = qword_280303380;
  *(v5 + v8) = qword_280303380;
  sub_269275A30(&v16, v5 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_alarmManager);
  v10 = type metadata accessor for DeleteAlarmIntentHandler();
  v11 = objc_allocWithZone(v10);
  v17 = v4;
  v18 = &protocol witness table for SiriAlarmManagerImpl;
  *&v16 = v5;
  *&v11[OBJC_IVAR____TtC21SiriTimeAlarmInternal24DeleteAlarmIntentHandler_osLogObject] = v9;
  sub_269275A6C(&v16, &v11[OBJC_IVAR____TtC21SiriTimeAlarmInternal24DeleteAlarmIntentHandler_siriAlarmManager]);
  v15.receiver = v11;
  v15.super_class = v10;
  v12 = v9;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(&v16);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v13;
}

void sub_2692B70EC(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v7 = [a1 alarms];
  if (v7)
  {
    v8 = v7;
    type metadata accessor for SiriAlarm();
    v9 = sub_2692C7930();

    if (qword_280302B38 != -1)
    {
      swift_once();
    }

    v10 = sub_2692C77C0();
    __swift_project_value_buffer(v10, qword_280303338);

    v11 = sub_2692C77B0();
    LOBYTE(v12) = sub_2692C7A00();
    v13 = v9 >> 62;
    if (!os_log_type_enabled(v11, v12))
    {

      goto LABEL_12;
    }

    v3 = swift_slowAlloc();
    *v3 = 134217984;
    if (v13)
    {
      goto LABEL_27;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2692C7C60())
    {
      *(v3 + 4) = i;

      _os_log_impl(&dword_269270000, v11, v12, "DeleteAlarmIntentHandler: Using %ld alarms on intent for resolution", v3, 0xCu);
      MEMORY[0x26D6368E0](v3, -1, -1);

LABEL_12:
      if (v13)
      {
        v12 = sub_2692C7C60();
        if (!v12)
        {
LABEL_22:

          v18 = MEMORY[0x277D84F90];
          goto LABEL_23;
        }
      }

      else
      {
        v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v12)
        {
          goto LABEL_22;
        }
      }

      v20 = MEMORY[0x277D84F90];
      v11 = &v20;
      sub_2692C7C10();
      if ((v12 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_27:
      ;
    }

    type metadata accessor for DeleteAlarmAlarmsResolutionResult();
    v15 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x26D6360D0](v15, v9);
      }

      else
      {
        v16 = *(v9 + 8 * v15 + 32);
      }

      v17 = v16;
      ++v15;
      sub_2692C42D8(v16);

      sub_2692C7BF0();
      sub_2692C7C20();
      sub_2692C7C30();
      sub_2692C7C00();
    }

    while (v12 != v15);

    v18 = v20;
LABEL_23:
    a2(v18);
  }

  else
  {
    v19 = [a1 alarmSearch];
    sub_2692B746C(v19, a2, a3);
  }
}

void sub_2692B7400(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DeleteAlarmAlarmsResolutionResult();
  v3 = sub_2692C7910();
  (*(a2 + 16))(a2, v3);
}

uint64_t sub_2692B746C(void *a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v5 = sub_2692C77A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280302B38 != -1)
  {
    swift_once();
  }

  v10 = sub_2692C77C0();
  __swift_project_value_buffer(v10, qword_280303338);
  v11 = a1;
  v12 = sub_2692C77B0();
  v13 = sub_2692C7A00();
  v31 = v11;

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = v5;
    v15 = v14;
    v16 = swift_slowAlloc();
    v34 = a1;
    v35[0] = v16;
    *v15 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803032F8, &qword_2692CADF0);
    v17 = sub_2692C7A80();
    v19 = sub_26927C4DC(v17, v18, v35);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_269270000, v12, v13, "resolveAlarms.alarmsearch: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x26D6368E0](v16, -1, -1);
    v20 = v15;
    v5 = v30;
    MEMORY[0x26D6368E0](v20, -1, -1);
  }

  sub_2692C7A20();
  sub_2692C7790();
  sub_2692C7780();
  (*(v6 + 8))(v9, v5);
  sub_269275A6C(v3 + OBJC_IVAR____TtC21SiriTimeAlarmInternal24DeleteAlarmIntentHandler_siriAlarmManager, v35);
  v21 = v36;
  v22 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v23 = swift_allocObject();
  v24 = v32;
  v25 = v33;
  v23[2] = v3;
  v23[3] = v24;
  v23[4] = v25;
  v23[5] = a1;
  v26 = *(v22 + 56);
  v27 = v31;
  v28 = v3;

  v26(a1, sub_2692B9A8C, v23, v21, v22);

  return __swift_destroy_boxed_opaque_existential_1Tm(v35);
}

uint64_t sub_2692B7770(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void *a5)
{
  v8 = sub_2692C77A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(a1 + 8);
  sub_2692C7A10();
  sub_2692C7790();
  sub_2692C7780();
  (*(v9 + 8))(v12, v8);
  if (v14)
  {
    if (v13 == 12)
    {
      if (qword_280302B38 != -1)
      {
        swift_once();
      }

      v15 = sub_2692C77C0();
      __swift_project_value_buffer(v15, qword_280303338);
      v16 = sub_2692C77B0();
      v17 = sub_2692C7A00();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_269270000, v16, v17, "No alarm exists on device.", v18, 2u);
        MEMORY[0x26D6368E0](v18, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_2692C9430;
      type metadata accessor for DeleteAlarmAlarmsResolutionResult();
      v20 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
    }

    else
    {
      if (qword_280302B38 != -1)
      {
        swift_once();
      }

      v32 = sub_2692C77C0();
      __swift_project_value_buffer(v32, qword_280303338);
      v33 = sub_2692C77B0();
      v34 = sub_2692C7A00();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_269270000, v33, v34, "No alarm found that user specified.", v35, 2u);
        MEMORY[0x26D6368E0](v35, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_2692C9430;
      type metadata accessor for DeleteAlarmAlarmsResolutionResult();
      v20 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
    }

    goto LABEL_42;
  }

  if (qword_280302B38 != -1)
  {
    swift_once();
  }

  v21 = sub_2692C77C0();
  __swift_project_value_buffer(v21, qword_280303338);

  v22 = sub_2692C77B0();
  v23 = sub_2692C7A00();
  sub_2692743E4(v13, 0);
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v45 = v25;
    *v24 = 136315138;
    v26 = type metadata accessor for SiriAlarm();
    v27 = MEMORY[0x26D635E70](v13, v26);
    v29 = sub_26927C4DC(v27, v28, &v45);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_269270000, v22, v23, "Alarm search get a list of alarms %s.", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x26D6368E0](v25, -1, -1);
    MEMORY[0x26D6368E0](v24, -1, -1);
  }

  v30 = v13 >> 62;
  if (v13 >> 62)
  {
    if (sub_2692C7C60())
    {
      goto LABEL_14;
    }

LABEL_41:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_2692C9430;
    type metadata accessor for DeleteAlarmAlarmsResolutionResult();
    v20 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
LABEL_42:
    v37 = v20;
    goto LABEL_43;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_41;
  }

LABEL_14:
  if (!a5 || [a5 alarmReferenceType] != 3)
  {
    if (v30)
    {
      result = sub_2692C7C60();
      if (result != 1)
      {
        goto LABEL_25;
      }
    }

    else
    {
      result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result != 1)
      {
LABEL_25:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_2692C9430;
        type metadata accessor for DeleteAlarmAlarmsResolutionResult();
        v37 = sub_2692C433C(v13);
LABEL_43:
        *(v19 + 32) = v37;
LABEL_44:
        a3(v19);
      }
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      v38 = MEMORY[0x26D6360D0](0, v13);
    }

    else
    {
      if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_48;
      }

      v38 = *(v13 + 32);
    }

    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_2692C9430;
    type metadata accessor for DeleteAlarmAlarmsResolutionResult();
    *(v40 + 32) = sub_2692C42D8(v39);
    a3(v40);
  }

  if (v30)
  {
    v31 = sub_2692C7C60();
  }

  else
  {
    v31 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = MEMORY[0x277D84F90];
  if (!v31)
  {
    goto LABEL_44;
  }

  v45 = MEMORY[0x277D84F90];
  result = sub_2692C7C10();
  if ((v31 & 0x8000000000000000) == 0)
  {
    type metadata accessor for DeleteAlarmAlarmsResolutionResult();
    v41 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x26D6360D0](v41, v13);
      }

      else
      {
        v42 = *(v13 + 8 * v41 + 32);
      }

      v43 = v42;
      ++v41;
      sub_2692C42D8(v42);

      sub_2692C7BF0();
      sub_2692C7C20();
      sub_2692C7C30();
      sub_2692C7C00();
    }

    while (v31 != v41);
    v19 = v45;
    goto LABEL_44;
  }

LABEL_48:
  __break(1u);
  return result;
}

void sub_2692B7E64(void *a1, void (*a2)(char *))
{
  v4 = [a1 alarms];
  if (!v4)
  {
    v6 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_3;
    }

LABEL_13:
    v7 = sub_2692C7C60();
    goto LABEL_4;
  }

  v5 = v4;
  type metadata accessor for SiriAlarm();
  v6 = sub_2692C7930();

  if (v6 >> 62)
  {
    goto LABEL_13;
  }

LABEL_3:
  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  if (v7 > 1 || (v8 = [a1 alarmSearch]) != 0 && (v9 = v8, v10 = objc_msgSend(v8, sel_alarmReferenceType), v9, v10 == 3))
  {
    v11 = [objc_allocWithZone(type metadata accessor for DeleteAlarmIntentResponse()) init];
    v12 = OBJC_IVAR___DeleteAlarmIntentResponse_code;
    swift_beginAccess();
    *&v11[v12] = 3;
    [v11 setUserActivity_];
    if (qword_280302B38 != -1)
    {
      swift_once();
    }

    v13 = sub_2692C77C0();
    __swift_project_value_buffer(v13, qword_280303338);
    v14 = sub_2692C77B0();
    v15 = sub_2692C7A00();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_269270000, v14, v15, "In handler: confirm(), shouldConfirm = true", v16, 2u);
      MEMORY[0x26D6368E0](v16, -1, -1);
    }
  }

  else
  {
    if (qword_280302B38 != -1)
    {
      swift_once();
    }

    v17 = sub_2692C77C0();
    __swift_project_value_buffer(v17, qword_280303338);
    v18 = sub_2692C77B0();
    v19 = sub_2692C7A00();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_269270000, v18, v19, "Don't need confirm", v20, 2u);
      MEMORY[0x26D6368E0](v20, -1, -1);
    }

    v11 = [objc_allocWithZone(type metadata accessor for DeleteAlarmIntentResponse()) init];
    v21 = OBJC_IVAR___DeleteAlarmIntentResponse_code;
    swift_beginAccess();
    *&v11[v21] = 4;
    [v11 setUserActivity_];
  }

  a2(v11);
}

void sub_2692B8218(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = sub_2692C77A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v45[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280302B38 != -1)
  {
    swift_once();
  }

  v13 = sub_2692C77C0();
  __swift_project_value_buffer(v13, qword_280303338);
  v14 = sub_2692C77B0();
  v15 = sub_2692C7A00();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v44 = v12;
    v17 = a1;
    v18 = v8;
    v19 = a3;
    v20 = a2;
    v21 = v16;
    *v16 = 0;
    _os_log_impl(&dword_269270000, v14, v15, "calling DeleteAlarmIntentHandler.handle().", v16, 2u);
    v22 = v21;
    a2 = v20;
    a3 = v19;
    v8 = v18;
    a1 = v17;
    v4 = v3;
    v12 = v44;
    MEMORY[0x26D6368E0](v22, -1, -1);
  }

  v23 = [a1 alarms];
  if (v23)
  {
    v24 = v23;
    type metadata accessor for SiriAlarm();
    v25 = sub_2692C7930();

    sub_2692C7A20();
    sub_2692C7790();
    sub_2692C7780();
    (*(v9 + 8))(v12, v8);
    sub_269275A6C(v4 + OBJC_IVAR____TtC21SiriTimeAlarmInternal24DeleteAlarmIntentHandler_siriAlarmManager, v45);
    v26 = v46;
    v27 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    v28 = swift_allocObject();
    v28[2] = v4;
    v28[3] = a2;
    v28[4] = a3;
    v28[5] = a1;
    v29 = *(v27 + 8);
    v30 = v4;

    v31 = a1;
    v29(v25, sub_2692B8E14, v28, v26, v27);

    __swift_destroy_boxed_opaque_existential_1Tm(v45);
  }

  else
  {
    v32 = a1;
    v33 = sub_2692C77B0();
    v34 = sub_2692C79F0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      *(v35 + 4) = v32;
      *v36 = v32;
      v37 = v32;
      _os_log_impl(&dword_269270000, v33, v34, "Can NOT handle delete, intent.alarms = nil, intent: %@", v35, 0xCu);
      sub_2692A14A0(v36);
      MEMORY[0x26D6368E0](v36, -1, -1);
      MEMORY[0x26D6368E0](v35, -1, -1);
    }

    v38 = sub_2692C7760();
    v46 = v38;
    v47 = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
    strcpy(boxed_opaque_existential_1, "Delete Alarm");
    *(boxed_opaque_existential_1 + 13) = 0;
    *(boxed_opaque_existential_1 + 7) = -5120;
    v40 = *MEMORY[0x277D61878];
    v41 = sub_2692C7710();
    (*(*(v41 - 8) + 104))(boxed_opaque_existential_1, v40, v41);
    (*(*(v38 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v38);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v42 = [objc_allocWithZone(type metadata accessor for DeleteAlarmIntentResponse()) init];
    v43 = OBJC_IVAR___DeleteAlarmIntentResponse_code;
    swift_beginAccess();
    *&v42[v43] = 5;
    [v42 setUserActivity_];
    a2(v42);
  }
}

void sub_2692B870C(uint64_t *a1, uint64_t a2, void (*a3)(char *), uint64_t a4, void *a5)
{
  v8 = sub_2692C77A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v32[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(a1 + 8);
  sub_2692C7A10();
  sub_2692C7790();
  sub_2692C7780();
  (*(v9 + 8))(v12, v8);
  if (v14 == 1)
  {
    if (qword_280302B38 != -1)
    {
      swift_once();
    }

    v15 = sub_2692C77C0();
    __swift_project_value_buffer(v15, qword_280303338);
    v16 = a5;
    v17 = sub_2692C77B0();
    v18 = sub_2692C79F0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v16;
      v21 = v16;
      _os_log_impl(&dword_269270000, v17, v18, "Can NOT handle delete alarm, intent: %@", v19, 0xCu);
      sub_2692A14A0(v20);
      MEMORY[0x26D6368E0](v20, -1, -1);
      MEMORY[0x26D6368E0](v19, -1, -1);
    }

    v22 = sub_2692C7760();
    v32[3] = v22;
    v32[4] = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
    sub_269280704();
    v24 = swift_allocError();
    *v25 = v13;
    *boxed_opaque_existential_1 = sub_2692C7320();
    v26 = *MEMORY[0x277D61838];
    v27 = sub_2692C76A0();
    (*(*(v27 - 8) + 104))(boxed_opaque_existential_1, v26, v27);
    (*(*(v22 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618F0], v22);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v32);

    v28 = [objc_allocWithZone(type metadata accessor for DeleteAlarmIntentResponse()) init];
    v29 = OBJC_IVAR___DeleteAlarmIntentResponse_code;
    swift_beginAccess();
    v30 = 5;
  }

  else
  {
    v28 = [objc_allocWithZone(type metadata accessor for DeleteAlarmIntentResponse()) init];
    v29 = OBJC_IVAR___DeleteAlarmIntentResponse_code;
    swift_beginAccess();
    v30 = 4;
  }

  *&v28[v29] = v30;
  [v28 setUserActivity_];
  a3(v28);
}

void sub_2692B8AFC(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

id DeleteAlarmIntentHandler.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DeleteAlarmIntentHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_2692B8C10(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a3;
  v14[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = OBJC_IVAR____TtC21SiriTimeAlarmInternal24DeleteAlarmIntentHandler_osLogObject;
  if (qword_280302B50 != -1)
  {
    swift_once();
  }

  v9 = qword_280303380;
  *&a2[v8] = qword_280303380;
  sub_269275A6C(v14, &a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24DeleteAlarmIntentHandler_siriAlarmManager]);
  v13.receiver = a2;
  v13.super_class = type metadata accessor for DeleteAlarmIntentHandler();
  v10 = v9;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v11;
}

id sub_2692B8D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(type metadata accessor for DeleteAlarmIntentHandler());
  (*(v7 + 16))(v9, a1, a3);
  return sub_2692B8C10(v9, v10, a3, a4);
}

void sub_2692B8EE8(void *a1, uint64_t a2, void (**a3)(void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  v7 = [a1 alarms];
  if (v7)
  {
    v8 = v7;
    type metadata accessor for SiriAlarm();
    v9 = sub_2692C7930();

    if (qword_280302B38 != -1)
    {
      swift_once();
    }

    v10 = sub_2692C77C0();
    __swift_project_value_buffer(v10, qword_280303338);

    v11 = sub_2692C77B0();
    LOBYTE(v12) = sub_2692C7A00();
    v13 = v9 >> 62;
    if (!os_log_type_enabled(v11, v12))
    {

      goto LABEL_10;
    }

    v3 = swift_slowAlloc();
    *v3 = 134217984;
    if (v13)
    {
      goto LABEL_25;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2692C7C60())
    {
      *(v3 + 4) = i;

      _os_log_impl(&dword_269270000, v11, v12, "DeleteAlarmIntentHandler: Using %ld alarms on intent for resolution", v3, 0xCu);
      MEMORY[0x26D6368E0](v3, -1, -1);

LABEL_10:
      if (v13)
      {
        v12 = sub_2692C7C60();
        if (!v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v12)
        {
          goto LABEL_20;
        }
      }

      v19 = MEMORY[0x277D84F90];
      v11 = &v19;
      sub_2692C7C10();
      if ((v12 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_25:
      ;
    }

    type metadata accessor for DeleteAlarmAlarmsResolutionResult();
    v15 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x26D6360D0](v15, v9);
      }

      else
      {
        v16 = *(v9 + 8 * v15 + 32);
      }

      v17 = v16;
      ++v15;
      sub_2692C42D8(v16);

      sub_2692C7BF0();
      sub_2692C7C20();
      sub_2692C7C30();
      sub_2692C7C00();
    }

    while (v12 != v15);
LABEL_20:

    type metadata accessor for DeleteAlarmAlarmsResolutionResult();
    v18 = sub_2692C7910();
    a3[2](a3);
  }

  else
  {
    v18 = [a1 alarmSearch];
    sub_2692B746C(v18, sub_2692B9A84, v6);
  }
}

void sub_2692B9220(void *a1, uint64_t a2)
{
  v4 = [a1 alarms];
  if (!v4)
  {
    v6 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_3;
    }

LABEL_13:
    v7 = sub_2692C7C60();
    goto LABEL_4;
  }

  v5 = v4;
  type metadata accessor for SiriAlarm();
  v6 = sub_2692C7930();

  if (v6 >> 62)
  {
    goto LABEL_13;
  }

LABEL_3:
  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  if (v7 > 1 || (v8 = [a1 alarmSearch]) != 0 && (v9 = v8, v10 = objc_msgSend(v8, sel_alarmReferenceType), v9, v10 == 3))
  {
    v11 = [objc_allocWithZone(type metadata accessor for DeleteAlarmIntentResponse()) init];
    v12 = OBJC_IVAR___DeleteAlarmIntentResponse_code;
    swift_beginAccess();
    *&v11[v12] = 3;
    [v11 setUserActivity_];
    if (qword_280302B38 != -1)
    {
      swift_once();
    }

    v13 = sub_2692C77C0();
    __swift_project_value_buffer(v13, qword_280303338);
    v14 = sub_2692C77B0();
    v15 = sub_2692C7A00();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_269270000, v14, v15, "In handler: confirm(), shouldConfirm = true", v16, 2u);
      MEMORY[0x26D6368E0](v16, -1, -1);
    }
  }

  else
  {
    if (qword_280302B38 != -1)
    {
      swift_once();
    }

    v17 = sub_2692C77C0();
    __swift_project_value_buffer(v17, qword_280303338);
    v18 = sub_2692C77B0();
    v19 = sub_2692C7A00();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_269270000, v18, v19, "Don't need confirm", v20, 2u);
      MEMORY[0x26D6368E0](v20, -1, -1);
    }

    v11 = [objc_allocWithZone(type metadata accessor for DeleteAlarmIntentResponse()) init];
    v21 = OBJC_IVAR___DeleteAlarmIntentResponse_code;
    swift_beginAccess();
    *&v11[v21] = 4;
    [v11 setUserActivity_];
  }

  (*(a2 + 16))(a2, v11);
}

void sub_2692B954C(void *a1, char *a2, void (**a3)(void, void))
{
  v6 = sub_2692C77A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v46[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  _Block_copy(a3);
  if (qword_280302B38 != -1)
  {
    swift_once();
  }

  v12 = sub_2692C77C0();
  __swift_project_value_buffer(v12, qword_280303338);
  v13 = sub_2692C77B0();
  v14 = sub_2692C7A00();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v45 = v10;
    v16 = v7;
    v17 = a2;
    v18 = a1;
    v19 = v6;
    v20 = a3;
    v21 = v11;
    v22 = v15;
    *v15 = 0;
    _os_log_impl(&dword_269270000, v13, v14, "calling DeleteAlarmIntentHandler.handle().", v15, 2u);
    v23 = v22;
    v11 = v21;
    a3 = v20;
    v6 = v19;
    a1 = v18;
    a2 = v17;
    v7 = v16;
    v10 = v45;
    MEMORY[0x26D6368E0](v23, -1, -1);
  }

  v24 = [a1 alarms];
  if (v24)
  {
    v25 = v24;
    type metadata accessor for SiriAlarm();
    v26 = sub_2692C7930();

    sub_2692C7A20();
    sub_2692C7790();
    sub_2692C7780();
    (*(v7 + 8))(v10, v6);
    sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24DeleteAlarmIntentHandler_siriAlarmManager], v46);
    v27 = v47;
    v28 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    v29 = swift_allocObject();
    v29[2] = a2;
    v29[3] = sub_26928062C;
    v29[4] = v11;
    v29[5] = a1;
    v30 = *(v28 + 8);
    v31 = a2;

    v32 = a1;
    v30(v26, sub_2692B9A98, v29, v27, v28);

    __swift_destroy_boxed_opaque_existential_1Tm(v46);
  }

  else
  {
    v33 = a1;
    v34 = sub_2692C77B0();
    v35 = sub_2692C79F0();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      *(v36 + 4) = v33;
      *v37 = v33;
      v38 = v33;
      _os_log_impl(&dword_269270000, v34, v35, "Can NOT handle delete, intent.alarms = nil, intent: %@", v36, 0xCu);
      sub_2692A14A0(v37);
      MEMORY[0x26D6368E0](v37, -1, -1);
      MEMORY[0x26D6368E0](v36, -1, -1);
    }

    v39 = sub_2692C7760();
    v47 = v39;
    v48 = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
    strcpy(boxed_opaque_existential_1, "Delete Alarm");
    *(boxed_opaque_existential_1 + 13) = 0;
    *(boxed_opaque_existential_1 + 7) = -5120;
    v41 = *MEMORY[0x277D61878];
    v42 = sub_2692C7710();
    (*(*(v42 - 8) + 104))(boxed_opaque_existential_1, v41, v42);
    (*(*(v39 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v39);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    v43 = [objc_allocWithZone(type metadata accessor for DeleteAlarmIntentResponse()) init];
    v44 = OBJC_IVAR___DeleteAlarmIntentResponse_code;
    swift_beginAccess();
    *&v43[v44] = 5;
    [v43 setUserActivity_];
    (a3)[2](a3, v43);
  }
}
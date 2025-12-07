uint64_t sub_23D8CDF70()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 384);

  return MEMORY[0x2822009F8](sub_23D8CE078, v2, v1);
}

uint64_t sub_23D8CE078()
{
  v37 = v0;
  v1 = *(v0 + 456);
  v3 = *(v0 + 432);
  v2 = *(v0 + 440);

  v4 = *(v0 + 465);

  swift_unknownObjectRelease();
  v5 = *(v0 + 424);
  if (v4 == 1)
  {
    v6 = *(v0 + 320);
    v7 = *(v0 + 296);
    v8 = *(v0 + 304);
    v9 = *(v0 + 280);
    v10 = *(v0 + 256);
    v11 = *(v0 + 264);
    v12 = MEMORY[0x23EEF0BB0]();
    [v12 setAccessibilityReaderIsActive_];

    (*(v11 + 8))(v9, v10);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    v13 = *(v0 + 320);
    v14 = *(v0 + 296);
    v15 = *(v0 + 304);
    v16 = *(v0 + 280);
    v17 = *(v0 + 256);
    v18 = *(v0 + 264);
    sub_23D8DCA90();
    sub_23D8CF700(&qword_27E2F0438, MEMORY[0x277CE7450], MEMORY[0x277CE7458]);
    v19 = swift_allocError();
    sub_23D8DCAA0();
    swift_willThrow();

    (*(v18 + 8))(v16, v17);
    (*(v15 + 8))(v13, v14);
    sub_23D8DCAC0();
    v20 = v19;
    v21 = sub_23D8DCAE0();
    v22 = sub_23D8DEAA0();

    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 400);
    v25 = *(v0 + 344);
    v26 = *(v0 + 328);
    if (v23)
    {
      v35 = *(v0 + 400);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v36 = v28;
      *v27 = 136315138;
      swift_getErrorValue();
      v29 = sub_23D8DED40();
      v31 = sub_23D8CF134(v29, v30, &v36);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_23D82C000, v21, v22, "Coordinator could not Show Accessibility Reader View: %s", v27, 0xCu);
      v32 = __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x23EEF15F0](v28, -1, -1, v32);
      MEMORY[0x23EEF15F0](v27, -1, -1);

      v35(v25, v26);
    }

    else
    {

      v24(v25, v26);
    }
  }

  v33 = *(v0 + 8);

  return v33();
}

void sub_23D8CE400()
{
  v1 = sub_23D8DCAF0();
  MEMORY[0x28223BE20](v1);
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = v2;
    [v3 willMoveToParentViewController_];
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    v17 = sub_23D8CF83C;
    v18 = v5;
    aBlock = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_23D876358;
    v16 = &block_descriptor_8;
    v6 = _Block_copy(&aBlock);
    v7 = v3;

    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v17 = sub_23D8CF844;
    v18 = v8;
    aBlock = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_23D8CC60C;
    v16 = &block_descriptor_14;
    v9 = _Block_copy(&aBlock);
    v10 = v7;

    [v4 animateWithDuration:0x20000 delay:v6 options:v9 animations:0.25 completion:0.0];
    _Block_release(v9);
    _Block_release(v6);

    v11 = *(v0 + 24);
    *(v0 + 24) = 0;
  }

  v12 = sub_23D8DCA80();
  sub_23D8DCAB0();
}

uint64_t sub_23D8CE778(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t AXRCoordinator.hideReaderView()()
{
  v1[22] = v0;
  v2 = sub_23D8DCAF0();
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  sub_23D8DE9D0();
  v1[29] = sub_23D8DE9C0();
  v4 = sub_23D8DE9B0();
  v1[30] = v4;
  v1[31] = v3;

  return MEMORY[0x2822009F8](sub_23D8CE8EC, v4, v3);
}

uint64_t sub_23D8CE8EC(uint64_t a1)
{
  sub_23D8DCAC0();

  v2 = sub_23D8DCAE0();
  v3 = sub_23D8DEA80();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[22];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = *(v5 + 48);

    _os_log_impl(&dword_23D82C000, v2, v3, "Coordinator asked to Show Accessibility Reader View. is Accessibility Reader running: %{BOOL}d", v6, 8u);
    MEMORY[0x23EEF15F0](v6, -1, -1);
  }

  else
  {
  }

  v7 = v1[28];
  v8 = v1[23];
  v9 = v1[24];
  v10 = v1[22];
  v11 = *(v9 + 8);
  v1[32] = v11;
  v1[33] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v7, v8);
  sub_23D8DEA70();
  v12 = MEMORY[0x23EEF0BB0]();
  [v12 setAccessibilityReaderIsActive_];

  v13 = *(v10 + 24);
  v1[34] = v13;
  if (v13)
  {
    v30 = v13;
    sub_23D8DCAC0();
    v14 = sub_23D8DCAE0();
    v15 = sub_23D8DEA90();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_23D82C000, v14, v15, "Hide Accessibility Reader UI View", v16, 2u);
      MEMORY[0x23EEF15F0](v16, -1, -1);
    }

    v17 = v1[27];
    v18 = v1[23];

    v11(v17, v18);
    v19 = sub_23D8CC660();
    v1[35] = v19;
    Strong = swift_unknownObjectWeakLoadStrong();
    v1[36] = Strong;
    v1[2] = v1;
    v1[7] = v1 + 37;
    v1[3] = sub_23D8CECF0;
    v21 = swift_continuation_init();
    v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0430, &qword_23D8E5A00);
    v1[10] = MEMORY[0x277D85DD0];
    v1[11] = 1107296256;
    v1[12] = sub_23D8CE778;
    v1[13] = &block_descriptor_3;
    v1[14] = v21;
    [v19 removeContentViewController:v30 withUserInteractionEnabled:1 forService:Strong context:0 completion:v1 + 10];

    return MEMORY[0x282200938](v1 + 2);
  }

  else
  {

    sub_23D8DCAC0();
    v22 = sub_23D8DCAE0();
    v23 = sub_23D8DEA90();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v1[26];
    v26 = v1[23];
    if (v24)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_23D82C000, v22, v23, "There is no Accessibility Reader UI View to hide", v27, 2u);
      MEMORY[0x23EEF15F0](v27, -1, -1);
    }

    v11(v25, v26);

    v28 = v1[1];

    return v28();
  }
}

uint64_t sub_23D8CECF0()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);

  return MEMORY[0x2822009F8](sub_23D8CEDF8, v2, v1);
}

uint64_t sub_23D8CEDF8()
{
  v26 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 272);

  v3 = *(v0 + 296);

  swift_unknownObjectRelease();
  v4 = *(v0 + 272);
  if (v3 == 1)
  {
    v5 = *(v0 + 176);

    v6 = *(v5 + 24);
    *(v5 + 24) = 0;
  }

  else
  {
    sub_23D8DCA90();
    sub_23D8CF700(&qword_27E2F0438, MEMORY[0x277CE7450], MEMORY[0x277CE7458]);
    v7 = swift_allocError();
    sub_23D8DCAA0();
    swift_willThrow();

    v8 = v7;
    sub_23D8DCAC0();
    v9 = v7;
    v10 = sub_23D8DCAE0();
    v11 = sub_23D8DEAA0();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 256);
    v14 = *(v0 + 200);
    v15 = *(v0 + 184);
    if (v12)
    {
      v24 = *(v0 + 256);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = sub_23D8DED40();
      v20 = sub_23D8CF134(v18, v19, &v25);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_23D82C000, v10, v11, "Coordinator could not Show Accessibility Reader View: %s", v16, 0xCu);
      v21 = __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x23EEF15F0](v17, -1, -1, v21);
      MEMORY[0x23EEF15F0](v16, -1, -1);

      v24(v14, v15);
    }

    else
    {

      v13(v14, v15);
    }
  }

  v22 = *(v0 + 8);

  return v22();
}

id *AXRCoordinator.deinit()
{
  sub_23D8CF748((v0 + 2));

  return v0;
}

uint64_t AXRCoordinator.__deallocating_deinit()
{
  sub_23D8CF748((v0 + 2));

  return swift_deallocClassInstance();
}

unint64_t sub_23D8CF134(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23D8CF200(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_23D835A24(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23D8CF200(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23D8CF30C(a5, a6);
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
    result = sub_23D8DEC70();
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

void *sub_23D8CF30C(uint64_t a1, unint64_t a2)
{
  v3 = sub_23D8CF358(a1, a2);
  sub_23D8CF488(&unk_284FD4D10);
  return v3;
}

void *sub_23D8CF358(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23D8CF574(v5, 0);
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

  result = sub_23D8DEC70();
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
        v10 = sub_23D8DE920();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23D8CF574(v10, 0);
        result = sub_23D8DEC40();
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

uint64_t sub_23D8CF488(uint64_t result)
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

  result = sub_23D8CF5E8(result, v11, 1, v3);
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

void *sub_23D8CF574(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0448, &qword_23D8E5A78);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23D8CF5E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0448, &qword_23D8E5A78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_23D8CF700(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_23D8CF804()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D8CF87C(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_23D8DE6E0();
}

uint64_t SSActions.image.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x73697370696C6C65;
    v7 = 0x69616C702E636F64;
    if (v1 != 2)
    {
      v7 = 0x6C75622E7473696CLL;
    }

    if (*v0)
    {
      v6 = 0x7061742E646E6168;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x2E6E6F7276656863;
    v3 = 0xD000000000000028;
    if (v1 != 7)
    {
      v3 = 0xD000000000000011;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x6D726F6665766177;
    if (v1 != 4)
    {
      v4 = 0x69632E6B72616D78;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t SSActions.title.getter(__n128 a1)
{
  v2 = *v1;
  if (v2 > 3)
  {
    if (*v1 > 5u)
    {
      if (v2 != 6)
      {
        goto LABEL_30;
      }

      if (qword_27E2ECEC8 != -1)
      {
        swift_once();
      }

      v3 = qword_27E2F3C80;
      v4 = 0xD000000000000015;
      if (!qword_27E2F3C80)
      {
        return v4;
      }

LABEL_37:
      v5 = v3;
      goto LABEL_38;
    }

    if (v2 != 4)
    {
      if (qword_27E2ECEC8 != -1)
      {
        swift_once();
      }

      v3 = qword_27E2F3C80;
      v4 = 0xD00000000000001ALL;
      if (!qword_27E2F3C80)
      {
        return v4;
      }

      goto LABEL_37;
    }

    if (qword_27E2ECEC8 != -1)
    {
      swift_once();
    }

    if (!qword_27E2F3C80)
    {
      return 0xD00000000000001ELL;
    }

    goto LABEL_17;
  }

  if (*v1 > 1u)
  {
    if (v2 == 2)
    {
      if (qword_27E2ECEC8 != -1)
      {
        swift_once();
      }

      v3 = qword_27E2F3C80;
      v4 = 0xD000000000000021;
      if (!qword_27E2F3C80)
      {
        return v4;
      }

      goto LABEL_37;
    }

    if (qword_27E2ECEC8 != -1)
    {
      swift_once();
    }

    v4 = 0xD000000000000016;
    if (!qword_27E2F3C80)
    {
      return v4;
    }

LABEL_17:
    v5 = qword_27E2F3C80;
LABEL_38:
    v6 = sub_23D8DE830();
    v7 = sub_23D8DE830();
    v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

    v4 = sub_23D8DE870();
    return v4;
  }

  if (!*v1)
  {
LABEL_30:
    if (qword_27E2ECEC8 != -1)
    {
      swift_once();
    }

    v3 = qword_27E2F3C80;
    v4 = 0xD000000000000011;
    if (!qword_27E2F3C80)
    {
      return v4;
    }

    goto LABEL_37;
  }

  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v3 = qword_27E2F3C80;
  v4 = 0xD00000000000001CLL;
  if (qword_27E2F3C80)
  {
    goto LABEL_37;
  }

  return v4;
}

AccessibilityReadingUI::SSActions_optional __swiftcall SSActions.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 9;
  if (rawValue < 9)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_23D8CFF44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23D8DD3C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_23D83C67C(v2, &v14 - v9, &qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D8DCCB0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_23D8DEAB0();
    v13 = sub_23D8DD990();
    sub_23D8DCAD0();

    sub_23D8DD3B0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_23D8D0144(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = *v2;
  v4 = v2[1];
  v5 = type metadata accessor for SSStore(0);
  v6 = sub_23D8DAF50(&qword_27E2ED008, type metadata accessor for SSStore, &unk_23D8E1DE0);

  return MEMORY[0x282131550](v3, v4, v5, v6);
}

uint64_t sub_23D8D01EC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF350, &qword_23D8E3800);
  sub_23D8DE320();
  return v2;
}

uint64_t sub_23D8D0298(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDBE0, &qword_23D8E1538);
  sub_23D8DE320();
  return v2;
}

uint64_t SSHUDView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v74 = *(a1 - 8);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](a1);
  v73 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0460, &qword_23D8E5AB8);
  v87 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0468, &qword_23D8E5AC0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0470, &qword_23D8E5AC8);
  v88 = v4;
  v89 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0478, &unk_23D8E5AD0);
  v90 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF3C0, &qword_23D8E3880);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0480, &qword_23D8E5AE0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0488, &qword_23D8E5AE8);
  v7 = *(a1 + 24);
  v70 = *(a1 + 16);
  v71 = a1;
  v69 = v7;
  type metadata accessor for SSMoreMenuRow(255, v70, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  v9 = sub_23D8DD020();
  v10 = sub_23D835AD0(&qword_27E2F0490, &qword_27E2F0488, &qword_23D8E5AE8, MEMORY[0x277D83980]);
  v11 = sub_23D8D0EF0();
  v103 = v6;
  v104 = &type metadata for SSActions;
  v105 = v9;
  v106 = v10;
  v107 = v11;
  sub_23D8DE4E0();
  swift_getTupleTypeMetadata2();
  v12 = sub_23D8DE6D0();
  v13 = sub_23D8DAD28(&qword_27E2EF3D0, &qword_27E2EF3C0, &qword_23D8E3880, sub_23D897B5C);
  WitnessTable = swift_getWitnessTable();
  v103 = v5;
  v104 = v12;
  v105 = v13;
  v106 = WitnessTable;
  v15 = sub_23D8DDBF0();
  v16 = swift_getWitnessTable();
  v103 = v15;
  v104 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = sub_23D8DD8B0();
  v103 = v15;
  v104 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_23D8DAF50(&qword_27E2EF408, MEMORY[0x277CDE310], MEMORY[0x277CDE308]);
  v103 = OpaqueTypeMetadata2;
  v104 = v18;
  v105 = OpaqueTypeConformance2;
  v106 = v20;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF430, &qword_23D8E3920);
  sub_23D8DD020();
  sub_23D8DD020();
  sub_23D8DD960();
  sub_23D8DD020();
  v91 = sub_23D8DD6C0();
  swift_getTupleTypeMetadata();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  sub_23D8DE390();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF088, &qword_23D8E3190);
  sub_23D8DD020();
  swift_getTupleTypeMetadata2();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  v21 = sub_23D8DE410();
  type metadata accessor for AXSpeakStopType(255);
  v23 = v22;
  v24 = swift_getWitnessTable();
  v25 = sub_23D8DAF50(&qword_27E2ECF38, type metadata accessor for AXSpeakStopType, &unk_23D8E0188);
  v87 = v21;
  v88 = v23;
  v89 = v24;
  v90 = v25;
  v26 = swift_getOpaqueTypeMetadata2();
  v87 = v21;
  v88 = v23;
  v89 = v24;
  v90 = v25;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = sub_23D8D0F44();
  v87 = v26;
  v88 = &type metadata for SSActions;
  v89 = v27;
  v90 = v28;
  swift_getOpaqueTypeMetadata2();
  sub_23D8DD020();
  sub_23D8DD020();
  v29 = sub_23D8DD020();
  v30 = sub_23D8DD090();
  v87 = v26;
  v88 = &type metadata for SSActions;
  v89 = v27;
  v90 = v28;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = MEMORY[0x277CE0790];
  v101 = v31;
  v102 = MEMORY[0x277CE0790];
  v33 = MEMORY[0x277CDFAD8];
  v99 = swift_getWitnessTable();
  v100 = v32;
  v97 = swift_getWitnessTable();
  v98 = MEMORY[0x277CDF918];
  v77 = v33;
  v34 = swift_getWitnessTable();
  v35 = sub_23D8DAF50(&qword_27E2EE3D0, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
  v87 = v29;
  v88 = v30;
  v89 = v34;
  v90 = v35;
  v36 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED8B8, &qword_23D8E2B80);
  v37 = sub_23D8DD020();
  v87 = v29;
  v88 = v30;
  v89 = v34;
  v90 = v35;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = sub_23D835AD0(&qword_27E2ED8B0, &qword_27E2ED8B8, &qword_23D8E2B80, MEMORY[0x277CE0728]);
  v95 = v34;
  v96 = v39;
  v40 = swift_getWitnessTable();
  v87 = v29;
  v88 = MEMORY[0x277CE1350];
  v89 = v36;
  v90 = v37;
  v91 = v34;
  v92 = MEMORY[0x277CE1340];
  v93 = v38;
  v94 = v40;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDE30, &qword_23D8E4AD0);
  sub_23D8DD020();
  sub_23D8DD020();
  v87 = v29;
  v88 = MEMORY[0x277CE1350];
  v89 = v36;
  v90 = v37;
  v91 = v34;
  v92 = MEMORY[0x277CE1340];
  v93 = v38;
  v94 = v40;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = sub_23D835AD0(&qword_27E2EF348, &qword_27E2EDE30, &qword_23D8E4AD0, MEMORY[0x277CDF4F0]);
  v85 = v41;
  v86 = v42;
  v83 = swift_getWitnessTable();
  v84 = MEMORY[0x277CDF760];
  swift_getWitnessTable();
  v43 = sub_23D8DE430();
  v67 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v64 = &v64 - v44;
  v45 = sub_23D8DD020();
  v68 = *(v45 - 8);
  v46 = MEMORY[0x28223BE20](v45);
  v65 = &v64 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v66 = &v64 - v48;
  sub_23D8DE5E0();
  v49 = v69;
  v50 = v70;
  v78 = v70;
  v79 = v69;
  v51 = v72;
  v80 = v72;
  sub_23D8DE420();
  v53 = v73;
  v52 = v74;
  v54 = v71;
  (*(v74 + 16))(v73, v51, v71);
  v55 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = v50;
  *(v56 + 24) = v49;
  (*(v52 + 32))(v56 + v55, v53, v54);
  v57 = swift_getWitnessTable();
  v58 = v64;
  v59 = v65;
  sub_23D8DE010();

  (*(v67 + 8))(v58, v43);
  v60 = sub_23D8D4888();
  v81 = v57;
  v82 = v60;
  swift_getWitnessTable();
  v61 = v66;
  sub_23D8361EC();
  v62 = *(v68 + 8);
  v62(v59, v45);
  sub_23D8361EC();
  return (v62)(v61, v45);
}

unint64_t sub_23D8D0EF0()
{
  result = qword_27E2F0498;
  if (!qword_27E2F0498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F0498);
  }

  return result;
}

unint64_t sub_23D8D0F44()
{
  result = qword_27E2F04A0;
  if (!qword_27E2F04A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F04A0);
  }

  return result;
}

uint64_t sub_23D8D0F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v197 = a1;
  v182 = a4;
  v6 = sub_23D8DCCB0();
  v180 = *(v6 - 8);
  v181 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v179 = v138 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v178 = v138 - v9;
  v191 = sub_23D8DD090();
  MEMORY[0x28223BE20](v191);
  v177 = v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = a2;
  v196 = a3;
  v192 = type metadata accessor for SSHUDView(0, a2, a3, v11);
  v198 = *(v192 - 8);
  v195 = *(v198 + 64);
  MEMORY[0x28223BE20](v192);
  v176 = v138 - v12;
  v193 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0460, &qword_23D8E5AB8);
  v211 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0468, &qword_23D8E5AC0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0470, &qword_23D8E5AC8);
  v212 = v13;
  v213 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0478, &unk_23D8E5AD0);
  v214 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF3C0, &qword_23D8E3880);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0480, &qword_23D8E5AE0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0488, &qword_23D8E5AE8);
  type metadata accessor for SSMoreMenuRow(255, a2, a3, v16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  v17 = sub_23D8DD020();
  v18 = sub_23D835AD0(&qword_27E2F0490, &qword_27E2F0488, &qword_23D8E5AE8, MEMORY[0x277D83980]);
  v19 = sub_23D8D0EF0();
  v227 = v15;
  v228 = &type metadata for SSActions;
  v229 = v17;
  v230 = v18;
  v231 = v19;
  sub_23D8DE4E0();
  swift_getTupleTypeMetadata2();
  v20 = sub_23D8DE6D0();
  v21 = sub_23D8DAD28(&qword_27E2EF3D0, &qword_27E2EF3C0, &qword_23D8E3880, sub_23D897B5C);
  WitnessTable = swift_getWitnessTable();
  v227 = v14;
  v228 = v20;
  v229 = v21;
  v230 = WitnessTable;
  v23 = sub_23D8DDBF0();
  v24 = swift_getWitnessTable();
  v227 = v23;
  v228 = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v26 = sub_23D8DD8B0();
  v227 = v23;
  v228 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = sub_23D8DAF50(&qword_27E2EF408, MEMORY[0x277CDE310], MEMORY[0x277CDE308]);
  v227 = OpaqueTypeMetadata2;
  v228 = v26;
  v229 = OpaqueTypeConformance2;
  v230 = v28;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF430, &qword_23D8E3920);
  sub_23D8DD020();
  sub_23D8DD020();
  sub_23D8DD960();
  sub_23D8DD020();
  v215 = sub_23D8DD6C0();
  swift_getTupleTypeMetadata();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  sub_23D8DE390();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF088, &qword_23D8E3190);
  sub_23D8DD020();
  swift_getTupleTypeMetadata2();
  v193 = sub_23D8DE6D0();
  v186 = swift_getWitnessTable();
  v29 = sub_23D8DE410();
  v162 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v146 = v138 - v30;
  type metadata accessor for AXSpeakStopType(255);
  v32 = v31;
  v33 = swift_getWitnessTable();
  v34 = sub_23D8DAF50(&qword_27E2ECF38, type metadata accessor for AXSpeakStopType, &unk_23D8E0188);
  v211 = v29;
  v212 = v32;
  v35 = v29;
  v147 = v29;
  v148 = v34;
  v36 = v32;
  v145 = v32;
  v213 = v33;
  v214 = v34;
  v149 = v33;
  v37 = v34;
  v38 = swift_getOpaqueTypeMetadata2();
  v168 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v190 = v138 - v39;
  v211 = v35;
  v212 = v36;
  v213 = v33;
  v214 = v37;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = sub_23D8D0F44();
  v211 = v38;
  v212 = &type metadata for SSActions;
  v42 = v38;
  v139 = v38;
  v140 = v41;
  v213 = v40;
  v214 = v41;
  v43 = v40;
  v141 = v40;
  v44 = v41;
  v163 = swift_getOpaqueTypeMetadata2();
  v166 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v189 = v138 - v45;
  v46 = sub_23D8DD020();
  v172 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v159 = v138 - v47;
  v155 = v46;
  v48 = sub_23D8DD020();
  v170 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v161 = v138 - v49;
  v158 = v48;
  v50 = sub_23D8DD020();
  v175 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v160 = v138 - v51;
  v211 = v42;
  v212 = &type metadata for SSActions;
  v213 = v43;
  v214 = v44;
  v151 = swift_getOpaqueTypeConformance2();
  v52 = MEMORY[0x277CE0790];
  v225 = v151;
  v226 = MEMORY[0x277CE0790];
  v154 = swift_getWitnessTable();
  v223 = v154;
  v224 = v52;
  v157 = swift_getWitnessTable();
  v221 = v157;
  v222 = MEMORY[0x277CDF918];
  v53 = v50;
  v54 = swift_getWitnessTable();
  v55 = sub_23D8DAF50(&qword_27E2EE3D0, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
  v56 = v191;
  v211 = v50;
  v212 = v191;
  v213 = v54;
  v214 = v55;
  v57 = v55;
  v164 = v55;
  v58 = swift_getOpaqueTypeMetadata2();
  v138[1] = v58;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED8B8, &qword_23D8E2B80);
  v59 = sub_23D8DD020();
  v211 = v53;
  v212 = v56;
  v150 = v53;
  v213 = v54;
  v214 = v57;
  v60 = swift_getOpaqueTypeConformance2();
  v143 = v60;
  v61 = sub_23D835AD0(&qword_27E2ED8B0, &qword_27E2ED8B8, &qword_23D8E2B80, MEMORY[0x277CE0728]);
  v219 = v54;
  v220 = v61;
  v144 = v54;
  v142 = v59;
  v187 = swift_getWitnessTable();
  v211 = v53;
  v212 = MEMORY[0x277CE1350];
  v213 = v58;
  v214 = v59;
  v215 = v54;
  v216 = MEMORY[0x277CE1340];
  v217 = v60;
  v218 = v187;
  v153 = MEMORY[0x277CE0E60];
  v152 = swift_getOpaqueTypeMetadata2();
  v156 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v188 = v138 - v62;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDE30, &qword_23D8E4AD0);
  v63 = sub_23D8DD020();
  v169 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v138[0] = v138 - v64;
  v171 = v65;
  v66 = sub_23D8DD020();
  v173 = *(v66 - 8);
  v174 = v66;
  v67 = MEMORY[0x28223BE20](v66);
  v165 = v138 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v167 = v138 - v69;
  sub_23D8DD560();
  v70 = v194;
  v204 = v194;
  v71 = v196;
  v72 = v197;
  v205 = v196;
  v206 = v197;
  v73 = v146;
  sub_23D8DE400();
  v74 = v192;
  v211 = [*(v72 + *(v192 + 60) + 8) stopType];
  v75 = v198;
  v76 = *(v198 + 16);
  v185 = v198 + 16;
  v186 = v76;
  v77 = v176;
  v76(v176, v72, v74);
  v193 = *(v75 + 80);
  v78 = (v193 + 32) & ~v193;
  v79 = swift_allocObject();
  *(v79 + 16) = v70;
  *(v79 + 24) = v71;
  v184 = *(v75 + 32);
  v198 = v75 + 32;
  v184(v79 + v78, v77, v74);
  swift_checkMetadataState();
  v80 = v147;
  sub_23D8DE070();

  (*(v162 + 8))(v73, v80);
  sub_23D8DA65C(v74);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  LOBYTE(v227) = v211;
  v81 = v186;
  v186(v77, v72, v74);
  v183 = v78;
  v82 = swift_allocObject();
  v83 = v194;
  v84 = v196;
  *(v82 + 16) = v194;
  *(v82 + 24) = v84;
  v85 = v82 + v78;
  v86 = v184;
  v184(v85, v77, v74);
  v87 = v190;
  v88 = v139;
  sub_23D8DE060();

  (*(v168 + 8))(v87, v88);
  v89 = v197;
  v90 = v192;
  v81(v77, v197, v192);
  v91 = v183;
  v92 = swift_allocObject();
  v93 = v196;
  *(v92 + 16) = v83;
  *(v92 + 24) = v93;
  v94 = v92 + v91;
  v95 = v90;
  v86(v94, v77, v90);
  v96 = v159;
  v97 = v163;
  v98 = v189;
  sub_23D8DE050();

  (*(v166 + 8))(v98, v97);
  v186(v77, v89, v95);
  v99 = v183;
  v100 = swift_allocObject();
  v101 = v194;
  *(v100 + 16) = v194;
  *(v100 + 24) = v93;
  v184(v100 + v99, v77, v95);
  v102 = v161;
  v103 = v155;
  sub_23D8DDD20();

  (*(v172 + 8))(v96, v103);
  sub_23D8DD9E0();
  v104 = v160;
  v105 = v158;
  sub_23D8DE030();
  (*(v170 + 8))(v102, v105);
  sub_23D8DE5D0();
  v202 = v101;
  v203 = v196;
  v199 = v101;
  v200 = v196;
  v201 = v197;
  v106 = swift_checkMetadataState();
  v107 = swift_checkMetadataState();
  v108 = v143;
  v109 = v144;
  v110 = v150;
  sub_23D8DE0A0();
  v111 = v110;
  (*(v175 + 8))(v104, v110);
  v112 = *(v191 + 20);
  v113 = *MEMORY[0x277CE0118];
  v114 = sub_23D8DD4E0();
  v115 = v177;
  (*(*(v114 - 8) + 104))(&v177[v112], v113, v114);
  __asm { FMOV            V0.2D, #20.0 }

  *v115 = _Q0;
  v211 = v111;
  v212 = MEMORY[0x277CE1350];
  v213 = v106;
  v214 = v107;
  v215 = v109;
  v216 = MEMORY[0x277CE1340];
  v217 = v108;
  v218 = v187;
  v121 = swift_getOpaqueTypeConformance2();
  v122 = v138[0];
  v123 = v152;
  v124 = v188;
  sub_23D8DE0B0();
  sub_23D868410(v115);
  (*(v156 + 8))(v124, v123);
  v125 = v178;
  sub_23D8CFF44(v178);
  v127 = v179;
  v126 = v180;
  v128 = v181;
  (*(v180 + 104))(v179, *MEMORY[0x277CDF3C0], v181);
  LOBYTE(v124) = sub_23D8DCCA0();
  v129 = *(v126 + 8);
  v129(v127, v128);
  v129(v125, v128);
  if (v124)
  {
    sub_23D8DE240();
  }

  else
  {
    sub_23D8DE220();
  }

  sub_23D8DE250();

  v130 = sub_23D835AD0(&qword_27E2EF348, &qword_27E2EDE30, &qword_23D8E4AD0, MEMORY[0x277CDF4F0]);
  v209 = v121;
  v210 = v130;
  v131 = v171;
  v132 = swift_getWitnessTable();
  v133 = v165;
  sub_23D8DDFE0();

  (*(v169 + 8))(v122, v131);
  v207 = v132;
  v208 = MEMORY[0x277CDF760];
  v134 = v174;
  swift_getWitnessTable();
  v135 = v167;
  sub_23D8361EC();
  v136 = *(v173 + 8);
  v136(v133, v134);
  sub_23D8361EC();
  return (v136)(v135, v134);
}

uint64_t sub_23D8D24C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a2;
  v22 = a3;
  v23 = a1;
  v24 = a4;
  *&v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0468, &qword_23D8E5AC0);
  *(&v45 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0470, &qword_23D8E5AC8);
  *&v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0478, &unk_23D8E5AD0);
  *(&v46 + 1) = *(&v45 + 1);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF3C0, &qword_23D8E3880);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0480, &qword_23D8E5AE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0488, &qword_23D8E5AE8);
  type metadata accessor for SSMoreMenuRow(255, a2, a3, v6);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  sub_23D8DD020();
  sub_23D835AD0(&qword_27E2F0490, &qword_27E2F0488, &qword_23D8E5AE8, MEMORY[0x277D83980]);
  *&v39 = sub_23D8D0EF0();
  sub_23D8DE4E0();
  swift_getTupleTypeMetadata2();
  sub_23D8DE6D0();
  sub_23D8DAD28(&qword_27E2EF3D0, &qword_27E2EF3C0, &qword_23D8E3880, sub_23D897B5C);
  swift_getWitnessTable();
  sub_23D8DDBF0();
  swift_getWitnessTable();
  *&v37 = swift_getOpaqueTypeMetadata2();
  *(&v37 + 1) = sub_23D8DD8B0();
  *&v38 = swift_getOpaqueTypeConformance2();
  *(&v38 + 1) = sub_23D8DAF50(&qword_27E2EF408, MEMORY[0x277CDE310], MEMORY[0x277CDE308]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF430, &qword_23D8E3920);
  sub_23D8DD020();
  sub_23D8DD020();
  sub_23D8DD960();
  sub_23D8DD020();
  *&v47 = sub_23D8DD6C0();
  swift_getTupleTypeMetadata();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  sub_23D8DE390();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF088, &qword_23D8E3190);
  v7 = sub_23D8DD020();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  v15 = type metadata accessor for SSHUDView(0, v21, v22, v14);
  sub_23D8D2B1C(v15, &v45);
  v41 = v49;
  v42 = v50;
  v43 = v51;
  v44 = v52;
  v37 = v45;
  v38 = v46;
  v39 = v47;
  v40 = v48;
  sub_23D8D2C60(v15, v11);
  v23 = MEMORY[0x277CE1138];
  WitnessTable = swift_getWitnessTable();
  v17 = sub_23D835AD0(&qword_27E2EF080, &qword_27E2EF088, &qword_23D8E3190, MEMORY[0x277CE0868]);
  v36[2] = WitnessTable;
  v36[3] = v17;
  v18 = swift_getWitnessTable();
  sub_23D8361EC();
  v19 = *(v8 + 8);
  v19(v11, v7);
  v32 = v41;
  v33 = v42;
  v34 = v43;
  v35 = v44;
  v28 = v37;
  v29 = v38;
  v30 = v39;
  v31 = v40;
  v36[0] = &v28;
  (*(v8 + 16))(v11, v13, v7);
  v36[1] = v11;
  sub_23D83C67C(&v37, &v45, &qword_27E2F0460, &qword_23D8E5AB8);
  v27[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0460, &qword_23D8E5AB8);
  v27[1] = v7;
  v25 = sub_23D835AD0(&qword_27E2F0538, &qword_27E2F0460, &qword_23D8E5AB8, v23);
  v26 = v18;
  sub_23D8CF87C(v36, 2uLL, v27);
  sub_23D83C6E4(&v37, &qword_27E2F0460, &qword_23D8E5AB8);
  v19(v13, v7);
  v19(v11, v7);
  v49 = v32;
  v50 = v33;
  v51 = v34;
  v52 = v35;
  v45 = v28;
  v46 = v29;
  v47 = v30;
  v48 = v31;
  return sub_23D83C6E4(&v45, &qword_27E2F0460, &qword_23D8E5AB8);
}

double sub_23D8D2B1C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_23D8DD420();
  v21 = 1;
  sub_23D8D4968(v3, *(a1 + 16), *(a1 + 24), &v13);
  v26 = v17;
  v27 = v18;
  v28 = v19;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v29[0] = v13;
  v29[1] = v14;
  v29[2] = v15;
  v29[3] = v16;
  v29[4] = v17;
  v29[5] = v18;
  v30 = v19;
  sub_23D83C67C(&v22, &v12, &qword_27E2F0610, &qword_23D8E5DF0);
  sub_23D83C6E4(v29, &qword_27E2F0610, &qword_23D8E5DF0);
  *&v20[55] = v25;
  *&v20[71] = v26;
  *&v20[87] = v27;
  *&v20[103] = v28;
  *&v20[7] = v22;
  *&v20[23] = v23;
  *&v20[39] = v24;
  v7 = *&v20[32];
  *(a2 + 65) = *&v20[48];
  v8 = *&v20[80];
  *(a2 + 81) = *&v20[64];
  *(a2 + 97) = v8;
  *(a2 + 112) = *&v20[95];
  result = *v20;
  v10 = *&v20[16];
  *(a2 + 17) = *v20;
  *(a2 + 33) = v10;
  v11 = v21;
  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  *(a2 + 49) = v7;
  return result;
}

uint64_t sub_23D8D2C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0468, &qword_23D8E5AC0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0470, &qword_23D8E5AC8);
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0478, &unk_23D8E5AD0);
  v37 = v35;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF3C0, &qword_23D8E3880);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0480, &qword_23D8E5AE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0488, &qword_23D8E5AE8);
  v3 = *(a1 + 16);
  v20 = *(a1 + 24);
  v21 = v3;
  type metadata accessor for SSMoreMenuRow(255, v3, v20, v4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  sub_23D8DD020();
  sub_23D835AD0(&qword_27E2F0490, &qword_27E2F0488, &qword_23D8E5AE8, MEMORY[0x277D83980]);
  v33 = sub_23D8D0EF0();
  sub_23D8DE4E0();
  swift_getTupleTypeMetadata2();
  sub_23D8DE6D0();
  sub_23D8DAD28(&qword_27E2EF3D0, &qword_27E2EF3C0, &qword_23D8E3880, sub_23D897B5C);
  swift_getWitnessTable();
  sub_23D8DDBF0();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v30 = sub_23D8DD8B0();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = sub_23D8DAF50(&qword_27E2EF408, MEMORY[0x277CDE310], MEMORY[0x277CDE308]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF430, &qword_23D8E3920);
  sub_23D8DD020();
  sub_23D8DD020();
  sub_23D8DD960();
  sub_23D8DD020();
  v38 = sub_23D8DD6C0();
  swift_getTupleTypeMetadata();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  v5 = sub_23D8DE390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF088, &qword_23D8E3190);
  v9 = sub_23D8DD020();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v24 = v21;
  v25 = v20;
  v26 = v22;
  sub_23D8DD420();
  sub_23D8DE380();
  sub_23D8DDA70();
  WitnessTable = swift_getWitnessTable();
  sub_23D8DDF90();

  (*(v6 + 8))(v8, v5);
  v17 = sub_23D835AD0(&qword_27E2EF080, &qword_27E2EF088, &qword_23D8E3190, MEMORY[0x277CE0868]);
  v27 = WitnessTable;
  v28 = v17;
  swift_getWitnessTable();
  sub_23D8361EC();
  v18 = *(v10 + 8);
  v18(v13, v9);
  sub_23D8361EC();
  return (v18)(v15, v9);
}

id sub_23D8D325C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SSHUDView(0, a2, a3, a4);
  result = [*(a1 + *(v5 + 60) + 8) stopType];
  if (result)
  {
    MEMORY[0x28223BE20](result);
    sub_23D8DE640();
    sub_23D8DCE60();

    return sub_23D8D3338(v5);
  }

  return result;
}

uint64_t sub_23D8D3338(uint64_t a1)
{
  v2 = sub_23D8D0298(a1);
  [v2 invalidate];

  sub_23D8D02EC(0, a1);

  return sub_23D8D0240(8, a1);
}

void sub_23D8D339C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = &byte_284FD4DD8;
  for (i = qword_284FD4DC8; i; --i)
  {
    v7 = *v5++;
    if (v7 == *a2)
    {
      v9 = *a2;
      type metadata accessor for SSHUDView(0, a4, a5, a4);
      v8 = swift_unknownObjectRetain();
      sub_23D8DA51C(v8, &v9);
      swift_unknownObjectRelease();
      return;
    }
  }
}

uint64_t sub_23D8D3438(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  (*(v3 + 16))(v5, v1, a1);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = *(a1 + 16);
  (*(v3 + 32))(v8 + v7, v5, a1);
  aBlock[4] = sub_23D8DA848;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D87DA4C;
  aBlock[3] = &block_descriptor_7;
  v9 = _Block_copy(aBlock);

  v10 = [v6 scheduledTimerWithTimeInterval:1 repeats:v9 block:1.0];
  _Block_release(v9);
  return sub_23D8D02EC(v10, a1);
}

uint64_t sub_23D8D3604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a1;
  v61 = a4;
  v6 = sub_23D8DD090();
  MEMORY[0x28223BE20](v6);
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0460, &qword_23D8E5AB8);
  v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0468, &qword_23D8E5AC0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0470, &qword_23D8E5AC8);
  v74 = v8;
  v75 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0478, &unk_23D8E5AD0);
  v76 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF3C0, &qword_23D8E3880);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0480, &qword_23D8E5AE0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0488, &qword_23D8E5AE8);
  type metadata accessor for SSMoreMenuRow(255, a2, a3, v11);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  v12 = sub_23D8DD020();
  v13 = sub_23D835AD0(&qword_27E2F0490, &qword_27E2F0488, &qword_23D8E5AE8, MEMORY[0x277D83980]);
  v14 = sub_23D8D0EF0();
  v68 = v10;
  v69 = &type metadata for SSActions;
  v70 = v12;
  v71 = v13;
  v72 = v14;
  sub_23D8DE4E0();
  swift_getTupleTypeMetadata2();
  v15 = sub_23D8DE6D0();
  v16 = sub_23D8DAD28(&qword_27E2EF3D0, &qword_27E2EF3C0, &qword_23D8E3880, sub_23D897B5C);
  WitnessTable = swift_getWitnessTable();
  v68 = v9;
  v69 = v15;
  v70 = v16;
  v71 = WitnessTable;
  v18 = sub_23D8DDBF0();
  v19 = swift_getWitnessTable();
  v68 = v18;
  v69 = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v21 = sub_23D8DD8B0();
  v68 = v18;
  v69 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = sub_23D8DAF50(&qword_27E2EF408, MEMORY[0x277CDE310], MEMORY[0x277CDE308]);
  v68 = OpaqueTypeMetadata2;
  v69 = v21;
  v70 = OpaqueTypeConformance2;
  v71 = v23;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF430, &qword_23D8E3920);
  sub_23D8DD020();
  sub_23D8DD020();
  sub_23D8DD960();
  sub_23D8DD020();
  v77 = sub_23D8DD6C0();
  swift_getTupleTypeMetadata();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  sub_23D8DE390();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF088, &qword_23D8E3190);
  sub_23D8DD020();
  swift_getTupleTypeMetadata2();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  v24 = sub_23D8DE410();
  type metadata accessor for AXSpeakStopType(255);
  v26 = v25;
  v27 = swift_getWitnessTable();
  v28 = sub_23D8DAF50(&qword_27E2ECF38, type metadata accessor for AXSpeakStopType, &unk_23D8E0188);
  v73 = v24;
  v74 = v26;
  v75 = v27;
  v76 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v73 = v24;
  v74 = v26;
  v75 = v27;
  v76 = v28;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = sub_23D8D0F44();
  v73 = v29;
  v74 = &type metadata for SSActions;
  v75 = v30;
  v76 = v31;
  swift_getOpaqueTypeMetadata2();
  sub_23D8DD020();
  sub_23D8DD020();
  v32 = sub_23D8DD020();
  v73 = v29;
  v74 = &type metadata for SSActions;
  v75 = v30;
  v76 = v31;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = MEMORY[0x277CE0790];
  v66 = v33;
  v67 = MEMORY[0x277CE0790];
  v64 = swift_getWitnessTable();
  v65 = v34;
  v62 = swift_getWitnessTable();
  v63 = MEMORY[0x277CDF918];
  v57 = v32;
  v35 = swift_getWitnessTable();
  v36 = sub_23D8DAF50(&qword_27E2EE3D0, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
  v73 = v32;
  v74 = v6;
  v37 = v6;
  v75 = v35;
  v76 = v36;
  v58 = MEMORY[0x277CE77E8];
  v38 = swift_getOpaqueTypeMetadata2();
  v39 = *(v38 - 8);
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v57 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v44 = &v57 - v43;
  v45 = *(v37 + 20);
  v46 = *MEMORY[0x277CE0118];
  v47 = sub_23D8DD4E0();
  v48 = v59;
  (*(*(v47 - 8) + 104))(&v59[v45], v46, v47);
  __asm { FMOV            V0.2D, #20.0 }

  *v48 = _Q0;
  v54 = swift_checkMetadataState();
  sub_23D8DDCC0();
  sub_23D868410(v48);
  v73 = v54;
  v74 = v37;
  v75 = v35;
  v76 = v36;
  swift_getOpaqueTypeConformance2();
  sub_23D8361EC();
  v55 = *(v39 + 8);
  v55(v42, v38);
  sub_23D8361EC();
  return (v55)(v44, v38);
}

uint64_t sub_23D8D3E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v70 = a2;
  v71 = a1;
  v72 = a5;
  v59 = sub_23D8DE150();
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_23D8DCCB0();
  v68 = *(v69 - 8);
  v8 = MEMORY[0x28223BE20](v69);
  v67 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v66 = &v56 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0460, &qword_23D8E5AB8);
  v86 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0468, &qword_23D8E5AC0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0470, &qword_23D8E5AC8);
  v87 = v11;
  v88 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0478, &unk_23D8E5AD0);
  v89 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF3C0, &qword_23D8E3880);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0480, &qword_23D8E5AE0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0488, &qword_23D8E5AE8);
  type metadata accessor for SSMoreMenuRow(255, a3, a4, v14);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  v15 = sub_23D8DD020();
  v16 = sub_23D835AD0(&qword_27E2F0490, &qword_27E2F0488, &qword_23D8E5AE8, MEMORY[0x277D83980]);
  v17 = sub_23D8D0EF0();
  v81 = v13;
  v82 = &type metadata for SSActions;
  v83 = v15;
  v84 = v16;
  v85 = v17;
  sub_23D8DE4E0();
  swift_getTupleTypeMetadata2();
  v18 = sub_23D8DE6D0();
  v19 = sub_23D8DAD28(&qword_27E2EF3D0, &qword_27E2EF3C0, &qword_23D8E3880, sub_23D897B5C);
  WitnessTable = swift_getWitnessTable();
  v81 = v12;
  v82 = v18;
  v83 = v19;
  v84 = WitnessTable;
  v21 = sub_23D8DDBF0();
  v22 = swift_getWitnessTable();
  v81 = v21;
  v82 = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v24 = sub_23D8DD8B0();
  v81 = v21;
  v82 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_23D8DAF50(&qword_27E2EF408, MEMORY[0x277CDE310], MEMORY[0x277CDE308]);
  v81 = OpaqueTypeMetadata2;
  v82 = v24;
  v83 = OpaqueTypeConformance2;
  v84 = v26;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF430, &qword_23D8E3920);
  sub_23D8DD020();
  sub_23D8DD020();
  sub_23D8DD960();
  sub_23D8DD020();
  v90 = sub_23D8DD6C0();
  swift_getTupleTypeMetadata();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  sub_23D8DE390();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF088, &qword_23D8E3190);
  sub_23D8DD020();
  swift_getTupleTypeMetadata2();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  v27 = sub_23D8DE410();
  type metadata accessor for AXSpeakStopType(255);
  v29 = v28;
  v30 = swift_getWitnessTable();
  v31 = sub_23D8DAF50(&qword_27E2ECF38, type metadata accessor for AXSpeakStopType, &unk_23D8E0188);
  v86 = v27;
  v87 = v29;
  v88 = v30;
  v89 = v31;
  v32 = swift_getOpaqueTypeMetadata2();
  v86 = v27;
  v87 = v29;
  v88 = v30;
  v89 = v31;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = sub_23D8D0F44();
  v64 = v32;
  v86 = v32;
  v87 = &type metadata for SSActions;
  v62 = v33;
  v88 = v33;
  v89 = v34;
  v60 = v34;
  swift_getOpaqueTypeMetadata2();
  v61 = sub_23D8DD020();
  v63 = sub_23D8DD020();
  v35 = sub_23D8DD020();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED8B8, &qword_23D8E2B80);
  v65 = v35;
  v36 = sub_23D8DD020();
  v37 = *(v36 - 8);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v56 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v42 = &v56 - v41;
  v43 = v66;
  sub_23D8CFF44(v66);
  v44 = v68;
  v45 = v67;
  v46 = v69;
  (*(v68 + 104))(v67, *MEMORY[0x277CDF3C0], v69);
  v47 = sub_23D8DCCA0();
  v48 = *(v44 + 8);
  v48(v45, v46);
  v48(v43, v46);
  if (v47)
  {
    (*(v58 + 104))(v57, *MEMORY[0x277CE0EE0], v59);
    v49 = sub_23D8DE280();
  }

  else
  {
    v49 = sub_23D8DE240();
  }

  v81 = v49;
  sub_23D8DD9E0();
  v86 = v64;
  v87 = &type metadata for SSActions;
  v88 = v62;
  v89 = v60;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = MEMORY[0x277CE0790];
  v79 = v50;
  v80 = MEMORY[0x277CE0790];
  v77 = swift_getWitnessTable();
  v78 = v51;
  v75 = swift_getWitnessTable();
  v76 = MEMORY[0x277CDF918];
  v52 = swift_getWitnessTable();
  sub_23D8DDCF0();

  v53 = sub_23D835AD0(&qword_27E2ED8B0, &qword_27E2ED8B8, &qword_23D8E2B80, MEMORY[0x277CE0728]);
  v73 = v52;
  v74 = v53;
  swift_getWitnessTable();
  sub_23D8361EC();
  v54 = *(v37 + 8);
  v54(v40, v36);
  sub_23D8361EC();
  return (v54)(v42, v36);
}

unint64_t sub_23D8D4888()
{
  result = qword_27E2F04A8;
  if (!qword_27E2F04A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F04A8);
  }

  return result;
}

uint64_t sub_23D8D4968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v75 = a4;
  v79 = sub_23D8DCCB0();
  v78 = *(v79 - 8);
  v7 = MEMORY[0x28223BE20](v79);
  v76 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v70 - v9;
  v11 = sub_23D8DE2D0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SSHUDView(0, a2, a3, v15);
  v17 = [*(a1 + *(v16 + 60) + 8) currentAppTitle];
  if (v17)
  {

    v18 = [*(a1 + *(v16 + 60) + 8) currentAppBundleId];
    if (v18)
    {
      v19 = v18;
      v20 = sub_23D8DE870();
      v22 = v21;

      v23.value._countAndFlagsBits = v20;
      v23.value._object = v22;
      iconForBundleId(_:)(v23);
      sub_23D8DE2B0();
    }

    else
    {
      [objc_allocWithZone(MEMORY[0x277D755B8]) init];
      sub_23D8DE2B0();
    }

    (*(v12 + 104))(v14, *MEMORY[0x277CE0FE0], v11);
    v82 = sub_23D8DE300();

    (*(v12 + 8))(v14, v11);
    sub_23D8DE5F0();
    sub_23D8DCDB0();
    LOBYTE(v89) = 1;
    v74 = v98;
    v73 = v99;
    v72 = v100;
    v81 = v101;
    v71 = v102;
    v70 = v103;
    v80 = 1;
  }

  else
  {
    v82 = 0;
    v74 = 0;
    v73 = 0;
    v72 = 0;
    v81 = 0;
    v71 = 0;
    v70 = 0;
    v80 = 0;
  }

  v24 = [*(a1 + *(v16 + 60) + 8) currentAppTitle];
  v77 = a1;
  if (v24)
  {
    v25 = v24;
    v26 = sub_23D8DE870();
    v28 = v27;
LABEL_13:

    goto LABEL_14;
  }

  v28 = 0x800000023D8E6830;
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v26 = 0xD000000000000017;
  if (qword_27E2F3C80)
  {
    v29 = qword_27E2F3C80;
    v30 = sub_23D8DE830();
    v31 = sub_23D8DE830();
    v25 = [v29 localizedStringForKey:v30 value:0 table:v31];

    v26 = sub_23D8DE870();
    v28 = v32;

    goto LABEL_13;
  }

LABEL_14:
  v89 = v26;
  v90 = v28;
  v89 = sub_23D8DE960();
  v90 = v33;
  sub_23D83CB18();
  v34 = sub_23D8DDCB0();
  v36 = v35;
  v38 = v37;
  sub_23D8DDB50();
  v39 = sub_23D8DDC40();
  v41 = v40;
  v43 = v42;

  sub_23D83CB6C(v34, v36, v38 & 1);

  v44 = sub_23D8DDC20();
  v46 = v45;
  v48 = v47;
  sub_23D83CB6C(v39, v41, v43 & 1);

  sub_23D8CFF44(v10);
  v49 = v78;
  v50 = v76;
  v51 = v79;
  (*(v78 + 104))(v76, *MEMORY[0x277CDF3C0], v79);
  LOBYTE(v34) = sub_23D8DCCA0();
  v52 = *(v49 + 8);
  v52(v50, v51);
  v52(v10, v51);
  if (v34)
  {
    v53 = sub_23D8DE240();
  }

  else
  {
    v53 = sub_23D8DE220();
  }

  v89 = v53;
  v54 = sub_23D8DDC10();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  sub_23D83CB6C(v44, v46, v48 & 1);

  v84 = v82;
  *&v85 = v80;
  v61 = v74;
  *(&v85 + 1) = v74;
  v62 = v73;
  *&v86 = v73;
  v63 = v72;
  *(&v86 + 1) = v72;
  *&v87 = v81;
  v64 = v71;
  v65 = v70;
  *(&v87 + 1) = v71;
  v88 = v70;
  v83 = v58 & 1;
  v66 = v87;
  v67 = v75;
  *(v75 + 32) = v86;
  *(v67 + 48) = v66;
  v68 = v85;
  *v67 = v84;
  *(v67 + 16) = v68;
  *(v67 + 64) = v65;
  *(v67 + 72) = v54;
  *(v67 + 80) = v56;
  *(v67 + 88) = v58 & 1;
  *(v67 + 96) = v60;
  sub_23D83C67C(&v84, &v89, &qword_27E2F0618, &qword_23D8E5DF8);
  sub_23D834028(v54, v56, v58 & 1);

  sub_23D83CB6C(v54, v56, v58 & 1);

  v89 = v82;
  v90 = 0;
  v91 = v80;
  v92 = v61;
  v93 = v62;
  v94 = v63;
  v95 = v81;
  v96 = v64;
  v97 = v65;
  return sub_23D83C6E4(&v89, &qword_27E2F0618, &qword_23D8E5DF8);
}

uint64_t sub_23D8D50EC@<X0>(void (*a1)(char *, uint64_t)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v62 = a2;
  v63 = a1;
  v64 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF3C0, &qword_23D8E3880);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0480, &qword_23D8E5AE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0488, &qword_23D8E5AE8);
  type metadata accessor for SSMoreMenuRow(255, a1, a2, v5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  sub_23D8DD020();
  sub_23D835AD0(&qword_27E2F0490, &qword_27E2F0488, &qword_23D8E5AE8, MEMORY[0x277D83980]);
  v88 = sub_23D8D0EF0();
  sub_23D8DE4E0();
  swift_getTupleTypeMetadata2();
  sub_23D8DE6D0();
  sub_23D8DAD28(&qword_27E2EF3D0, &qword_27E2EF3C0, &qword_23D8E3880, sub_23D897B5C);
  swift_getWitnessTable();
  sub_23D8DDBF0();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v55 = sub_23D8DD8B0();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = sub_23D8DAF50(&qword_27E2EF408, MEMORY[0x277CDE310], MEMORY[0x277CDE308]);
  v84 = OpaqueTypeMetadata2;
  v85 = v55;
  v86 = OpaqueTypeConformance2;
  v87 = v53;
  v51 = MEMORY[0x277CDEF98];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF430, &qword_23D8E3920);
  v52 = sub_23D8DD020();
  v57 = sub_23D8DD020();
  sub_23D8DD960();
  sub_23D8DD020();
  v6 = sub_23D8DD6C0();
  v60 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v58 = &v46 - v10;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0478, &unk_23D8E5AD0);
  v11 = MEMORY[0x28223BE20](v61);
  v69 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - v13;
  v66 = &v46 - v13;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0470, &qword_23D8E5AC8);
  v15 = MEMORY[0x28223BE20](v59);
  v67 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v65 = &v46 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v46 - v20;
  v49 = &v46 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v46 - v22;
  v68 = &v46 - v22;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0468, &qword_23D8E5AC0);
  v24 = MEMORY[0x28223BE20](v50);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v46 - v27;
  v30 = type metadata accessor for SSHUDView(0, v63, v62, v29);
  v47 = v28;
  sub_23D8D5B48(v30, v28);
  sub_23D8D6398(v30, &unk_284FD8950, sub_23D8DB638, sub_23D8D7B40, v23);
  sub_23D8D5FA0(v30, v14);
  sub_23D8D6398(v30, &unk_284FD8900, sub_23D8DB54C, sub_23D8D7B80, v21);
  sub_23D8D6718(v30, v9);
  v84 = OpaqueTypeMetadata2;
  v85 = v55;
  v86 = OpaqueTypeConformance2;
  v87 = v53;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = sub_23D835AD0(&qword_27E2EF428, &qword_27E2EF430, &qword_23D8E3920, MEMORY[0x277CE0868]);
  v82 = v31;
  v83 = v32;
  WitnessTable = swift_getWitnessTable();
  v81 = MEMORY[0x277CDFC48];
  v33 = swift_getWitnessTable();
  v34 = sub_23D8DAF50(&qword_27E2ED4D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v78 = v33;
  v79 = v34;
  v76 = swift_getWitnessTable();
  v77 = v76;
  v35 = v6;
  v36 = swift_getWitnessTable();
  v37 = v58;
  sub_23D8361EC();
  v38 = v60;
  v63 = *(v60 + 8);
  v63(v9, v6);
  v48 = v26;
  sub_23D83C67C(v28, v26, &qword_27E2F0468, &qword_23D8E5AC0);
  v84 = v26;
  v39 = v65;
  sub_23D83C67C(v68, v65, &qword_27E2F0470, &qword_23D8E5AC8);
  v85 = v39;
  v40 = v69;
  sub_23D83C67C(v66, v69, &qword_27E2F0478, &unk_23D8E5AD0);
  v86 = v40;
  v41 = v49;
  v42 = v67;
  sub_23D83C67C(v49, v67, &qword_27E2F0470, &qword_23D8E5AC8);
  v87 = v42;
  (*(v38 + 16))(v9, v37, v6);
  v88 = v9;
  v75[0] = v50;
  v75[1] = v59;
  v75[2] = v61;
  v75[3] = v59;
  v75[4] = v6;
  v70 = sub_23D8DABE4();
  v43 = sub_23D8DAD28(&qword_27E2F0588, &qword_27E2F0470, &qword_23D8E5AC8, sub_23D8DAF98);
  v71 = v43;
  v72 = sub_23D8DB110();
  v73 = v43;
  v74 = v36;
  sub_23D8CF87C(&v84, 5uLL, v75);
  v44 = v63;
  v63(v37, v35);
  sub_23D83C6E4(v41, &qword_27E2F0470, &qword_23D8E5AC8);
  sub_23D83C6E4(v66, &qword_27E2F0478, &unk_23D8E5AD0);
  sub_23D83C6E4(v68, &qword_27E2F0470, &qword_23D8E5AC8);
  sub_23D83C6E4(v47, &qword_27E2F0468, &qword_23D8E5AC0);
  v44(v9, v35);
  sub_23D83C6E4(v67, &qword_27E2F0470, &qword_23D8E5AC8);
  sub_23D83C6E4(v69, &qword_27E2F0478, &unk_23D8E5AD0);
  sub_23D83C6E4(v65, &qword_27E2F0470, &qword_23D8E5AC8);
  return sub_23D83C6E4(v48, &qword_27E2F0468, &qword_23D8E5AC0);
}

uint64_t sub_23D8D5B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v44 = a2;
  v5 = sub_23D8DD080();
  v6 = *(v5 - 8);
  v42 = v5;
  v43 = v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0578, &qword_23D8E5D48);
  v40 = *(v12 - 8);
  v41 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  (*(v10 + 16))(&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = swift_allocObject();
  v18 = *(a1 + 16);
  v17 = *(a1 + 24);
  *(v16 + 16) = v18;
  *(v16 + 24) = v17;
  (*(v10 + 32))(v16 + v15, &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v45 = v18;
  v46 = v17;
  v47 = v3;
  sub_23D8DE360();
  sub_23D8DD070();
  sub_23D835AD0(&qword_27E2F0580, &qword_27E2F0578, &qword_23D8E5D48, MEMORY[0x277CDF028]);
  sub_23D8DAF50(&qword_27E2ED4F0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v19 = v44;
  v21 = v41;
  v20 = v42;
  sub_23D8DDD10();
  (*(v43 + 8))(v9, v20);
  (*(v40 + 8))(v14, v21);
  v22 = sub_23D8DE260();
  *(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0570, &qword_23D8E5D40) + 36)) = v22;
  v23 = v19;
  sub_23D8DDB60();
  sub_23D8DDAC0();
  v24 = sub_23D8DDB70();

  KeyPath = swift_getKeyPath();
  v26 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0560, &qword_23D8E5D38) + 36));
  *v26 = KeyPath;
  v26[1] = v24;
  sub_23D8DE5F0();
  sub_23D8DCDB0();
  v27 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0550, &qword_23D8E5D30) + 36));
  v28 = v49;
  *v27 = v48;
  v27[1] = v28;
  v27[2] = v50;
  LOBYTE(KeyPath) = sub_23D8DDA30();
  sub_23D8DCC20();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0468, &qword_23D8E5AC0);
  v38 = v23 + *(result + 36);
  *v38 = KeyPath;
  *(v38 + 8) = v30;
  *(v38 + 16) = v32;
  *(v38 + 24) = v34;
  *(v38 + 32) = v36;
  *(v38 + 40) = 0;
  return result;
}

double sub_23D8D5FA0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  v5 = sub_23D8DD080();
  v6 = *(v5 - 8);
  v33 = v5;
  v34 = v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F05A0, &qword_23D8E5D58);
  v31 = *(v12 - 8);
  v32 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  (*(v10 + 16))(&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = swift_allocObject();
  v18 = *(a1 + 16);
  v17 = *(a1 + 24);
  *(v16 + 16) = v18;
  *(v16 + 24) = v17;
  (*(v10 + 32))(v16 + v15, &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v36 = v18;
  v37 = v17;
  v38 = v3;
  sub_23D8DE360();
  sub_23D8DD070();
  sub_23D835AD0(&qword_27E2F05A8, &qword_27E2F05A0, &qword_23D8E5D58, MEMORY[0x277CDF028]);
  sub_23D8DAF50(&qword_27E2ED4F0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v19 = v35;
  v21 = v32;
  v20 = v33;
  sub_23D8DDD10();
  (*(v34 + 8))(v9, v20);
  (*(v31 + 8))(v14, v21);
  v22 = sub_23D8DE260();
  *(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0598, &qword_23D8E5D50) + 36)) = v22;
  v23 = v19;
  sub_23D8DDAA0();
  sub_23D8DDAC0();
  v24 = sub_23D8DDB70();

  KeyPath = swift_getKeyPath();
  v26 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0470, &qword_23D8E5AC8) + 36));
  *v26 = KeyPath;
  v26[1] = v24;
  sub_23D8DE5F0();
  sub_23D8DCDB0();
  v27 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0478, &unk_23D8E5AD0) + 36));
  v28 = v40;
  *v27 = v39;
  v27[1] = v28;
  result = *&v41;
  v27[2] = v41;
  return result;
}

uint64_t sub_23D8D6398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28[2] = a3;
  v28[3] = a4;
  v28[1] = a2;
  v6 = v5;
  v30 = a5;
  v29 = sub_23D8DD080();
  v8 = *(v29 - 8);
  v9 = MEMORY[0x28223BE20](v29);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F05A0, &qword_23D8E5D58);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v28 - v16;
  (*(v12 + 16))(v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v6, a1);
  v18 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = *(a1 + 16);
  (*(v12 + 32))(v19 + v18, v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_23D8DE360();
  sub_23D8DD070();
  sub_23D835AD0(&qword_27E2F05A8, &qword_27E2F05A0, &qword_23D8E5D58, MEMORY[0x277CDF028]);
  sub_23D8DAF50(&qword_27E2ED4F0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v21 = v29;
  v20 = v30;
  sub_23D8DDD10();
  (*(v8 + 8))(v11, v21);
  (*(v15 + 8))(v17, v14);
  v22 = sub_23D8DE260();
  *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0598, &qword_23D8E5D50) + 36)) = v22;
  v23 = v20;
  sub_23D8DDB50();
  sub_23D8DDAC0();
  v24 = sub_23D8DDB70();

  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0470, &qword_23D8E5AC8);
  v27 = (v23 + *(result + 36));
  *v27 = KeyPath;
  v27[1] = v24;
  return result;
}

uint64_t sub_23D8D6718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v104 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v102 = v3;
  v103 = &v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23D8DD8B0();
  v126 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v124 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23D8DE6B0();
  v122 = *(v6 - 8);
  v123 = v6;
  MEMORY[0x28223BE20](v6);
  v121 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF3C0, &qword_23D8E3880);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0480, &qword_23D8E5AE0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0488, &qword_23D8E5AE8);
  v10 = *(a1 + 16);
  v108 = *(a1 + 24);
  v109 = v10;
  type metadata accessor for SSMoreMenuRow(255, v10, v108, v11);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  v12 = sub_23D8DD020();
  v13 = sub_23D835AD0(&qword_27E2F0490, &qword_27E2F0488, &qword_23D8E5AE8, MEMORY[0x277D83980]);
  v14 = sub_23D8D0EF0();
  v170 = v9;
  v171 = &type metadata for SSActions;
  v172 = v12;
  v173 = v13;
  v174 = v14;
  sub_23D8DE4E0();
  swift_getTupleTypeMetadata2();
  v15 = sub_23D8DE6D0();
  v16 = sub_23D8DAD28(&qword_27E2EF3D0, &qword_27E2EF3C0, &qword_23D8E3880, sub_23D897B5C);
  WitnessTable = swift_getWitnessTable();
  v119 = v8;
  v170 = v8;
  v171 = v15;
  v107 = v16;
  v172 = v16;
  v173 = WitnessTable;
  v105 = WitnessTable;
  v18 = sub_23D8DDBF0();
  v114 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v110 = &v100 - v19;
  v20 = swift_getWitnessTable();
  v170 = v18;
  v171 = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v116 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v113 = &v100 - v22;
  v170 = v18;
  v171 = v20;
  v106 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = sub_23D8DAF50(&qword_27E2EF408, MEMORY[0x277CDE310], MEMORY[0x277CDE308]);
  v139 = OpaqueTypeMetadata2;
  v140 = v4;
  v170 = OpaqueTypeMetadata2;
  v171 = v4;
  v137 = v24;
  v138 = OpaqueTypeConformance2;
  v172 = OpaqueTypeConformance2;
  v173 = v24;
  v25 = swift_getOpaqueTypeMetadata2();
  v115 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v112 = &v100 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF430, &qword_23D8E3920);
  v117 = v25;
  v27 = sub_23D8DD020();
  v118 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v111 = &v100 - v28;
  v133 = v29;
  v30 = sub_23D8DD020();
  v125 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v120 = &v100 - v31;
  sub_23D8DD960();
  v136 = v30;
  v32 = sub_23D8DD020();
  v129 = *(v32 - 8);
  v33 = MEMORY[0x28223BE20](v32);
  v127 = &v100 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v128 = &v100 - v35;
  v36 = sub_23D8DD6C0();
  v131 = *(v36 - 8);
  v132 = v36;
  MEMORY[0x28223BE20](v36);
  v130 = &v100 - v37;
  v135 = a1;
  v38 = v141;
  sub_23D8DA65C(a1);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  v145 = v109;
  v146 = v108;
  v147 = v38;
  v142 = v109;
  v143 = v108;
  v144 = v38;
  if (v170)
  {
    v39 = v109;
    v40 = v108;
    v100 = &v100;
    v101 = v32;
    v41 = v104;
    v42 = v103;
    v43 = v135;
    (*(v104 + 16))(v103, v141, v135);
    v44 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = v39;
    *(v45 + 24) = v40;
    (*(v41 + 32))(v45 + v44, v42, v43);
    v46 = v110;
    v32 = v101;
    sub_23D8DDBD0();
    v47 = v121;
    sub_23D8DE6A0();
    v48 = v113;
    sub_23D8DE0D0();
    (*(v122 + 8))(v47, v123);
    (*(v114 + 8))(v46, v18);
    v49 = v124;
    sub_23D8DD8A0();
    v50 = v112;
    v51 = v139;
    v52 = v140;
    v54 = v137;
    v53 = v138;
    sub_23D8DE0E0();
    (*(v126 + 8))(v49, v52);
    (*(v116 + 8))(v48, v51);
    v170 = v51;
    v171 = v52;
    v172 = v53;
    v173 = v54;
    v55 = swift_getOpaqueTypeConformance2();
    v56 = v111;
    v57 = v117;
    sub_23D8DDD80();
    (*(v115 + 8))(v50, v57);
    v58 = sub_23D835AD0(&qword_27E2EF428, &qword_27E2EF430, &qword_23D8E3920, MEMORY[0x277CE0868]);
    v168 = v55;
    v169 = v58;
    v59 = v133;
    v60 = swift_getWitnessTable();
    v61 = v120;
    sub_23D8DE0C0();
    (*(v118 + 8))(v56, v59);
    v62 = v136;
    sub_23D8DA65C(v135);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D8DCB70();

    v166 = v167;
    v170 = SSActions.title.getter(v63);
    v171 = v64;
    v164 = v60;
    v165 = MEMORY[0x277CDFC48];
    v65 = swift_getWitnessTable();
    sub_23D83CB18();
    v66 = v127;
    sub_23D8DDE10();

    (*(v125 + 8))(v61, v62);
    v67 = sub_23D8DAF50(&qword_27E2ED4D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    v162 = v65;
    v163 = v67;
    v68 = swift_getWitnessTable();
    v69 = v128;
    sub_23D8361EC();
    v70 = *(v129 + 8);
    v70(v66, v32);
    sub_23D8361EC();
    v71 = v130;
    sub_23D889670(v66, v32, v32, v68, v68);
  }

  else
  {
    v72 = v110;
    sub_23D8DDBE0();
    v73 = v121;
    sub_23D8DE6A0();
    v74 = v113;
    sub_23D8DE0D0();
    (*(v122 + 8))(v73, v123);
    (*(v114 + 8))(v72, v18);
    v75 = v124;
    sub_23D8DD8A0();
    v76 = v112;
    v77 = v139;
    v78 = v140;
    v80 = v137;
    v79 = v138;
    sub_23D8DE0E0();
    (*(v126 + 8))(v75, v78);
    (*(v116 + 8))(v74, v77);
    v170 = v77;
    v171 = v78;
    v172 = v79;
    v173 = v80;
    v81 = swift_getOpaqueTypeConformance2();
    v82 = v111;
    v83 = v117;
    sub_23D8DDD80();
    (*(v115 + 8))(v76, v83);
    v84 = sub_23D835AD0(&qword_27E2EF428, &qword_27E2EF430, &qword_23D8E3920, MEMORY[0x277CE0868]);
    v152 = v81;
    v153 = v84;
    v85 = v133;
    v86 = swift_getWitnessTable();
    v87 = v120;
    sub_23D8DE0C0();
    (*(v118 + 8))(v82, v85);
    sub_23D8DA65C(v135);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D8DCB70();

    v166 = v167;
    v170 = SSActions.title.getter(v88);
    v171 = v89;
    v150 = v86;
    v151 = MEMORY[0x277CDFC48];
    v90 = v136;
    v91 = swift_getWitnessTable();
    sub_23D83CB18();
    v66 = v127;
    sub_23D8DDE10();

    (*(v125 + 8))(v87, v90);
    v92 = sub_23D8DAF50(&qword_27E2ED4D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    v148 = v91;
    v149 = v92;
    v93 = swift_getWitnessTable();
    v69 = v128;
    sub_23D8361EC();
    v70 = *(v129 + 8);
    v70(v66, v32);
    sub_23D8361EC();
    v71 = v130;
    sub_23D889578(v66, v32, v32, v93, v93);
  }

  v70(v66, v32);
  v70(v69, v32);
  v170 = v139;
  v171 = v140;
  v172 = v138;
  v173 = v137;
  v94 = swift_getOpaqueTypeConformance2();
  v95 = sub_23D835AD0(&qword_27E2EF428, &qword_27E2EF430, &qword_23D8E3920, MEMORY[0x277CE0868]);
  v160 = v94;
  v161 = v95;
  v158 = swift_getWitnessTable();
  v159 = MEMORY[0x277CDFC48];
  v96 = swift_getWitnessTable();
  v97 = sub_23D8DAF50(&qword_27E2ED4D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v156 = v96;
  v157 = v97;
  v154 = swift_getWitnessTable();
  v155 = v154;
  v98 = v132;
  swift_getWitnessTable();
  sub_23D8361EC();
  return (*(v131 + 8))(v71, v98);
}

id sub_23D8D78EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SSHUDView(0, a2, a3, a4);
  if ([*(a1 + *(v5 + 60) + 8) isSpeaking])
  {
    v6 = *(a1 + *(v5 + 60) + 8);

    return [v6 pauseButtonPressed];
  }

  else
  {
    [*(a1 + *(v5 + 60) + 8) playButtonPressedForBundleID:0 sceneID:0 rootAccessibilityElementIdentifier:0];
    v8 = sub_23D8DE670();
    MEMORY[0x28223BE20](v8);
    sub_23D8DCE60();

    sub_23D8D3338(v5);
    return sub_23D8D3438(v5);
  }
}

uint64_t sub_23D8D7A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for SSHUDView(0, a2, a3, a4);
  sub_23D8DA65C(v4);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D8DCB80();
}

uint64_t sub_23D8D7AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  [*(a1 + *(type metadata accessor for SSHUDView(0 a2];
  result = sub_23D8DE2C0();
  *a5 = result;
  return result;
}

uint64_t sub_23D8D7B40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D8DE2C0();
  *a1 = result;
  return result;
}

uint64_t sub_23D8D7B80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D8DE2C0();
  *a1 = result;
  return result;
}

uint64_t sub_23D8D7BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v4 = *(a1 - 8);
  v42 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0488, &qword_23D8E5AE8);
  v46 = v6;
  v7 = *(a1 + 24);
  v8 = *(a1 + 16);
  v39 = type metadata accessor for SSMoreMenuRow(255, v8, v7, v9);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  v10 = sub_23D8DD020();
  v40 = v10;
  v11 = sub_23D835AD0(&qword_27E2F0490, &qword_27E2F0488, &qword_23D8E5AE8, MEMORY[0x277D83980]);
  v45 = v11;
  v44 = sub_23D8D0EF0();
  v57 = v6;
  v58 = &type metadata for SSActions;
  v59 = v10;
  v60 = v11;
  v61 = v44;
  v12 = sub_23D8DE4E0();
  v47 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v37 = (&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v41 = &v35 - v15;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0480, &qword_23D8E5AE0);
  v50 = *(v43 - 8);
  v16 = MEMORY[0x28223BE20](v43);
  v49 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v36 = &v35 - v18;
  v51 = v8;
  v52 = v7;
  v53 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F05B8, &unk_23D8E5D90);
  sub_23D835AD0(&qword_27E2F05C0, &qword_27E2F05B8, &unk_23D8E5D90, MEMORY[0x277CDF038]);
  sub_23D8DE520();
  v57 = &unk_284FD4DE0;
  swift_getKeyPath();
  v19 = v38;
  (*(v4 + 16))(v38, v2, a1);
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v8;
  *(v21 + 24) = v7;
  (*(v4 + 32))(v21 + v20, v19, a1);
  WitnessTable = swift_getWitnessTable();
  v23 = sub_23D835AD0(&qword_27E2ECF10, &qword_27E2ECEF0, "j-", MEMORY[0x277CE0868]);
  v56[3] = WitnessTable;
  v56[4] = v23;
  v34 = swift_getWitnessTable();
  v24 = v37;
  sub_23D8DE4C0();
  v56[2] = v34;
  v25 = swift_getWitnessTable();
  v26 = v41;
  sub_23D8361EC();
  v27 = v47;
  v28 = *(v47 + 8);
  v28(v24, v12);
  v29 = v49;
  v30 = v36;
  v31 = v43;
  (*(v50 + 16))(v49, v36, v43);
  v57 = v29;
  (*(v27 + 16))(v24, v26, v12);
  v58 = v24;
  v56[0] = v31;
  v56[1] = v12;
  v54 = sub_23D8DB2D0();
  v55 = v25;
  sub_23D8CF87C(&v57, 2uLL, v56);
  v28(v26, v12);
  v32 = *(v50 + 8);
  v32(v30, v31);
  v28(v24, v12);
  return (v32)(v49, v31);
}

uint64_t sub_23D8D81D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_23D8DA65C(a1);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  v3 = sub_23D8DE2C0();
  v4 = sub_23D8DE260();
  sub_23D8DDB60();
  sub_23D8DDAC0();
  v5 = sub_23D8DDB70();

  result = swift_getKeyPath();
  *a2 = v3;
  a2[1] = v4;
  a2[2] = result;
  a2[3] = v5;
  return result;
}

uint64_t sub_23D8D8404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0480, &qword_23D8E5AE0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0488, &qword_23D8E5AE8);
  type metadata accessor for SSMoreMenuRow(255, a2, a3, v6);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  v18[1] = v5;
  v18[2] = &type metadata for SSActions;
  v18[3] = sub_23D8DD020();
  v18[4] = sub_23D835AD0(&qword_27E2F0490, &qword_27E2F0488, &qword_23D8E5AE8, MEMORY[0x277D83980]);
  v18[5] = sub_23D8D0EF0();
  sub_23D8DE4E0();
  swift_getTupleTypeMetadata2();
  v7 = sub_23D8DE6D0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v18 - v12;
  v15 = type metadata accessor for SSHUDView(0, a2, a3, v14);
  sub_23D8D7BC0(v15, v11);
  swift_getWitnessTable();
  sub_23D8361EC();
  v16 = *(v8 + 8);
  v16(v11, v7);
  sub_23D8361EC();
  return (v16)(v13, v7);
}

double sub_23D8D865C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = type metadata accessor for SSHUDView(0, a1, a2, a3);
  sub_23D8D81D0(v5, &v9);
  v6 = v10;
  v7 = v11;
  result = *&v9;
  *a4 = v9;
  *(a4 + 16) = v6;
  *(a4 + 24) = v7;
  return result;
}

uint64_t sub_23D8D86A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for SSHUDView(0, a2, a3, a4);
  sub_23D8DA65C(v4);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  v7[0] = v7[1];
  v5 = swift_unknownObjectRetain();
  sub_23D8DA51C(v5, v7);
  return swift_unknownObjectRelease();
}

uint64_t sub_23D8D8788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  [*(a1 + *(type metadata accessor for SSHUDView(0 a2];
  *&v6 = v6;
  localizedNameFor(speed:)(*&v6);
  sub_23D83CB18();
  result = sub_23D8DDCB0();
  *a5 = result;
  *(a5 + 8) = v8;
  *(a5 + 16) = v9 & 1;
  *(a5 + 24) = v10;
  return result;
}

uint64_t sub_23D8D8808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23D8DD480();
  v6 = type metadata accessor for SSHUDView(0, a2, a3, v5);
  sub_23D8D0144(v6);
  swift_getKeyPath();
  sub_23D8DAF50(&qword_27E2ED008, type metadata accessor for SSStore, &unk_23D8E1DE0);
  sub_23D8DD130();

  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = v10;
  *(v7 + 40) = v11;
  *(v7 + 48) = v12;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v10;
  *(v8 + 40) = v11;
  *(v8 + 48) = v12;
  *(v8 + 49) = 0;

  sub_23D8DE480();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F05D0, &qword_23D8E5DB8);
  sub_23D8D0EF0();
  sub_23D8DB458();
  return sub_23D8DE3B0();
}

uint64_t sub_23D8D8A20()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0488, &qword_23D8E5AE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F05F0, &qword_23D8E5DC8);
  sub_23D835AD0(&qword_27E2F0490, &qword_27E2F0488, &qword_23D8E5AE8, MEMORY[0x277D83980]);
  sub_23D8D0EF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F05E0, &qword_23D8E5DC0);
  sub_23D835AD0(&qword_27E2F05E8, &qword_27E2F05E0, &qword_23D8E5DC0, MEMORY[0x277CE1138]);
  swift_getOpaqueTypeConformance2();
  return sub_23D8DE4C0();
}

uint64_t sub_23D8D8B98(unsigned __int8 *a1)
{
  v2 = sub_23D8DD910();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F05E0, &qword_23D8E5DC0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  LOBYTE(a1) = *a1;
  *v8 = sub_23D8DD420();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F05F8, &unk_23D8E5DD0);
  sub_23D8D8D5C(a1, &v8[*(v9 + 44)]);
  sub_23D8DD900();
  sub_23D835AD0(&qword_27E2F05E8, &qword_27E2F05E0, &qword_23D8E5DC0, MEMORY[0x277CE1138]);
  sub_23D8DDEB0();
  (*(v3 + 8))(v5, v2);
  return sub_23D83C6E4(v8, &qword_27E2F05E0, &qword_23D8E5DC0);
}

uint64_t sub_23D8D8D5C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF758, &qword_23D8E3F98);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v24 = a1;
  v22 = SSActions.title.getter(v10);
  v23 = v11;
  sub_23D83CB18();
  v12 = sub_23D8DDCB0();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v22 = sub_23D8DE2C0();
  sub_23D8DDE40();

  sub_23D83C67C(v9, v7, &qword_27E2EF758, &qword_23D8E3F98);
  *a2 = v12;
  *(a2 + 8) = v14;
  v16 &= 1u;
  *(a2 + 16) = v16;
  *(a2 + 24) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0600, &qword_23D8E5DE0);
  sub_23D83C67C(v7, a2 + *(v19 + 48), &qword_27E2EF758, &qword_23D8E3F98);
  sub_23D834028(v12, v14, v16);

  sub_23D83C6E4(v9, &qword_27E2EF758, &qword_23D8E3F98);
  sub_23D83C6E4(v7, &qword_27E2EF758, &qword_23D8E3F98);
  sub_23D83CB6C(v12, v14, v16);
}

double sub_23D8D9094(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LOBYTE(v9) = *a1;
  v6 = type metadata accessor for SSHUDView(0, a3, a4, a4);
  swift_unknownObjectRetain();
  sub_23D8B4290(&v9, &v14);
  sub_23D8DA65C(v6);
  type metadata accessor for SSMoreMenuRow(0, a3, a4, v7);
  type metadata accessor for SSStore(0);

  swift_getWitnessTable();
  sub_23D8DAF50(&qword_27E2ED008, type metadata accessor for SSStore, &unk_23D8E1DE0);
  sub_23D8DDDF0();

  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  sub_23D8DD020();
  sub_23D835AD0(&qword_27E2ECF10, &qword_27E2ECEF0, "j-", MEMORY[0x277CE0868]);
  swift_getWitnessTable();
  sub_23D8361EC();

  swift_unknownObjectRelease();

  v9 = v14;
  v10 = v15;
  v11 = v16;
  v12 = v17;
  v13 = v18;
  sub_23D8361EC();

  swift_unknownObjectRelease();

  return result;
}

void sub_23D8D934C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SSHUDView(0, a3, a4, a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED120, &qword_23D8E03E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v21 - v12;
  if (sub_23D8D01EC(v7) < 1)
  {
    if (sub_23D8D01EC(v7) <= 0)
    {
      v17 = sub_23D8D0298(v7);
      [v17 invalidate];

      v18 = sub_23D8DEA00();
      (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
      (*(v8 + 16))(v10, a2, v7);
      v19 = (*(v8 + 80) + 48) & ~*(v8 + 80);
      v20 = swift_allocObject();
      *(v20 + 2) = 0;
      *(v20 + 3) = 0;
      *(v20 + 4) = a3;
      *(v20 + 5) = a4;
      (*(v8 + 32))(&v20[v19], v10, v7);
      sub_23D870938(0, 0, v13, &unk_23D8E5CE0, v20);

      sub_23D8D02EC(0, v7);
      sub_23D8D0240(8, v7);
    }
  }

  else
  {
    v14 = (a2 + *(v7 + 48));
    v16 = *v14;
    v15 = v14[1];
    v21[3] = *v14;
    v21[4] = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF350, &qword_23D8E3800);
    sub_23D8DE320();
    if (__OFSUB__(v22, 1))
    {
      __break(1u);
    }

    else
    {
      v21[1] = v16;
      v21[2] = v15;
      v21[0] = v22 - 1;
      sub_23D8DE330();
    }
  }
}

uint64_t sub_23D8D9600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_23D8D9624, 0, 0);
}

uint64_t sub_23D8D9624()
{
  *(v0 + 40) = sub_23D8DE9D0();
  *(v0 + 48) = sub_23D8DE9C0();
  v2 = sub_23D8DE9B0();

  return MEMORY[0x2822009F8](sub_23D8D96BC, v2, v1);
}

uint64_t sub_23D8D96BC()
{
  v1 = v0[3];
  v2 = v0[4];

  v4 = type metadata accessor for SSHUDView(0, v1, v2, v3);
  v0[7] = sub_23D8DA65C(v4);

  return MEMORY[0x2822009F8](sub_23D896738, 0, 0);
}

uint64_t getEnumTagSinglePayload for SSActions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SSActions(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_23D8D98B0(uint64_t a1)
{
  sub_23D8D9C14(319, &qword_27E2ED618, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_23D83475C(319);
    if (v2 <= 0x3F)
    {
      sub_23D851F1C(319, &qword_27E2EF310, MEMORY[0x277D83A90]);
      if (v3 <= 0x3F)
      {
        sub_23D851F1C(319, &qword_27E2ED018, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          sub_23D851F1C(319, &qword_27E2EF318, MEMORY[0x277D83B88]);
          if (v5 <= 0x3F)
          {
            sub_23D897548(319);
            if (v6 <= 0x3F)
            {
              sub_23D8D9C14(319, &qword_27E2EF320, sub_23D8D9C78, MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_23D8DCF20();
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23D8D9A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 56));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23D8D9B50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 56)) = (a2 - 1);
  }

  return result;
}

void sub_23D8D9C14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_23D8D9C78()
{
  result = qword_27E2EF328;
  if (!qword_27E2EF328)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E2EF328);
  }

  return result;
}

uint64_t sub_23D8D9CC4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0460, &qword_23D8E5AB8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0468, &qword_23D8E5AC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0470, &qword_23D8E5AC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0478, &unk_23D8E5AD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF3C0, &qword_23D8E3880);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0480, &qword_23D8E5AE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0488, &qword_23D8E5AE8);
  type metadata accessor for SSMoreMenuRow(255, v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  sub_23D8DD020();
  sub_23D835AD0(&qword_27E2F0490, &qword_27E2F0488, &qword_23D8E5AE8, MEMORY[0x277D83980]);
  sub_23D8D0EF0();
  sub_23D8DE4E0();
  swift_getTupleTypeMetadata2();
  sub_23D8DE6D0();
  sub_23D8DAD28(&qword_27E2EF3D0, &qword_27E2EF3C0, &qword_23D8E3880, sub_23D897B5C);
  swift_getWitnessTable();
  sub_23D8DDBF0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23D8DD8B0();
  swift_getOpaqueTypeConformance2();
  sub_23D8DAF50(&qword_27E2EF408, MEMORY[0x277CDE310], MEMORY[0x277CDE308]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF430, &qword_23D8E3920);
  sub_23D8DD020();
  sub_23D8DD020();
  sub_23D8DD960();
  sub_23D8DD020();
  sub_23D8DD6C0();
  swift_getTupleTypeMetadata();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  sub_23D8DE390();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF088, &qword_23D8E3190);
  sub_23D8DD020();
  swift_getTupleTypeMetadata2();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  sub_23D8DE410();
  type metadata accessor for AXSpeakStopType(255);
  swift_getWitnessTable();
  sub_23D8DAF50(&qword_27E2ECF38, type metadata accessor for AXSpeakStopType, &unk_23D8E0188);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_23D8D0F44();
  swift_getOpaqueTypeMetadata2();
  sub_23D8DD020();
  sub_23D8DD020();
  sub_23D8DD020();
  sub_23D8DD090();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23D8DAF50(&qword_27E2EE3D0, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED8B8, &qword_23D8E2B80);
  sub_23D8DD020();
  swift_getOpaqueTypeConformance2();
  sub_23D835AD0(&qword_27E2ED8B0, &qword_27E2ED8B8, &qword_23D8E2B80, MEMORY[0x277CE0728]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDE30, &qword_23D8E4AD0);
  sub_23D8DD020();
  sub_23D8DD020();
  swift_getOpaqueTypeConformance2();
  sub_23D835AD0(&qword_27E2EF348, &qword_27E2EDE30, &qword_23D8E4AD0, MEMORY[0x277CDF4F0]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23D8DE430();
  sub_23D8DD020();
  swift_getWitnessTable();
  sub_23D8D4888();
  return swift_getWitnessTable();
}

id sub_23D8DA51C(id result, unsigned __int8 *a2)
{
  v2 = *a2;
  switch(v2)
  {
    case 5:
      v3 = &selRef_stopButtonPressed;
      break;
    case 2:
      v4 = result;
      result = [result respondsToSelector_];
      if ((result & 1) == 0)
      {
        return result;
      }

      v3 = &selRef_viewInReaderButtonPressed;
      v5 = [v4 respondsToSelector_];
      result = v4;
      if ((v5 & 1) == 0)
      {
        return result;
      }

      break;
    case 1:
      v3 = &selRef_speakUnderFingerButtonPressed;
      break;
    default:
      return result;
  }

  v6 = *v3;

  return [result v6];
}

uint64_t sub_23D8DA5D4(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t *a4, char *a5)
{
  v5 = *a1;
  v6 = a4[1];
  v7 = *(a4 + 16);
  v8 = *a5;
  v12 = *a4;
  v13 = v6;
  v14 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F0608, &qword_23D8E5DE8);
  MEMORY[0x23EEF05A0](&v11);
  if (v5 == v11)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  v11 = v9;
  return sub_23D8DE460();
}

uint64_t sub_23D8DA65C(uint64_t a1)
{
  result = *(v1 + *(a1 + 36));
  if (!result)
  {
    type metadata accessor for SSStore(0);
    sub_23D8DAF50(&qword_27E2ED008, type metadata accessor for SSStore, &unk_23D8E1DE0);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

void sub_23D8DA700(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for SSHUDView(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  sub_23D8D339C(a1, a2, v10, v7, v8);
}

void sub_23D8DA848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for SSHUDView(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  sub_23D8D934C(a1, v9, v6, v7);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D8DA8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SSHUDView(0, *(v4 + 32), *(v4 + 40), a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 48) & ~v6;
  v8 = *(*(v5 - 8) + 64);
  swift_unknownObjectRelease();
  v9 = v4 + v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_23D8DCCB0();
    (*(*(v10 - 8) + 8))(v4 + v7, v10);
  }

  else
  {
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v4, v7 + v8, v6 | 7);
}

uint64_t sub_23D8DAAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[4];
  v8 = v4[5];
  v9 = *(type metadata accessor for SSHUDView(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = v4[2];
  v12 = v4[3];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_23D835CB4;

  return sub_23D8D9600(a1, v11, v12, v4 + v10, v7, v8);
}

unint64_t sub_23D8DABE4()
{
  result = qword_27E2F0540;
  if (!qword_27E2F0540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0468, &qword_23D8E5AC0);
    sub_23D8DAC70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F0540);
  }

  return result;
}

unint64_t sub_23D8DAC70()
{
  result = qword_27E2F0548;
  if (!qword_27E2F0548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0550, &qword_23D8E5D30);
    sub_23D8DAD28(&qword_27E2F0558, &qword_27E2F0560, &qword_23D8E5D38, sub_23D8DADD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F0548);
  }

  return result;
}

uint64_t sub_23D8DAD28(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_23D835AD0(&qword_27E2EF080, &qword_27E2EF088, &qword_23D8E3190, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23D8DADD8()
{
  result = qword_27E2F0568;
  if (!qword_27E2F0568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0570, &qword_23D8E5D40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0578, &qword_23D8E5D48);
    sub_23D8DD080();
    sub_23D835AD0(&qword_27E2F0580, &qword_27E2F0578, &qword_23D8E5D48, MEMORY[0x277CDF028]);
    sub_23D8DAF50(&qword_27E2ED4F0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_23D835AD0(&qword_27E2EED38, &qword_27E2EED40, &unk_23D8E3C30, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F0568);
  }

  return result;
}

uint64_t sub_23D8DAF50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23D8DAF98()
{
  result = qword_27E2F0590;
  if (!qword_27E2F0590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0598, &qword_23D8E5D50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F05A0, &qword_23D8E5D58);
    sub_23D8DD080();
    sub_23D835AD0(&qword_27E2F05A8, &qword_27E2F05A0, &qword_23D8E5D58, MEMORY[0x277CDF028]);
    sub_23D8DAF50(&qword_27E2ED4F0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_23D835AD0(&qword_27E2EED38, &qword_27E2EED40, &unk_23D8E3C30, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F0590);
  }

  return result;
}

unint64_t sub_23D8DB110()
{
  result = qword_27E2F05B0;
  if (!qword_27E2F05B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0478, &unk_23D8E5AD0);
    sub_23D8DAD28(&qword_27E2F0588, &qword_27E2F0470, &qword_23D8E5AC8, sub_23D8DAF98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F05B0);
  }

  return result;
}

double sub_23D8DB234(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for SSHUDView(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_23D8D9094(a1, v9, v6, v7);
}

unint64_t sub_23D8DB2D0()
{
  result = qword_27E2F05C8;
  if (!qword_27E2F05C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F0480, &qword_23D8E5AE0);
    sub_23D835AD0(&qword_27E2F05C0, &qword_27E2F05B8, &unk_23D8E5D90, MEMORY[0x277CDF038]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F05C8);
  }

  return result;
}

uint64_t objectdestroy_55Tm(uint64_t a1, __n128 a2)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v2, a1, 7);
}

unint64_t sub_23D8DB458()
{
  result = qword_27E2F05D8;
  if (!qword_27E2F05D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F05D0, &qword_23D8E5DB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F05E0, &qword_23D8E5DC0);
    sub_23D835AD0(&qword_27E2F05E8, &qword_27E2F05E0, &qword_23D8E5DC0, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F05D8);
  }

  return result;
}

uint64_t sub_23D8DB570(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for SSHUDView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

uint64_t objectdestroyTm_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SSHUDView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*(v5 - 8) + 64);
  v9 = v4 + v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_23D8DCCB0();
    (*(*(v10 - 8) + 8))(v4 + v7, v10);
  }

  else
  {
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v4, v7 + v8, v6 | 7);
}

id sub_23D8DB7FC(const char **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SSHUDView(0, *(v4 + 16), *(v4 + 24), a4);
  v7 = *(v4 + *(v6 + 60) + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + 8);
  v8 = *a1;

  return [v7 v8];
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_27E2F3C48 == -1)
  {
    if (qword_27E2F3C50)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27E2F3C50)
    {
      return _availability_version_check();
    }
  }

  if (qword_27E2F3C40 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27E2F3C34 > a3)
      {
        return 1;
      }

      if (dword_27E2F3C34 >= a3)
      {
        return dword_27E2F3C38 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27E2F3C50;
  if (qword_27E2F3C50)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27E2F3C50 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x23EEF1040](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27E2F3C34, &dword_27E2F3C38);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}
uint64_t sub_20CC87F68@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a4;
  v53 = a2;
  v6 = sub_20CCDB1F4();
  MEMORY[0x28223BE20](v6 - 8);
  v54 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F488, &qword_20CCDC728);
  MEMORY[0x28223BE20](v52);
  v9 = &v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F468, &unk_20CCDCD30);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v49 - v14;
  v16 = sub_20CCDAF54();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v50 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v49 - v21;
  MEMORY[0x28223BE20](v20);
  v59 = &v49 - v23;
  v24 = *a1;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v51 = v13;
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v57 = v22;
  v25 = sub_20CCDB584();
  __swift_project_value_buffer(v25, qword_28110EE00);
  v26 = v24;
  v27 = sub_20CCDB564();
  v28 = sub_20CCDB8B4();

  v29 = os_log_type_enabled(v27, v28);
  v58 = v26;
  v55 = a3;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v49 = v15;
    v32 = v31;
    v60 = v31;
    *v30 = 136315138;
    v33 = sub_20CCDAA04();
    v35 = sub_20CC88C4C(v33, v34, &v60);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_20CC86000, v27, v28, "%s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    v36 = v32;
    v15 = v49;
    MEMORY[0x20F30FD70](v36, -1, -1);
    v37 = v30;
    v26 = v58;
    MEMORY[0x20F30FD70](v37, -1, -1);
  }

  sub_20CCDAA04();
  v38 = [v26 primaryLanguage];
  sub_20CCDB674();

  v39 = v59;
  sub_20CCDAF24();
  v40 = *(v17 + 16);
  v40(v57, v39, v16);
  v40(v15, v39, v16);
  (*(v17 + 56))(v15, 0, 1, v16);
  v41 = *(v52 + 48);
  sub_20CC89500(v53, v9, &qword_27C80F468, &unk_20CCDCD30);
  sub_20CC89500(v15, &v9[v41], &qword_27C80F468, &unk_20CCDCD30);
  v42 = *(v17 + 48);
  if (v42(v9, 1, v16) != 1)
  {
    v43 = v51;
    sub_20CC89500(v9, v51, &qword_27C80F468, &unk_20CCDCD30);
    if (v42(&v9[v41], 1, v16) != 1)
    {
      v44 = &v9[v41];
      v45 = v50;
      (*(v17 + 32))(v50, v44, v16);
      sub_20CC926A4(&qword_27C80F490, 255, MEMORY[0x277D0A278], MEMORY[0x277D0A288]);
      sub_20CCDB654();
      v46 = v43;
      v47 = *(v17 + 8);
      v47(v45, v16);
      sub_20CC89568(v15, &qword_27C80F468, &unk_20CCDCD30);
      v47(v46, v16);
      sub_20CC89568(v9, &qword_27C80F468, &unk_20CCDCD30);
      goto LABEL_14;
    }

    sub_20CC89568(v15, &qword_27C80F468, &unk_20CCDCD30);
    (*(v17 + 8))(v43, v16);
    goto LABEL_12;
  }

  sub_20CC89568(v15, &qword_27C80F468, &unk_20CCDCD30);
  if (v42(&v9[v41], 1, v16) != 1)
  {
LABEL_12:
    sub_20CC89568(v9, &qword_27C80F488, &qword_20CCDC728);
    goto LABEL_14;
  }

  sub_20CC89568(v9, &qword_27C80F468, &unk_20CCDCD30);
LABEL_14:
  sub_20CC88618(v58, v54);
  sub_20CCDB224();
  return (*(v17 + 8))(v59, v16);
}

uint64_t sub_20CC88618@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F438, &unk_20CCDC6C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  v8 = sub_20CCDAF54();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 locallyAvailable])
  {
    if (![a1 downloading])
    {
      v12 = MEMORY[0x277D0A530];
      goto LABEL_8;
    }

    v29 = a2;
    sub_20CCDAA04();
    v13 = [a1 primaryLanguage];
    sub_20CCDB674();

    sub_20CCDAF24();
    swift_beginAccess();
    v14 = *(v2 + 120);
    if (*(v14 + 16))
    {

      v15 = sub_20CCB0AA4(v11);
      if (v16)
      {
        v17 = v15;
        v18 = *(v14 + 56);
        v19 = sub_20CCDB214();
        v20 = *(v19 - 8);
        (*(v20 + 16))(v7, v18 + *(v20 + 72) * v17, v19);
        (*(v9 + 8))(v11, v8);

        (*(v20 + 56))(v7, 0, 1, v19);
LABEL_13:
        v26 = v29;
        sub_20CC92634(v7, v29);
        v27 = *MEMORY[0x277D0A528];
        v28 = sub_20CCDB1F4();
        return (*(*(v28 - 8) + 104))(v26, v27, v28);
      }
    }

    (*(v9 + 8))(v11, v8);
    v25 = sub_20CCDB214();
    (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
    goto LABEL_13;
  }

  v12 = MEMORY[0x277D0A520];
LABEL_8:
  v21 = *v12;
  v22 = sub_20CCDB1F4();
  v23 = *(*(v22 - 8) + 104);

  return v23(a2, v21, v22);
}

void sub_20CC889E4(void (*a1)(id *), unint64_t a2, unint64_t a3)
{
  v4 = v3;
  v25 = a1;
  v26 = a2;
  v24 = sub_20CCDB244();
  v6 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20CCDB9F4())
  {
    v10 = a3;
    v28 = MEMORY[0x277D84F90];
    a3 = &v28;
    sub_20CC89050(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v11 = 0;
    v12 = v28;
    v13 = v10;
    v22 = v10;
    v23 = v10 & 0xC000000000000001;
    v19 = v10 & 0xFFFFFFFFFFFFFF8;
    v20 = v6 + 32;
    v21 = i;
    while (1)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v23)
      {
        v15 = MEMORY[0x20F30F560](v11, v13);
      }

      else
      {
        if (v11 >= *(v19 + 16))
        {
          goto LABEL_17;
        }

        v15 = *(v13 + 8 * v11 + 32);
      }

      i = v15;
      v27 = v15;
      a3 = v26;
      v25(&v27);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v28 = v12;
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v17 >= v16 >> 1)
      {
        a3 = &v28;
        sub_20CC89050((v16 > 1), v17 + 1, 1);
        v12 = v28;
      }

      *(v12 + 16) = v17 + 1;
      (*(v6 + 32))(v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17, v8, v24);
      ++v11;
      v13 = v22;
      if (v14 == v21)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

unint64_t sub_20CC88C4C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_20CC88D18(v11, 0, 0, 1, a1, a2);
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
    sub_20CC89458(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_20CC88D18(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_20CCA53B8(a5, a6);
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
    result = sub_20CCDB994();
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

uint64_t sub_20CC88E24()
{
  v15 = v0;
  v1 = v0[13];
  v2 = v0[11];
  sub_20CCDAA14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F458, &unk_20CCDCD10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20CCDC570;
  sub_20CC92858();
  *(v3 + 32) = sub_20CCDB864();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F470, &unk_20CCDC710);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CCDC580;
  *(inited + 64) = MEMORY[0x277D613C0];
  *(inited + 32) = xmmword_20CCDC590;
  v5 = inited + 32;
  sub_20CC8974C(inited);
  swift_setDeallocating();
  sub_20CC89568(v5, &qword_27C80F478, &qword_20CCDCD20);
  v6 = sub_20CCDA9F4();

  v7 = swift_task_alloc();
  *(v7 + 16) = v1;
  *(v7 + 24) = v2;
  sub_20CC889E4(sub_20CC88C2C, v7, v6);
  v9 = v8;

  v14 = v9;

  sub_20CC903B4(&v14);
  v10 = v0[13];

  v11 = v14;
  sub_20CC89568(v10, &qword_27C80F468, &unk_20CCDCD30);

  v12 = v0[1];

  return v12(v11);
}

void *sub_20CC89050(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20CC89094(a1, a2, a3, *v3, &qword_27C80F6C8, &qword_20CCDCCC8, MEMORY[0x277D0A548]);
  *v3 = result;
  return result;
}

void *sub_20CC89094(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_20CC892AC()
{
  v1[11] = v0;
  v1[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F468, &unk_20CCDCD30);
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CC8934C, 0, 0);
}

uint64_t sub_20CC8934C()
{
  v1 = [objc_allocWithZone(sub_20CCDA904()) init];
  v0[14] = v1;
  v2 = swift_task_alloc();
  v0[15] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_20CC895C8;
  v5 = v0[12];
  v4 = v0[13];

  return MEMORY[0x2822007B8](v4, 0, 0, 0xD000000000000014, 0x800000020CCDDF50, sub_20CC92850, v2, v5);
}

uint64_t sub_20CC89458(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_20CC89500(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_20CC89568(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_20CC895C8()
{

  return MEMORY[0x2822009F8](sub_20CC896E0, 0, 0);
}

uint64_t sub_20CC896E0()
{
  v1 = *(v0 + 88);

  return MEMORY[0x2822009F8](sub_20CC88E24, v1, 0);
}

unint64_t sub_20CC8974C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F898, &unk_20CCDD248);
    v3 = sub_20CCDBA24();
    for (i = a1 + 32; ; i += 40)
    {
      sub_20CC89500(i, &v11, &qword_27C80F478, &qword_20CCDCD20);
      v5 = v11;
      result = sub_20CC89868(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_20CC898D4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20CC89868(uint64_t a1)
{
  sub_20CCDBB44();
  MEMORY[0x20F30F730](a1);
  v2 = sub_20CCDBB64();

  return sub_20CC898E4(a1, v2);
}

_OWORD *sub_20CC898D4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_20CC898E4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_20CC89950()
{
  v1 = sub_20CCDAF54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20CC899EC()
{
  v1 = sub_20CCDAF54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20CC89A98()
{
  v1 = sub_20CCDAF54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20CC89B64()
{
  v1 = sub_20CCDAF54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20CC89C48()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CC89C84()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CC89D40()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C80F510, &unk_20CCDC890);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  sub_20CC9720C(*(v0 + 16), *(v0 + 24));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20CC89E94()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CC89EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AudioSynthesisHandle(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20CC89F88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AudioSynthesisHandle(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20CC8A02C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20CCDADC4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20CC8A098(uint64_t a1, uint64_t a2)
{
  v4 = sub_20CCDADC4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20CC8A108()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6F0, &qword_20CCDCD28);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20CC8A19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_20CCDAF54();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_20CCDB114();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_20CC8A2C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v8 = sub_20CCDAF54();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_20CCDB114();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20CC8A3E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CC8A42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F820, &qword_20CCDCF50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_20CC8A500(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F820, &qword_20CCDCF50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t sub_20CC8A5D4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20CC8A61C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CC8A664()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CC8A6AC()
{
  v1 = sub_20CCDAE94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20CC8A79C()
{
  v17 = sub_20CCDA744();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v16 = sub_20CCDAE94();
  v5 = *(v16 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_20CCDAE04();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v13 = v2 | v6 | v11;
  v14 = (*(v10 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v3, v17);
  (*(v5 + 8))(v0 + v7, v16);
  (*(v10 + 8))(v0 + v12, v9);

  return MEMORY[0x2821FE8E8](v0, v14 + 32, v13 | 7);
}

uint64_t sub_20CC8A9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20CCDAF54();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_20CCDB114();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_20CC8AA90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_20CCDAF54();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_20CCDB114();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_20CC8AB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20CCDB104();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_20CC8AC58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20CCDB104();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_20CC8AD14()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CC8AD4C()
{
  v1 = sub_20CCDA784();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20CC8AE20()
{
  v1 = sub_20CCDA784();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20CC8AEF4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CC8AF34()
{
  v1 = (type metadata accessor for AudioStreamSender(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + v1[7];

  v6 = type metadata accessor for AudioSynthesisHandle(0);
  v7 = *(v6 + 24);
  v8 = sub_20CCDAF54();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = *(v6 + 28);
  v10 = sub_20CCDB114();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20CC8B0A4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CC8B0F0()
{
  v1[2] = v0;
  v2 = sub_20CCDAEC4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CC8B1B0, v0, 0);
}

uint64_t sub_20CC8B1B0()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Refreshing cached voice assets", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_20CC8B2FC;

  return sub_20CC892AC();
}

uint64_t sub_20CC8B2FC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v4 + 16);
    *(v4 + 64) = a1;

    return MEMORY[0x2822009F8](sub_20CC8B454, v8, 0);
  }
}

uint64_t sub_20CC8B454()
{
  v1 = v0[7];
  sub_20CCDAE14();

  v2 = v0[5];
  if (!v1)
  {
    v4 = v0[3];
    v5 = v0[4];
    (*(v5 + 104))(v0[5], *MEMORY[0x277D0A168], v4);
    sub_20CCDAEB4();
    (*(v5 + 8))(v2, v4);
    v6 = sub_20CCDB694();

    notify_post((v6 + 32));
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_20CC8B574()
{
  v1[2] = v0;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F488, &qword_20CCDC728);
  v1[4] = swift_task_alloc();
  v1[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F468, &unk_20CCDCD30);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v2 = sub_20CCDAF54();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CC8B6DC, v0, 0);
}

uint64_t sub_20CC8B6DC()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  v0[14] = __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Refreshing selected voice", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[9];

  sub_20CCDAF04();
  v8 = *(v6 + 48);
  v0[15] = v8;
  v0[16] = (v6 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v8(v7, 1, v5) == 1)
  {
    sub_20CC89568(v0[9], &qword_27C80F468, &unk_20CCDCD30);
    v9 = sub_20CCDB564();
    v10 = sub_20CCDB8B4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20CC86000, v9, v10, "No user selected voice, not refreshing selection", v11, 2u);
      MEMORY[0x20F30FD70](v11, -1, -1);
    }

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[13];
    v15 = v0[10];
    v16 = v0[11];
    v17 = v0[9];
    v18 = *(v16 + 32);
    v0[17] = v18;
    v0[18] = (v16 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v18(v14, v17, v15);

    return MEMORY[0x2822009F8](sub_20CC8B970, 0, 0);
  }
}

uint64_t sub_20CC8B970()
{
  v1 = [objc_allocWithZone(sub_20CCDA904()) init];
  v0[19] = v1;
  v2 = swift_task_alloc();
  v0[20] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[21] = v3;
  *v3 = v0;
  v3[1] = sub_20CC8BA80;
  v4 = v0[8];
  v5 = v0[5];

  return MEMORY[0x2822007B8](v4, 0, 0, 0xD000000000000014, 0x800000020CCDDF50, sub_20CC92A14, v2, v5);
}

uint64_t sub_20CC8BA80()
{

  return MEMORY[0x2822009F8](sub_20CC8BB98, 0, 0);
}

uint64_t sub_20CC8BB98()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_20CC8BC04, v1, 0);
}

uint64_t sub_20CC8BC04()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  (*(v3 + 16))(v5, *(v0 + 104), v2);
  (*(v3 + 56))(v5, 0, 1, v2);
  v8 = *(v7 + 48);
  sub_20CC89500(v4, v6, &qword_27C80F468, &unk_20CCDCD30);
  sub_20CC89500(v5, v6 + v8, &qword_27C80F468, &unk_20CCDCD30);
  v9 = v1(v6, 1, v2);
  v10 = *(v0 + 120);
  v11 = *(v0 + 80);
  if (v9 == 1)
  {
    sub_20CC89568(*(v0 + 56), &qword_27C80F468, &unk_20CCDCD30);
    if (v10(v6 + v8, 1, v11) == 1)
    {
      sub_20CC89568(*(v0 + 32), &qword_27C80F468, &unk_20CCDCD30);
LABEL_13:
      v29 = *(v0 + 104);
      v30 = *(v0 + 80);
      v31 = *(v0 + 88);
      sub_20CC89568(*(v0 + 64), &qword_27C80F468, &unk_20CCDCD30);
      (*(v31 + 8))(v29, v30);

      v32 = *(v0 + 8);

      return v32();
    }

    goto LABEL_6;
  }

  sub_20CC89500(*(v0 + 32), *(v0 + 48), &qword_27C80F468, &unk_20CCDCD30);
  if (v10(v6 + v8, 1, v11) == 1)
  {
    v12 = *(v0 + 80);
    v13 = *(v0 + 88);
    v14 = *(v0 + 48);
    sub_20CC89568(*(v0 + 56), &qword_27C80F468, &unk_20CCDCD30);
    (*(v13 + 8))(v14, v12);
LABEL_6:
    sub_20CC89568(*(v0 + 32), &qword_27C80F488, &qword_20CCDC728);
    goto LABEL_7;
  }

  v22 = *(v0 + 88);
  v21 = *(v0 + 96);
  v23 = *(v0 + 80);
  v25 = *(v0 + 48);
  v24 = *(v0 + 56);
  v26 = *(v0 + 32);
  (*(v0 + 136))(v21, v6 + v8, v23);
  sub_20CC926A4(&qword_27C80F490, 255, MEMORY[0x277D0A278], MEMORY[0x277D0A288]);
  v27 = sub_20CCDB654();
  v28 = *(v22 + 8);
  v28(v21, v23);
  sub_20CC89568(v24, &qword_27C80F468, &unk_20CCDCD30);
  v28(v25, v23);
  sub_20CC89568(v26, &qword_27C80F468, &unk_20CCDCD30);
  if (v27)
  {
    goto LABEL_13;
  }

LABEL_7:
  v15 = sub_20CCDB564();
  v16 = sub_20CCDB8B4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_20CC86000, v15, v16, "User selected voice does not match siri selection, making selection", v17, 2u);
    MEMORY[0x20F30FD70](v17, -1, -1);
  }

  v18 = swift_task_alloc();
  *(v0 + 176) = v18;
  *v18 = v0;
  v18[1] = sub_20CC8C03C;
  v19 = *(v0 + 104);

  return sub_20CC8C4D4(v19);
}

uint64_t sub_20CC8C03C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_20CC8C250;
  }

  else
  {
    v4 = sub_20CC8C168;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_20CC8C168()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  sub_20CC89568(v0[8], &qword_27C80F468, &unk_20CCDCD30);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20CC8C250()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  sub_20CC89568(v0[8], &qword_27C80F468, &unk_20CCDCD30);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20CC8C348()
{
  v0 = sub_20CCDAF54();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - v5;
  sub_20CCDB234();
  v7 = sub_20CCDAF34();
  v9 = v8;
  v10 = *(v1 + 8);
  v10(v6, v0);
  sub_20CCDB234();
  v11 = sub_20CCDAF34();
  v13 = v12;
  v10(v4, v0);
  if (v7 == v11 && v9 == v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_20CCDBA64();
  }

  return v15 & 1;
}

uint64_t sub_20CC8C4D4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_20CCDAF54();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CC8C594, v1, 0);
}

uint64_t sub_20CC8C594()
{
  v29 = v0;
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[5];
  v5 = sub_20CCDB584();
  __swift_project_value_buffer(v5, qword_28110EE00);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_20CCDB564();
  v7 = sub_20CCDB8B4();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[7];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315138;
    v14 = sub_20CCDAF14();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_20CC88C4C(v14, v16, &v28);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_20CC86000, v6, v7, "Attempting to select voice: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x20F30FD70](v13, -1, -1);
    MEMORY[0x20F30FD70](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[6];
  v19 = [objc_allocWithZone(sub_20CCDA904()) init];
  v0[10] = v19;
  sub_20CCDAF44();
  sub_20CCDAF34();
  v20 = objc_allocWithZone(sub_20CCDA964());
  v21 = sub_20CCDA944();
  v0[11] = v21;
  v23 = sub_20CC926A4(&qword_27C80F450, v22, type metadata accessor for VoiceAssetSystem, &unk_20CCDC68C);
  v24 = swift_task_alloc();
  v0[12] = v24;
  *(v24 + 16) = v19;
  *(v24 + 24) = v21;
  v25 = swift_task_alloc();
  v0[13] = v25;
  *v25 = v0;
  v25[1] = sub_20CC8C8C0;
  v26 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v25, v18, v23, 0xD000000000000014, 0x800000020CCDDF30, sub_20CC9270C, v24, v26);
}

uint64_t sub_20CC8C8C0()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = sub_20CC8D048;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_20CC8C9E8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_20CC8C9E8()
{
  v1 = *(v0 + 112);
  sub_20CC8E070(*(v0 + 40), 1);
  if (v1)
  {
    v2 = *(v0 + 80);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 48);
    swift_beginAccess();
    v6 = *(v5 + 128);
    *(v0 + 120) = v6;
    v7 = v6[2];
    *(v0 + 128) = v7;
    if (v7)
    {
      *(v0 + 152) = 0;
      v8 = v6[4];
      *(v0 + 160) = v6[5];

      v11 = (v8 + *v8);
      v9 = swift_task_alloc();
      *(v0 + 168) = v9;
      *v9 = v0;
      v9[1] = sub_20CC8CD18;

      return v11();
    }

    else
    {
      v10 = swift_task_alloc();
      *(v0 + 136) = v10;
      *v10 = v0;
      v10[1] = sub_20CC8CBEC;

      return sub_20CC8B0F0();
    }
  }
}

uint64_t sub_20CC8CBEC()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_20CC8D0C4;
  }

  else
  {
    v4 = sub_20CC8CFD4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_20CC8CD18()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_20CC8CE44, v1, 0);
}

uint64_t sub_20CC8CE44()
{
  v1 = v0[19] + 1;
  if (v1 == v0[16])
  {

    v2 = swift_task_alloc();
    v0[17] = v2;
    *v2 = v0;
    v2[1] = sub_20CC8CBEC;

    return sub_20CC8B0F0();
  }

  else
  {
    v0[19] = v1;
    v4 = v0[15] + 16 * v1;
    v5 = *(v4 + 32);
    v0[20] = *(v4 + 40);

    v7 = (v5 + *v5);
    v6 = swift_task_alloc();
    v0[21] = v6;
    *v6 = v0;
    v6[1] = sub_20CC8CD18;

    return v7();
  }
}

uint64_t sub_20CC8CFD4()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20CC8D048()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20CC8D0C4()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20CC8D134(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F458, &unk_20CCDCD10);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20CCDC570;
  *(v9 + 32) = a3;
  (*(v6 + 16))(v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v8, v5);
  v12 = a3;
  sub_20CCDA8F4();
}

uint64_t sub_20CC8D2CC(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v3 = sub_20CCDB584();
    __swift_project_value_buffer(v3, qword_28110EE00);
    v4 = a1;
    v5 = sub_20CCDB564();
    v6 = sub_20CCDB894();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = a1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_20CC86000, v5, v6, "Failed to subscribe to voice: %@", v7, 0xCu);
      sub_20CC89568(v8, &qword_27C80F460, &unk_20CCDC700);
      MEMORY[0x20F30FD70](v8, -1, -1);
      MEMORY[0x20F30FD70](v7, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
    return sub_20CCDB744();
  }

  else
  {
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v12 = sub_20CCDB584();
    __swift_project_value_buffer(v12, qword_28110EE00);
    v13 = sub_20CCDB564();
    v14 = sub_20CCDB8B4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_20CC86000, v13, v14, "Successfully subscribed to voice", v15, 2u);
      MEMORY[0x20F30FD70](v15, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
    return sub_20CCDB754();
  }
}

uint64_t sub_20CC8D52C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_20CCDAF54();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CC8D5EC, v1, 0);
}

uint64_t sub_20CC8D5EC()
{
  v32 = v0;
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_20CCDB584();
  __swift_project_value_buffer(v5, qword_28110EE00);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_20CCDB564();
  v7 = sub_20CCDB8B4();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v13;
    *v12 = 136315138;
    v14 = sub_20CCDAF14();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_20CC88C4C(v14, v16, &v31);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_20CC86000, v6, v7, "Attempting to preview voice: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x20F30FD70](v13, -1, -1);
    MEMORY[0x20F30FD70](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[3];
  v19 = [objc_allocWithZone(sub_20CCDA904()) init];
  v0[7] = v19;
  sub_20CCDAF44();
  sub_20CCDAF34();
  v20 = objc_allocWithZone(sub_20CCDA964());
  v21 = sub_20CCDA944();
  v0[8] = v21;
  v22 = objc_allocWithZone(sub_20CCDA924());
  v23 = v21;
  v24 = sub_20CCDA914();
  v0[9] = v24;
  v26 = sub_20CC926A4(&qword_27C80F450, v25, type metadata accessor for VoiceAssetSystem, &unk_20CCDC68C);
  v27 = swift_task_alloc();
  v0[10] = v27;
  *(v27 + 16) = v19;
  *(v27 + 24) = v24;
  v28 = swift_task_alloc();
  v0[11] = v28;
  *v28 = v0;
  v28[1] = sub_20CC8D940;
  v29 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v28, v18, v26, 0xD000000000000015, 0x800000020CCDDF10, sub_20CC926EC, v27, v29);
}

uint64_t sub_20CC8D940()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_20CC8DAE8;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_20CC8DA68;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_20CC8DA68()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20CC8DAE8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20CC8DB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  (*(v5 + 16))(&v11 - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  sub_20CCDA8D4();
}

uint64_t sub_20CC8DCC4(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
    return sub_20CCDB744();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
    return sub_20CCDB754();
  }
}

uint64_t sub_20CC8DD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_20CC8DD5C, a4, 0);
}

uint64_t sub_20CC8DD5C()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  swift_beginAccess();
  v5 = *(v3 + 128);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 128) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_20CCA7A6C(0, v5[2] + 1, 1, v5);
    *(v3 + 128) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_20CCA7A6C((v7 > 1), v8 + 1, 1, v5);
  }

  v5[2] = v8 + 1;
  v9 = &v5[2 * v8];
  v9[4] = &unk_20CCDC740;
  v9[5] = v4;
  *(v3 + 128) = v5;
  swift_endAccess();
  v10 = v0[1];

  return v10();
}

uint64_t sub_20CC8DE94(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_20CC8DF7C;

  return v5();
}

uint64_t sub_20CC8DF7C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_20CC8E070(uint64_t a1, int a2)
{
  v6 = sub_20CCDAF54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v9 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v9);
  v11 = v42 - v10;
  v12 = sub_20CCA7DA4();
  if (!v3)
  {
    v13 = v12;
    v50 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v51 = a2;
    v52 = 0;
    if ([v12 locallyAvailable])
    {
      if (qword_28110E630 != -1)
      {
        swift_once();
      }

      v14 = sub_20CCDB584();
      __swift_project_value_buffer(v14, qword_28110EE00);
      v15 = sub_20CCDB564();
      v16 = sub_20CCDB8B4();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_20CC86000, v15, v16, "Asset already locally available, not starting download", v17, 2u);
        MEMORY[0x20F30FD70](v17, -1, -1);
      }
    }

    else
    {
      v46 = v13;
      v47 = v2;
      if (qword_28110E630 != -1)
      {
        swift_once();
      }

      v18 = sub_20CCDB584();
      __swift_project_value_buffer(v18, qword_28110EE00);
      v19 = *(v7 + 2);
      v48 = a1;
      v49 = v7 + 16;
      v20 = v6;
      v45 = v19;
      v19(v11, a1, v6);
      v21 = sub_20CCDB564();
      v22 = sub_20CCDB8B4();
      v23 = os_log_type_enabled(v21, v22);
      v44 = v7;
      if (v23)
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        aBlock = v25;
        *v24 = 136315138;
        v43 = sub_20CCDAF14();
        v27 = v26;
        (*(v7 + 1))(v11, v20);
        v28 = sub_20CC88C4C(v43, v27, &aBlock);

        *(v24 + 4) = v28;
        _os_log_impl(&dword_20CC86000, v21, v22, "Starting voice download: %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x20F30FD70](v25, -1, -1);
        MEMORY[0x20F30FD70](v24, -1, -1);
      }

      else
      {

        (*(v7 + 1))(v11, v20);
      }

      v29 = v50;
      v50 = sub_20CCDB664();
      v30 = v45;
      v45(v29, v48, v20);
      v31 = v44;
      v32 = (v44[80] + 16) & ~v44[80];
      v33 = (v8 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
      v34 = swift_allocObject();
      v43 = *(v31 + 4);
      v43(v34 + v32, v29, v20);
      v35 = v47;
      *(v34 + v33) = v47;
      v57 = sub_20CC9227C;
      v58 = v34;
      aBlock = MEMORY[0x277D85DD0];
      v54 = 1107296256;
      v42[1] = &v55;
      v55 = sub_20CC8ED48;
      v56 = &block_descriptor;
      v44 = _Block_copy(&aBlock);

      v30(v29, v48, v20);
      v36 = swift_allocObject();
      v43(v36 + v32, v29, v20);
      *(v36 + v33) = v35;
      v37 = v46;
      *(v36 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) = v46;
      v57 = sub_20CC92350;
      v58 = v36;
      aBlock = MEMORY[0x277D85DD0];
      v54 = 1107296256;
      v55 = sub_20CC8F890;
      v56 = &block_descriptor_22;
      v38 = _Block_copy(&aBlock);

      v39 = v37;

      v40 = v50;
      v41 = v44;
      [v39 downloadWithReservation:v50 useBattery:v51 & 1 progress:v44 then:v38];
      _Block_release(v38);
      _Block_release(v41);
    }
  }
}

uint64_t sub_20CC8E600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v40 = a2;
  v38 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F448, &unk_20CCDCF60);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v32 - v6;
  v7 = sub_20CCDAF54();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v35 = v10;
  v36 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v13 = sub_20CCDB584();
  __swift_project_value_buffer(v13, qword_28110EE00);
  v34 = *(v8 + 16);
  v34(v12, a3, v7);
  v14 = sub_20CCDB564();
  v15 = sub_20CCDB8B4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v33 = a3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v41 = v18;
    *v17 = 136315650;
    v19 = sub_20CCDAF34();
    v21 = v20;
    (*(v8 + 8))(v12, v7);
    v22 = sub_20CC88C4C(v19, v21, &v41);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2048;
    v23 = v38;
    *(v17 + 14) = v38;
    *(v17 + 22) = 2048;
    *(v17 + 24) = v40;
    _os_log_impl(&dword_20CC86000, v14, v15, "Voice [%s] download progress: %ld of %ld", v17, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x20F30FD70](v18, -1, -1);
    v24 = v17;
    a3 = v33;
    MEMORY[0x20F30FD70](v24, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v12, v7);
    v23 = v38;
  }

  v25 = sub_20CCDB794();
  v26 = v37;
  (*(*(v25 - 8) + 56))(v37, 1, 1, v25);
  v27 = v36;
  v34(v36, a3, v7);
  v28 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v29 = (v35 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  *(v30 + 4) = v39;
  (*(v8 + 32))(&v30[v28], v27, v7);
  *&v30[v29] = v23;
  *&v30[(v29 + 15) & 0xFFFFFFFFFFFFFFF8] = v40;

  sub_20CCCD44C(0, 0, v26, &unk_20CCDC6E8, v30);
}

uint64_t sub_20CC8E9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F438, &unk_20CCDC6C0);
  v7[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CC8EA88, 0, 0);
}

uint64_t sub_20CC8EA88()
{
  v1 = v0[6];
  sub_20CCDB204();
  v2 = sub_20CCDB214();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_20CC8EB70;
  v4 = v0[6];
  v5 = v0[3];

  return sub_20CC8F8FC(v5, v4);
}

uint64_t sub_20CC8EB70()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 64) = v0;

  sub_20CC89568(v2, &qword_27C80F438, &unk_20CCDC6C0);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20CC8ECE4, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_20CC8ECE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CC8ED48(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = *(a1 + 32);

  v7(a2, a3, a4);
}

uint64_t sub_20CC8EDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F448, &unk_20CCDCF60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - v6;
  v8 = sub_20CCDAF54();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v37 = v11;
  v38 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v14 = sub_20CCDB584();
  __swift_project_value_buffer(v14, qword_28110EE00);
  v36 = *(v9 + 16);
  v36(v13, a2, v8);
  v15 = sub_20CCDB564();
  v16 = sub_20CCDB8B4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33 = a2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v34 = v7;
    v20 = v19;
    v39 = v19;
    *v18 = 136315138;
    v21 = sub_20CCDAF34();
    v35 = a3;
    v23 = v22;
    (*(v9 + 8))(v13, v8);
    v24 = sub_20CC88C4C(v21, v23, &v39);
    a3 = v35;

    *(v18 + 4) = v24;
    _os_log_impl(&dword_20CC86000, v15, v16, "Voice [%s] download complete", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v25 = v20;
    v7 = v34;
    MEMORY[0x20F30FD70](v25, -1, -1);
    v26 = v18;
    a2 = v33;
    MEMORY[0x20F30FD70](v26, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v13, v8);
  }

  v27 = sub_20CCDB794();
  (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
  v28 = v38;
  v36(v38, a2, v8);
  v29 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v30 = swift_allocObject();
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  *(v30 + 4) = a3;
  (*(v9 + 32))(&v30[v29], v28, v8);

  sub_20CCCD44C(0, 0, v7, &unk_20CCDC6D8, v30);
}

uint64_t sub_20CC8F160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F438, &unk_20CCDC6C0);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CC8F1FC, 0, 0);
}

uint64_t sub_20CC8F1FC()
{
  v1 = v0[7];
  v2 = sub_20CCDB214();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_20CC8F2D8;
  v5 = v0[6];
  v4 = v0[7];

  return sub_20CC8F8FC(v5, v4);
}

uint64_t sub_20CC8F2D8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  *(*v1 + 72) = v0;

  sub_20CC89568(v3, &qword_27C80F438, &unk_20CCDC6C0);
  if (v0)
  {
    v4 = sub_20CC8F82C;
    v5 = 0;
  }

  else
  {
    v5 = *(v2 + 40);
    v4 = sub_20CC8F428;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_20CC8F428()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 128);
  v0[10] = v2;
  v3 = v2[2];
  v0[11] = v3;
  if (v3)
  {
    v0[12] = 0;
    v4 = v2[4];
    v0[13] = v2[5];

    v8 = (v4 + *v4);
    v5 = swift_task_alloc();
    v0[14] = v5;
    *v5 = v0;
    v5[1] = sub_20CC8F5A0;

    return v8();
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_20CC8F5A0()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_20CC8F6CC, v1, 0);
}

uint64_t sub_20CC8F6CC()
{
  v1 = v0[12] + 1;
  if (v1 == v0[11])
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[12] = v1;
    v4 = v0[10] + 16 * v1;
    v5 = *(v4 + 32);
    v0[13] = *(v4 + 40);

    v7 = (v5 + *v5);
    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_20CC8F5A0;

    return v7();
  }
}

uint64_t sub_20CC8F82C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_20CC8F890(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_20CC8F8FC(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_20CCDAF54();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v5 = sub_20CCDB214();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F430, &qword_20CCDC6B8);
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F438, &unk_20CCDC6C0);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CC8FAA8, v2, 0);
}

uint64_t sub_20CC8FAA8()
{
  v1 = v0[10];
  swift_beginAccess();
  v2 = *(v1 + 120);
  if (*(v2 + 16))
  {
    v3 = v0[8];

    v4 = sub_20CCB0AA4(v3);
    if (v5)
    {
      (*(v0[15] + 16))(v0[21], *(v2 + 56) + *(v0[15] + 72) * v4, v0[14]);
      v6 = 0;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 1;
  }

  v7 = v0[21];
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[14];
  v11 = v0[15];
  v12 = v0[9];
  (*(v11 + 56))(v7, v6, 1, v10);
  v13 = *(v9 + 48);
  sub_20CC89500(v12, v8, &qword_27C80F438, &unk_20CCDC6C0);
  sub_20CC89500(v7, v8 + v13, &qword_27C80F438, &unk_20CCDC6C0);
  v14 = *(v11 + 48);
  if (v14(v8, 1, v10) == 1)
  {
    v15 = v0[14];
    sub_20CC89568(v0[21], &qword_27C80F438, &unk_20CCDC6C0);
    if (v14(v8 + v13, 1, v15) == 1)
    {
      sub_20CC89568(v0[18], &qword_27C80F438, &unk_20CCDC6C0);
LABEL_17:
      if (qword_28110E630 != -1)
      {
        swift_once();
      }

      v32 = sub_20CCDB584();
      __swift_project_value_buffer(v32, qword_28110EE00);
      v33 = sub_20CCDB564();
      v34 = sub_20CCDB8B4();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_20CC86000, v33, v34, "Download progress has not changed, skipping broadcast", v35, 2u);
        MEMORY[0x20F30FD70](v35, -1, -1);
      }

      v36 = v0[1];

      return v36();
    }

    goto LABEL_12;
  }

  v16 = v0[14];
  sub_20CC89500(v0[18], v0[20], &qword_27C80F438, &unk_20CCDC6C0);
  v17 = v14(v8 + v13, 1, v16);
  v18 = v0[20];
  v19 = v0[21];
  if (v17 == 1)
  {
    v20 = v0[14];
    v21 = v0[15];
    sub_20CC89568(v0[21], &qword_27C80F438, &unk_20CCDC6C0);
    (*(v21 + 8))(v18, v20);
LABEL_12:
    sub_20CC89568(v0[18], &qword_27C80F430, &qword_20CCDC6B8);
    goto LABEL_13;
  }

  v37 = v0[18];
  v28 = v0[15];
  v27 = v0[16];
  v29 = v0[14];
  (*(v28 + 32))(v27, v8 + v13, v29);
  sub_20CC926A4(&qword_27C80F440, 255, MEMORY[0x277D0A538], MEMORY[0x277D0A540]);
  v30 = sub_20CCDB654();
  v31 = *(v28 + 8);
  v31(v27, v29);
  sub_20CC89568(v19, &qword_27C80F438, &unk_20CCDC6C0);
  v31(v18, v29);
  sub_20CC89568(v37, &qword_27C80F438, &unk_20CCDC6C0);
  if (v30)
  {
    goto LABEL_17;
  }

LABEL_13:
  v22 = v0[19];
  v23 = v0[13];
  v24 = v0[9];
  (*(v0[12] + 16))(v23, v0[8], v0[11]);
  sub_20CC89500(v24, v22, &qword_27C80F438, &unk_20CCDC6C0);
  swift_beginAccess();
  sub_20CCCD6E8(v22, v23);
  swift_endAccess();
  v25 = swift_task_alloc();
  v0[22] = v25;
  *v25 = v0;
  v25[1] = sub_20CC8FFD8;

  return sub_20CC8B0F0();
}

uint64_t sub_20CC8FFD8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20CC9018C()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20CC90210(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20CC90230(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_20CC90284()
{
  v1 = *v0;
  sub_20CCDBB44();
  MEMORY[0x20F30F730](v1);
  return sub_20CCDBB64();
}

uint64_t sub_20CC902F8(uint64_t a1)
{
  v2 = *v1;
  sub_20CCDBB44();
  MEMORY[0x20F30F730](v2);
  return sub_20CCDBB64();
}

void *sub_20CC90350@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_20CC903B4(uint64_t *a1)
{
  v2 = *(sub_20CCDB244() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20CC92268(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_20CC9045C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_20CC9045C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_20CCDBA34();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20CCDB244();
        v6 = sub_20CCDB714();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20CCDB244() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_20CC909D0(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_20CC90588(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20CC90588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v67 = sub_20CCDAF54();
  v8 = *(v67 - 8);
  v9 = MEMORY[0x28223BE20](v67);
  v66 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v65 = &v48 - v11;
  v12 = sub_20CCDB244();
  v13 = MEMORY[0x28223BE20](v12);
  v58 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v71 = &v48 - v16;
  result = MEMORY[0x28223BE20](v15);
  v20 = &v48 - v18;
  v50 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v23 = *(v19 + 16);
    v22 = v19 + 16;
    v24 = *(v22 + 56);
    v60 = (v8 + 8);
    v61 = v23;
    v59 = (v22 - 8);
    v63 = v22;
    v25 = v21 + v24 * (a3 - 1);
    v55 = -v24;
    v56 = (v22 + 16);
    v26 = a1 - a3;
    v57 = v21;
    v49 = v24;
    v27 = v21 + v24 * a3;
    v64 = v12;
    v62 = &v48 - v18;
LABEL_6:
    v53 = v25;
    v54 = a3;
    v51 = v27;
    v52 = v26;
    v29 = v26;
    while (1)
    {
      v68 = v29;
      v30 = v61;
      v61(v20, v27, v12);
      v30(v71, v25, v12);
      v31 = v65;
      sub_20CCDB234();
      v32 = sub_20CCDAF34();
      v69 = v33;
      v70 = v32;
      v34 = *v60;
      v35 = v67;
      (*v60)(v31, v67);
      v36 = v66;
      sub_20CCDB234();
      v37 = sub_20CCDAF34();
      v39 = v38;
      v40 = v36;
      v41 = v69;
      v34(v40, v35);
      if (v70 == v37 && v41 == v39)
      {

        v28 = *v59;
        v12 = v64;
        (*v59)(v71, v64);
        v20 = v62;
        result = (v28)(v62, v12);
LABEL_5:
        a3 = v54 + 1;
        v25 = v53 + v49;
        v26 = v52 - 1;
        v27 = v51 + v49;
        if (v54 + 1 == v50)
        {
          return result;
        }

        goto LABEL_6;
      }

      v42 = sub_20CCDBA64();

      v43 = *v59;
      v12 = v64;
      (*v59)(v71, v64);
      v20 = v62;
      result = (v43)(v62, v12);
      v44 = v68;
      if ((v42 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v57)
      {
        break;
      }

      v45 = *v56;
      v46 = v58;
      (*v56)(v58, v27, v12);
      swift_arrayInitWithTakeFrontToBack();
      result = (v45)(v25, v46, v12);
      v25 += v55;
      v27 += v55;
      v47 = __CFADD__(v44, 1);
      v29 = v44 + 1;
      if (v47)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20CC909D0(char **a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v5 = v4;
  v153 = a1;
  v178 = sub_20CCDAF54();
  v8 = *(v178 - 8);
  v9 = MEMORY[0x28223BE20](v178);
  v175 = &v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v174 = &v149 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v164 = &v149 - v14;
  MEMORY[0x28223BE20](v13);
  v163 = &v149 - v15;
  v181 = sub_20CCDB244();
  v165 = *(v181 - 1);
  v16 = MEMORY[0x28223BE20](v181);
  v158 = &v149 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v172 = &v149 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v185 = &v149 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v184 = &v149 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v168 = &v149 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v167 = &v149 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v151 = &v149 - v29;
  result = MEMORY[0x28223BE20](v28);
  v150 = &v149 - v31;
  v32 = a3[1];
  v159 = a3;
  if (v32 < 1)
  {
    v34 = MEMORY[0x277D84F90];
LABEL_103:
    a4 = *v153;
    if (!*v153)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_105;
  }

  v33 = 0;
  v179 = v165 + 16;
  v180 = (v165 + 8);
  v176 = (v165 + 32);
  v177 = (v8 + 8);
  v34 = MEMORY[0x277D84F90];
  v152 = a4;
LABEL_4:
  v166 = v34;
  v157 = v33;
  if (v33 + 1 >= v32)
  {
    v47 = v33 + 1;
  }

  else
  {
    v169 = v32;
    v35 = *a3;
    v36 = *(v165 + 72);
    v37 = *a3 + v36 * (v33 + 1);
    v38 = *(v165 + 16);
    v39 = v150;
    v183 = v37;
    v40 = v181;
    v38(v150);
    v182 = v35;
    v41 = v35 + v36 * v33;
    v42 = v151;
    v170 = v38;
    (v38)(v151, v41, v40);
    LODWORD(v171) = sub_20CC8C348();
    if (v5)
    {
      v147 = v40;
      v148 = *v180;
      (*v180)(v42, v147);
      v148(v39, v147);
    }

    v154 = 0;
    v43 = *v180;
    (*v180)(v42, v40);
    v162 = v43;
    result = (v43)(v39, v40);
    v44 = v33 + 2;
    v45 = v183;
    v46 = v182 + v36 * (v33 + 2);
    v47 = v169;
    v48 = v36;
    v173 = v36;
    while (v47 != v44)
    {
      v51 = v170;
      (v170)(v167, v46, v40);
      v183 = v45;
      v51(v168, v45, v40);
      v52 = v163;
      sub_20CCDB234();
      v182 = sub_20CCDAF34();
      v54 = v53;
      v55 = *v177;
      v56 = v52;
      v57 = v178;
      (*v177)(v56, v178);
      v58 = v164;
      sub_20CCDB234();
      v59 = sub_20CCDAF34();
      v61 = v60;
      v55(v58, v57);
      if (v182 == v59 && v54 == v61)
      {
        v49 = 0;
      }

      else
      {
        v49 = sub_20CCDBA64();
      }

      v40 = v181;
      v50 = v162;
      (v162)(v168, v181);
      result = v50(v167, v40);
      ++v44;
      v48 = v173;
      v46 += v173;
      v45 = &v173[v183];
      v34 = v166;
      v47 = v169;
      if ((v171 ^ v49))
      {
        v47 = v44 - 1;
        break;
      }
    }

    v5 = v154;
    a3 = v159;
    a4 = v152;
    if (v171)
    {
      if (v47 < v157)
      {
        goto LABEL_136;
      }

      if (v157 < v47)
      {
        v62 = v48 * (v47 - 1);
        v63 = v47 * v48;
        v169 = v47;
        v64 = v47;
        v65 = v157;
        v66 = v157 * v48;
        do
        {
          if (v65 != --v64)
          {
            v68 = *v159;
            if (!*v159)
            {
              goto LABEL_140;
            }

            v69 = *v176;
            (*v176)(v158, v68 + v66, v181);
            if (v66 < v62 || v68 + v66 >= (v68 + v63))
            {
              v67 = v181;
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              v67 = v181;
              if (v66 != v62)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = (v69)(v68 + v62, v158, v67);
            v5 = v154;
            v34 = v166;
            v48 = v173;
          }

          ++v65;
          v62 -= v48;
          v63 -= v48;
          v66 += v48;
        }

        while (v65 < v64);
        a3 = v159;
        a4 = v152;
        v47 = v169;
      }
    }
  }

  v70 = a3[1];
  if (v47 >= v70)
  {
    goto LABEL_38;
  }

  if (__OFSUB__(v47, v157))
  {
    goto LABEL_133;
  }

  if (v47 - v157 >= a4)
  {
LABEL_38:
    v33 = v47;
    goto LABEL_39;
  }

  if (__OFADD__(v157, a4))
  {
    goto LABEL_134;
  }

  if ((v157 + a4) >= v70)
  {
    v71 = a3[1];
  }

  else
  {
    v71 = (v157 + a4);
  }

  a4 = v181;
  if (v71 < v157)
  {
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    result = sub_20CC9206C(v34);
    v34 = result;
LABEL_105:
    v186 = v34;
    v143 = *(v34 + 2);
    if (v143 >= 2)
    {
      while (1)
      {
        v144 = *a3;
        if (!*a3)
        {
          goto LABEL_141;
        }

        a3 = *&v34[16 * v143];
        v145 = *&v34[16 * v143 + 24];
        sub_20CC9178C(v144 + *(v165 + 72) * a3, (v144 + *(v165 + 72) * *&v34[16 * v143 + 16]), (v144 + *(v165 + 72) * v145), a4);
        if (v5)
        {
        }

        if (v145 < a3)
        {
          goto LABEL_130;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_20CC9206C(v34);
        }

        if (v143 - 2 >= *(v34 + 2))
        {
          goto LABEL_131;
        }

        v146 = &v34[16 * v143];
        *v146 = a3;
        *(v146 + 1) = v145;
        v186 = v34;
        result = sub_20CC91FE0(v143 - 1);
        v34 = v186;
        v143 = *(v186 + 2);
        a3 = v159;
        if (v143 <= 1)
        {
        }
      }
    }
  }

  if (v47 == v71)
  {
    goto LABEL_38;
  }

  v154 = v5;
  v117 = *a3;
  v118 = *(v165 + 72);
  v173 = *(v165 + 16);
  v119 = (v117 + v118 * (v47 - 1));
  v170 = -v118;
  v120 = v157 - v47;
  v171 = v117;
  v155 = v118;
  v121 = v117 + v47 * v118;
  v156 = v71;
LABEL_93:
  v169 = v47;
  v160 = v121;
  v161 = v120;
  v123 = v120;
  v162 = v119;
  while (1)
  {
    v182 = v123;
    v124 = v173;
    (v173)(v184, v121, a4);
    v124(v185, v119, a4);
    v125 = v174;
    sub_20CCDB234();
    v126 = sub_20CCDAF34();
    v183 = v127;
    v128 = *v177;
    v129 = v125;
    v130 = v178;
    (*v177)(v129, v178);
    v131 = v175;
    sub_20CCDB234();
    v132 = sub_20CCDAF34();
    v134 = v133;
    v135 = v130;
    v136 = v183;
    v128(v131, v135);
    if (v126 == v132 && v136 == v134)
    {

      a4 = v181;
      v122 = *v180;
      (*v180)(v185, v181);
      v122(v184, a4);
LABEL_92:
      v47 = v169 + 1;
      v119 = &v162[v155];
      v120 = v161 - 1;
      v121 = v160 + v155;
      v33 = v156;
      if ((v169 + 1) != v156)
      {
        goto LABEL_93;
      }

      v5 = v154;
      a3 = v159;
      v34 = v166;
LABEL_39:
      if (v33 < v157)
      {
        goto LABEL_132;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20CC92164(0, *(v34 + 2) + 1, 1, v34);
        v34 = result;
      }

      a4 = *(v34 + 2);
      v72 = *(v34 + 3);
      v73 = a4 + 1;
      if (a4 >= v72 >> 1)
      {
        result = sub_20CC92164((v72 > 1), a4 + 1, 1, v34);
        v34 = result;
      }

      *(v34 + 2) = v73;
      v74 = &v34[16 * a4];
      *(v74 + 4) = v157;
      *(v74 + 5) = v33;
      if (!*v153)
      {
        goto LABEL_142;
      }

      if (a4)
      {
        v75 = *v153;
        while (1)
        {
          v76 = v73 - 1;
          if (v73 >= 4)
          {
            break;
          }

          if (v73 == 3)
          {
            v77 = *(v34 + 4);
            v78 = *(v34 + 5);
            v87 = __OFSUB__(v78, v77);
            v79 = v78 - v77;
            v80 = v87;
LABEL_60:
            if (v80)
            {
              goto LABEL_121;
            }

            v93 = &v34[16 * v73];
            v95 = *v93;
            v94 = *(v93 + 1);
            v96 = __OFSUB__(v94, v95);
            v97 = v94 - v95;
            v98 = v96;
            if (v96)
            {
              goto LABEL_124;
            }

            v99 = &v34[16 * v76 + 32];
            v101 = *v99;
            v100 = *(v99 + 1);
            v87 = __OFSUB__(v100, v101);
            v102 = v100 - v101;
            if (v87)
            {
              goto LABEL_127;
            }

            if (__OFADD__(v97, v102))
            {
              goto LABEL_128;
            }

            if (v97 + v102 >= v79)
            {
              if (v79 < v102)
              {
                v76 = v73 - 2;
              }

              goto LABEL_81;
            }

            goto LABEL_74;
          }

          v103 = &v34[16 * v73];
          v105 = *v103;
          v104 = *(v103 + 1);
          v87 = __OFSUB__(v104, v105);
          v97 = v104 - v105;
          v98 = v87;
LABEL_74:
          if (v98)
          {
            goto LABEL_123;
          }

          v106 = &v34[16 * v76];
          v108 = *(v106 + 4);
          v107 = *(v106 + 5);
          v87 = __OFSUB__(v107, v108);
          v109 = v107 - v108;
          if (v87)
          {
            goto LABEL_126;
          }

          if (v109 < v97)
          {
            goto LABEL_3;
          }

LABEL_81:
          a4 = v76 - 1;
          if (v76 - 1 >= v73)
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
            goto LABEL_135;
          }

          if (!*a3)
          {
            goto LABEL_139;
          }

          v114 = *&v34[16 * a4 + 32];
          v115 = *&v34[16 * v76 + 40];
          sub_20CC9178C(*a3 + *(v165 + 72) * v114, (*a3 + *(v165 + 72) * *&v34[16 * v76 + 32]), (*a3 + *(v165 + 72) * v115), v75);
          if (v5)
          {
          }

          if (v115 < v114)
          {
            goto LABEL_117;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = sub_20CC9206C(v34);
          }

          if (a4 >= *(v34 + 2))
          {
            goto LABEL_118;
          }

          v116 = &v34[16 * a4];
          *(v116 + 4) = v114;
          *(v116 + 5) = v115;
          v186 = v34;
          result = sub_20CC91FE0(v76);
          v34 = v186;
          v73 = *(v186 + 2);
          if (v73 <= 1)
          {
            goto LABEL_3;
          }
        }

        v81 = &v34[16 * v73 + 32];
        v82 = *(v81 - 64);
        v83 = *(v81 - 56);
        v87 = __OFSUB__(v83, v82);
        v84 = v83 - v82;
        if (v87)
        {
          goto LABEL_119;
        }

        v86 = *(v81 - 48);
        v85 = *(v81 - 40);
        v87 = __OFSUB__(v85, v86);
        v79 = v85 - v86;
        v80 = v87;
        if (v87)
        {
          goto LABEL_120;
        }

        v88 = &v34[16 * v73];
        v90 = *v88;
        v89 = *(v88 + 1);
        v87 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v87)
        {
          goto LABEL_122;
        }

        v87 = __OFADD__(v79, v91);
        v92 = v79 + v91;
        if (v87)
        {
          goto LABEL_125;
        }

        if (v92 >= v84)
        {
          v110 = &v34[16 * v76 + 32];
          v112 = *v110;
          v111 = *(v110 + 1);
          v87 = __OFSUB__(v111, v112);
          v113 = v111 - v112;
          if (v87)
          {
            goto LABEL_129;
          }

          if (v79 < v113)
          {
            v76 = v73 - 2;
          }

          goto LABEL_81;
        }

        goto LABEL_60;
      }

LABEL_3:
      v32 = a3[1];
      a4 = v152;
      if (v33 >= v32)
      {
        goto LABEL_103;
      }

      goto LABEL_4;
    }

    v137 = sub_20CCDBA64();

    a4 = v181;
    v138 = *v180;
    (*v180)(v185, v181);
    result = (v138)(v184, a4);
    if ((v137 & 1) == 0)
    {
      goto LABEL_92;
    }

    v139 = v182;
    if (!v171)
    {
      break;
    }

    v140 = *v176;
    v141 = v172;
    (*v176)(v172, v121, a4);
    swift_arrayInitWithTakeFrontToBack();
    v140(v119, v141, a4);
    v119 += v170;
    v121 += v170;
    v142 = __CFADD__(v139, 1);
    v123 = v139 + 1;
    if (v142)
    {
      goto LABEL_92;
    }
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
  return result;
}

uint64_t sub_20CC9178C(unint64_t a1, char *a2, char *a3, char *a4)
{
  v82 = sub_20CCDAF54();
  v8 = *(v82 - 8);
  v9 = MEMORY[0x28223BE20](v82);
  v74 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v73 = &v70 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v78 = &v70 - v14;
  MEMORY[0x28223BE20](v13);
  v77 = &v70 - v15;
  v16 = sub_20CCDB244();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v80 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v79 = &v70 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v84 = &v70 - v23;
  result = MEMORY[0x28223BE20](v22);
  v83 = &v70 - v25;
  v27 = *(v26 + 72);
  if (!v27)
  {
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    return result;
  }

  if (&a2[-a1] == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_68;
  }

  v28 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_69;
  }

  v29 = &a2[-a1] / v27;
  v90 = a1;
  v89 = a4;
  v81 = v16;
  if (v29 >= v28 / v27)
  {
    v31 = v28 / v27 * v27;
    if (a4 < a2 || &a2[v31] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v31 < 1)
    {
      v52 = &a4[v31];
    }

    else
    {
      v50 = -v27;
      v75 = (v17 + 16);
      v71 = (v17 + 8);
      v72 = (v8 + 8);
      v51 = &a4[v31];
      v52 = &a4[v31];
      v85 = a1;
      v86 = a4;
      v84 = v50;
      do
      {
        v70 = v52;
        v53 = a2;
        a2 += v50;
        v87 = a2;
        v77 = v53;
        while (1)
        {
          if (v53 <= a1)
          {
            v90 = v53;
            v88 = v70;
            goto LABEL_66;
          }

          v54 = a3;
          v76 = v52;
          v83 = v51;
          v55 = *v75;
          v78 = &v51[v50];
          v55(v79);
          (v55)(v80, a2, v16);
          v56 = v73;
          sub_20CCDB234();
          v57 = sub_20CCDAF34();
          v59 = v58;
          v60 = *v72;
          v61 = v82;
          (*v72)(v56, v82);
          v62 = v74;
          sub_20CCDB234();
          v63 = sub_20CCDAF34();
          v65 = v64;
          v60(v62, v61);
          if (v57 == v63 && v59 == v65)
          {
            v66 = 0;
          }

          else
          {
            v66 = sub_20CCDBA64();
          }

          a3 = &v84[v54];
          v67 = *v71;
          v16 = v81;
          (*v71)(v80, v81);
          v67(v79, v16);
          v68 = v86;
          a2 = v87;
          a1 = v85;
          if (v66)
          {
            break;
          }

          v69 = v78;
          v52 = v78;
          if (v54 < v83 || a3 >= v83)
          {
            swift_arrayInitWithTakeFrontToBack();
            v50 = v84;
          }

          else
          {
            v50 = v84;
            if (v54 != v83)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v51 = v52;
          v53 = v77;
          if (v69 <= v68)
          {
            a2 = v77;
            goto LABEL_65;
          }
        }

        if (v54 < v77 || a3 >= v77)
        {
          swift_arrayInitWithTakeFrontToBack();
          v52 = v76;
          v50 = v84;
        }

        else
        {
          v52 = v76;
          v50 = v84;
          if (v54 != v77)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v51 = v83;
      }

      while (v83 > v68);
    }

LABEL_65:
    v90 = a2;
    v88 = v52;
  }

  else
  {
    v30 = v29 * v27;
    if (a4 < a1 || a1 + v30 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v80 = &a4[v30];
    v88 = &a4[v30];
    if (v30 >= 1 && a2 < a3)
    {
      v33 = *(v17 + 16);
      v73 = (v8 + 8);
      v74 = v33;
      v79 = (v17 + 16);
      v72 = (v17 + 8);
      v75 = v27;
      v76 = a3;
      do
      {
        v85 = a1;
        v87 = a2;
        v34 = v74;
        (v74)(v83, a2, v16);
        v86 = a4;
        v34(v84, a4, v16);
        v35 = v77;
        sub_20CCDB234();
        v36 = sub_20CCDAF34();
        v38 = v37;
        v39 = *v73;
        v40 = v82;
        (*v73)(v35, v82);
        v41 = v78;
        sub_20CCDB234();
        v42 = sub_20CCDAF34();
        v44 = v43;
        v39(v41, v40);
        if (v36 == v42 && v38 == v44)
        {

          v45 = *v72;
          v16 = v81;
          (*v72)(v84, v81);
          v45(v83, v16);
          v46 = v85;
        }

        else
        {
          v47 = sub_20CCDBA64();

          v48 = *v72;
          v16 = v81;
          (*v72)(v84, v81);
          v48(v83, v16);
          v46 = v85;
          if (v47)
          {
            a4 = v86;
            v49 = v75;
            a2 = v75 + v87;
            if (v85 < v87 || v85 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v85 != v87)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            goto LABEL_35;
          }
        }

        v49 = v75;
        a4 = v75 + v86;
        if (v46 < v86 || v46 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v87;
        }

        else
        {
          a2 = v87;
          if (v46 != v86)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v89 = a4;
LABEL_35:
        a1 = v49 + v46;
        v90 = a1;
      }

      while (a4 < v80 && a2 < v76);
    }
  }

LABEL_66:
  sub_20CC92080(&v90, &v89, &v88);
  return 1;
}

uint64_t sub_20CC91FE0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_20CC9206C(v3);
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

uint64_t sub_20CC92080(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_20CCDB244();
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

char *sub_20CC92164(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F480, &qword_20CCDC720);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_20CC9227C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_20CCDAF54() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_20CC8E600(a1, a2, v2 + v6, v7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20CC92350(uint64_t a1)
{
  v3 = *(sub_20CCDAF54() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_20CC8EDB8(a1, v1 + v4, v5);
}

uint64_t sub_20CC923F8(uint64_t a1)
{
  v4 = *(sub_20CCDAF54() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20CC8DF7C;

  return sub_20CC8F160(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_20CC924F0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20CCDAF54() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_20CC92A0C;

  return sub_20CC8E9E8(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_20CC92634(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F438, &unk_20CCDC6C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CC926A4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_39Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20CC927C0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_20CC92858()
{
  result = qword_28110EDB8;
  if (!qword_28110EDB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28110EDB8);
  }

  return result;
}

uint64_t sub_20CC928A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CC8DF7C;

  return sub_20CC8DE94(a1, v4);
}

void sub_20CC92970(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_20CC92A20()
{
  sub_20CCDBB44();
  MEMORY[0x20F30F730](0);
  return sub_20CCDBB64();
}

uint64_t sub_20CC92A8C(uint64_t a1)
{
  sub_20CCDBB44();
  MEMORY[0x20F30F730](0);
  return sub_20CCDBB64();
}

uint64_t sub_20CC92ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v36 = a2;
  v38 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F538, &unk_20CCDC8B0);
  v4 = *(v37 - 8);
  v39 = *(v4 + 64);
  v5 = MEMORY[0x28223BE20](v37);
  v35 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v29 = &v26 - v7;
  v9 = sub_20CCDA784();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v34 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v32 = *(v10 + 16);
  v32(&v26 - v13, a3, v9);
  v31 = *(v4 + 16);
  v31(v8, v38, v37);
  v15 = *(v10 + 80);
  v16 = (v15 + 16) & ~v15;
  v17 = *(v4 + 80);
  v18 = (v11 + v17 + v16) & ~v17;
  v30 = v15 | v17;
  v19 = swift_allocObject();
  v28 = *(v10 + 32);
  v28(v19 + v16, v14, v9);
  v20 = *(v4 + 32);
  v26 = v4 + 32;
  v27 = v20;
  v21 = v37;
  v20((v19 + v18), v29, v37);
  v22 = v34;
  v32(v34, v33, v9);
  v23 = v35;
  v31(v35, v38, v21);
  v24 = swift_allocObject();
  v28(&v24[v16], v22, v9);
  v27(&v24[v18], v23, v21);
  sub_20CC9636C(sub_20CC96DF8, v19, sub_20CC96E34, v24);
}

void sub_20CC92E20(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v21 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F538, &unk_20CCDC8B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v8 = sub_20CCDA784();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20CCDA764();
  (*(v9 + 16))(v11, a2, v8);
  v12 = v4;
  (*(v5 + 16))(v7, v19, v4);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = (v10 + *(v5 + 80) + v13) & ~*(v5 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v13, v11, v8);
  (*(v5 + 32))(v15 + v14, v7, v12);
  aBlock[4] = sub_20CC97114;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CC93998;
  aBlock[3] = &block_descriptor_47;
  v16 = _Block_copy(aBlock);

  v17 = v20;
  [v21 retrieveWith:v20 completion:v16];
  _Block_release(v16);
}

uint64_t sub_20CC930BC(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v59 = a5;
  v56 = a4;
  v58 = sub_20CCDB584();
  v8 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v9 = sub_20CCDA784();
  v57 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v52 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v52 - v14;
  v16 = sub_20CCDADE4();
  v17 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  if (a3)
  {
    v21 = a3;
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v58, qword_28110EE00);
    v22 = v57;
    v23 = v9;
    (*(v57 + 16))(v15, v56, v9);
    v24 = a3;
    v25 = sub_20CCDB564();
    v26 = sub_20CCDB894();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v60[0] = v29;
      *v27 = 136315394;
      sub_20CC96F70(&qword_27C80F540, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v30 = sub_20CCDBA44();
      v31 = v23;
      v33 = v32;
      (*(v22 + 8))(v15, v31);
      v34 = sub_20CC88C4C(v30, v33, v60);

      *(v27 + 4) = v34;
      *(v27 + 12) = 2112;
      v35 = a3;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v36;
      *v28 = v36;
      _os_log_impl(&dword_20CC86000, v25, v26, "Failed to retrieve record for uuid %s. Error: %@", v27, 0x16u);
      sub_20CC96BBC(v28);
      MEMORY[0x20F30FD70](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x20F30FD70](v29, -1, -1);
      MEMORY[0x20F30FD70](v27, -1, -1);
    }

    else
    {

      (*(v22 + 8))(v15, v9);
    }

    v60[0] = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F538, &unk_20CCDC8B0);
    return sub_20CCDB744();
  }

  else
  {
    v53 = v20;
    v54 = v19;
    v55 = v8;
    v37 = &v52 - v18;
    sub_20CC96DA4(a1, a2);
    sub_20CC96F70(&qword_27C80F530, MEMORY[0x277D0A010], MEMORY[0x277D0A008]);
    sub_20CCDAFC4();
    v38 = v37;
    v39 = v9;
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v58, qword_28110EE00);
    v40 = v57;
    (*(v57 + 16))(v13, v56, v9);
    v41 = sub_20CCDB564();
    v42 = sub_20CCDB874();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v60[0] = v44;
      *v43 = 136315138;
      sub_20CC96F70(&qword_27C80F540, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v45 = sub_20CCDBA44();
      v46 = v39;
      v48 = v47;
      (*(v40 + 8))(v13, v46);
      v49 = sub_20CC88C4C(v45, v48, v60);

      *(v43 + 4) = v49;
      _os_log_impl(&dword_20CC86000, v41, v42, "Found record for uuid %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x20F30FD70](v44, -1, -1);
      MEMORY[0x20F30FD70](v43, -1, -1);
    }

    else
    {

      (*(v40 + 8))(v13, v9);
    }

    v51 = v54;
    (*(v54 + 16))(v53, v38, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F538, &unk_20CCDC8B0);
    sub_20CCDB754();
    return (*(v51 + 8))(v38, v16);
  }
}

uint64_t sub_20CC93998(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v7 = sub_20CCDA6E4();
  v9 = v8;

  v10 = a3;
  v5(v7, v9, a3);

  sub_20CC9720C(v7, v9);
}

uint64_t sub_20CC93A40(void *a1, uint64_t a2)
{
  v4 = sub_20CCDA784();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v8 = sub_20CCDB584();
  __swift_project_value_buffer(v8, qword_28110EE00);
  (*(v5 + 16))(v7, a2, v4);
  v9 = a1;
  v10 = sub_20CCDB564();
  v11 = sub_20CCDB894();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v12 = 136315394;
    sub_20CC96F70(&qword_27C80F540, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v13 = sub_20CCDBA44();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = sub_20CC88C4C(v13, v15, &v26);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2112;
    v17 = a1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v18;
    v19 = v24;
    *v24 = v18;
    _os_log_impl(&dword_20CC86000, v10, v11, "Failed to retrieve record for uuid %s. proxy error: %@", v12, 0x16u);
    sub_20CC96BBC(v19);
    MEMORY[0x20F30FD70](v19, -1, -1);
    v20 = v25;
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x20F30FD70](v20, -1, -1);
    MEMORY[0x20F30FD70](v12, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v26 = a1;
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F538, &unk_20CCDC8B0);
  return sub_20CCDB744();
}

uint64_t sub_20CC93D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v36 = a2;
  v38 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F520, &qword_20CCDC8A0);
  v4 = *(v37 - 8);
  v39 = *(v4 + 64);
  v5 = MEMORY[0x28223BE20](v37);
  v35 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v29 = &v26 - v7;
  v9 = sub_20CCDB084();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v34 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v32 = *(v10 + 16);
  v32(&v26 - v13, a3, v9);
  v31 = *(v4 + 16);
  v31(v8, v38, v37);
  v15 = *(v10 + 80);
  v16 = (v15 + 16) & ~v15;
  v17 = *(v4 + 80);
  v18 = (v11 + v17 + v16) & ~v17;
  v30 = v15 | v17;
  v19 = swift_allocObject();
  v28 = *(v10 + 32);
  v28(v19 + v16, v14, v9);
  v20 = *(v4 + 32);
  v26 = v4 + 32;
  v27 = v20;
  v21 = v37;
  v20((v19 + v18), v29, v37);
  v22 = v34;
  v32(v34, v33, v9);
  v23 = v35;
  v31(v35, v38, v21);
  v24 = swift_allocObject();
  v28(&v24[v16], v22, v9);
  v27(&v24[v18], v23, v21);
  sub_20CC9636C(sub_20CC96C3C, v19, sub_20CC96C78, v24);
}

void sub_20CC94088(void *a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v35 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F520, &qword_20CCDC8A0);
  v4 = *(v34 - 8);
  v31 = *(v4 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - v5;
  v30 = sub_20CCDB084();
  v6 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = v7;
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F528, &qword_20CCDC8A8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_20CCDB3B4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CCDB064();
  sub_20CCDB3A4();
  (*(v13 + 8))(v15, v12);
  v28 = sub_20CCDB664();

  sub_20CCDB074();
  v16 = sub_20CCDA624();
  v17 = *(v16 - 8);
  v18 = 0;
  if ((*(v17 + 48))(v11, 1, v16) != 1)
  {
    v18 = sub_20CCDA614();
    (*(v17 + 8))(v11, v16);
  }

  v19 = a2;
  v20 = v30;
  (*(v6 + 16))(v8, v19, v30);
  v21 = v33;
  v22 = v34;
  (*(v4 + 16))(v33, v32, v34);
  v23 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v24 = (v29 + *(v4 + 80) + v23) & ~*(v4 + 80);
  v25 = swift_allocObject();
  (*(v6 + 32))(v25 + v23, v8, v20);
  (*(v4 + 32))(v25 + v24, v21, v22);
  aBlock[4] = sub_20CC96CB4;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CC94E74;
  aBlock[3] = &block_descriptor_35;
  v26 = _Block_copy(aBlock);

  v27 = v28;
  [v35 listRecordsWithAdapter:v28 interval:v18 completion:v26];
  _Block_release(v26);
}

uint64_t sub_20CC944DC(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v63 = a3;
  v7 = sub_20CCDB3B4();
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x28223BE20](v7);
  v60 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20CCDADE4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20CCDB084();
  v64 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v17);
  if (a2)
  {
    v20 = a2;
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v21 = sub_20CCDB584();
    __swift_project_value_buffer(v21, qword_28110EE00);
    v22 = v64;
    (*(v64 + 16))(v16, v63, v13);
    v23 = a2;
    v24 = sub_20CCDB564();
    v25 = sub_20CCDB894();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v59 = v13;
      v65 = v27;
      v66 = v27;
      *v26 = 136315394;
      v28 = v60;
      sub_20CCDB064();
      v29 = sub_20CCDB3A4();
      v31 = v30;
      (*(v61 + 8))(v28, v62);
      (*(v22 + 8))(v16, v59);
      v32 = sub_20CC88C4C(v29, v31, &v66);

      *(v26 + 4) = v32;
      *(v26 + 12) = 2112;
      v33 = a2;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v34;
      v35 = v63;
      *v63 = v34;
      _os_log_impl(&dword_20CC86000, v24, v25, "Failed to list records for adapter %s. Error: %@", v26, 0x16u);
      sub_20CC96BBC(v35);
      MEMORY[0x20F30FD70](v35, -1, -1);
      v36 = v65;
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x20F30FD70](v36, -1, -1);
      MEMORY[0x20F30FD70](v26, -1, -1);
    }

    else
    {

      (*(v22 + 8))(v16, v13);
    }

    v66 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F520, &qword_20CCDC8A0);
    return sub_20CCDB744();
  }

  else
  {
    v58 = v57 - v18;
    v59 = v13;
    v37 = *(a1 + 16);
    v38 = MEMORY[0x277D84F90];
    if (v37)
    {
      v57[0] = v19;
      v57[1] = a4;
      v66 = MEMORY[0x277D84F90];
      sub_20CCA5788(0, v37, 0);
      v38 = v66;
      v65 = (v10 + 32);
      v39 = (a1 + 40);
      do
      {
        sub_20CC96DA4(*(v39 - 1), *v39);
        sub_20CC96F70(&qword_27C80F530, MEMORY[0x277D0A010], MEMORY[0x277D0A008]);
        sub_20CCDAFC4();
        v66 = v38;
        v41 = *(v38 + 16);
        v40 = *(v38 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_20CCA5788((v40 > 1), v41 + 1, 1);
          v38 = v66;
        }

        v39 += 2;
        *(v38 + 16) = v41 + 1;
        (*(v10 + 32))(v38 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v41, v12, v9);
        --v37;
      }

      while (v37);
    }

    v43 = v59;
    v44 = v64;
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v45 = sub_20CCDB584();
    __swift_project_value_buffer(v45, qword_28110EE00);
    v46 = v58;
    (*(v44 + 16))(v58, v63, v43);

    v47 = sub_20CCDB564();
    v48 = sub_20CCDB874();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v66 = v65;
      *v49 = 134218242;
      *(v49 + 4) = *(v38 + 16);

      *(v49 + 12) = 2080;
      v50 = v60;
      sub_20CCDB064();
      v63 = sub_20CCDB3A4();
      v51 = v44;
      v52 = v43;
      v54 = v53;
      (*(v61 + 8))(v50, v62);
      (*(v51 + 8))(v46, v52);
      v55 = sub_20CC88C4C(v63, v54, &v66);

      *(v49 + 14) = v55;
      _os_log_impl(&dword_20CC86000, v47, v48, "Listed %ld records for adapter %s", v49, 0x16u);
      v56 = v65;
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x20F30FD70](v56, -1, -1);
      MEMORY[0x20F30FD70](v49, -1, -1);
    }

    else
    {

      (*(v44 + 8))(v46, v43);
    }

    v66 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F520, &qword_20CCDC8A0);
    return sub_20CCDB754();
  }
}

void sub_20CC94E74(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_20CCDB6F4();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_20CC94F04(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20CCDB3B4();
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20CCDB084();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v13 = sub_20CCDB584();
  __swift_project_value_buffer(v13, qword_28110EE00);
  (*(v10 + 16))(v12, a2, v9);
  v14 = a1;
  v15 = sub_20CCDB564();
  v16 = sub_20CCDB894();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = a3;
    v18 = v17;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v34 = v30;
    *v18 = 136315394;
    sub_20CCDB064();
    v19 = sub_20CCDB3A4();
    v21 = v20;
    (*(v32 + 8))(v8, v33);
    (*(v10 + 8))(v12, v9);
    v22 = sub_20CC88C4C(v19, v21, &v34);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2112;
    v23 = a1;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v24;
    v25 = v29;
    *v29 = v24;
    _os_log_impl(&dword_20CC86000, v15, v16, "Failed to list records for adapter %s. proxy error: %@", v18, 0x16u);
    sub_20CC96BBC(v25);
    MEMORY[0x20F30FD70](v25, -1, -1);
    v26 = v30;
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x20F30FD70](v26, -1, -1);
    MEMORY[0x20F30FD70](v18, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v34 = a1;
  v27 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F520, &qword_20CCDC8A0);
  return sub_20CCDB744();
}

uint64_t sub_20CC9526C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v20 = a1;
  v21 = a4;
  v23 = a2;
  v24 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C80F510, &unk_20CCDC890);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v22 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  v12 = *(v7 + 16);
  v12(&v19 - v10, a1, v6);
  v13 = *(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v24;
  *(v14 + 24) = a4;
  v15 = *(v7 + 32);
  v15(v14 + ((v13 + 32) & ~v13), v11, v6);
  v16 = v22;
  v12(v22, v20, v6);
  v17 = swift_allocObject();
  v15(v17 + ((v13 + 16) & ~v13), v16, v6);
  sub_20CC96DA4(v24, v21);
  sub_20CC9636C(sub_20CC97260, v14, sub_20CC972E0, v17);
}

void sub_20CC95478(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C80F510, &unk_20CCDC890);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = sub_20CCDA6D4();
  (*(v7 + 16))(v9, a4, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_20CC97400;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CC95900;
  aBlock[3] = &block_descriptor_59;
  v13 = _Block_copy(aBlock);

  [a1 saveInference:v10 completion:v13];
  _Block_release(v13);
}

uint64_t sub_20CC95648(char a1, void *a2)
{
  v4 = sub_20CCDB584();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = a2;
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v4, qword_28110EE00);
    v9 = a2;
    v10 = sub_20CCDB564();
    v11 = sub_20CCDB894();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = a2;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_20CC86000, v10, v11, "Failed to save record. error: %@", v12, 0xCu);
      sub_20CC96BBC(v13);
      MEMORY[0x20F30FD70](v13, -1, -1);
      MEMORY[0x20F30FD70](v12, -1, -1);
    }

    v20 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C80F510, &unk_20CCDC890);
    return sub_20CCDB744();
  }

  else
  {
    sub_20CCDB384();
    v17 = sub_20CCDB564();
    v18 = sub_20CCDB874();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20CC86000, v17, v18, "Successfully saved record", v19, 2u);
      MEMORY[0x20F30FD70](v19, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v21 = a1 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C80F510, &unk_20CCDC890);
    return sub_20CCDB754();
  }
}

void sub_20CC95900(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_20CC95978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v29 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C80F510, &unk_20CCDC890);
  v26 = v5;
  v6 = *(v5 - 8);
  v30 = *(v6 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v31 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v27 = &v25 - v9;
  v11 = sub_20CCDB334();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a3, v11);
  v28 = *(v6 + 16);
  v28(v10, a1, v5);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = *(v6 + 80);
  v17 = (v13 + v16 + v15) & ~v16;
  v25 = v16 | 7;
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v15, v14, v11);
  v19 = *(v6 + 32);
  v20 = v18 + v17;
  v21 = v26;
  v19(v20, v27, v26);
  v22 = v31;
  v28(v31, v29, v21);
  v23 = swift_allocObject();
  v19(v23 + ((v16 + 16) & ~v16), v22, v21);
  sub_20CC9636C(sub_20CC96B74, v18, sub_20CC96BB0, v23);
}

void sub_20CC95C50(void *a1, uint64_t a2, uint64_t a3)
{
  v16 = a3;
  v17 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C80F510, &unk_20CCDC890);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v7 = sub_20CCDA784();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CCDB314();
  v11 = sub_20CCDB664();

  sub_20CCDB324();
  v12 = sub_20CCDA764();
  (*(v8 + 8))(v10, v7);
  (*(v4 + 16))(v6, v16, v3);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  (*(v4 + 32))(v14 + v13, v6, v3);
  aBlock[4] = sub_20CC96C24;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CC95900;
  aBlock[3] = &block_descriptor_23;
  v15 = _Block_copy(aBlock);

  [v17 setFeedbackId:v11 for:v12 completion:v15];
  _Block_release(v15);
}

uint64_t sub_20CC95ED4(char a1, void *a2)
{
  v4 = sub_20CCDB584();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  if (a2)
  {
    v11 = a2;
    sub_20CCDB384();
    v12 = a2;
    v13 = sub_20CCDB564();
    v14 = sub_20CCDB894();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = a2;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_20CC86000, v13, v14, "Failed to set feedback id. error: %@", v15, 0xCu);
      sub_20CC96BBC(v16);
      MEMORY[0x20F30FD70](v16, -1, -1);
      MEMORY[0x20F30FD70](v15, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v23 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C80F510, &unk_20CCDC890);
    return sub_20CCDB744();
  }

  else
  {
    sub_20CCDB384();
    v20 = sub_20CCDB564();
    v21 = sub_20CCDB874();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_20CC86000, v20, v21, "Successfully set feedback id", v22, 2u);
      MEMORY[0x20F30FD70](v22, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
    v24 = a1 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C80F510, &unk_20CCDC890);
    return sub_20CCDB754();
  }
}

uint64_t sub_20CC96194(void *a1, uint64_t a2, const char *a3)
{
  v5 = sub_20CCDB584();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CCDB384();
  v9 = a1;
  v10 = sub_20CCDB564();
  v11 = sub_20CCDB894();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = a1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_20CC86000, v10, v11, a3, v12, 0xCu);
    sub_20CC96BBC(v13);
    MEMORY[0x20F30FD70](v13, -1, -1);
    MEMORY[0x20F30FD70](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v18[1] = a1;
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C80F510, &unk_20CCDC890);
  return sub_20CCDB744();
}

void sub_20CC9636C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t a1), void *a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC28FitnessIntelligenceInference23InferenceDatabaseClient_proxyProvider;
  v11 = *&v4[OBJC_IVAR____TtC28FitnessIntelligenceInference23InferenceDatabaseClient_proxyProvider];
  if (v11)
  {
    v12 = *&v4[OBJC_IVAR____TtC28FitnessIntelligenceInference23InferenceDatabaseClient_proxyProvider];
    v13 = v12;
  }

  else
  {
    v23 = *&v4[OBJC_IVAR____TtC28FitnessIntelligenceInference23InferenceDatabaseClient_healthStore];
    sub_20CCDAFE4();
    v24 = a1;
    v14 = objc_allocWithZone(MEMORY[0x277CCDAA0]);
    v15 = v4;
    v16 = sub_20CCDB664();

    v17 = sub_20CCDA764();
    v13 = [v14 initWithHealthStore:v23 taskIdentifier:v16 exportedObject:v15 taskUUID:v17];

    a1 = v24;
    v12 = 0;
    v11 = *&v5[v10];
  }

  *&v5[v10] = v13;
  v18 = v12;
  v19 = v13;

  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a1;
  v20[5] = a2;
  v29 = sub_20CC96AFC;
  v30 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_20CC9669C;
  v28 = &block_descriptor_0;
  v21 = _Block_copy(&aBlock);

  v29 = a3;
  v30 = a4;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_20CC9670C;
  v28 = &block_descriptor_11;
  v22 = _Block_copy(&aBlock);

  [v19 fetchProxyWithHandler:v21 errorHandler:v22];
  _Block_release(v22);
  _Block_release(v21);
}

void sub_20CC965D0(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)())
{
  sub_20CC89458(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F500, &qword_20CCDC888);
  if (swift_dynamicCast())
  {
    a4();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_20CC96B20();
    v6 = swift_allocError();
    a2();
  }
}

uint64_t sub_20CC9669C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5[3] = swift_getObjectType();
  v5[0] = a2;

  swift_unknownObjectRetain();
  v3(v5);

  return __swift_destroy_boxed_opaque_existential_0(v5);
}

void sub_20CC9670C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_20CC967A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InferenceDatabaseClient(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for InferenceDatabaseClient(uint64_t a1)
{
  result = qword_28110ED10;
  if (!qword_28110ED10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CC968BC(uint64_t a1)
{
  result = sub_20CCDA784();
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

uint64_t sub_20CC969C8()
{
  v0 = sub_20CCDB584();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CCDB384();
  v4 = sub_20CCDB564();
  v5 = sub_20CCDB8B4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_20CC86000, v4, v5, "InferenceDatabaseClient connection invalidated", v6, 2u);
    MEMORY[0x20F30FD70](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_20CC96B20()
{
  result = qword_27C80F508;
  if (!qword_27C80F508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C80F508);
  }

  return result;
}

uint64_t sub_20CC96BBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F460, &unk_20CCDC700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CC96CB4(uint64_t a1, void *a2)
{
  v5 = *(sub_20CCDB084() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F520, &qword_20CCDC8A0) - 8);
  v9 = v2 + ((v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_20CC944DC(a1, a2, (v2 + v6), v9);
}

uint64_t sub_20CC96DA4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_20CC96E70(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, unint64_t, uint64_t))
{
  v9 = *(a2(0) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v13 = v5 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  return a5(a1, v5 + v10, v13);
}

uint64_t sub_20CC96F70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_13Tm(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = a1(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  v14 = (v9 + v10 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v8 | v13;
  (*(v7 + 8))(v3 + v9, v6);
  (*(v12 + 8))(v3 + v14, v11);

  return MEMORY[0x2821FE8E8](v3, v14 + v15, v16 | 7);
}

uint64_t sub_20CC97114(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = *(sub_20CCDA784() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F538, &unk_20CCDC8B0) - 8);
  v11 = v3 + ((v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_20CC930BC(a1, a2, a3, v3 + v8, v11);
}

uint64_t sub_20CC9720C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_20CC97260(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C80F510, &unk_20CCDC890) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_20CC95478(a1, v4, v5, v6);
}

uint64_t objectdestroy_16Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C80F510, &unk_20CCDC890);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20CC97418(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C80F510, &unk_20CCDC890) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t getEnumTagSinglePayload for InferenceDatabaseClient.InferenceDatabaseClientError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for InferenceDatabaseClient.InferenceDatabaseClientError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_20CC975A8()
{
  result = qword_27C80F548;
  if (!qword_27C80F548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C80F548);
  }

  return result;
}

uint64_t sub_20CC97638()
{
  v1 = *v0;
  sub_20CCDBB44();
  MEMORY[0x20F30F730](v1);
  return sub_20CCDBB64();
}

uint64_t sub_20CC976AC(uint64_t a1)
{
  v2 = *v1;
  sub_20CCDBB44();
  MEMORY[0x20F30F730](v2);
  return sub_20CCDBB64();
}

uint64_t sub_20CC976F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_20CCDB114();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CC977D0, v5, 0);
}

uint64_t sub_20CC977D0()
{
  v44 = v0;
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[6];
  v5 = objc_allocWithZone(sub_20CCDA964());

  v6 = sub_20CCDA944();
  v7 = objc_allocWithZone(sub_20CCDA984());
  v8 = v6;
  v9 = sub_20CCDA974();
  v0[13] = v9;
  sub_20CCDA9A4();
  sub_20CCDA9C4();
  sub_20CCDA9B4();
  v42 = *(v3 + 16);
  v42(v1, v4, v2);
  v10 = (*(v3 + 88))(v1, v2);
  if (v10 != *MEMORY[0x277D0A4D8] && v10 != *MEMORY[0x277D0A4D0] && v10 != *MEMORY[0x277D0A4C8])
  {
    (*(v0[9] + 8))(v0[12], v0[8]);
  }

  sub_20CCDA9E4();
  sub_20CCDA9D4();

  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v11 = v0[11];
  v12 = v0[8];
  v13 = v0[6];
  v14 = sub_20CCDB584();
  __swift_project_value_buffer(v14, qword_28110EE00);
  v42(v11, v13, v12);

  v15 = sub_20CCDB564();
  v16 = sub_20CCDB8B4();

  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[11];
  if (v17)
  {
    v19 = v0[9];
    v20 = v0[8];
    v38 = v0[5];
    v39 = v0[10];
    v37 = v0[4];
    v21 = v0[2];
    v22 = v0[3];
    v40 = v16;
    v23 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v43 = v41;
    *v23 = 136315650;
    *(v23 + 4) = sub_20CC88C4C(v21, v22, &v43);
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_20CC88C4C(v37, v38, &v43);
    *(v23 + 22) = 2080;
    v42(v39, v18, v20);
    v24 = sub_20CCDB684();
    v26 = v25;
    (*(v19 + 8))(v18, v20);
    v27 = sub_20CC88C4C(v24, v26, &v43);

    *(v23 + 24) = v27;
    _os_log_impl(&dword_20CC86000, v15, v40, "Prewarming for %s (%s) (%s)", v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F30FD70](v41, -1, -1);
    MEMORY[0x20F30FD70](v23, -1, -1);
  }

  else
  {
    v28 = v0[8];
    v29 = v0[9];

    (*(v29 + 8))(v18, v28);
  }

  v30 = v0[7];
  Current = CFAbsoluteTimeGetCurrent();
  v32 = sub_20CC9D638(&qword_27C80F5F0, type metadata accessor for AudioSynthesizer, &unk_20CCDCA50);
  v33 = swift_task_alloc();
  v0[14] = v33;
  *(v33 + 2) = v30;
  *(v33 + 3) = v9;
  v33[4] = Current;
  v34 = swift_task_alloc();
  v0[15] = v34;
  *v34 = v0;
  v34[1] = sub_20CC97CD4;
  v35 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v34, v30, v32, 0xD00000000000002BLL, 0x800000020CCDE3C0, sub_20CC9D740, v33, v35);
}

uint64_t sub_20CC97CD4()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_20CC97E00, v1, 0);
}

uint64_t sub_20CC97E00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CC97E84(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F618, &qword_20CCDCAC8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v7 + 16))(v9, a1, v6);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  (*(v7 + 32))(v11 + v10, v9, v6);
  sub_20CCDA8E4();
}

uint64_t sub_20CC98018(void *a1, double a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v5 = sub_20CCDB584();
  __swift_project_value_buffer(v5, qword_28110EE00);
  v6 = a1;
  v7 = sub_20CCDB564();
  v8 = sub_20CCDB8B4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 134218242;
    *(v9 + 4) = Current - a2;
    *(v9 + 12) = 2112;
    if (a1)
    {
      v11 = a1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      v13 = v12;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *(v9 + 14) = v12;
    *v10 = v13;
    _os_log_impl(&dword_20CC86000, v7, v8, "Prewarming completed in %fs with error: %@", v9, 0x16u);
    sub_20CC89568(v10, &qword_27C80F460, &unk_20CCDC700);
    MEMORY[0x20F30FD70](v10, -1, -1);
    MEMORY[0x20F30FD70](v9, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F618, &qword_20CCDCAC8);
  return sub_20CCDB754();
}

uint64_t sub_20CC981C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v7 + 56) = a4;
  *(v7 + 64) = v6;
  *(v7 + 241) = a6;
  *(v7 + 240) = a5;
  *(v7 + 40) = a2;
  *(v7 + 48) = a3;
  *(v7 + 32) = a1;
  v8 = sub_20CCDB104();
  *(v7 + 72) = v8;
  *(v7 + 80) = *(v8 - 8);
  *(v7 + 88) = swift_task_alloc();
  type metadata accessor for SynthesizedAudio(0);
  *(v7 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CC982BC, v6, 0);
}

uint64_t sub_20CC982BC()
{
  if ((*(v0 + 240) & 1) != 0 || (v1 = [objc_opt_self() standardUserDefaults], v2 = sub_20CCDB664(), v3 = objc_msgSend(v1, sel_BOOLForKey_, v2), v2, v1, v3))
  {
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v4 = sub_20CCDB584();
    *(v0 + 104) = __swift_project_value_buffer(v4, qword_28110EE00);
    v5 = sub_20CCDB564();
    v6 = sub_20CCDB8B4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20CC86000, v5, v6, "Playing audio directly", v7, 2u);
      MEMORY[0x20F30FD70](v7, -1, -1);
    }

    v8 = swift_task_alloc();
    *(v0 + 112) = v8;
    *v8 = v0;
    v8[1] = sub_20CC985FC;
    v9 = *(v0 + 96);

    return sub_20CCA86B8(v9);
  }

  else
  {
    v11 = MEMORY[0x277D0A4C0];
    if (!*(v0 + 241))
    {
      v11 = MEMORY[0x277D0A4B0];
    }

    (*(*(v0 + 80) + 104))(*(v0 + 88), *v11, *(v0 + 72));
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v12 = sub_20CCDB584();
    *(v0 + 184) = __swift_project_value_buffer(v12, qword_28110EE00);
    v13 = sub_20CCDB564();
    v14 = sub_20CCDB8B4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 241);
      v16 = swift_slowAlloc();
      *v16 = 67109120;
      *(v16 + 4) = v15;
      _os_log_impl(&dword_20CC86000, v13, v14, "Playing audio via Siri Announce (streamed: %{BOOL}d)", v16, 8u);
      MEMORY[0x20F30FD70](v16, -1, -1);
    }

    v17 = swift_task_alloc();
    *(v0 + 192) = v17;
    *v17 = v0;
    v17[1] = sub_20CC98B78;
    v18 = *(v0 + 241);
    v19 = *(v0 + 48);
    v20 = *(v0 + 40);

    return sub_20CCA97AC(v20, v19, v18);
  }
}

uint64_t sub_20CC985FC()
{
  v2 = *v1;
  v2[15] = v0;

  if (v0)
  {
    v3 = v2[8];

    return MEMORY[0x2822009F8](sub_20CC99020, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[16] = v4;
    *v4 = v2;
    v4[1] = sub_20CC98768;

    return sub_20CCA9290();
  }
}

uint64_t sub_20CC98768(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 96);
  *(v4 + 136) = a1;
  *(v4 + 144) = v1;

  sub_20CC9D2D0(v5);
  v6 = *(v3 + 64);
  if (v1)
  {
    v7 = sub_20CC991B8;
  }

  else
  {
    v7 = sub_20CC988B8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_20CC988B8()
{
  v1 = v0[17];
  v2 = v0[8];
  v3 = swift_task_alloc();
  v0[19] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_20CC98990;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282160B38](v4, &unk_20CCDCAA8, v3, v5);
}

uint64_t sub_20CC98990(double a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = *(v4 + 64);
    v6 = sub_20CC99350;
  }

  else
  {
    v7 = *(v4 + 64);
    *(v4 + 176) = a1;

    v6 = sub_20CC98AC8;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_20CC98AC8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 32);

  (*(v2 + 104))(v3, *MEMORY[0x277D0A4B8], v1);
  v4 = *(v0 + 176);

  v5 = *(v0 + 8);
  v6.n128_u64[0] = v4;

  return v5(1, v6);
}

uint64_t sub_20CC98B78(uint64_t a1)
{
  v4 = *v2;
  v4[25] = v1;

  v5 = v4[8];
  if (v1)
  {
    v6 = sub_20CC994FC;
  }

  else
  {
    v4[26] = a1;
    v6 = sub_20CC98CB4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_20CC98CB4()
{
  v1 = v0[26];
  v2 = [objc_allocWithZone(MEMORY[0x277CEF3C8]) initWithWorkoutVoiceFeedback_];
  v0[27] = v2;

  if (v2)
  {
    v11 = v0[8];
    Current = CFAbsoluteTimeGetCurrent();
    v13 = sub_20CC9D638(&qword_27C80F5F0, type metadata accessor for AudioSynthesizer, &unk_20CCDCA50);
    v14 = swift_task_alloc();
    v0[28] = v14;
    *(v14 + 16) = v2;
    *(v14 + 24) = Current;
    v15 = swift_task_alloc();
    v0[29] = v15;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F600, &qword_20CCDCA98);
    *v15 = v0;
    v15[1] = sub_20CC98E3C;
    v8 = sub_20CC9D2C4;
    v3 = v0 + 2;
    v7 = 0x800000020CCDE2F0;
    v4 = v11;
    v5 = v13;
    v6 = 0xD000000000000048;
    v9 = v14;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822007B8](v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_20CC98E3C()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_20CC98F68, v1, 0);
}

uint64_t sub_20CC98F68()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 32);

  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  (*(v2 + 32))(v4, v1, v3);

  v7 = *(v0 + 8);
  v8.n128_u64[0] = v6;

  return v7(v5, v8);
}

uint64_t sub_20CC99020()
{
  v1 = v0[15];
  v2 = v1;
  v3 = sub_20CCDB564();
  v4 = sub_20CCDB8B4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_20CC86000, v3, v4, "Error playing audio directly: %@", v5, 0xCu);
    sub_20CC89568(v6, &qword_27C80F460, &unk_20CCDC700);
    MEMORY[0x20F30FD70](v6, -1, -1);
    MEMORY[0x20F30FD70](v5, -1, -1);
  }

  else
  {
  }

  (*(v0[10] + 104))(v0[4], *MEMORY[0x277D0A4B8], v0[9]);

  v9 = v0[1];
  v10.n128_u64[0] = 0;

  return v9(0, v10);
}

uint64_t sub_20CC991B8()
{
  v1 = v0[18];
  v2 = v1;
  v3 = sub_20CCDB564();
  v4 = sub_20CCDB8B4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_20CC86000, v3, v4, "Error playing audio directly: %@", v5, 0xCu);
    sub_20CC89568(v6, &qword_27C80F460, &unk_20CCDC700);
    MEMORY[0x20F30FD70](v6, -1, -1);
    MEMORY[0x20F30FD70](v5, -1, -1);
  }

  else
  {
  }

  (*(v0[10] + 104))(v0[4], *MEMORY[0x277D0A4B8], v0[9]);

  v9 = v0[1];
  v10.n128_u64[0] = 0;

  return v9(0, v10);
}

uint64_t sub_20CC99350()
{

  v1 = *(v0 + 168);
  v2 = v1;
  v3 = sub_20CCDB564();
  v4 = sub_20CCDB8B4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_20CC86000, v3, v4, "Error playing audio directly: %@", v5, 0xCu);
    sub_20CC89568(v6, &qword_27C80F460, &unk_20CCDC700);
    MEMORY[0x20F30FD70](v6, -1, -1);
    MEMORY[0x20F30FD70](v5, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 80) + 104))(*(v0 + 32), *MEMORY[0x277D0A4B8], *(v0 + 72));

  v9 = *(v0 + 8);
  v10.n128_u64[0] = 0;

  return v9(0, v10);
}

uint64_t sub_20CC994FC()
{
  v1 = v0[25];
  v2 = v1;
  v3 = sub_20CCDB564();
  v4 = sub_20CCDB8B4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[25];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20CC86000, v3, v4, "Error getting audio data: %@", v7, 0xCu);
    sub_20CC89568(v8, &qword_27C80F460, &unk_20CCDC700);
    MEMORY[0x20F30FD70](v8, -1, -1);
    MEMORY[0x20F30FD70](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[10] + 32))(v0[4], v0[11], v0[9]);

  v11 = v0[1];
  v12.n128_u64[0] = 0;

  return v11(0, v12);
}

uint64_t sub_20CC99690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_20CC8DF7C;

  return sub_20CC9972C(a3);
}

uint64_t sub_20CC9972C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_20CCDA6A4();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CC99850, v1, 0);
}

uint64_t sub_20CC99850()
{
  v44 = v0;
  v43[1] = *MEMORY[0x277D85DE8];
  v1 = v0[7];
  v2 = objc_allocWithZone(sub_20CCDA894());
  v3 = v1;
  v0[16] = sub_20CCDA884();
  sub_20CC9D3D8();
  type metadata accessor for AudioSynthesizer(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_20CCDB664();
  v7 = sub_20CCDB664();
  v8 = [v5 URLForResource:v6 withExtension:v7];

  if (v8)
  {
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[9];
    v12 = v0[10];
    sub_20CCDA694();

    (*(v12 + 32))(v9, v10, v11);
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v13 = v0[15];
    v14 = v0[13];
    v15 = v0[9];
    v16 = v0[10];
    v17 = sub_20CCDB584();
    v0[17] = __swift_project_value_buffer(v17, qword_28110EE00);
    v18 = *(v16 + 16);
    v0[18] = v18;
    v0[19] = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v18(v14, v13, v15);
    v19 = sub_20CCDB564();
    v20 = sub_20CCDB8B4();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[13];
    v23 = v0[9];
    v24 = v0[10];
    if (v21)
    {
      v25 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43[0] = v42;
      *v25 = 136315138;
      sub_20CC9D638(&qword_27C80F608, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v26 = sub_20CCDBA44();
      v28 = v27;
      v29 = *(v24 + 8);
      v29(v22, v23);
      v30 = sub_20CC88C4C(v26, v28, v43);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_20CC86000, v19, v20, "Playing sound at %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x20F30FD70](v42, -1, -1);
      MEMORY[0x20F30FD70](v25, -1, -1);
    }

    else
    {

      v29 = *(v24 + 8);
      v29(v22, v23);
    }

    v0[20] = v29;
    v0[21] = [objc_allocWithZone(type metadata accessor for TonePlayer(0)) init];

    return MEMORY[0x2822009F8](sub_20CC99E60, 0, 0);
  }

  else
  {
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v31 = sub_20CCDB584();
    __swift_project_value_buffer(v31, qword_28110EE00);
    v32 = sub_20CCDB564();
    v33 = sub_20CCDB894();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_20CC86000, v32, v33, "Couldn't find announcement tone in bundle; not playing", v34, 2u);
      MEMORY[0x20F30FD70](v34, -1, -1);
    }

    v35 = v0[16];
    v36 = v0[8];
    v37 = sub_20CC9D638(&qword_27C80F5F0, type metadata accessor for AudioSynthesizer, &unk_20CCDCA50);
    v38 = swift_task_alloc();
    v0[25] = v38;
    *(v38 + 16) = v36;
    *(v38 + 24) = v35;
    v39 = swift_task_alloc();
    v0[26] = v39;
    *v39 = v0;
    v39[1] = sub_20CC9A8CC;
    v40 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v39, v36, v37, 0xD000000000000018, 0x800000020CCDE360, sub_20CC9D628, v38, v40);
  }
}

uint64_t sub_20CC99E60()
{
  v1 = v0[21];
  v2 = v0[15];
  v3 = swift_task_alloc();
  v0[22] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = sub_20CC99F84;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0x6C72752879616C70, 0xEA0000000000293ALL, sub_20CC9D630, v3, v5);
}

uint64_t sub_20CC99F84()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_20CC9A484;
  }

  else
  {

    v2 = sub_20CC9A0D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CC9A0D4()
{
  v1 = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_20CC9A160, v1, 0);
}

uint64_t sub_20CC9A160()
{
  v25 = v0;
  v24[1] = *MEMORY[0x277D85DE8];
  (*(v0 + 144))(*(v0 + 96), *(v0 + 120), *(v0 + 72));
  v1 = sub_20CCDB564();
  v2 = sub_20CCDB8B4();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 160);
  v5 = *(v0 + 120);
  v6 = *(v0 + 96);
  v7 = *(v0 + 72);
  if (v3)
  {
    v22 = *(v0 + 168);
    v23 = *(v0 + 160);
    v8 = swift_slowAlloc();
    v21 = v5;
    v9 = swift_slowAlloc();
    v24[0] = v9;
    *v8 = 136315138;
    sub_20CC9D638(&qword_27C80F608, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v10 = sub_20CCDBA44();
    v12 = v11;
    v23(v6, v7);
    v13 = sub_20CC88C4C(v10, v12, v24);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_20CC86000, v1, v2, "Played sound at %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F30FD70](v9, -1, -1);
    MEMORY[0x20F30FD70](v8, -1, -1);

    v23(v21, v7);
  }

  else
  {

    v4(v6, v7);
    v4(v5, v7);
  }

  v14 = *(v0 + 128);
  v15 = *(v0 + 64);
  v16 = sub_20CC9D638(&qword_27C80F5F0, type metadata accessor for AudioSynthesizer, &unk_20CCDCA50);
  v17 = swift_task_alloc();
  *(v0 + 200) = v17;
  *(v17 + 16) = v15;
  *(v17 + 24) = v14;
  v18 = swift_task_alloc();
  *(v0 + 208) = v18;
  *v18 = v0;
  v18[1] = sub_20CC9A8CC;
  v19 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v18, v15, v16, 0xD000000000000018, 0x800000020CCDE360, sub_20CC9D628, v17, v19);
}

uint64_t sub_20CC9A484()
{
  v1 = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_20CC9A51C, v1, 0);
}

uint64_t sub_20CC9A51C()
{
  v35 = v0;
  v34[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);

  v2(v4, v3, v5);
  v6 = v1;
  v7 = sub_20CCDB564();
  v8 = sub_20CCDB894();

  if (os_log_type_enabled(v7, v8))
  {
    v31 = *(v0 + 160);
    v32 = *(v0 + 192);
    v33 = *(v0 + 120);
    v9 = *(v0 + 88);
    v10 = *(v0 + 72);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34[0] = v12;
    *v11 = 136315394;
    swift_getErrorValue();
    v13 = sub_20CCDBAE4();
    v15 = sub_20CC88C4C(v13, v14, v34);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    sub_20CC9D638(&qword_27C80F608, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v16 = sub_20CCDBA44();
    v18 = v17;
    v31(v9, v10);
    v19 = sub_20CC88C4C(v16, v18, v34);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_20CC86000, v7, v8, "Could not create audio player: %s from URL %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F30FD70](v12, -1, -1);
    MEMORY[0x20F30FD70](v11, -1, -1);

    v31(v33, v10);
  }

  else
  {
    v20 = *(v0 + 160);
    v21 = *(v0 + 120);
    v22 = *(v0 + 88);
    v23 = *(v0 + 72);

    v20(v22, v23);
    v20(v21, v23);
  }

  v24 = *(v0 + 128);
  v25 = *(v0 + 64);
  v26 = sub_20CC9D638(&qword_27C80F5F0, type metadata accessor for AudioSynthesizer, &unk_20CCDCA50);
  v27 = swift_task_alloc();
  *(v0 + 200) = v27;
  *(v27 + 16) = v25;
  *(v27 + 24) = v24;
  v28 = swift_task_alloc();
  *(v0 + 208) = v28;
  *v28 = v0;
  v28[1] = sub_20CC9A8CC;
  v29 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v28, v25, v26, 0xD000000000000018, 0x800000020CCDE360, sub_20CC9D628, v27, v29);
}

uint64_t sub_20CC9A8CC()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = sub_20CC9ABF8;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_20CC9AA40;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_20CC9AA40()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[5] = 0;
  v2 = [v1 setActive:0 withOptions:0 error:v0 + 5];
  v3 = v0[5];
  v4 = v0[16];
  if (v2)
  {
    v5 = v3;
  }

  else
  {
    v7 = v3;
    sub_20CCDA664();

    swift_willThrow();
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_20CC9ABF8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_20CC9ACD4(uint64_t a1, void *a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F610, &qword_20CCDCAC0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = sub_20CC9D6A8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CC9AFEC;
  aBlock[3] = &block_descriptor_1;
  v12 = _Block_copy(aBlock);

  [a2 performRequestWithCompletion_];
  _Block_release(v12);
}

uint64_t sub_20CC9AE94(char a1, double a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (qword_28110E630 != -1)
  {
    v11 = Current;
    swift_once();
    Current = v11;
  }

  v5 = Current - a2;
  v6 = sub_20CCDB584();
  __swift_project_value_buffer(v6, qword_28110EE00);
  v7 = sub_20CCDB564();
  v8 = sub_20CCDB8B4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109376;
    *(v9 + 4) = a1 & 1;
    *(v9 + 8) = 2048;
    *(v9 + 10) = v5;
    _os_log_impl(&dword_20CC86000, v7, v8, "AFSiriAnnounceVoiceFeedbackRequest result=%{BOOL}d duration %f", v9, 0x12u);
    MEMORY[0x20F30FD70](v9, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F610, &qword_20CCDCAC0);
  return sub_20CCDB754();
}

uint64_t sub_20CC9AFEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_20CC9B040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_20CC8DF7C;

  return sub_20CC9B78C(a5, a6);
}

uint64_t sub_20CC9B0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v43 = a8;
  v44 = a6;
  v45 = a4;
  v46 = a5;
  v47 = a10;
  v50 = sub_20CCDB114();
  v54 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v53 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F628, &qword_20CCDD4E0);
  v14 = *(v56 - 8);
  v55 = *(v14 + 64);
  MEMORY[0x28223BE20](v56);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F5D8, &qword_20CCDCA78);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v41 - v18;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F5D0, &qword_20CCDCA30);
  v21 = *(v20 - 8);
  (*(v21 + 16))(v19, a1, v20);
  (*(v21 + 56))(v19, 0, 1, v20);
  v22 = OBJC_IVAR____TtC28FitnessIntelligenceInference16AudioSynthesizer_asbdContinuation;
  swift_beginAccess();
  v51 = a2;
  sub_20CC9D254(v19, a2 + v22);
  swift_endAccess();
  v23 = *(v14 + 16);
  v52 = a3;
  v24 = v56;
  v42 = v23;
  v23(v16, a3, v56);
  v25 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v26 = swift_allocObject();
  v27 = *(v14 + 32);
  v48 = v14 + 32;
  v49 = v16;
  v41 = v27;
  v27(v26 + v25, v16, v24);
  v28 = objc_allocWithZone(sub_20CCDA964());

  v29 = sub_20CCDA944();
  v30 = objc_allocWithZone(sub_20CCDA984());

  v31 = v29;
  v32 = sub_20CCDA974();

  sub_20CCDA9A4();
  sub_20CCDA9C4();
  sub_20CCDA9B4();
  v34 = v53;
  v33 = v54;
  v35 = v50;
  (*(v54 + 16))(v53, v47, v50);
  v36 = (*(v33 + 88))(v34, v35);
  if (v36 != *MEMORY[0x277D0A4D8] && v36 != *MEMORY[0x277D0A4D0] && v36 != *MEMORY[0x277D0A4C8])
  {
    (*(v54 + 8))(v53, v35);
  }

  sub_20CCDA9E4();
  sub_20CCDA9D4();

  v37 = v49;
  v38 = v56;
  v42(v49, v52, v56);
  v39 = swift_allocObject();
  v41(v39 + v25, v37, v38);
  sub_20CCDA8A4();
}

uint64_t sub_20CC9B63C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F630, &qword_20CCDCAE0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - v4;
  v8[1] = a1;
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F628, &qword_20CCDD4E0);
  sub_20CCDB814();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_20CC9B73C(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F628, &qword_20CCDD4E0);
  return sub_20CCDB824();
}

uint64_t sub_20CC9B78C(uint64_t a1, uint64_t a2)
{
  v3[47] = a2;
  v3[48] = v2;
  v3[46] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F5D0, &qword_20CCDCA30);
  v3[49] = v4;
  v3[50] = *(v4 - 8);
  v3[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F5D8, &qword_20CCDCA78);
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F5E0, &qword_20CCDCA80);
  v3[54] = v5;
  v3[55] = *(v5 - 8);
  v3[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CC9B908, v2, 0);
}

uint64_t sub_20CC9B908()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  v0[57] = __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Starting processing of synthesized audio…", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F5E8, &unk_20CCDCA88);
  sub_20CCDB7B4();
  v5 = sub_20CC9D638(&qword_27C80F5F0, type metadata accessor for AudioSynthesizer, &unk_20CCDCA50);
  v6 = OBJC_IVAR____TtC28FitnessIntelligenceInference16AudioSynthesizer_asbdContinuation;
  v0[58] = v5;
  v0[59] = v6;
  v0[60] = OBJC_IVAR____TtC28FitnessIntelligenceInference16AudioSynthesizer_encoder;
  swift_beginAccess();
  v7 = v0[58];
  v8 = v0[48];
  v9 = swift_task_alloc();
  v0[61] = v9;
  *v9 = v0;
  v9[1] = sub_20CC9BB04;
  v10 = v0[54];

  return MEMORY[0x2822005A8](v0 + 41, v8, v7, v10, v0 + 42);
}

uint64_t sub_20CC9BB04()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  v3 = *(v2 + 384);
  if (v0)
  {
    v4 = sub_20CC9C6B0;
  }

  else
  {
    v4 = sub_20CC9BC1C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_20CC9BC1C()
{
  v53 = v0;
  v1 = *(v0 + 328);
  *(v0 + 504) = v1;
  if (v1)
  {
    sub_20CCDAA64();
    if (*(v0 + 184) == 1869641075)
    {
      v2 = v1;
LABEL_23:
      *(v0 + 512) = v2;
      v20 = *(v0 + 384);
      if (*(v20 + 160))
      {
        v21 = *(v0 + 472);
        v22 = *(v0 + 424);
        v23 = *(v0 + 392);
        v24 = *(v0 + 400);
        sub_20CCDAA64();
        v25 = *(v0 + 128);
        v26 = *(v0 + 112);
        *(v20 + 120) = *(v0 + 96);
        *(v20 + 136) = v26;
        *(v20 + 152) = v25;
        *(v20 + 160) = 0;
        sub_20CC9D1E4(v20 + v21, v22);
        v27 = (*(v24 + 48))(v22, 1, v23);
        v28 = *(v0 + 424);
        if (v27)
        {
          sub_20CC89568(*(v0 + 424), &qword_27C80F5D8, &qword_20CCDCA78);
        }

        else
        {
          v30 = *(v0 + 400);
          v29 = *(v0 + 408);
          v31 = *(v0 + 392);
          (*(v30 + 16))(v29, *(v0 + 424), v31);
          sub_20CC89568(v28, &qword_27C80F5D8, &qword_20CCDCA78);
          sub_20CCDAA64();
          *(v0 + 216) = *(v0 + 56);
          *(v0 + 232) = *(v0 + 72);
          *(v0 + 248) = *(v0 + 88);
          sub_20CCDB754();
          (*(v30 + 8))(v29, v31);
        }

        v32 = *(v0 + 472);
        v33 = *(v0 + 416);
        v34 = *(v0 + 384);
        (*(*(v0 + 400) + 56))(v33, 1, 1, *(v0 + 392));
        swift_beginAccess();
        sub_20CC9D254(v33, v34 + v32);
        swift_endAccess();
      }

      *(v0 + 360) = v2;
      v35 = swift_task_alloc();
      *(v0 + 520) = v35;
      *v35 = v0;
      v35[1] = sub_20CC9C2B4;
      v36 = v0 + 360;
      goto LABEL_29;
    }

    v6 = sub_20CCDAA24();
    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v8 != 2)
      {
        sub_20CC9720C(v6, v7);
        goto LABEL_22;
      }

      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      sub_20CC9720C(v6, v7);
    }

    else
    {
      if (!v8)
      {
        v9 = v7;
        sub_20CC9720C(v6, v7);
        if ((v9 & 0xFF000000000000) == 0)
        {
          goto LABEL_22;
        }

LABEL_17:
        v16 = *(v0 + 480);
        v17 = *(v0 + 384);
        if (*(v17 + v16))
        {
          v18 = *(v0 + 496);
          v19 = *(v17 + v16);
        }

        else
        {
          v18 = *(v0 + 496);
          sub_20CCDAA64();
          sub_20CCDA874();
          swift_allocObject();
          v40 = sub_20CCDA844();
          if (v18)
          {
            v4 = v18;
LABEL_37:
            (*(*(v0 + 440) + 8))(*(v0 + 448), *(v0 + 432));

            goto LABEL_38;
          }

          v19 = v40;
          v16 = *(v0 + 480);
          v17 = *(v0 + 384);
        }

        *(v17 + v16) = v19;

        v2 = sub_20CCDA864();
        v4 = v18;

        if (!v18)
        {
          goto LABEL_23;
        }

        goto LABEL_37;
      }

      v15 = v6;
      sub_20CC9720C(v6, v7);
      v14 = v15;
      v13 = v15 >> 32;
    }

    if (v14 != v13)
    {
      goto LABEL_17;
    }

LABEL_22:
    v2 = [objc_allocWithZone(sub_20CCDAA94()) init];
    *(v0 + 16) = 0x40E7700000000000;
    *(v0 + 24) = xmmword_20CCDC9A0;
    *(v0 + 40) = xmmword_20CCDC9B0;
    sub_20CCDAA74();
    sub_20CCDAA44();
    goto LABEL_23;
  }

  v3 = *(v0 + 384);
  (*(*(v0 + 440) + 8))(*(v0 + 448), *(v0 + 432));
  if (*(v3 + 160))
  {
    sub_20CC9D190();
    v4 = swift_allocError();
    *v5 = 2;
    swift_willThrow();
  }

  else
  {
    v10 = *(*(v0 + 384) + *(v0 + 480));
    *(v0 + 528) = v10;
    if (!v10)
    {
      v37 = sub_20CCDB564();
      v38 = sub_20CCDB8B4();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_20CC86000, v37, v38, "Audio synthesis and processing succeeded.", v39, 2u);
        MEMORY[0x20F30FD70](v39, -1, -1);
      }

      sub_20CCDB444();
      goto LABEL_41;
    }

    v11 = *(v0 + 496);

    v12 = sub_20CCDA854();
    *(v0 + 536) = v12;
    if (!v11)
    {
      *(v0 + 352) = v12;
      v50 = swift_task_alloc();
      *(v0 + 544) = v50;
      *v50 = v0;
      v50[1] = sub_20CC9C48C;
      v36 = v0 + 352;
LABEL_29:

      return MEMORY[0x282141C28](v36);
    }

    v4 = v11;
  }

LABEL_38:
  v41 = v4;
  v42 = sub_20CCDB564();
  v43 = sub_20CCDB894();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v52 = v45;
    *v44 = 136315138;
    swift_getErrorValue();
    v46 = sub_20CCDBAE4();
    v48 = sub_20CC88C4C(v46, v47, &v52);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_20CC86000, v42, v43, "Audio synthesis or processing error: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x20F30FD70](v45, -1, -1);
    MEMORY[0x20F30FD70](v44, -1, -1);
  }

  sub_20CCDB424();
LABEL_41:

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_20CC9C2B4()
{
  v1 = *(*v0 + 384);

  return MEMORY[0x2822009F8](sub_20CC9C3C4, v1, 0);
}

uint64_t sub_20CC9C3C4()
{
  v1 = *(v0 + 504);

  v2 = *(v0 + 464);
  v3 = *(v0 + 384);
  v4 = swift_task_alloc();
  *(v0 + 488) = v4;
  *v4 = v0;
  v4[1] = sub_20CC9BB04;
  v5 = *(v0 + 432);

  return MEMORY[0x2822005A8](v0 + 328, v3, v2, v5, v0 + 336);
}

uint64_t sub_20CC9C48C()
{
  v1 = *(*v0 + 384);

  return MEMORY[0x2822009F8](sub_20CC9C59C, v1, 0);
}

uint64_t sub_20CC9C59C()
{

  v1 = sub_20CCDB564();
  v2 = sub_20CCDB8B4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_20CC86000, v1, v2, "Audio synthesis and processing succeeded.", v3, 2u);
    MEMORY[0x20F30FD70](v3, -1, -1);
  }

  sub_20CCDB444();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20CC9C6B0()
{
  v13 = v0;
  (*(v0[55] + 8))(v0[56], v0[54]);
  v1 = v0[42];
  v2 = v1;
  v3 = sub_20CCDB564();
  v4 = sub_20CCDB894();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_20CCDBAE4();
    v9 = sub_20CC88C4C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_20CC86000, v3, v4, "Audio synthesis or processing error: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x20F30FD70](v6, -1, -1);
    MEMORY[0x20F30FD70](v5, -1, -1);
  }

  sub_20CCDB424();

  v10 = v0[1];

  return v10();
}

void sub_20CC9C864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F620, &unk_20CCDCAD0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = objc_opt_self();
  v9 = sub_20CCDB664();
  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  aBlock[4] = sub_20CC9D850;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CC9AFEC;
  aBlock[3] = &block_descriptor_39;
  v12 = _Block_copy(aBlock);

  [v8 deactivateRequestForFeedbackIdentifier:v9 completion:v12];
  _Block_release(v12);
}

uint64_t sub_20CC9CA40(char a1)
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v2 = sub_20CCDB584();
  __swift_project_value_buffer(v2, qword_28110EE00);
  v3 = sub_20CCDB564();
  v4 = sub_20CCDB8B4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&dword_20CC86000, v3, v4, "Deactivate voice feedback result=%{BOOL}d", v5, 8u);
    MEMORY[0x20F30FD70](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F620, &unk_20CCDCAD0);
  return sub_20CCDB754();
}

uint64_t sub_20CC9CB6C()
{
  sub_20CC89568(v0 + OBJC_IVAR____TtC28FitnessIntelligenceInference16AudioSynthesizer_asbdContinuation, &qword_27C80F5D8, &qword_20CCDCA78);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for AudioSynthesizer(uint64_t a1)
{
  result = qword_27C80F5B8;
  if (!qword_27C80F5B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CC9CC28(uint64_t a1)
{
  sub_20CC9CCE4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20CC9CCE4(uint64_t a1)
{
  if (!qword_27C80F5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C80F5D0, &qword_20CCDCA30);
    v1 = sub_20CCDB904();
    if (!v2)
    {
      atomic_store(v1, &qword_27C80F5C8);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_20CC9CD90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  sub_20CCDA8C4();
}

uint64_t sub_20CC9CF14(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v3 = sub_20CCDB584();
    __swift_project_value_buffer(v3, qword_28110EE00);
    v4 = a1;
    v5 = sub_20CCDB564();
    v6 = sub_20CCDB8B4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = sub_20CCDBAE4();
      v11 = sub_20CC88C4C(v9, v10, &v17);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_20CC86000, v5, v6, "Audio playback error: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x20F30FD70](v8, -1, -1);
      MEMORY[0x20F30FD70](v7, -1, -1);
    }

    v17 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
    return sub_20CCDB744();
  }

  else
  {
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v13 = sub_20CCDB584();
    __swift_project_value_buffer(v13, qword_28110EE00);
    v14 = sub_20CCDB564();
    v15 = sub_20CCDB8B4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20CC86000, v14, v15, "Audio playback succeeded", v16, 2u);
      MEMORY[0x20F30FD70](v16, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
    return sub_20CCDB754();
  }
}

unint64_t sub_20CC9D190()
{
  result = qword_27C80F5F8;
  if (!qword_27C80F5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C80F5F8);
  }

  return result;
}

uint64_t sub_20CC9D1E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F5D8, &qword_20CCDCA78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CC9D254(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F5D8, &qword_20CCDCA78);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CC9D2D0(uint64_t a1)
{
  v2 = type metadata accessor for SynthesizedAudio(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CC9D32C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20CC8DF7C;

  return sub_20CC99690(a1, v5, v4);
}

void sub_20CC9D3D8()
{
  v17[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() sharedInstance];
  v1 = *MEMORY[0x277CB8030];
  v17[0] = 0;
  v2 = [v0 setCategory:v1 withOptions:2 error:v17];
  v3 = v17[0];
  if (v2 && (v17[0] = 0, v4 = v3, v5 = [v0 setActive:1 withOptions:0 error:v17], v3 = v17[0], v5))
  {
    v6 = v17[0];
  }

  else
  {
    v7 = v3;
    v8 = sub_20CCDA664();

    swift_willThrow();
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v9 = sub_20CCDB584();
    __swift_project_value_buffer(v9, qword_28110EE00);
    v10 = v8;
    v11 = sub_20CCDB564();
    v12 = sub_20CCDB894();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v8;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_20CC86000, v11, v12, "Failed to set audio session category: %@", v13, 0xCu);
      sub_20CC89568(v14, &qword_27C80F460, &unk_20CCDC700);
      MEMORY[0x20F30FD70](v14, -1, -1);
      MEMORY[0x20F30FD70](v13, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_20CC9D638(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20CC9D6A8(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F610, &qword_20CCDCAC0);
  v3 = *(v1 + 16);

  return sub_20CC9AE94(a1, v3);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_28Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_20CC9D7D0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F618, &qword_20CCDCAC8);
  v3 = *(v1 + 16);

  return sub_20CC98018(a1, v3);
}

uint64_t sub_20CC9D850(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F620, &unk_20CCDCAD0);

  return sub_20CC9CA40(a1);
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_20CC9D9A0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t getEnumTagSinglePayload for AudioSynthesizer.AudioSynthesisError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioSynthesizer.AudioSynthesisError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20CC9DB98()
{
  result = qword_27C80F638;
  if (!qword_27C80F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C80F638);
  }

  return result;
}

uint64_t sub_20CC9DBF4()
{
  v1[10] = v0;
  v2 = sub_20CCDB0C4();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v3 = sub_20CCDAEA4();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v4 = sub_20CCDAEF4();
  v1[20] = v4;
  v1[21] = *(v4 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v5 = sub_20CCDAFB4();
  v1[25] = v5;
  v1[26] = *(v5 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = type metadata accessor for AudioStreamSender(0);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F448, &unk_20CCDCF60);
  v1[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CC9DEA8, 0, 0);
}

uint64_t sub_20CC9DEA8()
{
  v1 = v0[10] + *(v0[29] + 20);
  v2 = *(v1 + *(type metadata accessor for AudioSynthesisHandle(0) + 32));
  v0[36] = v2;

  return MEMORY[0x2822009F8](sub_20CC9DF28, v2, 0);
}

uint64_t sub_20CC9DF28()
{
  v1 = v0[35];
  v2 = v0[36];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F640, &unk_20CCDCBE0);
  swift_allocObject();
  v3 = sub_20CCDB464();
  v0[37] = v3;
  v4 = sub_20CCDB794();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = sub_20CCA0384();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v5;
  v6[4] = v2;
  v6[5] = v3;
  swift_retain_n();

  sub_20CCAA31C(0, 0, v1, &unk_20CCDCBF8, v6);

  return MEMORY[0x2822009F8](sub_20CC9E074, 0, 0);
}

uint64_t sub_20CC9E074()
{
  v20 = v0;
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 272);
  v2 = *(v0 + 80);
  v3 = sub_20CCDB584();
  *(v0 + 304) = __swift_project_value_buffer(v3, qword_28110EE00);
  sub_20CCA10D0(v2, v1);
  v4 = sub_20CCDB564();
  v5 = sub_20CCDB8B4();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 272);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    v10 = *v7;
    v11 = v7[1];

    sub_20CCA1134(v7);
    v12 = sub_20CC88C4C(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20CC86000, v4, v5, "Starting audio send for stream %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F30FD70](v9, -1, -1);
    MEMORY[0x20F30FD70](v8, -1, -1);
  }

  else
  {

    sub_20CCA1134(v7);
  }

  v13 = MEMORY[0x277D84F90];
  *(v0 + 56) = MEMORY[0x277D84F90];
  v14 = sub_20CCDB414();
  *(v0 + 312) = v14;
  *(v0 + 320) = v15;
  *(v0 + 40) = v14;
  *(v0 + 48) = v15;
  *(v0 + 448) = *MEMORY[0x277D0A100];
  *(v0 + 328) = 0;
  *(v0 + 336) = v13;
  *(v0 + 460) = 1;
  *(v0 + 452) = 0;
  v16 = swift_task_alloc();
  *(v0 + 344) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F658, &unk_20CCDCC00);
  *v16 = v0;
  v16[1] = sub_20CC9E2CC;

  return MEMORY[0x282141C38](v0 + 64, v17);
}

uint64_t sub_20CC9E2CC()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_20CC9EAAC;
  }

  else
  {
    *(v2 + 360) = *(v2 + 64);
    v3 = sub_20CC9E3E8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CC9E3E8()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 336);
  if (v1)
  {
    v4 = *(v0 + 216);
    v3 = *(v0 + 224);
    v5 = *(v0 + 200);
    v6 = *(v0 + 208);

    v7 = v1;
    sub_20CCDAF94();
    (*(v6 + 16))(v4, v3, v5);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v0 + 336);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_20CCA7BA0(0, v9[2] + 1, 1, *(v0 + 336));
    }

    v11 = v9[2];
    v10 = v9[3];
    if (v11 >= v10 >> 1)
    {
      v9 = sub_20CCA7BA0((v10 > 1), v11 + 1, 1, v9);
    }

    *(v0 + 368) = v9;
    v13 = *(v0 + 208);
    v12 = *(v0 + 216);
    v14 = *(v0 + 200);
    v9[2] = v11 + 1;
    (*(v13 + 32))(v9 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v11, v12, v14);
    *(v0 + 56) = v9;
    swift_endAccess();
    v15 = sub_20CCDAA24();
    v17 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      if (v17 != 2)
      {
        v15 = sub_20CC9720C(v15, v16);
        v19 = 0;
        goto LABEL_18;
      }

      v30 = *(v15 + 16);
      v29 = *(v15 + 24);
      v15 = sub_20CC9720C(v15, v16);
      v19 = v29 - v30;
      if (!__OFSUB__(v29, v30))
      {
        goto LABEL_18;
      }

      __break(1u);
    }

    else if (!v17)
    {
      v18 = BYTE6(v16);
      v15 = sub_20CC9720C(v15, v16);
      v19 = v18;
      goto LABEL_18;
    }

    v31 = HIDWORD(v15);
    v32 = v15;
    v15 = sub_20CC9720C(v15, v16);
    LODWORD(v19) = v31 - v32;
    if (__OFSUB__(v31, v32))
    {
      goto LABEL_34;
    }

    v19 = v19;
LABEL_18:
    v33 = *(v0 + 328);
    v34 = v33 + v19;
    *(v0 + 376) = v33 + v19;
    if (__OFADD__(v33, v19))
    {
      __break(1u);
    }

    else
    {
      v35 = *(v0 + 452);
      *(v0 + 456) = v35 + 1;
      if (v35 != -1)
      {
        v36 = *(v0 + 460);
        if (v36 == 1)
        {
          if (v34 >= 0x2000)
          {
            v37 = *(v0 + 448);
            v38 = *(v0 + 152);
            v39 = *(v0 + 112);
            v40 = *(v0 + 120);

            sub_20CCDAED4();
            (*(v40 + 104))(v38, v37, v39);
            v54 = (*MEMORY[0x277D09E88] + MEMORY[0x277D09E88]);
            v41 = swift_task_alloc();
            *(v0 + 384) = v41;
            v25 = sub_20CCA1360(&qword_28110ED98, MEMORY[0x277D0A260], MEMORY[0x277D0A258]);
            *v41 = v0;
            v41[1] = sub_20CC9EC98;
            v26 = *(v0 + 192);
            v28 = *(v0 + 152);
            v27 = *(v0 + 160);
            goto LABEL_29;
          }
        }

        else if (v34 >= 4096)
        {
          v44 = *(v0 + 448);
          v45 = *(v0 + 144);
          v46 = *(v0 + 112);
          v47 = *(v0 + 120);

          sub_20CCDAED4();
          (*(v47 + 104))(v45, v44, v46);
          v54 = (*MEMORY[0x277D09E88] + MEMORY[0x277D09E88]);
          v48 = swift_task_alloc();
          *(v0 + 400) = v48;
          v25 = sub_20CCA1360(&qword_28110ED98, MEMORY[0x277D0A260], MEMORY[0x277D0A258]);
          *v48 = v0;
          v48[1] = sub_20CC9F0B4;
          v26 = *(v0 + 184);
          v27 = *(v0 + 160);
          v28 = *(v0 + 144);
          goto LABEL_29;
        }

        (*(*(v0 + 208) + 8))(*(v0 + 224), *(v0 + 200));

        v42 = *(v0 + 456);
        *(v0 + 328) = v34;
        *(v0 + 336) = v9;
        *(v0 + 460) = v36;
        *(v0 + 452) = v42;
        v43 = swift_task_alloc();
        *(v0 + 344) = v43;
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F658, &unk_20CCDCC00);
        *v43 = v0;
        v43[1] = sub_20CC9E2CC;
        v15 = v0 + 64;

        return MEMORY[0x282141C38](v15, v16);
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
    return MEMORY[0x282141C38](v15, v16);
  }

  if (*(v2 + 16))
  {
    v20 = *(v0 + 448);
    v21 = *(v0 + 136);
    v22 = *(v0 + 112);
    v23 = *(v0 + 120);

    sub_20CCDAED4();
    (*(v23 + 104))(v21, v20, v22);
    v54 = (*MEMORY[0x277D09E88] + MEMORY[0x277D09E88]);
    v24 = swift_task_alloc();
    *(v0 + 416) = v24;
    v25 = sub_20CCA1360(&qword_28110ED98, MEMORY[0x277D0A260], MEMORY[0x277D0A258]);
    *v24 = v0;
    v24[1] = sub_20CC9F4D0;
    v26 = *(v0 + 176);
    v27 = *(v0 + 160);
    v28 = *(v0 + 136);
  }

  else
  {
    v50 = *(v0 + 120);
    v49 = *(v0 + 128);
    v51 = *(v0 + 112);

    sub_20CCDB0A4();
    (*(v50 + 104))(v49, *MEMORY[0x277D0A0E0], v51);
    v54 = (*MEMORY[0x277D09E88] + MEMORY[0x277D09E88]);
    v52 = swift_task_alloc();
    *(v0 + 432) = v52;
    v25 = sub_20CCA1360(&qword_28110ED70, MEMORY[0x277D0A448], MEMORY[0x277D0A440]);
    *v52 = v0;
    v52[1] = sub_20CC9F924;
    v28 = *(v0 + 128);
    v26 = *(v0 + 104);
    v27 = *(v0 + 88);
  }

LABEL_29:

  return v54(v28, v26, v27, v25);
}

uint64_t sub_20CC9EAAC()
{
  *(v0 + 72) = *(v0 + 352);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F660, &qword_20CCDD400);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_20CC9EB40, 0, 0);
}

uint64_t sub_20CC9EB40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CC9EC98()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  (*(v2[15] + 8))(v2[19], v2[14]);
  if (v0)
  {
    v3 = sub_20CC9FD30;
  }

  else
  {
    v3 = sub_20CC9EE00;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CC9EE00()
{
  v32 = v0;
  sub_20CCA10D0(*(v0 + 80), *(v0 + 264));
  v1 = sub_20CCDB564();
  v2 = sub_20CCDB8B4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 368);
    v4 = *(v0 + 264);
    v30 = *(v0 + 224);
    v5 = *(v0 + 208);
    v28 = *(v0 + 360);
    v29 = *(v0 + 200);
    v27 = *(v0 + 192);
    v6 = *(v0 + 168);
    v25 = *(v0 + 376);
    v26 = *(v0 + 160);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v7 = 134218498;
    *(v7 + 4) = *(v3 + 16);
    *(v7 + 12) = 2080;
    v9 = *v4;
    v10 = v4[1];

    sub_20CCA1134(v4);
    v11 = sub_20CC88C4C(v9, v10, &v31);

    *(v7 + 14) = v11;
    *(v7 + 22) = 2048;
    *(v7 + 24) = v25;
    _os_log_impl(&dword_20CC86000, v1, v2, "Sent first batch of %ld chunks for stream %s. Total message size: %ld.", v7, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F30FD70](v8, -1, -1);
    MEMORY[0x20F30FD70](v7, -1, -1);

    (*(v6 + 8))(v27, v26);
    (*(v5 + 8))(v30, v29);
  }

  else
  {
    v12 = *(v0 + 360);
    v13 = *(v0 + 264);
    v14 = *(v0 + 224);
    v15 = *(v0 + 200);
    v16 = *(v0 + 208);
    v17 = *(v0 + 192);
    v18 = *(v0 + 160);
    v19 = *(v0 + 168);

    sub_20CCA1134(v13);
    (*(v19 + 8))(v17, v18);
    (*(v16 + 8))(v14, v15);
  }

  v20 = MEMORY[0x277D84F90];
  *(v0 + 56) = MEMORY[0x277D84F90];

  v21 = *(v0 + 456);
  *(v0 + 328) = 0;
  *(v0 + 336) = v20;
  *(v0 + 460) = 0;
  *(v0 + 452) = v21;
  v22 = swift_task_alloc();
  *(v0 + 344) = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F658, &unk_20CCDCC00);
  *v22 = v0;
  v22[1] = sub_20CC9E2CC;

  return MEMORY[0x282141C38](v0 + 64, v23);
}

uint64_t sub_20CC9F0B4()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  (*(v2[15] + 8))(v2[18], v2[14]);
  if (v0)
  {
    v3 = sub_20CC9FED0;
  }

  else
  {
    v3 = sub_20CC9F21C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CC9F21C()
{
  v32 = v0;
  sub_20CCA10D0(*(v0 + 80), *(v0 + 256));
  v1 = sub_20CCDB564();
  v2 = sub_20CCDB8B4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 368);
    v4 = *(v0 + 256);
    v30 = *(v0 + 224);
    v5 = *(v0 + 208);
    v28 = *(v0 + 360);
    v29 = *(v0 + 200);
    v27 = *(v0 + 184);
    v6 = *(v0 + 168);
    v25 = *(v0 + 376);
    v26 = *(v0 + 160);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v7 = 134218498;
    *(v7 + 4) = *(v3 + 16);
    *(v7 + 12) = 2080;
    v9 = *v4;
    v10 = v4[1];

    sub_20CCA1134(v4);
    v11 = sub_20CC88C4C(v9, v10, &v31);

    *(v7 + 14) = v11;
    *(v7 + 22) = 2048;
    *(v7 + 24) = v25;
    _os_log_impl(&dword_20CC86000, v1, v2, "Sent %ld chunks for stream %s. Total message size: %ld.", v7, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F30FD70](v8, -1, -1);
    MEMORY[0x20F30FD70](v7, -1, -1);

    (*(v6 + 8))(v27, v26);
    (*(v5 + 8))(v30, v29);
  }

  else
  {
    v12 = *(v0 + 360);
    v13 = *(v0 + 256);
    v14 = *(v0 + 224);
    v15 = *(v0 + 200);
    v16 = *(v0 + 208);
    v17 = *(v0 + 184);
    v18 = *(v0 + 160);
    v19 = *(v0 + 168);

    sub_20CCA1134(v13);
    (*(v19 + 8))(v17, v18);
    (*(v16 + 8))(v14, v15);
  }

  v20 = MEMORY[0x277D84F90];
  *(v0 + 56) = MEMORY[0x277D84F90];

  v21 = *(v0 + 456);
  *(v0 + 328) = 0;
  *(v0 + 336) = v20;
  *(v0 + 460) = 0;
  *(v0 + 452) = v21;
  v22 = swift_task_alloc();
  *(v0 + 344) = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F658, &unk_20CCDCC00);
  *v22 = v0;
  v22[1] = sub_20CC9E2CC;

  return MEMORY[0x282141C38](v0 + 64, v23);
}

uint64_t sub_20CC9F4D0()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  *(*v1 + 424) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_20CCA0070;
  }

  else
  {
    v5 = sub_20CC9F640;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20CC9F640()
{
  v30 = v0;
  sub_20CCA10D0(v0[10], v0[31]);

  v1 = sub_20CCDB564();
  v2 = sub_20CCDB8B4();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[42];
  if (v3)
  {
    v5 = v0[41];
    v6 = v0[31];
    v7 = v0[21];
    v26 = v0[20];
    v27 = v0[22];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 134218498;
    *(v8 + 4) = *(v4 + 16);

    *(v8 + 12) = 2080;
    v10 = *v6;
    v11 = v6[1];

    sub_20CCA1134(v6);
    v12 = sub_20CC88C4C(v10, v11, &v29);

    *(v8 + 14) = v12;
    *(v8 + 22) = 2048;
    *(v8 + 24) = v5;
    _os_log_impl(&dword_20CC86000, v1, v2, "Sent remaining %ld chunks for stream %s. Total message size: %ld.", v8, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F30FD70](v9, -1, -1);
    MEMORY[0x20F30FD70](v8, -1, -1);

    (*(v7 + 8))(v27, v26);
  }

  else
  {
    v13 = v0[31];
    v15 = v0[21];
    v14 = v0[22];
    v16 = v0[20];

    sub_20CCA1134(v13);
    (*(v15 + 8))(v14, v16);
  }

  v18 = v0[15];
  v17 = v0[16];
  v19 = v0[14];

  sub_20CCDB0A4();
  (*(v18 + 104))(v17, *MEMORY[0x277D0A0E0], v19);
  v28 = (*MEMORY[0x277D09E88] + MEMORY[0x277D09E88]);
  v20 = swift_task_alloc();
  v0[54] = v20;
  v21 = sub_20CCA1360(&qword_28110ED70, MEMORY[0x277D0A448], MEMORY[0x277D0A440]);
  *v20 = v0;
  v20[1] = sub_20CC9F924;
  v22 = v0[16];
  v23 = v0[13];
  v24 = v0[11];

  return v28(v22, v23, v24, v21);
}

uint64_t sub_20CC9F924()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  *(*v1 + 440) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_20CCA01D4;
  }

  else
  {
    v5 = sub_20CC9FA94;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20CC9FA94()
{
  v20 = v0;
  sub_20CCA10D0(*(v0 + 80), *(v0 + 240));
  v1 = sub_20CCDB564();
  v2 = sub_20CCDB8B4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 452);
    v4 = *(v0 + 240);
    v5 = *(v0 + 96);
    v18 = *(v0 + 104);
    v17 = *(v0 + 88);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 67109378;
    *(v6 + 4) = v3;
    *(v6 + 8) = 2080;
    v8 = *v4;
    v9 = v4[1];

    sub_20CCA1134(v4);
    v10 = sub_20CC88C4C(v8, v9, &v19);

    *(v6 + 10) = v10;
    _os_log_impl(&dword_20CC86000, v1, v2, "Finished sending %u streaming audio chunks for stream %s", v6, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x20F30FD70](v7, -1, -1);
    MEMORY[0x20F30FD70](v6, -1, -1);

    (*(v5 + 8))(v18, v17);
  }

  else
  {
    v11 = *(v0 + 240);
    v13 = *(v0 + 96);
    v12 = *(v0 + 104);
    v14 = *(v0 + 88);

    sub_20CCA1134(v11);
    (*(v13 + 8))(v12, v14);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_20CC9FD30()
{
  v1 = v0[45];
  v2 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[24];
  v7 = v0[20];
  v6 = v0[21];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_20CC9FED0()
{
  v1 = v0[45];
  v2 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[23];
  v7 = v0[20];
  v6 = v0[21];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_20CCA0070()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20CCA01D4()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t type metadata accessor for AudioStreamSender(uint64_t a1)
{
  result = qword_27C80F668;
  if (!qword_27C80F668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20CCA0384()
{
  result = qword_27C80F648;
  if (!qword_27C80F648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C80F650, &unk_20CCDCF70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C80F648);
  }

  return result;
}

uint64_t sub_20CCA03E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_20CC8DF7C;

  return sub_20CCA0544(a5);
}

uint64_t sub_20CCA0484(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20CC8DF7C;

  return sub_20CCA03E8(a1, v4, v5, v7, v6);
}

uint64_t sub_20CCA0544(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = sub_20CCDA784();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCA0604, v1, 0);
}

uint64_t sub_20CCA0604()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  v0[18] = __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Adding new subscriber", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = MEMORY[0x277D84F90];
  v0[11] = MEMORY[0x277D84F90];
  swift_beginAccess();
  if (v5 >> 62)
  {
    v6 = sub_20CCDB9F4();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = *(v0[14] + 120);
  if (v7 >> 62)
  {
    if (v6 < sub_20CCDB9F4())
    {
LABEL_9:
      if (v5 >> 62)
      {
        v8 = sub_20CCDB9F4();
      }

      else
      {
        v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v9 = v0[14];
      v10 = swift_beginAccess();
      v11 = *(v9 + 120);
      if ((v11 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x20F30F560](v8);
      }

      else
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_40:
          sub_20CCDB704();
LABEL_17:
          sub_20CCDB724();
          v0[20] = v0[11];
          v15 = swift_task_alloc();
          v0[21] = v15;
          *v15 = v0;
          v15[1] = sub_20CCA0B58;
          v10 = (v0 + 12);

          return MEMORY[0x282141C28](v10);
        }

        if (v8 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x282141C28](v10);
        }

        v12 = *(v11 + 8 * v8 + 32);
      }

      v13 = v12;
      v0[19] = v12;
      v0[12] = v12;
      swift_endAccess();
      v14 = v13;
      MEMORY[0x20F30F2C0]();
      if (*((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_17;
      }

      goto LABEL_40;
    }
  }

  else if (v6 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

  v16 = MEMORY[0x277D84F90];

  v17 = sub_20CCDB564();
  v18 = sub_20CCDB8B4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    if (v16 >> 62)
    {
      v20 = sub_20CCDB9F4();
    }

    else
    {
      v20 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v19 + 4) = v20;

    _os_log_impl(&dword_20CC86000, v17, v18, "Sent %ld already-received elements to new subscriber", v19, 0xCu);
    MEMORY[0x20F30FD70](v19, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v21 = v0[14];
  v22 = *(v21 + 144);
  if (v22 == 255)
  {
    v28 = v0[16];
    v27 = v0[17];
    v29 = v0[15];
    v30 = v0[13];
    sub_20CCDA774();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(v21 + 128);
    *(v21 + 128) = 0x8000000000000000;
    sub_20CCD6EF4(v30, v27, isUniquelyReferenced_nonNull_native);
    *(v21 + 128) = v34;
    swift_endAccess();
    (*(v28 + 8))(v27, v29);
  }

  else
  {
    v23 = *(v21 + 136);
    sub_20CCA1190(v23, v22 & 1);
    v24 = sub_20CCDB564();
    v25 = sub_20CCDB8B4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_20CC86000, v24, v25, "Upstream has already terminated", v26, 2u);
      MEMORY[0x20F30FD70](v26, -1, -1);
    }

    if (v22)
    {
      sub_20CCA119C(v23, v22);
      sub_20CCDB424();
      sub_20CCA11B4(v23, v22);
      sub_20CCA11B4(v23, v22);
    }

    else
    {
      sub_20CCDB444();
    }
  }

  v32 = v0[1];

  return v32();
}

uint64_t sub_20CCA0B58()
{
  v1 = *(*v0 + 112);

  return MEMORY[0x2822009F8](sub_20CCA0C68, v1, 0);
}

uint64_t sub_20CCA0C68()
{
  v1 = *(v0 + 160);
  v2 = v1 >> 62;
  if (v1 >> 62)
  {
    v3 = sub_20CCDB9F4();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *(*(v0 + 112) + 120);
  if (v4 >> 62)
  {
    if (v3 < sub_20CCDB9F4())
    {
LABEL_5:
      if (v2)
      {
        v5 = sub_20CCDB9F4();
      }

      else
      {
        v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v6 = *(v0 + 112);
      v7 = swift_beginAccess();
      v8 = *(v6 + 120);
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x20F30F560](v5);
      }

      else
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_36:
          sub_20CCDB704();
LABEL_13:
          sub_20CCDB724();
          *(v0 + 160) = *(v0 + 88);
          v12 = swift_task_alloc();
          *(v0 + 168) = v12;
          *v12 = v0;
          v12[1] = sub_20CCA0B58;
          v7 = v0 + 96;

          return MEMORY[0x282141C28](v7);
        }

        if (v5 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x282141C28](v7);
        }

        v9 = *(v8 + 8 * v5 + 32);
      }

      v10 = v9;
      *(v0 + 152) = v9;
      *(v0 + 96) = v9;
      swift_endAccess();
      v11 = v10;
      MEMORY[0x20F30F2C0]();
      if (*((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_13;
      }

      goto LABEL_36;
    }
  }

  else if (v3 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

  v13 = sub_20CCDB564();
  v14 = sub_20CCDB8B4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    if (v2)
    {
      v16 = sub_20CCDB9F4();
    }

    else
    {
      v16 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v15 + 4) = v16;

    _os_log_impl(&dword_20CC86000, v13, v14, "Sent %ld already-received elements to new subscriber", v15, 0xCu);
    MEMORY[0x20F30FD70](v15, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v17 = *(v0 + 112);
  v18 = *(v17 + 144);
  if (v18 == 255)
  {
    v24 = *(v0 + 128);
    v23 = *(v0 + 136);
    v25 = *(v0 + 120);
    v26 = *(v0 + 104);
    sub_20CCDA774();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v17 + 128);
    *(v17 + 128) = 0x8000000000000000;
    sub_20CCD6EF4(v26, v23, isUniquelyReferenced_nonNull_native);
    *(v17 + 128) = v30;
    swift_endAccess();
    (*(v24 + 8))(v23, v25);
  }

  else
  {
    v19 = *(v17 + 136);
    sub_20CCA1190(v19, v18 & 1);
    v20 = sub_20CCDB564();
    v21 = sub_20CCDB8B4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_20CC86000, v20, v21, "Upstream has already terminated", v22, 2u);
      MEMORY[0x20F30FD70](v22, -1, -1);
    }

    if (v18)
    {
      sub_20CCA119C(v19, v18);
      sub_20CCDB424();
      sub_20CCA11B4(v19, v18);
      sub_20CCA11B4(v19, v18);
    }

    else
    {
      sub_20CCDB444();
    }
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_20CCA10D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioStreamSender(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CCA1134(uint64_t a1)
{
  v2 = type metadata accessor for AudioStreamSender(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_20CCA1190(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

id sub_20CCA119C(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_20CCA1190(result, a2 & 1);
  }

  return result;
}

void sub_20CCA11B4(void *result, char a2)
{
  if (a2 != -1)
  {
    sub_20CCA11CC(result, a2 & 1);
  }
}

void sub_20CCA11CC(id a1, char a2)
{
  if (a2)
  {
  }
}

void sub_20CCA1200(uint64_t a1)
{
  type metadata accessor for AudioSynthesisHandle(319);
  if (v1 <= 0x3F)
  {
    sub_20CCA1294(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20CCA1294(uint64_t a1)
{
  if (!qword_27C80F678)
  {
    sub_20CCDAEA4();
    v1 = MEMORY[0x277D0A150];
    sub_20CCA1360(&qword_27C80F680, MEMORY[0x277D0A150], MEMORY[0x277D0A158]);
    sub_20CCA1360(&qword_27C80F688, v1, MEMORY[0x277D0A160]);
    v2 = sub_20CCDAB54();
    if (!v3)
    {
      atomic_store(v2, &qword_27C80F678);
    }
  }
}

uint64_t sub_20CCA1360(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for PhoneAvailabilitySystem(uint64_t a1)
{
  result = qword_28110E7C8;
  if (!qword_28110E7C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CCA141C(uint64_t a1)
{
  result = sub_20CCDADC4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20CCA1488(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20CCDAD14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_20CCDB2B4();
  MEMORY[0x28223BE20](v37);
  v42 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v36 = v7;
  v43 = MEMORY[0x277D84F90];
  v38 = v9;
  v39 = v8;
  sub_20CCA57CC(0, v11, 0);
  v12 = v43;
  v41 = v39 + 56;
  v13 = sub_20CCDB914();
  v14 = 0;
  v34 = v5 + 16;
  v35 = (v5 + 8);
  v15 = v39;
  v32 = v4;
  v33 = v38 + 32;
  v29 = v39 + 64;
  v30 = v11;
  v31 = v5;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(v15 + 32))
  {
    v16 = v13 >> 6;
    if ((*(v41 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_22;
    }

    v40 = v14;
    v17 = v12;
    v18 = *(v15 + 36);
    v12 = v36;
    (*(v5 + 16))(v36, *(v15 + 48) + *(v5 + 72) * v13, v4);
    sub_20CCA4E40(v12, v42);
    if (v2)
    {
      goto LABEL_26;
    }

    v2 = 0;
    (*v35)(v12, v4);
    v12 = v17;
    v43 = v17;
    v19 = *(v17 + 16);
    v20 = *(v12 + 24);
    if (v19 >= v20 >> 1)
    {
      sub_20CCA57CC((v20 > 1), v19 + 1, 1);
      v12 = v43;
    }

    *(v12 + 16) = v19 + 1;
    (*(v38 + 32))(v12 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v19, v42, v37);
    v15 = v39;
    v4 = 1 << *(v39 + 32);
    if (v13 >= v4)
    {
      goto LABEL_23;
    }

    v21 = *(v41 + 8 * v16);
    if ((v21 & (1 << v13)) == 0)
    {
      goto LABEL_24;
    }

    if (v18 != *(v39 + 36))
    {
      goto LABEL_25;
    }

    v22 = v21 & (-2 << (v13 & 0x3F));
    if (v22)
    {
      v4 = __clz(__rbit64(v22)) | v13 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v16 << 6;
      v24 = v16 + 1;
      v25 = (v29 + 8 * v16);
      while (v24 < (v4 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          sub_20CCA70CC(v13, v18, 0);
          v15 = v39;
          v4 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      sub_20CCA70CC(v13, v18, 0);
      v15 = v39;
    }

LABEL_4:
    v14 = v40 + 1;
    v13 = v4;
    v5 = v31;
    v4 = v32;
    if (v40 + 1 == v30)
    {
      return v12;
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
  (*v35)(v12, v4);

  __break(1u);
  return result;
}

uint64_t sub_20CCA1890(uint64_t a1)
{
  v3 = sub_20CCDACD4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v52 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v58 = v37 - v7;
  v8 = sub_20CCDB2B4();
  MEMORY[0x28223BE20](v8);
  v57 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v37[1] = v1;
    v60 = MEMORY[0x277D84F90];
    v50 = v9;
    sub_20CCA57CC(0, v11, 0);
    v13 = v50;
    v59 = v60;
    v56 = a1 + 56;
    result = sub_20CCDB914();
    v14 = result;
    v15 = 0;
    v47 = v4 + 88;
    v48 = v4 + 16;
    v46 = *MEMORY[0x277D0DFD8];
    v40 = *MEMORY[0x277D0E008];
    v38 = *MEMORY[0x277D0A5D0];
    v45 = (v13 + 104);
    v51 = (v4 + 8);
    v41 = *MEMORY[0x277D0A5D8];
    v43 = v4;
    v44 = v13 + 32;
    v39 = a1 + 64;
    v49 = a1;
    v42 = v11;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
    {
      v17 = v14 >> 6;
      if ((*(v56 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_27;
      }

      v53 = v15;
      v18 = v8;
      v54 = *(a1 + 36);
      v55 = 1 << v14;
      v19 = *(v4 + 16);
      v20 = v58;
      v19(v58, *(a1 + 48) + *(v4 + 72) * v14, v3);
      v21 = v52;
      v19(v52, v20, v3);
      v22 = (*(v4 + 88))(v21, v3);
      if (v22 == v46)
      {
        v8 = v18;
        (*v45)(v57, v41, v18);
      }

      else
      {
        v23 = *v45;
        v8 = v18;
        if (v22 == v40)
        {
          v23(v57, v41, v18);
        }

        else
        {
          v23(v57, v38, v18);
          (*v51)(v52, v3);
        }
      }

      a1 = v49;
      v24 = v50;
      v25 = v3;
      (*v51)(v58, v3);
      v26 = v59;
      v60 = v59;
      v28 = *(v59 + 16);
      v27 = *(v59 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_20CCA57CC((v27 > 1), v28 + 1, 1);
        v24 = v50;
        v26 = v60;
      }

      *(v26 + 16) = v28 + 1;
      v29 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v59 = v26;
      result = (*(v24 + 32))(v26 + v29 + *(v24 + 72) * v28, v57, v8);
      v16 = 1 << *(a1 + 32);
      if (v14 >= v16)
      {
        goto LABEL_28;
      }

      v30 = *(v56 + 8 * v17);
      if ((v30 & v55) == 0)
      {
        goto LABEL_29;
      }

      if (v54 != *(a1 + 36))
      {
        goto LABEL_30;
      }

      v31 = v30 & (-2 << (v14 & 0x3F));
      if (v31)
      {
        v16 = __clz(__rbit64(v31)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v32 = v17 << 6;
        v33 = v17 + 1;
        v34 = (v39 + 8 * v17);
        while (v33 < (v16 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            result = sub_20CCA70CC(v14, v54, 0);
            v16 = __clz(__rbit64(v35)) + v32;
            goto LABEL_4;
          }
        }

        result = sub_20CCA70CC(v14, v54, 0);
      }

LABEL_4:
      v15 = v53 + 1;
      v14 = v16;
      v3 = v25;
      v4 = v43;
      if (v53 + 1 == v42)
      {
        return v59;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  return result;
}

uint64_t sub_20CCA1DA4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_20CCDA7D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20CCDA7F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F690, &qword_20CCDCC90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v46 - v11;
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v13 = sub_20CCDB584();
  v48 = __swift_project_value_buffer(v13, qword_28110EE00);
  v14 = sub_20CCDB564();
  v15 = sub_20CCDB8B4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v47 = v3;
    v17 = v6;
    v18 = v2;
    v19 = a1;
    v20 = v16;
    *v16 = 0;
    _os_log_impl(&dword_20CC86000, v14, v15, "Querying Locale availability", v16, 2u);
    v21 = v20;
    a1 = v19;
    v2 = v18;
    v6 = v17;
    v3 = v47;
    MEMORY[0x20F30FD70](v21, -1, -1);
  }

  sub_20CCDA7B4();
  sub_20CCDA7E4();
  (*(v7 + 8))(v9, v6);
  sub_20CCDA7C4();
  (*(v3 + 8))(v5, v2);
  v22 = sub_20CCDA7A4();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v12, 1, v22) == 1)
  {
    sub_20CC89568(v12, &qword_27C80F690, &qword_20CCDCC90);
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v27 = sub_20CCDA794();
    v26 = v28;
    (*(v23 + 8))(v12, v22);
    v25 = 28261;
    if (v27 == 28261 && v26 == 0xE200000000000000)
    {
      v24 = 1;
      v26 = 0xE200000000000000;
    }

    else
    {
      v24 = sub_20CCDBA64();
      v25 = v27;
    }
  }

  v29 = sub_20CCDB564();
  v30 = sub_20CCDB8B4();

  if (!os_log_type_enabled(v29, v30))
  {

    if ((v24 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_15:
    v42 = MEMORY[0x277D0A5A8];
    goto LABEL_16;
  }

  v31 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  v51 = v32;
  *v31 = 136315650;
  *(v31 + 4) = sub_20CC88C4C(0xD000000000000017, 0x800000020CCDCC40, &v51);
  *(v31 + 12) = 2080;
  v49 = v25;
  v50 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6A0, &qword_20CCDCCA0);
  v33 = sub_20CCDB8F4();
  v35 = v34;

  v36 = sub_20CC88C4C(v33, v35, &v51);

  *(v31 + 14) = v36;
  *(v31 + 22) = 1024;
  *(v31 + 24) = v24 & 1;
  _os_log_impl(&dword_20CC86000, v29, v30, "%s Current Language %s, localeIsSupported %{BOOL}d", v31, 0x1Cu);
  swift_arrayDestroy();
  MEMORY[0x20F30FD70](v32, -1, -1);
  MEMORY[0x20F30FD70](v31, -1, -1);

  if (v24)
  {
    goto LABEL_15;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F698, &qword_20CCDCC98);
  v37 = sub_20CCDB2B4();
  v38 = *(v37 - 8);
  v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_20CCDC580;
  (*(v38 + 104))(v40 + v39, *MEMORY[0x277D0A5C8], v37);
  v41 = sub_20CCB2028(v40);
  swift_setDeallocating();
  (*(v38 + 8))(v40 + v39, v37);
  swift_deallocClassInstance();
  *a1 = v41;
  v42 = MEMORY[0x277D0A5A0];
LABEL_16:
  v43 = *v42;
  v44 = sub_20CCDB294();
  return (*(*(v44 - 8) + 104))(a1, v43, v44);
}

uint64_t sub_20CCA23F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_20CCDAEC4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6D0, &qword_20CCDCCD8);
  v3[9] = swift_task_alloc();
  v5 = sub_20CCDADC4();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6D8, &qword_20CCDCCE0);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v6 = sub_20CCDB2C4();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v7 = sub_20CCDB294();
  v3[22] = v7;
  v3[23] = *(v7 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCA26D0, 0, 0);
}

uint64_t sub_20CCA26D0()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  v0[32] = __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Refreshing device availability", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v12 = v0[3];
  v5 = v0[2];

  (*(v12 + 16))(v5);
  (*(v12 + 24))(v5);
  v11 = (*(v12 + 32) + **(v12 + 32));
  v6 = swift_task_alloc();
  v0[33] = v6;
  *v6 = v0;
  v6[1] = sub_20CCA28F8;
  v7 = v0[29];
  v8 = v0[3];
  v9 = v0[2];

  return v11(v7, v9, v8);
}

uint64_t sub_20CCA28F8()
{

  return MEMORY[0x2822009F8](sub_20CCA29F4, 0, 0);
}

uint64_t sub_20CCA29F4()
{
  v103 = v0;
  v80 = v0[31];
  v83 = v0[30];
  v86 = v0[29];
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[21];
  v8 = v0[22];
  v94 = v0[20];
  v99 = v0[18];
  v90 = v0[17];
  (*(v0[3] + 40))(v0[2]);
  v9 = *(v6 + 16);
  v9(v2, v80, v8);
  v9(v3, v83, v8);
  v9(v4, v86, v8);
  v9(v5, v1, v8);
  sub_20CCDB2A4();
  v10 = v94;
  v95 = *(v99 + 16);
  v95(v10, v7, v90);
  v11 = sub_20CCDB564();
  v12 = sub_20CCDB8B4();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[20];
  if (v13)
  {
    v16 = v0[18];
    v15 = v0[19];
    v17 = v0[17];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v102 = v19;
    *v18 = 136315138;
    v95(v15, v14, v17);
    v20 = sub_20CCDB684();
    v22 = v21;
    v98 = *(v16 + 8);
    v98(v14, v17);
    v23 = sub_20CC88C4C(v20, v22, &v102);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_20CC86000, v11, v12, "Current availability: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x20F30FD70](v19, -1, -1);
    MEMORY[0x20F30FD70](v18, -1, -1);
  }

  else
  {
    v24 = v0[17];
    v25 = v0[18];

    v98 = *(v25 + 8);
    v98(v14, v24);
  }

  v26 = v0[17];
  v27 = v0[18];
  v29 = v0[15];
  v28 = v0[16];
  v30 = v0[13];
  v31 = v0[10];
  v32 = v0[11];
  v33 = v0[9];
  v87 = v0[21];
  v91 = v0[8];
  v84 = (v0[3] + 8);
  v79 = *v84;
  (*v84)(v0[2]);
  sub_20CCDB344();
  v81 = *(v32 + 8);
  v81(v30, v31);
  v95(v29, v87, v26);
  (*(v27 + 56))(v29, 0, 1, v26);
  v34 = *(v91 + 48);
  sub_20CCA70D8(v29, v33);
  sub_20CCA70D8(v28, v33 + v34);
  v35 = *(v27 + 48);
  v36 = v35(v33, 1, v26);
  v37 = v0[17];
  if (v36 == 1)
  {
    sub_20CC89568(v0[15], &qword_27C80F6D8, &qword_20CCDCCE0);
    if (v35(v33 + v34, 1, v37) == 1)
    {
      sub_20CC89568(v0[9], &qword_27C80F6D8, &qword_20CCDCCE0);
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  sub_20CCA70D8(v0[9], v0[14]);
  if (v35(v33 + v34, 1, v37) == 1)
  {
    v38 = v0[17];
    v39 = v0[14];
    sub_20CC89568(v0[15], &qword_27C80F6D8, &qword_20CCDCCE0);
    v98(v39, v38);
LABEL_9:
    sub_20CC89568(v0[9], &qword_27C80F6D0, &qword_20CCDCCD8);
    goto LABEL_10;
  }

  v47 = v0[19];
  v48 = v0[17];
  v50 = v0[14];
  v49 = v0[15];
  v51 = v0[9];
  (*(v0[18] + 32))(v47, v33 + v34, v48);
  sub_20CCA7148(&qword_28110ED30, MEMORY[0x277D0A5F8], MEMORY[0x277D0A600]);
  v52 = sub_20CCDB654();
  v98(v47, v48);
  sub_20CC89568(v49, &qword_27C80F6D8, &qword_20CCDCCE0);
  v98(v50, v48);
  sub_20CC89568(v51, &qword_27C80F6D8, &qword_20CCDCCE0);
  if (v52)
  {
LABEL_14:
    v53 = sub_20CCDB564();
    v54 = sub_20CCDB8B4();
    v55 = os_log_type_enabled(v53, v54);
    v56 = v0[31];
    v100 = v0[30];
    v92 = v0[28];
    v96 = v0[29];
    v57 = v0[22];
    v58 = v0[23];
    v59 = v0[21];
    v60 = v0[17];
    v61 = v0[16];
    if (v55)
    {
      v88 = v0[31];
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_20CC86000, v53, v54, "Availability unchanged, not writing", v62, 2u);
      MEMORY[0x20F30FD70](v62, -1, -1);

      sub_20CC89568(v61, &qword_27C80F6D8, &qword_20CCDCCE0);
      v98(v59, v60);
      v63 = *(v58 + 8);
      v63(v92, v57);
      v63(v96, v57);
      v63(v100, v57);
      v63(v88, v57);
    }

    else
    {

      sub_20CC89568(v61, &qword_27C80F6D8, &qword_20CCDCCE0);
      v98(v59, v60);
      v76 = *(v58 + 8);
      v76(v92, v57);
      v76(v96, v57);
      v76(v100, v57);
      v76(v56, v57);
    }

    goto LABEL_21;
  }

LABEL_10:
  v40 = sub_20CCDB564();
  v41 = sub_20CCDB8B4();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_20CC86000, v40, v41, "Writing availibility", v42, 2u);
    MEMORY[0x20F30FD70](v42, -1, -1);
  }

  v43 = v0[12];
  v44 = v0[10];
  v45 = v0[3];
  v46 = v0[2];

  v79(v46, v45);
  sub_20CCDB354();
  v81(v43, v44);
  v64 = sub_20CCDB564();
  v65 = sub_20CCDB8B4();
  if (os_log_type_enabled(v64, v65))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_20CC86000, v64, v65, "Posting darwin notification", v67, 2u);
    MEMORY[0x20F30FD70](v67, -1, -1);
  }

  v101 = v0[31];
  v93 = v0[29];
  v97 = v0[30];
  v68 = v0[22];
  v69 = v0[23];
  v85 = v0[21];
  v89 = v0[28];
  v82 = v0[17];
  v70 = v0[16];
  v72 = v0[6];
  v71 = v0[7];
  v73 = v0[5];

  (*(v72 + 104))(v71, *MEMORY[0x277D0A170], v73);
  sub_20CCDAEB4();
  (*(v72 + 8))(v71, v73);
  v74 = sub_20CCDB694();

  notify_post((v74 + 32));
  sub_20CC89568(v70, &qword_27C80F6D8, &qword_20CCDCCE0);
  v98(v85, v82);
  v75 = *(v69 + 8);
  v75(v89, v68);
  v75(v93, v68);
  v75(v97, v68);
  v75(v101, v68);

LABEL_21:

  v77 = v0[1];

  return v77();
}

uint64_t sub_20CCA3638@<X0>(uint64_t *a1@<X8>)
{
  v106 = a1;
  v103 = sub_20CCDAD04();
  v95 = *(v103 - 8);
  v1 = MEMORY[0x28223BE20](v103);
  v94 = &v91 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v102 = &v91 - v3;
  v97 = sub_20CCDAD44();
  v93 = *(v97 - 8);
  v4 = MEMORY[0x28223BE20](v97);
  v92 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v96 = &v91 - v6;
  v7 = sub_20CCDAD94();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20CCDAD74();
  v101 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20CCDADB4();
  v99 = *(v14 - 8);
  v100 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20CCDAD54();
  v104 = *(v17 - 8);
  v105 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v91 - v21;
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v23 = sub_20CCDB584();
  v98 = __swift_project_value_buffer(v23, qword_28110EE00);
  v24 = sub_20CCDB564();
  v25 = sub_20CCDB8B4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v91 = v10;
    v27 = v11;
    v28 = v8;
    v29 = v7;
    v30 = v20;
    v31 = v22;
    v32 = v26;
    *v26 = 0;
    _os_log_impl(&dword_20CC86000, v24, v25, "Querying gms availability", v26, 2u);
    v33 = v32;
    v22 = v31;
    v20 = v30;
    v7 = v29;
    v8 = v28;
    v11 = v27;
    v10 = v91;
    MEMORY[0x20F30FD70](v33, -1, -1);
  }

  sub_20CCDB2F4();
  (*(v8 + 104))(v10, *MEMORY[0x277D0E2D8], v7);
  sub_20CCDAD64();
  sub_20CCDADA4();
  (*(v101 + 1))(v13, v11);
  sub_20CCDAD84();
  (*(v99 + 8))(v16, v100);
  v35 = v104;
  v34 = v105;
  (*(v104 + 16))(v20, v22, v105);
  v36 = (*(v35 + 88))(v20, v34);
  if (v36 == *MEMORY[0x277D0DFA8])
  {
    v101 = v22;
    (*(v35 + 96))(v20, v34);
    v37 = v95;
    v38 = v20;
    v39 = v102;
    v40 = v103;
    (*(v95 + 32))(v102, v38, v103);
    v41 = v94;
    (*(v37 + 16))(v94, v39, v40);
    v42 = sub_20CCDB564();
    v43 = sub_20CCDB8B4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v107[0] = v45;
      *v44 = 136315138;
      v46 = sub_20CCDACE4();
      v47 = v41;
      v49 = v48;
      v50 = *(v37 + 8);
      v50(v47, v103);
      v51 = sub_20CC88C4C(v46, v49, v107);

      *(v44 + 4) = v51;
      _os_log_impl(&dword_20CC86000, v42, v43, "Generative models restricted: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      v52 = v45;
      v40 = v103;
      MEMORY[0x20F30FD70](v52, -1, -1);
      MEMORY[0x20F30FD70](v44, -1, -1);
    }

    else
    {

      v50 = *(v37 + 8);
      v50(v41, v40);
    }

    v67 = v102;
    v68 = sub_20CCDACF4();
    v69 = sub_20CCA1890(v68);
LABEL_17:
    v74 = v69;

    v75 = sub_20CCA6F30(v74);

    v50(v67, v40);
    (*(v35 + 8))(v101, v34);
    v76 = v106;
    *v106 = v75;
    v77 = *MEMORY[0x277D0A5A0];
    v78 = sub_20CCDB294();
    return (*(*(v78 - 8) + 104))(v76, v77, v78);
  }

  if (v36 == *MEMORY[0x277D0DFB0])
  {
    v101 = v22;
    (*(v35 + 96))(v20, v34);
    v53 = v93;
    v54 = v20;
    v55 = v96;
    v40 = v97;
    (*(v93 + 32))(v96, v54, v97);
    v56 = v92;
    (*(v53 + 16))(v92, v55, v40);
    v57 = sub_20CCDB564();
    v58 = sub_20CCDB8B4();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v107[0] = v60;
      *v59 = 136315138;
      v61 = sub_20CCDAD24();
      v62 = v56;
      v64 = v63;
      v50 = *(v53 + 8);
      v50(v62, v97);
      v65 = sub_20CC88C4C(v61, v64, v107);

      *(v59 + 4) = v65;
      _os_log_impl(&dword_20CC86000, v57, v58, "Generative models unavailable: %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      v66 = v60;
      v40 = v97;
      MEMORY[0x20F30FD70](v66, -1, -1);
      MEMORY[0x20F30FD70](v59, -1, -1);
    }

    else
    {

      v50 = *(v53 + 8);
      v50(v56, v40);
    }

    v67 = v96;
    v73 = sub_20CCDAD34();
    v69 = sub_20CCA1488(v73);
    goto LABEL_17;
  }

  if (v36 == *MEMORY[0x277D0E278])
  {
    (*(v35 + 8))(v22, v34);
    v70 = *MEMORY[0x277D0A5A8];
    v71 = sub_20CCDB294();
    return (*(*(v71 - 8) + 104))(v106, v70, v71);
  }

  else
  {
    v79 = sub_20CCDB564();
    v80 = sub_20CCDB8B4();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_20CC86000, v79, v80, "Generative models unavailable, unknown reason", v81, 2u);
      MEMORY[0x20F30FD70](v81, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F698, &qword_20CCDCC98);
    v82 = sub_20CCDB2B4();
    v83 = *(v82 - 8);
    v84 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_20CCDC580;
    (*(v83 + 104))(v85 + v84, *MEMORY[0x277D0A5D0], v82);
    v86 = sub_20CCB2028(v85);
    swift_setDeallocating();
    (*(v83 + 8))(v85 + v84, v82);
    swift_deallocClassInstance();
    v87 = *(v35 + 8);
    v87(v22, v34);
    v88 = v106;
    *v106 = v86;
    v89 = *MEMORY[0x277D0A5A0];
    v90 = sub_20CCDB294();
    (*(*(v90 - 8) + 104))(v88, v89, v90);
    return (v87)(v20, v34);
  }
}
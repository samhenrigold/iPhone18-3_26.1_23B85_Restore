uint64_t sub_2461587EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24619F8BC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_246158818@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_246158834()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24615886C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F878, &qword_2461A0DA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_246158944(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24615895C()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2461589AC()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_246158A10()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_246158A58()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_246158AA0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_24619F3FC();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_246158B58(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_24619F3FC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_246158BFC()
{
  v1 = sub_24619F3FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_246158CC0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_246158CF8()
{
  v1 = sub_24619F0FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_24619F3FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_246158E48()
{
  v1 = sub_24619F4DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_246158F18()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_246158F68()
{
  v1 = sub_24619F22C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24615905C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_246159094()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2461590CC()
{
  v1 = sub_24619EF5C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_24619F4DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v10 | 7);
}

uint64_t sub_246159278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24619F46C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_24619F22C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_246159368(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24619F46C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_24619F22C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_246159464()
{
  v1 = sub_24619F46C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24615954C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F958, &qword_2461A1228);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 6)
  {
    return v5 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2461595C4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 5);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F958, &qword_2461A1228);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x20u);
}

uint64_t sub_24615AC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v10 = sub_24619FB4C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  sub_24619F1CC();
  *(v5 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_expectedBindingsActions) = MEMORY[0x277D84F98];
  v14 = OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_geoCoder;
  sub_24619F6BC();
  *(v5 + v14) = sub_24619F6AC();
  *(v5 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller__locationHelper) = 0;
  *(v5 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_locationCollectionTask) = 0;
  *(v5 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_locationHelperContinuations) = 0;
  v15 = (v5 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_odiSessionIdentifier);
  *v15 = a1;
  v15[1] = a2;
  v21 = sub_24619EEFC();
  v22 = MEMORY[0x277D004B0];
  __swift_allocate_boxed_opaque_existential_1(&v20);

  sub_24619EECC();
  sub_246158944(&v20, v5 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_logger);
  *(v5 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_locationBundle) = a3;
  v16 = (v5 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_locationBundleIdentifier);
  v17 = v19;
  *v16 = a4;
  v16[1] = v17;
  sub_24619FB3C();
  (*(v11 + 32))(v5 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_coalescingReferenceDate, v13, v10);
  return v5;
}

uint64_t sub_24615AE7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F878, &qword_2461A0DA0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v28[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v28[-1] - v12;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a2 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller__locationHelper))
  {
    v28[0] = *(a2 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller__locationHelper);

    return sub_24619F9AC();
  }

  else
  {
    v15 = OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_locationHelperContinuations;
    swift_beginAccess();
    if (*(a2 + v15))
    {
      v17 = sub_24615AE1C(v28);
      if (*v16)
      {
        v18 = v16;
        (*(v8 + 16))(v13, a1, v7);
        v19 = *v18;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v18 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = sub_246165338(0, v19[2] + 1, 1, v19);
          *v18 = v19;
        }

        v22 = v19[2];
        v21 = v19[3];
        if (v22 >= v21 >> 1)
        {
          v19 = sub_246165338((v21 > 1), v22 + 1, 1, v19);
          *v18 = v19;
        }

        v19[2] = v22 + 1;
        (*(v8 + 32))(v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v22, v13, v7);
        return (v17)(v28, 0);
      }

      else
      {
        return (v17)(v28, 0);
      }
    }

    else
    {
      *(a2 + v15) = MEMORY[0x277D84F90];
      v23 = sub_24619F9CC();
      (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
      (*(v8 + 16))(v11, a1, v7);
      v24 = sub_246164E30(&qword_281391CA0, type metadata accessor for ODIBindingsFiller, &unk_2461A0CE8);
      v25 = (*(v8 + 80) + 40) & ~*(v8 + 80);
      v26 = swift_allocObject();
      *(v26 + 2) = a2;
      *(v26 + 3) = v24;
      *(v26 + 4) = a2;
      (*(v8 + 32))(&v26[v25], v11, v7);
      swift_retain_n();
      sub_2461703A8(0, 0, v6, &unk_2461A0DB0, v26);
    }
  }
}

uint64_t sub_24615B26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F878, &qword_2461A0DA0);
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v8 = sub_24619F7FC();
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24615B398, a4, 0);
}

uint64_t sub_24615B398()
{
  v1 = v0[12];
  v2 = *(v1 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_locationBundle);
  v3 = *(v1 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_locationBundleIdentifier);
  v4 = *(v1 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_locationBundleIdentifier + 8);
  sub_24619F48C();
  v5 = sub_24619EEFC();
  v6 = MEMORY[0x277D004B0];
  v0[5] = v5;
  v0[6] = v6;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v7 = v2;

  sub_24619EECC();
  sub_24619F66C();
  swift_allocObject();
  v8 = sub_24619F65C();
  sub_24619F5AC();
  swift_allocObject();
  v9 = sub_24619F59C();
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_24615B51C;

  return MEMORY[0x282152E38](v2, v3, v4, v8, v9);
}

uint64_t sub_24615B51C(uint64_t a1)
{
  v2 = *(*v1 + 96);
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_24615B634, v2, 0);
}

uint64_t sub_24615B634()
{
  v1 = v0[21];
  v2 = v0[12];
  *(v2 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller__locationHelper) = v1;

  v0[10] = v1;

  sub_24619F9AC();
  v3 = OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_locationHelperContinuations;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      v19 = v2;
      v6 = v0[15];
      v8 = *(v6 + 16);
      v7 = v6 + 16;
      v20 = v8;
      v9 = v4 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
      v10 = *(v7 + 56);

      do
      {
        v11 = v0[21];
        v12 = v0[16];
        v13 = v0[14];
        v20(v12, v9, v13);
        v0[11] = v11;

        sub_24619F9AC();
        (*(v7 - 8))(v12, v13);
        v9 += v10;
        --v5;
      }

      while (v5);

      v2 = v19;
    }

    *(v2 + v3) = 0;
  }

  else
  {
    v15 = v0[18];
    v14 = v0[19];
    v16 = v0[17];
    __swift_project_boxed_opaque_existential_1((v0[12] + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_logger), *(v0[12] + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_logger + 24));
    (*(v15 + 104))(v14, *MEMORY[0x277D007A8], v16);
    sub_24619F6FC();

    (*(v15 + 8))(v14, v16);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_24615B89C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0);
  MEMORY[0x28223BE20](v8 - 8);
  v58 = v52 - v9;
  v57 = sub_24619F7FC();
  v63 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24619FB4C();
  v55 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_24619F1EC();
  v59 = *(v60 - 1);
  v14 = MEMORY[0x28223BE20](v60);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v52 - v17;
  v19 = sub_24619F8BC();
  v61 = v20;
  v62 = v19;
  sub_24615C140(a1, a2, v67);
  v21 = 0x27EE3F000;
  if ((sub_24615C3D4(a2, a3) & 1) == 0)
  {
    goto LABEL_4;
  }

  v22 = v16;
  v23 = OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_currentBindings;
  swift_beginAccess();
  v24 = v59;
  v25 = v60;
  v54 = *(v59 + 16);
  v54(v18, v4 + v23, v60);
  sub_24619F1FC();
  v26 = *(v24 + 8);
  v26(v18, v25);
  if (!v65)
  {
    sub_24616CFC4(&v64, &qword_27EE3F8D0, &qword_2461A0E70);
    v16 = v22;
    v21 = 0x27EE3F000uLL;
    goto LABEL_6;
  }

  sub_246158944(&v64, v66);
  sub_24619F01C();
  v27 = MEMORY[0x24C199F20](v67, v66);
  __swift_destroy_boxed_opaque_existential_1(v66);
  v16 = v22;
  v21 = 0x27EE3F000uLL;
  if ((v27 & 1) == 0)
  {
LABEL_6:
    sub_24619FB3C();
    v34 = OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_coalescingReferenceDate;
    swift_beginAccess();
    (*(v55 + 40))(v4 + v34, v13, v11);
    swift_endAccess();
    v35 = *(v4 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_logger + 24);
    v52[1] = *(v4 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_logger + 32);
    v52[0] = __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_logger), v35);
    *&v66[0] = 0;
    *(&v66[0] + 1) = 0xE000000000000000;
    sub_24619FAEC();

    *&v66[0] = 0xD000000000000012;
    *(&v66[0] + 1) = 0x80000002461A27C0;
    MEMORY[0x24C19A830](1702195828, 0xE400000000000000);

    MEMORY[0x24C19A830](0xD000000000000019, 0x80000002461A27E0);
    v33 = v60;
    v54(v16, v4 + v23, v60);
    sub_24619F1DC();
    v26(v16, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8D8, &qword_2461A0E78);
    v36 = sub_24619F84C();
    MEMORY[0x24C19A830](v36);

    v37 = *MEMORY[0x277D00770];
    v29 = v63;
    v38 = *(v63 + 104);
    v53 = (v63 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v31 = v56;
    LODWORD(v55) = v37;
    v32 = v57;
    v54 = v38;
    v38(v56);
    sub_24619F6DC();

    goto LABEL_7;
  }

LABEL_4:
  __swift_project_boxed_opaque_existential_1((v4 + *(v21 + 1984)), *(v4 + *(v21 + 1984) + 24));
  v28 = *MEMORY[0x277D00770];
  v29 = v63;
  v30 = *(v63 + 104);
  v53 = (v63 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v31 = v56;
  LODWORD(v55) = v28;
  v32 = v57;
  v54 = v30;
  v30(v56);
  sub_24619F6DC();
  v33 = v60;
LABEL_7:
  v39 = v21;
  v40 = *(v29 + 8);
  v63 = v29 + 8;
  v60 = v40;
  (v40)(v31, v32);
  sub_24616CB20(v67, v66);
  v41 = OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_currentBindings;
  swift_beginAccess();
  v42 = v61;

  sub_24619F20C();
  swift_endAccess();
  v43 = (v4 + *(v39 + 1984));
  v44 = v43[3];
  v57 = v43[4];
  __swift_project_boxed_opaque_existential_1(v43, v44);
  *&v66[0] = 0;
  *(&v66[0] + 1) = 0xE000000000000000;
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD000000000000010, 0x80000002461A27A0);
  v45 = v59;
  (*(v59 + 16))(v16, v4 + v41, v33);
  sub_24619FB6C();
  (*(v45 + 8))(v16, v33);
  v54(v31, v55, v32);
  sub_24619F72C();

  (v60)(v31, v32);
  v46 = sub_24619F9CC();
  v47 = v58;
  (*(*(v46 - 8) + 56))(v58, 1, 1, v46);
  sub_24616CB20(v67, v66);
  v48 = sub_246164E30(&qword_281391CA0, type metadata accessor for ODIBindingsFiller, &unk_2461A0CE8);
  v49 = swift_allocObject();
  v49[2] = v4;
  v49[3] = v48;
  v50 = v62;
  v49[4] = v4;
  v49[5] = v50;
  v49[6] = v42;
  sub_246158944(v66, (v49 + 7));
  swift_retain_n();
  sub_2461703A8(0, 0, v47, &unk_2461A0E68, v49);

  return __swift_destroy_boxed_opaque_existential_1(v67);
}

void sub_24615C140(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v28 = a2;
  sub_24616CB20(a1, v29);
  v6 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8D8, &qword_2461A0E78);
  if (!swift_dynamicCast())
  {
    goto LABEL_20;
  }

  v7 = sub_24619F8BC();
  v9 = v8;
  if (v7 == sub_24619F8BC() && v9 == v10)
  {
    goto LABEL_15;
  }

  v12 = sub_24619FBFC();

  if (v12)
  {
LABEL_16:
    __swift_destroy_boxed_opaque_existential_1(v29);

    v23 = MEMORY[0x24C19A060]();

    v24 = MEMORY[0x277D83B98];
    a3[3] = MEMORY[0x277D83B88];
    a3[4] = v24;
    *a3 = v23;
    return;
  }

  v13 = sub_24619F8BC();
  v15 = v14;
  if (v13 == sub_24619F8BC() && v15 == v16)
  {
LABEL_15:

    goto LABEL_16;
  }

  v18 = sub_24619FBFC();

  if (v18)
  {
    goto LABEL_16;
  }

  v19 = sub_24619F8BC();
  v21 = v20;
  if (v19 == sub_24619F8BC() && v21 == v22)
  {

LABEL_18:
    v26 = MEMORY[0x24C19A070]();

    v27 = MEMORY[0x277D83B98];
    a3[3] = MEMORY[0x277D83B88];
    a3[4] = v27;
    *a3 = v26;
    __swift_destroy_boxed_opaque_existential_1(v29);

    return;
  }

  v25 = sub_24619FBFC();

  if (v25)
  {
    goto LABEL_18;
  }

LABEL_20:
  sub_24616CB20(a1, a3);
  sub_24616CFC4(&v28, &qword_27EE3F8E0, &qword_2461A0EC0);
}

uint64_t sub_24615C3D4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_24619F8BC(), sub_24619FC8C(), sub_24619F8FC(), v3 = sub_24619FCAC(), , v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = sub_24619F8BC();
      v9 = v8;
      if (v7 == sub_24619F8BC() && v9 == v10)
      {
        break;
      }

      v12 = sub_24619FBFC();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_24615C528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_24615C550, a4, 0);
}

uint64_t sub_24615C550()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = sub_246164E30(&qword_281391CA0, type metadata accessor for ODIBindingsFiller, &unk_2461A0CE8);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 32) = v5;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_24615C678;
  v7 = *(v0 + 16);
  v8 = MEMORY[0x277D84F78] + 8;
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007C0](v7, v8, v1, v3, &unk_2461A0E88, v4, v9);
}

uint64_t sub_24615C678()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24615C788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[18] = a3;
  v6[19] = a4;
  v6[17] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24615C83C, a3, 0);
}

uint64_t sub_24615C83C()
{
  v1 = *(v0 + 144);
  v2 = OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_expectedBindingsActions;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = *(v3 + 16);

  if (v4 && (v5 = sub_24616595C(*(v0 + 152), *(v0 + 160)), (v6 & 1) != 0))
  {
    v7 = *(*(v3 + 56) + 8 * v5);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v7 + 16);
  if (v8)
  {
    v29 = **(v0 + 136);
    v9 = (v7 + 32);
    do
    {
      v32 = v8;
      v12 = *(v0 + 176);
      v13 = *(v0 + 184);
      v14 = *(v0 + 160);
      v15 = *(v0 + 168);
      v16 = *(v0 + 144);
      v30 = *(v0 + 152);
      v17 = swift_allocObject();
      v31 = v9;
      *(v17 + 16) = *v9;
      v18 = sub_24619F9CC();
      v19 = *(v18 - 8);
      (*(v19 + 56))(v13, 1, 1, v18);
      sub_24616CB20(v15, v0 + 16);
      v20 = swift_allocObject();
      v20[2] = 0;
      v21 = v20 + 2;
      v20[3] = 0;
      v20[4] = &unk_2461A0EA8;
      v20[5] = v17;
      sub_246158944((v0 + 16), (v20 + 6));
      v20[11] = v16;
      v20[12] = v30;
      v20[13] = v14;
      sub_24616CEA8(v13, v12);
      LODWORD(v12) = (*(v19 + 48))(v12, 1, v18);

      v22 = *(v0 + 176);
      if (v12 == 1)
      {
        sub_24616CFC4(*(v0 + 176), &qword_27EE3F870, &qword_2461A0FE0);
        if (*v21)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_24619F9BC();
        (*(v19 + 8))(v22, v18);
        if (*v21)
        {
LABEL_13:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v23 = sub_24619F99C();
          v24 = v25;
          swift_unknownObjectRelease();
          goto LABEL_14;
        }
      }

      v23 = 0;
      v24 = 0;
LABEL_14:
      v26 = swift_allocObject();
      *(v26 + 16) = &unk_2461A0EB0;
      *(v26 + 24) = v20;

      if (v24 | v23)
      {
        v10 = v0 + 56;
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 72) = v23;
        *(v0 + 80) = v24;
      }

      else
      {
        v10 = 0;
      }

      v11 = *(v0 + 184);
      *(v0 + 112) = 1;
      *(v0 + 120) = v10;
      *(v0 + 128) = v29;
      swift_task_create();

      sub_24616CFC4(v11, &qword_27EE3F870, &qword_2461A0FE0);
      v9 = v31 + 1;
      v8 = v32 - 1;
    }

    while (v32 != 1);
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_24615CC18(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_24616D024;

  return v5();
}

uint64_t sub_24615CD0C(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[6] = a6;
  v11 = sub_24619F7FC();
  v8[9] = v11;
  v8[10] = *(v11 - 8);
  v8[11] = swift_task_alloc();
  v14 = (a3 + *a3);
  v12 = swift_task_alloc();
  v8[12] = v12;
  *v12 = v8;
  v12[1] = sub_24615CE6C;

  return v14(a5);
}

uint64_t sub_24615CE6C()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24615CFA8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24615CFA8()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  __swift_project_boxed_opaque_existential_1((v0[6] + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_logger), *(v0[6] + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_logger + 24));
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD00000000000003CLL, 0x80000002461A2800);
  MEMORY[0x24C19A830](v6, v5);
  MEMORY[0x24C19A830](8250, 0xE200000000000000);
  swift_getErrorValue();
  sub_24619FBEC();
  (*(v3 + 104))(v2, *MEMORY[0x277D00770], v4);
  sub_24619F6EC();

  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24615D140(uint64_t a1)
{
  result = MEMORY[0x24C19A980](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_2461661E8(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_24615D25C(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for ODIAttributeKey(0);
  v4 = v3;
  v5 = sub_246164E30(&qword_281391860, type metadata accessor for ODIAttributeKey, &unk_2461A0D10);
  v6 = 0;
  v13[1] = MEMORY[0x24C19A980](v2, v4, v5);
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = v6;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    sub_246166338(v13, *(*(a1 + 48) + ((v11 << 9) | (8 * v12))));
  }

  while (1)
  {
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return;
    }

    v9 = *(a1 + 64 + 8 * v11);
    ++v6;
    if (v9)
    {
      v6 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_24615D3A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_246167460(0, v1, 0);
  v2 = v26;
  v25 = a1 + 56;
  result = sub_24619FA8C();
  v5 = result;
  v6 = 0;
  v24 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v25 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    result = sub_24619F8BC();
    v13 = *(v26 + 16);
    v12 = *(v26 + 24);
    if (v13 >= v12 >> 1)
    {
      v22 = v11;
      v23 = result;
      sub_246167460((v12 > 1), v13 + 1, 1);
      v11 = v22;
      result = v23;
    }

    *(v26 + 16) = v13 + 1;
    v14 = v26 + 16 * v13;
    *(v14 + 32) = result;
    *(v14 + 40) = v11;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v15 = *(v25 + 8 * v9);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v24;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v8 = v24;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_24616CAE4(v5, v10, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_24616CAE4(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_24615D5C4()
{
  v1 = OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_currentBindings;
  v2 = sub_24619F1EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_logger));
  v3 = OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_coalescingReferenceDate;
  v4 = sub_24619FB4C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_24615D704()
{
  sub_24615D5C4();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24615D758(uint64_t a1)
{
  result = sub_24619F1EC();
  if (v2 <= 0x3F)
  {
    result = sub_24619FB4C();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_24615D874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_expectedBindingsActions;
  swift_beginAccess();
  if (!*(*(v4 + v9) + 16) || (, sub_24616595C(a1, a2), v11 = v10, , (v11 & 1) == 0))
  {
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24[0] = *(v4 + v9);
    *(v4 + v9) = 0x8000000000000000;
    sub_24616A690(MEMORY[0x277D84F90], a1, a2, isUniquelyReferenced_nonNull_native);

    *(v4 + v9) = v24[0];
    swift_endAccess();
  }

  v13 = sub_24615ABC4(v25);
  v15 = sub_24615DABC(v24, a1, a2);
  if (*v14)
  {
    v16 = v14;
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    v18 = *v16;

    v19 = swift_isUniquelyReferenced_nonNull_native();
    *v16 = v18;
    if ((v19 & 1) == 0)
    {
      v18 = sub_246165528(0, v18[2] + 1, 1, v18);
      *v16 = v18;
    }

    v21 = v18[2];
    v20 = v18[3];
    if (v21 >= v20 >> 1)
    {
      v18 = sub_246165528((v20 > 1), v21 + 1, 1, v18);
      *v16 = v18;
    }

    v18[2] = v21 + 1;
    v22 = &v18[2 * v21];
    v22[4] = &unk_2461A0D60;
    v22[5] = v17;
    (v15)(v24, 0);
    return (v13)(v25, 0);
  }

  else
  {
    (v15)(v24, 0);
    return (v13)(v25, 0);
  }
}

uint64_t (*sub_24615DABC(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_2461678CC(v6, a2, a3);
  return sub_24615DB44;
}

void sub_24615DB44(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_24615DB90(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24616D024;

  return v7(a2);
}

uint64_t sub_24615DC84(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 40) = a1;
  *(v2 + 48) = v3;
  return MEMORY[0x2822009F8](sub_24615DCA4, v3, 0);
}

uint64_t sub_24615DCA4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_currentBindings;
  swift_beginAccess();
  v4 = sub_24619F1EC();
  (*(*(v4 - 8) + 16))(v2, v1 + v3, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_24615DD60()
{
  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_24615DDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a2;
  v4[7] = a3;
  v4[5] = a1;
  v5 = sub_24619F1EC();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *v3;
  v4[10] = v6;
  v4[11] = v7;

  return MEMORY[0x2822009F8](sub_24615DE98, v7, 0);
}

uint64_t sub_24615DE98()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_currentBindings;
  swift_beginAccess();
  (*(v4 + 16))(v1, v2 + v5, v3);
  sub_24619F1FC();
  (*(v4 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_24615DF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v6 = *v4;
  v5[6] = *v4;
  return MEMORY[0x2822009F8](sub_24615DFAC, v6, 0);
}

uint64_t sub_24615DFAC()
{
  sub_24615D874(v0[2], v0[3], v0[4], v0[5]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_24615E014(uint64_t a1, uint64_t a2)
{
  v3 = sub_24619F7FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v2 + 112) = 0;
  sub_24619F1CC();
  v10 = sub_24619EEFC();
  v11 = MEMORY[0x277D004B0];
  __swift_allocate_boxed_opaque_existential_1(&v9);
  sub_24619EECC();
  sub_246158944(&v9, v2 + OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_logger);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_logger), *(v2 + OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_logger + 24));
  (*(v4 + 104))(v6, *MEMORY[0x277D00770], v3);
  sub_24619F6DC();
  (*(v4 + 8))(v6, v3);
  return v2;
}

uint64_t sub_24615E1BC(void (*a1)(void, void))
{
  v57 = a1;
  v2 = sub_24619EFDC();
  v51 = *(v2 - 8);
  v52 = v2;
  MEMORY[0x28223BE20](v2);
  v50 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_24619F7FC();
  v48 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v49 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24619F1EC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_bindingsForLastCall;
  swift_beginAccess();
  v10 = v6[2];
  v54 = v1;
  v47 = v10;
  v10(v8, v1 + v9, v5);
  v11 = sub_24619F1DC();
  v13 = v6 + 8;
  v12 = v6[1];
  v12(v8, v5);
  v14 = sub_24615D140(v11);
  v15 = sub_24619F1DC();
  v16 = sub_24616B3CC(v15, v14);

  v17 = *(v16 + 16);

  if (v17)
  {
    v19 = v50;
    v18 = v51;
    v20 = v52;
    (*(v51 + 104))(v50, *MEMORY[0x277D00538], v52);
    sub_24619F7AC();
    (*(v18 + 8))(v19, v20);
    swift_willThrow();
  }

  else
  {
    v51 = v9;
    v52 = v6;
    v21 = v54;
    v47(v8, v54 + v9, v5);
    v22 = v57;
    v23 = sub_24619F1BC();
    v12(v8, v5);
    v24 = v53;
    v25 = v48;
    if ((v23 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1((v21 + OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_logger), *(v21 + OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_logger + 24));
      v26 = v49;
      (*(v25 + 104))(v49, *MEMORY[0x277D00798], v24);
      v21 = v54;
      sub_24619F6DC();
      (*(v25 + 8))(v26, v24);
      *(v21 + 113) = 1;
    }

    if ((*(v21 + 112) & 1) != 0 || *(v21 + 113) != 1)
    {
      v35 = v25;
      v36 = *(v21 + OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_logger + 24);
      v57 = *(v21 + OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_logger + 32);
      v52 = __swift_project_boxed_opaque_existential_1((v21 + OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_logger), v36);
      v55 = 0;
      v56 = 0xE000000000000000;
      sub_24619FAEC();
      MEMORY[0x24C19A830](0xD000000000000025, 0x80000002461A2690);
      if (*(v21 + 112))
      {
        v37 = 1702195828;
      }

      else
      {
        v37 = 0x65736C6166;
      }

      if (*(v21 + 112))
      {
        v38 = 0xE400000000000000;
      }

      else
      {
        v38 = 0xE500000000000000;
      }

      MEMORY[0x24C19A830](v37, v38);

      MEMORY[0x24C19A830](0xD000000000000013, 0x80000002461A26C0);
      if (*(v21 + 113))
      {
        v39 = 1702195828;
      }

      else
      {
        v39 = 0x65736C6166;
      }

      if (*(v21 + 113))
      {
        v40 = 0xE400000000000000;
      }

      else
      {
        v40 = 0xE500000000000000;
      }

      MEMORY[0x24C19A830](v39, v40);

      v41 = v49;
      v42 = v53;
      (*(v35 + 104))(v49, *MEMORY[0x277D00770], v53);
      sub_24619F6DC();

      (*(v35 + 8))(v41, v42);
      v13 = 0;
    }

    else
    {
      v13 = 1;
      *(v21 + 112) = 1;
      v27 = (v21 + OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_logger);
      v45 = v5;
      v28 = *(v21 + OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_logger + 24);
      v57 = v27[4];
      v44 = __swift_project_boxed_opaque_existential_1(v27, v28);
      LODWORD(v47) = *MEMORY[0x277D00798];
      v46 = *(v25 + 104);
      v50 = (v25 + 104);
      v29 = v22;
      v30 = v49;
      v46(v49);
      sub_24619F6DC();
      v57 = *(v25 + 8);
      v57(v30, v24);
      v31 = v54;
      *(v54 + 113) = 0;
      v32 = v51;
      v33 = v31;
      swift_beginAccess();
      (v52[3])(v33 + v32, v29, v45);
      swift_endAccess();
      v34 = v27[3];
      v54 = v27[4];
      __swift_project_boxed_opaque_existential_1(v27, v34);
      v55 = 0;
      v56 = 0xE000000000000000;
      sub_24619FAEC();
      MEMORY[0x24C19A830](0xD000000000000047, 0x80000002461A2720);
      sub_24619FB6C();
      (v46)(v30, v47, v24);
      sub_24619F72C();

      v57(v30, v24);
    }
  }

  return v13 & 1;
}

uint64_t sub_24615E934()
{
  v1 = sub_24619F7FC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_logger);
  v6 = *(v0 + OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_logger + 32);
  v20 = *(v0 + OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_logger + 24);
  v21 = v6;
  v19 = __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_logger), v20);
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD00000000000002DLL, 0x80000002461A2560);
  if (*(v0 + 112))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + 112))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x24C19A830](v7, v8);

  MEMORY[0x24C19A830](0xD000000000000014, 0x80000002461A2590);
  if (*(v0 + 113))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v0 + 113))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x24C19A830](v9, v10);

  MEMORY[0x24C19A830](32, 0xE100000000000000);
  v11 = *MEMORY[0x277D00798];
  v12 = *(v2 + 104);
  v12(v4, v11, v1);
  sub_24619F6DC();

  v13 = *(v2 + 8);
  v20 = v2 + 8;
  v21 = v1;
  v13(v4, v1);
  *(v0 + 112) = 0;
  v14 = *(v0 + 113);
  if (v14 == 1)
  {
    *(v0 + 113) = 0;
    v15 = v5[3];
    v19 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v15);
    v16 = v21;
    v12(v4, v11, v21);
    sub_24619F6DC();
    v13(v4, v16);
  }

  return v14;
}

uint64_t sub_24615EBD8()
{
  v1 = OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_bindingsForLastCall;
  v2 = sub_24619F1EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_logger));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24615EC60()
{
  v1[2] = v0;
  v2 = sub_24619F1AC();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_24619F46C();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = sub_24619F22C();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24615EDD8, 0, 0);
}

uint64_t sub_24615EDD8()
{
  (*(v0[7] + 104))(v0[8], *MEMORY[0x277D006B8], v0[6]);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_24615EE9C;
  v2 = v0[11];
  v3 = v0[8];

  return sub_2461970D8(v2, v3);
}

uint64_t sub_24615EE9C(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 104) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_24615EFFC, 0, 0);
}

uint64_t sub_24615EFFC()
{
  v1 = v0[13];
  (*(v0[10] + 8))(v0[11], v0[9]);
  v2 = *(v1 + 16);
  v3 = v0[13];
  if (v2)
  {
    v4 = v0[4];
    v19 = MEMORY[0x277D84F90];
    sub_246167480(0, v2, 0);
    v5 = v19;
    v6 = *(v4 + 16);
    v4 += 16;
    v7 = v3 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v17 = *(v4 + 56);
    v18 = v6;
    v8 = (v4 - 8);
    do
    {
      v9 = v0[5];
      v10 = v0[3];
      v18(v9, v7, v10);
      sub_24619F17C();
      v11 = sub_24619F88C();

      (*v8)(v9, v10);
      v13 = *(v19 + 16);
      v12 = *(v19 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_246167480((v12 > 1), v13 + 1, 1);
      }

      *(v19 + 16) = v13 + 1;
      *(v19 + 8 * v13 + 32) = v11;
      v7 += v17;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v14 = sub_24616C8E8(v5);

  v15 = v0[1];

  return v15(v14);
}

uint64_t sub_24615F1E8(char a1)
{
  *(v2 + 48) = v1;
  *(v2 + 136) = a1;
  v3 = sub_24619F7FC();
  *(v2 + 56) = v3;
  *(v2 + 64) = *(v3 - 8);
  *(v2 + 72) = swift_task_alloc();
  v4 = sub_24619F46C();
  *(v2 + 80) = v4;
  *(v2 + 88) = *(v4 - 8);
  *(v2 + 96) = swift_task_alloc();
  v5 = sub_24619F22C();
  *(v2 + 104) = v5;
  *(v2 + 112) = *(v5 - 8);
  *(v2 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24615F364, 0, 0);
}

uint64_t sub_24615F364()
{
  (*(v0[11] + 104))(v0[12], *MEMORY[0x277D006B8], v0[10]);
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_24615F428;
  v2 = v0[15];
  v3 = v0[12];

  return sub_2461970D8(v2, v3);
}

uint64_t sub_24615F428(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v3[4] = v1;
  v3[5] = a1;
  v4 = v2[12];
  v5 = v2[11];
  v6 = v2[10];

  (*(v5 + 8))(v4, v6);

  return MEMORY[0x2822009F8](sub_24615F584, 0, 0);
}

uint64_t sub_24615F584()
{
  if (*(v0 + 136) == 1)
  {
    v1 = *(v0 + 112);
    v9 = *(v0 + 120);
    v2 = *(v0 + 104);
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v5 = *(v0 + 56);
    __swift_project_boxed_opaque_existential_1((*(v0 + 48) + 24), *(*(v0 + 48) + 48));
    sub_24619FAEC();
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    MEMORY[0x24C19A830](0xD000000000000019, 0x80000002461A23F0);
    sub_24619FB6C();
    (*(v3 + 104))(v4, *MEMORY[0x277D00760], v5);
    sub_24619F6CC();

    (*(v3 + 8))(v4, v5);
    (*(v1 + 8))(v9, v2);
  }

  else
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  }

  v6 = *(v0 + 40);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_24615F754()
{
  v1[6] = v0;
  v2 = sub_24619F28C();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v3 = sub_24619F1AC();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v4 = sub_24619F46C();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  v5 = sub_24619F22C();
  v1[19] = v5;
  v1[20] = *(v5 - 8);
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24615F94C, 0, 0);
}

uint64_t sub_24615F94C()
{
  (*(v0[17] + 104))(v0[18], *MEMORY[0x277D006B8], v0[16]);
  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_24615FA10;
  v2 = v0[21];
  v3 = v0[18];

  return sub_2461970D8(v2, v3);
}

uint64_t sub_24615FA10(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  *(*v1 + 184) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_24615FB70, 0, 0);
}

uint64_t sub_24615FB70()
{
  v1 = v0[23];
  result = (*(v0[20] + 8))(v0[21], v0[19]);
  v3 = MEMORY[0x277D84F90];
  v40 = *(v1 + 16);
  if (v40)
  {
    v4 = 0;
    v5 = v0[12];
    v6 = v0[8];
    v36 = *MEMORY[0x277D00648];
    v34 = (v6 + 8);
    v35 = (v6 + 104);
    v38 = (v5 + 8);
    v39 = (v5 + 32);
    v37 = v1;
    v33 = v5;
    do
    {
      if (v4 >= *(v1 + 16))
      {
        __break(1u);
        return result;
      }

      v44 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v42 = *(v5 + 72);
      (*(v5 + 16))(v0[15], v0[23] + v44 + v42 * v4, v0[11]);
      if (sub_24619F19C() == 1)
      {
        v41 = v3;
        v7 = v0[9];
        v8 = v0[7];
        sub_24619F18C();
        (*v35)(v7, v36, v8);
        sub_246164E30(&qword_281391F80, MEMORY[0x277D00680], MEMORY[0x277D00688]);
        sub_24619F97C();
        sub_24619F97C();
        v10 = v0[9];
        v9 = v0[10];
        v11 = v0[7];
        if (v0[2] == v0[4] && v0[3] == v0[5])
        {
          v12 = *v34;
          (*v34)(v0[9], v0[7]);
          v12(v9, v11);

          v3 = v41;
          v1 = v37;
          v5 = v33;
LABEL_11:
          v15 = *v39;
          (*v39)(v0[14], v0[15], v0[11]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2461674A0(0, *(v3 + 16) + 1, 1);
          }

          v17 = *(v3 + 16);
          v16 = *(v3 + 24);
          if (v17 >= v16 >> 1)
          {
            sub_2461674A0((v16 > 1), v17 + 1, 1);
          }

          v18 = v0[14];
          v19 = v0[11];
          *(v3 + 16) = v17 + 1;
          result = v15(v3 + v44 + v17 * v42, v18, v19);
          goto LABEL_4;
        }

        v13 = sub_24619FBFC();
        v14 = *v34;
        (*v34)(v10, v11);
        v14(v9, v11);

        v3 = v41;
        v1 = v37;
        v5 = v33;
        if (v13)
        {
          goto LABEL_11;
        }
      }

      result = (*v38)(v0[15], v0[11]);
LABEL_4:
      ++v4;
    }

    while (v40 != v4);
  }

  v20 = *(v3 + 16);
  if (v20)
  {
    v21 = v0[12];
    v46 = MEMORY[0x277D84F90];
    sub_246167480(0, v20, 0);
    v22 = v46;
    v23 = *(v21 + 16);
    v21 += 16;
    v24 = v3 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v43 = *(v21 + 56);
    v45 = v23;
    v25 = (v21 - 8);
    do
    {
      v26 = v0[13];
      v27 = v0[11];
      v45(v26, v24, v27);
      sub_24619F17C();
      v28 = sub_24619F88C();

      (*v25)(v26, v27);
      v30 = *(v46 + 16);
      v29 = *(v46 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_246167480((v29 > 1), v30 + 1, 1);
      }

      *(v46 + 16) = v30 + 1;
      *(v46 + 8 * v30 + 32) = v28;
      v24 += v43;
      --v20;
    }

    while (v20);
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v31 = sub_24616C8E8(v22);

  v32 = v0[1];

  return v32(v31);
}

uint64_t sub_246160084()
{
  v1[7] = v0;
  v2 = sub_24619F46C();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = sub_24619F7FC();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  sub_24619EF4C();
  v1[14] = swift_task_alloc();
  v4 = sub_24619EF5C();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246160228, 0, 0);
}

uint64_t sub_246160228()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[7];
  v9 = v0[8];
  v10 = v0[10];
  sub_24619F55C();
  sub_24619EF6C();
  __swift_project_boxed_opaque_existential_1((v5 + 24), *(v5 + 48));
  sub_2461707A0(v1);
  sub_24619F74C();
  (*(v3 + 8))(v1, v2);
  (*(v4 + 104))(v10, *MEMORY[0x277D006B8], v9);
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_246160394;
  v7 = v0[10];

  return sub_246197B48(v7);
}

uint64_t sub_246160394()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v5 = *v0;

  (*(v3 + 8))(v2, v4);
  v6 = swift_task_alloc();
  *(v1 + 152) = v6;
  *v6 = v5;
  v6[1] = sub_246160534;

  return sub_24615F1E8(1);
}

uint64_t sub_246160534(uint64_t a1)
{
  *(*v1 + 160) = a1;

  return MEMORY[0x2822009F8](sub_246160634, 0, 0);
}

uint64_t sub_246160634()
{
  v1 = *(v0[7] + 72);
  v0[5] = type metadata accessor for ODIBindingsFiller(0);
  v2 = sub_246164E30(&qword_281391CA8, type metadata accessor for ODIBindingsFiller, &unk_2461A0CA8);
  v0[2] = v1;
  v0[6] = v2;
  v7 = (*MEMORY[0x277D00628] + MEMORY[0x277D00628]);

  v3 = swift_task_alloc();
  v0[21] = v3;
  *v3 = v0;
  v3[1] = sub_246160764;
  v4 = v0[20];
  v5 = v0[7];

  return v7(v4, &unk_2461A0E08, v5, v0 + 2);
}

uint64_t sub_246160764()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 16));

  return MEMORY[0x2822009F8](sub_246160884, 0, 0);
}

uint64_t sub_246160884()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  sub_24619EF3C();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_246160944(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_246160964, 0, 0);
}

uint64_t sub_246160964()
{
  v1 = *(*(v0 + 32) + 72);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_246160988, v1, 0);
}

uint64_t sub_246160988()
{
  v1 = v0[5];
  v2 = *(v1 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller__locationHelper);
  if (v2)
  {
    v0[7] = v2;

    return MEMORY[0x2822009F8](sub_246160C34, 0, 0);
  }

  else
  {
    v3 = sub_246164E30(&qword_281391CA0, type metadata accessor for ODIBindingsFiller, &unk_2461A0CE8);
    v4 = swift_task_alloc();
    v0[6] = v4;
    v5 = sub_24619F48C();
    *v4 = v0;
    v4[1] = sub_246160B00;
    v6 = v0[5];

    return MEMORY[0x2822007B8](v0 + 2, v1, v3, 0xD000000000000010, 0x80000002461A23D0, sub_24616B3C4, v6, v5);
  }
}

uint64_t sub_246160B00()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_246160C10, v1, 0);
}

uint64_t sub_246160C34()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = sub_24619F48C();
  v4 = MEMORY[0x277D006E0];
  v2[3] = v3;
  v2[4] = v4;
  *v2 = v1;
  v5 = v0[1];

  return v5();
}

uint64_t sub_246160CAC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_24619F1EC();
  v2[4] = swift_task_alloc();
  v3 = sub_24619F7FC();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_24619F2CC();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_24619F46C();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v6 = sub_24619F22C();
  v2[14] = v6;
  v2[15] = *(v6 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246160EB8, 0, 0);
}

uint64_t sub_246160EB8()
{
  (*(v0[12] + 104))(v0[13], *MEMORY[0x277D006B8], v0[11]);
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_246160F7C;
  v2 = v0[17];
  v3 = v0[13];

  return sub_2461970D8(v2, v3);
}

uint64_t sub_246160F7C(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  *(*v1 + 152) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_2461610DC, 0, 0);
}

uint64_t sub_2461610DC()
{
  *(v0 + 160) = *(*(v0 + 24) + 80);
  sub_24619F27C();
  sub_246164E30(&qword_281391F88, MEMORY[0x277D00630], MEMORY[0x277D00638]);
  v2 = sub_24619F99C();

  return MEMORY[0x2822009F8](sub_24616119C, v2, v1);
}

uint64_t sub_24616119C()
{
  sub_24619F23C();

  return MEMORY[0x2822009F8](sub_246161208, 0, 0);
}

uint64_t sub_246161208()
{
  v13 = v0[16];
  v14 = v0[17];
  v1 = v0[15];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v10 = v0[8];
  v5 = v0[6];
  v6 = v0[3];
  v11 = v0[5];
  v12 = v0[14];
  sub_24619F2AC();
  __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
  sub_24619FAEC();

  sub_246164E30(&qword_281391F78, MEMORY[0x277D00690], MEMORY[0x277D00698]);
  v7 = sub_24619FBBC();
  MEMORY[0x24C19A830](v7);

  (*(v5 + 104))(v4, *MEMORY[0x277D00760], v11);
  sub_24619F6DC();

  (*(v5 + 8))(v4, v11);
  sub_24619F2BC();
  sub_24619F29C();
  (*(v1 + 16))(v13, v14, v12);
  sub_24619F40C();
  (*(v3 + 8))(v2, v10);
  (*(v1 + 8))(v14, v12);

  v8 = v0[1];

  return v8();
}

uint64_t sub_246161488()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_246161518;

  return sub_24616160C();
}

uint64_t sub_246161518()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24616160C()
{
  v1[2] = v0;
  v2 = sub_24619F7FC();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2461616CC, 0, 0);
}

uint64_t sub_2461616CC()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 24), *(*(v0 + 16) + 48));
  *(v0 + 96) = *MEMORY[0x277D00770];
  v4 = *(v2 + 104);
  *(v0 + 48) = v4;
  *(v0 + 56) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v4(v1);
  sub_24619F6DC();
  v5 = *(v2 + 8);
  *(v0 + 64) = v5;
  *(v0 + 72) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_246161814;

  return sub_246160084();
}

uint64_t sub_246161814()
{

  return MEMORY[0x2822009F8](sub_246161910, 0, 0);
}

uint64_t sub_246161910()
{
  v7 = *(v0 + 64);
  v1 = *(v0 + 48);
  v2 = *(v0 + 96);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 24), *(*(v0 + 16) + 48));
  v1(v3, v2, v4);
  sub_24619F6DC();
  v7(v3, v4);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_246161A38;

  return sub_246162834();
}

uint64_t sub_246161A38()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_246161B48()
{
  v1[7] = v0;
  v2 = sub_24619F28C();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v3 = sub_24619F1AC();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v4 = sub_24619F46C();
  v1[17] = v4;
  v1[18] = *(v4 - 8);
  v1[19] = swift_task_alloc();
  v5 = sub_24619F22C();
  v1[20] = v5;
  v1[21] = *(v5 - 8);
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246161D40, 0, 0);
}

uint64_t sub_246161D40()
{
  (*(v0[18] + 104))(v0[19], *MEMORY[0x277D006B8], v0[17]);
  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_246161E04;
  v2 = v0[22];
  v3 = v0[19];

  return sub_2461970D8(v2, v3);
}

uint64_t sub_246161E04(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  *(*v1 + 192) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_246161F64, 0, 0);
}

uint64_t sub_246161F64()
{
  v1 = v0[24];
  v2 = (*(v0[21] + 8))(v0[22], v0[20]);
  v5 = MEMORY[0x277D84F90];
  v42 = *(v1 + 16);
  if (v42)
  {
    v6 = 0;
    v7 = v0[13];
    v8 = v0[9];
    v40 = *MEMORY[0x277D00650];
    v38 = (v8 + 8);
    v39 = (v8 + 104);
    v37 = (v7 + 8);
    v41 = v7;
    v43 = (v7 + 32);
    while (1)
    {
      if (v6 >= *(v1 + 16))
      {
        __break(1u);
        return MEMORY[0x2822009F8](v2, v3, v4);
      }

      v9 = v0[10];
      v10 = v0[8];
      v46 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v44 = *(v41 + 72);
      (*(v41 + 16))(v0[16], v0[24] + v46 + v44 * v6, v0[12]);
      sub_24619F18C();
      (*v39)(v9, v40, v10);
      sub_246164E30(&qword_281391F80, MEMORY[0x277D00680], MEMORY[0x277D00688]);
      sub_24619F97C();
      sub_24619F97C();
      v12 = v0[10];
      v11 = v0[11];
      v13 = v0[8];
      if (v0[2] == v0[4] && v0[3] == v0[5])
      {
        break;
      }

      v15 = sub_24619FBFC();
      v16 = *v38;
      (*v38)(v12, v13);
      v16(v11, v13);

      if (v15)
      {
        goto LABEL_10;
      }

      v2 = (*v37)(v0[16], v0[12]);
LABEL_4:
      if (v42 == ++v6)
      {
        goto LABEL_15;
      }
    }

    v14 = *v38;
    (*v38)(v0[10], v0[8]);
    v14(v11, v13);

LABEL_10:
    v17 = *v43;
    (*v43)(v0[15], v0[16], v0[12]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2461674A0(0, *(v5 + 16) + 1, 1);
    }

    v19 = *(v5 + 16);
    v18 = *(v5 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_2461674A0((v18 > 1), v19 + 1, 1);
    }

    v20 = v0[15];
    v21 = v0[12];
    *(v5 + 16) = v19 + 1;
    v2 = v17(v5 + v46 + v19 * v44, v20, v21);
    goto LABEL_4;
  }

LABEL_15:

  v22 = *(v5 + 16);
  if (v22)
  {
    v23 = v0[13];
    v48 = MEMORY[0x277D84F90];
    sub_246167480(0, v22, 0);
    v24 = v48;
    v25 = *(v23 + 16);
    v23 += 16;
    v26 = v5 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v45 = *(v23 + 56);
    v47 = v25;
    v27 = (v23 - 8);
    do
    {
      v28 = v0[14];
      v29 = v0[12];
      v47(v28, v26, v29);
      sub_24619F17C();
      v30 = sub_24619F88C();

      (*v27)(v28, v29);
      v32 = *(v48 + 16);
      v31 = *(v48 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_246167480((v31 > 1), v32 + 1, 1);
      }

      *(v48 + 16) = v32 + 1;
      *(v48 + 8 * v32 + 32) = v30;
      v26 += v45;
      --v22;
    }

    while (v22);
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  v33 = sub_24616C8E8(v24);

  v34 = *(v33 + 16);

  if (v34)
  {
    v3 = *(v0[7] + 72);
    v0[25] = v3;
    v2 = sub_2461624B4;
    v4 = 0;

    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  else
  {

    v35 = v0[1];

    return v35();
  }
}

uint64_t sub_2461624B4()
{
  v1 = v0[25];
  if (*(v1 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller__locationHelper))
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = sub_246164E30(&qword_281391CA0, type metadata accessor for ODIBindingsFiller, &unk_2461A0CE8);
    v5 = swift_task_alloc();
    v0[26] = v5;
    v6 = sub_24619F48C();
    *v5 = v0;
    v5[1] = sub_24616266C;
    v7 = v0[25];

    return MEMORY[0x2822007B8](v0 + 6, v1, v4, 0xD000000000000010, 0x80000002461A23D0, sub_24616D060, v7, v6);
  }
}

uint64_t sub_24616266C()
{
  v1 = *(*v0 + 200);

  return MEMORY[0x2822009F8](sub_24616277C, v1, 0);
}

uint64_t sub_24616277C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_246162834()
{
  v1[5] = v0;
  v2 = sub_24619F7FC();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_24619F1EC();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246162950, 0, 0);
}

uint64_t sub_246162950()
{
  v0[12] = *(v0[5] + 72);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_2461629EC;

  return sub_24615F754();
}

uint64_t sub_2461629EC(uint64_t a1)
{
  v2 = *(*v1 + 96);
  *(*v1 + 112) = a1;

  return MEMORY[0x2822009F8](sub_246162B04, v2, 0);
}

uint64_t sub_246162B04()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_currentBindings;
  swift_beginAccess();
  (*(v5 + 16))(v2, v3 + v6, v4);
  v7 = sub_24619F1DC();
  (*(v5 + 8))(v2, v4);
  v8 = sub_24615D140(v7);
  v9 = sub_24615D3A0(v1);

  LOBYTE(v1) = sub_24616C9A4(v9, v8);

  if (v1)
  {
    v10 = sub_246162C3C;
  }

  else
  {
    v10 = sub_2461630DC;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_246162C3C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1((v0[5] + 24), *(v0[5] + 48));
  v4 = *MEMORY[0x277D00770];
  v5 = *(v2 + 104);
  v0[15] = v5;
  v0[16] = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v5(v1, v4, v3);
  sub_24619F6DC();
  v6 = *(v2 + 8);
  v0[17] = v6;
  v0[18] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v3);
  v7 = swift_task_alloc();
  v0[19] = v7;
  *v7 = v0;
  v7[1] = sub_246162D80;

  return sub_246160084();
}

uint64_t sub_246162D80()
{

  return MEMORY[0x2822009F8](sub_246162E7C, 0, 0);
}

uint64_t sub_246162E7C()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[8];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1((v0[5] + 24), *(v0[5] + 48));
  v2(v3, *MEMORY[0x277D00798], v4);
  sub_24619F6CC();
  v1(v3, v4);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_246162FA8;

  return sub_2461639F0(0);
}

uint64_t sub_246162FA8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2461630DC()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1((v0[5] + 24), *(v0[5] + 48));
  (*(v2 + 104))(v1, *MEMORY[0x277D00770], v3);
  sub_24619F6DC();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_246163208;

  return sub_246160084();
}

uint64_t sub_246163208()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_246163338(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = swift_task_alloc();
  v2[26] = v3;
  *v3 = v2;
  v3[1] = sub_2461633C8;

  return sub_24615EC60();
}

uint64_t sub_2461633C8(uint64_t a1)
{
  *(*v1 + 216) = a1;

  return MEMORY[0x2822009F8](sub_2461634C8, 0, 0);
}

uint64_t sub_2461634C8()
{
  v1 = *(v0 + 192);
  v2 = *(v1 + 32);
  *(v0 + 264) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);

  if (v5)
  {
    v7 = 0;
LABEL_8:
    v10 = __clz(__rbit64(v5));
    v11 = (v5 - 1) & v5;
    v12 = v10 | (v7 << 6);
    v13 = *(*(v6 + 48) + 8 * v12);
    sub_24616CB20(*(v6 + 56) + 40 * v12, v0 + 112);
    *(v0 + 64) = v13;
    sub_246158944((v0 + 112), v0 + 72);
    v14 = v13;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = ((63 - v4) >> 6) - 1;
    while (v9 != v8)
    {
      v7 = v8 + 1;
      v5 = *(v6 + 72 + 8 * v8++);
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v11 = 0;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 64) = 0u;
  }

  *(v0 + 224) = v11;
  *(v0 + 232) = v9;
  v15 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v15;
  *(v0 + 48) = *(v0 + 96);
  v16 = *(v0 + 16);
  *(v0 + 240) = v16;
  if (v16)
  {
    v17 = *(v0 + 200);
    sub_246158944((v0 + 24), v0 + 152);
    v18 = *(v17 + 72);
    *(v0 + 248) = v18;

    return MEMORY[0x2822009F8](sub_2461636A8, v18, 0);
  }

  else
  {

    v19 = swift_task_alloc();
    *(v0 + 256) = v19;
    *v19 = v0;
    v19[1] = sub_2461638FC;

    return sub_246162834();
  }
}

uint64_t sub_2461636A8()
{
  sub_24615B89C(v0 + 152, *(v0 + 240), *(v0 + 216));

  return MEMORY[0x2822009F8](sub_246163718, 0, 0);
}

uint64_t sub_246163718()
{
  v1 = __swift_destroy_boxed_opaque_existential_1((v0 + 152));
  v4 = *(v0 + 224);
  v5 = *(v0 + 232);
  if (!v4)
  {
    v7 = ((1 << *(v0 + 264)) + 63) >> 6;
    if (v7 <= (v5 + 1))
    {
      v8 = v5 + 1;
    }

    else
    {
      v8 = ((1 << *(v0 + 264)) + 63) >> 6;
    }

    v9 = v8 - 1;
    while (1)
    {
      v10 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        v11 = 0;
        *(v0 + 80) = 0u;
        *(v0 + 96) = 0u;
        *(v0 + 64) = 0u;
        goto LABEL_12;
      }

      v6 = *(v0 + 192);
      v4 = *(v6 + 8 * v10 + 64);
      ++v5;
      if (v4)
      {
        v5 = v10;
        goto LABEL_11;
      }
    }

    __break(1u);
    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  v6 = *(v0 + 192);
LABEL_11:
  v11 = (v4 - 1) & v4;
  v12 = __clz(__rbit64(v4)) | (v5 << 6);
  v13 = *(*(v6 + 48) + 8 * v12);
  sub_24616CB20(*(v6 + 56) + 40 * v12, v0 + 112);
  *(v0 + 64) = v13;
  sub_246158944((v0 + 112), v0 + 72);
  v14 = v13;
  v9 = v5;
LABEL_12:
  *(v0 + 224) = v11;
  *(v0 + 232) = v9;
  v15 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v15;
  *(v0 + 48) = *(v0 + 96);
  v16 = *(v0 + 16);
  *(v0 + 240) = v16;
  if (v16)
  {
    v17 = *(v0 + 200);
    sub_246158944((v0 + 24), v0 + 152);
    v2 = *(v17 + 72);
    *(v0 + 248) = v2;
    v1 = sub_2461636A8;
    v3 = 0;

    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  v18 = swift_task_alloc();
  *(v0 + 256) = v18;
  *v18 = v0;
  v18[1] = sub_2461638FC;

  return sub_246162834();
}

uint64_t sub_2461638FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2461639F0(char a1)
{
  *(v2 + 88) = v1;
  *(v2 + 81) = a1;
  v3 = sub_24619F1EC();
  *(v2 + 96) = v3;
  *(v2 + 104) = *(v3 - 8);
  *(v2 + 112) = swift_task_alloc();
  v4 = sub_24619FB5C();
  *(v2 + 120) = v4;
  *(v2 + 128) = *(v4 - 8);
  *(v2 + 136) = swift_task_alloc();
  v5 = sub_24619FB4C();
  *(v2 + 144) = v5;
  *(v2 + 152) = *(v5 - 8);
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246163B78, 0, 0);
}

uint64_t sub_246163B78()
{
  if (*(v0 + 81))
  {
    *(v0 + 216) = 0;
    *(v0 + 224) = *(*(v0 + 88) + 80);
    sub_24619F27C();
    sub_246164E30(&qword_281391F88, MEMORY[0x277D00630], MEMORY[0x277D00638]);
    v1 = sub_24619F99C();
    v3 = v2;
    v4 = sub_2461640A8;
    v5 = v1;
    v6 = v3;
  }

  else
  {
    v5 = *(*(v0 + 88) + 72);
    *(v0 + 176) = v5;
    v4 = sub_246163C68;
    v6 = 0;
  }

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_246163C68()
{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v5 = OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_coalescingReferenceDate;
  swift_beginAccess();
  (*(v3 + 16))(v2, v1 + v5, v4);

  return MEMORY[0x2822009F8](sub_246163D1C, 0, 0);
}

uint64_t sub_246163D1C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  sub_24619FB2C();
  v4 = *(v3 + 8);
  *(v0 + 184) = v4;
  *(v0 + 192) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  *(v0 + 72) = 0;
  *(v0 + 64) = 0;
  *(v0 + 80) = 1;
  sub_24619FC2C();
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  v6 = sub_246164E30(&qword_281391828, MEMORY[0x277D85960], MEMORY[0x277D85968]);
  *v5 = v0;
  v5[1] = sub_246163E64;
  v7 = *(v0 + 168);
  v8 = *(v0 + 136);
  v9 = *(v0 + 120);

  return MEMORY[0x282200488](v7, v0 + 64, v8, v9, v6);
}

uint64_t sub_246163E64()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = v2[23];
  if (v0)
  {
    v4 = v2[21];
    v5 = v2[18];
    (*(v2[16] + 8))(v2[17], v2[15]);
    v3(v4, v5);
    v6 = sub_24616455C;
  }

  else
  {
    v7 = v2[21];
    v8 = v2[18];
    (*(v2[16] + 8))(v2[17], v2[15]);
    v3(v7, v8);
    v6 = sub_246163FE0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_246163FE0()
{
  v0[27] = v0[26];
  v0[28] = *(v0[11] + 80);
  sub_24619F27C();
  sub_246164E30(&qword_281391F88, MEMORY[0x277D00630], MEMORY[0x277D00638]);
  v2 = sub_24619F99C();

  return MEMORY[0x2822009F8](sub_2461640A8, v2, v1);
}

uint64_t sub_2461640A8()
{
  *(v0 + 82) = sub_24619F26C() & 1;

  return MEMORY[0x2822009F8](sub_246164118, 0, 0);
}

uint64_t sub_246164118()
{
  if (*(v0 + 82) == 1)
  {
    v1 = *(v0 + 88);
    *(v0 + 232) = *(v1 + 64);
    v2 = *(v1 + 72);
    *(v0 + 240) = v2;

    return MEMORY[0x2822009F8](sub_2461641FC, v2, 0);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_2461641FC()
{
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v6 = OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_currentBindings;
  swift_beginAccess();
  (*(v4 + 16))(v3, v2 + v6, v5);

  return MEMORY[0x2822009F8](sub_2461642B0, v1, 0);
}

uint64_t sub_2461642B0()
{
  v1 = *(v0 + 216);
  *(v0 + 83) = sub_24615E1BC(*(v0 + 112)) & 1;
  *(v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_2461645E8;
  }

  else
  {
    v2 = sub_246164348;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_246164348()
{
  if (*(v0 + 83) == 1 && (Strong = swift_unknownObjectWeakLoadStrong(), (*(v0 + 256) = Strong) != 0))
  {

    return MEMORY[0x2822009F8](sub_246164448, Strong, 0);
  }

  else
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_246164448()
{
  sub_246183BD4();
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_2461644B8, 0, 0);
}

uint64_t sub_2461644B8()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24616455C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2461645E8()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2461646AC()
{
  v1 = *(*(v0 + 16) + 64);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2461646D0, v1, 0);
}

uint64_t sub_2461646D0()
{
  *(v0 + 40) = sub_24615E934() & 1;

  return MEMORY[0x2822009F8](sub_246164740, 0, 0);
}

uint64_t sub_246164740()
{
  if (*(v0 + 40) == 1 && (Strong = swift_unknownObjectWeakLoadStrong(), (*(v0 + 32) = Strong) != 0))
  {

    return MEMORY[0x2822009F8](sub_2461647F0, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_2461647F0()
{
  sub_246183BD4();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_246164858()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  sub_24616CAF8(v0 + 96);

  return v0;
}

uint64_t sub_2461648C0()
{
  sub_246164858();

  return swift_deallocClassInstance();
}

uint64_t sub_246164940(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_246164978(uint64_t a1)
{
  result = sub_24619F1EC();
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

void sub_246164A78(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_246164AC4(uint64_t a1, id *a2)
{
  result = sub_24619F89C();
  *a2 = 0;
  return result;
}

uint64_t sub_246164B3C(uint64_t a1, id *a2)
{
  v3 = sub_24619F8AC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_246164BBC@<X0>(uint64_t *a2@<X8>)
{
  sub_24619F8BC();
  v3 = sub_24619F88C();

  *a2 = v3;
  return result;
}

uint64_t sub_246164C00(void *a1, uint64_t *a2)
{
  v2 = sub_24619F8BC();
  v4 = v3;
  if (v2 == sub_24619F8BC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_24619FBFC();
  }

  return v7 & 1;
}

uint64_t sub_246164C9C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_24619F88C();

  *a2 = v3;
  return result;
}

uint64_t sub_246164CE4(uint64_t a1)
{
  v2 = sub_246164E30(&qword_27EE3F838, type metadata accessor for ODIServiceProviderId, &unk_2461A0A14);
  v3 = sub_246164E30(&qword_27EE3F840, type metadata accessor for ODIServiceProviderId, &unk_2461A09B4);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_246164E30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_246164EC0(uint64_t a1)
{
  v2 = sub_246164E30(&qword_281391860, type metadata accessor for ODIAttributeKey, &unk_2461A0D10);
  v3 = sub_246164E30(&qword_27EE3F830, type metadata accessor for ODIAttributeKey, &unk_2461A0B0C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_246164F7C()
{
  v0 = sub_24619F8BC();
  v1 = MEMORY[0x24C19A890](v0);

  return v1;
}

uint64_t sub_246164FB8(uint64_t a1)
{
  sub_24619F8BC();
  sub_24619F8FC();
}

uint64_t sub_24616500C(uint64_t a1)
{
  sub_24619F8BC();
  sub_24619FC8C();
  sub_24619F8FC();
  v1 = sub_24619FCAC();

  return v1;
}

uint64_t sub_246165158(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_246165240;

  return v4();
}

uint64_t sub_246165240()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_246165338(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F880, &qword_2461A0DB8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F878, &qword_2461A0DA0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F878, &qword_2461A0DA0) - 8);
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

void *sub_246165528(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F818, &qword_2461A0D68);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F820, &qword_2461A0D70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24616565C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F888, &unk_2461A0DD0);
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
    v10 = MEMORY[0x277D84F90];
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
    type metadata accessor for ODIServiceProviderId(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_246165784(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F850, &unk_2461A18B0);
  v10 = *(sub_24619F06C() - 8);
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
  v15 = *(sub_24619F06C() - 8);
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

unint64_t sub_24616595C(uint64_t a1, uint64_t a2)
{
  sub_24619FC8C();
  sub_24619F8FC();
  v4 = sub_24619FCAC();

  return sub_246165D24(a1, a2, v4);
}

unint64_t sub_2461659D4(uint64_t a1)
{
  sub_24619FC8C();
  sub_24619F46C();
  sub_246164E30(&qword_27EE3F860, MEMORY[0x277D006C0], MEMORY[0x277D006C8]);
  sub_24619F86C();
  type metadata accessor for ODIFieldsKey(0);
  sub_24619F22C();
  sub_246164E30(&qword_281391F90, MEMORY[0x277D00618], MEMORY[0x277D00620]);
  sub_24619F86C();
  v2 = sub_24619FCAC();

  return sub_246165DDC(a1, v2);
}

unint64_t sub_246165AE8(uint64_t a1)
{
  sub_24619F46C();
  v2 = MEMORY[0x277D006C0];
  sub_246164E30(&qword_27EE3F860, MEMORY[0x277D006C0], MEMORY[0x277D006C8]);
  v3 = sub_24619F85C();
  return sub_246165F44(a1, v3, MEMORY[0x277D006C0], &qword_27EE3F868, v2, MEMORY[0x277D006D0]);
}

unint64_t sub_246165BBC(uint64_t a1)
{
  sub_24619F1AC();
  v2 = MEMORY[0x277D005E0];
  sub_246164E30(&qword_281391FA8, MEMORY[0x277D005E0], MEMORY[0x277D005E8]);
  v3 = sub_24619F85C();
  return sub_246165F44(a1, v3, MEMORY[0x277D005E0], &qword_281391FA0, v2, MEMORY[0x277D005F0]);
}

unint64_t sub_246165C90(uint64_t a1)
{
  sub_24619F8BC();
  sub_24619FC8C();
  sub_24619F8FC();
  v2 = sub_24619FCAC();

  return sub_2461660E4(a1, v2);
}

unint64_t sub_246165D24(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24619FBFC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_246165DDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ODIFieldsKey(0);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *(v5 + 72);
    do
    {
      sub_24616AE74(*(v2 + 48) + v11 * v9, v7);
      if (sub_24619F45C())
      {
        v12 = sub_24619F21C();
        sub_24616AF3C(v7);
        if (v12)
        {
          return v9;
        }
      }

      else
      {
        sub_24616AF3C(v7);
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_246165F44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_246164E30(v23, v24, v25);
      v19 = sub_24619F87C();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_2461660E4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_24619F8BC();
      v8 = v7;
      if (v6 == sub_24619F8BC() && v8 == v9)
      {
        break;
      }

      v11 = sub_24619FBFC();

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

uint64_t sub_2461661E8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_24619FC8C();
  sub_24619F8FC();
  v8 = sub_24619FCAC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_24619FBFC() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2461669C0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_246166338(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_24619F8BC();
  sub_24619FC8C();
  sub_24619F8FC();
  v7 = sub_24619FCAC();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_24619F8BC();
      v13 = v12;
      if (v11 == sub_24619F8BC() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_24619FBFC();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_246166B40(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_2461664E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8B0, &qword_2461A0E40);
  result = sub_24619FACC();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_24619FC8C();
      sub_24619F8FC();
      result = sub_24619FCAC();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_246166744(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8B8, &qword_2461A0E48);
  result = sub_24619FACC();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_24619F8BC();
      sub_24619FC8C();
      sub_24619F8FC();
      v18 = sub_24619FCAC();

      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2461669C0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2461664E4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_246166D28();
      goto LABEL_16;
    }

    sub_246166FD4(v8 + 1);
  }

  v10 = *v4;
  sub_24619FC8C();
  sub_24619F8FC();
  result = sub_24619FCAC();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_24619FBFC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_24619FC0C();
  __break(1u);
  return result;
}

uint64_t sub_246166B40(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_246166744(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_246166E84();
      goto LABEL_16;
    }

    sub_24616720C(v7 + 1);
  }

  v9 = *v3;
  sub_24619F8BC();
  sub_24619FC8C();
  sub_24619F8FC();
  v10 = sub_24619FCAC();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for ODIAttributeKey(0);
    do
    {
      v13 = sub_24619F8BC();
      v15 = v14;
      if (v13 == sub_24619F8BC() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_24619FBFC();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_24619FC0C();
  __break(1u);
  return result;
}

void *sub_246166D28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8B0, &qword_2461A0E40);
  v2 = *v0;
  v3 = sub_24619FABC();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
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

id sub_246166E84()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8B8, &qword_2461A0E48);
  v2 = *v0;
  v3 = sub_24619FABC();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_246166FD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8B0, &qword_2461A0E40);
  result = sub_24619FACC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_24619FC8C();

      sub_24619F8FC();
      result = sub_24619FCAC();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_24616720C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8B8, &qword_2461A0E48);
  result = sub_24619FACC();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_24619F8BC();
      sub_24619FC8C();
      v18 = v17;
      sub_24619F8FC();
      v19 = sub_24619FCAC();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

char *sub_246167460(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2461674C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_246167480(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2461675CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2461674A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2461676F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2461674C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8A8, &unk_2461A1260);
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

void *sub_2461675CC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8C0, &qword_2461A0E50);
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
    v10 = MEMORY[0x277D84F90];
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
    type metadata accessor for ODIAttributeKey(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2461676F4(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8C8, &qword_2461A0E58);
  v10 = *(sub_24619F1AC() - 8);
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
  v15 = *(sub_24619F1AC() - 8);
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

void (*sub_2461678CC(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_246167C74(v7);
  v7[9] = sub_2461679D8(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_246167978;
}

void sub_246167978(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_2461679D8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_24616595C(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_246169AFC();
      v13 = v21;
      goto LABEL_11;
    }

    sub_246167CA8(v18, a4 & 1);
    v13 = sub_24616595C(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_24619FC1C();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_246167B30;
}

void sub_246167B30(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 40);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    v6 = *v2[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v8 = v2[1];
    v7 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v6[6] + 16 * v5);
    *v9 = v8;
    v9[1] = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v6[2] = v4;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[4];
      v13 = *v2[3];
      sub_24616A920(*(v13 + 48) + 16 * v12);
      sub_24616941C(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[4];
  v6 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v15 = v2[1];
    v14 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v16 = (v6[6] + 16 * v5);
    *v16 = v15;
    v16[1] = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

uint64_t (*sub_246167C74(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_246167C9C;
}

uint64_t sub_246167CA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F828, &qword_2461A0D78);
  v34 = v4;
  result = sub_24619FB8C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_24619FC8C();
      sub_24619F8FC();
      result = sub_24619FCAC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_246167F50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ODIFieldsKey(0);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F890, &qword_2461A1380);
  v39 = v4;
  result = sub_24619FB8C();
  v10 = v8;
  v11 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
    v36 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v37 + 72);
      v25 = *(v10 + 48) + v24 * v23;
      if (v39)
      {
        sub_24616AED8(v25, v7);
        v40 = *(*(v10 + 56) + 8 * v23);
      }

      else
      {
        sub_24616AE74(v25, v7);
        v40 = *(*(v10 + 56) + 8 * v23);
      }

      sub_24619FC8C();
      sub_24619F46C();
      sub_246164E30(&qword_27EE3F860, MEMORY[0x277D006C0], MEMORY[0x277D006C8]);
      sub_24619F86C();
      sub_24619F22C();
      sub_246164E30(&qword_281391F90, MEMORY[0x277D00618], MEMORY[0x277D00620]);
      sub_24619F86C();
      result = sub_24619FCAC();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v10 = v36;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v10 = v36;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_24616AED8(v7, *(v11 + 48) + v24 * v19);
      *(*(v11 + 56) + 8 * v19) = v40;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v10 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_246168340(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_24619F46C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F858, &unk_2461A0D90);
  v40 = v4;
  result = sub_24619FB8C();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + v24);
      sub_246164E30(&qword_27EE3F860, MEMORY[0x277D006C0], MEMORY[0x277D006C8]);
      result = sub_24619F85C();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_246168700(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_24619F46C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F898, &qword_2461A0DE0);
  v39 = v4;
  result = sub_24619FB8C();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_246164E30(&qword_27EE3F860, MEMORY[0x277D006C0], MEMORY[0x277D006C8]);
      result = sub_24619F85C();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_246168ADC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_24619F1AC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F848, &unk_2461A0D80);
  v40 = v4;
  result = sub_24619FB8C();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + v24);
      sub_246164E30(&qword_281391FA8, MEMORY[0x277D005E0], MEMORY[0x277D005E8]);
      result = sub_24619F85C();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_246168E9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8E8, &qword_2461A0ED8);
  v35 = v4;
  result = sub_24619FB8C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
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
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 40 * v19);
      if (v35)
      {
        sub_246158944(v22, v36);
      }

      else
      {
        sub_24616CB20(v22, v36);
        v23 = v21;
      }

      sub_24619F8BC();
      sub_24619FC8C();
      sub_24619F8FC();
      v24 = sub_24619FCAC();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_246158944(v36, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_246169178(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8A0, &qword_2461A0DE8);
  v35 = v4;
  result = sub_24619FB8C();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_24619FC8C();
      sub_24619F8FC();
      result = sub_24619FCAC();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24616941C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24619FA9C() + 1) & ~v5;
    do
    {
      sub_24619FC8C();

      sub_24619F8FC();
      v9 = sub_24619FCAC();

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
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
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

unint64_t sub_2461695CC(int64_t a1, uint64_t a2)
{
  v40 = sub_24619F46C();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_24619FA9C();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_246164E30(&qword_27EE3F860, MEMORY[0x277D006C0], MEMORY[0x277D006C8]);
      v23 = sub_24619F85C();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_2461698EC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for ODIFieldsKey(0);
  result = sub_24616AED8(a2, v8 + *(*(v9 - 8) + 72) * a1);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_24616998C(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24619F46C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_246169A44(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24619F46C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_246169AFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F828, &qword_2461A0D78);
  v2 = *v0;
  v3 = sub_24619FB7C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_246169C6C()
{
  v1 = v0;
  v2 = type metadata accessor for ODIFieldsKey(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F890, &qword_2461A1380);
  v5 = *v0;
  v6 = sub_24619FB7C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_24616AE74(*(v5 + 48) + v21, v4);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_24616AED8(v4, *(v7 + 48) + v21);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_246169E84()
{
  v1 = v0;
  v33 = sub_24619F46C();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F898, &qword_2461A0DE0);
  v3 = *v0;
  v4 = sub_24619FB7C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_24616A12C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v36 = a1(0);
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *v3;
  v9 = sub_24619FB7C();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v6;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    v20 = v10;
    if (v18)
    {
      do
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v24 = v21 | (v14 << 6);
        v25 = v38;
        v26 = *(v38 + 72) * v24;
        v28 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v26, v36);
        v29 = *(*(v8 + 56) + v24);
        result = (*(v25 + 32))(*(v20 + 48) + v26, v28, v27);
        *(*(v20 + 56) + v24) = v29;
        v18 = v39;
      }

      while (v39);
    }

    v22 = v14;
    while (1)
    {
      v14 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v6 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v23 = *(v32 + v14);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v39 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }

  return result;
}

id sub_24616A3A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8E8, &qword_2461A0ED8);
  v2 = *v0;
  v3 = sub_24619FB7C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_24616CB20(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_246158944(v19, *(v4 + 56) + 40 * v17);
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_24616A524()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8A0, &qword_2461A0DE8);
  v2 = *v0;
  v3 = sub_24619FB7C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_24616A690(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24616595C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_246167CA8(v16, a4 & 1);
      v11 = sub_24616595C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_24619FC1C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_246169AFC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_24616A80C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24616D024;

  return sub_24615DB90(a1, a2, v6);
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

uint64_t sub_24616A974(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ODIFieldsKey(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_2461659D4(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_246169C6C();
      goto LABEL_7;
    }

    sub_246167F50(v16, a3 & 1);
    v21 = sub_2461659D4(a2);
    if ((v17 & 1) == (v22 & 1))
    {
      v13 = v21;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_24616AE74(a2, v10);
      return sub_2461698EC(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_24619FC1C();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;
}

uint64_t sub_24616AB04(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24619F46C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_246165AE8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + v14) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_24616A12C(MEMORY[0x277D006C0], &qword_27EE3F858, &unk_2461A0D90);
    goto LABEL_7;
  }

  sub_246168340(result, a3 & 1);
  result = sub_246165AE8(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_24619FC1C();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_24616998C(v14, v11, a1 & 1, v20);
}

uint64_t sub_24616ACC8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F878, &qword_2461A0DA0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24616D024;

  return sub_24615B26C(a1, v6, v7, v8, v1 + v5);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_24616AE74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ODIFieldsKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24616AED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ODIFieldsKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24616AF3C(uint64_t a1)
{
  v2 = type metadata accessor for ODIFieldsKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24616AF98(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24619F46C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_246165AE8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_246169E84();
      goto LABEL_7;
    }

    sub_246168700(v17, a3 & 1);
    v22 = sub_246165AE8(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_246169A44(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_24619FC1C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_24616B164(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24616595C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_246169178(v16, a4 & 1);
      v11 = sub_24616595C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_24619FC1C();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_24616A524();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_24616B2DC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24616D024;

  return sub_246160944(a1, v1);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_24616B3CC(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v53 = 0;
  v7 = a1 + 64;
  v6 = *(a1 + 64);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_24619FC8C();

    sub_24619F8FC();
    v23 = sub_24619FCAC();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_24619FBFC() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x28223BE20](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_24616C480(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_24619FC8C();

            sub_24619F8FC();
            v41 = sub_24619FCAC();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_24619FBFC() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_24616BFBC(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x24C19B270](v50, -1, -1);
    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_24616CAF0(v13);
    return v5;
  }

  result = MEMORY[0x24C19B270](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_24616B93C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v77 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v60 = 0;
  v5 = a1 + 64;
  v4 = *(a1 + 64);
  v6 = -1;
  v7 = -1 << *(a1 + 32);
  v69 = ~v7;
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v4;
  v10 = (63 - v7) >> 6;
  v71 = (a2 + 56);

  v13 = 0;
  v65 = v10;
  v67 = v11;
  v66 = v5;
  if (v9)
  {
LABEL_11:
    while (1)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = *(*(v11 + 48) + ((v13 << 9) | (8 * v16)));
      v72 = v11;
      v73 = v5;
      v74 = v69;
      v75 = v13;
      v70 = v13;
      v76 = v9;
      sub_24619F8BC();
      sub_24619FC8C();
      v68 = v17;
      sub_24619F8FC();
      v18 = sub_24619FCAC();

      v19 = -1 << *(v3 + 32);
      v5 = v18 & ~v19;
      v2 = v5 >> 6;
      v6 = 1 << v5;
      if (((1 << v5) & v71[v5 >> 6]) != 0)
      {
        break;
      }

LABEL_19:

      v11 = v67;
      v5 = v66;
      v10 = v65;
      v13 = v70;
      v6 = -1;
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    v20 = ~v19;
    while (1)
    {
      v21 = sub_24619F8BC();
      v23 = v22;
      if (v21 == sub_24619F8BC() && v23 == v24)
      {

        goto LABEL_25;
      }

      v26 = sub_24619FBFC();

      if (v26)
      {
        break;
      }

      v5 = (v5 + 1) & v20;
      v2 = v5 >> 6;
      v6 = 1 << v5;
      if (((1 << v5) & v71[v5 >> 6]) == 0)
      {
        goto LABEL_19;
      }
    }

LABEL_25:
    v28 = *(v3 + 32);
    v61 = ((1 << v28) + 63) >> 6;
    v12 = 8 * v61;
    if ((v28 & 0x3Fu) <= 0xD)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_6:
    v14 = v13;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v10)
      {
        goto LABEL_55;
      }

      v9 = *(v5 + 8 * v15);
      ++v14;
      if (v9)
      {
        v13 = v15;
        goto LABEL_11;
      }
    }

LABEL_58:
    __break(1u);
  }

  v54 = v12;

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_26:
    v62 = &v59;
    MEMORY[0x28223BE20](v27);
    v5 = &v59 - ((v29 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v5, v71, v29);
    v30 = *(v5 + 8 * v2) & ~v6;
    v31 = *(v3 + 16);
    v64 = v5;
    *(v5 + 8 * v2) = v30;
    v32 = v31 - 1;
    v33 = v67;
    v34 = v66;
    v35 = v65;
    v36 = v70;
LABEL_27:
    v63 = v32;
    while (v9)
    {
LABEL_35:
      v39 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v40 = *(*(v33 + 48) + ((v36 << 9) | (8 * v39)));
      v72 = v33;
      v73 = v34;
      v74 = v69;
      v75 = v36;
      v70 = v36;
      v76 = v9;
      sub_24619F8BC();
      sub_24619FC8C();
      v68 = v40;
      sub_24619F8FC();
      v5 = sub_24619FCAC();

      v41 = -1 << *(v3 + 32);
      v42 = v5 & ~v41;
      v6 = v42 >> 6;
      v2 = 1 << v42;
      if (((1 << v42) & v71[v42 >> 6]) != 0)
      {
        v43 = ~v41;
        while (1)
        {
          v44 = sub_24619F8BC();
          v46 = v45;
          v47 = sub_24619F8BC();
          v5 = v48;
          if (v44 == v47 && v46 == v48)
          {

            goto LABEL_46;
          }

          v50 = sub_24619FBFC();

          if (v50)
          {
            break;
          }

          v42 = (v42 + 1) & v43;
          v6 = v42 >> 6;
          v2 = 1 << v42;
          if (((1 << v42) & v71[v42 >> 6]) == 0)
          {
            goto LABEL_28;
          }
        }

LABEL_46:
        v51 = v64[v6];
        v64[v6] = v51 & ~v2;
        v33 = v67;
        v34 = v66;
        v35 = v65;
        v36 = v70;
        if ((v51 & v2) != 0)
        {
          v32 = v63 - 1;
          if (__OFSUB__(v63, 1))
          {
            __break(1u);
          }

          if (v63 == 1)
          {

            v3 = MEMORY[0x277D84FA0];
            goto LABEL_54;
          }

          goto LABEL_27;
        }
      }

      else
      {
LABEL_28:

        v33 = v67;
        v34 = v66;
        v35 = v65;
        v36 = v70;
      }
    }

    v37 = v36;
    while (1)
    {
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
        goto LABEL_58;
      }

      if (v38 >= v35)
      {
        break;
      }

      v9 = *(v34 + 8 * v38);
      ++v37;
      if (v9)
      {
        v36 = v38;
        goto LABEL_35;
      }
    }

    if (v35 <= v36 + 1)
    {
      v52 = v36 + 1;
    }

    else
    {
      v52 = v35;
    }

    v72 = v33;
    v73 = v34;
    v74 = v69;
    v75 = v52 - 1;
    v76 = 0;
    v3 = sub_24616C6A4(v64, v61, v63, v3);
LABEL_54:
    v11 = v72;
LABEL_55:
    sub_24616CAF0(v11);
    return v3;
  }

  v55 = swift_slowAlloc();
  memcpy(v55, v71, v54);
  v56 = v60;
  sub_24616C1F4(v55, v61, v3, v5, &v72);
  v58 = v57;

  if (!v56)
  {

    MEMORY[0x24C19B270](v55, -1, -1);
    v3 = v58;
    goto LABEL_54;
  }

  result = MEMORY[0x24C19B270](v55, -1, -1);
  __break(1u);
  return result;
}

unint64_t *sub_24616BFBC(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_24616C480(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_24619FC8C();

        sub_24619F8FC();
        v19 = sub_24619FCAC();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_24619FBFC() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

void sub_24616C1F4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v33 = a3 + 56;
  v31 = a5;
  while (2)
  {
    v29 = v7;
    do
    {
      while (1)
      {
        v8 = a5[3];
        v9 = a5[4];
        if (!v9)
        {
          v11 = (a5[2] + 64) >> 6;
          v12 = a5[3];
          while (1)
          {
            v10 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v10 >= v11)
            {
              break;
            }

            v9 = *(a5[1] + 8 * v10);
            ++v12;
            if (v9)
            {
              goto LABEL_10;
            }
          }

          if (v11 <= v8 + 1)
          {
            v27 = v8 + 1;
          }

          else
          {
            v27 = (a5[2] + 64) >> 6;
          }

          a5[3] = v27 - 1;
          a5[4] = 0;

          sub_24616C6A4(a1, a2, v29, a3);
          return;
        }

        v10 = a5[3];
LABEL_10:
        v13 = *(*(*a5 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v9)))));
        a5[3] = v10;
        a5[4] = (v9 - 1) & v9;
        sub_24619F8BC();
        sub_24619FC8C();
        v32 = v13;
        sub_24619F8FC();
        v14 = sub_24619FCAC();

        v15 = -1 << *(a3 + 32);
        v16 = v14 & ~v15;
        v17 = v16 >> 6;
        v18 = 1 << v16;
        if (((1 << v16) & *(v33 + 8 * (v16 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        a5 = v31;
      }

      v19 = ~v15;
      while (1)
      {
        v20 = sub_24619F8BC();
        v22 = v21;
        if (v20 == sub_24619F8BC() && v22 == v23)
        {

          goto LABEL_21;
        }

        v25 = sub_24619FBFC();

        if (v25)
        {
          break;
        }

        v16 = (v16 + 1) & v19;
        v17 = v16 >> 6;
        v18 = 1 << v16;
        if (((1 << v16) & *(v33 + 8 * (v16 >> 6))) == 0)
        {
          goto LABEL_3;
        }
      }

LABEL_21:
      a5 = v31;
      v26 = a1[v17];
      a1[v17] = v26 & ~v18;
    }

    while ((v26 & v18) == 0);
    v7 = v29 - 1;
    if (__OFSUB__(v29, 1))
    {
LABEL_30:
      __break(1u);
    }

    else if (v29 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_24616C480(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8B0, &qword_2461A0E40);
  result = sub_24619FADC();
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
    sub_24619FC8C();

    sub_24619F8FC();
    result = sub_24619FCAC();
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24616C6A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8B8, &qword_2461A0E48);
  result = sub_24619FADC();
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
  v28 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v29 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    sub_24619F8BC();
    sub_24619FC8C();
    v17 = v16;
    sub_24619F8FC();
    v18 = sub_24619FCAC();

    v19 = -1 << *(v9 + 32);
    v20 = v18 & ~v19;
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v28;
    v10 = v29;
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
      v29 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24616C8E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for ODIAttributeKey(0);
  v4 = v3;
  v5 = sub_246164E30(&qword_281391860, type metadata accessor for ODIAttributeKey, &unk_2461A0D10);
  result = MEMORY[0x24C19A980](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_246166338(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

BOOL sub_24616C9A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  do
  {
    v7 = *(a2 + 16);
    v8 = v7 != 0;
    if (!v7)
    {
      break;
    }

    v9 = (v5 + 16 * v4);
    v11 = *v9;
    v10 = v9[1];
    sub_24619FC8C();

    sub_24619F8FC();
    v12 = sub_24619FCAC();
    v13 = -1 << *(a2 + 32);
    v14 = v12 & ~v13;
    if (((*(v6 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
LABEL_13:

      return 0;
    }

    ++v4;
    v15 = ~v13;
    while (1)
    {
      v16 = (*(a2 + 48) + 16 * v14);
      v17 = *v16 == v11 && v16[1] == v10;
      if (v17 || (sub_24619FBFC() & 1) != 0)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v6 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }

  while (v4 != v2);
  return v8;
}

uint64_t sub_24616CAE4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_24616CB20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24616CB84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_246161518;

  return sub_24615C528(a1, v4, v5, v6, v7, v8, (v1 + 7));
}

uint64_t sub_24616CC58(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_24616D024;

  return sub_24615C788(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_24616CD20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24616D024;

  return sub_24615CC18(a1, v4);
}

uint64_t sub_24616CDD4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[13];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_24616D024;

  return sub_24615CD0C(v2, v3, v4, v5, (v0 + 6), v6, v7, v8);
}

uint64_t sub_24616CEA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24616CF18()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_246161518;

  return sub_246165158(v2);
}

uint64_t sub_24616CFC4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

Swift::String __swiftcall ODIServiceProviderId.toWorkflowID()()
{
  v4 = sub_24619F8BC();
  v5 = v0;
  MEMORY[0x24C19A830](0x5F762E6C6C75662ELL, 0xED0000312E302E30);
  v1 = v4;
  v2 = v5;
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_24616D0C0(uint64_t a1)
{
  v2 = sub_24619F7FC();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24619EEFC();
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24619EFDC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EE3F7A8 != -1)
  {
    swift_once();
  }

  v12 = qword_27EE3FA68;
  v13 = sub_24616E624(a1);
  if (*(v12 + 16))
  {
    sub_24616595C(v13, v14);
    v16 = v15;

    if (v16)
    {
    }
  }

  else
  {
  }

  v30 = 0;
  v31 = 0xE000000000000000;
  sub_24619FAEC();
  v18 = sub_24619F8BC();
  v20 = v19;

  v30 = v18;
  v31 = v20;
  MEMORY[0x24C19A830](0xD000000000000020, 0x80000002461A28B0);
  (*(v9 + 104))(v11, *MEMORY[0x277D00530], v8);
  v21 = sub_24619F7AC();

  (*(v9 + 8))(v11, v8);
  swift_willThrow();
  sub_24619EEEC();
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_24619FAEC();

  v30 = 0xD000000000000023;
  v31 = 0x80000002461A2930;
  swift_getErrorValue();
  v22 = sub_24619FC3C();
  MEMORY[0x24C19A830](v22);

  v24 = v28;
  v23 = v29;
  (*(v28 + 104))(v4, *MEMORY[0x277D007A0], v29);
  sub_24619EEDC();

  (*(v24 + 8))(v4, v23);

  (*(v26 + 8))(v7, v27);
  return MEMORY[0x277D84F90];
}

uint64_t sub_24616D4E0@<X0>(uint64_t *a1@<X8>)
{
  result = _sSo20ODIServiceProviderIda7CoreODIE8allCasesSayABGvgZ_0();
  *a1 = result;
  return result;
}

uint64_t sub_24616D564(uint64_t a1)
{
  v2 = sub_24619F7FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v124 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24619EEFC();
  v123 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  if (qword_281391BE0 != -1)
  {
    v6 = swift_once();
  }

  v125 = a1;
  MEMORY[0x28223BE20](v6);
  *(&v118 - 2) = &v125;
  if (sub_246189598(sub_24617038C, (&v118 - 4), v7))
  {
    v8 = 0xD000000000000775;
    v9 = "  priority: 2\n  }\n]";
    goto LABEL_16;
  }

  v121 = v2;
  v122 = v5;
  v120 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F888, &unk_2461A0DD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2461A0EF0;
  *(inited + 32) = @"com.apple.bko.application_create";
  *(inited + 40) = @"com.apple.bko.application_submit";
  *(inited + 48) = @"com.apple.bko.id_update";
  v125 = a1;
  MEMORY[0x28223BE20](inited);
  *(&v118 - 2) = &v125;
  v12 = v11;
  v13 = @"com.apple.bko.application_submit";
  v14 = @"com.apple.bko.id_update";
  v15 = sub_246189598(sub_24617038C, (&v118 - 4), inited);
  swift_setDeallocating();
  type metadata accessor for ODIServiceProviderId(0);
  v16 = swift_arrayDestroy();
  if (v15)
  {
    v9 = "Zone,\n    priority: 2\n  }\n]";
    v8 = 0xD000000000000915;
    goto LABEL_16;
  }

  if (qword_281391898 != -1)
  {
    v16 = swift_once();
  }

  v125 = a1;
  MEMORY[0x28223BE20](v16);
  *(&v118 - 2) = &v125;
  v18 = sub_246189598(sub_24617038C, (&v118 - 4), v17);
  if (v18)
  {
    v9 = "1,\n    privileged: true\n  }\n]";
    v8 = 0xD00000000000080ELL;
LABEL_16:
    sub_24619EDCC();
    swift_allocObject();
    sub_24619EDBC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F900, &qword_2461A0F58);
    v21 = sub_24616EDF4(v8, v9 | 0x8000000000000000);
    v23 = v22;
    sub_246170104();
    sub_24619EDAC();
    sub_2461701E0(v21, v23);

    return v125;
  }

  if (qword_2813918B8 != -1)
  {
    v18 = swift_once();
  }

  v125 = a1;
  MEMORY[0x28223BE20](v18);
  *(&v118 - 2) = &v125;
  v20 = sub_246189598(sub_24617038C, (&v118 - 4), v19);
  v9 = "privileged: null\n  }\n]";
  v8 = 0xD0000000000005AFLL;
  if (v20)
  {
    goto LABEL_16;
  }

  if (qword_27EE3F798 != -1)
  {
    v20 = swift_once();
  }

  v125 = a1;
  MEMORY[0x28223BE20](v20);
  *(&v118 - 2) = &v125;
  v26 = sub_246189598(sub_24617038C, (&v118 - 4), v25);
  if (v26)
  {
    goto LABEL_16;
  }

  if (qword_2813918B0 != -1)
  {
    v26 = swift_once();
  }

  v125 = a1;
  MEMORY[0x28223BE20](v26);
  *(&v118 - 2) = &v125;
  if (sub_246189598(sub_24617038C, (&v118 - 4), v27))
  {
    v9 = "s,\n    priority: 2\n  }\n]";
    v8 = 0xD000000000000628;
    goto LABEL_16;
  }

  v28 = sub_24619F8BC();
  v30 = v29;
  v32 = sub_24619F8BC();
  v33 = v28;
  v9 = "eZone,\n    priority: 2\n  }\n]";
  v8 = 0xD0000000000004EBLL;
  if (v33 == v32 && v30 == v31)
  {
    goto LABEL_31;
  }

  LODWORD(v119) = sub_24619FBFC();

  if (v119)
  {
    goto LABEL_16;
  }

  v34 = sub_24619F8BC();
  v36 = v35;
  v38 = sub_24619F8BC();
  v39 = v34;
  v40 = v36;
  v9 = "e,\n    priority: 2\n  }\n]";
  v8 = 0xD00000000000045FLL;
  if (v39 == v38 && v40 == v37)
  {
    goto LABEL_31;
  }

  LODWORD(v119) = sub_24619FBFC();

  if (v119)
  {
    goto LABEL_16;
  }

  v41 = sub_24619F8BC();
  v43 = v42;
  if (v41 == sub_24619F8BC() && v43 == v44)
  {
    goto LABEL_31;
  }

  LODWORD(v119) = sub_24619FBFC();

  if (v119)
  {
    goto LABEL_16;
  }

  v45 = sub_24619F8BC();
  v47 = v46;
  if (v45 == sub_24619F8BC() && v47 == v48)
  {
    goto LABEL_31;
  }

  LODWORD(v119) = sub_24619FBFC();

  if (v119)
  {
    goto LABEL_16;
  }

  v49 = sub_24619F8BC();
  v51 = v50;
  if (v49 == sub_24619F8BC() && v51 == v52)
  {
    goto LABEL_31;
  }

  v53 = sub_24619FBFC();

  if (v53)
  {
    goto LABEL_16;
  }

  v54 = sub_24619F8BC();
  v119 = v55;
  if (v54 == sub_24619F8BC() && v119 == v56)
  {
    goto LABEL_31;
  }

  v57 = sub_24619FBFC();

  if (v57)
  {
    goto LABEL_16;
  }

  v58 = sub_24619F8BC();
  v119 = v59;
  if (v58 == sub_24619F8BC() && v119 == v60)
  {
    goto LABEL_31;
  }

  v61 = sub_24619FBFC();

  if (v61)
  {
    goto LABEL_16;
  }

  v62 = sub_24619F8BC();
  v119 = v63;
  if (v62 == sub_24619F8BC() && v119 == v64)
  {
    goto LABEL_31;
  }

  v65 = sub_24619FBFC();

  if (v65)
  {
    goto LABEL_16;
  }

  v66 = sub_24619F8BC();
  v119 = v67;
  v9 = "   privileged: true\n  }\n]";
  v8 = 0xD00000000000072BLL;
  if (v66 == sub_24619F8BC() && v119 == v68)
  {
    goto LABEL_31;
  }

  v69 = sub_24619FBFC();

  if (v69)
  {
    goto LABEL_16;
  }

  v70 = sub_24619F8BC();
  v119 = v71;
  v9 = "ileged: true\n    }\n]";
  v8 = 0xD0000000000002DBLL;
  if (v70 == sub_24619F8BC() && v119 == v72)
  {
LABEL_31:

    goto LABEL_16;
  }

  v73 = sub_24619FBFC();

  if (v73)
  {
    goto LABEL_16;
  }

  v74 = sub_24619F8BC();
  v119 = v75;
  v9 = ",\n        priority: 2\n    }\n]";
  if (v74 == sub_24619F8BC() && v119 == v76)
  {
LABEL_60:
    v8 = 0xD000000000000635;
    goto LABEL_31;
  }

  v77 = sub_24619FBFC();

  if (v77)
  {
    goto LABEL_89;
  }

  v78 = sub_24619F8BC();
  v119 = v79;
  if (v78 == sub_24619F8BC() && v119 == v80)
  {
    goto LABEL_60;
  }

  v81 = sub_24619FBFC();

  if (v81)
  {
    goto LABEL_89;
  }

  v82 = sub_24619F8BC();
  v119 = v83;
  if (v82 == sub_24619F8BC() && v119 == v84)
  {
    goto LABEL_60;
  }

  v85 = sub_24619FBFC();

  if (v85)
  {
    goto LABEL_89;
  }

  v86 = sub_24619F8BC();
  v119 = v87;
  if (v86 == sub_24619F8BC() && v119 == v88)
  {
    goto LABEL_60;
  }

  v89 = sub_24619FBFC();

  if (v89)
  {
    goto LABEL_89;
  }

  v90 = sub_24619F8BC();
  v119 = v91;
  if (v90 == sub_24619F8BC() && v119 == v92)
  {
    goto LABEL_60;
  }

  v93 = sub_24619FBFC();

  if (v93)
  {
    goto LABEL_89;
  }

  v94 = sub_24619F8BC();
  v119 = v95;
  if (v94 == sub_24619F8BC() && v119 == v96)
  {
    goto LABEL_60;
  }

  v97 = sub_24619FBFC();

  if (v97)
  {
    goto LABEL_89;
  }

  v98 = sub_24619F8BC();
  v119 = v99;
  if (v98 == sub_24619F8BC() && v119 == v100)
  {
    goto LABEL_60;
  }

  v101 = sub_24619FBFC();

  if (v101)
  {
    goto LABEL_89;
  }

  v102 = sub_24619F8BC();
  v119 = v103;
  if (v102 == sub_24619F8BC() && v119 == v104)
  {
    goto LABEL_60;
  }

  v105 = sub_24619FBFC();

  if (v105)
  {
    goto LABEL_89;
  }

  v106 = sub_24619F8BC();
  v119 = v107;
  if (v106 == sub_24619F8BC() && v119 == v108)
  {
    goto LABEL_60;
  }

  v109 = sub_24619FBFC();

  if (v109)
  {
    goto LABEL_89;
  }

  v110 = sub_24619F8BC();
  v119 = v111;
  if (v110 == sub_24619F8BC() && v119 == v112)
  {
    goto LABEL_60;
  }

  v113 = sub_24619FBFC();

  if (v113)
  {
LABEL_89:
    v8 = 0xD000000000000635;
    goto LABEL_16;
  }

  v114 = sub_24619F8BC();
  v119 = v115;
  v9 = "com.apple.bko.all";
  v8 = 0xD00000000000084FLL;
  if (v114 == sub_24619F8BC() && v119 == v116)
  {
    goto LABEL_31;
  }

  v117 = sub_24619FBFC();

  if (v117)
  {
    goto LABEL_16;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_24616E624(uint64_t a1)
{
  v1 = a1;
  if (qword_281391898 != -1)
  {
    a1 = swift_once();
  }

  v11 = v1;
  MEMORY[0x28223BE20](a1);
  v10[2] = &v11;
  if (sub_246189598(sub_2461700E4, v10, v2))
  {
    v3 = sub_24619F8BC();
    v5 = v4;
    if (v3 == sub_24619F8BC() && v5 == v6)
    {
    }

    else
    {
      v8 = sub_24619FBFC();

      if ((v8 & 1) == 0)
      {
        return 0xD000000000000011;
      }
    }
  }

  return sub_24619F8BC();
}

uint64_t sub_24616E778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  if (qword_281391890 != -1)
  {
    a1 = swift_once();
  }

  v45 = v2;
  MEMORY[0x28223BE20](a1);
  v44 = &v45;
  v5 = sub_246189598(sub_24617038C, v43, v4);
  if (v5)
  {
    v6 = MEMORY[0x277D005A0];
    goto LABEL_12;
  }

  if (qword_2813918B8 != -1)
  {
    v5 = swift_once();
  }

  v45 = v2;
  MEMORY[0x28223BE20](v5);
  v44 = &v45;
  v8 = sub_246189598(sub_24617038C, v43, v7);
  if (v8)
  {
    goto LABEL_11;
  }

  if (qword_27EE3F798 != -1)
  {
    v8 = swift_once();
  }

  v45 = v2;
  MEMORY[0x28223BE20](v8);
  v44 = &v45;
  v10 = sub_246189598(sub_24617038C, v43, v9);
  if (v10)
  {
LABEL_11:
    v6 = MEMORY[0x277D005B8];
    goto LABEL_12;
  }

  if (qword_2813918C0 != -1)
  {
    v10 = swift_once();
  }

  v45 = v2;
  MEMORY[0x28223BE20](v10);
  v44 = &v45;
  v15 = sub_246189598(sub_24617038C, v43, v14);
  if (v15)
  {
    v6 = MEMORY[0x277D005C8];
    goto LABEL_12;
  }

  if (qword_281391BE0 != -1)
  {
    v15 = swift_once();
  }

  v45 = v2;
  MEMORY[0x28223BE20](v15);
  v44 = &v45;
  v17 = sub_246189598(sub_24617038C, v43, v16);
  if (v17)
  {
    v6 = MEMORY[0x277D005D8];
    goto LABEL_12;
  }

  if (qword_2813918B0 != -1)
  {
    v17 = swift_once();
  }

  v45 = v2;
  MEMORY[0x28223BE20](v17);
  v44 = &v45;
  if (sub_246189598(sub_24617038C, v43, v18))
  {
    v6 = MEMORY[0x277D005A8];
    goto LABEL_12;
  }

  v19 = sub_24619F8BC();
  v21 = v20;
  if (v19 == sub_24619F8BC() && v21 == v22)
  {
    v6 = MEMORY[0x277D005B0];
LABEL_28:

    goto LABEL_12;
  }

  v23 = sub_24619FBFC();

  if (v23)
  {
    v6 = MEMORY[0x277D005B0];
    goto LABEL_12;
  }

  if (qword_281391EC8 != -1)
  {
    v24 = swift_once();
  }

  v45 = v2;
  MEMORY[0x28223BE20](v24);
  v44 = &v45;
  if (sub_246189598(sub_24617038C, v43, v25))
  {
    v6 = MEMORY[0x277D00588];
    goto LABEL_12;
  }

  v26 = sub_24619F8BC();
  v28 = v27;
  if (v26 == sub_24619F8BC() && v28 == v29)
  {
    v6 = MEMORY[0x277D00598];
    goto LABEL_28;
  }

  v30 = sub_24619FBFC();

  if (v30)
  {
    v6 = MEMORY[0x277D00598];
    goto LABEL_12;
  }

  v31 = sub_24619F8BC();
  v33 = v32;
  if (v31 == sub_24619F8BC() && v33 == v34)
  {
    v6 = MEMORY[0x277D00590];
    goto LABEL_28;
  }

  v35 = sub_24619FBFC();

  if (v35)
  {
    v6 = MEMORY[0x277D00590];
    goto LABEL_12;
  }

  v36 = sub_24619F8BC();
  v38 = v37;
  v40 = sub_24619F8BC();
  v41 = v36;
  v6 = MEMORY[0x277D005C0];
  if (v41 == v40 && v38 == v39)
  {
    goto LABEL_28;
  }

  v42 = sub_24619FBFC();

  if ((v42 & 1) == 0)
  {
    v6 = MEMORY[0x277D005D0];
  }

LABEL_12:
  v11 = *v6;
  v12 = sub_24619F12C();
  return (*(*(v12 - 8) + 104))(a2, v11, v12);
}

uint64_t sub_24616EDF4(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F908, &qword_2461A0F60);
  if (swift_dynamicCast())
  {
    sub_246158944(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_24619EE4C();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_246170234(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_24619FB0C();
  }

  sub_24616F304(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_24616FAA8(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  v10 = sub_24616F3CC(sub_24617029C, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_24619EE8C();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_24616F924(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_24619F91C();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_24619F94C();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_24619FB0C();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_24616F924(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_24619F92C();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_24619EE9C();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_24619EE9C();
    sub_246170358(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_246170358(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_246170304(*&__src[0], *(&__src[0] + 1));

  sub_2461701E0(v32, *(&v32 + 1));
  return v32;
}
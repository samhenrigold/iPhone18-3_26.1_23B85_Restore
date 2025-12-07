id static Preloader.shared.getter()
{
  if (qword_2812185F8 != -1)
  {
    swift_once();
  }

  v1 = qword_281218600;

  return v1;
}

id sub_23DDC72F8()
{
  result = [objc_allocWithZone(type metadata accessor for Preloader()) init];
  qword_281218600 = result;
  return result;
}

uint64_t sub_23DDC73C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v10 = a1;
    v11 = a2;
    *&v8 = MEMORY[0x277D85DD0];
    *(&v8 + 1) = 1107296256;
    *&v9 = sub_23DDE3E94;
    *(&v9 + 1) = &block_descriptor_5;
    v4 = _Block_copy(&v8);
  }

  else
  {
    v4 = 0;
  }

  v5 = ABLoadResourcesWithCompletion();
  _Block_release(v4);
  if (v5)
  {
    sub_23DE05FC8();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v6 = OBJC_IVAR___BCPreloader_resourceLoadToken;
  swift_beginAccess();
  sub_23DDC765C(&v8, v3 + v6);
  swift_endAccess();
  if (qword_2812186B8 != -1)
  {
    swift_once();
  }

  *&v8 = sub_23DDC785C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326580, &qword_23DE08AC8);
  sub_23DDC7D70();
  sub_23DE054F8();

  swift_beginAccess();
  sub_23DE053D8();
  swift_endAccess();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23DDC765C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326578, &qword_23DE08AC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_23DDC76CC()
{
  type metadata accessor for StaccatoStorage();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  result = sub_23DDC773C(MEMORY[0x277D84F90]);
  *(v0 + 24) = result;
  qword_281218858 = v0;
  return result;
}

unint64_t sub_23DDC7764(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_23DE06258();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);

      result = a4(v10);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v9;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
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

uint64_t sub_23DDC785C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326848, &qword_23DE08EA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - v4;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326850, &qword_23DE08EA8);
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v18 = &v17 - v6;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326858, &unk_23DE08EB0);
  v22 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v19 = &v17 - v7;
  v8 = swift_allocObject();
  *(v8 + 16) = 1;
  *(v8 + 24) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326860, &unk_23DE09330);
  sub_23DDC7D28(&qword_2812185D8, &qword_27E326860, &unk_23DE09330, MEMORY[0x277CBCB60]);
  sub_23DE05488();
  sub_23DDC7D28(&qword_281218530, &qword_27E326848, &qword_23DE08EA0, MEMORY[0x277CBCEB8]);
  v9 = sub_23DE05498();
  (*(v3 + 8))(v5, v2);
  v24 = v9;

  v17 = sub_23DE053C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326868, &unk_23DE08EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267B0, &unk_23DE091B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326870, &qword_23DE09300);
  sub_23DDC7D28(&qword_281218560, &qword_27E326868, &unk_23DE08EC0, MEMORY[0x277CBCD90]);
  v10 = MEMORY[0x277CBCCE0];
  sub_23DDC7D28(&qword_281218590, &qword_27E326870, &qword_23DE09300, MEMORY[0x277CBCCE0]);
  v11 = v18;
  sub_23DE05548();

  sub_23DDC7D28(&qword_281218588, &qword_27E326850, &qword_23DE08EA8, v10);
  v12 = v19;
  v13 = v21;
  sub_23DE054C8();
  (*(v23 + 8))(v11, v13);
  sub_23DDC7D28(&qword_2812185D0, &qword_27E326858, &unk_23DE08EB0, MEMORY[0x277CBCB68]);
  v14 = v20;
  v15 = sub_23DE05498();
  (*(v22 + 8))(v12, v14);
  return v15;
}

uint64_t sub_23DDC7CF0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DDC7D28(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_23DDC7D70()
{
  result = qword_281218550;
  if (!qword_281218550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E326580, &qword_23DE08AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281218550);
  }

  return result;
}

uint64_t sub_23DDC7DD4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267C8, &qword_23DE092B0);
  MEMORY[0x28223BE20](v5 - 8);
  v62 = v48 - v6;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326898, &qword_23DE08EF0);
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v60 = v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3268A0, &qword_23DE08EF8);
  v65 = *(v8 - 8);
  v66 = v8;
  MEMORY[0x28223BE20](v8);
  v64 = v48 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3268A8, &qword_23DE08F00);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v48 - v12;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3268B0, &qword_23DE08F08);
  v51 = *(v49 - 8);
  v14 = MEMORY[0x28223BE20](v49);
  v52 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = v48 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3268B8, &qword_23DE08F10);
  v55 = *(v17 - 8);
  v56 = v17;
  MEMORY[0x28223BE20](v17);
  v54 = v48 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3268C0, &qword_23DE08F18);
  v58 = *(v19 - 8);
  v59 = v19;
  MEMORY[0x28223BE20](v19);
  v57 = v48 - v20;
  if (a1)
  {
    v21 = 0;
  }

  else
  {
    v21 = *(a2 + 16);
  }

  if (qword_2812185E8 != -1)
  {
    swift_once();
  }

  v22 = sub_23DE052B8();
  __swift_project_value_buffer(v22, qword_281218840);

  v23 = sub_23DE05298();
  v24 = sub_23DE05C38();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v48[1] = a2;
    v26 = v25;
    v27 = swift_slowAlloc();
    v67 = v27;
    *v26 = 136315138;
    if (v21)
    {
      v28 = 0x676E697375;
    }

    else
    {
      v28 = 0x2074756F68746977;
    }

    v48[0] = v10;
    if (v21)
    {
      v29 = 0xE500000000000000;
    }

    else
    {
      v29 = 0xED0000676E697375;
    }

    v30 = sub_23DDC8940(v28, v29, &v67);
    v10 = v48[0];

    *(v26 + 4) = v30;
    _os_log_impl(&dword_23DDC5000, v23, v24, "Loading actions %s cache", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x23EF014D0](v27, -1, -1);
    MEMORY[0x23EF014D0](v26, -1, -1);
  }

  v67 = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3268C8, &unk_23DE08F20);
  sub_23DE05458();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325CE8, &unk_23DE07BC8);
  v31 = v52;
  sub_23DE05438();
  (*(v11 + 8))(v13, v10);
  v32 = v49;
  v33 = v50;
  sub_23DE05FA8();
  v34 = *(v51 + 8);
  v34(v31, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267B8, &unk_23DE08E20);
  sub_23DDC7D28(&qword_2812184B0, &qword_27E3268B0, &qword_23DE08F08, MEMORY[0x277CBCF30]);
  v35 = v54;
  sub_23DE055D8();
  v34(v33, v32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3268D0, &qword_23DE08F30);
  swift_allocObject();
  v67 = sub_23DE05478();
  sub_23DDC7D28(&qword_281218548, &qword_27E3268D0, &qword_23DE08F30, MEMORY[0x277CBCEB0]);
  v36 = sub_23DE05498();

  v67 = v36;
  *(swift_allocObject() + 16) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326868, &unk_23DE08EC0);
  sub_23DDC7D28(&qword_281218560, &qword_27E326868, &unk_23DE08EC0, MEMORY[0x277CBCD90]);
  v37 = v60;
  sub_23DE05528();

  sub_23DDC91D0(0, &qword_281218508, 0x277D85C78);
  v38 = sub_23DE05CB8();
  v67 = v38;
  v39 = sub_23DE05C78();
  v40 = v62;
  (*(*(v39 - 8) + 56))(v62, 1, 1, v39);
  sub_23DDC7D28(&qword_2812185A0, &qword_27E326898, &qword_23DE08EF0, MEMORY[0x277CBCC90]);
  sub_23DDC9218(&qword_281218510, &qword_281218508, 0x277D85C78, MEMORY[0x277D85228]);
  v41 = v63;
  v42 = v64;
  sub_23DE05568();
  sub_23DDC925C(v40, &qword_27E3267C8, &qword_23DE092B0);

  (*(v61 + 8))(v37, v41);
  sub_23DDC7D28(&qword_2812185C0, &qword_27E3268B8, &qword_23DE08F10, MEMORY[0x277CBCBA0]);
  sub_23DDC7D28(&qword_281218578, &qword_27E3268A0, &qword_23DE08EF8, MEMORY[0x277CBCD60]);
  v44 = v56;
  v43 = v57;
  v45 = v66;
  sub_23DE05508();
  (*(v65 + 8))(v42, v45);
  (*(v55 + 8))(v35, v44);
  swift_allocObject();
  swift_weakInit();
  sub_23DDC7D28(&qword_2812185A8, &qword_27E3268C0, &qword_23DE08F18, MEMORY[0x277CBCC60]);
  v46 = v59;
  sub_23DE054B8();

  return (*(v58 + 8))(v43, v46);
}

uint64_t sub_23DDC8894()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDC88CC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_23DDC8940(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23DDC8B88(v11, 0, 0, 1, a1, a2);
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
    sub_23DDC8F3C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

void *sub_23DDC8A0C(uint64_t a1, unint64_t a2)
{
  v3 = sub_23DDC8A58(a1, a2);
  sub_23DDC8D0C(&unk_285018130);
  return v3;
}

void *sub_23DDC8A58(uint64_t a1, unint64_t a2)
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

  v6 = sub_23DDC8C94(v5, 0);
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

  result = sub_23DE060F8();
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
        v10 = sub_23DE05AA8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23DDC8C94(v10, 0);
        result = sub_23DE060B8();
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

unint64_t sub_23DDC8B88(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23DDC8A0C(a5, a6);
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
    result = sub_23DE060F8();
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

void *sub_23DDC8C94(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326E38, &unk_23DE09B40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_23DDC8D0C(uint64_t result)
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

  result = sub_23DE018E4(result, v11, 1, v3);
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

uint64_t sub_23DDC8E50()
{
  v0 = sub_23DE052B8();
  __swift_allocate_value_buffer(v0, qword_281218840);
  __swift_project_value_buffer(v0, qword_281218840);

  return sub_23DE052A8();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_23DDC8F3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_23DDC8FA8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = qword_2812185E8;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = sub_23DE052B8();
  __swift_project_value_buffer(v6, qword_281218840);
  v7 = sub_23DE05298();
  v8 = sub_23DE05C38();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23DDC5000, v7, v8, "Fetching actions...", v9, 2u);
    MEMORY[0x23EF014D0](v9, -1, -1);
  }

  v10 = [objc_opt_self() standardClient];
  v11 = swift_allocObject();
  *(v11 + 16) = sub_23DDC9D6C;
  *(v11 + 24) = v4;
  v13[4] = sub_23DDC981C;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_23DDC930C;
  v13[3] = &block_descriptor_18;
  v12 = _Block_copy(v13);

  [v10 fetchAvailableStaccatoActions_];
  _Block_release(v12);
}

uint64_t sub_23DDC918C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DDC91D0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_23DDC9218(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_23DDC91D0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23DDC925C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23DDC930C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for WFStaccatoActionSectionIdentifier(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325CE8, &unk_23DE07BC8);
    sub_23DDC94A4();
    v4 = sub_23DE059F8();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_23DDC93E4(uint64_t a1)
{
  sub_23DE05A48();
  sub_23DE063A8();
  sub_23DE05A88();
  v1 = sub_23DE063C8();

  return v1;
}

void sub_23DDC9458(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_23DDC94A4()
{
  result = qword_2812184F0;
  if (!qword_2812184F0)
  {
    type metadata accessor for WFStaccatoActionSectionIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812184F0);
  }

  return result;
}

void sub_23DDC94FC(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t))
{
  if (a1)
  {
    v4 = sub_23DDC98B4(a1);
    if (qword_2812185E8 != -1)
    {
      swift_once();
    }

    v5 = sub_23DE052B8();
    __swift_project_value_buffer(v5, qword_281218840);

    v6 = sub_23DE05298();
    v7 = sub_23DE05C38();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      if (v4 >> 62)
      {
        v9 = sub_23DE06038();
      }

      else
      {
        v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v8 + 4) = v9;

      _os_log_impl(&dword_23DDC5000, v6, v7, "Successfully fetched %ld actions", v8, 0xCu);
      MEMORY[0x23EF014D0](v8, -1, -1);
    }

    else
    {
    }

    a3(v4, 0);
  }

  else
  {
    if (qword_2812185E8 != -1)
    {
      swift_once();
    }

    v11 = sub_23DE052B8();
    __swift_project_value_buffer(v11, qword_281218840);
    v12 = a2;
    v13 = sub_23DE05298();
    v14 = sub_23DE05C38();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      if (a2)
      {
        v17 = a2;
        v18 = _swift_stdlib_bridgeErrorToNSError();
        v19 = v18;
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      *(v15 + 4) = v18;
      *v16 = v19;
      _os_log_impl(&dword_23DDC5000, v13, v14, "Failed to fetch actions: %@", v15, 0xCu);
      sub_23DDCF3FC(v16);
      MEMORY[0x23EF014D0](v16, -1, -1);
      MEMORY[0x23EF014D0](v15, -1, -1);
    }

    v20 = a2;
    if (!a2)
    {
      sub_23DDCF3A8();
      v20 = swift_allocError();
      *v21 = 0;
    }

    v22 = a2;
    a3(v20, 1);
  }
}

uint64_t sub_23DDC986C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23DDC98B4(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v36 = v6;
  v33 = v2;
  v34 = result;
  while (v5)
  {
LABEL_10:
    v11 = *(*(v1 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
    v12 = v11 >> 62;
    v13 = v11;
    if (v11 >> 62)
    {
      v14 = sub_23DE06038();
    }

    else
    {
      v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v9 >> 62;
    if (v9 >> 62)
    {
      result = sub_23DE06038();
    }

    else
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v38 = v14;
    v16 = __OFADD__(result, v14);
    v17 = result + v14;
    if (v16)
    {
      goto LABEL_40;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v15)
      {
LABEL_21:
        sub_23DE06038();
      }

LABEL_22:
      result = sub_23DE060E8();
      v37 = result;
      v18 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_23;
    }

    if (v15)
    {
      goto LABEL_21;
    }

    v18 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v17 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_22;
    }

    v37 = v9;
LABEL_23:
    v19 = *(v18 + 16);
    v20 = *(v18 + 24);
    v21 = v13;
    if (v12)
    {
      v23 = v18;
      result = sub_23DE06038();
      v18 = v23;
      v21 = v13;
      v22 = result;
    }

    else
    {
      v22 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 &= v5 - 1;
    if (v22)
    {
      if (((v20 >> 1) - v19) < v38)
      {
        goto LABEL_42;
      }

      v24 = v18 + 8 * v19 + 32;
      v35 = v18;
      v40 = v21;
      if (v12)
      {
        if (v22 < 1)
        {
          goto LABEL_44;
        }

        sub_23DDC9C10(&qword_281218520, &qword_27E325CE8, &unk_23DE07BC8);
        v25 = 0;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325CE8, &unk_23DE07BC8);
          v26 = v22;
          v27 = v24;
          v28 = sub_23DDC9C6C(v39, v25, v40);
          v30 = *v29;
          (v28)(v39, 0);
          v24 = v27;
          v22 = v26;
          *(v24 + 8 * v25++) = v30;
        }

        while (v26 != v25);
      }

      else
      {
        sub_23DDC91D0(0, &unk_2812184F8, 0x277D7A118);
        swift_arrayInitWithCopy();
      }

      v9 = v37;
      v2 = v33;
      v1 = v34;
      v6 = v36;
      if (v38 >= 1)
      {
        v31 = *(v35 + 16);
        v16 = __OFADD__(v31, v38);
        v32 = v31 + v38;
        if (v16)
        {
          goto LABEL_43;
        }

        *(v35 + 16) = v32;
      }
    }

    else
    {

      v9 = v37;
      v6 = v36;
      if (v38 > 0)
      {
        goto LABEL_41;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_23DDC9C10(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void (*sub_23DDC9C6C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EF00A60](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_23DDC9D64;
  }

  __break(1u);
  return result;
}

uint64_t sub_23DDC9CEC(uint64_t a1, id *a2)
{
  result = sub_23DE05A28();
  *a2 = 0;
  return result;
}

uint64_t sub_23DDC9D70(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_23DDC9DB8(uint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  v3 = sub_23DDEB71C(v2);

  v5 = sub_23DDEB71C(v4);

  sub_23DDEA6D8(v3, v5);
  v7 = v6;

  return (v7 ^ 1) & 1;
}

uint64_t sub_23DDC9E5C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 16) = v2;
  }

  return result;
}

uint64_t sub_23DDC9ED4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a2;
  v62 = a3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267A0, &qword_23DE08E08);
  v4 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v57 - v5;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326798, &qword_23DE08E00);
  v6 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = &v57 - v7;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326878, &qword_23DE08ED0);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v57 - v8;
  v9 = *a1;
  v77 = MEMORY[0x277D84F90];
  if (v9 >> 62)
  {
    goto LABEL_46;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v57 = v6;
    v58 = v4;
    v4 = 0;
    v69 = v9 & 0xFFFFFFFFFFFFFF8;
    v70 = v9 & 0xC000000000000001;
    v68 = 0x800000023DE0B5E0;
    do
    {
      if (v70)
      {
        v12 = MEMORY[0x23EF00A60](v4, v9);
      }

      else
      {
        if (v4 >= *(v69 + 16))
        {
          goto LABEL_44;
        }

        v12 = *(v9 + 8 * v4 + 32);
      }

      v13 = v12;
      v14 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        goto LABEL_43;
      }

      v6 = v10;
      v71 = @"Focus";
      v72 = 0xD000000000000031;
      v73 = v68;
      v74 = @"Camera";
      v75 = 0x746F685072616572;
      v76 = 0xE90000000000006FLL;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326880, &qword_23DE08ED8);
      v15 = sub_23DE06258();
      v16 = @"Focus";
      v17 = @"Camera";

      v18 = v72;
      v19 = v73;
      v20 = v71;

      v21 = sub_23DDCA864(v20);
      if (v22)
      {
        goto LABEL_41;
      }

      *(v15 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
      *(v15[6] + 8 * v21) = v20;
      v23 = (v15[7] + 16 * v21);
      *v23 = v18;
      v23[1] = v19;
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_42;
      }

      v15[2] = v26;
      v27 = v75;
      v28 = v76;
      v29 = v74;

      v30 = sub_23DDCA864(v29);
      if (v31)
      {
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        v10 = sub_23DE06038();
        goto LABEL_3;
      }

      *(v15 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v30;
      *(v15[6] + 8 * v30) = v29;
      v32 = (v15[7] + 16 * v30);
      *v32 = v27;
      v32[1] = v28;
      v33 = v15[2];
      v25 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v25)
      {
        goto LABEL_42;
      }

      v15[2] = v34;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326790, &qword_23DE08DF8);
      swift_arrayDestroy();
      v35 = [v13 sectionIdentifier];
      v36 = v35;
      if (v15[2] && (sub_23DDCA864(v35), (v37 & 1) != 0))
      {

        sub_23DE06108();
        sub_23DE06138();
        sub_23DE06148();
        sub_23DE06118();
      }

      else
      {
      }

      ++v4;
      v10 = v6;
    }

    while (v14 != v6);
    v38 = v77;
    v4 = v58;
    v6 = v57;
    v11 = MEMORY[0x277D84F90];
    if ((v77 & 0x8000000000000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_47:
    v53 = v11;
    v54 = sub_23DE06038();
    v11 = v53;
    v9 = v54;
    if (!v54)
    {
      goto LABEL_48;
    }

LABEL_24:
    v77 = v11;
    result = sub_23DE06128();
    if ((v9 & 0x8000000000000000) == 0)
    {
      v40 = 0;
      v41 = (v4 + 8);
      v69 = v6 + 8;
      v70 = v38 & 0xC000000000000001;
      while (1)
      {
        if (v70)
        {
          v43 = MEMORY[0x23EF00A60](v40, v38);
        }

        else
        {
          v43 = *(v38 + 8 * v40 + 32);
        }

        v6 = v43;
        v44 = [v43 parameters];
        sub_23DDC91D0(0, &qword_2812184D0, 0x277D7A120);
        v45 = sub_23DE05AF8();

        if (v45 >> 62)
        {
          if (sub_23DE06038())
          {
LABEL_33:
            if ((v45 & 0xC000000000000001) != 0)
            {
              v46 = MEMORY[0x23EF00A60](0, v45);
            }

            else
            {
              if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_45;
              }

              v46 = *(v45 + 32);
            }

            v47 = v46;

            v48 = swift_allocObject();
            *(v48 + 16) = 1;
            *(v48 + 24) = v67;
            *(v48 + 32) = v6;
            *(v48 + 40) = v47;

            v49 = v6;
            v50 = v47;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267A8, &unk_23DE08E10);
            sub_23DDC7D28(&qword_2812185E0, &qword_27E3267A8, &unk_23DE08E10, MEMORY[0x277CBCB60]);
            v4 = v65;
            sub_23DE05488();
            sub_23DDC7D28(&qword_281218538, &qword_27E3267A0, &qword_23DE08E08, MEMORY[0x277CBCEB8]);
            v51 = v66;
            sub_23DE05498();

            (*v41)(v4, v51);
            goto LABEL_27;
          }
        }

        else if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267B0, &unk_23DE091B0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267B8, &unk_23DE08E20);
        v42 = v63;
        sub_23DE05468();
        sub_23DDC7D28(&qword_27E3267C0, &qword_27E326798, &qword_23DE08E00, MEMORY[0x277CBCE90]);
        v4 = v64;
        sub_23DE05498();

        (*v69)(v42, v4);
LABEL_27:
        ++v40;
        sub_23DE06108();
        sub_23DE06138();
        sub_23DE06148();
        sub_23DE06118();
        if (v9 == v40)
        {

          v52 = v77;
          goto LABEL_49;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_47;
    }

LABEL_22:
    if ((v38 & 0x4000000000000000) != 0)
    {
      goto LABEL_47;
    }

    v9 = *(v38 + 16);
    if (v9)
    {
      goto LABEL_24;
    }

LABEL_48:

    v52 = MEMORY[0x277D84F90];
LABEL_49:
    v77 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326888, &unk_23DE08EE0);
    sub_23DDC7D28(&qword_281218528, &qword_27E326888, &unk_23DE08EE0, MEMORY[0x277D83970]);
    v55 = v59;
    sub_23DE05AC8();

    sub_23DE053C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326890, &unk_23DE09170);
    sub_23DDC7D28(&qword_281218580, &qword_27E326878, &qword_23DE08ED0, MEMORY[0x277CBCD18]);
    sub_23DDC7D28(&qword_281218568, &qword_27E326890, &unk_23DE09170, MEMORY[0x277CBCD90]);
    v56 = v61;
    sub_23DE055F8();
    return (*(v60 + 8))(v55, v56);
  }

  return result;
}

unint64_t sub_23DDCA874(uint64_t a1)
{
  sub_23DE05A48();
  sub_23DE063A8();
  sub_23DE05A88();
  v2 = sub_23DE063C8();

  return sub_23DDCA904(a1, v2);
}

unint64_t sub_23DDCA904(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_23DE05A48();
      v8 = v7;
      if (v6 == sub_23DE05A48() && v8 == v9)
      {
        break;
      }

      v11 = sub_23DE06318();

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

uint64_t sub_23DDCAA14@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v89 = a4;
  v106 = a2;
  v91 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267C8, &qword_23DE092B0);
  MEMORY[0x28223BE20](v7 - 8);
  v105 = &v81 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267D0, &qword_23DE08E30);
  v92 = *(v9 - 8);
  v93 = v9;
  MEMORY[0x28223BE20](v9);
  v90 = &v81 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267D8, &qword_23DE08E38);
  v100 = *(v11 - 8);
  v101 = v11;
  MEMORY[0x28223BE20](v11);
  v97 = &v81 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267E0, &qword_23DE08E40);
  v103 = *(v13 - 8);
  v104 = v13;
  MEMORY[0x28223BE20](v13);
  v102 = &v81 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267E8, &qword_23DE08E48);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v86 = &v81 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267F0, &qword_23DE08E50);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v85 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v81 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267F8, &qword_23DE08E58);
  v94 = *(v24 - 8);
  v95 = v24;
  MEMORY[0x28223BE20](v24);
  v88 = &v81 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326800, &qword_23DE08E60);
  v98 = *(v26 - 8);
  v99 = v26;
  MEMORY[0x28223BE20](v26);
  v96 = &v81 - v27;
  if (a1)
  {
    v28 = 0;
  }

  else
  {
    v29 = v106;
    swift_beginAccess();
    v30 = *(v29 + 24);
    if (*(v30 + 16) && (v31 = sub_23DE01698(a3), (v32 & 1) != 0))
    {
      v28 = *(*(v30 + 56) + 8 * v31);
    }

    else
    {
      v28 = 0;
    }

    swift_endAccess();
  }

  if (qword_2812185E8 != -1)
  {
    swift_once();
  }

  v33 = sub_23DE052B8();
  __swift_project_value_buffer(v33, qword_281218840);

  v34 = a3;
  v35 = sub_23DE05298();
  v36 = sub_23DE05C38();

  v37 = os_log_type_enabled(v35, v36);
  v87 = v34;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v83 = v23;
    v39 = v38;
    v40 = swift_slowAlloc();
    v107[0] = v40;
    *v39 = 136315394;
    v41 = [v34 sectionIdentifier];
    v84 = v18;
    v82 = v19;
    v42 = v41;
    v43 = sub_23DE05A48();
    v81 = v15;
    v44 = v43;
    v45 = v16;
    v46 = v28;
    v48 = v47;

    v49 = sub_23DDC8940(v44, v48, v107);
    v28 = v46;
    v16 = v45;

    *(v39 + 4) = v49;
    *(v39 + 12) = 2080;
    if (v28)
    {
      v50 = 0x676E697375;
    }

    else
    {
      v50 = 0x2074756F68746977;
    }

    if (v28)
    {
      v51 = 0xE500000000000000;
    }

    else
    {
      v51 = 0xED0000676E697375;
    }

    v52 = sub_23DDC8940(v50, v51, v107);
    v15 = v81;

    *(v39 + 14) = v52;
    v19 = v82;
    v18 = v84;
    _os_log_impl(&dword_23DDC5000, v35, v36, "Loading parameter values for %s %s cache", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EF014D0](v40, -1, -1);
    v53 = v39;
    v23 = v83;
    MEMORY[0x23EF014D0](v53, -1, -1);
  }

  v107[0] = v28;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326808, &qword_23DE08E68);
  v54 = v86;
  sub_23DE05458();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267B0, &unk_23DE091B0);
  v55 = v85;
  sub_23DE05438();
  (*(v16 + 8))(v54, v15);
  sub_23DE05FA8();
  v56 = *(v19 + 8);
  v56(v55, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267B8, &unk_23DE08E20);
  sub_23DDC7D28(&qword_2812184B8, &qword_27E3267F0, &qword_23DE08E50, MEMORY[0x277CBCF30]);
  v57 = v28;
  v58 = v88;
  sub_23DE055D8();
  v56(v23, v18);

  v59 = swift_allocObject();
  v60 = v89;
  *(v59 + 16) = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326810, &qword_23DE08E70);
  swift_allocObject();
  v61 = v60;
  v107[0] = sub_23DE05478();
  sub_23DDC7D28(&qword_281218540, &qword_27E326810, &qword_23DE08E70, MEMORY[0x277CBCEB0]);
  v62 = sub_23DE05498();

  v107[0] = v62;
  *(swift_allocObject() + 16) = v61;
  v63 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326818, &qword_23DE08E78);
  sub_23DDC7D28(&qword_281218558, &qword_27E326818, &qword_23DE08E78, MEMORY[0x277CBCD90]);
  v64 = v90;
  sub_23DE054E8();

  *(swift_allocObject() + 16) = v57;
  sub_23DDC7D28(&qword_2812185B8, &qword_27E3267D0, &qword_23DE08E30, MEMORY[0x277CBCC08]);
  v65 = v97;
  v66 = v93;
  sub_23DE05528();

  (*(v92 + 8))(v64, v66);
  sub_23DDC91D0(0, &qword_281218508, 0x277D85C78);
  v67 = sub_23DE05CB8();
  v107[0] = v67;
  v68 = sub_23DE05C78();
  v69 = v105;
  (*(*(v68 - 8) + 56))(v105, 1, 1, v68);
  sub_23DDC7D28(&qword_281218598, &qword_27E3267D8, &qword_23DE08E38, MEMORY[0x277CBCC90]);
  sub_23DDC9218(&qword_281218510, &qword_281218508, 0x277D85C78, MEMORY[0x277D85228]);
  v70 = v101;
  v71 = v102;
  sub_23DE05568();
  sub_23DDC925C(v69, &qword_27E3267C8, &qword_23DE092B0);

  (*(v100 + 8))(v65, v70);
  sub_23DDC7D28(&qword_2812185C8, &qword_27E3267F8, &qword_23DE08E58, MEMORY[0x277CBCBA0]);
  sub_23DDC7D28(&qword_281218570, &qword_27E3267E0, &qword_23DE08E40, MEMORY[0x277CBCD60]);
  v73 = v95;
  v72 = v96;
  v74 = v104;
  sub_23DE05508();
  (*(v103 + 8))(v71, v74);
  (*(v94 + 8))(v58, v73);
  v75 = swift_allocObject();
  swift_weakInit();
  v76 = swift_allocObject();
  v77 = v87;
  *(v76 + 16) = v75;
  *(v76 + 24) = v77;
  sub_23DDC7D28(&qword_2812185B0, &qword_27E326800, &qword_23DE08E60, MEMORY[0x277CBCC60]);
  v78 = v77;
  v79 = v99;
  sub_23DE054B8();

  return (*(v98 + 8))(v72, v79);
}

uint64_t sub_23DDCB770()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCB7A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_23DDCB800(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = qword_2812185E8;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_23DE052B8();
  __swift_project_value_buffer(v8, qword_281218840);
  v9 = a3;
  v10 = sub_23DE05298();
  v11 = sub_23DE05C38();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23[0] = v13;
    *v12 = 136315138;
    v14 = [v9 actionIdentifier];
    v15 = sub_23DE05A48();
    v17 = v16;

    v18 = sub_23DDC8940(v15, v17, v23);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_23DDC5000, v10, v11, "Fetching values for parameter %s...", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x23EF014D0](v13, -1, -1);
    MEMORY[0x23EF014D0](v12, -1, -1);
  }

  v19 = [objc_opt_self() standardClient];
  v20 = swift_allocObject();
  v20[2] = v9;
  v20[3] = sub_23DDCF750;
  v20[4] = v6;
  v23[4] = sub_23DDCF39C;
  v23[5] = v20;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  v23[2] = sub_23DDCE9F8;
  v23[3] = &block_descriptor;
  v21 = _Block_copy(v23);
  v22 = v9;

  [v19 fetchAllValueSectionsForStaccatoParameter:v22 completion:v21];
  _Block_release(v21);
}

uint64_t sub_23DDCBAA4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

BOOL sub_23DDCBB20(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_23DDCBBA4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23DDCBBD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DE05A48();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23DDCBBFC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23DDCBC1C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_23DDCBC44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325CE0, &qword_23DE07BC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23DDCBCE0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325CF8, &unk_23DE07C90);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23DDCBD9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325CF8, &unk_23DE07C90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23DDCBE58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DE05698();
  *a1 = result;
  return result;
}

void sub_23DDCBEDC(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_23DE05A18();
  [v2 setIdentifier_];
}

uint64_t sub_23DDCBF40()
{
  v1 = (type metadata accessor for GroupedParameterConfigurationView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325E08, &unk_23DE07DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23DE05658();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v2 | 7);
}

uint64_t sub_23DDCC098()
{

  MEMORY[0x23EF01590](v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DDCC0D8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23DDCC0E8()
{

  MEMORY[0x23EF01590](v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23DDCC130()
{
  MEMORY[0x23EF01590](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DDCC170()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC1A8()
{
  MEMORY[0x23EF01590](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC1E0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC220()
{
  MEMORY[0x23EF01590](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC258()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC290()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23DDCC2D8()
{
  MEMORY[0x23EF01590](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC33C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23DDCC384()
{
  MEMORY[0x23EF01590](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC3BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DDCC3FC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DDCC444()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC47C()
{
  MEMORY[0x23EF01590](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC4B8()
{
  MEMORY[0x23EF01590](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC4F8()
{
  MEMORY[0x23EF01590](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC530()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DDCC578()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC5B0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DDCC5F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DDCC630()
{
  MEMORY[0x23EF01590](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC668()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DDCC6A4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC6DC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC714()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DDCC760()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC79C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23DDCC7F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DDCC844()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCC87C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DDCC8B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DDCC8EC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27E326590, &qword_23DE08AD0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_23DE051E8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23DDCCA14()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23DDCCA5C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DDCCA9C()
{

  MEMORY[0x23EF01590](v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DDCCB20()
{
  MEMORY[0x23EF01590](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DDCCB58()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DDCCB90()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23DDCCD14(uint64_t a1, int a2)
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

uint64_t sub_23DDCCD34(uint64_t result, int a2, int a3)
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

uint64_t sub_23DDCCD9C()
{
  v3[3] = &type metadata for Features;
  v3[4] = sub_23DDCDEA8();
  LOBYTE(v3[0]) = 1;
  v0 = sub_23DE05238();
  result = __swift_destroy_boxed_opaque_existential_1(v3);
  v2 = 0xC014000000000000;
  if (v0)
  {
    v2 = 0;
  }

  qword_27E326ED8 = v2;
  byte_27E326EE0 = v0 & 1;
  return result;
}

uint64_t sub_23DDCCE0C()
{
  v3[3] = &type metadata for Features;
  v3[4] = sub_23DDCDEA8();
  LOBYTE(v3[0]) = 1;
  v0 = sub_23DE05238();
  result = __swift_destroy_boxed_opaque_existential_1(v3);
  v2 = 0x4014000000000000;
  if (v0)
  {
    v2 = 0;
  }

  qword_27E326EE8 = v2;
  byte_27E326EF0 = v0 & 1;
  return result;
}

uint64_t sub_23DDCCE7C()
{
  v3[3] = &type metadata for Features;
  v3[4] = sub_23DDCDEA8();
  LOBYTE(v3[0]) = 1;
  v0 = sub_23DE05238();
  result = __swift_destroy_boxed_opaque_existential_1(v3);
  v2 = 0x4018000000000000;
  if ((v0 & 1) == 0)
  {
    v2 = 0;
  }

  qword_27E326EF8 = v2;
  byte_27E326F00 = (v0 & 1) == 0;
  return result;
}

void sub_23DDCCEF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v11 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v12 = sub_23DE05A18();
  v13 = [v11 initWithString_];

  v14 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  v15 = v14;
  if ((a4 & 1) == 0)
  {
    [v14 setLineSpacing_];
  }

  if (a6)
  {
    goto LABEL_7;
  }

  v16 = [v6 font];
  if (!v16)
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = v16;
  v18 = *&a5;
  [v16 pointSize];
  v20 = v19;

  [v15 setMinimumLineHeight_];
  v21 = [v6 font];
  if (!v21)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v22 = v21;
  [v21 pointSize];
  v24 = v23;

  [v15 setMaximumLineHeight_];
LABEL_7:
  [v15 setAlignment_];
  [v15 setLineBreakStrategy_];
  v25 = *MEMORY[0x277D74118];
  v26 = v15;
  v27 = v13;
  [v27 addAttribute:v25 value:v26 range:{0, objc_msgSend(v27, sel_length)}];

  [v6 setAttributedText_];
}

uint64_t sub_23DDCD10C(uint64_t a1, id *a2)
{
  v3 = sub_23DE05A38();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23DDCD18C@<X0>(uint64_t *a2@<X8>)
{
  sub_23DE05A48();
  v3 = sub_23DE05A18();

  *a2 = v3;
  return result;
}

void *sub_23DDCD1F8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_23DDCD224@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_23DDCD2D4()
{
  v0 = sub_23DE05A48();
  v1 = MEMORY[0x23EF00440](v0);

  return v1;
}

uint64_t sub_23DDCD310(uint64_t a1)
{
  sub_23DE05A48();
  sub_23DE05A88();
}

uint64_t sub_23DDCD364@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_23DDCDE70(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_23DDCD3A4(void *a1, uint64_t *a2)
{
  v2 = sub_23DE05A48();
  v4 = v3;
  if (v2 == sub_23DE05A48() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_23DE06318();
  }

  return v7 & 1;
}

uint64_t sub_23DDCD42C(uint64_t a1)
{
  v2 = sub_23DDC986C(&qword_2812184F0, type metadata accessor for WFStaccatoActionSectionIdentifier, &unk_23DE075BC);
  v3 = sub_23DDC986C(&qword_27E325C18, type metadata accessor for WFStaccatoActionSectionIdentifier, &unk_23DE0755C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23DDCD578(uint64_t a1)
{
  v2 = sub_23DDC986C(&qword_27E325C60, type metadata accessor for Key, &unk_23DE07B04);
  v3 = sub_23DDC986C(&qword_27E325C68, type metadata accessor for Key, &unk_23DE07A58);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23DDCD634@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_23DE05A18();

  *a2 = v3;
  return result;
}

uint64_t sub_23DDCD67C(uint64_t a1)
{
  v2 = sub_23DDC986C(&qword_27E325C00, type metadata accessor for ABDeviceSceneParameter, &unk_23DE07704);
  v3 = sub_23DDC986C(&unk_27E325C08, type metadata accessor for ABDeviceSceneParameter, "}4CDHI");
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

id sub_23DDCD930(uint64_t a1)
{
  v2 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v3 = [objc_opt_self() preferredFontDescriptorWithTextStyle:a1 compatibleWithTraitCollection:v2];
  v4 = objc_opt_self();
  [v3 pointSize];
  v5 = [v4 systemFontOfSize_weight_];
  v6 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v7 = [v6 scaledFontForFont_];

  return v7;
}

void *sub_23DDCDA5C(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = v2;
  if (a1)
  {
    v14 = &type metadata for Features;
    v4 = sub_23DDCDEA8();
    v15 = v4;
    LOBYTE(v13[0]) = 0;
    v5 = sub_23DE05238();
    __swift_destroy_boxed_opaque_existential_1(v13);
    if (v5)
    {
      v6 = 4;
    }

    else
    {
      v6 = 1;
    }

    [v3 setTextAlignment_];
    v14 = &type metadata for Features;
    v15 = v4;
    LOBYTE(v13[0]) = 1;
    v7 = sub_23DE05238();
    __swift_destroy_boxed_opaque_existential_1(v13);
    v8 = MEMORY[0x277D76A20];
    if ((v7 & 1) == 0)
    {
      v8 = MEMORY[0x277D76A08];
    }

    v9 = *v8;
  }

  else
  {
    [v2 setTextAlignment_];
    v9 = *MEMORY[0x277D76A08];
  }

  v10 = sub_23DDCD930(v9);
  [v3 setFont_];

  v11 = [objc_opt_self() whiteColor];
  [v3 setTextColor_];

  [v3 setNumberOfLines_];
  [v3 setLineBreakMode_];
  [v3 setAdjustsFontForContentSizeCategory_];
  [v3 setAdjustsFontSizeToFitWidth_];
  [v3 setMinimumScaleFactor_];
  return v3;
}

void *sub_23DDCDC44(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = v2;
  if (a1)
  {
    v16 = &type metadata for Features;
    v4 = sub_23DDCDEA8();
    v17 = v4;
    LOBYTE(v15[0]) = 0;
    v5 = sub_23DE05238();
    __swift_destroy_boxed_opaque_existential_1(v15);
    if (v5)
    {
      v6 = 4;
    }

    else
    {
      v6 = 1;
    }

    [v3 setTextAlignment_];
    v16 = &type metadata for Features;
    v17 = v4;
    LOBYTE(v15[0]) = 1;
    v7 = sub_23DE05238();
    __swift_destroy_boxed_opaque_existential_1(v15);
    v8 = MEMORY[0x277D76A20];
    if ((v7 & 1) == 0)
    {
      v8 = MEMORY[0x277D769D0];
    }

    v9 = *v8;
  }

  else
  {
    [v2 setTextAlignment_];
    v9 = *MEMORY[0x277D769D0];
  }

  v10 = sub_23DDCD930(v9);
  [v3 setFont_];

  v16 = &type metadata for Features;
  v17 = sub_23DDCDEA8();
  LOBYTE(v15[0]) = 1;
  LOBYTE(v10) = sub_23DE05238();
  __swift_destroy_boxed_opaque_existential_1(v15);
  if (v10)
  {
    v11 = [objc_opt_self() secondaryLabelColor];
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.6];
  }

  v12 = v11;
  [v3 setTextColor_];

  [v3 setNumberOfLines_];
  [v3 setAdjustsFontForContentSizeCategory_];
  v13 = [v3 layer];
  [v13 setCompositingFilter_];

  return v3;
}

uint64_t sub_23DDCDE70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_23DDCDEA8()
{
  result = qword_27E325C20;
  if (!qword_27E325C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E325C20);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

id sub_23DDCE0C0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23DDCE11C()
{
  type metadata accessor for FindClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27E326F08 = result;
  return result;
}

uint64_t sub_23DDCE174()
{
  v1 = *v0;
  sub_23DE063A8();
  MEMORY[0x23EF00D40](v1);
  return sub_23DE063C8();
}

uint64_t sub_23DDCE1BC(uint64_t a1)
{
  v2 = *v1;
  sub_23DE063A8();
  MEMORY[0x23EF00D40](v2);
  return sub_23DE063C8();
}

unint64_t sub_23DDCE210(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x23EF00A60](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject values];
      sub_23DDC91D0(0, &qword_2812184C8, 0x277D7A128);
      v8 = sub_23DE05AF8();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_23DE06038();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_23DE06038();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_23DE06038();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_23DE060E8();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_23DE06038();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_23DDC9C10(&qword_281218518, &qword_27E325CD8, &qword_23DE07BB8);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325CD8, &qword_23DE07BB8);
              v19 = sub_23DDF692C(v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_23DE06038();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

void sub_23DDCE590(unint64_t a1, void *a2, void *a3, void (*a4)(uint64_t, void))
{
  if (a1)
  {
    if (qword_2812185E8 != -1)
    {
      swift_once();
    }

    v7 = sub_23DE052B8();
    __swift_project_value_buffer(v7, qword_281218840);
    swift_bridgeObjectRetain_n();
    v8 = a3;
    v9 = sub_23DE05298();
    v10 = sub_23DE05C38();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v41 = v12;
      *v11 = 134218242;
      v13 = sub_23DDCE210(a1);
      if (v13 >> 62)
      {
        v14 = sub_23DE06038();
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v11 + 4) = v14;

      *(v11 + 12) = 2080;
      v15 = [v8 actionIdentifier];
      v16 = sub_23DE05A48();
      v18 = v17;

      v19 = sub_23DDC8940(v16, v18, &v41);

      *(v11 + 14) = v19;
      _os_log_impl(&dword_23DDC5000, v9, v10, "Successfully fetched %ld parameter values for %s", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x23EF014D0](v12, -1, -1);
      MEMORY[0x23EF014D0](v11, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    a4(a1, 0);
  }

  else
  {
    if (qword_2812185E8 != -1)
    {
      swift_once();
    }

    v21 = sub_23DE052B8();
    __swift_project_value_buffer(v21, qword_281218840);
    v22 = a3;
    v23 = a2;
    v24 = sub_23DE05298();
    v25 = sub_23DE05C38();

    if (os_log_type_enabled(v24, v25))
    {
      v40 = a4;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v41 = v28;
      *v26 = 136315394;
      v29 = [v22 actionIdentifier];
      v30 = sub_23DE05A48();
      v32 = v31;

      v33 = sub_23DDC8940(v30, v32, &v41);

      *(v26 + 4) = v33;
      *(v26 + 12) = 2112;
      if (a2)
      {
        v34 = a2;
        v35 = _swift_stdlib_bridgeErrorToNSError();
        v36 = v35;
      }

      else
      {
        v35 = 0;
        v36 = 0;
      }

      a4 = v40;
      *(v26 + 14) = v35;
      *v27 = v36;
      _os_log_impl(&dword_23DDC5000, v24, v25, "Failed to fetch parameter values for %s: %@", v26, 0x16u);
      sub_23DDCF3FC(v27);
      MEMORY[0x23EF014D0](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x23EF014D0](v28, -1, -1);
      MEMORY[0x23EF014D0](v26, -1, -1);
    }

    v37 = a2;
    if (!a2)
    {
      sub_23DDCF3A8();
      v37 = swift_allocError();
      *v38 = 1;
    }

    v39 = a2;
    a4(v37, 1);
  }
}

uint64_t sub_23DDCE9F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_23DDC91D0(0, &qword_2812184C0, 0x277D7A130);
    v4 = sub_23DE05AF8();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_23DDCEA9C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = qword_2812185E8;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = sub_23DE052B8();
  __swift_project_value_buffer(v6, qword_281218840);
  v7 = sub_23DE05298();
  v8 = sub_23DE05C38();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23DDC5000, v7, v8, "Fetching default action...", v9, 2u);
    MEMORY[0x23EF014D0](v9, -1, -1);
  }

  v10 = [objc_opt_self() standardClient];
  v11 = swift_allocObject();
  *(v11 + 16) = sub_23DDCF750;
  *(v11 + 24) = v4;
  v13[4] = sub_23DDCF580;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_23DDCF020;
  v13[3] = &block_descriptor_27;
  v12 = _Block_copy(v13);

  [v10 defaultStaccatoActionWithCompletion_];
  _Block_release(v12);
}

void sub_23DDCEC80(void *a1, void *a2, void (*a3)(id, uint64_t))
{
  if (a1 && (objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) != 0))
  {
    if (!a2)
    {
      v33 = v6;
      v7 = qword_2812185E8;
      v8 = a1;
      if (v7 != -1)
      {
        swift_once();
      }

      v9 = sub_23DE052B8();
      __swift_project_value_buffer(v9, qword_281218840);
      v10 = v8;
      v11 = sub_23DE05298();
      v12 = sub_23DE05C38();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v35 = v14;
        *v13 = 136315138;
        v15 = [v33 sectionIdentifier];
        v16 = sub_23DE05A48();
        v18 = v17;

        v19 = sub_23DDC8940(v16, v18, &v35);

        *(v13 + 4) = v19;
        _os_log_impl(&dword_23DDC5000, v11, v12, "Fetched %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x23EF014D0](v14, -1, -1);
        MEMORY[0x23EF014D0](v13, -1, -1);
      }

      v34 = v10;
      a3(v33, 0);

      v20 = v34;

      goto LABEL_10;
    }
  }

  else if (!a2)
  {
    sub_23DDCF3A8();
    v21 = swift_allocError();
    *v22 = 2;
    goto LABEL_14;
  }

  v21 = a2;
LABEL_14:
  v23 = a2;
  if (qword_2812185E8 != -1)
  {
    swift_once();
  }

  v24 = sub_23DE052B8();
  __swift_project_value_buffer(v24, qword_281218840);
  v25 = v21;
  v26 = sub_23DE05298();
  v27 = sub_23DE05C38();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    v30 = v21;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 4) = v31;
    *v29 = v31;
    _os_log_impl(&dword_23DDC5000, v26, v27, "Failed to fetch default action %@", v28, 0xCu);
    sub_23DDCF3FC(v29);
    MEMORY[0x23EF014D0](v29, -1, -1);
    MEMORY[0x23EF014D0](v28, -1, -1);
  }

  v32 = v21;
  a3(v21, 1);

  v20 = v21;

LABEL_10:
}

void sub_23DDCF020(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_23DDCF0AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325CE0, &qword_23DE07BC0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - v9;
  sub_23DDC91D0(0, &qword_2812184C8, 0x277D7A128);
  v11 = sub_23DE059E8();
  (*(v8 + 16))(v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v10, v7);
  aBlock[4] = sub_23DDCF4F4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DDCF020;
  aBlock[3] = &block_descriptor_9;
  v14 = _Block_copy(aBlock);

  [a2 configuredStaccatoActionFromTemplate:a3 valuesByParameterKey:v11 completion:v14];
  _Block_release(v14);
}

uint64_t sub_23DDCF2B0(void *a1, id a2)
{
  if (a1 && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325CE0, &qword_23DE07BC0);
    return sub_23DE05B78();
  }

  else
  {
    if (a2)
    {
      v6 = a2;
    }

    else
    {
      [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D7A388] code:0 userInfo:0];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325CE0, &qword_23DE07BC0);
    return sub_23DE05B68();
  }
}

unint64_t sub_23DDCF3A8()
{
  result = qword_27E325CD0;
  if (!qword_27E325CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E325CD0);
  }

  return result;
}

uint64_t sub_23DDCF3FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E325FC0, &qword_23DE07BB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_23DDCF4F4(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325CE0, &qword_23DE07BC0);

  return sub_23DDCF2B0(a1, a2);
}

uint64_t _s6ErrorsOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
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

  return (v8 + 1);
}

uint64_t _s6ErrorsOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23DDCF6EC()
{
  result = qword_27E325CF0;
  if (!qword_27E325CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E325CF0);
  }

  return result;
}

uint64_t type metadata accessor for GroupedParameterConfigurationView(uint64_t a1)
{
  result = qword_27E325D00;
  if (!qword_27E325D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23DDCF7C8(uint64_t a1)
{
  sub_23DDCF88C(319);
  if (v1 <= 0x3F)
  {
    sub_23DDCF8F4(319);
    if (v2 <= 0x3F)
    {
      sub_23DDCF958();
      if (v3 <= 0x3F)
      {
        sub_23DDCF9A8(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23DDCF88C(uint64_t a1)
{
  if (!qword_27E325D10)
  {
    sub_23DDC91D0(255, &qword_2812184C0, 0x277D7A130);
    v1 = sub_23DE05B48();
    if (!v2)
    {
      atomic_store(v1, &qword_27E325D10);
    }
  }
}

void sub_23DDCF8F4(uint64_t a1)
{
  if (!qword_27E325D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E325D20, qword_23DE07CC8);
    v1 = sub_23DE05918();
    if (!v2)
    {
      atomic_store(v1, &qword_27E325D18);
    }
  }
}

unint64_t sub_23DDCF958()
{
  result = qword_27E325D28;
  if (!qword_27E325D28)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27E325D28);
  }

  return result;
}

void sub_23DDCF9A8(uint64_t a1)
{
  if (!qword_27E325D30)
  {
    sub_23DE05658();
    v1 = sub_23DE05638();
    if (!v2)
    {
      atomic_store(v1, &qword_27E325D30);
    }
  }
}

uint64_t sub_23DDCFA1C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23DE056F8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325E08, &unk_23DE07DC0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for GroupedParameterConfigurationView(0);
  sub_23DDD2850(v1 + *(v10 + 32), v9, &qword_27E325E08, &unk_23DE07DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23DE05658();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23DE05C28();
    v13 = sub_23DE05768();
    sub_23DE05288();

    sub_23DE056E8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_23DDCFC24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_23DE05708();
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325D48, &qword_23DE07D30);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325D40, &qword_23DE07D28);
  v10 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v12 = &v21 - v11;
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325D68, &qword_23DE07D40);
  sub_23DDD2124(&qword_27E325D70, &qword_27E325D68, &qword_23DE07D40, sub_23DDD1E88);
  sub_23DE057A8();
  v13 = a1[1];
  v26 = *a1;
  v27 = v13;
  v14 = sub_23DDC7D28(&qword_27E325D50, &qword_27E325D48, &qword_23DE07D30, MEMORY[0x277CDE580]);
  v15 = sub_23DDD1E2C();
  v16 = MEMORY[0x277D837D0];
  sub_23DE05838();
  (*(v7 + 8))(v9, v6);
  v18 = v22;
  v17 = v23;
  (*(v22 + 104))(v5, *MEMORY[0x277CDDDC0], v23);
  v26 = v6;
  v27 = v16;
  v28 = v14;
  v29 = v15;
  swift_getOpaqueTypeConformance2();
  v19 = v21;
  sub_23DE05858();
  (*(v18 + 8))(v5, v17);
  return (*(v10 + 8))(v12, v19);
}

uint64_t sub_23DDCFF80(uint64_t a1)
{
  v2 = type metadata accessor for GroupedParameterConfigurationView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = *(a1 + 16);
  swift_getKeyPath();
  sub_23DDD2264(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23DDD22C8(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325E10, &unk_23DE091F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325D80, &qword_23DE07D48);
  sub_23DDC7D28(&qword_27E325E18, &qword_27E325E10, &unk_23DE091F0, MEMORY[0x277D83980]);
  sub_23DDD2344();
  sub_23DDD1E88();
  return sub_23DE05938();
}

void sub_23DDD0140(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 title];
  if (v3)
  {
    v4 = v3;
    v5 = sub_23DE05A48();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_23DDD01A8(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_23DE05A18();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setTitle_];
}

uint64_t sub_23DDD0218@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v25 = sub_23DE05618();
  v5 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325D88, &qword_23DE07D50);
  v8 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = &v23 - v9;
  v11 = *a1;
  v27 = a2;
  v28 = v11;
  v12 = sub_23DE05718();
  v31 = 1;
  sub_23DDD0820(v11, &v32);
  v40 = v33[3];
  v41 = v33[4];
  v42 = v33[5];
  v43 = *&v33[6];
  v36 = v32;
  v37 = v33[0];
  v38 = v33[1];
  v39 = v33[2];
  v44[0] = v32;
  v44[1] = v33[0];
  v44[2] = v33[1];
  v44[3] = v33[2];
  v44[4] = v33[3];
  v44[5] = v33[4];
  v44[6] = v33[5];
  v45 = *&v33[6];
  sub_23DDD2850(&v36, &v29, &qword_27E325E28, &qword_23DE07DD8);
  sub_23DDC925C(v44, &qword_27E325E28, &qword_23DE07DD8);
  *(&v30[4] + 7) = v40;
  *(&v30[5] + 7) = v41;
  *(&v30[6] + 7) = v42;
  *(v30 + 7) = v36;
  *(&v30[1] + 7) = v37;
  *(&v30[2] + 7) = v38;
  *(&v30[7] + 7) = v43;
  *(&v30[3] + 7) = v39;
  v13 = v31;
  v14 = sub_23DE05898();
  KeyPath = swift_getKeyPath();
  *(&v33[4] + 1) = v30[4];
  *(&v33[5] + 1) = v30[5];
  *(&v33[6] + 1) = v30[6];
  v33[7] = *(&v30[6] + 15);
  *(v33 + 1) = v30[0];
  *(&v33[1] + 1) = v30[1];
  *(&v33[2] + 1) = v30[2];
  v32 = v12;
  LOBYTE(v33[0]) = v13;
  *(&v33[3] + 1) = v30[3];
  v34 = KeyPath;
  v35 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325DA0, &qword_23DE07D58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325DD0, &qword_23DE07D70);
  sub_23DDD2040();
  sub_23DDD2124(&qword_27E325DC8, &qword_27E325DD0, &qword_23DE07D70, sub_23DDD21A0);
  sub_23DE05948();
  v16 = v25;
  (*(v5 + 104))(v7, *MEMORY[0x277CDF350], v25);
  sub_23DDD1F7C();
  v17 = v26;
  v18 = v24;
  sub_23DE05848();
  (*(v5 + 8))(v7, v16);
  (*(v8 + 8))(v10, v18);
  v19 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325D80, &qword_23DE07D48) + 36));
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325E00, &unk_23DE07D88) + 28);
  v21 = sub_23DE057D8();
  (*(*(v21 - 8) + 56))(&v19[v20], 1, 1, v21);
  result = swift_getKeyPath();
  *v19 = result;
  return result;
}

uint64_t sub_23DDD0624(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for GroupedParameterConfigurationView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = [a2 values];
  sub_23DDC91D0(0, &qword_2812184C8, 0x277D7A128);
  v8 = sub_23DE05AF8();

  v12[1] = v8;
  swift_getKeyPath();
  sub_23DDD2264(a1, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_23DDD22C8(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325CD8, &qword_23DE07BB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325DE0, &qword_23DE07D78);
  sub_23DDC7D28(&qword_27E325E40, &qword_27E325CD8, &qword_23DE07BB8, MEMORY[0x277D83980]);
  sub_23DDD21A0();
  return sub_23DE05938();
}

uint64_t sub_23DDD0820@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 image];
  v5 = 0;
  if (v4 && (v6 = v4, v7 = [v4 platformImage], v6, v7))
  {
    v8 = v7;
    v48 = sub_23DE058A8();
    sub_23DE05968();
    v5 = v9;
    v11 = v10;
    v12 = sub_23DE05778();
    sub_23DE05608();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = [a1 title];
  }

  else
  {
    v48 = 0;
    v11 = 0;
    v14 = 0;
    v16 = 0;
    v18 = 0;
    v20 = 0;
    v21 = [a1 title];
  }

  v22 = v21;
  if (v22)
  {
    v23 = v22;
    sub_23DE05A48();
  }

  sub_23DDD1E2C();
  v24 = sub_23DE057F8();
  v26 = v25;
  v28 = v27;
  sub_23DE05798();
  v29 = sub_23DE057E8();
  v31 = v30;
  v33 = v32;

  sub_23DDD2470(v24, v26, v28 & 1);

  sub_23DE05788();
  v34 = sub_23DE057B8();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_23DDD2470(v29, v31, v33 & 1);

  *&v49 = v48;
  *(&v49 + 1) = v46;
  *&v50 = v46;
  *(&v50 + 1) = v5;
  *&v51 = v11;
  *(&v51 + 1) = v47;
  *&v52 = v14;
  *(&v52 + 1) = v16;
  *&v53 = v18;
  *(&v53 + 1) = v20;
  v54 = 0;
  LOBYTE(v60) = 0;
  v58 = v52;
  v59 = v53;
  v55 = v49;
  v56 = v50;
  v57 = v51;
  v41 = v50;
  v42 = v51;
  *a2 = v49;
  *(a2 + 16) = v41;
  v43 = v59;
  v44 = v60;
  *(a2 + 48) = v58;
  *(a2 + 64) = v43;
  *(a2 + 32) = v42;
  *(a2 + 80) = v44;
  *(a2 + 88) = v34;
  *(a2 + 96) = v36;
  *(a2 + 104) = v38 & 1;
  *(a2 + 112) = v40;
  sub_23DDD2850(&v49, v61, &qword_27E325E38, qword_23DE07E48);
  sub_23DDD2480(v34, v36, v38 & 1);

  sub_23DDD2470(v34, v36, v38 & 1);

  v61[0] = v48;
  v61[1] = v46;
  v61[2] = v46;
  v61[3] = v5;
  v61[4] = v11;
  v61[5] = v47;
  v61[6] = v14;
  v61[7] = v16;
  v61[8] = v18;
  v61[9] = v20;
  v62 = 0;
  return sub_23DDC925C(v61, &qword_27E325E38, qword_23DE07E48);
}

void sub_23DDD0B3C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = sub_23DE05A48();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_23DDD0B94@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for GroupedParameterConfigurationView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = *a1;
  sub_23DDD2264(a2, &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_23DDD22C8(&v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10);
  *(v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  v17 = v9;
  v18 = a2;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325E48, &qword_23DE07E90);
  sub_23DDC7D28(&qword_27E325E50, &qword_27E325E48, &qword_23DE07E90, MEMORY[0x277CE1138]);
  sub_23DE05928();
  v13 = sub_23DE05728();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325DE0, &qword_23DE07D78);
  v15 = (a3 + *(result + 36));
  *v15 = v13;
  v15[1] = sub_23DDD1C08;
  v15[2] = 0;
  return result;
}

uint64_t sub_23DDD0D68(uint64_t a1, void *a2)
{
  v4 = sub_23DE05658();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 24);
  v10[1] = a2;
  v8 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325E88, &qword_23DE07EC8);
  sub_23DE05908();
  (*(a1 + 40))(a2);
  sub_23DDCFA1C(v7);
  sub_23DE05648();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_23DDD0E8C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_23DE05718();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325E58, &qword_23DE07E98);
  return sub_23DDD0EF4(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_23DDD0EF4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325E60, &qword_23DE07EA0);
  MEMORY[0x28223BE20](v90);
  v86 = &v83 - v6;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325E68, &qword_23DE07EA8);
  MEMORY[0x28223BE20](v88);
  v8 = &v83 - v7;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325E70, &qword_23DE07EB0);
  v85 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v84 = &v83 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325E78, &qword_23DE07EB8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v91 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v92 = &v83 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325E80, &qword_23DE07EC0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v83 - v15;
  v17 = [a1 image];
  if (v17 && (v18 = v17, v19 = [v17 UIImage], v18, v19))
  {
    v83 = sub_23DE05738();
    LOBYTE(v123[0]) = 1;
    v20 = v19;
    sub_23DE058A8();
    v21 = *MEMORY[0x277CE1020];
    v22 = sub_23DE058D8();
    v23 = *(v22 - 8);
    v87 = a2;
    v24 = v23;
    (*(v23 + 104))(v16, v21, v22);
    (*(v24 + 56))(v16, 0, 1, v22);
    v25 = sub_23DE058C8();

    sub_23DDC925C(v16, &qword_27E325E80, &qword_23DE07EC0);
    v26 = sub_23DE05878();
    KeyPath = swift_getKeyPath();
    sub_23DE05968();
    v29 = v28;
    v31 = v30;
    LOBYTE(v24) = v123[0];
    sub_23DE05958();
    sub_23DE05688();
    v32 = sub_23DE05778();
    sub_23DE05608();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;

    LOBYTE(v93) = 0;
    v129 = v83;
    LOBYTE(v130) = v24;
    a2 = v87;
    *(&v130 + 1) = v25;
    *&v131 = KeyPath;
    *(&v131 + 1) = v26;
    v132 = vdupq_n_s64(0x3FF6666666666666uLL);
    *&v133 = v29;
    *(&v133 + 1) = v31;
    v138 = v111;
    v139 = v112;
    v140 = v113;
    v134 = v107;
    v135 = v108;
    v136 = v109;
    v137 = v110;
    LOBYTE(v141) = v32;
    *(&v141 + 1) = v34;
    *&v142[0] = v36;
    *(&v142[0] + 1) = v38;
    *&v142[1] = v40;
    BYTE8(v142[1]) = 0;
    nullsub_1();
    v157 = v141;
    v158[0] = v142[0];
    *(v158 + 9) = *(v142 + 9);
    v153 = v137;
    v154 = v138;
    v156 = v140;
    v155 = v139;
    v149 = v133;
    v150 = v134;
    v152 = v136;
    v151 = v135;
    v145 = v129;
    v146 = v130;
    v148 = v132;
    v147 = v131;
  }

  else
  {
    sub_23DDD2718(&v145);
  }

  v87 = sub_23DE05738();
  LOBYTE(v129) = 1;
  sub_23DDD19A0(a1, v144);
  *&v143[7] = v144[0];
  *&v143[23] = v144[1];
  *&v143[39] = v144[2];
  *&v143[55] = v144[3];
  v41 = v129;
  v42 = [a1 identifier];
  v43 = sub_23DE05A48();
  v45 = v44;

  v129 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325E88, &qword_23DE07EC8);
  sub_23DE058F8();
  v46 = v107;
  if (!v107)
  {

    goto LABEL_12;
  }

  v47 = [v107 identifier];

  v48 = sub_23DE05A48();
  v50 = v49;

  if (v43 != v48 || v45 != v50)
  {
    v51 = sub_23DE06318();

    if (v51)
    {
      goto LABEL_11;
    }

LABEL_12:
    *&v129 = sub_23DE058B8();
    v59 = MEMORY[0x277CE1088];
    v60 = MEMORY[0x277CE1078];
    v61 = v86;
    sub_23DE05868();

    sub_23DDD2850(v61, v8, &qword_27E325E60, &qword_23DE07EA0);
    swift_storeEnumTagMultiPayload();
    *&v129 = v59;
    *(&v129 + 1) = v60;
    swift_getOpaqueTypeConformance2();
    sub_23DDD2740();
    sub_23DE05758();
    sub_23DDC925C(v61, &qword_27E325E60, &qword_23DE07EA0);
    goto LABEL_13;
  }

LABEL_11:
  *&v129 = sub_23DE058B8();
  v52 = MEMORY[0x277CE1088];
  v53 = MEMORY[0x277CE1078];
  v54 = v41;
  v55 = v84;
  sub_23DE05868();

  v56 = v85;
  v57 = v89;
  (*(v85 + 16))(v8, v55, v89);
  swift_storeEnumTagMultiPayload();
  *&v129 = v52;
  *(&v129 + 1) = v53;
  swift_getOpaqueTypeConformance2();
  sub_23DDD2740();
  sub_23DE05758();
  v58 = v55;
  v41 = v54;
  (*(v56 + 8))(v58, v57);
LABEL_13:
  v105 = v157;
  v106[0] = v158[0];
  *(v106 + 9) = *(v158 + 9);
  v101 = v153;
  v102 = v154;
  v103 = v155;
  v104 = v156;
  v97 = v149;
  v98 = v150;
  v99 = v151;
  v100 = v152;
  v93 = v145;
  v94 = v146;
  v95 = v147;
  v96 = v148;
  v62 = v91;
  sub_23DDD2850(v92, v91, &qword_27E325E78, &qword_23DE07EB8);
  v63 = v106[0];
  v119 = v105;
  v120[0] = v106[0];
  *(v120 + 9) = *(v106 + 9);
  v64 = v101;
  v65 = v102;
  v115 = v101;
  v116 = v102;
  v67 = v103;
  v66 = v104;
  v117 = v103;
  v118 = v104;
  v68 = v97;
  v69 = v98;
  v111 = v97;
  v112 = v98;
  v71 = v99;
  v70 = v100;
  v113 = v99;
  v114 = v100;
  v72 = v93;
  v73 = v94;
  v107 = v93;
  v108 = v94;
  v75 = v95;
  v74 = v96;
  v109 = v95;
  v110 = v96;
  *(a3 + 192) = v105;
  *(a3 + 208) = v63;
  *(a3 + 217) = *(v106 + 9);
  *(a3 + 128) = v64;
  *(a3 + 144) = v65;
  *(a3 + 160) = v67;
  *(a3 + 176) = v66;
  *(a3 + 64) = v68;
  *(a3 + 80) = v69;
  *(a3 + 96) = v71;
  *(a3 + 112) = v70;
  *a3 = v72;
  *(a3 + 16) = v73;
  *(a3 + 32) = v75;
  *(a3 + 48) = v74;
  v76 = v87;
  v121[0] = v87;
  v121[1] = 0;
  v122[0] = v41;
  *&v122[1] = *v143;
  *&v122[17] = *&v143[16];
  *&v122[33] = *&v143[32];
  *&v122[49] = *&v143[48];
  v77 = *&v143[63];
  *&v122[64] = *&v143[63];
  v78 = *v122;
  *(a3 + 240) = v87;
  *(a3 + 256) = v78;
  v79 = *&v122[16];
  v80 = *&v122[48];
  *(a3 + 288) = *&v122[32];
  *(a3 + 304) = v80;
  *(a3 + 272) = v79;
  *(a3 + 320) = v77;
  *(a3 + 328) = 0;
  *(a3 + 336) = 1;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325EA0, &qword_23DE07ED0);
  sub_23DDD2850(v62, a3 + *(v81 + 80), &qword_27E325E78, &qword_23DE07EB8);
  sub_23DDD2850(&v107, &v129, &qword_27E325EA8, &qword_23DE07ED8);
  sub_23DDD2850(v121, &v129, &qword_27E325EB0, &qword_23DE07EE0);
  sub_23DDC925C(v92, &qword_27E325E78, &qword_23DE07EB8);
  sub_23DDC925C(v62, &qword_27E325E78, &qword_23DE07EB8);
  v123[0] = v76;
  v123[1] = 0;
  v124 = v41;
  v126 = *&v143[16];
  v127 = *&v143[32];
  *v128 = *&v143[48];
  *&v128[15] = *&v143[63];
  v125 = *v143;
  sub_23DDC925C(v123, &qword_27E325EB0, &qword_23DE07EE0);
  v141 = v105;
  v142[0] = v106[0];
  *(v142 + 9) = *(v106 + 9);
  v137 = v101;
  v138 = v102;
  v139 = v103;
  v140 = v104;
  v133 = v97;
  v134 = v98;
  v135 = v99;
  v136 = v100;
  v129 = v93;
  v130 = v94;
  v131 = v95;
  v132 = v96;
  return sub_23DDC925C(&v129, &qword_27E325EA8, &qword_23DE07ED8);
}

uint64_t sub_23DDD19A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 localizedTitle];
  sub_23DE05A48();

  sub_23DDD1E2C();
  v5 = sub_23DE057F8();
  v7 = v6;
  v9 = v8;
  sub_23DE05898();
  v10 = sub_23DE057C8();
  v32 = v11;
  v31 = v12;
  v14 = v13;

  sub_23DDD2470(v5, v7, v9 & 1);

  v15 = [a1 localizedSubtitle];
  if (v15)
  {
    v16 = v15;
    sub_23DE05A48();

    v17 = sub_23DE057F8();
    v19 = v18;
    v21 = v20;
    sub_23DE05888();
    v22 = sub_23DE057C8();
    v24 = v23;
    v30 = v25;
    v27 = v26;

    sub_23DDD2470(v17, v19, v21 & 1);

    v28 = v30 & 1;
    sub_23DDD2480(v22, v24, v30 & 1);
  }

  else
  {
    v22 = 0;
    v24 = 0;
    v28 = 0;
    v27 = 0;
  }

  sub_23DDD2480(v10, v32, v31 & 1);

  sub_23DDD28B8(v22, v24, v28, v27);
  sub_23DDD28FC(v22, v24, v28, v27);
  *a2 = v10;
  *(a2 + 8) = v32;
  *(a2 + 16) = v31 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = v22;
  *(a2 + 40) = v24;
  *(a2 + 48) = v28;
  *(a2 + 56) = v27;
  sub_23DDD28FC(v22, v24, v28, v27);
  sub_23DDD2470(v10, v32, v31 & 1);
}

uint64_t sub_23DDD1C54@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325D38, &qword_23DE07D20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E325D40, &qword_23DE07D28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E325D48, &qword_23DE07D30);
  sub_23DDC7D28(&qword_27E325D50, &qword_27E325D48, &qword_23DE07D30, MEMORY[0x277CDE580]);
  sub_23DDD1E2C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_23DE05668();
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325D60, &qword_23DE07D38) + 36);
  v3 = *MEMORY[0x277CDF3C0];
  v4 = sub_23DE05628();
  v5 = *(v4 - 8);
  (*(v5 + 104))(a1 + v2, v3, v4);
  return (*(v5 + 56))(a1 + v2, 0, 1, v4);
}

unint64_t sub_23DDD1E2C()
{
  result = qword_27E325D58;
  if (!qword_27E325D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E325D58);
  }

  return result;
}

unint64_t sub_23DDD1E88()
{
  result = qword_27E325D78;
  if (!qword_27E325D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E325D80, &qword_23DE07D48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E325D88, &qword_23DE07D50);
    sub_23DDD1F7C();
    swift_getOpaqueTypeConformance2();
    sub_23DDC7D28(&qword_27E325DF8, &qword_27E325E00, &unk_23DE07D88, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E325D78);
  }

  return result;
}

unint64_t sub_23DDD1F7C()
{
  result = qword_27E325D90;
  if (!qword_27E325D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E325D88, &qword_23DE07D50);
    sub_23DDD2040();
    sub_23DDD2124(&qword_27E325DC8, &qword_27E325DD0, &qword_23DE07D70, sub_23DDD21A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E325D90);
  }

  return result;
}

unint64_t sub_23DDD2040()
{
  result = qword_27E325D98;
  if (!qword_27E325D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E325DA0, &qword_23DE07D58);
    sub_23DDC7D28(&qword_27E325DA8, &qword_27E325DB0, &qword_23DE07D60, MEMORY[0x277CE1138]);
    sub_23DDC7D28(&qword_27E325DB8, &qword_27E325DC0, &qword_23DE07D68, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E325D98);
  }

  return result;
}

uint64_t sub_23DDD2124(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_23DDD21A0()
{
  result = qword_27E325DD8;
  if (!qword_27E325DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E325DE0, &qword_23DE07D78);
    sub_23DDC7D28(&qword_27E325DE8, &qword_27E325DF0, &qword_23DE07D80, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E325DD8);
  }

  return result;
}

uint64_t sub_23DDD2264(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupedParameterConfigurationView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DDD22C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupedParameterConfigurationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23DDD2344()
{
  result = qword_27E325E20;
  if (!qword_27E325E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E3261D0, &qword_23DE07DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E325E20);
  }

  return result;
}

uint64_t sub_23DDD23C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325E30, &qword_23DE07E40);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23DDD2850(a1, &v5 - v3, &qword_27E325E30, &qword_23DE07E40);
  return sub_23DE056D8();
}

uint64_t sub_23DDD2470(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_23DDD2480(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for GroupedParameterConfigurationView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325E08, &unk_23DE07DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23DE05658();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23DDD25F0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for GroupedParameterConfigurationView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_23DDD2684()
{
  v1 = *(type metadata accessor for GroupedParameterConfigurationView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_23DDD0D68(v0 + v2, v3);
}

double sub_23DDD2718(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 217) = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_23DDD2740()
{
  result = qword_27E325E90;
  if (!qword_27E325E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E325E60, &qword_23DE07EA0);
    swift_getOpaqueTypeConformance2();
    sub_23DDD27FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E325E90);
  }

  return result;
}

unint64_t sub_23DDD27FC()
{
  result = qword_27E325E98;
  if (!qword_27E325E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E325E98);
  }

  return result;
}

uint64_t sub_23DDD2850(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23DDD28B8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_23DDD2480(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_23DDD28FC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_23DDD2470(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_23DDD2940()
{
  result = qword_27E325EB8;
  if (!qword_27E325EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E325D60, &qword_23DE07D38);
    sub_23DDC7D28(&qword_27E325EC0, &qword_27E325EC8, &qword_23DE07EE8, MEMORY[0x277CDD978]);
    sub_23DDC7D28(&qword_27E325ED0, &qword_27E325ED8, &unk_23DE07EF0, MEMORY[0x277CE0800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E325EB8);
  }

  return result;
}

unint64_t ConfigurationViewController.Mode.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_23DDD2A38()
{
  v1 = *v0;
  sub_23DE063A8();
  MEMORY[0x23EF00D40](v1);
  return sub_23DE063C8();
}

uint64_t sub_23DDD2AAC(uint64_t a1)
{
  v2 = *v1;
  sub_23DE063A8();
  MEMORY[0x23EF00D40](v2);
  return sub_23DE063C8();
}

unint64_t *sub_23DDD2AF0@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id ConfigurationViewController.init(mode:dismissHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___BCConfigurationViewController_viewModel] = 0;
  *&v3[OBJC_IVAR___BCConfigurationViewController_selectorViewController] = 0;
  *&v3[OBJC_IVAR___BCConfigurationViewController_welcomeView] = 0;
  *&v3[OBJC_IVAR___BCConfigurationViewController_actionDetailsView] = 0;
  *&v3[OBJC_IVAR___BCConfigurationViewController_sceneParameterOverrides] = xmmword_23DE07F00;
  *&v3[OBJC_IVAR___BCConfigurationViewController_cancellableBag] = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR___BCConfigurationViewController_shortcutConfigurationViewController] = 0;
  *&v3[OBJC_IVAR___BCConfigurationViewController_originalNavigationBarTintColor] = 0;
  v3[OBJC_IVAR___BCConfigurationViewController_isAppeared] = 0;
  *&v3[OBJC_IVAR___BCConfigurationViewController_mode] = a1;
  v4 = &v3[OBJC_IVAR___BCConfigurationViewController_dismissHandler];
  *v4 = a2;
  v4[1] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for ConfigurationViewController();
  return objc_msgSendSuper2(&v6, sel_initWithNibName_bundle_, 0, 0);
}

void sub_23DDD2CF4()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ConfigurationViewController();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  sub_23DDD34BC();
  v1 = [objc_allocWithZone(MEMORY[0x277D75788]) init];
  [v1 configureWithTransparentBackground];
  v2 = [v0 navigationItem];
  [v2 setStandardAppearance_];

  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() blackColor];
    [v4 setBackgroundColor_];

    [v0 setOverrideUserInterfaceStyle_];
    v6 = [v0 view];
    if (v6)
    {
      v7 = v6;
      [v6 setAccessibilityIgnoresInvertColors_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_23DDD2E94(char a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for ConfigurationViewController();
  objc_msgSendSuper2(&v12, sel_viewWillAppear_, a1 & 1);
  if (!*&v1[OBJC_IVAR___BCConfigurationViewController_mode])
  {
    v3 = [v1 navigationController];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 navigationBar];

      v6 = [v5 tintColor];
    }

    else
    {
      v6 = 0;
    }

    v7 = *&v1[OBJC_IVAR___BCConfigurationViewController_originalNavigationBarTintColor];
    *&v1[OBJC_IVAR___BCConfigurationViewController_originalNavigationBarTintColor] = v6;

    v8 = [v1 navigationController];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 navigationBar];

      v11 = [objc_opt_self() whiteColor];
      [v10 setTintColor_];
    }
  }
}

void sub_23DDD3038(char a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for ConfigurationViewController();
  objc_msgSendSuper2(&v10, sel_viewWillDisappear_, a1 & 1);
  if (*&v2[OBJC_IVAR___BCConfigurationViewController_viewModel])
  {

    sub_23DDEE5A8();

    if (!*&v2[OBJC_IVAR___BCConfigurationViewController_mode])
    {
      v4 = [v2 navigationController];
      if (v4)
      {
        v5 = v4;
        v6 = [v4 navigationBar];

        v7 = *&v2[OBJC_IVAR___BCConfigurationViewController_originalNavigationBarTintColor];
        if (v7)
        {
          v8 = *&v2[OBJC_IVAR___BCConfigurationViewController_originalNavigationBarTintColor];
        }

        else
        {
          v8 = [objc_opt_self() systemBlueColor];
          v7 = 0;
        }

        v9 = v7;
        [v6 setTintColor_];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_23DDD31B4(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for ConfigurationViewController();
  objc_msgSendSuper2(&v10, sel_viewDidAppear_, a1 & 1);
  v1[OBJC_IVAR___BCConfigurationViewController_isAppeared] = 1;
  v3 = *&v1[OBJC_IVAR___BCConfigurationViewController_shortcutConfigurationViewController];
  if (v3)
  {
    [v3 loadViewIfNeeded];
  }

  if (!*&v1[OBJC_IVAR___BCConfigurationViewController_mode])
  {
    v4 = [v1 navigationController];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 navigationBar];

      v7 = [objc_opt_self() whiteColor];
      [v6 setTintColor_];
    }

    v8 = [v1 view];
    if (v8)
    {
      v9 = v8;
      [v8 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_23DDD3340()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for ConfigurationViewController();
  objc_msgSendSuper2(&v5, sel_viewDidLayoutSubviews);
  if (!*&v0[OBJC_IVAR___BCConfigurationViewController_mode])
  {
    v1 = [v0 navigationController];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 navigationBar];

      v4 = [objc_opt_self() whiteColor];
      [v3 setTintColor_];
    }
  }
}

void sub_23DDD3458(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (v1 + OBJC_IVAR___BCConfigurationViewController_sceneParameterOverrides);
  v5 = *(v1 + OBJC_IVAR___BCConfigurationViewController_sceneParameterOverrides);
  v6 = *(v1 + OBJC_IVAR___BCConfigurationViewController_sceneParameterOverrides + 8);
  *v4 = v3;
  v4[1] = v2;

  sub_23DDD6454(v5, v6);

  sub_23DDD4FB0();
}

uint64_t sub_23DDD34BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326008, &qword_23DE08090);
  v35 = *(v1 - 8);
  v36 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v33 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v34 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326010, &qword_23DE08098);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326018, &qword_23DE080A0);
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x28223BE20](v8);
  v39 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326020, &qword_23DE080A8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  v14 = *&v0[OBJC_IVAR___BCConfigurationViewController_mode] != 0;
  v15 = v0;
  sub_23DDD3F14(v15);
  v44[3] = &type metadata for ConfigurationViewController.Router;
  v44[4] = &off_2850189A0;
  v44[0] = swift_allocObject();
  sub_23DDD6B7C(&v45, v44[0] + 16);
  type metadata accessor for ConfigurationViewModel();
  v16 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v44, &type metadata for ConfigurationViewController.Router);
  swift_cvw_initWithCopy();
  v17 = sub_23DDD6498(v14, v43, v16);
  sub_23DDD70F0(&v45);
  __swift_destroy_boxed_opaque_existential_1(v44);
  v18 = OBJC_IVAR___BCConfigurationViewController_viewModel;
  *&v15[OBJC_IVAR___BCConfigurationViewController_viewModel] = v17;

  *&v15[OBJC_IVAR____TtC27ActionButtonConfigurationUI37ScreenViewModelTrackingViewController_viewModel] = v17;

  sub_23DDF8768();

  v42 = v18;
  v20 = *&v15[v18];
  if (!v20)
  {
    __break(1u);
    goto LABEL_7;
  }

  v44[0] = *(*(v20 + 144) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326028, &qword_23DE080B0);
  sub_23DDC7D28(&qword_27E326030, &qword_27E326028, &qword_23DE080B0, MEMORY[0x277CBCE48]);
  v44[0] = sub_23DE05498();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326038, &qword_23DE080B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326040, &qword_23DE080C0);
  sub_23DDC7D28(&qword_27E326048, &qword_27E326038, &qword_23DE080B8, MEMORY[0x277CBCD90]);
  sub_23DE054A8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_23DDC7D28(&qword_27E326050, &qword_27E326020, &qword_23DE080A8, MEMORY[0x277CBCB10]);
  sub_23DE055E8();

  (*(v11 + 8))(v13, v10);
  swift_beginAccess();
  sub_23DE053D8();
  swift_endAccess();

  v21 = *&v15[v42];
  if (!v21)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v44[0] = *(*(v21 + 152) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326058, &qword_23DE080C8);
  sub_23DDC7D28(&qword_27E326060, &qword_27E326058, &qword_23DE080C8, MEMORY[0x277CBCE48]);
  v44[0] = sub_23DE05498();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326068, &unk_23DE080D0);
  sub_23DDC7D28(&qword_27E326070, &qword_27E326068, &unk_23DE080D0, MEMORY[0x277CBCD90]);
  sub_23DE054A8();

  sub_23DDC7D28(&qword_27E326078, &qword_27E326010, &qword_23DE08098, MEMORY[0x277CBCB10]);
  v22 = v38;
  v23 = v39;
  sub_23DE055A8();
  (*(v37 + 8))(v7, v22);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_23DDC7D28(&qword_27E326080, &qword_27E326018, &qword_23DE080A0, MEMORY[0x277CBCBE0]);
  v24 = v41;
  sub_23DE055E8();

  (*(v40 + 8))(v23, v24);
  swift_beginAccess();
  sub_23DE053D8();
  swift_endAccess();

  v25 = *&v15[v42];
  if (!v25)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v44[0] = *(*(v25 + 16) + 24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326088, &unk_23DE091C0);
  v40 = sub_23DDC7D28(&qword_27E326090, &qword_27E326088, &unk_23DE091C0, MEMORY[0x277CBCE48]);
  v41 = v26;
  v44[0] = sub_23DE05498();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326098, &qword_23DE080E0);
  sub_23DDC7D28(&qword_27E3260A0, &qword_27E326098, &qword_23DE080E0, MEMORY[0x277CBCD90]);
  v28 = v34;
  v39 = v27;
  sub_23DE055A8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_23DDC7D28(&qword_27E3260A8, &qword_27E326008, &qword_23DE08090, MEMORY[0x277CBCBE0]);
  v29 = v36;
  sub_23DE055E8();

  v30 = *(v35 + 8);
  v30(v28, v29);
  swift_beginAccess();
  sub_23DE053D8();
  swift_endAccess();

  v31 = *&v15[v42];
  if (v31)
  {
    v44[0] = *(*(v31 + 168) + 24);
    v44[0] = sub_23DE05498();
    v32 = v33;
    sub_23DE055A8();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_23DE055E8();

    v30(v32, v29);
    swift_beginAccess();
    sub_23DE053D8();
    swift_endAccess();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_23DDD3F14(char *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  if (*&a1[OBJC_IVAR___BCConfigurationViewController_mode] == 1)
  {
    v3 = MEMORY[0x277D7D818];
  }

  else
  {
    v3 = MEMORY[0x277D7D810];
  }

  v4 = *v3;
  v5 = [objc_allocWithZone(type metadata accessor for ShortcutsConfigurationViewController()) initWithConfigurationContext_];

  v6 = *&a1[OBJC_IVAR___BCConfigurationViewController_shortcutConfigurationViewController];
  *&a1[OBJC_IVAR___BCConfigurationViewController_shortcutConfigurationViewController] = v5;
}

void sub_23DDD3FD8(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR___BCConfigurationViewController_selectorViewController);
    if (v5 && (v6 = *(Strong + OBJC_IVAR___BCConfigurationViewController_actionDetailsView)) != 0)
    {
      v7 = v5;
      v8 = v6;

      if (v2 >> 62)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325FE8, &qword_23DE08080);
        sub_23DE06218();
      }

      else
      {
        sub_23DE06328();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325FE8, &qword_23DE08080);
      v9 = sub_23DE05AE8();

      if (v4[OBJC_IVAR___BCConfigurationViewController_isAppeared] != 1)
      {
        v11 = 0;
        goto LABEL_13;
      }

      v10 = *&v4[OBJC_IVAR___BCConfigurationViewController_viewModel];
      if (v10)
      {
        v11 = *(*(v10 + 168) + 16);
LABEL_13:
        [v5 updateActionItems:v9 animated:v11];

        v14 = sub_23DDD41A0(v2);
        sub_23DE026B0(v14);

LABEL_14:

        return;
      }
    }

    else
    {
      v12 = *(Strong + OBJC_IVAR___BCConfigurationViewController_viewModel);
      if (v12)
      {
        v13 = *(v12 + 152);
        if ((*(v13 + 24) & 1) == 0)
        {
          sub_23DDD47CC(v2, *(v13 + 16));
        }

        goto LABEL_14;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void *sub_23DDD41A0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_23DE06038();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v35 = MEMORY[0x277D84F90];
  result = sub_23DDF3D9C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v35;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x23EF00A60](v5, a1);
        v7 = type metadata accessor for ActionSelectorItem();
        v33 = v7;
        v34 = &off_285019058;
        v32[0] = v6;
        v35 = v3;
        v9 = *(v3 + 16);
        v8 = *(v3 + 24);
        v10 = v7;
        if (v9 >= v8 >> 1)
        {
          sub_23DDF3D9C((v8 > 1), v9 + 1, 1);
          v10 = v33;
        }

        ++v5;
        v11 = __swift_mutable_project_boxed_opaque_existential_1(v32, v10);
        MEMORY[0x28223BE20](v11);
        v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v14 + 16))(v13);
        v15 = *v13;
        v30 = v7;
        v31 = &off_285019058;
        *&v29 = v15;
        v3 = v35;
        *(v35 + 16) = v9 + 1;
        sub_23DDD6F30(&v29, v3 + 40 * v9 + 32);
        __swift_destroy_boxed_opaque_existential_1(v32);
      }

      while (v2 != v5);
    }

    else
    {
      v16 = (a1 + 32);
      v17 = type metadata accessor for ActionSelectorItem();
      do
      {
        v18 = *v16;
        v33 = v17;
        v34 = &off_285019058;
        v32[0] = v18;
        v35 = v3;
        v20 = *(v3 + 16);
        v19 = *(v3 + 24);
        v21 = v18;
        v22 = v17;
        if (v20 >= v19 >> 1)
        {
          sub_23DDF3D9C((v19 > 1), v20 + 1, 1);
          v22 = v33;
        }

        v23 = __swift_mutable_project_boxed_opaque_existential_1(v32, v22);
        MEMORY[0x28223BE20](v23);
        v25 = (&v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v26 + 16))(v25);
        v27 = *v25;
        v30 = v17;
        v31 = &off_285019058;
        *&v29 = v27;
        v3 = v35;
        *(v35 + 16) = v20 + 1;
        sub_23DDD6F30(&v29, v3 + 40 * v20 + 32);
        __swift_destroy_boxed_opaque_existential_1(v32);
        ++v16;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_23DDD44CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

void sub_23DDD44E0(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR___BCConfigurationViewController_selectorViewController);
    if (v5 && (v6 = *(Strong + OBJC_IVAR___BCConfigurationViewController_actionDetailsView)) != 0)
    {
      if (*(Strong + OBJC_IVAR___BCConfigurationViewController_isAppeared) == 1)
      {
        v7 = *(Strong + OBJC_IVAR___BCConfigurationViewController_viewModel);
        if (!v7)
        {
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v8 = *(*(v7 + 168) + 16);
      }

      else
      {
        v8 = 0;
      }

      v12 = v6;
      v11 = v5;
      [v11 selectActionItemWithIndex:v2 animated:v8];
      v13 = OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_pageControl;
      v14 = *&v12[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_pageControl];
      if (v14)
      {
        if ([v14 currentPage] == v2)
        {
LABEL_16:

LABEL_17:
          return;
        }

        v15 = *&v12[v13];
        if (v15)
        {
          [v15 setCurrentPage_];
          [v12 setNeedsLayout];
          goto LABEL_16;
        }

LABEL_22:
        __break(1u);
        return;
      }
    }

    else
    {
      v9 = *(Strong + OBJC_IVAR___BCConfigurationViewController_viewModel);
      if (v9)
      {
        if (*(*(v9 + 144) + 16))
        {

          sub_23DDD47CC(v10, v2);
        }

        v11 = v4;
        goto LABEL_17;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }
}

void sub_23DDD465C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR___BCConfigurationViewController_selectorViewController);
    if (v4)
    {
      v5 = *(Strong + OBJC_IVAR___BCConfigurationViewController_viewModel);
      if (!v5)
      {
        __break(1u);
        return;
      }

      v6 = *(*(v5 + 16) + 16);
      v7 = v4;
      v8 = v7;
      v9 = &selRef_resumeSceneUpdates;
      if (!v6)
      {
        v9 = &selRef_pauseSceneUpdates;
      }

      [v7 *v9];
    }
  }
}

void sub_23DDD470C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR___BCConfigurationViewController_selectorViewController);
    if (v4)
    {
      v5 = v4;
      v6 = [v5 view];
      if (v6)
      {
        v7 = *&v3[OBJC_IVAR___BCConfigurationViewController_viewModel];
        if (v7)
        {
          v8 = v6;
          [v6 setUserInteractionEnabled_];

          goto LABEL_6;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

LABEL_6:
  }
}

void sub_23DDD47CC(unint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR___BCConfigurationViewController_viewModel;
  v4 = *&v2[OBJC_IVAR___BCConfigurationViewController_viewModel];
  if (!v4)
  {
    __break(1u);
    goto LABEL_44;
  }

  v5 = v4[15];
  if (v5)
  {
    v6 = v4[16];
    if (v6)
    {
      v7 = v4[17];
      if (v7)
      {
        v8 = v2;

        v11 = sub_23DDD41A0(a1);
        v12 = *&v2[v3];
        if (v12)
        {
          v13 = v11;
          v14 = *(v12 + 112);
          v15 = type metadata accessor for ActionDetailsView();
          v16 = objc_allocWithZone(v15);
          v17 = &v16[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_selectionHandler];
          *v17 = 0;
          *(v17 + 1) = 0;
          *&v16[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_pageControl] = 0;
          *&v16[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_titleLabel] = 0;
          *&v16[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_subtitleLabel] = 0;
          *&v16[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_emptyStateConfigureButton] = 0;
          *&v16[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_configureButton] = 0;
          *&v16[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_secondaryConfigureButton] = 0;
          *&v16[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_stackView] = 0;
          *&v16[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_stackViewScrollContainer] = 0;
          *&v16[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_primaryButton] = 0;
          *&v16[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_cancellableBag] = MEMORY[0x277D84FA0];
          *&v16[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_actions] = v13;
          *&v16[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_initialIndex] = a2;
          *&v16[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_primaryButtonViewModel] = v14;
          *&v16[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_emptyStateConfigureButtonViewModel] = v5;
          *&v16[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_configureButtonViewModel] = v6;
          *&v16[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_secondaryConfigureButtonViewModel] = v7;
          v74.receiver = v16;
          v74.super_class = v15;
          swift_retain_n();

          v18 = objc_msgSendSuper2(&v74, sel_initWithFrame_, 0.0, 0.0, 100.0, 100.0);
          v19 = *MEMORY[0x277D76818];
          v20 = v18;
          [v20 setMaximumContentSizeCategory_];
          sub_23DE02744();

          v21 = OBJC_IVAR___BCConfigurationViewController_actionDetailsView;
          v22 = *&v8[OBJC_IVAR___BCConfigurationViewController_actionDetailsView];
          *&v8[OBJC_IVAR___BCConfigurationViewController_actionDetailsView] = v20;

          v23 = *&v8[OBJC_IVAR___BCConfigurationViewController_mode];
          v24 = 0x27E325000uLL;
          if (v23 == 1)
          {

            if (a1 >> 62)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325FE8, &qword_23DE08080);
              sub_23DE06218();
            }

            else
            {
              sub_23DE06328();
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325FE8, &qword_23DE08080);
            v37 = sub_23DE05AE8();

            v38 = *&v8[v21];
            if (!v38)
            {
              goto LABEL_50;
            }

            v36 = [objc_opt_self() settingsSelectorWithActionItems:v37 selectedIndex:a2 detailsView:v38];
          }

          else
          {
            if (v23)
            {
              goto LABEL_21;
            }

            v25 = *&v8[v3];
            if (!v25)
            {
LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
              goto LABEL_51;
            }

            v26 = *(v25 + 96);
            if (!v26 || (v27 = *(v25 + 104)) == 0)
            {

LABEL_39:

              return;
            }

            objc_allocWithZone(type metadata accessor for WelcomeView());
            swift_retain_n();
            swift_retain_n();
            v28 = sub_23DDE1534(v26, v27);
            v29 = OBJC_IVAR___BCConfigurationViewController_welcomeView;
            v30 = *&v8[OBJC_IVAR___BCConfigurationViewController_welcomeView];
            *&v8[OBJC_IVAR___BCConfigurationViewController_welcomeView] = v28;

            if (a1 >> 62)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325FE8, &qword_23DE08080);
              sub_23DE06218();
            }

            else
            {
              sub_23DE06328();
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325FE8, &qword_23DE08080);
            v73 = sub_23DE05AE8();

            v31 = *&v8[v29];
            if (!v31)
            {
              goto LABEL_54;
            }

            v32 = *&v8[v21];
            if (!v32)
            {
LABEL_55:
              __break(1u);
              return;
            }

            v33 = objc_opt_self();
            v34 = v31;
            v35 = v32;
            v36 = [v33 assistantSelectorWithActionItems:v73 selectedIndex:a2 welcomeView:v34 detailsView:v35];

            v24 = 0x27E325000;
          }

          v39 = *(v24 + 3816);
          v40 = *&v8[v39];
          *&v8[v39] = v36;

LABEL_21:
          v41 = *(v24 + 3816);
          v42 = *&v8[v41];
          if (!v42)
          {
LABEL_36:

            v67 = *&v8[v21];
            if (!v67)
            {
              return;
            }

            v68 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v69 = &v67[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_selectionHandler];
            v70 = *&v67[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_selectionHandler];
            v71 = *&v67[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_selectionHandler + 8];
            *v69 = sub_23DDD6ED8;
            v69[1] = v68;
            v72 = v67;

            sub_23DDCC0D8(v70, v71);

            goto LABEL_39;
          }

          v43 = v42;
          [v8 addChildViewController_];
          v44 = [v43 view];
          if (v44)
          {
            v45 = v44;
            v46 = [v8 view];
            if (v46)
            {
              v47 = v46;
              [v46 frame];
              v49 = v48;
              v51 = v50;
              v53 = v52;
              v55 = v54;

              [v45 setFrame_];
              v56 = [v8 view];
              if (v56)
              {
                v57 = v56;
                v58 = [v43 view];

                if (v58)
                {
                  [v57 addSubview_];

                  [v43 didMoveToParentViewController_];
                  sub_23DDD4FB0();
                  v59 = *&v8[v41];
                  if (!v59)
                  {
LABEL_35:
                    [v43 setDelegate_];

                    goto LABEL_36;
                  }

                  v60 = *&v8[v3];
                  if (v60)
                  {
                    if (*(*(v60 + 16) + 16))
                    {
                      v61 = &selRef_resumeSceneUpdates;
                    }

                    else
                    {
                      v61 = &selRef_pauseSceneUpdates;
                    }

                    [v59 *v61];
                    v62 = *&v8[v41];
                    if (!v62)
                    {
                      goto LABEL_35;
                    }

                    v63 = v62;
                    v64 = [v63 view];
                    if (v64)
                    {
                      v65 = *&v8[v3];
                      if (v65)
                      {
                        v66 = v64;
                        [v64 setUserInteractionEnabled_];

                        goto LABEL_35;
                      }

                      goto LABEL_53;
                    }

LABEL_52:
                    __break(1u);
LABEL_53:
                    __break(1u);
LABEL_54:
                    __break(1u);
                    goto LABEL_55;
                  }

LABEL_51:
                  __break(1u);
                  goto LABEL_52;
                }

                goto LABEL_48;
              }

LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
              goto LABEL_49;
            }

LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }
  }
}

void sub_23DDD4F20(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR___BCConfigurationViewController_selectorViewController);
    v5 = Strong;
    v6 = v4;

    if (v4)
    {
      [v6 selectActionItemWithIndex:a1 animated:1];
    }
  }
}

void sub_23DDD4FB0()
{
  v1 = *(v0 + OBJC_IVAR___BCConfigurationViewController_selectorViewController);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR___BCConfigurationViewController_sceneParameterOverrides);
  if (v2 == 1)
  {
    return;
  }

  v3 = *(v0 + OBJC_IVAR___BCConfigurationViewController_sceneParameterOverrides + 8);
  v46 = *(v0 + OBJC_IVAR___BCConfigurationViewController_selectorViewController);
  v47 = v3;
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325FF0, &qword_23DE08088);
    v4 = sub_23DE06238();
    v5 = v3 + 64;
    v6 = 1 << *(v3 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v3 + 64);
    sub_23DDD7060(v2, v3);
    v9 = (v6 + 63) >> 6;
    v10 = v1;
    for (i = 0; v8; v4[2] = v23)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_14:
      v15 = v12 | (i << 6);
      v16 = *(v47[6] + 8 * v15);
      v17 = *(v47[7] + 8 * v15);
      v18 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v19 = v16;
      v20 = [v18 initWithDouble_];
      *(v4 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
      *(v4[6] + 8 * v15) = v19;
      *(v4[7] + 8 * v15) = v20;
      v21 = v4[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_38;
      }
    }

    v13 = i;
    while (1)
    {
      i = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (i >= v9)
      {
        break;
      }

      v14 = *(v5 + 8 * i);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_14;
      }
    }

    type metadata accessor for ABDeviceSceneParameter(0);
    sub_23DDC91D0(0, &unk_27E325FF8, 0x277CCABB0);
    sub_23DDD70A8(&qword_27E325C00, type metadata accessor for ABDeviceSceneParameter, &unk_23DE07704);
    v24 = sub_23DE059E8();

    v1 = v46;
    v3 = v47;
    if (!v2)
    {
      goto LABEL_32;
    }

LABEL_18:
    v45 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325FF0, &qword_23DE08088);
    v25 = sub_23DE06238();
    v26 = v25;
    v27 = 0;
    v28 = 1 << *(v2 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & *(v2 + 64);
    v31 = (v28 + 63) >> 6;
    for (j = v25 + 64; v30; v26[2] = v43)
    {
      v33 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
LABEL_27:
      v36 = v33 | (v27 << 6);
      v37 = *(*(v2 + 48) + 8 * v36);
      v38 = *(*(v2 + 56) + 8 * v36);
      v39 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v40 = v37;
      v41 = [v39 initWithDouble_];
      *(j + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
      *(v26[6] + 8 * v36) = v40;
      *(v26[7] + 8 * v36) = v41;
      v42 = v26[2];
      v22 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v22)
      {
        goto LABEL_39;
      }
    }

    v34 = v27;
    while (1)
    {
      v27 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v27 >= v31)
      {
        sub_23DDD6454(v2, v47);
        type metadata accessor for ABDeviceSceneParameter(0);
        sub_23DDC91D0(0, &unk_27E325FF8, 0x277CCABB0);
        sub_23DDD70A8(&qword_27E325C00, type metadata accessor for ABDeviceSceneParameter, &unk_23DE07704);
        v48 = sub_23DE059E8();

        v24 = v45;
        v1 = v46;
        goto LABEL_33;
      }

      v35 = *(v2 + 64 + 8 * v27);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v30 = (v35 - 1) & v35;
        goto LABEL_27;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return;
  }

  sub_23DDD7060(v2, 0);
  v44 = v1;
  v24 = 0;
  if (v2)
  {
    goto LABEL_18;
  }

LABEL_32:
  sub_23DDD6454(0, v3);
  v48 = 0;
LABEL_33:
  [v1 overrideSceneParamsWithZoomedOutParams:v24 zoomedInParams:v48];
}

void sub_23DDD54AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_23DE052D8();
  MEMORY[0x28223BE20](v12);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_23DDD6B7C(v6, v28);
    v15 = swift_allocObject();
    v15[2] = a2;
    v15[3] = a3;
    sub_23DDD6BB4(v28, (v15 + 4));
    v15[5] = a4;
    v15[6] = a5;
    objc_allocWithZone(type metadata accessor for ControlPickerViewController());

    v16 = sub_23DDDCD4C(sub_23DDD6C0C, v15);
    [v16 setOverrideUserInterfaceStyle_];
    v17 = v16;
    if (a1)
    {
      v18 = a1;
      v19 = [v18 controlType];
      v20 = [v19 unsignedIntegerValue];

      v21 = objc_allocWithZone(MEMORY[0x277CFC9E8]);
      v22 = sub_23DDD9150();
    }

    [v16 setSelectedControl_];

    v23 = [v16 sheetPresentationController];
    if (v23)
    {
      v24 = v23;
      sub_23DE05D58();
      sub_23DE052C8();
      sub_23DE05D68();

      sub_23DE05D78();
      [v24 setPrefersGrabberVisible_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325FB0, &unk_23DE08060);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_23DE07F10;
      sub_23DDC91D0(0, &qword_27E325FB8, 0x277D75A28);
      *(v25 + 32) = sub_23DE05D98();
      v26 = sub_23DE05AE8();

      [v24 setDetents_];
    }

    v27 = [v16 presentationController];

    if (v27)
    {
      [v27 setDelegate_];
    }

    [v14 presentViewController:v16 animated:1 completion:0];
  }
}

void sub_23DDD583C(void *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *a2;
    v22 = a2[1];
    v23 = v12;
    v21 = a2[2];
    objc_allocWithZone(type metadata accessor for ControlConfigurationViewController());
    sub_23DDD6AB0(&v23, v20);
    v13 = a1;
    sub_23DDD6B0C(&v22, v20);
    sub_23DDD6B0C(&v21, v20);
    v14 = sub_23DDDC3A0(v13, a2);
    [v14 setOverrideUserInterfaceStyle_];
    sub_23DDD6B7C(v5, v20);
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;
    sub_23DDD6BB4(v20, v15 + 32);
    v16 = &v14[OBJC_IVAR____TtC27ActionButtonConfigurationUI34ControlConfigurationViewController_completionHandler];
    v17 = *&v14[OBJC_IVAR____TtC27ActionButtonConfigurationUI34ControlConfigurationViewController_completionHandler];
    v18 = *&v14[OBJC_IVAR____TtC27ActionButtonConfigurationUI34ControlConfigurationViewController_completionHandler + 8];
    *v16 = sub_23DDD6BEC;
    v16[1] = v15;

    sub_23DDCC0D8(v17, v18);
    v19 = [v14 presentationController];

    if (v19)
    {
      [v19 setDelegate_];
    }

    [v11 presentViewController:v14 animated:1 completion:0];
  }
}

char *sub_23DDD59E4(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = a1;
    a2();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = OBJC_IVAR___BCConfigurationViewController_viewModel;
    if (*&result[OBJC_IVAR___BCConfigurationViewController_viewModel])
    {

      sub_23DE053E8();

      if (*&v7[v8])
      {

        sub_23DE053E8();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_23DDD5AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *&Strong[OBJC_IVAR___BCConfigurationViewController_shortcutConfigurationViewController];
    if (v9)
    {
      v16 = Strong;
      v10 = v9;
      [v10 setModalPresentationStyle_];
      swift_unknownObjectWeakAssign();
      [v10 setSelectedAction_];
      sub_23DDD6B7C(v4, v18);
      v11 = swift_allocObject();
      sub_23DDD6BB4(v18, v11 + 16);
      *(v11 + 24) = a2;
      *(v11 + 32) = a3;
      v12 = &v10[OBJC_IVAR____TtC27ActionButtonConfigurationUI36ShortcutsConfigurationViewController_completionHandler];
      v13 = *&v10[OBJC_IVAR____TtC27ActionButtonConfigurationUI36ShortcutsConfigurationViewController_completionHandler];
      v14 = *&v10[OBJC_IVAR____TtC27ActionButtonConfigurationUI36ShortcutsConfigurationViewController_completionHandler + 8];
      *v12 = sub_23DDD6EC0;
      v12[1] = v11;

      sub_23DDCC0D8(v13, v14);
      v15 = [v10 presentationController];

      if (v15)
      {
        [v15 setDelegate_];
      }

      [v16 presentViewController:v10 animated:1 completion:{0, v16}];
    }

    else
    {
    }
  }
}

void sub_23DDD5C54(uint64_t a1, char a2, uint64_t a3, void (*a4)(char *, uint64_t))
{
  v31 = a4;
  v32 = sub_23DE05978();
  v35 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23DE059A8();
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23DE059C8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  v36 = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a2)
    {
      sub_23DDC91D0(0, &qword_281218508, 0x277D85C78);
      v30 = sub_23DE05CB8();
      sub_23DE059B8();
      sub_23DE059D8();
      v31 = *(v13 + 8);
      v31(v16, v12);
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      aBlock[4] = sub_23DDD6ED0;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23DDD6170;
      aBlock[3] = &block_descriptor_0;
      v29 = _Block_copy(aBlock);
      v22 = v20;

      sub_23DE05998();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_23DDD70A8(&qword_27E325FD0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325FD8, &unk_23DE08070);
      sub_23DDC7D28(&qword_27E325FE0, &qword_27E325FD8, &unk_23DE08070, MEMORY[0x277D83970]);
      v23 = v32;
      sub_23DE05FE8();
      v25 = v29;
      v24 = v30;
      MEMORY[0x23EF005F0](v18, v11, v8, v29);
      _Block_release(v25);

      (*(v35 + 8))(v8, v23);
      (*(v33 + 8))(v11, v34);
      v31(v18, v12);
    }

    else
    {
      (v31)(a1);
    }

    v26 = swift_unknownObjectWeakLoadStrong();
    if (!v26)
    {
      goto LABEL_9;
    }

    v27 = v26;
    v28 = OBJC_IVAR___BCConfigurationViewController_viewModel;
    if (*(v26 + OBJC_IVAR___BCConfigurationViewController_viewModel))
    {

      sub_23DE053E8();

      if (*&v27[v28])
      {

        sub_23DE053E8();

LABEL_9:

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_23DDD60D4(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR___BCConfigurationViewController_mode) == 1)
  {
    v2 = MEMORY[0x277D7D818];
  }

  else
  {
    v2 = MEMORY[0x277D7D810];
  }

  v3 = *v2;
  v4 = [objc_allocWithZone(type metadata accessor for ShortcutsConfigurationViewController()) initWithConfigurationContext_];

  v5 = *(a1 + OBJC_IVAR___BCConfigurationViewController_shortcutConfigurationViewController);
  *(a1 + OBJC_IVAR___BCConfigurationViewController_shortcutConfigurationViewController) = v4;
}

uint64_t sub_23DDD6170(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id ConfigurationViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_23DE05A18();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_23DDD628C()
{

  sub_23DDD6454(*(v0 + OBJC_IVAR___BCConfigurationViewController_sceneParameterOverrides), *(v0 + OBJC_IVAR___BCConfigurationViewController_sceneParameterOverrides + 8));

  v1 = *(v0 + OBJC_IVAR___BCConfigurationViewController_originalNavigationBarTintColor);
}

id ConfigurationViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConfigurationViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DeviceSceneParameters.init(zoomedInParameters:zoomedOutParameters:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_23DDD6454(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
  }

  return result;
}

void *sub_23DDD6498(char a1, uint64_t a2, uint64_t a3)
{
  v15[3] = &type metadata for ConfigurationViewController.Router;
  v15[4] = &off_2850189A0;
  v15[0] = swift_allocObject();
  sub_23DDD6BB4(a2, v15[0] + 16);
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3260B0, &qword_23DE080E8);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326028, &qword_23DE080B0);
  swift_allocObject();
  *(v6 + 24) = sub_23DE05418();
  *(a3 + 144) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3260B8, &unk_23DE080F0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326058, &qword_23DE080C8);
  swift_allocObject();
  *(v7 + 32) = sub_23DE05418();
  *(a3 + 152) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3260C0, &qword_23DE08CB0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326088, &unk_23DE091C0);
  swift_allocObject();
  *(v8 + 24) = sub_23DE05418();
  *(a3 + 160) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  swift_allocObject();
  *(v9 + 24) = sub_23DE05418();
  *(a3 + 168) = v9;
  *(a3 + 240) = MEMORY[0x277D84FA0];
  *(a3 + 176) = a1 & 1;
  sub_23DDD7140(v15, a3 + 184);
  type metadata accessor for ControlAttributesStore();
  v10 = swift_allocObject();
  v10[1] = 0u;
  v10[2] = 0u;
  v10[3] = 0u;
  v10[4] = 0u;
  *(a3 + 232) = v10;
  type metadata accessor for ActionStore();
  swift_allocObject();

  v12 = sub_23DDF6AB8(v11, a1 & 1);

  *(a3 + 224) = v12;
  v13 = sub_23DDE73DC();
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v13;
}

void sub_23DDD672C()
{
  *(v0 + OBJC_IVAR___BCConfigurationViewController_viewModel) = 0;
  *(v0 + OBJC_IVAR___BCConfigurationViewController_selectorViewController) = 0;
  *(v0 + OBJC_IVAR___BCConfigurationViewController_welcomeView) = 0;
  *(v0 + OBJC_IVAR___BCConfigurationViewController_actionDetailsView) = 0;
  *(v0 + OBJC_IVAR___BCConfigurationViewController_sceneParameterOverrides) = xmmword_23DE07F00;
  *(v0 + OBJC_IVAR___BCConfigurationViewController_cancellableBag) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR___BCConfigurationViewController_shortcutConfigurationViewController) = 0;
  *(v0 + OBJC_IVAR___BCConfigurationViewController_originalNavigationBarTintColor) = 0;
  *(v0 + OBJC_IVAR___BCConfigurationViewController_isAppeared) = 0;
  sub_23DE06208();
  __break(1u);
}

void sub_23DDD680C(unint64_t result)
{
  v2 = *(v1 + OBJC_IVAR___BCConfigurationViewController_viewModel);
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = *(*(*(v2 + 224) + 16) + 16);
  if (!v3)
  {
    return;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v3 + 16) <= result)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v4 = v3 + 24 * result;
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v7 = *(v4 + 48);

  sub_23DDD6F58(v5, v6, v7);
  sub_23DDED81C(v5, v6, v7, 1uLL);

  sub_23DDD6FDC(v5, v6, v7);
}

unint64_t sub_23DDD68EC()
{
  result = qword_27E325F38;
  if (!qword_27E325F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E325F38);
  }

  return result;
}

uint64_t sub_23DDD69F4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_23DDD6A50(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23DDD6B0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3261D0, &qword_23DE07DD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_23DDD6C0C(void *a1, char a2)
{
  v3 = sub_23DDD6C50(a1, a2 & 1, *(v2 + 16), *(v2 + 24), v2 + 32, *(v2 + 40));
  sub_23DDD6EA4(v3, v4);
  return v3;
}

char *sub_23DDD6C50(void *a1, char a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (qword_2812185E8 != -1)
    {
      swift_once();
    }

    v8 = sub_23DE052B8();
    __swift_project_value_buffer(v8, qword_281218840);
    v9 = a1;
    v10 = sub_23DE05298();
    v11 = sub_23DE05C18();
    sub_23DDD6EB4(a1);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v12 = 136315394;
      *(v12 + 4) = sub_23DDC8940(0xD00000000000001BLL, 0x800000023DE09F30, &v20);
      *(v12 + 12) = 2112;
      v15 = a1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v16;
      *v13 = v16;
      _os_log_impl(&dword_23DDC5000, v10, v11, "%s finished with error: %@", v12, 0x16u);
      sub_23DDCF3FC(v13);
      MEMORY[0x23EF014D0](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x23EF014D0](v14, -1, -1);
      MEMORY[0x23EF014D0](v12, -1, -1);
    }
  }

  else if (a1)
  {
    a3(a1);
    sub_23DDD6EB4(a1);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return a6;
  }

  v18 = result;
  v19 = OBJC_IVAR___BCConfigurationViewController_viewModel;
  if (*&result[OBJC_IVAR___BCConfigurationViewController_viewModel])
  {

    sub_23DE053E8();

    if (*&v18[v19])
    {

      sub_23DE053E8();

      return a6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_23DDD6EA4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_23DDD6F30(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_23DDD6F58(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {

    return result;
  }

  if (a3 == 2)
  {
    v4 = result;
  }

  else if (a3 == 3)
  {

    return result;
  }

  return result;
}

void sub_23DDD6FDC(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {

LABEL_4:

    return;
  }

  if (a3 == 2)
  {
  }

  else if (a3 == 3)
  {

    goto LABEL_4;
  }
}

uint64_t sub_23DDD7060(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_23DDD70A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23DDD7140(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23DDD71A4(uint64_t a1, int a2)
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

uint64_t sub_23DDD71C4(uint64_t result, int a2, int a3)
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

uint64_t sub_23DDD7200()
{
  v0 = sub_23DE051B8();
  MEMORY[0x28223BE20](v0 - 8);
  sub_23DE051A8();
  result = sub_23DE05A58();
  qword_27E3260D0 = result;
  *algn_27E3260D8 = v2;
  return result;
}

uint64_t sub_23DDD7294(_OWORD *a1, __int128 *a2)
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
  return sub_23DDD8F6C(v7, v8) & 1;
}

uint64_t sub_23DDD72DC(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_23DDD8F20();
  return sub_23DE05DC8() & (v2 == v3);
}

void sub_23DDD7330(uint64_t *result)
{
  v2 = v1[3];
  if (v2)
  {
    v4 = result[1];
    v5 = result[2];
    v6 = result[3];
    v8 = result[4];
    v7 = result[5];
    v10 = v1[4];
    v9 = v1[5];
    v12 = v1[6];
    v11 = v1[7];
    v50 = v1[2];
    if (v4)
    {
      v46 = result[5];
      v48 = v1[6];
      v51 = v1[5];
      v49 = v1[4];
      v13 = v1[2];
      v14 = v1[3];
      if (v13 == *result && v2 == v4 || (v15 = result[2], v16 = sub_23DE06318(), v5 = v15, (v16 & 1) != 0))
      {
        v17 = v6;
        v18 = v11;
        if (v51)
        {
          if (!v17)
          {

            v14 = v2;

            v21 = v51;

            v38 = v13;
            v10 = v49;
            v39 = v13;
            v12 = v48;
            sub_23DDD904C(v38, v2, v49, v51, v48, v11);
            sub_23DDD2850(result, v53, &qword_27E3261B0, &qword_23DE08268);

            v25 = v39;
LABEL_25:
            v26 = v2;
            goto LABEL_26;
          }

          v19 = v46;
          if ((v49 != v5 || v51 != v17) && (sub_23DE06318() & 1) == 0)
          {

            v20 = v2;

            v21 = v51;

            v22 = v13;
            v23 = v2;
            v10 = v49;
            v24 = v13;
            v12 = v48;
            sub_23DDD904C(v22, v23, v49, v51, v48, v18);
            sub_23DDD2850(result, v53, &qword_27E3261B0, &qword_23DE08268);
            v14 = v20;

            v25 = v24;
            v26 = v20;
LABEL_26:
            sub_23DDD909C(v25, v26, v10, v21, v12, v18);
            goto LABEL_27;
          }

LABEL_15:
          if (!v18)
          {
            if (!v19)
            {
              sub_23DDD904C(v13, v2, v49, v51, v48, 0);
              sub_23DDD2850(result, v53, &qword_27E3261B0, &qword_23DE08268);

              sub_23DDD909C(v13, v2, v49, v51, v48, 0);
              return;
            }

            v21 = v51;

            v40 = v2;

            v41 = v13;
            v42 = v2;
            v10 = v49;
            v43 = v13;
            v12 = v48;
            sub_23DDD904C(v41, v42, v49, v51, v48, 0);
            sub_23DDD2850(result, v53, &qword_27E3261B0, &qword_23DE08268);

            v14 = v40;

            sub_23DDD909C(v43, v40, v49, v51, v48, 0);
            goto LABEL_27;
          }

          if (v19)
          {
            v33 = v8;
            if (v48 == v8 && v18 == v19)
            {
              v21 = v51;
              v34 = v33;

              v10 = v49;
              sub_23DDD904C(v13, v2, v49, v51, v34, v19);
              sub_23DDD2850(result, v53, &qword_27E3261B0, &qword_23DE08268);
            }

            else
            {
              v47 = sub_23DE06318();
              v21 = v51;

              v10 = v49;
              sub_23DDD904C(v13, v2, v49, v51, v48, v18);
              sub_23DDD2850(result, v53, &qword_27E3261B0, &qword_23DE08268);

              if ((v47 & 1) == 0)
              {
                sub_23DDD909C(v13, v2, v49, v51, v48, v18);
                v12 = v48;
                v14 = v2;
                goto LABEL_27;
              }
            }

            sub_23DDD909C(v13, v2, v10, v21, v48, v18);
            return;
          }

          v21 = v51;

          v44 = v13;
          v10 = v49;
          v45 = v13;
          v12 = v48;
          sub_23DDD904C(v44, v2, v49, v51, v48, v18);
          sub_23DDD2850(result, v53, &qword_27E3261B0, &qword_23DE08268);

          v14 = v2;

          v25 = v45;
          goto LABEL_25;
        }

        v19 = v46;
        if (!v17)
        {
          goto LABEL_15;
        }

        v29 = v2;

        v30 = v13;
        v31 = v2;
        v10 = v49;
        v32 = v13;
        v12 = v48;
        sub_23DDD904C(v30, v31, v49, 0, v48, v18);
        sub_23DDD2850(result, v53, &qword_27E3261B0, &qword_23DE08268);

        v14 = v29;

        sub_23DDD909C(v32, v29, v49, 0, v48, v18);
        v21 = 0;
      }

      else
      {

        v21 = v51;

        v35 = v13;
        v36 = v2;
        v10 = v49;
        v37 = v13;
        v12 = v48;
        sub_23DDD904C(v35, v36, v49, v51, v48, v11);
        sub_23DDD2850(result, v53, &qword_27E3261B0, &qword_23DE08268);

        v18 = v11;

        sub_23DDD909C(v37, v14, v49, v51, v48, v11);
      }
    }

    else
    {
      v27 = v1[2];
      v52 = result[2];
      v28 = *result;

      sub_23DDD904C(v27, v2, v10, v9, v12, v11);
      sub_23DDD909C(v27, v2, v10, v9, v12, v11);
      sub_23DDD909C(v28, 0, v52, v6, v8, v7);
      v21 = v9;
      v14 = v2;
      v18 = v11;
    }

LABEL_27:
    sub_23DDD7AAC();
    v53[0] = v50;
    v53[1] = v14;
    v53[2] = v10;
    v53[3] = v21;
    v53[4] = v12;
    v53[5] = v18;
    sub_23DE05408();
  }
}

uint64_t sub_23DDD7AAC()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v2 = v0;
    if (qword_27E325AE0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261B8, &qword_23DE08270);
    swift_allocObject();

    v1 = sub_23DE05418();
    *(v2 + 72) = v1;
  }

  return v1;
}

uint64_t sub_23DDD7B90(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326170, &qword_23DE08248);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326178, &qword_23DE08250);
  v8 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v10 = &v18 - v9;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = v11;
  v14 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326180, &qword_23DE08258);
  sub_23DDC7D28(&qword_27E326188, &qword_27E326180, &qword_23DE08258, MEMORY[0x277CBCD90]);
  sub_23DE05488();
  sub_23DDC7D28(&qword_27E326190, &qword_27E326170, &qword_23DE08248, MEMORY[0x277CBCEB8]);
  swift_retain_n();
  sub_23DE054B8();

  (*(v5 + 8))(v7, v4);
  sub_23DDC7D28(&qword_27E326198, &qword_27E326178, &qword_23DE08250, MEMORY[0x277CBCB60]);
  v15 = v19;
  v16 = sub_23DE05498();
  (*(v8 + 8))(v10, v15);

  return v16;
}

uint64_t sub_23DDD7EE8@<X0>(void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261A0, &qword_23DE08260);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v22 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = sub_23DDD81A8(a2, a3);
    v15 = OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_instance;
    sub_23DDD8630(v23);
    v16 = v23[1];
    v17 = *(v13 + 16);
    v18 = *(v13 + 48);
    v26[1] = *(v13 + 32);
    v26[2] = v18;
    v26[0] = v17;
    *(v13 + 16) = v23[0];
    *(v13 + 24) = v16;
    v19 = v25;
    *(v13 + 32) = v24;
    *(v13 + 48) = v19;
    sub_23DDD7330(v26);
    sub_23DDC925C(v26, &qword_27E3261B0, &qword_23DE08268);
    if ((v14[OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_isActive] & 1) == 0)
    {
      v14[OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_isActive] = 1;
      [*&v14[v15] registerObserver_];
      [*&v14[v15] activate];
    }

    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v22[1] = sub_23DDD7AAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261B8, &qword_23DE08270);
    sub_23DDC7D28(&qword_27E3261C0, &qword_27E3261B8, &qword_23DE08270, MEMORY[0x277CBCE48]);
    v20 = sub_23DE05498();
  }

  else
  {
    sub_23DE05468();
    sub_23DDC7D28(&qword_27E3261A8, &qword_27E3261A0, &qword_23DE08260, MEMORY[0x277CBCE90]);
    v20 = sub_23DE05498();
    result = (*(v9 + 8))(v11, v8);
  }

  *a5 = v20;
  return result;
}

char *sub_23DDD81A8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 64);
  if (v6)
  {
    v7 = *&v6[OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_control];
    v8 = *&v6[OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_control + 8];
    sub_23DDD8F20();
    v9 = v6;
    v10 = v7;
    v11 = sub_23DE05DC8();

    if ((v11 & 1) != 0 && v8 == a2)
    {
      return v9;
    }

    v13 = *(v3 + 64);
    if (v13)
    {
      if (*(v13 + OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_isActive) == 1)
      {
        *(v13 + OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_isActive) = 0;
        [*(v13 + OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_instance) unregisterObserver_];
      }
    }
  }

  v14 = swift_allocObject();
  swift_weakInit();
  v15 = type metadata accessor for ControlObserver();
  v16 = objc_allocWithZone(v15);
  v16[OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_isActive] = 0;
  v17 = &v16[OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_control];
  *v17 = a1;
  v17[1] = a2;
  v18 = objc_allocWithZone(MEMORY[0x277CFA230]);
  v19 = a1;
  v20 = [v18 initWithControl:v19 contentType:1 hostIdentifier:0 configurationIdentifier:0];
  v21 = [objc_opt_self() instanceOfType:a2 instanceIdentity:v20];

  *&v16[OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_instance] = v21;
  v22 = &v16[OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_updateHandler];
  *v22 = sub_23DDD90EC;
  v22[1] = v14;
  v26.receiver = v16;
  v26.super_class = v15;
  v23 = objc_msgSendSuper2(&v26, sel_init);

  v24 = *(v3 + 64);
  *(v3 + 64) = v23;
  v25 = v23;

  return v25;
}

void sub_23DDD83A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (*(Strong + OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_isActive) == 1)
    {
      *(Strong + OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_isActive) = 0;
      [*(Strong + OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_instance) unregisterObserver_];
    }
  }
}

void sub_23DDD8428(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*(Strong + OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_isActive) == 1)
    {
      *(Strong + OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_isActive) = 0;
      [*(Strong + OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_instance) unregisterObserver_];
    }
  }
}

uint64_t sub_23DDD84AC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1 + 2;
  v10 = *(a1 + 2);
  v11 = *(a1 + 1);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *(result + 16);
    v8 = *(result + 48);
    v16[1] = *(result + 32);
    v16[2] = v8;
    v16[0] = v7;
    *(result + 16) = v3;
    *(result + 24) = v4;
    *(result + 32) = v11;
    *(result + 48) = v10;
    v9 = *a1;
    v14 = *v5;
    v15 = v9;
    v13 = *(a1 + 2);
    sub_23DDD6AB0(&v15, v12);
    sub_23DDD2850(&v14, v12, &unk_27E3261D0, &qword_23DE07DD0);
    sub_23DDD2850(&v13, v12, &unk_27E3261D0, &qword_23DE07DD0);
    sub_23DDD7330(v16);
    sub_23DDC925C(v16, &qword_27E3261B0, &qword_23DE08268);
  }

  return result;
}

uint64_t sub_23DDD85BC()
{
  sub_23DDD909C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

void sub_23DDD8630(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_23DDD8B14();
  v6 = v5;
  v7 = [v2 descriptor];
  if (v7 && (v8 = v7, v9 = [v7 displayName], v8, v9))
  {
    v10 = sub_23DE05A48();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = [v2 descriptor];
  if (v13 && (v14 = v13, v15 = [v13 widgetDescription], v14, v15))
  {
    v16 = sub_23DE05A48();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  *a1 = v4;
  a1[1] = v6;
  a1[2] = v10;
  a1[3] = v12;
  a1[4] = v16;
  a1[5] = v18;
}

id sub_23DDD8740()
{
  ObjectType = swift_getObjectType();
  if (v0[OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_isActive] == 1)
  {
    v0[OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_isActive] = 0;
    [*&v0[OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_instance] unregisterObserver_];
  }

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_23DDD88A8(char *a1, uint64_t a2, void *a3)
{
  v4 = *&a1[OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_updateHandler];
  v5 = a3;
  v6 = a1;
  sub_23DDD8630(v7);
  v4(v7);

  v10 = v7[0];
  sub_23DDD90F4(&v10);
  v9 = v7[1];
  sub_23DDC925C(&v9, &unk_27E3261D0, &qword_23DE07DD0);
  v8 = v7[2];
  sub_23DDC925C(&v8, &unk_27E3261D0, &qword_23DE07DD0);
}

uint64_t sub_23DDD89C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_23DDD8A10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_23DDD8A70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_23DDD8AB8(uint64_t result, int a2, int a3)
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

uint64_t sub_23DDD8B14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261C8, &qword_23DE08278);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - v3;
  v5 = sub_23DDD8DD8();
  if (v5)
  {
    v6 = [v5 title];
    swift_unknownObjectRelease();
    if (v6)
    {
      goto LABEL_5;
    }
  }

  v7 = [v0 descriptor];
  if (v7)
  {
    v8 = v7;
    v6 = [v7 displayName];

    if (v6)
    {
      goto LABEL_5;
    }
  }

  v10 = [v0 control];
  v11 = [v10 extensionIdentity];

  v12 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  (*(v2 + 16))(v4, &v11[v12], v1);

  v13 = sub_23DE05258();
  v15 = v14;
  v16 = objc_allocWithZone(MEMORY[0x277CC1E50]);
  v17 = sub_23DDD8E54(v13, v15);
  if (v17)
  {
    v19 = v17;
    v20 = [v17 containingBundleRecord];

    (*(v2 + 8))(v4, v1);
    if (v20)
    {
      v6 = [v20 localizedName];

LABEL_5:
      v9 = sub_23DE05A48();

      return v9;
    }
  }

  else
  {
    (*(v2 + 8))(v4, v1);
  }

  if (qword_27E325AE0 != -1)
  {
    swift_once();
  }

  v9 = qword_27E3260D0;

  return v9;
}

id sub_23DDD8DD8()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result viewModel];
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result viewModel];
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result viewModel];
  }

  return result;
}

id sub_23DDD8E54(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = sub_23DE05A18();

  v8[0] = 0;
  v4 = [v2 initWithBundleIdentifier:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_23DE05198();

    swift_willThrow();
  }

  return v4;
}

unint64_t sub_23DDD8F20()
{
  result = qword_27E326168;
  if (!qword_27E326168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E326168);
  }

  return result;
}

uint64_t sub_23DDD8F6C(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23DE06318() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_23DE06318() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8)
  {
    if (v9 && (a1[4] == a2[4] && v8 == v9 || (sub_23DE06318() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v9)
  {
    return 1;
  }

  return 0;
}

void sub_23DDD904C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

void sub_23DDD909C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

id sub_23DDD9150()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3263A0, &unk_23DE08510);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261C8, &qword_23DE08278);
  MEMORY[0x28223BE20](v5 - 8);
  v6 = [v1 extensionBundleIdentifier];
  sub_23DE05A48();

  sub_23DE05248();
  v7 = [v1 containerBundleIdentifier];
  if (v7)
  {

    result = [v1 containerBundleIdentifier];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v9 = result;
    sub_23DE05A48();

    sub_23DE05248();
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3263B0, &unk_23DE08520);
  (*(*(v11 - 8) + 56))(v4, v10, 1, v11);
  sub_23DE05CF8();
  v12 = sub_23DE05CE8();
  v13 = [v1 kind];
  if (!v13)
  {
    sub_23DE05A48();
    v13 = sub_23DE05A18();
  }

  v14 = [v1 intent];
  v15 = [objc_allocWithZone(MEMORY[0x277CFA228]) initWithExtensionIdentity:v12 kind:v13 intent:v14];

  return v15;
}

id sub_23DDD93D4(void *a1)
{
  v2 = [a1 identity];
  v3 = [v2 intentReference];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 intent];
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_23DE05A18();
  v7 = [v2 extensionIdentity];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261C8, &qword_23DE08278);
  sub_23DE05258();
  v8 = sub_23DE05A18();
  swift_endAccess();

  v9 = [v2 extensionIdentity];
  v10 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3263B0, &unk_23DE08520);
  if ((*(*(v11 - 8) + 48))(&v9[v10], 1, v11))
  {
    swift_endAccess();

    v12 = 0;
  }

  else
  {
    sub_23DE05258();
    swift_endAccess();

    v12 = sub_23DE05A18();
  }

  v13 = [v2 kind];
  if (!v13)
  {
    sub_23DE05A48();
    v13 = sub_23DE05A18();
  }

  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v15 = [a1 type];
  v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  v17 = [v14 initWithIntent:v5 named:v6 extensionBundleIdentifier:v8 containerBundleIdentifier:v12 kind:v13 controlType:v16];

  return v17;
}

id sub_23DDD96A0(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 name];
  if (!v4)
  {
    sub_23DE05A48();
    v4 = sub_23DE05A18();
  }

  v5 = [v2 extensionBundleIdentifier];
  if (!v5)
  {
    sub_23DE05A48();
    v5 = sub_23DE05A18();
  }

  v6 = [v2 containerBundleIdentifier];
  if (v6)
  {
    v7 = v6;
    sub_23DE05A48();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v2 kind];
  if (!v10)
  {
    sub_23DE05A48();
    v10 = sub_23DE05A18();
  }

  v11 = [v2 controlType];
  if (v9)
  {
    v12 = sub_23DE05A18();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(MEMORY[0x277D79E60]) initWithIntent:a1 named:v4 extensionBundleIdentifier:v5 containerBundleIdentifier:v12 kind:v10 controlType:v11];

  return v13;
}

id sub_23DDD984C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = [v2 intent];
  v5 = [v2 extensionBundleIdentifier];
  if (!v5)
  {
    sub_23DE05A48();
    v5 = sub_23DE05A18();
  }

  v6 = [v3 containerBundleIdentifier];
  if (v6)
  {
    v7 = v6;
    sub_23DE05A48();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v3 kind];
  if (!v10)
  {
    sub_23DE05A48();
    v10 = sub_23DE05A18();
  }

  v11 = [v3 controlType];
  v12 = sub_23DE05A18();
  if (v9)
  {
    v13 = sub_23DE05A18();
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(MEMORY[0x277D79E60]) initWithIntent:v4 named:v12 extensionBundleIdentifier:v5 containerBundleIdentifier:v13 kind:v10 controlType:v11];

  return v14;
}

void sub_23DDD99FC(__int128 *a1)
{
  v3 = *(v1 + 16);
  v4 = a1[1];
  v17 = *a1;
  v18 = v4;
  v19 = a1[2];
  v20 = *(a1 + 6);
  v5 = v20;
  v6 = v17;
  v7 = v4;
  v8 = v19;
  v9 = v3[2];
  v14 = v3[4];
  v15 = v3[3];
  v12 = v3[6];
  v13 = v3[5];
  v10 = v3[8];
  v11 = v3[7];
  *(v3 + 1) = v17;
  *(v3 + 2) = v4;
  *(v3 + 3) = v8;
  v3[8] = v5;

  sub_23DDD9D10(a1, v16);
  sub_23DDD9D80(v6, *(&v6 + 1), v7, *(&v7 + 1), v8, *(&v8 + 1), v5);
  sub_23DDD9DE0(v9, v15, v14, v13, v12, v11, v10);

  sub_23DE05408();

  sub_23DDC925C(a1, &qword_27E3261E0, "hc");

  sub_23DDD9DE0(v17, *(&v17 + 1), v18, *(&v18 + 1), v19, *(&v19 + 1), v20);
}

uint64_t sub_23DDD9B30(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v7 = *a1;
  v8 = v2;
  v9 = a1[2];
  v10 = *(a1 + 6);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5[0] = v7;
    v5[1] = v8;
    v5[2] = v9;
    v6 = v10;
    sub_23DDD9CD8(&v7, &v4);
    sub_23DDD99FC(v5);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_23DDD9C34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_23DDD9C7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23DDD9D10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261E0, "hc");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_23DDD9D80(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v7 = a3;
  }
}

void sub_23DDD9DE0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }
}

uint64_t sub_23DDD9E44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261E8, "hc");
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261F0, &unk_23DE08AB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_23DE05F68();
  v10 = swift_allocBox();
  v12 = v11;
  sub_23DE05F78();
  v13 = *(v9 - 8);
  if ((*(v13 + 48))(v8, 1, v9) == 1)
  {
    sub_23DDC925C(v8, &qword_27E3261F0, &unk_23DE08AB0);
    swift_deallocBox();
    result = sub_23DE06208();
    __break(1u);
  }

  else
  {
    (*(v13 + 32))(v12, v8, v9);
    v19 = *(*(a1 + 16) + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261F8, &qword_23DE08310);
    sub_23DDC7D28(&qword_27E326200, &qword_27E3261F8, &qword_23DE08310, MEMORY[0x277CBCE48]);
    v19 = sub_23DE05498();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326208, &unk_23DE08318);
    sub_23DDC7D28(&qword_27E326210, &qword_27E326208, &unk_23DE08318, MEMORY[0x277CBCD90]);
    sub_23DE054A8();

    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = v10;
    sub_23DDC7D28(&qword_27E326218, &qword_27E3261E8, "hc", MEMORY[0x277CBCB10]);

    v16 = sub_23DE055E8();

    (*(v3 + 8))(v5, v2);

    return v16;
  }

  return result;
}

void sub_23DDDA220(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;
  a2[3] = v5;
  a2[4] = v6;
  a2[5] = v7;
  a2[6] = v8;
  sub_23DDD9D80(v3, v2, v4, v5, v6, v7, v8);
}

void sub_23DDDA248(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261F0, &unk_23DE08AB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v45 - v5;
  v7 = a1[2];
  v8 = *(a1 + 24);
  v9 = *(a1 + 25);
  v10 = a1[4];
  v11 = sub_23DE05F68();
  v12 = swift_projectBox();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v14 = Strong;
  swift_beginAccess();

  sub_23DE05F38();
  v15 = v7;
  sub_23DE05F08();
  swift_endAccess();
  swift_beginAccess();
  v16 = *(v11 - 8);
  (*(v16 + 16))(v6, v12, v11);
  (*(v16 + 56))(v6, 0, 1, v11);
  sub_23DE05F88();
  v17 = v14;
  [v17 setEnabled_];
  if (!v9)
  {
    swift_beginAccess();
    v20 = v17;
    sub_23DE05F28();
    v22 = v21;
    swift_endAccess();
    if (!v22)
    {
      goto LABEL_10;
    }

    swift_beginAccess();
    v23 = sub_23DE05F28();
    v25 = v24;
    swift_endAccess();
    if (!v25)
    {
      __break(1u);
      return;
    }

    v26 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v26 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (!v26)
    {
LABEL_10:
      swift_beginAccess();
      v27 = sub_23DE05EF8();
      swift_endAccess();
      if (!v27)
      {
        goto LABEL_4;
      }
    }

    v19 = 0;
    goto LABEL_13;
  }

  v18 = v17;
LABEL_4:
  v19 = 1;
LABEL_13:
  [v17 setHidden_];

  v28 = *(v10 + 16);
  if (v28)
  {
    v46 = v17;
    v49 = MEMORY[0x277D84F90];
    sub_23DE06128();
    v48 = sub_23DDC91D0(0, &qword_27E326220, 0x277D750C8);
    v29 = (v10 + 72);
    v47 = xmmword_23DE07F10;
    v45 = v28;
    do
    {
      v30 = *(v29 - 5);
      v31 = *(v29 - 4);
      v32 = *(v29 - 3);
      v33 = *(v29 - 16);
      v34 = *(v29 - 15);
      v36 = *(v29 - 1);
      v35 = *v29;
      v37 = swift_allocObject();
      *(v37 + 16) = v30;
      *(v37 + 24) = v31;
      *(v37 + 32) = v32;
      *(v37 + 40) = v33;
      *(v37 + 41) = v34;
      *(v37 + 42) = v50;
      *(v37 + 46) = v51;
      *(v37 + 48) = v36;
      *(v37 + 56) = v35;
      v38 = v32;
      swift_bridgeObjectRetain_n();
      v39 = v38;
      swift_retain_n();
      v40 = v39;
      v41 = sub_23DE05DD8();
      if (v34 == 1)
      {
        sub_23DDC91D0(0, &qword_27E326228, 0x277D75710);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325FB0, &unk_23DE08060);
        v42 = swift_allocObject();
        *(v42 + 16) = v47;
        *(v42 + 32) = v41;
        v43 = v41;
        sub_23DE05DA8();
      }

      v29 += 6;

      sub_23DE06108();
      sub_23DE06138();
      sub_23DE06148();
      sub_23DE06118();
      --v28;
    }

    while (v28);
    sub_23DDC91D0(0, &qword_27E326228, 0x277D75710);
    v44 = sub_23DE05DA8();
    v17 = v46;
    [v46 setMenu_];

    v28 = v45;
  }

  else
  {
    [v17 setMenu_];
  }

  [v17 setShowsMenuAsPrimaryAction_];

  [v17 setPreferredMenuElementOrder_];
  [v17 setNeedsUpdateConfiguration];
  [v17 invalidateIntrinsicContentSize];
}

uint64_t sub_23DDDA7D0(void (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{

  a1(*(v2 + 24));

  return a2(v2, 32, 7);
}

uint64_t getEnumTagSinglePayload for ConfigurationViewModel.ConfigurationMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfigurationViewModel.ConfigurationMode(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23DDDA9D4()
{
  result = qword_27E326230;
  if (!qword_27E326230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E326230);
  }

  return result;
}

const char *sub_23DDDAA40()
{
  if (*v0)
  {
    return "SwiftUI";
  }

  else
  {
    return "OnBoardingKit";
  }
}

const char *sub_23DDDAA70()
{
  if (*v0)
  {
    return "Solarium";
  }

  else
  {
    return "NaturalUI";
  }
}

uint64_t sub_23DDDAAC4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v39 = a5;
  v40 = a4;
  v38 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326238, &unk_23DE08BA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326240, &qword_23DE08418);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261F0, &unk_23DE08AB0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  v18 = sub_23DE05F68();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DE05F78();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_23DDDB20C(v17);
  }

  (*(v19 + 32))(v21, v17, v18);
  v23 = a2;
  sub_23DE05EB8();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  v26 = v38;
  *(v25 + 16) = v24;
  *(v25 + 24) = v26;
  v27 = v26;
  sub_23DE05348();
  v28 = sub_23DE05338();
  (*(*(v28 - 8) + 56))(v11, 0, 1, v28);
  v29 = sub_23DE05DF8();
  sub_23DE05308();
  v29(v41, 0);
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = swift_allocObject();
  v31[2] = v30;
  v32 = v39;
  v33 = v40;
  v31[3] = v40;
  v31[4] = v32;
  v34 = v32;
  v35 = v33;
  sub_23DE05368();
  v36 = sub_23DE05358();
  (*(*(v36 - 8) + 56))(v8, 0, 1, v36);
  sub_23DE05ED8();
  (*(v19 + 16))(v15, v21, v18);
  (*(v19 + 56))(v15, 0, 1, v18);
  sub_23DE05F88();
  return (*(v19 + 8))(v21, v18);
}

id sub_23DDDAF08(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong isEnabled];

    if (a3)
    {
      v7 = v6;
    }

    else
    {
      v7 = 1;
    }

    v8 = a1;
    if (!v7)
    {
      v8 = a3;
    }
  }

  else
  {
    v8 = a1;
  }

  return v8;
}

uint64_t sub_23DDDAFA4@<X0>(uint64_t a1@<X0>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_23DE05178();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v14 = *(v10 + 16);
  if (!Strong)
  {
    return v14(a5, a1, v9);
  }

  v15 = Strong;
  v14(v12, a1, v9);
  v16 = [v15 isEnabled];
  if (a4)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    a4 = a3;
  }

  v18 = a4;
  v20 = a4;
  sub_23DDDB288();
  sub_23DE05188();

  return (*(v10 + 32))(a5, v12, v9);
}

uint64_t sub_23DDDB130()
{
  v3[3] = &type metadata for Features;
  v3[4] = sub_23DDCDEA8();
  LOBYTE(v3[0]) = 1;
  v0 = sub_23DE05238();
  result = __swift_destroy_boxed_opaque_existential_1(v3);
  v2 = 38.0;
  if ((v0 & 1) == 0)
  {
    v2 = 24.0;
  }

  qword_27E326F10 = *&v2;
  return result;
}

uint64_t sub_23DDDB1A0()
{
  v3[3] = &type metadata for Features;
  v3[4] = sub_23DDCDEA8();
  LOBYTE(v3[0]) = 1;
  v0 = sub_23DE05238();
  result = __swift_destroy_boxed_opaque_existential_1(v3);
  v2 = 5.0;
  if (v0)
  {
    v2 = 10.0;
  }

  qword_27E326F18 = *&v2;
  return result;
}

uint64_t sub_23DDDB20C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261F0, &unk_23DE08AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23DDDB288()
{
  result = qword_27E326248;
  if (!qword_27E326248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E326248);
  }

  return result;
}

id sub_23DDDB2DC()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for HighlightAnimatingMenuButton(0);
  objc_msgSendSuper2(&v9, sel_setNeedsLayout);
  v1 = OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_commitTracker;
  result = *&v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_commitTracker];
  if (result)
  {
    return [result setNeedsLayout];
  }

  type metadata accessor for CommitTrackingView();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 addSubview_];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = &v3[OBJC_IVAR____TtC27ActionButtonConfigurationUI18CommitTrackingView_commitHandler];
  v6 = *&v3[OBJC_IVAR____TtC27ActionButtonConfigurationUI18CommitTrackingView_commitHandler];
  v7 = *&v3[OBJC_IVAR____TtC27ActionButtonConfigurationUI18CommitTrackingView_commitHandler + 8];
  *v5 = sub_23DDDC390;
  v5[1] = v4;

  sub_23DDCC0D8(v6, v7);

  v8 = *&v0[v1];
  *&v0[v1] = v3;

  result = *&v0[v1];
  if (result)
  {
    return [result setNeedsLayout];
  }

  __break(1u);
  return result;
}

void sub_23DDDB3F8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_23DDDB494();
  }
}

id sub_23DDDB494()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261F0, &unk_23DE08AB0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &aBlock - v2;
  if (sub_23DDDB778())
  {
    v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_isAnimating] = 1;
    if ([v0 state] == 1)
    {
      v4 = 0.17;
    }

    else
    {
      v4 = 0.3;
    }

    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v0;
    v25 = sub_23DDDC318;
    v26 = v6;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_23DDD6170;
    v24 = &block_descriptor_1;
    v7 = _Block_copy(&aBlock);
    v8 = v0;

    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v25 = sub_23DDDC35C;
    v26 = v9;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_23DDE3E94;
    v24 = &block_descriptor_26;
    v10 = _Block_copy(&aBlock);
    v11 = v8;

    [v5 transitionWithView:v11 duration:5242880 options:v7 animations:v10 completion:v4];
    _Block_release(v10);
    _Block_release(v7);
  }

  else if (v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_isAnimating] == 1)
  {
    v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_hasPendingLayout] = 1;
  }

  else
  {
    v12 = type metadata accessor for HighlightAnimatingMenuButton(0);
    v27.receiver = v0;
    v27.super_class = v12;
    objc_msgSendSuper2(&v27, sel_layoutSubviews);
  }

  v13 = [v0 state];
  *&v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_previousState] = v13;
  sub_23DE05F78();
  v14 = OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_previousConfiguration;
  swift_beginAccess();
  sub_23DDDC2A8(v3, &v0[v14]);
  swift_endAccess();
  result = [v0 bounds];
  v16 = &v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_previousBounds];
  *v16 = v17;
  v16[1] = v18;
  v16[2] = v19;
  v16[3] = v20;
  return result;
}

BOOL sub_23DDDB778()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261F0, &unk_23DE08AB0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v43 - v5;
  v7 = sub_23DE05F68();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v43 - v12;
  if (v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_isAnimating])
  {
    return 0;
  }

  v14 = *&v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_previousState];
  if ((v14 ^ (([v0 state] & 1) == 0)))
  {
    return 0;
  }

  v15 = *&v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_previousBounds];
  v16 = *&v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_previousBounds + 8];
  v17 = *&v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_previousBounds + 16];
  v18 = *&v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_previousBounds + 24];
  [v0 bounds];
  v45.origin.x = v19;
  v45.origin.y = v20;
  v45.size.width = v21;
  v45.size.height = v22;
  v44.origin.x = v15;
  v44.origin.y = v16;
  v44.size.width = v17;
  v44.size.height = v18;
  result = CGRectEqualToRect(v44, v45);
  if (!result)
  {
    return result;
  }

  v24 = OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_previousConfiguration;
  swift_beginAccess();
  sub_23DDDC1EC(&v0[v24], v6);
  v25 = *(v8 + 48);
  if (v25(v6, 1, v7) == 1)
  {
    v26 = v6;
LABEL_8:
    sub_23DDDB20C(v26);
    return 0;
  }

  v27 = v6;
  v28 = *(v8 + 32);
  v28(v13, v27, v7);
  sub_23DE05F78();
  if (v25(v4, 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);
    v26 = v4;
    goto LABEL_8;
  }

  v28(v11, v4, v7);
  v29 = sub_23DE05F28();
  v31 = v30;
  v32 = sub_23DE05F28();
  if (!v31)
  {
    if (!v33)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (!v33)
  {
LABEL_17:

    goto LABEL_18;
  }

  if (v29 == v32 && v31 == v33)
  {

    goto LABEL_20;
  }

  v35 = sub_23DE06318();

  if ((v35 & 1) == 0)
  {
LABEL_18:
    v34 = *(v8 + 8);
    v34(v11, v7);
    v34(v13, v7);
    return 0;
  }

LABEL_20:
  v36 = sub_23DE05EF8();
  v37 = sub_23DE05EF8();
  v38 = v37;
  if (!v36)
  {
    v41 = *(v8 + 8);
    v41(v11, v7);
    v41(v13, v7);
    if (v38)
    {

      return 0;
    }

    return 1;
  }

  if (!v37)
  {
    v42 = *(v8 + 8);
    v42(v11, v7);
    v42(v13, v7);

    return 0;
  }

  sub_23DDDC25C();
  v39 = sub_23DE05DC8();
  v40 = *(v8 + 8);
  v40(v11, v7);
  v40(v13, v7);

  return (v39 & 1) != 0;
}

id sub_23DDDBCE0(void *a1)
{
  v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_isAnimating] = 0;
  v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_hasPendingLayout] = 0;
  *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_previousState] = 0;
  v3 = OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_previousConfiguration;
  v4 = sub_23DE05F68();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = &v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_previousBounds];
  *v5 = 0u;
  v5[1] = 0u;
  *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_commitTracker] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for HighlightAnimatingMenuButton(0);
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

void sub_23DDDBDFC()
{
  sub_23DDDB20C(v0 + OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_previousConfiguration);
  v1 = *(v0 + OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_commitTracker);
}

id sub_23DDDBE3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HighlightAnimatingMenuButton(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for HighlightAnimatingMenuButton(uint64_t a1)
{
  result = qword_27E326280;
  if (!qword_27E326280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23DDDBF14(uint64_t a1)
{
  sub_23DDDBFD4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23DDDBFD4(uint64_t a1)
{
  if (!qword_27E326290)
  {
    sub_23DE05F68();
    v1 = sub_23DE05FB8();
    if (!v2)
    {
      atomic_store(v1, &qword_27E326290);
    }
  }
}

uint64_t sub_23DDDC1EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261F0, &unk_23DE08AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23DDDC25C()
{
  result = qword_27E3262A0;
  if (!qword_27E3262A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E3262A0);
  }

  return result;
}

uint64_t sub_23DDDC2A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261F0, &unk_23DE08AB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_23DDDC318()
{
  v2.receiver = *(v0 + 16);
  v2.super_class = type metadata accessor for HighlightAnimatingMenuButton(0);
  return objc_msgSendSuper2(&v2, sel_layoutSubviews);
}

_BYTE *sub_23DDDC35C()
{
  result = *(v0 + 16);
  result[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_isAnimating] = 0;
  if (result[OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_hasPendingLayout] == 1)
  {
    return [result setNeedsLayout];
  }

  return result;
}

id sub_23DDDC3A0(void *a1, __int128 *a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC27ActionButtonConfigurationUI34ControlConfigurationViewController_completionHandler];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v2[OBJC_IVAR____TtC27ActionButtonConfigurationUI34ControlConfigurationViewController_rootSheetPresentationControllerBehaviorAssertion] = 0;
  *&v2[OBJC_IVAR____TtC27ActionButtonConfigurationUI34ControlConfigurationViewController_configuredAction] = a1;
  v7 = objc_allocWithZone(MEMORY[0x277D7D7E8]);
  v8 = a1;
  v9 = [v7 init];
  v10 = [v8 intent];
  [v9 setIntent_];

  [v9 setWidgetConfigurationType_];
  if (*(a2 + 3))
  {

    v11 = sub_23DE05A18();
  }

  else
  {
    v11 = 0;
  }

  [v9 setWidgetDisplayName_];

  if (*(a2 + 5))
  {

    v12 = sub_23DE05A18();
    v16 = *a2;
    sub_23DDD90F4(&v16);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v16 = *a2;
    sub_23DDD90F4(&v16);
    v12 = 0;
  }

  [v9 setWidgetDescription_];

  v15.receiver = v2;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_initWithOptions_, v9);
  [v13 setDelegate_];

  return v13;
}

id sub_23DDDC60C()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI34ControlConfigurationViewController_rootSheetPresentationControllerBehaviorAssertion];
  if (v2)
  {
    [v2 invalidate];
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_23DDDC744(char a1)
{
  v15.receiver = v1;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, sel_viewIsAppearing_, a1 & 1);
  v3 = OBJC_IVAR____TtC27ActionButtonConfigurationUI34ControlConfigurationViewController_rootSheetPresentationControllerBehaviorAssertion;
  if (!*&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI34ControlConfigurationViewController_rootSheetPresentationControllerBehaviorAssertion])
  {
    v4 = [v1 view];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 window];

      if (v6)
      {
        v7 = [v6 _rootSheetPresentationController];

        if (v7)
        {
          [v7 _setShouldScaleDownBehindDescendantSheets_];
          v8 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v9 = objc_allocWithZone(MEMORY[0x277CF0CE8]);

          v10 = sub_23DE05A18();
          v11 = sub_23DE05A18();
          v14[4] = sub_23DDDCCDC;
          v14[5] = v8;
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 1107296256;
          v14[2] = sub_23DDDCCE4;
          v14[3] = &block_descriptor_2;
          v12 = _Block_copy(v14);
          v13 = [v9 initWithIdentifier:v10 forReason:v11 invalidationBlock:v12];

          _Block_release(v12);

          *&v1[v3] = v13;
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_23DDDC96C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong _setShouldScaleDownBehindDescendantSheets_];
  }
}

uint64_t sub_23DDDCA20(char a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewDidDisappear_, a1 & 1);
  v3 = OBJC_IVAR____TtC27ActionButtonConfigurationUI34ControlConfigurationViewController_rootSheetPresentationControllerBehaviorAssertion;
  v4 = *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI34ControlConfigurationViewController_rootSheetPresentationControllerBehaviorAssertion];
  if (v4)
  {
    [v4 invalidate];
  }

  *&v1[v3] = 0;
  return swift_unknownObjectRelease();
}

void sub_23DDDCAE4(void *a1, id a2)
{
  v3 = v2;
  v6 = [a2 _indexingHash];
  v7 = OBJC_IVAR____TtC27ActionButtonConfigurationUI34ControlConfigurationViewController_configuredAction;
  v8 = [*(v3 + OBJC_IVAR____TtC27ActionButtonConfigurationUI34ControlConfigurationViewController_configuredAction) intent];
  if (v8 && (v9 = v8, v10 = [v8 _indexingHash], v9, v6 == v10))
  {
    v15 = 0;
  }

  else
  {
    v11 = *(v3 + v7);
    v15 = sub_23DDD96A0(a2);
  }

  v12 = v3 + OBJC_IVAR____TtC27ActionButtonConfigurationUI34ControlConfigurationViewController_completionHandler;
  v13 = *(v3 + OBJC_IVAR____TtC27ActionButtonConfigurationUI34ControlConfigurationViewController_completionHandler);
  if (v13)
  {
    v14 = *(v12 + 8);

    v13(v15);
    sub_23DDD71FC(v13, v14);
  }

  [a1 dismissViewControllerAnimated:1 completion:0];
}

void sub_23DDDCCE4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_23DDDCD4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3263A0, &unk_23DE08510);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261C8, &qword_23DE08278);
  MEMORY[0x28223BE20](v10 - 8);
  v11 = &v3[OBJC_IVAR____TtC27ActionButtonConfigurationUI27ControlPickerViewController_completionHandler];
  *v11 = a1;
  *(v11 + 1) = a2;
  v12 = objc_allocWithZone(MEMORY[0x277CFC9F0]);

  v13 = [v12 init];
  sub_23DE05D88();
  if (sub_23DDDD688())
  {
    sub_23DDC91D0(0, &qword_27E3263C0, 0x277CFA228);
    v14 = sub_23DE05AE8();
  }

  else
  {
    v14 = 0;
  }

  [v13 setDisallowedControlIdentities_];

  sub_23DE05CF8();
  sub_23DE05248();
  sub_23DE05248();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3263B0, &unk_23DE08520);
  (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
  v16 = sub_23DE05CE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325FB0, &unk_23DE08060);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_23DE07F10;
  *(v17 + 32) = v16;
  v18 = sub_23DE05AE8();

  [v13 setDisallowedExtensionIdentities_];

  if (sub_23DDDDD20())
  {
    sub_23DE05D48();
    v19 = sub_23DE05AE8();
  }

  else
  {
    v19 = 0;
  }

  [v13 setSuggestedControls_];

  v22.receiver = v3;
  v22.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v22, sel_initWithConfiguration_, v13);
  [v20 setDelegate_];

  return v20;
}

void sub_23DDDD098(void *a1, void *a2, id a3)
{
  if (a3)
  {
    v6 = 0;
    v7 = a3;
  }

  else if (a2)
  {
    sub_23DDC91D0(0, &qword_27E3263C8, 0x277D79E60);
    v9 = a2;
    v7 = sub_23DDD93D4([v9 control]);
    v10 = v7;
    v6 = [v9 promptsForUserConfiguration];
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v11 = *(v3 + OBJC_IVAR____TtC27ActionButtonConfigurationUI27ControlPickerViewController_completionHandler);
  v12 = a3;
  v13 = a3;

  v14 = v11(v7, a3 != 0);
  v16 = v15;

  sub_23DDD6EB4(v7);
  if (v6)
  {
    v17 = sub_23DDD6EA4(v14, v16);
    v18 = v14;
    v19 = v16;
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v20 = [a1 presentingViewController];
  if (v20)
  {
    v21 = v20;
    if (v18)
    {
      v23[4] = v18;
      v23[5] = v19;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 1107296256;
      v23[2] = sub_23DDD6170;
      v23[3] = &block_descriptor_3;
      v22 = _Block_copy(v23);
    }

    else
    {
      v22 = 0;
    }

    [v21 dismissViewControllerAnimated:1 completion:v22];
    sub_23DDD6EB4(v7);
    sub_23DDCC0D8(v14, v16);
    sub_23DDCC0D8(v18, v19);
    _Block_release(v22);
  }

  else
  {
    sub_23DDD6EB4(v7);
    sub_23DDCC0D8(v14, v16);

    sub_23DDCC0D8(v18, v19);
  }
}

id sub_23DDDD42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a5;
  v22 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261C8, &qword_23DE08278);
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3263A0, &unk_23DE08510);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3263B0, &unk_23DE08520);
  v15 = *(*(v14 - 8) + 56);
  v15(v13, 1, 1, v14);
  if (a4)
  {

    sub_23DE05248();
    sub_23DDDE344(v13);
    v15(v11, 0, 1, v14);
    sub_23DDDE3AC(v11, v13);
  }

  sub_23DE05CF8();

  sub_23DE05248();
  sub_23DDDE2D4(v13, v11);
  v16 = sub_23DE05CE8();
  v17 = objc_allocWithZone(MEMORY[0x277CFA228]);
  v18 = sub_23DE05A18();
  v19 = [v17 initWithExtensionIdentity:v16 kind:v18 intent:{0, v21, v22}];

  sub_23DDDE344(v13);
  return v19;
}

uint64_t sub_23DDDD688()
{
  v13 = MEMORY[0x277D84F90];
  v0 = sub_23DDDD42C(0xD00000000000001DLL, 0x800000023DE0A900, 0xD000000000000010, 0x800000023DE0A920, 0xD00000000000002BLL, 0x800000023DE0A940);
  MEMORY[0x23EF00460]();
  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23DE05B18();
  }

  v12 = v0;
  sub_23DE05B38();
  v1 = sub_23DDDD42C(0xD000000000000029, 0x800000023DE0A970, 0xD000000000000010, 0x800000023DE0A9A0, 0xD000000000000020, 0x800000023DE0A9C0);
  MEMORY[0x23EF00460]();
  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23DE05B18();
  }

  sub_23DE05B38();
  v2 = sub_23DDDD42C(0xD000000000000036, 0x800000023DE0A850, 0xD000000000000015, 0x800000023DE0A890, 0xD000000000000041, 0x800000023DE0A9F0);
  MEMORY[0x23EF00460]();
  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23DE05B18();
  }

  v11 = v2;
  sub_23DE05B38();
  v3 = sub_23DDDD42C(0xD000000000000036, 0x800000023DE0A850, 0xD000000000000015, 0x800000023DE0A890, 0xD000000000000041, 0x800000023DE0AA40);
  MEMORY[0x23EF00460]();
  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23DE05B18();
  }

  sub_23DE05B38();
  v4 = sub_23DDDD42C(0xD000000000000021, 0x800000023DE0AA90, 0xD000000000000014, 0x800000023DE0AAC0, 0xD000000000000037, 0x800000023DE0AAE0);
  MEMORY[0x23EF00460]();
  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23DE05B18();
  }

  sub_23DE05B38();
  v5 = sub_23DDDD42C(0xD000000000000033, 0x800000023DE0AB20, 0xD00000000000001ALL, 0x800000023DE0AB60, 0xD00000000000003ALL, 0x800000023DE0AB80);
  MEMORY[0x23EF00460]();
  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23DE05B18();
  }

  sub_23DE05B38();
  v6 = sub_23DDDD42C(0xD000000000000026, 0x800000023DE0ABC0, 0xD000000000000013, 0x800000023DE0ABF0, 0xD000000000000031, 0x800000023DE0AC10);
  MEMORY[0x23EF00460]();
  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23DE05B18();
  }

  sub_23DE05B38();
  v7 = sub_23DDDD42C(0xD000000000000023, 0x800000023DE0AC50, 0xD000000000000013, 0x800000023DE0AC80, 0x437070416E65704FLL, 0xEE006C6F72746E6FLL);
  MEMORY[0x23EF00460]();
  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23DE05B18();
  }

  sub_23DE05B38();
  v8 = sub_23DDDD42C(0xD000000000000023, 0x800000023DE0AC50, 0xD000000000000013, 0x800000023DE0AC80, 0xD000000000000010, 0x800000023DE0ACA0);
  MEMORY[0x23EF00460]();
  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23DE05B18();
  }

  sub_23DE05B38();
  v9 = sub_23DDDD42C(0xD00000000000002CLL, 0x800000023DE0ACC0, 0xD000000000000013, 0x800000023DE0ACF0, 0xD000000000000028, 0x800000023DE0AD10);
  MEMORY[0x23EF00460]();
  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23DE05B18();
  }

  sub_23DE05B38();

  return v13;
}

uint64_t sub_23DDDDD20()
{
  v23 = MEMORY[0x277D84F90];
  v0 = sub_23DDDD42C(0xD000000000000025, 0x800000023DE0A610, 0xD000000000000014, 0x800000023DE0A640, 0xD00000000000002DLL, 0x800000023DE0A660);
  v1 = [objc_allocWithZone(MEMORY[0x277CFC9E8]) initWithIdentity:v0 type:0 size:0];

  v2 = v1;
  MEMORY[0x23EF00460]();
  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23DE05B18();
  }

  v22 = v2;
  sub_23DE05B38();
  v3 = sub_23DDDD42C(0xD000000000000026, 0x800000023DE0A690, 0xD000000000000015, 0x800000023DE0A6C0, 0xD000000000000027, 0x800000023DE0A6E0);
  v4 = [objc_allocWithZone(MEMORY[0x277CFC9E8]) initWithIdentity:v3 type:0 size:0];

  v5 = v4;
  MEMORY[0x23EF00460]();
  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23DE05B18();
  }

  sub_23DE05B38();
  v6 = sub_23DDDD42C(0xD000000000000026, 0x800000023DE0A690, 0xD000000000000015, 0x800000023DE0A6C0, 0xD000000000000023, 0x800000023DE0A710);
  v7 = [objc_allocWithZone(MEMORY[0x277CFC9E8]) initWithIdentity:v6 type:0 size:0];

  v8 = v7;
  MEMORY[0x23EF00460]();
  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23DE05B18();
  }

  sub_23DE05B38();
  v9 = sub_23DDDD42C(0xD000000000000025, 0x800000023DE0A740, 0x6C7070612E6D6F63, 0xEE00656D6F482E65, 0xD000000000000023, 0x800000023DE0A770);
  v10 = [objc_allocWithZone(MEMORY[0x277CFC9E8]) initWithIdentity:v9 type:0 size:0];

  v11 = v10;
  MEMORY[0x23EF00460]();
  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23DE05B18();
  }

  sub_23DE05B38();
  v12 = sub_23DDDD42C(0xD000000000000022, 0x800000023DE0A7A0, 0xD000000000000012, 0x800000023DE0A7D0, 0xD000000000000022, 0x800000023DE0A7F0);
  v13 = [objc_allocWithZone(MEMORY[0x277CFC9E8]) initWithIdentity:v12 type:0 size:0];

  v14 = v13;
  MEMORY[0x23EF00460]();
  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23DE05B18();
  }

  sub_23DE05B38();
  v15 = sub_23DDDD42C(0xD000000000000026, 0x800000023DE0A690, 0xD000000000000015, 0x800000023DE0A6C0, 0xD000000000000023, 0x800000023DE0A820);
  v16 = [objc_allocWithZone(MEMORY[0x277CFC9E8]) initWithIdentity:v15 type:0 size:0];

  v17 = v16;
  MEMORY[0x23EF00460]();
  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23DE05B18();
  }

  sub_23DE05B38();
  v18 = sub_23DDDD42C(0xD000000000000036, 0x800000023DE0A850, 0xD000000000000015, 0x800000023DE0A890, 0xD000000000000041, 0x800000023DE0A8B0);
  v19 = [objc_allocWithZone(MEMORY[0x277CFC9E8]) initWithIdentity:v18 type:0 size:0];

  v20 = v19;
  MEMORY[0x23EF00460]();
  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23DE05B18();
  }

  sub_23DE05B38();

  return v23;
}

uint64_t sub_23DDDE2D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3263A0, &unk_23DE08510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DDDE344(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3263A0, &unk_23DE08510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DDDE3AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3263A0, &unk_23DE08510);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_23DDDE4F8()
{
  swift_getObjectType();
  sub_23DDDE7E4();
  if (v1)
  {
    v2 = sub_23DE05A48();
    v4 = v3;
    if (v2 == sub_23DE05A48() && v4 == v5)
    {
    }

    else
    {
      v7 = sub_23DE06318();

      if ((v7 & 1) == 0)
      {
        v8 = sub_23DE05A18();
        v9 = *(v0 + OBJC_IVAR____TtC27ActionButtonConfigurationUI18ActionSelectorItem_isConfigured);
        v10 = objc_opt_self();
        v11 = [v10 _systemImageNamed_shape_fill_];

        if (v11)
        {

          v12 = v11;
LABEL_21:
          v24 = v11;

          v25 = v12;
          v26 = sub_23DE05A18();
          [v25 setAccessibilityLabel_];

          return;
        }

        v17 = sub_23DE05A18();
        v18 = [v10 _systemImageNamed_];

        if (v18)
        {

          v19 = v18;
LABEL_20:
          v12 = v19;
          goto LABEL_21;
        }

        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v21 = [objc_opt_self() bundleForClass_];
        v22 = sub_23DE05A18();

        v23 = [v10 imageNamed:v22 inBundle:v21 withConfiguration:0];

        if (v23)
        {
          v19 = v23;
          goto LABEL_20;
        }

        v13 = MEMORY[0x277D755B8];
        goto LABEL_10;
      }
    }

    v15 = sub_23DE05A18();
    v16 = [objc_opt_self() _systemImageNamed_];

    if (v16)
    {
    }

    else
    {
      __break(1u);
    }

    return;
  }

  v13 = MEMORY[0x277D755B8];
LABEL_10:
  v14 = objc_allocWithZone(v13);

  [v14 init];
}
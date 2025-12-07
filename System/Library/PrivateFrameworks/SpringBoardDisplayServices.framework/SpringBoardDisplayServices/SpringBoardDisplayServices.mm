uint64_t sub_26B9E3610()
{
  result = sub_26B9E68EC();
  qword_280434178 = result;
  return result;
}

uint64_t sub_26B9E3728()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v8, sel_defaultExtensions);
  if (v1)
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434120, &qword_26B9E6E48);
    v3 = sub_26B9E692C();
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_26B9E4894(0, *(v3 + 16) + 1, 1, v3);
  }

  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_26B9E4894((v4 > 1), v5 + 1, 1, v3);
  }

  v6 = sub_26B9E390C();
  *(v3 + 16) = v5 + 1;
  *(v3 + 8 * v5 + 32) = v6;
  return v3;
}

id sub_26B9E3868()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
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

unint64_t sub_26B9E390C()
{
  result = qword_280434128;
  if (!qword_280434128)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280434128);
  }

  return result;
}

uint64_t registerForContinuityDisplay()()
{
  type metadata accessor for ContinuityProfileProvider();
  swift_allocObject();
  sub_26B9E39EC();
  sub_26B9E68BC();
}

unint64_t sub_26B9E39EC()
{
  result = qword_280434130;
  if (!qword_280434130)
  {
    type metadata accessor for ContinuityProfileProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280434130);
  }

  return result;
}

uint64_t sub_26B9E3A44(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75750]) init];
  [v2 setPreferredLevel_];
  [a1 setClientSettings_];
  v5[4] = sub_26B9E50CC;
  v5[5] = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_26B9E3B68;
  v5[3] = &block_descriptor_11;
  v3 = _Block_copy(v5);

  [a1 updateSettingsWithBlock_];

  _Block_release(v3);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

void sub_26B9E3B68(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_26B9E3C0C(void *a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_allocWithZone(MEMORY[0x277D75750]) init];
  [v9 setPreferredLevel_];
  [a1 setClientSettings_];
  v12[4] = a3;
  v12[5] = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_26B9E3B68;
  v12[3] = a4;
  v10 = _Block_copy(v12);

  [a1 updateSettingsWithBlock_];

  _Block_release(v10);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B9E3D30(void *a1, double a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D75750]) init];
  [v4 setPreferredLevel_];
  [a1 setClientSettings_];
  v7[4] = sub_26B9E50CC;
  v7[5] = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_26B9E3B68;
  v7[3] = &block_descriptor;
  v5 = _Block_copy(v7);

  [a1 updateSettingsWithBlock_];

  _Block_release(v5);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B9E3E64()
{
  v1 = *v0;
  v2 = sub_26B9E680C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17[-1] - v7;
  v9 = sub_26B9E689C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B9E68AC();
  if ((*(v10 + 88))(v12, v9) == *MEMORY[0x277D54F80])
  {
    sub_26B9E67EC();
    *(swift_allocObject() + 16) = v1;
    sub_26B9E67FC();

    v13 = *(v3 + 8);
    v13(v6, v2);
    v17[3] = v2;
    v17[4] = MEMORY[0x277D54F78];
    __swift_allocate_boxed_opaque_existential_1(v17);
    sub_26B9E67DC();
    v13(v8, v2);
    sub_26B9E684C();
    __swift_destroy_boxed_opaque_existential_1(v17);
    sub_26B9E682C();

    sub_26B9E682C();
  }

  else
  {
    sub_26B9E682C();
    sub_26B9E682C();

    sub_26B9E682C();

    (*(v10 + 8))(v12, v9);
  }

  v14 = sub_26B9E682C();

  return v14;
}

uint64_t sub_26B9E41B0(uint64_t a1)
{
  *(v1 + 72) = a1;
  sub_26B9E695C();
  *(v1 + 80) = sub_26B9E694C();
  v3 = sub_26B9E693C();

  return MEMORY[0x2822009F8](sub_26B9E4248, v3, v2);
}

uint64_t sub_26B9E4248()
{
  v3 = v1[9];

  v4 = sub_26B9E4C74(v3);
  v5 = sub_26B9E4DA4(v3);
  v6 = sub_26B9E4EFC(v3);
  v1[6] = v4;
  v1[7] = v5;
  v1[8] = v6;
  v31 = v6;
  v32 = v4;
  v30 = v5;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v9 = 3;
  v10 = 0x279D11000uLL;
LABEL_2:
  if (v7 > 3)
  {
    v9 = v7;
  }

  while (v7 != 3)
  {
    if (v9 == v7)
    {
      __break(1u);
LABEL_36:
      swift_once();
LABEL_22:
      *(swift_task_alloc() + 16) = v2;
      v24 = sub_26B9E681C();

      v25 = 0x279D11000;
      if (!v4)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    v11 = v1[v7++ + 6];
    if (v11)
    {
      v12 = v11;
      v13 = v10;
      v14 = [v12 *(v10 + 3768)];
      [v14 preferredLevel];
      v2 = v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_26B9E4998(0, *(v8 + 2) + 1, 1, v8);
      }

      v17 = *(v8 + 2);
      v16 = *(v8 + 3);
      v0 = (v17 + 1);
      if (v17 >= v16 >> 1)
      {
        v8 = sub_26B9E4998((v16 > 1), v17 + 1, 1, v8);
      }

      *(v8 + 2) = v0;
      *&v8[8 * v17 + 32] = v2;
      v10 = v13;
      v9 = 3;
      goto LABEL_2;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434138, &qword_26B9E6ED8);
  swift_arrayDestroy();
  v18 = *(v8 + 2);
  if (v18)
  {
    v2 = *(v8 + 4);
    v19 = v18 - 1;
    if (v19)
    {
      v20 = (v8 + 40);
      do
      {
        v21 = *v20++;
        v22 = v21;
        if (v2 < v21)
        {
          v2 = v22;
        }

        --v19;
      }

      while (v19);
    }
  }

  else
  {
    v2 = 0.0;
  }

  if (sub_26B9E65D8())
  {
    v23 = v1[9];
    v29 = v23[4];
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    v0 = [objc_allocWithZone(type metadata accessor for ContinuityDragAndDropSceneSpecification()) init];
    if (qword_280434118 != -1)
    {
      goto LABEL_36;
    }

    goto LABEL_22;
  }

  v24 = 0;
  v25 = 0x279D11000uLL;
  if (!v4)
  {
    goto LABEL_26;
  }

LABEL_25:
  [v32 *(v25 + 3760)];
LABEL_26:
  if (v5)
  {
    [v30 *(v25 + 3760)];
  }

  if (v6)
  {
    [v31 *(v25 + 3760)];
  }

  if (v24)
  {
    v26 = v24;
    [v26 *(v25 + 3760)];
  }

  v27 = v1[1];

  return v27();
}

uint64_t sub_26B9E45C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_26B9E4654(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B9E46F0;

  return sub_26B9E41B0(a1);
}

uint64_t sub_26B9E46F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
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

char *sub_26B9E4894(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434148, &qword_26B9E6EE8);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_26B9E4998(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434140, &qword_26B9E6EE0);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_26B9E4A9C(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434150, &unk_26B9E6EF0);
  v10 = *(sub_26B9E67AC() - 8);
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
  v15 = *(sub_26B9E67AC() - 8);
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

uint64_t sub_26B9E4C74(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v1 = [objc_allocWithZone(MEMORY[0x277D67CB8]) init];
  v2 = sub_26B9E68EC();
  v3 = [objc_opt_self() identityForDaemonJobLabel_];

  v4 = [objc_opt_self() identityForProcessIdentity_];
  v5 = sub_26B9E681C();

  return v5;
}

uint64_t sub_26B9E4DA4(void *a1)
{
  if (![objc_opt_self() isSupported])
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = [objc_allocWithZone(MEMORY[0x277D67DF8]) init];
  v3 = sub_26B9E68EC();
  v4 = [objc_opt_self() identityForDaemonJobLabel_];

  v5 = [objc_opt_self() identityForProcessIdentity_];
  v6 = sub_26B9E681C();

  return v6;
}

uint64_t sub_26B9E4EFC(void *a1)
{
  if (![objc_opt_self() isSupported])
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = [objc_allocWithZone(MEMORY[0x277D67E00]) init];
  v3 = sub_26B9E68EC();
  v4 = [objc_opt_self() identityForDaemonJobLabel_];

  v5 = [objc_opt_self() identityForProcessIdentity_];
  v6 = sub_26B9E681C();

  return v6;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t static ContinuityDisplayProfile.profile.getter()
{
  v0 = sub_26B9E688C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434158, &qword_26B9E6F10);
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434160, &qword_26B9E6F18) - 8);
  v8 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26B9E6F00;
  v10 = v9 + v8;
  v11 = v7[14];
  sub_26B9E67BC();
  *(v10 + v11) = _s26SpringBoardDisplayServices010ContinuityC7ProfileO13sceneRequestsSay13ShellSceneKit0J7RequestVGvgZ_0();
  sub_26B9E61B8(v9);
  swift_setDeallocating();
  sub_26B9E638C(v10);
  swift_deallocClassInstance();
  sub_26B9E687C();
  sub_26B9E697C();
  (*(v1 + 16))(v4, v6, v0);
  v12 = sub_26B9E696C();
  (*(v1 + 8))(v6, v0);
  return v12;
}

uint64_t sub_26B9E5328(size_t *a1)
{
  v3 = sub_26B9E67AC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v49 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v51 = &v44 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - v9;
  if (qword_280434118 != -1)
  {
    swift_once();
  }

  v11 = qword_280434180;
  v12 = [objc_allocWithZone(MEMORY[0x277D75750]) init];
  v50 = a1;
  v13 = *a1;
  v14 = *(v13 + 16);
  if (v14)
  {
    v46 = v11;
    v47 = v4;
    v48 = v1;
    v15 = v4 + 16;
    v53 = *(v4 + 16);
    v16 = v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v17 = *(v15 + 56);
    v18 = (v15 - 8);
    v45 = v12;
    v19 = v12;
    v44 = v13;
    sub_26B9E682C();
    v20 = MEMORY[0x277D84F90];
    v52 = v3;
    do
    {
      v53(v10, v16, v3);
      v21 = sub_26B9E679C();
      if (v21)
      {
        v22 = v21;
        [v21 preferredLevel];
        v24 = v23;

        (*v18)(v10, v3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_26B9E4998(0, *(v20 + 2) + 1, 1, v20);
        }

        v26 = *(v20 + 2);
        v25 = *(v20 + 3);
        if (v26 >= v25 >> 1)
        {
          v20 = sub_26B9E4998((v25 > 1), v26 + 1, 1, v20);
        }

        *(v20 + 2) = v26 + 1;
        *&v20[8 * v26 + 32] = v24;
        v3 = v52;
      }

      else
      {
        (*v18)(v10, v3);
      }

      v16 += v17;
      --v14;
    }

    while (v14);

    v4 = v47;
    v27 = v45;
    v11 = v46;
  }

  else
  {
    v27 = v12;
    v28 = v12;
    v20 = MEMORY[0x277D84F90];
  }

  v29 = COERCE_DOUBLE(sub_26B9E45C8(v20));
  v31 = v30;

  v32 = v29 + 1.0;
  if (v31)
  {
    v32 = 1.0;
  }

  [v27 setPreferredLevel_];

  [objc_allocWithZone(type metadata accessor for ContinuityDragAndDropSceneSpecification()) init];
  v33 = v27;
  v34 = v11;
  v35 = v51;
  sub_26B9E678C();
  v36 = v49;
  (*(v4 + 16))(v49, v35, v3);
  v37 = v50;
  v38 = *v50;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v37 = v38;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v38 = sub_26B9E4A9C(0, v38[2] + 1, 1, v38);
    *v37 = v38;
  }

  v41 = v38[2];
  v40 = v38[3];
  if (v41 >= v40 >> 1)
  {
    *v37 = sub_26B9E4A9C((v40 > 1), v41 + 1, 1, v38);
  }

  (*(v4 + 8))(v51, v3);
  v42 = *v37;
  *(v42 + 16) = v41 + 1;
  return (*(v4 + 32))(v42 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v41, v36, v3);
}

uint64_t sub_26B9E577C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_26B9E694C();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_26B9E65B0();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
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
    sub_26B9E698C();
    MEMORY[0x26D688540](0xD00000000000003FLL, 0x800000026B9E7200);
    v12 = sub_26B9E69CC();
    MEMORY[0x26D688540](v12);

    MEMORY[0x26D688540](46, 0xE100000000000000);
    result = sub_26B9E699C();
    __break(1u);
  }

  return result;
}

unint64_t sub_26B9E5904(uint64_t a1)
{
  sub_26B9E67CC();
  sub_26B9E6550(&qword_28158B068, MEMORY[0x277D54F68]);
  v2 = sub_26B9E68CC();

  return sub_26B9E5988(a1, v2);
}

unint64_t sub_26B9E5988(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_26B9E67CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
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
      sub_26B9E6550(&qword_280434170, MEMORY[0x277D54F70]);
      v15 = sub_26B9E68DC();
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

char *_s26SpringBoardDisplayServices010ContinuityC7ProfileO13sceneRequestsSay13ShellSceneKit0J7RequestVGvgZ_0()
{
  v0 = sub_26B9E67AC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v45 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v44 = &v42 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v43 = &v42 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v49 = &v42 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - v13;
  v15 = sub_26B9E68EC();
  v16 = [objc_opt_self() identityForDaemonJobLabel_];

  v17 = [objc_opt_self() identityForProcessIdentity_];
  v18 = [objc_allocWithZone(MEMORY[0x277D75750]) init];
  [v18 setPreferredLevel_];
  [objc_allocWithZone(MEMORY[0x277D67CB8]) init];
  v50 = v18;
  v53 = v17;
  sub_26B9E678C();
  v19 = *(v1 + 16);
  v51 = v14;
  v48 = v19;
  v19(v12, v14, v0);
  v20 = sub_26B9E4A9C(0, 1, 1, MEMORY[0x277D84F90]);
  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  if (v22 >= v21 >> 1)
  {
    v20 = sub_26B9E4A9C((v21 > 1), v22 + 1, 1, v20);
  }

  *(v20 + 2) = v22 + 1;
  v23 = *(v1 + 32);
  v46 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v47 = v23;
  v24 = *(v1 + 72);
  v23(&v20[v46 + v24 * v22], v12, v0);
  v54 = v20;
  v25 = [objc_opt_self() isSupported];
  v52 = v1;
  if (v25)
  {
    v26 = [objc_allocWithZone(MEMORY[0x277D75750]) init];
    [v26 setPreferredLevel_];
    [objc_allocWithZone(MEMORY[0x277D67DF8]) init];
    v27 = v53;
    v28 = v26;
    v29 = v49;
    sub_26B9E678C();
    v30 = v43;
    v48(v43, v29, v0);
    v32 = *(v20 + 2);
    v31 = *(v20 + 3);
    if (v32 >= v31 >> 1)
    {
      v20 = sub_26B9E4A9C((v31 > 1), v32 + 1, 1, v20);
    }

    v1 = v52;

    (*(v1 + 8))(v49, v0);
    *(v20 + 2) = v32 + 1;
    v47(&v20[v46 + v32 * v24], v30, v0);
    v54 = v20;
  }

  if ([objc_opt_self() isSupported])
  {
    v33 = [objc_allocWithZone(MEMORY[0x277D75750]) init];
    [v33 setPreferredLevel_];
    [objc_allocWithZone(MEMORY[0x277D67E00]) init];
    v34 = v53;
    v35 = v33;
    v36 = v44;
    sub_26B9E678C();
    v37 = v45;
    v48(v45, v36, v0);
    v39 = *(v20 + 2);
    v38 = *(v20 + 3);
    if (v39 >= v38 >> 1)
    {
      v20 = sub_26B9E4A9C((v38 > 1), v39 + 1, 1, v20);
    }

    v1 = v52;
    (*(v52 + 8))(v36, v0);
    *(v20 + 2) = v39 + 1;
    v47(&v20[v46 + v39 * v24], v37, v0);
    v54 = v20;
  }

  if (sub_26B9E65D8())
  {
    v40 = sub_26B9E695C();
    MEMORY[0x28223BE20](v40);
    *(&v42 - 2) = &v54;
    sub_26B9E577C(sub_26B9E6594, (&v42 - 4), "SpringBoardDisplayServices/ContinuityDisplayProfile.swift", 57, 2u, 45);

    (*(v1 + 8))(v51, v0);
  }

  else
  {
    (*(v1 + 8))(v51, v0);
  }

  return v54;
}

unint64_t sub_26B9E61B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434160, &qword_26B9E6F18);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434168, &unk_26B9E6F70);
    v7 = sub_26B9E69AC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26B9E64E0(v9, v5);
      result = sub_26B9E5904(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_26B9E67CC();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
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

uint64_t sub_26B9E638C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434160, &qword_26B9E6F18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ContinuityDisplayProfile(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ContinuityDisplayProfile(_WORD *result, int a2, int a3)
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

uint64_t sub_26B9E64E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434160, &qword_26B9E6F18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B9E6550(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_26B9E67CC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26B9E65D8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_26B9E68FC();
    v4 = v3;

    v5 = v2 == 0xD000000000000015 && 0x800000026B9E7270 == v4;
    if (v5 || (sub_26B9E69BC() & 1) != 0 || (v2 == 0xD00000000000001FLL ? (v6 = 0x800000026B9E7250 == v4) : (v6 = 0), v6))
    {

      return 1;
    }

    v7 = sub_26B9E69BC();

    if (v7)
    {
      return 1;
    }
  }

  return 0;
}

void sub_26B9E66F0()
{
  v0 = sub_26B9E68EC();
  v1 = [objc_opt_self() identityForAngelJobLabel_];

  v2 = [objc_opt_self() identityForProcessIdentity_];
  qword_280434180 = v2;
}
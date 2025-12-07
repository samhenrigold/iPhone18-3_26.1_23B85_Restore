uint64_t type metadata accessor for SettingsZeroKeywordNavigationItemsProvider(uint64_t a1)
{
  result = qword_2812122A8;
  if (!qword_2812122A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CDE323C(uint64_t a1)
{
  result = sub_21CE6BB90();
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

uint64_t static SettingsEventCenter.default.getter()
{
  if (qword_281212FB0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_21CDE3384()
{
  type metadata accessor for SettingsEventCenter();
  v0 = swift_allocObject();
  result = sub_21CDE33C4(0);
  off_281212FB8 = v0;
  return result;
}

uint64_t sub_21CDE33C4(int a1)
{
  v66 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FBC8, &qword_21CE6EF28);
  MEMORY[0x28223BE20](v1 - 8);
  v62 = v51 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FBD0, &qword_21CE6EF30);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = v51 - v4;
  v55 = sub_21CE6D140();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FBD8, &qword_21CE6EF38);
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x28223BE20](v6);
  v56 = v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FBE0, &qword_21CE6EF40);
  v60 = *(v8 - 8);
  v61 = v8;
  MEMORY[0x28223BE20](v8);
  v59 = v51 - v9;
  v64 = sub_21CE6CF80();
  v10 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v12 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21CE6CF60();
  MEMORY[0x28223BE20](v13);
  v14 = sub_21CE6CB40();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_21CDE40C8(0, &qword_281211A58, 0x277D85C78);
  v63 = "ubject";
  sub_21CE6CB30();
  v68[0] = MEMORY[0x277D84F90];
  sub_21CDE4110(&qword_281211A70, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE3FBE8, &qword_21CE6EF48);
  sub_21CDE4158(&qword_281211AB0, &unk_27CE3FBE8, &qword_21CE6EF48, MEMORY[0x277D83970]);
  v16 = v65;
  sub_21CE6D1B0();
  (*(v10 + 104))(v12, *MEMORY[0x277D85260], v64);
  v64 = v15;
  *(v16 + 16) = sub_21CE6CFB0();
  *(v16 + 24) = sub_21CDE41A0(MEMORY[0x277D84F90]);
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FBF8, &qword_21CE6EF50);
  swift_allocObject();
  v20 = sub_21CE6BE70();
  *(v16 + 56) = MEMORY[0x277D84FA0];
  *(v16 + 48) = v20;
  v21 = v66;
  *(v16 + 64) = v66;
  if (v21)
  {
    v68[0] = v20;
    swift_allocObject();
    swift_weakInit();
    sub_21CDE4158(&unk_281213258, &qword_27CE3FBF8, &qword_21CE6EF50, MEMORY[0x277CBCE20]);

    sub_21CE6BF10();
  }

  else
  {
    v22 = off_282E80568(&type metadata for DebugLoggingSettingsNavigationEventResponder);
    v24 = v23;
    v69 = &type metadata for DebugLoggingSettingsNavigationEventResponder;
    v70 = &off_282E80548;
    swift_beginAccess();
    sub_21CDE48B8(v68, v22, v24);
    swift_endAccess();
    v25 = off_282E80520(&type metadata for CrashAnnotationSettingsNavigationEventResponder);
    v27 = v26;
    v69 = &type metadata for CrashAnnotationSettingsNavigationEventResponder;
    v70 = &off_282E80500;
    swift_beginAccess();
    sub_21CDE48B8(v68, v25, v27);
    swift_endAccess();
    v28 = [objc_opt_self() mainBundle];
    v29 = [v28 bundleIdentifier];

    v63 = (v16 + 56);
    v51[1] = v19;
    if (v29)
    {
      v30 = sub_21CE6CC50();
      v32 = v31;
    }

    else
    {
      v30 = 0;
      v32 = 0xE000000000000000;
    }

    sub_21CDE4E58(v30, v32, v67);
    v33 = v67[0];
    v34 = v67[1];
    v35 = off_282E80168(&type metadata for SettingsAnalyticsNavigationEventResponder);
    v37 = v36;
    v69 = &type metadata for SettingsAnalyticsNavigationEventResponder;
    v70 = &protocol witness table for SettingsAnalyticsNavigationEventResponder;
    v68[0] = v33;
    v68[1] = v34;
    swift_beginAccess();
    sub_21CDE48B8(v68, v35, v37);
    swift_endAccess();
    v68[0] = *(v16 + 48);

    v38 = v52;
    sub_21CE6D130();
    v39 = [objc_opt_self() mainRunLoop];
    v67[2] = v39;
    v40 = sub_21CE6D120();
    v41 = v54;
    (*(*(v40 - 8) + 56))(v54, 1, 1, v40);
    sub_21CDE40C8(0, &unk_2812117F0, 0x277CBEB88);
    sub_21CDE4158(&unk_281213258, &qword_27CE3FBF8, &qword_21CE6EF50, MEMORY[0x277CBCE20]);
    sub_21CDE50A8(&qword_281211800, &unk_2812117F0, 0x277CBEB88, MEMORY[0x277CC9E80]);
    v42 = v56;
    sub_21CE6BF00();
    sub_21CDE5494(v41, &qword_27CE3FBD0, &qword_21CE6EF30);

    (*(v53 + 8))(v38, v55);

    v68[0] = *(v16 + 16);
    v43 = v68[0];
    v44 = sub_21CE6CF70();
    v45 = v62;
    (*(*(v44 - 8) + 56))(v62, 1, 1, v44);
    sub_21CDE4158(&qword_281213278, &qword_27CE3FBD8, &qword_21CE6EF38, MEMORY[0x277CBCCF8]);
    sub_21CDE50A8(&unk_281211A60, &qword_281211A58, 0x277D85C78, MEMORY[0x277D85228]);
    v46 = v43;
    v48 = v58;
    v47 = v59;
    sub_21CE6BEF0();
    sub_21CDE5494(v45, &qword_27CE3FBC8, &qword_21CE6EF28);

    (*(v57 + 8))(v42, v48);
    swift_allocObject();
    swift_weakInit();
    sub_21CDE4158(&qword_281213268, &qword_27CE3FBE0, &qword_21CE6EF40, MEMORY[0x277CBCD60]);
    v49 = v61;
    sub_21CE6BF10();

    (*(v60 + 8))(v47, v49);
  }

  swift_beginAccess();
  sub_21CE6BE20();
  swift_endAccess();

  return v16;
}

uint64_t sub_21CDE3ED8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t type metadata accessor for SettingsNavigationEventRecord(uint64_t a1)
{
  result = qword_281212858;
  if (!qword_281212858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CDE3F5C(uint64_t a1)
{
  sub_21CE6B960();
  if (v1 <= 0x3F)
  {
    sub_21CDE4020(319);
    if (v2 <= 0x3F)
    {
      sub_21CE6BA60();
      if (v3 <= 0x3F)
      {
        sub_21CDE4078();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21CDE4020(uint64_t a1)
{
  if (!qword_281211AC8)
  {
    sub_21CE6B960();
    v1 = sub_21CE6CD90();
    if (!v2)
    {
      atomic_store(v1, &qword_281211AC8);
    }
  }
}

void sub_21CDE4078()
{
  if (!qword_281211AD0)
  {
    v0 = sub_21CE6D150();
    if (!v1)
    {
      atomic_store(v0, &qword_281211AD0);
    }
  }
}

uint64_t sub_21CDE40C8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_21CDE4110(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CDE4158(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_21CDE41A0(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v25 = 0;
  v26 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_21CDE4378(v3, 0);
  v24 = v2;
  sub_21CDE47CC(0, v3, 0);
  if (!v3)
  {
    return v25;
  }

  v4 = 0;
  v5 = a1 + 32;
  while (1)
  {
    sub_21CDEF704(v5 + 56 * v4, v22);
    v7 = v22[0];
    v6 = v22[1];
    sub_21CDE4CD8(&v23, v21);
    v8 = v25;
    v9 = v26;
    v10 = *(v26 + 16);
    if (!v25)
    {
      break;
    }

    sub_21CDFBE4C(v7, v6, v9 + 32, v10, (v8 + 16), v8 + 32);
    v12 = v11;
    v14 = v13;

    if ((v12 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_15:
    sub_21CDE4B60(v7, v6, v14);
    sub_21CDE4CF4(v21, v20);
    v24 = v2;
    v19 = *(v2 + 16);
    v18 = *(v2 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_21CDE47CC((v18 > 1), v19 + 1, 1);

      v2 = v24;
    }

    else
    {
    }

    ++v4;
    __swift_destroy_boxed_opaque_existential_1(v21);
    *(v2 + 16) = v19 + 1;
    sub_21CDE4CD8(v20, v2 + 40 * v19 + 32);
    if (v4 == v3)
    {
      return v25;
    }
  }

  if (!v10)
  {
LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  v16 = (v26 + 40);
  while (1)
  {
    result = *(v16 - 1);
    if (result == v7 && *v16 == v6)
    {
      break;
    }

    result = sub_21CE6D400();
    if (result)
    {
      break;
    }

    v16 += 2;
    if (!--v10)
    {
      goto LABEL_14;
    }
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_21CDE4378(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v3 = v2;
  v5 = result;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v7 + 24) >> 1)
  {
    v10 = *v3;
    if (*v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v7 + 16) <= v5)
    {
      v14 = v5;
    }

    else
    {
      v14 = *(v7 + 16);
    }

    sub_21CDE4558(isUniquelyReferenced_nonNull_native, v14, 0);
    v7 = *v6;
    v10 = *v3;
    if (*v3)
    {
LABEL_5:
      swift_beginAccess();
      v11 = *(v10 + 16) & 0x3FLL;
      v12 = MEMORY[0x21CF19C80](v5);
      if (a2)
      {
        v13 = v12;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v16 = v12;
        swift_beginAccess();
        v12 = v16;
        v13 = *(v10 + 24) & 0x3FLL;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      if (v13 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      goto LABEL_30;
    }
  }

  v12 = MEMORY[0x21CF19C80](v5);
  v11 = 0;
  if (a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v12 > 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  if (v13 <= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = v13;
  }

  result = MEMORY[0x21CF19C80](*(v7 + 16));
  if (result <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = result;
  }

  if (v18 < v11)
  {
    if (v13 <= v18)
    {
      v15 = v18;
    }

    else
    {
      v15 = v13;
    }

LABEL_30:
    v19 = sub_21CDFBC4C(v7, v15, 0, v13);

    *v3 = v19;
    return result;
  }

  if (!v10 || (result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v20 = *v3;
    if (*v3)
    {
      goto LABEL_35;
    }

LABEL_39:
    if (!v13)
    {
      return result;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (!*v3)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v20 = sub_21CE6BC90();

  *v3 = v20;
  if (!v20)
  {
    goto LABEL_39;
  }

LABEL_35:
  result = swift_beginAccess();
  if ((*(v20 + 24) & 0x3FLL) != v13)
  {
    *(v20 + 24) = *(v20 + 24) & 0xFFFFFFFFFFFFFFC0 | v13 & 0x3F;
  }

  return result;
}

char *sub_21CDE4558(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CDE4578(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21CDE4578(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE402F0, &qword_21CE6F600);
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

void *sub_21CDE4684(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40070, &qword_21CE712A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40078, &qword_21CE712A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21CDE47CC(void *a1, int64_t a2, char a3)
{
  result = sub_21CDE4684(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_21CDE4848(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FF20, qword_21CE70380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CDE48B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v7 = v3[1];
  v9 = *(v7 + 16);
  if (*v3)
  {

    v10 = sub_21CDFBE4C(a2, a3, v7 + 32, v9, (v8 + 16), v8 + 32);
    v12 = v11;
    v14 = v13;

    sub_21CDE4848(a1, &v29);
    if (v12)
    {
      if (v30)
      {
LABEL_4:
        sub_21CDE4CD8(&v29, v28);
        sub_21CDE4B60(a2, a3, v14);

        sub_21CDE4CF4(v28, v27);
        v17 = v3[2];
        v15 = v3 + 2;
        v16 = v17;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v15 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21CDE47CC(0, *(v16 + 16) + 1, 1);
          v16 = *v15;
        }

        v20 = *(v16 + 16);
        v19 = *(v16 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_21CDE47CC((v19 > 1), v20 + 1, 1);
        }

        sub_21CDE4D58(a1);
        __swift_destroy_boxed_opaque_existential_1(v28);
        v21 = *v15;
        *(v21 + 16) = v20 + 1;
        result = sub_21CDE4CD8(v27, v21 + 40 * v20 + 32);
        *v15 = v21;
        return result;
      }

LABEL_18:
      sub_21CDE4D58(a1);
    }
  }

  else
  {
    if (!v9)
    {
LABEL_17:
      sub_21CDE4848(a1, &v29);
      v14 = 0;
      if (v30)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }

    v10 = 0;
    v23 = (v7 + 40);
    while (1)
    {
      v24 = *(v23 - 1) == a2 && *v23 == a3;
      if (v24 || (sub_21CE6D400() & 1) != 0)
      {
        break;
      }

      ++v10;
      v23 += 2;
      if (v9 == v10)
      {
        goto LABEL_17;
      }
    }

    sub_21CDE4848(a1, &v29);
    v14 = 0;
  }

  if (v30)
  {
    sub_21CDE4CD8(&v29, v28);
    v25 = v3[2];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_21CE12DFC(v25);
    }

    result = sub_21CDE4D58(a1);
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v10 < v25[2])
    {
      v26 = &v25[5 * v10];
      __swift_destroy_boxed_opaque_existential_1(v26 + 4);
      result = sub_21CDE4CD8(v28, (v26 + 4));
      v3[2] = v25;
      return result;
    }

    __break(1u);
  }

  else
  {
    sub_21CDFBF98(v10, v14);

    sub_21CDFC100(v10, v28);
    sub_21CDE4D58(a1);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  return result;
}

uint64_t sub_21CDE4B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v9 = v3[1];
  v7 = v3 + 1;
  v8 = v9;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v9;
  if ((result & 1) == 0)
  {
    result = sub_21CDE4558(0, *(v8 + 16) + 1, 1);
    v8 = *v7;
  }

  v12 = *(v8 + 16);
  v11 = *(v8 + 24);
  if (v12 >= v11 >> 1)
  {
    result = sub_21CDE4558((v11 > 1), v12 + 1, 1);
    v8 = *v7;
  }

  *(v8 + 16) = v12 + 1;
  v13 = v8 + 16 * v12;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  v4[1] = v8;
  v14 = *v4;
  if (*v4)
  {
    swift_beginAccess();
    if (MEMORY[0x21CF19C50](*(v14 + 16) & 0x3FLL) > v12)
    {
      result = swift_isUniquelyReferenced_native();
      v15 = *v4;
      if ((result & 1) == 0)
      {
        if (!v15)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v16 = sub_21CE6BC90();

        *v4 = v16;
        v15 = v16;
      }

      if (v15)
      {
        return sub_21CE6BC30();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return result;
  }

  return sub_21CDFBBAC();
}

uint64_t sub_21CDE4CD8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21CDE4CF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21CDE4D58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FF20, qword_21CE70380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

void sub_21CDE4E58(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (qword_2812132A0 != -1)
  {
    swift_once();
  }

  v6 = sub_21CE6BDA0();
  __swift_project_value_buffer(v6, qword_281216608);

  v7 = sub_21CE6BD80();
  v8 = sub_21CE6CF00();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = v10;
    *v9 = 141558275;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    *(v9 + 14) = sub_21CDF2CC8(a1, a2, &v11);
    _os_log_impl(&dword_21CDE1000, v7, v8, "Initializing Navigation analytics for bundleID %{private,mask.hash}s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x21CF1BD50](v10, -1, -1);
    MEMORY[0x21CF1BD50](v9, -1, -1);
  }

  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_21CDE4FC4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_21CE6BDA0();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);

  return sub_21CE6BD90();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_21CDE50A8(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_21CDE40C8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21CDE5100(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_21CE6B960();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v13 = sub_21CE6BA60();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t SettingsEventCenter.addResponder<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*(a3 + 8) + 8))(a2);
  v8 = v7;
  v11[3] = a2;
  v11[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  swift_beginAccess();
  sub_21CDE48B8(v11, v6, v8);
  return swift_endAccess();
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

uint64_t sub_21CDE537C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CDE7888;

  return sub_21CDE5D3C(a1, v4, v5, v6);
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

uint64_t sub_21CDE5494(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *SettingsZeroKeywordNavigationItemsProvider.init(settingsHostApplicationBundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F0, &qword_21CE71300);
  MEMORY[0x28223BE20](v6 - 8);
  v32 = &v30 - v7;
  v8 = sub_21CE6D050();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40088, &qword_21CE71308);
  v15 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v17 = &v30 - v16;
  v18 = MEMORY[0x277D84F90];
  v3[4] = MEMORY[0x277D84F90];
  v3[5] = v18;
  v19 = MEMORY[0x277D84FA0];
  v3[6] = 0;
  v3[7] = v19;
  sub_21CE6BB80();
  v3[2] = a1;
  v3[3] = a2;
  v20 = [objc_opt_self() defaultCenter];
  gotLoadHelper_x8__ATXSettingsActionsClientDidRefreshRecentsNotificationName(v21);
  sub_21CE6D060();
  gotLoadHelper_x8__ATXSettingsActionsClientDidRefreshSuggestionsNotificationName(v22);
  sub_21CE6D060();
  sub_21CDE5974(&unk_281211A38, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  sub_21CE6BEE0();
  v23 = *(v9 + 8);
  v23(v12, v8);
  v23(v14, v8);
  swift_allocObject();
  swift_weakInit();
  sub_21CDE59BC();
  v24 = v31;
  sub_21CE6BF10();

  (*(v15 + 8))(v17, v24);
  swift_beginAccess();
  sub_21CE6BE20();
  swift_endAccess();

  v25 = v32;
  sub_21CE6CDF0();
  v26 = sub_21CE6CE20();
  (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = v27;
  sub_21CE0B338(0, 0, v25, &unk_21CE71318, v28);

  sub_21CDE5494(v25, &qword_27CE401F0, &qword_21CE71300);
  return v3;
}

uint64_t sub_21CDE5934()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21CDE5974(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21CDE59BC()
{
  result = qword_281213270;
  if (!qword_281213270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40088, &qword_21CE71308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281213270);
  }

  return result;
}

uint64_t sub_21CDE5A20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F0, &qword_21CE71300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CDE5A90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21CDE7888;

  return sub_21CDE5B48(a1, v4);
}

uint64_t sub_21CDE5B48(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21CDE8850;

  return v6(a1);
}

void *LinkMetadataIndexer.init(with:)(uint64_t a1)
{
  v1[2] = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  v3 = *MEMORY[0x277CCA1A0];
  v4 = objc_allocWithZone(MEMORY[0x277CC34A8]);
  v5 = v3;
  v6 = sub_21CE6CC20();
  v7 = [v4 initWithName:v6 protectionClass:v5];

  v1[3] = v7;
  v1[4] = a1;
  return v1;
}

uint64_t sub_21CDE5D5C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 1416) = Strong;
  if (Strong)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE400A0, &qword_21CE71440);
    swift_asyncLet_begin();

    swift_asyncLet_begin();

    return MEMORY[0x282200930](v0 + 16, v0 + 1384, sub_21CDE7AF4, v0 + 1296);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_21CDE5E98(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21CDE7888;

  return sub_21CDE5F34(a1);
}

uint64_t sub_21CDE5F34(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_21CDE773C;

  return SettingsZeroKeywordNavigationItemsProvider.requestAndProcessRecents()();
}

uint64_t sub_21CDE5FE8(double a1)
{
  gotLoadHelper_x8__OBJC_CLASS___ATXSettingsActionsClientRequest(a1);
  v3 = [objc_allocWithZone(*(v2 + 2056)) init];
  v1[20] = v3;
  [v3 setLimit_];
  v4 = sub_21CE6CC20();
  [v3 setClientBundleID_];

  if (qword_2812132A0 != -1)
  {
    swift_once();
  }

  v5 = sub_21CE6BDA0();
  v1[21] = __swift_project_value_buffer(v5, qword_281216608);
  v6 = sub_21CE6BD80();
  v7 = sub_21CE6CF30();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_21CDE1000, v6, v7, "Requesting Recents", v8, 2u);
    MEMORY[0x21CF1BD50](v8, -1, -1);
  }

  v10 = sub_21CDE62C4(v9);
  v1[22] = v10;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_21CDE6994;
  v11 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40090, &qword_21CE71328);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CDE6724;
  v1[13] = &block_descriptor_0;
  v1[14] = v11;
  [v10 recentActionsWithRequest:v3 completionHandler:v1 + 10];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_21CDE6228(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21CDE7A00;

  return sub_21CDE6330(a1);
}

id sub_21CDE62C4(double a1)
{
  v2 = *(v1 + 48);
  if (v2)
  {
    v3 = *(v1 + 48);
  }

  else
  {
    gotLoadHelper_x8__OBJC_CLASS___ATXSettingsActionsClient(a1);
    v5 = [objc_allocWithZone(*(v4 + 2048)) init];
    v6 = *(v1 + 48);
    *(v1 + 48) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_21CDE6330(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_21CDE78B0;

  return SettingsZeroKeywordNavigationItemsProvider.requestAndProcessSuggestions()();
}

uint64_t sub_21CDE63C4(double a1)
{
  gotLoadHelper_x8__OBJC_CLASS___ATXSettingsActionsClientRequest(a1);
  v3 = [objc_allocWithZone(*(v2 + 2056)) init];
  v1[20] = v3;
  [v3 setLimit_];
  v4 = sub_21CE6CC20();
  [v3 setClientBundleID_];

  if (qword_2812132A0 != -1)
  {
    swift_once();
  }

  v5 = sub_21CE6BDA0();
  v1[21] = __swift_project_value_buffer(v5, qword_281216608);
  v6 = sub_21CE6BD80();
  v7 = sub_21CE6CF30();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_21CDE1000, v6, v7, "Requesting Suggestions", v8, 2u);
    MEMORY[0x21CF1BD50](v8, -1, -1);
  }

  v10 = sub_21CDE62C4(v9);
  v1[22] = v10;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_21CDE6C08;
  v11 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40090, &qword_21CE71328);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CDE6724;
  v1[13] = &block_descriptor_14;
  v1[14] = v11;
  [v10 suggestedActionsWithRequest:v3 completionHandler:v1 + 10];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
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

uint64_t sub_21CDE66C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21CDE6724(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406C0, &qword_21CE70E30);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return MEMORY[0x282200958](v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return MEMORY[0x282200958](v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t type metadata accessor for SettingsPaneRecipe(uint64_t a1)
{
  result = qword_281213050;
  if (!qword_281213050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CDE6900(uint64_t a1)
{
  type metadata accessor for NSBundle.PluginLocation(319);
  if (v1 <= 0x3F)
  {
    sub_21CDE6F48();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21CDE6994()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_21CE0B250;
  }

  else
  {
    v2 = sub_21CDE6AA4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CDE6AA4()
{
  v1 = v0[22];
  v2 = v0[18];
  v0[24] = v2;

  v3 = sub_21CE6BD80();
  v4 = sub_21CE6CF30();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21CDE1000, v3, v4, "Processing Recents", v5, 2u);
    MEMORY[0x21CF1BD50](v5, -1, -1);
  }

  v6 = [v2 actions];
  gotLoadHelper_x2__OBJC_CLASS___ATXSettingsAction(v7);
  sub_21CDE40C8(0, v9, (v8 + 2040));
  v10 = sub_21CE6CD40();
  v0[25] = v10;

  v11 = swift_task_alloc();
  v0[26] = v11;
  *v11 = v0;
  v11[1] = sub_21CDE7468;

  return sub_21CDE6F28(v10);
}

uint64_t sub_21CDE6C08()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_21CE0C478;
  }

  else
  {
    v2 = sub_21CDE6D50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CDE6D18(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CDE6D50()
{
  v1 = v0[22];
  v2 = v0[18];
  v0[24] = v2;

  v3 = sub_21CE6BD80();
  v4 = sub_21CE6CF30();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21CDE1000, v3, v4, "Processing Suggestions", v5, 2u);
    MEMORY[0x21CF1BD50](v5, -1, -1);
  }

  v6 = [v2 actions];
  gotLoadHelper_x2__OBJC_CLASS___ATXSettingsAction(v7);
  sub_21CDE40C8(0, v9, (v8 + 2040));
  v10 = sub_21CE6CD40();
  v0[25] = v10;

  v11 = swift_task_alloc();
  v0[26] = v11;
  *v11 = v0;
  v11[1] = sub_21CDE7608;

  return sub_21CDE6F28(v10);
}

uint64_t sub_21CDE6EB4(uint64_t a1)
{
  result = sub_21CE6BA60();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21CDE6F28(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_21CDE6F98, 0, 0);
}

void sub_21CDE6F48()
{
  if (!qword_2812117E0)
  {
    v0 = sub_21CE6D150();
    if (!v1)
    {
      atomic_store(v0, &qword_2812117E0);
    }
  }
}

uint64_t sub_21CDE6F98()
{
  v12 = v0;
  v1 = v0[7];
  if (v1 >> 62)
  {
    v2 = sub_21CE6D360();
    v0[9] = v2;
    if (v2)
    {
LABEL_3:
      v3 = v0[7];
      v0[10] = MEMORY[0x277D84F90];
      if ((v3 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x21CF1B2A0](0);
      }

      else
      {
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x28210B540](v2, v3);
        }

        v4 = *(v3 + 32);
      }

      v0[11] = v4;
      v0[12] = 1;
      v5 = [v4 linkAction];
      v0[5] = sub_21CDE40C8(0, &qword_2812119C8, 0x277D23720);
      v0[2] = v5;
      v6 = swift_task_alloc();
      v0[13] = v6;
      sub_21CDF3438();
      *v6 = v0;
      v6[1] = sub_21CE0B5E8;
      v2 = (v0 + 6);
      v3 = (v0 + 2);

      return MEMORY[0x28210B540](v2, v3);
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[9] = v2;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v7 = v0[8];
  v11 = MEMORY[0x277D84FA0];

  v8 = sub_21CDE71C0(MEMORY[0x277D84F90], &v11, v7);

  v9 = v0[1];

  return v9(v8);
}

void *sub_21CDE71C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40098, &unk_21CE71410);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v27 = type metadata accessor for SettingsNavigationEventRecord(0);
  v10 = MEMORY[0x28223BE20](v27);
  v26 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v15 = *(a1 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = (a1 + 32);
  v23 = v12;
  v17 = (v12 + 48);
  v18 = MEMORY[0x277D84F90];
  v24 = a2;
  v25 = a3;
  while (1)
  {
    v28 = *v16;

    sub_21CE0B9D8(&v28, a2, a3, v9);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v27) == 1)
    {
      sub_21CDE5494(v9, &qword_27CE40098, &unk_21CE71410);
    }

    else
    {
      sub_21CE0C2E8(v9, v14);
      sub_21CE0C2E8(v14, v26);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_21CDF2368(0, v18[2] + 1, 1, v18);
      }

      v20 = v18[2];
      v19 = v18[3];
      if (v20 >= v19 >> 1)
      {
        v18 = sub_21CDF2368((v19 > 1), v20 + 1, 1, v18);
      }

      v18[2] = v20 + 1;
      sub_21CE0C2E8(v26, v18 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v20);
      a2 = v24;
      a3 = v25;
    }

    ++v16;
    if (!--v15)
    {
      return v18;
    }
  }

  return v18;
}

uint64_t sub_21CDE7468(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = sub_21CE0B2C8;
  }

  else
  {

    *(v4 + 224) = a1;
    v5 = sub_21CDE7598;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21CDE7598()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);
  v3 = *(v0 + 224);

  return v2(v3);
}

uint64_t sub_21CDE7608(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = sub_21CE0C47C;
  }

  else
  {

    *(v4 + 224) = a1;
    v5 = sub_21CDE7738;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21CDE773C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_21CDE79FC, 0, 0);
  }
}

uint64_t sub_21CDE78B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_21CDE788C, 0, 0);
  }
}

uint64_t sub_21CDE7A00()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21CDE7AF4()
{
  v1[178] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 82, v1 + 174, sub_21CE0AD64, v1 + 162);
  }

  else
  {
    v1[179] = v1[173];

    return MEMORY[0x282200930](v1 + 82, v1 + 174, sub_21CDE7BA8, v1 + 162);
  }
}

uint64_t sub_21CDE7BA8()
{
  *(v1 + 1440) = v0;
  if (v0)
  {
    v2 = sub_21CE0AFA4;
  }

  else
  {
    v2 = sub_21CDE7BDC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CDE7BDC()
{
  v0[181] = v0[174];
  swift_weakInit();
  sub_21CE6CDE0();

  v0[182] = sub_21CE6CDD0();
  v2 = sub_21CE6CDB0();

  return MEMORY[0x2822009F8](sub_21CDE7C8C, v2, v1);
}

void sub_21CDE7C8C()
{
  v1 = v0[181];
  v2 = v0[180];
  v3 = v0[179];

  sub_21CDE7D64((v0 + 162), v1, v3);
  if (v2)
  {
  }

  else
  {
    swift_weakDestroy();

    MEMORY[0x2822009F8](sub_21CDE8774, 0, 0);
  }
}

uint64_t sub_21CDE7D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_2812132A0 != -1)
  {
    swift_once();
  }

  v3 = sub_21CE6BDA0();
  __swift_project_value_buffer(v3, qword_281216608);
  v4 = sub_21CE6BD80();
  v5 = sub_21CE6CF30();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_21CDE1000, v4, v5, "Updating current records", v6, 2u);
    MEMORY[0x21CF1BD50](v6, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_21CDE7ED8(v7);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_21CDE8620(v9);
  }

  return result;
}

uint64_t sub_21CDE7ED8(uint64_t a1)
{

  v4 = sub_21CDE8048(v3, a1);

  if (v4)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21CDE5974(&qword_2812122B8, type metadata accessor for SettingsZeroKeywordNavigationItemsProvider, &protocol conformance descriptor for SettingsZeroKeywordNavigationItemsProvider);
    sub_21CE6BB60();
  }
}

uint64_t sub_21CDE8048(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CE6B960();
  v63 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v62 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v50 - v7;
  v56 = type metadata accessor for SettingsNavigationEventRecord(0);
  v9 = MEMORY[0x28223BE20](v56);
  v61 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v50 - v12;
  v14 = *(a1 + 16);
  if (v14 != *(a2 + 16))
  {
    return 0;
  }

  if (!v14 || a1 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = a1 + v16;
  v52 = *(a1 + 16);
  v53 = a2 + v16;
  v59 = (v63 + 8);
  v60 = v63 + 16;
  v18 = *(v11 + 72);
  v55 = &v50 - v12;
  v50 = v18;
  v51 = a1 + v16;
  while (1)
  {
    v19 = v18 * v15;
    result = sub_21CDFB51C(v17 + v18 * v15, v13);
    if (v15 == v14)
    {
      break;
    }

    v21 = v53 + v19;
    v22 = v61;
    sub_21CDFB51C(v21, v61);
    v24 = *v13;
    v23 = *(v13 + 1);
    v25 = v13[16];
    v27 = *v22;
    v26 = *(v22 + 8);
    v28 = *(v22 + 16);
    v54 = v15;
    if (v25)
    {
      if ((v28 & 1) == 0)
      {
        goto LABEL_36;
      }

      if (v24 == v27 && v23 == v26)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v28)
      {
LABEL_36:
        sub_21CDEFF74(v27, v26);
        sub_21CDEFF74(v24, v23);
        sub_21CDEFF7C(v24, v23);
        sub_21CDEFF7C(v27, v26);
LABEL_37:
        sub_21CDFB580(v61);
        sub_21CDFB580(v55);
        return 0;
      }

      if (v24 == v27 && v23 == v26)
      {
LABEL_14:
        sub_21CDEFF74(v24, v23);
        sub_21CDEFF74(v24, v23);
        sub_21CDEFF7C(v24, v23);
        sub_21CDEFF7C(v24, v23);
        goto LABEL_16;
      }
    }

    v29 = sub_21CE6D400();
    sub_21CDEFF74(v27, v26);
    sub_21CDEFF74(v24, v23);
    sub_21CDEFF7C(v24, v23);
    sub_21CDEFF7C(v27, v26);
    if ((v29 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_16:
    result = MEMORY[0x21CF19920](&v55[v56[5]], v61 + v56[5]);
    if ((result & 1) == 0)
    {
      goto LABEL_37;
    }

    v30 = v56[6];
    v31 = *&v55[v30];
    v32 = *(v61 + v30);
    v33 = *(v31 + 16);
    if (v33 != *(v32 + 16))
    {
      goto LABEL_37;
    }

    if (v33 && v31 != v32)
    {
      v34 = 0;
      v35 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v57 = v32 + v35;
      v58 = v31 + v35;
      while (v34 < *(v31 + 16))
      {
        v36 = *(v63 + 72) * v34;
        v37 = *(v63 + 16);
        result = v37(v8, v58 + v36, v4);
        if (v34 >= *(v32 + 16))
        {
          goto LABEL_40;
        }

        v38 = v8;
        v39 = v62;
        v37(v62, v57 + v36, v4);
        sub_21CDE5974(&qword_2812132D0, MEMORY[0x277CC9130], MEMORY[0x277CC9140]);
        v40 = sub_21CE6CBA0();
        v41 = *v59;
        v42 = v39;
        v8 = v38;
        (*v59)(v42, v4);
        result = (v41)(v38, v4);
        if ((v40 & 1) == 0)
        {
          goto LABEL_37;
        }

        if (v33 == ++v34)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
      break;
    }

LABEL_25:
    if ((sub_21CE6B9E0() & 1) == 0)
    {
      goto LABEL_37;
    }

    v13 = v55;
    v43 = v56[8];
    v44 = &v55[v43];
    v45 = *&v55[v43 + 8];
    v46 = (v61 + v43);
    v47 = v46[1];
    v48 = v47 == 0;
    if (!v45)
    {
      goto LABEL_32;
    }

    if (!v47)
    {
      goto LABEL_37;
    }

    if (*v44 != *v46 || v45 != v47)
    {
      v48 = sub_21CE6D400();
      v13 = v55;
LABEL_32:
      v14 = v52;
      v49 = v54;
      sub_21CDFB580(v61);
      sub_21CDFB580(v13);
      if ((v48 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_33;
    }

    sub_21CDFB580(v61);
    v13 = v55;
    sub_21CDFB580(v55);
    v14 = v52;
    v49 = v54;
LABEL_33:
    v15 = v49 + 1;
    result = 1;
    v18 = v50;
    v17 = v51;
    if (v15 == v14)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21CDE8620(uint64_t a1)
{

  v4 = sub_21CDE8048(v3, a1);

  if (v4)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21CDE5974(&qword_2812122B8, type metadata accessor for SettingsZeroKeywordNavigationItemsProvider, &protocol conformance descriptor for SettingsZeroKeywordNavigationItemsProvider);
    sub_21CE6BB60();
  }
}

uint64_t sub_21CDE87EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CDE8850()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_7Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t SettingsZeroKeywordNavigationItemsProvider.recents.getter()
{
  swift_getKeyPath();
  sub_21CDE5974(&qword_2812122B8, type metadata accessor for SettingsZeroKeywordNavigationItemsProvider, &protocol conformance descriptor for SettingsZeroKeywordNavigationItemsProvider);
  sub_21CE6BB70();
}

uint64_t sub_21CDE8A7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CDE8AC4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_21CE6BA60();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21CDE8B80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CDE8BD8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_21CDE8D74();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CDE8C68()
{
  result = qword_2812131E0;
  if (!qword_2812131E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE3FFE8, &unk_21CE71030);
    sub_21CDE8BD8(&qword_2812131F0, &qword_27CE3FFF0, &qword_21CE70CA0, sub_21CDE8D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812131E0);
  }

  return result;
}

unint64_t sub_21CDE8D20()
{
  result = qword_281211F70;
  if (!qword_281211F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281211F70);
  }

  return result;
}

unint64_t sub_21CDE8D74()
{
  result = qword_281212580;
  if (!qword_281212580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212580);
  }

  return result;
}

uint64_t SettingsNavigationProxy.init(namespace:responder:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0;
  *(a4 + 40) = a1;
  *(a4 + 48) = a2 & 1;
  return sub_21CDE8DE8(a3, a4);
}

uint64_t sub_21CDE8DE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FF30, &qword_21CE70520);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t View.settingsNavigationProxy(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_21CE6C7B0();
}

uint64_t get_enum_tag_for_layout_string_8Settings0A24NavigationProxyResponder_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

unint64_t sub_21CDE8F48()
{
  result = qword_2812131B8;
  if (!qword_2812131B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE3FF28, &unk_21CE70480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812131B8);
  }

  return result;
}

unint64_t sub_21CDE8FAC()
{
  result = qword_2812128C0;
  if (!qword_2812128C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812128C0);
  }

  return result;
}

unint64_t sub_21CDE9004()
{
  result = qword_2812128C8;
  if (!qword_2812128C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812128C8);
  }

  return result;
}

unint64_t sub_21CDE9098()
{
  result = qword_281212870;
  if (!qword_281212870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212870);
  }

  return result;
}

uint64_t sub_21CDE90F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_281212880 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_21CDE9220(&unk_281212888, a1);
}

uint64_t sub_21CDE9174()
{
  if (qword_2812128D8 != -1)
  {
    swift_once();
  }

  return sub_21CDE9220(&xmmword_2812128E0, &unk_281212888);
}

uint64_t sub_21CDE91D8()
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  xmmword_2812128E0 = 0u;
  *algn_2812128F0 = 0u;
  xmmword_281212900 = 0u;
  byte_281212910 = 1;
  return sub_21CDE8DE8(v1, &xmmword_2812128E0);
}

uint64_t sub_21CDE9288(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_21CDE92EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_21CDE9348(uint64_t a1)
{
  sub_21CDE9220(a1, v3);
  sub_21CDE9220(v3, &v2);
  sub_21CDE8FAC();
  sub_21CE6C2A0();
  return sub_21CDE93A8(v3);
}

uint64_t sub_21CDE93FC(uint64_t a1, uint64_t a2)
{
  sub_21CDE9220(a2, v6);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  return sub_21CDE94B4(v6, v3, v4);
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

uint64_t sub_21CDE94B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21CDE9220(a1, v5);
  sub_21CDE9098();
  sub_21CE6BDB0();
  return sub_21CDE93A8(a1);
}

uint64_t sub_21CDE9520(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a2 + 48);
  if (v2 & 1) != 0 || (v3)
  {
    return v2 & v3;
  }

  else
  {
    return MEMORY[0x282133E80](*(a1 + 40), *(a2 + 40));
  }
}

uint64_t static NSBundle.PluginLocation.preferences.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2812118F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for NSBundle.PluginLocation(0);
  v3 = __swift_project_value_buffer(v2, qword_2812118F8);
  return sub_21CDE9794(v3, a1, type metadata accessor for NSBundle.PluginLocation);
}

uint64_t sub_21CDE95C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_21CE6B970();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NSBundle.PluginLocation(0);
  __swift_allocate_value_buffer(v7, qword_2812118F8);
  v8 = __swift_project_value_buffer(v7, qword_2812118F8);
  (*(v4 + 104))(v6, *MEMORY[0x277CC91C0], v3);
  v9 = sub_21CE6BA60();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  result = sub_21CE6BA50();
  v11 = (v8 + *(v7 + 20));
  *v11 = 0x656C646E7562;
  v11[1] = 0xE600000000000000;
  return result;
}

uint64_t sub_21CDE9794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _sSo8NSBundleC8SettingsE30settingsExperiencePluginExists4name8locationSbSS_AbCE0E8LocationVtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = sub_21CE6BA60();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  sub_21CE6B9C0();
  type metadata accessor for NSBundle.PluginLocation(0);
  sub_21CE6B9D0();
  v10 = *(v4 + 8);
  v10(v7, v3);
  v16 = 0;
  v11 = [objc_opt_self() defaultManager];
  sub_21CE6BA10();
  v12 = sub_21CE6CC20();

  v13 = [v11 fileExistsAtPath:v12 isDirectory:&v16];

  v10(v9, v3);
  return (v13 & v16);
}

uint64_t static NSBundle.PluginLocation.appleInternalPreferences.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2812118C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for NSBundle.PluginLocation(0);
  v3 = __swift_project_value_buffer(v2, qword_2812118D0);
  return sub_21CDE9794(v3, a1, type metadata accessor for NSBundle.PluginLocation);
}

uint64_t sub_21CDE9A58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_21CE6B970();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NSBundle.PluginLocation(0);
  __swift_allocate_value_buffer(v7, qword_2812118D0);
  v8 = __swift_project_value_buffer(v7, qword_2812118D0);
  (*(v4 + 104))(v6, *MEMORY[0x277CC91C0], v3);
  v9 = sub_21CE6BA60();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  result = sub_21CE6BA50();
  v11 = (v8 + *(v7 + 20));
  *v11 = 0x656C646E7562;
  v11[1] = 0xE600000000000000;
  return result;
}

uint64_t sub_21CDE9C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21CDE9C8C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_21CDE9C8C()
{
  result = qword_281212B48[0];
  if (!qword_281212B48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281212B48);
  }

  return result;
}

uint64_t sub_21CDE9D08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CE6CC50();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21CDE9D34()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21CDE9D6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CE6B650();
  *a1 = result;
  return result;
}

double sub_21CDE9DA8@<D0>(_OWORD *a1@<X8>)
{
  sub_21CE6B630();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_21CDE9DF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CE6B5C0();
  *a1 = result;
  return result;
}

void *sub_21CDE9E34@<X0>(void *a1@<X8>)
{
  result = sub_21CE6B5A0();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

double sub_21CDE9E74@<D0>(_OWORD *a1@<X8>)
{
  sub_21CE6B5A0();
  result = *&v3;
  *a1 = v3;
  return result;
}

void *sub_21CDE9EDC@<X0>(void *a1@<X8>)
{
  result = sub_21CE6B5A0();
  *a1 = v3;
  return result;
}

double sub_21CDE9F44@<D0>(_OWORD *a1@<X8>)
{
  sub_21CE6B5A0();
  result = *&v3;
  *a1 = v3;
  return result;
}

void *sub_21CDEA004@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21CE6B5A0();
  *a1 = v3;
  return result;
}

void *sub_21CDEA044@<X0>(void *a1@<X8>)
{
  result = sub_21CE6B5A0();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_21CDEA0F4()
{
  v1 = sub_21CE6B960();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_21CE6BA60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  sub_21CDEFF7C(*(v0 + 16), *(v0 + 24));
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_21CDEA25C()
{
  v1 = sub_21CE6B960();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_21CE6BA60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_21CDEA42C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE3FF28, &unk_21CE70480);
  sub_21CE6C0D0();
  sub_21CDE8F48();
  return swift_getWitnessTable();
}

uint64_t sub_21CDEA4A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for NSBundle.PluginLocation(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21CDEA550(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NSBundle.PluginLocation(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21CDEA600@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_21CDEA60C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t sub_21CDEA650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CE6BA60();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_21CE6C090();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21CDEA740(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21CE6BA60();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_21CE6C090();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21CDEA83C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsExperienceOpenURLAction.Result.ActionResult(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21CDEA8A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsExperienceOpenURLAction.Result.ActionResult(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21CDEA95C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21CE6C200();
  *a1 = result;
  return result;
}

uint64_t sub_21CDEA9B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CE6C1A0();
  *a1 = result;
  return result;
}

uint64_t sub_21CDEAA1C()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_21CDEAA5C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21CDEAA94()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_21CDEAB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v5 = a1;
    MEMORY[0x28223BE20](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
    a1 = v5;
  }

  return (*(*(TupleTypeMetadata - 8) + 48))(a1, v3);
}

uint64_t sub_21CDEAC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a4 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v6 = a1;
    MEMORY[0x28223BE20](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    a1 = v6;
  }

  return (*(*(TupleTypeMetadata - 8) + 56))(a1, a2, a2);
}

uint64_t sub_21CDEAD98(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21CE6B960();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_21CE6BA60();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_21CDEAEC0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21CDEAEFC()
{
  v1 = *(v0 + 32);
  v2 = (sub_21CE6CA90() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(*v2 + 64);
  swift_unknownObjectRelease();

  (*(*(v1 - 8) + 8))(v0 + v4 + v2[10], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21CDEAFFC()
{
  v17 = *(v0 + 32);
  v1 = (sub_21CE6CA90() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v15 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = sub_21CE6B960();
  v4 = *(v16 - 8);
  v5 = *(v4 + 80);
  v6 = (v15 + v5 + 40) & ~v5;
  v7 = *(v4 + 64);
  v8 = sub_21CE6BA60();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v6 + v7 + v10) & ~v10;
  v14 = *(v9 + 64);
  v12 = v2 | v5 | v10;
  swift_unknownObjectRelease();

  (*(*(v17 - 8) + 8))(v0 + v3 + v1[10]);
  __swift_destroy_boxed_opaque_existential_1((v0 + v15));
  (*(v4 + 8))(v0 + v6, v16);
  (*(v9 + 8))(v0 + v11, v8);

  return MEMORY[0x2821FE8E8](v0, v11 + v14, v12 | 7);
}

uint64_t sub_21CDEB228()
{
  v1 = *(v0 + 16);
  v2 = (sub_21CE6CA90() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + *(*v2 + 64) + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = v3 | v6;
  v10 = v0 + v4;

  v11 = v2[10];
  v12 = *(v5 + 8);
  v12(v10 + v11, v1);
  v12(v0 + v7, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v9 | 7);
}

uint64_t sub_21CDEB40C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_redirectURL;
  swift_beginAccess();
  return sub_21CE0D9E4(v3 + v4, a2);
}

uint64_t sub_21CDEB498@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_platforms;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_21CDEB4F4(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_platforms;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_21CDEB554()
{
  v1 = (type metadata accessor for SettingsUndoAction(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_21CE6BA60();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[8];
  v8 = sub_21CE6BAF0();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21CDEB6C8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21CDEB770()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21CDEB7A8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21CDEB7F0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21CDEB830@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21CE18AA8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21CDEB890()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21CDEB8D0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21CDEB928()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40790, &qword_21CE72498);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21CDEB9BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
  return swift_unknownObjectRetain();
}

uint64_t sub_21CDEBA0C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21CDEBA50()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21CDEBA88()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21CDEBACC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21CE6BA60();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_21CE6BAF0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21CDEBBF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_21CE6BA60();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_21CE6BAF0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21CDEBD20()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_21CDEBD58()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21CDEBDBC()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

id sub_21CDEBF28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8Settings11SidebarItem_image;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_21CDEBF94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CE33908();
  *a1 = result;
  return result;
}

uint64_t sub_21CDEBFC0(uint64_t *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon);
  *(*a2 + OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon) = *a1;

  return sub_21CE35E20(v2);
}

uint64_t sub_21CDEC050@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC8Settings11SidebarItem_badgeCount;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_21CDEC0AC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC8Settings11SidebarItem_badgeCount;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_21CDEC138@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8Settings14SidebarSection_content;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id sub_21CDEC248@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_cloudSyncConfiguration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_21CDEC2B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_useCloudSyncConfiguration;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_21CDEC30C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_useCloudSyncConfiguration;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_21CDEC360()
{
  MEMORY[0x21CF1BE30](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21CDEC3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C18, qword_21CE73320);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C20, qword_21CE735F0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_21CDEC530(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C18, qword_21CE73320);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C20, qword_21CE735F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21CDEC670(uint64_t *a1)
{
  type metadata accessor for SettingsListAppearanceModifier(255);
  sub_21CE6C0D0();
  sub_21CE3B9B4(&unk_2812127B0, type metadata accessor for SettingsListAppearanceModifier, &protocol conformance descriptor for SettingsListAppearanceModifier);
  return swift_getWitnessTable();
}

uint64_t sub_21CDEC70C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40BE8, &qword_21CE73240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CDEC774()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21CDEC7C4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21CDEC7FC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21CDEC844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C20, qword_21CE735F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21CDEC910(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C20, qword_21CE735F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21CDEC9F0(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_21CDEC9FC(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_21CDECA20@<X0>(_BYTE *a1@<X8>)
{
  sub_21CE54EC0();
  result = sub_21CE6C290();
  *a1 = v3;
  return result;
}

uint64_t sub_21CDECABC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27CE40DA0;
  return result;
}

uint64_t sub_21CDECB08(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27CE40DA0 = v1;
  return result;
}

uint64_t sub_21CDECB7C(uint64_t *a1)
{
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(255);
  sub_21CE6C0D0();
  swift_getOpaqueTypeConformance2();
  sub_21CE59380(&qword_27CE40E10, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier, &unk_21CE73C44);
  return swift_getWitnessTable();
}

uint64_t sub_21CDECC68(uint64_t *a1)
{
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(255);
  sub_21CE6C0D0();
  swift_getOpaqueTypeConformance2();
  sub_21CE59380(&qword_27CE40E10, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier, &unk_21CE73C44);
  return swift_getWitnessTable();
}

uint64_t sub_21CDECD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E18, qword_21CE73F70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E20, &unk_21CE73BE0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_21CDECE7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E18, qword_21CE73F70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E20, &unk_21CE73BE0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21CDED040(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_21CE55EC0(v1, v2);
}

uint64_t sub_21CDED0FC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21CDED134()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40E70, &qword_21CE73CC0);
  sub_21CE6BF30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40E68, &qword_21CE73CB8);
  sub_21CE596D0();
  swift_getOpaqueTypeConformance2();
  sub_21CE59380(&qword_27CE40EE8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF3F8]);
  return swift_getOpaqueTypeConformance2();
}

void *sub_21CDED248@<X0>(_BYTE *a1@<X8>)
{
  sub_21CE54E08();
  result = sub_21CE6C2B0();
  *a1 = v3;
  return result;
}

double sub_21CDED2E4@<D0>(_OWORD *a1@<X8>)
{
  sub_21CE5C2A4();
  sub_21CE6C2B0();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_21CDED370(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21CDED380(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C20, qword_21CE735F0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E18, qword_21CE73F70);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8] + 24);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_21CDED4A4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C20, qword_21CE735F0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E18, qword_21CE73F70);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8] + 24) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_21CDED5C8(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40FA0, &qword_21CE73FC8);
  sub_21CE6C0D0();
  sub_21CE5BF18(&qword_27CE40FA8, &qword_27CE40FA0, &qword_21CE73FC8);
  return swift_getWitnessTable();
}

void *sub_21CDED664@<X0>(_BYTE *a1@<X8>)
{
  sub_21CE5D360();
  result = sub_21CE6C2B0();
  *a1 = v3;
  return result;
}

uint64_t sub_21CDED700(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40FB8, &qword_21CE740D8);
  sub_21CE6C0D0();
  sub_21CDE4158(&qword_27CE40FC0, &qword_27CE40FB8, &qword_21CE740D8, MEMORY[0x277CE0868]);
  return swift_getWitnessTable();
}

uint64_t sub_21CDED7C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CE6C230();
  *a1 = result;
  return result;
}

uint64_t sub_21CDED844()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21CDED890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21CDED95C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21CDEDA28()
{
  v1 = *(type metadata accessor for SettingsButtonPlacardView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21CE6C4A0();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  else
  {
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
  v9 = v8[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21CE6C570();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  if (*(v5 + v8[13]))
  {
  }

  if (*(v5 + v8[14]))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21CDEDCCC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21CDEDD10()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21CDEDD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C20, qword_21CE735F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E18, qword_21CE73F70);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_21CDEDE74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C20, qword_21CE735F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E18, qword_21CE73F70);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21CDEDF94(void *a1)
{
  sub_21CE6C0D0();
  sub_21CE6C0D0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE411A8, &qword_21CE749A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE411B0, &unk_21CE749B0);
  swift_getTupleTypeMetadata3();
  sub_21CE6CB00();
  swift_getWitnessTable();
  sub_21CE6CA30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40058, &qword_21CE70E60);
  sub_21CE6C0D0();
  sub_21CE6C0D0();
  swift_getWitnessTable();
  sub_21CDE4158(&qword_2812131A8, &qword_27CE40058, &qword_21CE70E60, MEMORY[0x277CE0868]);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21CDEE230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21CDEE2FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21CDEE3C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CE6BA60();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21CDEE434(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CE6BA60();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21CDEE4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CE6BA60();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21CDEE564(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21CE6BA60();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21CDEE620()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21CDEE6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 24);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE412F8, qword_21CE75238);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21CDEE7A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 24) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE412F8, qword_21CE75238);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21CDEE880(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21CE6C3F0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21CDEE92C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21CE6C3F0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21CDEE9D4(void *a1)
{
  sub_21CE6C0D0();
  sub_21CE6B208();
  return swift_getWitnessTable();
}

uint64_t sub_21CDEEA58(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21CDEEA68()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21CDEEAB8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21CDFB5DC(a1);
  }

  return result;
}

void *SettingsEventCenter.deinit()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 56);
  if ((v2 & 0xC000000000000001) != 0)
  {

    sub_21CE6D1E0();
    sub_21CE6BE40();
    sub_21CDE4110(&qword_27CE3FA98, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    result = sub_21CE6CEB0();
    v2 = v18;
    v4 = v19;
    v5 = v20;
    v6 = v21;
    v7 = v22;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);

    v6 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
LABEL_18:
      sub_21CDEEAA0(v2);
      *(v1 + 56) = MEMORY[0x277D84FA0];

      swift_beginAccess();
      v16 = MEMORY[0x277D84F90];
      *(v1 + 24) = 0;
      *(v1 + 32) = v16;
      *(v1 + 40) = v16;

      return v1;
    }

    while (1)
    {
      sub_21CE6BE30();

      v6 = v13;
      v7 = v14;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_21CE6D1F0())
      {
        sub_21CE6BE40();
        swift_dynamicCast();
        v13 = v6;
        v14 = v7;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t SettingsEventCenter.__deallocating_deinit()
{
  SettingsEventCenter.deinit();

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21CDEEE38(uint64_t a1, int a2)
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

uint64_t sub_21CDEEE58(uint64_t result, int a2, int a3)
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

uint64_t sub_21CDEEE94(uint64_t a1, id *a2)
{
  result = sub_21CE6CC30();
  *a2 = 0;
  return result;
}

uint64_t sub_21CDEEF0C(uint64_t a1, id *a2)
{
  v3 = sub_21CE6CC40();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_21CDEEF8C@<X0>(uint64_t *a2@<X8>)
{
  sub_21CE6CC50();
  v3 = sub_21CE6CC20();

  *a2 = v3;
  return result;
}

uint64_t sub_21CDEEFE4(uint64_t a1)
{
  v2 = sub_21CDE4110(&qword_27CE3FB48, type metadata accessor for _EXSceneRole, &unk_21CE6EE9C);
  v3 = sub_21CDE4110(&qword_27CE3FB50, type metadata accessor for _EXSceneRole, &unk_21CE6EE44);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21CDEF0A0(uint64_t a1)
{
  v2 = sub_21CDE4110(&qword_27CE3FB58, type metadata accessor for FileProtectionType, &unk_21CE6ED54);
  v3 = sub_21CDE4110(&qword_27CE3FB60, type metadata accessor for FileProtectionType, &unk_21CE6ECF4);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21CDEF1EC(uint64_t a1)
{
  v2 = sub_21CDE4110(&qword_281211A00, type metadata accessor for LNSystemEntityProtocolIdentifier, &unk_21CE6F1E8);
  v3 = sub_21CDE4110(&qword_27CE3FC50, type metadata accessor for LNSystemEntityProtocolIdentifier, &unk_21CE6F13C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21CDEF2A8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_21CE6CC20();

  *a2 = v3;
  return result;
}

uint64_t sub_21CDEF2F0(uint64_t a1)
{
  v2 = sub_21CDE4110(&qword_27CE3FC58, type metadata accessor for Key, &unk_21CE6F22C);
  v3 = sub_21CDE4110(&unk_27CE3FC60, type metadata accessor for Key, &unk_21CE6F018);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21CDEF3AC()
{
  v0 = sub_21CE6CC50();
  v1 = MEMORY[0x21CF1ACE0](v0);

  return v1;
}

uint64_t sub_21CDEF3E8(uint64_t a1)
{
  sub_21CE6CC50();
  sub_21CE6CCA0();
}

uint64_t sub_21CDEF43C(uint64_t a1)
{
  sub_21CE6CC50();
  sub_21CE6D4B0();
  sub_21CE6CCA0();
  v1 = sub_21CE6D4E0();

  return v1;
}

uint64_t sub_21CDEF4B0(void *a1, uint64_t *a2)
{
  v2 = sub_21CE6CC50();
  v4 = v3;
  if (v2 == sub_21CE6CC50() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_21CE6D400();
  }

  return v7 & 1;
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

uint64_t sub_21CDEF704(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE3FC00, &qword_21CE6EF58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21CDEF79C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t SettingsEventImage.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[2])
  {
    sub_21CE6D290();

    v4 = 0xD000000000000026;
  }

  else
  {
    sub_21CE6D290();

    v4 = 0xD000000000000022;
  }

  MEMORY[0x21CF1ACB0](v1, v2);
  MEMORY[0x21CF1ACB0](32032, 0xE200000000000000);
  return v4;
}

uint64_t SettingsEventImage.hash(into:)(uint64_t a1)
{
  MEMORY[0x21CF1B4A0](*(v1 + 16));

  return sub_21CE6CCA0();
}

uint64_t SettingsEventImage.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_21CE6D4B0();
  MEMORY[0x21CF1B4A0](v1);
  sub_21CE6CCA0();
  return sub_21CE6D4E0();
}

uint64_t sub_21CDEFB54()
{
  v1 = *(v0 + 16);
  sub_21CE6D4B0();
  MEMORY[0x21CF1B4A0](v1);
  sub_21CE6CCA0();
  return sub_21CE6D4E0();
}

uint64_t sub_21CDEFBB8(uint64_t a1)
{
  MEMORY[0x21CF1B4A0](*(v1 + 16));

  return sub_21CE6CCA0();
}

uint64_t sub_21CDEFC0C(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_21CE6D4B0();
  MEMORY[0x21CF1B4A0](v2);
  sub_21CE6CCA0();
  return sub_21CE6D4E0();
}

uint64_t _s8Settings0A10EventImageO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v6 = *a1;
      v7 = v2;
      if (v3 != v5 || v2 != v4)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

LABEL_9:
    sub_21CDEFF74(*a2, a2[1]);
    sub_21CDEFF74(v3, v2);
    sub_21CDEFF7C(v3, v2);
    sub_21CDEFF7C(v5, v4);
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *a1;
  v7 = v2;
  if (v3 != v5 || v2 != v4)
  {
LABEL_14:
    v11 = sub_21CE6D400();
    sub_21CDEFF74(v5, v4);
    sub_21CDEFF74(v3, v2);
    sub_21CDEFF7C(v3, v2);
    sub_21CDEFF7C(v5, v4);
    return v11 & 1;
  }

LABEL_15:
  sub_21CDEFF74(v6, v7);
  sub_21CDEFF74(v3, v2);
  sub_21CDEFF7C(v3, v2);
  sub_21CDEFF7C(v3, v2);
  return 1;
}

unint64_t sub_21CDEFE54()
{
  result = qword_27CE3FCD0;
  if (!qword_27CE3FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE3FCD0);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_21CDEFEC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21CDEFF10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_21CDEFFDC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD08, &qword_21CE6F4C8);
    v2 = sub_21CE6D390();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_21CE66850(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

id sub_21CDF01BC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_21CDF0AEC();
    v4 = sub_21CE6CB50();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_21CDF0258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = sub_21CE6CC10();
  v6 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_21CE6B960();
  v8 = *(v68 - 8);
  v9 = MEMORY[0x28223BE20](v68);
  v66 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v69 = &v59 - v11;
  v12 = *v3;
  v63 = v3[1];
  v13 = *(a3 + 16);
  if (v13)
  {
    v60 = a2;
    v62 = v12;
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21CDE4558(0, v13, 0);
    v14 = aBlock[0];
    v16 = *(v8 + 16);
    v15 = v8 + 16;
    v67 = v16;
    v17 = (a3 + ((*(v15 + 64) + 32) & ~*(v15 + 64)));
    v65 = *(v15 + 56);
    v64 = v15;
    v61 = v6;
    v18 = (v6 + 16);
    v19 = (v15 - 8);
    v59 = v15 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    do
    {
      v21 = v68;
      v20 = v69;
      v22 = v67;
      v67(v69, v17, v68);
      v22(v66, v20, v21);
      if (qword_2812132E8 != -1)
      {
        swift_once();
      }

      v23 = v71;
      v24 = __swift_project_value_buffer(v71, qword_2812132F0);
      (*v18)(v70, v24, v23);
      v25 = sub_21CE6CC60();
      v27 = v26;
      (*v19)(v20, v21);
      aBlock[0] = v14;
      v29 = *(v14 + 2);
      v28 = *(v14 + 3);
      if (v29 >= v28 >> 1)
      {
        sub_21CDE4558((v28 > 1), v29 + 1, 1);
        v14 = aBlock[0];
      }

      *(v14 + 2) = v29 + 1;
      v30 = &v14[16 * v29];
      *(v30 + 4) = v25;
      *(v30 + 5) = v27;
      v17 += v65;
      --v13;
    }

    while (v13);
    v6 = v61;
    v67(v69, v60, v68);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
    (*(v8 + 16))(v69, a2, v68);
  }

  if (qword_2812132E8 != -1)
  {
    swift_once();
  }

  v31 = v71;
  v32 = __swift_project_value_buffer(v71, qword_2812132F0);
  (*(v6 + 16))(v70, v32, v31);
  v33 = sub_21CE6CC60();
  v35 = v34;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_21CDF2150(0, *(v14 + 2) + 1, 1, v14);
  }

  v37 = *(v14 + 2);
  v36 = *(v14 + 3);
  if (v37 >= v36 >> 1)
  {
    v14 = sub_21CDF2150((v36 > 1), v37 + 1, 1, v14);
  }

  *(v14 + 2) = v37 + 1;
  v38 = &v14[16 * v37];
  *(v38 + 4) = v33;
  *(v38 + 5) = v35;
  aBlock[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40BA0, &qword_21CE6F4B0);
  sub_21CDF0A80();
  v39 = sub_21CE6CB90();
  v41 = v40;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FCF8, &qword_21CE6F4B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CE6F420;
  *(inited + 32) = 1752457584;
  *(inited + 40) = 0xE400000000000000;
  v43 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v44 = sub_21CE6CC20();
  v45 = [v43 initWithString_];

  *(inited + 48) = v45;
  *(inited + 56) = 0x4449656C646E7562;
  *(inited + 64) = 0xE800000000000000;
  v46 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v47 = sub_21CE6CC20();
  v48 = [v46 initWithString_];

  *(inited + 72) = v48;
  v49 = sub_21CDF9620(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD00, &qword_21CE6F4C0);
  swift_arrayDestroy();
  v50 = sub_21CE6CC20();
  v51 = swift_allocObject();
  *(v51 + 16) = v49;
  aBlock[4] = sub_21CDF0AE4;
  aBlock[5] = v51;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21CDF01BC;
  aBlock[3] = &block_descriptor;
  v52 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v52);

  if (qword_2812132A0 != -1)
  {
    swift_once();
  }

  v53 = sub_21CE6BDA0();
  __swift_project_value_buffer(v53, qword_281216608);

  v54 = sub_21CE6BD80();
  v55 = sub_21CE6CF00();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v56 = 141558275;
    *(v56 + 4) = 1752392040;
    *(v56 + 12) = 2081;
    v58 = sub_21CDF2CC8(v39, v41, aBlock);

    *(v56 + 14) = v58;
    _os_log_impl(&dword_21CDE1000, v54, v55, "Navigation analytics for %{private,mask.hash}s", v56, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v57);
    MEMORY[0x21CF1BD50](v57, -1, -1);
    MEMORY[0x21CF1BD50](v56, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21CDF09FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21CDF0A44(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_21CDF0A80()
{
  result = qword_281211AB8;
  if (!qword_281211AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE40BA0, &qword_21CE6F4B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281211AB8);
  }

  return result;
}

unint64_t sub_21CDF0AEC()
{
  result = qword_281211808[0];
  if (!qword_281211808[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_281211808);
  }

  return result;
}

uint64_t sub_21CDF0B38()
{
  sub_21CE6B850();
  swift_allocObject();
  result = sub_21CE6B840();
  qword_281211F58 = result;
  return result;
}

uint64_t IntentDonationSettingsNavigationEventResponder.settingsHostApplicationBundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void IntentDonationSettingsNavigationEventResponder.processNavigationEvent(icon:associatedApplicationBundleIdentifier:title:localizedNavigationComponents:deepLink:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v133 = a6;
  v144 = a5;
  *(&v120 + 1) = a3;
  *&v120 = a2;
  v8 = sub_21CE6B6E0();
  v128 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21CE6B740();
  v127 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v126 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_21CE6B6F0();
  v123 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v124 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD10, &unk_21CE6F4E0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v122 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v121 = &v102 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD18, &qword_21CE6F940);
  MEMORY[0x28223BE20](v18 - 8);
  v119 = &v102 - v19;
  v20 = sub_21CE6B960();
  v129 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v118 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_21CE6BA60();
  v134 = *(v135 - 8);
  v22 = MEMORY[0x28223BE20](v135);
  v110 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v25 = MEMORY[0x28223BE20](v24);
  v117 = &v102 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v116 = &v102 - v28;
  MEMORY[0x28223BE20](v27);
  v131 = &v102 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD20, &unk_21CE6F4F0);
  MEMORY[0x28223BE20](v30 - 8);
  v142 = &v102 - v31;
  v146 = sub_21CE6B560();
  v143 = *(v146 - 8);
  v32 = MEMORY[0x28223BE20](v146);
  v115 = &v102 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v114 = &v102 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v132 = &v102 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v145 = &v102 - v39;
  MEMORY[0x28223BE20](v38);
  v41 = &v102 - v40;
  v42 = *(a1 + 8);
  v130 = *a1;
  v113 = v42;
  v43 = *(a1 + 16);
  v44 = v6[1];
  v112 = *v6;
  v111 = v44;
  if (qword_281211F50 != -1)
  {
    swift_once();
  }

  v45 = qword_281211F58;
  v46 = sub_21CDF32A0(&unk_2812132D8, MEMORY[0x277CC9130], MEMORY[0x277CC9138]);
  v47 = 0;
  v48 = sub_21CE6B830();
  v140 = v46;
  v141 = v45;
  v104 = v43;
  v105 = v10;
  v106 = v11;
  v107 = v8;
  v108 = v48;
  v109 = v49;
  v50 = *(v144 + 16);
  if (v50)
  {
    v139 = (v143 + 16);
    v138 = v143 + 8;
    v137 = v143 + 32;
    v51 = v144 + ((*(v129 + 80) + 32) & ~*(v129 + 80));
    v136 = *(v129 + 72);
    v52 = MEMORY[0x277D84F90];
    while (1)
    {
      v53 = sub_21CE6B830();
      if (v47)
      {
        break;
      }

      v55 = v53;
      v56 = v54;
      v144 = 0;
      v57 = v20;
      sub_21CDF333C(v53, v54);
      v58 = sub_21CE6BA80();
      *&v147 = 0x6E6F736A2ELL;
      *(&v147 + 1) = 0xE500000000000000;
      *&v150 = v58;
      *(&v150 + 1) = v59;
      *&v150 = sub_21CE6CD10();
      *(&v150 + 1) = v60;
      sub_21CE6CCC0();
      v61 = sub_21CE6BD60();
      (*(*(v61 - 8) + 56))(v142, 1, 1, v61);
      sub_21CE6B550();
      (*v139)(v145, v41, v146);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_21CDF24C4(0, v52[2] + 1, 1, v52, &qword_27CE3FDC8, &qword_21CE6F638, MEMORY[0x277CB9C50]);
      }

      v63 = v52[2];
      v62 = v52[3];
      if (v63 >= v62 >> 1)
      {
        v52 = sub_21CDF24C4((v62 > 1), v63 + 1, 1, v52, &qword_27CE3FDC8, &qword_21CE6F638, MEMORY[0x277CB9C50]);
      }

      sub_21CDF32E8(v55, v56);
      v64 = v143;
      v65 = v146;
      (*(v143 + 8))(v41, v146);
      v52[2] = v63 + 1;
      (*(v64 + 32))(v52 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v63, v145, v65);
      v51 += v136;
      --v50;
      v20 = v57;
      v47 = v144;
      if (!v50)
      {
        goto LABEL_13;
      }
    }

    if (qword_2812132A0 != -1)
    {
      swift_once();
    }

    v86 = sub_21CE6BDA0();
    __swift_project_value_buffer(v86, qword_281216608);
    v87 = v134;
    v88 = v110;
    v89 = v135;
    (*(v134 + 16))(v110, v133, v135);
    v90 = v47;
    v91 = sub_21CE6BD80();
    v92 = sub_21CE6CF10();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *&v147 = v94;
      *v93 = 141558531;
      *(v93 + 4) = 1752392040;
      *(v93 + 12) = 2081;
      sub_21CDF32A0(&qword_2812132B0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v95 = sub_21CE6D3E0();
      v97 = v96;
      (*(v87 + 8))(v88, v89);
      v98 = sub_21CDF2CC8(v95, v97, &v147);

      *(v93 + 14) = v98;
      *(v93 + 22) = 2080;
      swift_getErrorValue();
      v99 = sub_21CE6D450();
      v101 = sub_21CDF2CC8(v99, v100, &v147);

      *(v93 + 24) = v101;
      _os_log_impl(&dword_21CDE1000, v91, v92, "Failed to encode navigation component for navigation event (url: '%{private,mask.hash}s', error: '%s')", v93, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v94, -1, -1);
      MEMORY[0x21CF1BD50](v93, -1, -1);
      sub_21CDF32E8(v108, v109);
    }

    else
    {
      sub_21CDF32E8(v108, v109);

      (*(v87 + 8))(v88, v89);
    }
  }

  else
  {
    v52 = MEMORY[0x277D84F90];
LABEL_13:
    v103 = v20;
    v66 = sub_21CE6BD60();
    (*(*(v66 - 8) + 56))(v142, 1, 1, v66);
    v67 = v111;

    v68 = v113;
    v69 = v104;
    sub_21CDEFF74(v130, v113);
    sub_21CDF333C(v108, v109);
    sub_21CE6B550();
    v140 = *(v134 + 16);
    v140(v131, v133, v135);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD28, &unk_21CE6F8D0);
    sub_21CE6B920();
    v139 = sub_21CE6B610();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD30, &unk_21CE6F500);
    sub_21CE6B920();
    sub_21CDF3390();
    v138 = sub_21CE6B5E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD38, &unk_21CE6F8E0);
    sub_21CE6B920();
    v145 = sub_21CE6B5F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD40, &unk_21CE6F510);
    sub_21CE6B920();
    v144 = sub_21CE6B5F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD48, &unk_21CE6F8F0);
    sub_21CE6B920();
    v142 = sub_21CE6B600();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD50, &unk_21CE6F520);
    sub_21CE6B920();
    v141 = sub_21CE6B610();
    *&v147 = v112;
    *(&v147 + 1) = v67;
    sub_21CE6B5B0();
    *&v147 = v130;
    *(&v147 + 1) = v68;
    LOBYTE(v148) = v69;
    SettingsNavigationLocationIconEntity.init(image:)(&v147, &v150);
    v147 = v150;
    sub_21CE6B5B0();
    v70 = v143;
    v71 = *(v143 + 16);
    v72 = v114;
    v73 = v146;
    v71(v114, v132, v146);
    v71(v115, v72, v73);
    sub_21CE6B5B0();
    v143 = *(v70 + 8);
    (v143)(v72, v73);
    *&v147 = v52;
    sub_21CE6B5B0();
    v74 = v116;
    v75 = v131;
    v76 = v135;
    v77 = v140;
    v140(v116, v131, v135);
    v77(v117, v74, v76);
    sub_21CE6B5B0();
    v78 = *(v134 + 8);
    v78(v74, v76);
    v147 = v120;

    sub_21CE6B5B0();
    v78(v75, v76);
    (v143)(v132, v73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD58, &qword_21CE6F650);
    v79 = v139;

    v80 = v138;

    sub_21CE6B920();
    (*(v129 + 56))(v119, 1, 1, v103);
    v81 = sub_21CE6B580();
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v82 = *(*(v81 - 8) + 56);
    v82(v121, 1, 1, v81);
    v82(v122, 1, 1, v81);
    (*(v123 + 104))(v124, *MEMORY[0x277CBA308], v125);
    sub_21CDF33E4();
    v83 = sub_21CE6B660();
    *&v147 = v79;
    *(&v147 + 1) = v80;
    *&v148 = v145;
    *(&v148 + 1) = v144;
    *&v149 = v142;
    *(&v149 + 1) = v141;
    sub_21CE6B640();
    v84 = v105;
    sub_21CE6B6D0();
    *&v147 = v83;
    sub_21CDF3438();
    v85 = v126;
    sub_21CE6B6C0();

    sub_21CDF32E8(v108, v109);
    (*(v128 + 8))(v84, v107);
    (*(v127 + 8))(v85, v106);
  }
}

uint64_t sub_21CDF20DC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

char *sub_21CDF2150(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE402F0, &qword_21CE6F600);
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

char *sub_21CDF225C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FDB8, &qword_21CE708D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21CDF2390(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FDB0, &unk_21CE6F620);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21CDF24C4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_21CDF26A0(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD70, &qword_21CE6F5D0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD78, &qword_21CE6F5D8) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD78, &qword_21CE6F5D8) - 8);
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

char *sub_21CDF2890(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD88, &unk_21CE71910);
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

void *sub_21CDF29B8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD60, &qword_21CE6F5C0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD68, &qword_21CE6F5C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21CDF2B10(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_21CDF2C6C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_21CDF2CC8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_21CDF2CC8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21CDF2D94(v11, 0, 0, 1, a1, a2);
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
    sub_21CDE66C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_21CDF2D94(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_21CDF2EA0(a5, a6);
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
    result = sub_21CE6D2E0();
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

void *sub_21CDF2EA0(uint64_t a1, unint64_t a2)
{
  v3 = sub_21CDF2EEC(a1, a2);
  sub_21CDF301C(&unk_282E7FDB8);
  return v3;
}

void *sub_21CDF2EEC(uint64_t a1, unint64_t a2)
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

  v6 = sub_21CDF3108(v5, 0);
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

  result = sub_21CE6D2E0();
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
        v10 = sub_21CE6CCE0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21CDF3108(v10, 0);
        result = sub_21CE6D270();
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

uint64_t sub_21CDF301C(uint64_t result)
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

  result = sub_21CDF317C(result, v11, 1, v3);
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

void *sub_21CDF3108(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FDD0, &unk_21CE6F640);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21CDF317C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FDD0, &unk_21CE6F640);
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

_BYTE **sub_21CDF3270(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_21CDF3280(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_21CDF32A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CDF32E8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_21CDF333C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_21CDF3390()
{
  result = qword_281212410;
  if (!qword_281212410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212410);
  }

  return result;
}

unint64_t sub_21CDF33E4()
{
  result = qword_2812125C0;
  if (!qword_2812125C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812125C0);
  }

  return result;
}

unint64_t sub_21CDF3438()
{
  result = qword_2812122D0;
  if (!qword_2812122D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812122D0);
  }

  return result;
}

uint64_t SettingsNavigationEventDonationIntent.init(target:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v26 = a2;
  v25 = sub_21CE6B6F0();
  v3 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD10, &unk_21CE6F4E0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD18, &qword_21CE6F940);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v22 - v13;
  v15 = sub_21CE6B960();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD58, &qword_21CE6F650);
  sub_21CE6B920();
  v17 = *(v16 + 56);
  v18 = *a1;
  v23 = a1[1];
  v24 = v18;
  v22 = a1[2];
  v17(v14, 1, 1, v15);
  v19 = sub_21CE6B580();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = *(*(v19 - 8) + 56);
  v20(v11, 1, 1, v19);
  v20(v9, 1, 1, v19);
  (*(v3 + 104))(v5, *MEMORY[0x277CBA308], v25);
  sub_21CDF33E4();
  *v26 = sub_21CE6B660();
  v27 = v24;
  v28 = v23;
  v29 = v22;
  return sub_21CE6B640();
}

uint64_t sub_21CDF37C8()
{
  v0 = sub_21CE6B960();
  __swift_allocate_value_buffer(v0, qword_27CE3FDD8);
  __swift_project_value_buffer(v0, qword_27CE3FDD8);
  return sub_21CE6B920();
}

uint64_t static SettingsNavigationEventDonationIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE3F998 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6B960();
  v3 = __swift_project_value_buffer(v2, qword_27CE3FDD8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SettingsNavigationEventDonationIntent.title.setter(uint64_t a1)
{
  if (qword_27CE3F998 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6B960();
  v3 = __swift_project_value_buffer(v2, qword_27CE3FDD8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SettingsNavigationEventDonationIntent.title.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27CE3F998 != -1)
  {
    swift_once();
  }

  v1 = sub_21CE6B960();
  __swift_project_value_buffer(v1, qword_27CE3FDD8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_21CDF3A78@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE3F998 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6B960();
  v3 = __swift_project_value_buffer(v2, qword_27CE3FDD8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_21CDF3B38(uint64_t a1)
{
  if (qword_27CE3F998 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6B960();
  v3 = __swift_project_value_buffer(v2, qword_27CE3FDD8);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_21CDF3C24(void *a1, uint64_t *a2)
{

  sub_21CE6B640();
}

uint64_t (*SettingsNavigationEventDonationIntent.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_21CE6B620();
  return sub_21CDF4F44;
}

uint64_t static SettingsNavigationEventDonationIntent.predictionConfiguration.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FDF0, &qword_21CE6F658);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  swift_getKeyPath();
  sub_21CDF3438();
  sub_21CE6B670();
  v7 = sub_21CDF419C();
  MEMORY[0x21CF19740](v4, &type metadata for SettingsNavigationEventDonationIntent, v0, v7);
  v8 = *(v1 + 8);
  v8(v4, v0);
  MEMORY[0x21CF19730](v6, &type metadata for SettingsNavigationEventDonationIntent, v0, v7);
  return (v8)(v6, v0);
}

uint64_t sub_21CDF3F20(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE10, &unk_21CE6FCA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD18, &qword_21CE6F940);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = sub_21CE6B960();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_21CE6CBE0();
  MEMORY[0x28223BE20](v10 - 8);
  sub_21CE6CBD0();
  sub_21CE6CBC0();
  v11 = a1[1];
  v14[0] = *a1;
  v14[1] = v11;
  v14[2] = a1[2];
  sub_21CDF4EF0();
  sub_21CE6CBB0();
  sub_21CE6CBC0();
  sub_21CE6B930();
  (*(v9 + 56))(v7, 1, 1, v8);
  v12 = sub_21CE6B690();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  return sub_21CE6B6A0();
}

unint64_t sub_21CDF419C()
{
  result = qword_281213310;
  if (!qword_281213310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE3FDF0, &qword_21CE6F658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281213310);
  }

  return result;
}

uint64_t SettingsNavigationEventDonationIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v19 = a1;
  v18 = sub_21CE6B6F0();
  v1 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD10, &unk_21CE6F4E0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD18, &qword_21CE6F940);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_21CE6B960();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD58, &qword_21CE6F650);
  sub_21CE6B920();
  (*(v14 + 56))(v12, 1, 1, v13);
  v15 = sub_21CE6B580();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = *(*(v15 - 8) + 56);
  v16(v9, 1, 1, v15);
  v16(v7, 1, 1, v15);
  (*(v1 + 104))(v3, *MEMORY[0x277CBA308], v18);
  sub_21CDF33E4();
  result = sub_21CE6B660();
  *v19 = result;
  return result;
}

uint64_t sub_21CDF4528(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FDF0, &qword_21CE6F658);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  swift_getKeyPath();
  sub_21CDF3438();
  sub_21CE6B670();
  v9 = sub_21CDF419C();
  MEMORY[0x21CF19740](v6, a1, v2, v9);
  v10 = *(v3 + 8);
  v10(v6, v2);
  MEMORY[0x21CF19730](v8, a1, v2, v9);
  return (v10)(v8, v2);
}

unint64_t sub_21CDF46B0()
{
  result = qword_2812122E0;
  if (!qword_2812122E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812122E0);
  }

  return result;
}

unint64_t sub_21CDF4708()
{
  result = qword_2812125C8;
  if (!qword_2812125C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812125C8);
  }

  return result;
}

uint64_t (*sub_21CDF47C0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_21CE6B620();
  return sub_21CDF4834;
}

void sub_21CDF4838(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_21CDF4884()
{
  result = qword_27CE3FDF8;
  if (!qword_27CE3FDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE3FDF8);
  }

  return result;
}

uint64_t sub_21CDF48D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CDF4DF4();
  v5 = sub_21CDF4E9C();

  return MEMORY[0x28210C2E8](a1, v4, a2, v5);
}

unint64_t sub_21CDF4944()
{
  result = qword_2812122C8;
  if (!qword_2812122C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812122C8);
  }

  return result;
}

unint64_t sub_21CDF499C()
{
  result = qword_2812122D8;
  if (!qword_2812122D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812122D8);
  }

  return result;
}

uint64_t sub_21CDF4A40(uint64_t a1)
{
  v2 = sub_21CDF4DF4();

  return MEMORY[0x28210B5F8](a1, v2);
}

uint64_t sub_21CDF4A90(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_21CDF4DF4();
  v7 = sub_21CDF4E48();
  v8 = sub_21CDF4E9C();
  *v5 = v2;
  v5[1] = sub_21CDF4B64;

  return MEMORY[0x28210C2F0](a1, a2, v6, v7, v8);
}

uint64_t sub_21CDF4B64()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_21CDF4C70(uint64_t a1)
{
  v2 = sub_21CDF3438();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for SettingsNavigationEventDonationIntent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for SettingsNavigationEventDonationIntent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21CDF4DF4()
{
  result = qword_2812122E8[0];
  if (!qword_2812122E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812122E8);
  }

  return result;
}

unint64_t sub_21CDF4E48()
{
  result = qword_27CE3FE00;
  if (!qword_27CE3FE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE3FE00);
  }

  return result;
}

unint64_t sub_21CDF4E9C()
{
  result = qword_27CE3FE08;
  if (!qword_27CE3FE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE3FE08);
  }

  return result;
}

unint64_t sub_21CDF4EF0()
{
  result = qword_281212590;
  if (!qword_281212590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212590);
  }

  return result;
}

uint64_t SettingsNavigationLocationEntity.init(settingsHostApplicationBundleIdentifier:image:title:navigationPathComponents:navigationLink:associatedApplicationBundleIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  *&v49 = a7;
  *(&v49 + 1) = a8;
  v47 = a5;
  v48 = a6;
  *(&v41 + 1) = a2;
  v42 = a4;
  *&v41 = a1;
  v11 = sub_21CE6BA60();
  v45 = *(v11 - 8);
  v46 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v44 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v43 = &v34 - v14;
  v40 = sub_21CE6B560();
  v15 = *(v40 - 8);
  v16 = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - v18;
  v20 = sub_21CE6B960();
  MEMORY[0x28223BE20](v20 - 8);
  v21 = a3[1];
  v38 = *a3;
  v37 = v21;
  v36 = *(a3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD28, &unk_21CE6F8D0);
  sub_21CE6B920();
  *a9 = sub_21CE6B610();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD30, &unk_21CE6F500);
  sub_21CE6B920();
  sub_21CDF3390();
  a9[1] = sub_21CE6B5E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD38, &unk_21CE6F8E0);
  sub_21CE6B920();
  a9[2] = sub_21CE6B5F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD40, &unk_21CE6F510);
  sub_21CE6B920();
  a9[3] = sub_21CE6B5F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD48, &unk_21CE6F8F0);
  sub_21CE6B920();
  v35 = sub_21CE6B600();
  a9[4] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD50, &unk_21CE6F520);
  sub_21CE6B920();
  v34 = sub_21CE6B610();
  a9[5] = v34;
  v50 = v41;
  sub_21CE6B5B0();
  *&v50 = v38;
  *(&v50 + 1) = v37;
  v51 = v36;
  SettingsNavigationLocationIconEntity.init(image:)(&v50, &v52);
  v50 = v52;
  sub_21CE6B5B0();
  v22 = v15;
  v23 = *(v15 + 16);
  v24 = v42;
  v25 = v40;
  v23(v19, v42, v40);
  v23(v39, v19, v25);
  sub_21CE6B5B0();
  v26 = *(v22 + 8);
  *(&v41 + 1) = v22 + 8;
  v26(v19, v25);
  *&v50 = v47;
  sub_21CE6B5B0();
  v28 = v45;
  v27 = v46;
  v29 = *(v45 + 16);
  v30 = v43;
  v31 = v48;
  v29(v43, v48, v46);
  v29(v44, v30, v27);
  sub_21CE6B5B0();
  v32 = *(v28 + 8);
  v32(v30, v27);
  v50 = v49;
  sub_21CE6B5B0();
  v32(v31, v27);
  return (v26)(v24, v25);
}

uint64_t sub_21CDF5490()
{
  sub_21CE6B820();
  swift_allocObject();
  result = sub_21CE6B810();
  qword_281211F68 = result;
  return result;
}

uint64_t static SettingsNavigationLocationEntity.urlRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE30, &qword_21CE6F900);
  MEMORY[0x28223BE20](v0);
  sub_21CDF33E4();
  sub_21CE6B7A0();
  sub_21CE6B790();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE38, &unk_21CE6F930);
  sub_21CE6B780();

  sub_21CE6B790();
  return sub_21CE6B7B0();
}

uint64_t sub_21CDF5614()
{
  v0 = sub_21CE6B7D0();
  __swift_allocate_value_buffer(v0, qword_27CE3FE18);
  __swift_project_value_buffer(v0, qword_27CE3FE18);
  return sub_21CE6B7C0();
}

uint64_t static SettingsNavigationLocationEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE3F9A8 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6B7D0();
  v3 = __swift_project_value_buffer(v2, qword_27CE3FE18);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SettingsNavigationLocationEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27CE3F9A8 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6B7D0();
  v3 = __swift_project_value_buffer(v2, qword_27CE3FE18);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SettingsNavigationLocationEntity.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27CE3F9A8 != -1)
  {
    swift_once();
  }

  v1 = sub_21CE6B7D0();
  __swift_project_value_buffer(v1, qword_27CE3FE18);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_21CDF58C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE3F9A8 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6B7D0();
  v3 = __swift_project_value_buffer(v2, qword_27CE3FE18);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_21CDF5980(uint64_t a1)
{
  if (qword_27CE3F9A8 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6B7D0();
  v3 = __swift_project_value_buffer(v2, qword_27CE3FE18);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t SettingsNavigationLocationEntity.displayRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE10, &unk_21CE6FCA0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD18, &qword_21CE6F940);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_21CE6B960();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  sub_21CE6B920();
  (*(v7 + 56))(v5, 1, 1, v6);
  v8 = sub_21CE6B690();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  return sub_21CE6B6A0();
}

uint64_t sub_21CDF5C54(uint64_t *a1, uint64_t *a2)
{

  sub_21CE6B5B0();
}

uint64_t (*SettingsNavigationLocationEntity.settingsHostApplicationBundleIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_21CE6B590();
  return sub_21CDF4F44;
}

uint64_t sub_21CDF5DF8(void *a1, uint64_t *a2)
{

  sub_21CE6B5B0();
}

uint64_t (*SettingsNavigationLocationEntity.icon.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_21CE6B590();
  return sub_21CDF4F44;
}

uint64_t sub_21CDF5FB4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_21CE6B560();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v14 - v9;
  v11 = *(v5 + 16);
  v11(v14 - v9, a1, v4);
  v12 = a2[4];
  v14[0] = a2[3];
  v14[1] = v12;
  v11(v8, v10, v4);

  sub_21CE6B5B0();
  (*(v5 + 8))(v10, v4);
}

uint64_t SettingsNavigationLocationEntity.title.setter(uint64_t a1)
{
  v2 = sub_21CE6B560();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  sub_21CE6B5B0();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SettingsNavigationLocationEntity.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_21CE6B590();
  return sub_21CDF4F44;
}

uint64_t sub_21CDF6328(uint64_t *a1, uint64_t *a2)
{

  sub_21CE6B5B0();
}

uint64_t (*SettingsNavigationLocationEntity.navigationPathComponents.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_21CE6B590();
  return sub_21CDF4F44;
}

uint64_t sub_21CDF64CC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_21CE6BA60();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  v11 = *(v5 + 16);
  v11(v15 - v9, a1, v4);
  v12 = *a2;
  v13 = a2[3];
  v15[1] = a2[2];
  v15[2] = v13;
  v15[3] = v12;
  v11(v8, v10, v4);

  sub_21CE6B5B0();
  (*(v5 + 8))(v10, v4);
}

uint64_t SettingsNavigationLocationEntity.navigationLink.setter(uint64_t a1)
{
  v2 = sub_21CE6BA60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  sub_21CE6B5B0();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SettingsNavigationLocationEntity.navigationLink.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_21CE6B590();
  return sub_21CDF4834;
}

uint64_t sub_21CDF6828(uint64_t *a1, uint64_t *a2)
{

  sub_21CE6B5B0();
}

uint64_t (*SettingsNavigationLocationEntity.associatedApplicationBundleIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_21CE6B590();
  return sub_21CDF4F44;
}

uint64_t SettingsNavigationLocationEntity.localizedTitle.getter()
{
  v0 = sub_21CE6B560();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281211F60 != -1)
  {
    swift_once();
  }

  sub_21CE6B960();
  sub_21CE6B5A0();
  v4 = sub_21CE6B540();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  sub_21CDF79A0(&qword_2812132C8, MEMORY[0x277CC9130], MEMORY[0x277CC9148]);
  sub_21CE6B800();
  return sub_21CDF32E8(v4, v6);
}

void *SettingsNavigationLocationEntity.localizedNavigationPathComponents.getter()
{
  v1 = v0;
  v2 = sub_21CE6B960();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v26 - v7;
  v9 = sub_21CE6B560();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v35 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CE6B5A0();
  result = v38;
  v34 = v38[2];
  if (v34)
  {
    v13 = 0;
    v31 = (v10 + 8);
    v32 = v10 + 16;
    v26[2] = v3 + 8;
    v27 = (v3 + 16);
    v26[1] = v3 + 32;
    v37 = MEMORY[0x277D84F90];
    v29 = v6;
    v30 = v3;
    v33 = v38;
    v28 = v10;
    while (v13 < result[2])
    {
      v36 = v1;
      v14 = v35;
      (*(v10 + 16))(v35, result + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v13, v9);
      v15 = v9;
      if (qword_281211F60 != -1)
      {
        swift_once();
      }

      v16 = sub_21CE6B540();
      v18 = v17;
      v19 = v15;
      (*v31)(v14, v15);
      sub_21CDF79A0(&qword_2812132C8, MEMORY[0x277CC9130], MEMORY[0x277CC9148]);
      v20 = v36;
      sub_21CE6B800();
      v1 = v20;
      if (v20)
      {
        sub_21CDF32E8(v16, v18);

        goto LABEL_15;
      }

      sub_21CDF32E8(v16, v18);
      v21 = v29;
      (*v27)(v29, v8, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_21CDF2128(0, v37[2] + 1, 1, v37);
      }

      v22 = v30;
      v24 = v37[2];
      v23 = v37[3];
      if (v24 >= v23 >> 1)
      {
        v37 = sub_21CDF2128((v23 > 1), v24 + 1, 1, v37);
      }

      ++v13;
      (*(v22 + 8))(v8, v2);
      v25 = v37;
      v37[2] = v24 + 1;
      (*(v22 + 32))(v25 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v24, v21, v2);
      result = v33;
      v9 = v19;
      v10 = v28;
      if (v34 == v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
LABEL_15:

    return v37;
  }

  return result;
}

uint64_t SettingsNavigationLocationEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21CE6B960();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD28, &unk_21CE6F8D0);
  sub_21CE6B920();
  *a1 = sub_21CE6B610();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD30, &unk_21CE6F500);
  sub_21CE6B920();
  sub_21CDF3390();
  a1[1] = sub_21CE6B5E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD38, &unk_21CE6F8E0);
  sub_21CE6B920();
  a1[2] = sub_21CE6B5F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD40, &unk_21CE6F510);
  sub_21CE6B920();
  a1[3] = sub_21CE6B5F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD48, &unk_21CE6F8F0);
  sub_21CE6B920();
  a1[4] = sub_21CE6B600();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD50, &unk_21CE6F520);
  sub_21CE6B920();
  result = sub_21CE6B610();
  a1[5] = result;
  return result;
}

uint64_t sub_21CDF7154(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE30, &qword_21CE6F900);
  MEMORY[0x28223BE20](v1);
  sub_21CDF33E4();
  sub_21CE6B7A0();
  sub_21CE6B790();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE38, &unk_21CE6F930);
  sub_21CE6B780();

  sub_21CE6B790();
  return sub_21CE6B7B0();
}

uint64_t sub_21CDF7270(uint64_t a1)
{
  v2 = sub_21CDF7AE8();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_21CDF72BC(uint64_t a1)
{
  sub_21CDF4E9C();
  v2 = sub_21CE6B700();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_21CDF7328(uint64_t a1)
{
  sub_21CDF7AE8();

  return sub_21CE6B4A0();
}

uint64_t sub_21CDF7374(uint64_t a1)
{
  v2 = sub_21CDF33E4();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_21CDF73C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE10, &unk_21CE6FCA0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD18, &qword_21CE6F940);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_21CE6B960();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  sub_21CE6B920();
  (*(v7 + 56))(v5, 1, 1, v6);
  v8 = sub_21CE6B690();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  return sub_21CE6B6A0();
}

uint64_t sub_21CDF7598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21CDE7A00;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_21CDF765C(uint64_t a1)
{
  v2 = sub_21CDF7904();

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_21CDF76AC()
{
  result = qword_27CE3FE40;
  if (!qword_27CE3FE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE3FE40);
  }

  return result;
}

unint64_t sub_21CDF7704()
{
  result = qword_2812125B0;
  if (!qword_2812125B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812125B0);
  }

  return result;
}

unint64_t sub_21CDF775C()
{
  result = qword_281212588;
  if (!qword_281212588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212588);
  }

  return result;
}

unint64_t sub_21CDF7804()
{
  result = qword_2812125A8;
  if (!qword_2812125A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812125A8);
  }

  return result;
}

unint64_t sub_21CDF7858()
{
  result = qword_2812125A0;
  if (!qword_2812125A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812125A0);
  }

  return result;
}

unint64_t sub_21CDF78AC()
{
  result = qword_2812125B8;
  if (!qword_2812125B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812125B8);
  }

  return result;
}

unint64_t sub_21CDF7904()
{
  result = qword_281212598;
  if (!qword_281212598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212598);
  }

  return result;
}

uint64_t sub_21CDF79A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_21CDF7A44(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_21CDF7A8C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_21CDF7AE8()
{
  result = qword_2812125D0[0];
  if (!qword_2812125D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812125D0);
  }

  return result;
}

uint64_t SettingsNavigationLocationIconEntity.init(image:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_21CE6B960();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = *a1;
  v5 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE88, &unk_21CE6FC90);

  sub_21CE6B920();
  sub_21CDF855C();
  v7 = sub_21CE6B5D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD28, &unk_21CE6F8D0);
  sub_21CE6B920();
  v8 = sub_21CE6B610();
  sub_21CE6B5B0();
  sub_21CE6B5B0();
  result = sub_21CDEFF7C(v6, v5);
  *a2 = v7;
  a2[1] = v8;
  return result;
}

uint64_t sub_21CDF7CE4()
{
  v0 = sub_21CE6B7D0();
  __swift_allocate_value_buffer(v0, qword_27CE3FE58);
  __swift_project_value_buffer(v0, qword_27CE3FE58);
  return sub_21CE6B7C0();
}

uint64_t (*static SettingsNavigationLocationIconEntity.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t)
{
  if (qword_27CE3F9B0 != -1)
  {
    swift_once();
  }

  v1 = sub_21CE6B7D0();
  __swift_project_value_buffer(v1, qword_27CE3FE58);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t SettingsNavigationLocationIconEntity.displayRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE10, &unk_21CE6FCA0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD18, &qword_21CE6F940);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_21CE6B960();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  sub_21CE6B920();
  (*(v7 + 56))(v5, 1, 1, v6);
  v8 = sub_21CE6B690();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  return sub_21CE6B6A0();
}

uint64_t sub_21CDF8020(char *a1, uint64_t *a2)
{

  sub_21CE6B5B0();
}

uint64_t (*SettingsNavigationLocationIconEntity.iconType.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_21CE6B590();
  return sub_21CDF4F44;
}

uint64_t sub_21CDF817C(uint64_t *a1, uint64_t *a2)
{

  sub_21CE6B5B0();
}

uint64_t (*SettingsNavigationLocationIconEntity.iconIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_21CE6B590();
  return sub_21CDF4834;
}

void *SettingsNavigationLocationIconEntity.image.getter@<X0>(uint64_t a1@<X8>)
{
  sub_21CE6B5A0();
  result = sub_21CE6B5A0();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return result;
}

uint64_t SettingsNavigationLocationIconEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21CE6B960();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE88, &unk_21CE6FC90);
  sub_21CE6B920();
  sub_21CDF855C();
  *a1 = sub_21CE6B5D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD28, &unk_21CE6F8D0);
  sub_21CE6B920();
  result = sub_21CE6B610();
  a1[1] = result;
  return result;
}

uint64_t SettingsNavigationLocationIconEntity.init(iconType:iconIdentifier:)@<X0>(uint64_t *a4@<X8>)
{
  v5 = sub_21CE6B960();
  MEMORY[0x28223BE20](v5 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE88, &unk_21CE6FC90);
  sub_21CE6B920();
  sub_21CDF855C();
  *a4 = sub_21CE6B5D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD28, &unk_21CE6F8D0);
  sub_21CE6B920();
  a4[1] = sub_21CE6B610();
  sub_21CE6B5B0();
  return sub_21CE6B5B0();
}

unint64_t sub_21CDF855C()
{
  result = qword_281212570;
  if (!qword_281212570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212570);
  }

  return result;
}

uint64_t sub_21CDF85B0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21CE6B960();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE88, &unk_21CE6FC90);
  sub_21CE6B920();
  sub_21CDF855C();
  *a1 = sub_21CE6B5D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD28, &unk_21CE6F8D0);
  sub_21CE6B920();
  result = sub_21CE6B610();
  a1[1] = result;
  return result;
}

uint64_t sub_21CDF86B8(uint64_t a1)
{
  v2 = sub_21CDFA220();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_21CDF8704(uint64_t a1)
{
  sub_21CDFA220();

  return sub_21CE6B4A0();
}

uint64_t sub_21CDF8774(uint64_t a1)
{
  v2 = sub_21CDF3390();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_21CDF87C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE10, &unk_21CE6FCA0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD18, &qword_21CE6F940);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_21CE6B960();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  sub_21CE6B920();
  (*(v7 + 56))(v5, 1, 1, v6);
  v8 = sub_21CE6B690();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  return sub_21CE6B6A0();
}

uint64_t sub_21CDF8998(uint64_t a1)
{
  v2 = sub_21CDF9A70();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_21CDF89E4()
{
  v0 = sub_21CE6B7D0();
  __swift_allocate_value_buffer(v0, qword_27CE3FE70);
  __swift_project_value_buffer(v0, qword_27CE3FE70);
  return sub_21CE6B7C0();
}

uint64_t sub_21CDF8A70@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_21CE6B7D0();
  v7 = __swift_project_value_buffer(v6, a2);
  swift_beginAccess();
  return (*(*(v6 - 8) + 16))(a4, v7, v6);
}

uint64_t sub_21CDF8B3C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v6 = sub_21CE6B7D0();
  v7 = __swift_project_value_buffer(v6, a3);
  swift_beginAccess();
  v8 = *(v6 - 8);
  (*(v8 + 24))(v7, a1, v6);
  swift_endAccess();
  return (*(v8 + 8))(a1, v6);
}

uint64_t (*static SettingsNavigationLocationIconType.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27CE3F9B8 != -1)
  {
    swift_once();
  }

  v1 = sub_21CE6B7D0();
  __swift_project_value_buffer(v1, qword_27CE3FE70);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_21CDF8CB0@<X0>(void *a1@<X3>, uint64_t a2@<X4>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_21CE6B7D0();
  v7 = __swift_project_value_buffer(v6, a2);
  swift_beginAccess();
  return (*(*(v6 - 8) + 16))(a4, v7, v6);
}

uint64_t sub_21CDF8D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (*a5 != -1)
  {
    swift_once();
  }

  v9 = sub_21CE6B7D0();
  v10 = __swift_project_value_buffer(v9, a6);
  swift_beginAccess();
  (*(*(v9 - 8) + 24))(v10, a1, v9);
  return swift_endAccess();
}

unint64_t static SettingsNavigationLocationIconType.caseDisplayRepresentations.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE90, &qword_21CE6FCB0);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE98, &qword_21CE6FCB8) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21CE6F420;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_21CE6B680();
  v4[v1] = 1;
  sub_21CE6B680();
  v5 = sub_21CDF9634(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v5;
}

Settings::SettingsNavigationLocationIconType_optional __swiftcall SettingsNavigationLocationIconType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21CE6D3B0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t SettingsNavigationLocationIconType.rawValue.getter()
{
  if (*v0)
  {
    return 0x746163696C707061;
  }

  else
  {
    return 0x4963696870617267;
  }
}

uint64_t sub_21CDF902C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746163696C707061;
  }

  else
  {
    v3 = 0x4963696870617267;
  }

  if (v2)
  {
    v4 = 0xEB000000006E6F63;
  }

  else
  {
    v4 = 0xEF6E6F63496E6F69;
  }

  if (*a2)
  {
    v5 = 0x746163696C707061;
  }

  else
  {
    v5 = 0x4963696870617267;
  }

  if (*a2)
  {
    v6 = 0xEF6E6F63496E6F69;
  }

  else
  {
    v6 = 0xEB000000006E6F63;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21CE6D400();
  }

  return v8 & 1;
}

uint64_t sub_21CDF90E8()
{
  sub_21CE6D4B0();
  sub_21CE6CCA0();

  return sub_21CE6D4E0();
}

uint64_t sub_21CDF9180(uint64_t a1)
{
  sub_21CE6CCA0();
}

uint64_t sub_21CDF9204(uint64_t a1)
{
  sub_21CE6D4B0();
  sub_21CE6CCA0();

  return sub_21CE6D4E0();
}

uint64_t sub_21CDF9298@<X0>(char *a2@<X8>)
{
  v3 = sub_21CE6D3B0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_21CDF92F8(uint64_t *a1@<X8>)
{
  v2 = 0x4963696870617267;
  if (*v1)
  {
    v2 = 0x746163696C707061;
  }

  v3 = 0xEB000000006E6F63;
  if (*v1)
  {
    v3 = 0xEF6E6F63496E6F69;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21CDF9370@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_21CE6B7D0();
  v7 = __swift_project_value_buffer(v6, a2);
  swift_beginAccess();
  return (*(*(v6 - 8) + 16))(a4, v7, v6);
}

uint64_t sub_21CDF941C(uint64_t a1)
{
  v2 = sub_21CDF855C();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_21CDF9468()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE90, &qword_21CE6FCB0);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE98, &qword_21CE6FCB8) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21CE6F420;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_21CE6B680();
  v4[v1] = 1;
  sub_21CE6B680();
  v5 = sub_21CDF9634(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v5;
}

uint64_t sub_21CDF95C4(uint64_t a1)
{
  v2 = sub_21CDF9E2C();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_21CDF9634(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE98, &qword_21CE6FCB8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FF10, &qword_21CE70298);
    v7 = sub_21CE6D390();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21CDFAA5C(v9, v5, &qword_27CE3FE98, &qword_21CE6FCB8);
      result = sub_21CE668C8(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_21CE6B6B0();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
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

unint64_t sub_21CDF9824()
{
  result = qword_281212418;
  if (!qword_281212418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212418);
  }

  return result;
}

unint64_t sub_21CDF987C()
{
  result = qword_281212400;
  if (!qword_281212400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212400);
  }

  return result;
}

unint64_t sub_21CDF98D4()
{
  result = qword_2812123D8;
  if (!qword_2812123D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812123D8);
  }

  return result;
}

unint64_t sub_21CDF9970()
{
  result = qword_2812123F8;
  if (!qword_2812123F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812123F8);
  }

  return result;
}

unint64_t sub_21CDF99C4()
{
  result = qword_2812123F0;
  if (!qword_2812123F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812123F0);
  }

  return result;
}

unint64_t sub_21CDF9A18()
{
  result = qword_281212408;
  if (!qword_281212408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212408);
  }

  return result;
}

unint64_t sub_21CDF9A70()
{
  result = qword_2812123E8;
  if (!qword_2812123E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812123E8);
  }

  return result;
}

unint64_t sub_21CDF9AC8()
{
  result = qword_2812132A8;
  if (!qword_2812132A8)
  {
    sub_21CE6BAF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812132A8);
  }

  return result;
}

unint64_t sub_21CDF9B68()
{
  result = qword_2812123E0;
  if (!qword_2812123E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812123E0);
  }

  return result;
}

unint64_t sub_21CDF9BC0()
{
  result = qword_281212530;
  if (!qword_281212530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212530);
  }

  return result;
}

unint64_t sub_21CDF9C18()
{
  result = qword_281212568;
  if (!qword_281212568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212568);
  }

  return result;
}

unint64_t sub_21CDF9C70()
{
  result = qword_281212548;
  if (!qword_281212548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212548);
  }

  return result;
}

unint64_t sub_21CDF9CC8()
{
  result = qword_281212528;
  if (!qword_281212528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212528);
  }

  return result;
}

unint64_t sub_21CDF9D2C()
{
  result = qword_281212550;
  if (!qword_281212550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212550);
  }

  return result;
}

unint64_t sub_21CDF9D80()
{
  result = qword_281212578;
  if (!qword_281212578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212578);
  }

  return result;
}

unint64_t sub_21CDF9DD4()
{
  result = qword_281212560;
  if (!qword_281212560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212560);
  }

  return result;
}

unint64_t sub_21CDF9E2C()
{
  result = qword_281212558;
  if (!qword_281212558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212558);
  }

  return result;
}

unint64_t sub_21CDF9ED4()
{
  result = qword_281212540;
  if (!qword_281212540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212540);
  }

  return result;
}

unint64_t sub_21CDF9F2C()
{
  result = qword_281212520;
  if (!qword_281212520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212520);
  }

  return result;
}

unint64_t sub_21CDF9F84()
{
  result = qword_281212538;
  if (!qword_281212538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212538);
  }

  return result;
}

uint64_t sub_21CDFA01C(uint64_t *a1, int a2)
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

uint64_t sub_21CDFA064(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SettingsNavigationLocationIconType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SettingsNavigationLocationIconType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21CDFA220()
{
  result = qword_281212420[0];
  if (!qword_281212420[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281212420);
  }

  return result;
}

unint64_t sub_21CDFA274(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FF00, &qword_21CE70288);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v19 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FF08, &qword_21CE70290);
    v7 = sub_21CE6D390();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21CDFAA5C(v9, v5, &qword_27CE3FF00, &qword_21CE70288);
      result = sub_21CE66984(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for SettingsPaneRecipe(0);
      result = sub_21CDFA9F8(v5, v14 + *(*(v15 - 8) + 72) * v13);
      *(v7[7] + 8 * v13) = *(v5 + v8);
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

unint64_t sub_21CDFA444(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FEF8, &qword_21CE70280);
    v3 = sub_21CE6D390();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21CE66850(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21CDFA548(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40CC0, &qword_21CE70240);
    v3 = sub_21CE6D390();
    v4 = a1 + 32;

    while (1)
    {
      sub_21CDFAA5C(v4, &v13, &qword_27CE3FED0, &qword_21CE70248);
      v5 = v13;
      v6 = v14;
      result = sub_21CE66850(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21CDFA678(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

_OWORD *sub_21CDFA678(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_21CDFA688(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FEF0, &qword_21CE70278);
    v3 = sub_21CE6D390();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_21CE66850(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21CDFA7D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_21CE6D390();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_21CE66850(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_21CDFA8FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_21CE6D390();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_21CE66850(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

uint64_t sub_21CDFA9F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsPaneRecipe(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CDFAA5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21CDFAAEC(uint64_t result, uint64_t a2, char *__dst, size_t __size)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *__source = result;
      v7 = a2 & 0xFFFFFFFFFFFFFFLL;
      if (__dst)
      {
        v5 = __source;
        return strlcpy(__dst, v5, __size);
      }

      __break(1u);
LABEL_13:
      __break(1u);
      return result;
    }

    if ((result & 0x1000000000000000) != 0)
    {
      if (__dst)
      {
        v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        return strlcpy(__dst, v5, __size);
      }

      goto LABEL_13;
    }
  }

  result = sub_21CE6D280();
  if (!v4)
  {
    return v8;
  }

  return result;
}

void sub_21CDFABA4(uint64_t a1, uint64_t a2, void *a3)
{
  v47 = sub_21CE6CC10();
  v5 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v54 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CE6B960();
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = v46 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FDC0, &qword_21CE6F630);
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v52 = *(v8 + 72);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21CE702B0;
  v50 = *(v9 + 16);
  v51 = v9 + 16;
  v50(v15 + v14, a2, v7);
  v55 = a3;

  sub_21CE3BA04(v15);
  v16 = v55;
  v17 = v55[2];
  if (v17)
  {
    v55 = MEMORY[0x277D84F90];
    sub_21CDE4558(0, v17, 0);
    v18 = v55;
    v46[1] = v16;
    v19 = v16 + v14;
    v48 = (v9 + 8);
    v49 = (v5 + 16);
    v20 = v47;
    do
    {
      v21 = v53;
      v22 = v50;
      v50(v53, v19, v7);
      v22(v12, v21, v7);
      if (qword_2812132E8 != -1)
      {
        swift_once();
      }

      v23 = __swift_project_value_buffer(v20, qword_2812132F0);
      (*v49)(v54, v23, v20);
      v24 = v12;
      v25 = sub_21CE6CC60();
      v27 = v26;
      v28 = v7;
      (*v48)(v21, v7);
      v55 = v18;
      v30 = *(v18 + 16);
      v29 = *(v18 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_21CDE4558((v29 > 1), v30 + 1, 1);
        v20 = v47;
        v18 = v55;
      }

      *(v18 + 16) = v30 + 1;
      v31 = v18 + 16 * v30;
      *(v31 + 32) = v25;
      *(v31 + 40) = v27;
      v19 += v52;
      --v17;
      v7 = v28;
      v12 = v24;
    }

    while (v17);
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  v55 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40BA0, &qword_21CE6F4B0);
  sub_21CDF0A80();
  v32 = sub_21CE6CB90();
  v34 = v33;

  v35 = MobileGestalt_get_current_device();
  if (!v35)
  {
    __break(1u);
    goto LABEL_23;
  }

  v36 = v35;
  appleInternalInstallCapability = MobileGestalt_get_appleInternalInstallCapability();

  if (appleInternalInstallCapability)
  {
    v55 = 0xD000000000000017;
    v56 = 0x800000021CE76140;
    MEMORY[0x21CF1ACB0](v32, v34);
    v39 = v55;
    v38 = v56;
    swift_beginAccess();
    if (qword_281211F30 != -1)
    {
      swift_once();
    }

    if (qword_281211F38)
    {
      qword_281213470 = qword_281211F38;
      sub_21CDFAAEC(v39, v38, qword_281211F38, qword_281211F40);
      swift_endAccess();

      goto LABEL_16;
    }

LABEL_23:
    __break(1u);
    return;
  }

LABEL_16:
  if (qword_281213280 != -1)
  {
    swift_once();
  }

  v40 = sub_21CE6BDA0();
  __swift_project_value_buffer(v40, qword_2812165C0);

  v41 = sub_21CE6BD80();
  v42 = sub_21CE6CF30();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v55 = v44;
    *v43 = 141558275;
    *(v43 + 4) = 1752392040;
    *(v43 + 12) = 2081;
    v45 = sub_21CDF2CC8(v32, v34, &v55);

    *(v43 + 14) = v45;
    _os_log_impl(&dword_21CDE1000, v41, v42, "Last Navigation Event: %{private,mask.hash}s", v43, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x21CF1BD50](v44, -1, -1);
    MEMORY[0x21CF1BD50](v43, -1, -1);
  }

  else
  {
  }
}

void sub_21CDFB1B0()
{
  v0 = swift_slowAlloc();
  bzero(v0, 0x4000uLL);
  qword_281211F38 = v0;
  qword_281211F40 = 0x4000;
}

const char *sub_21CDFB1F4@<X0>(const char *__source@<X0>, char *__dst@<X1>, size_t a3@<X2>, const char **a4@<X8>)
{
  if (__dst)
  {
    __source = strlcpy(__dst, __source, a3);
    *a4 = __source;
  }

  else
  {
    __break(1u);
  }

  return __source;
}

uint64_t sub_21CDFB23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a6;
  v37 = a2;
  v10 = type metadata accessor for SettingsNavigationEventRecord(0);
  v11 = (v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  v18 = *a1;
  v17 = *(a1 + 8);
  LOBYTE(a1) = *(a1 + 16);
  v19 = v11[7];
  v20 = sub_21CE6B960();
  (*(*(v20 - 8) + 16))(&v16[v19], a4, v20);
  v21 = v11[9];
  v22 = sub_21CE6BA60();
  (*(*(v22 - 8) + 16))(&v16[v21], v36, v22);
  v23 = &v16[v11[10]];
  *v16 = v18;
  *(v16 + 1) = v17;
  v16[16] = a1;
  *&v16[v11[8]] = a5;
  *v23 = v37;
  v23[1] = a3;
  sub_21CDEFF74(v18, v17);
  v24 = qword_2812132A0;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = sub_21CE6BDA0();
  __swift_project_value_buffer(v25, qword_281216608);
  sub_21CDFB51C(v16, v14);
  v26 = sub_21CE6BD80();
  v27 = sub_21CE6CF00();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 141558275;
    *(v28 + 4) = 1752392040;
    *(v28 + 12) = 2081;
    v30 = SettingsNavigationEventRecord.description.getter();
    v32 = v31;
    sub_21CDFB580(v14);
    v33 = sub_21CDF2CC8(v30, v32, &v38);

    *(v28 + 14) = v33;
    _os_log_impl(&dword_21CDE1000, v26, v27, "Did receive navigation event with payload: %{private,mask.hash}s", v28, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x21CF1BD50](v29, -1, -1);
    MEMORY[0x21CF1BD50](v28, -1, -1);
  }

  else
  {

    sub_21CDFB580(v14);
  }

  return sub_21CDFB580(v16);
}
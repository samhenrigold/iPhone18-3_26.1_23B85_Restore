uint64_t sub_25D1525F8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v10 = *a1;
  if (sub_25D152F50(a2, a3, a4, a5, a6))
  {
    v17 = v10;
    v16 = 3;
    sub_25D165AEC(&v15);
    v11 = sub_25D165AE8();
    v12 = sub_25D15C84C();
    sub_25D15C858(&v17, &v16, &v15, v11, v12, a8);
    *(a8 + 2) = 1;
    v13 = sub_25D1539B8(MEMORY[0x277D84F90]);

    *(a8 + 8) = v13;

    *(a8 + 16) = MEMORY[0x277D84FA0];
  }

  else
  {
    v18 = v10;
    return sub_25D15C510(&v18, a7, a8);
  }

  return result;
}

uint64_t sub_25D1526E4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *a1;
  v16 = a7[3];
  v15 = a7[4];
  __swift_project_boxed_opaque_existential_1(a7, v16);
  if ((*(v15 + 8))(v16, v15) & 1) != 0 && (v17 = a7[3], v18 = a7[4], __swift_project_boxed_opaque_existential_1(a7, v17), v19 = (*(v18 + 16))(a2, a3, a4, a5, v17, v18), v20) && (v21 = sub_25D152F50(v19, v20, 0, 0, a6), , (v21))
  {
    v31 = v14;
    v30 = 3;
    sub_25D165AEC(&v29);
    v22 = sub_25D165AE8();
    v23 = sub_25D15C84C();
    sub_25D15C858(&v31, &v30, &v29, v22, v23, a9);
    *(a9 + 2) = 1;
    v24 = sub_25D1539B8(MEMORY[0x277D84F90]);

    *(a9 + 8) = v24;

    *(a9 + 16) = MEMORY[0x277D84FA0];
  }

  else
  {
    v32 = v14;
    return sub_25D15C510(&v32, a8, a9);
  }

  return result;
}

unint64_t sub_25D152878(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25D152944(v11, 0, 0, 1, a1, a2);
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
    sub_25D153CD0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_25D152944(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25D152A50(a5, a6);
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
    result = sub_25D168574();
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

void *sub_25D152A50(uint64_t a1, unint64_t a2)
{
  v3 = sub_25D152A9C(a1, a2);
  sub_25D152BCC(&unk_286EB2A30);
  return v3;
}

void *sub_25D152A9C(uint64_t a1, unint64_t a2)
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

  v6 = sub_25D152CB8(v5, 0);
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

  result = sub_25D168574();
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
        v10 = sub_25D168494();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25D152CB8(v10, 0);
        result = sub_25D168534();
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

uint64_t sub_25D152BCC(uint64_t result)
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

  result = sub_25D152D2C(result, v11, 1, v3);
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

void *sub_25D152CB8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27A50, &unk_25D16BB90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25D152D2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27A50, &unk_25D16BB90);
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

unint64_t sub_25D152E20(char a1)
{
  sub_25D153AEC();
  v1 = sub_25D168414();
  return sub_25D152E88(a1, v1);
}

unint64_t sub_25D152E88(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_25D153B40();
    do
    {
      if (sub_25D168424())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_25D152F50(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v91 = a3;
  v9 = sub_25D168354();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v93 = &v89 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v92 = &v89 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v90 = &v89 - v19;
  MEMORY[0x28223BE20](v18);
  v89 = &v89 - v20;
  v21 = a5[3];
  v22 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v21);
  v23 = *(v22 + 16);
  v94 = a1;
  v24 = a1;
  v25 = a2;
  v23(&v101, v24, a2, 0, v21, v22);
  sub_25D153B94(&v101, &v96);
  if (!v97)
  {
    sub_25D153C04(&v96);
    v42 = sub_25D167248();
    v43 = v9;
    (*(v10 + 16))(v13, v42, v9);

    v44 = sub_25D168334();
    v45 = sub_25D1684F4();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v98[0] = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_25D152878(v94, v25, v98);
      _os_log_impl(&dword_25D151000, v44, v45, "No app record found for %s so not bypassing eligibility", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      MEMORY[0x25F893300](v47, -1, -1);
      MEMORY[0x25F893300](v46, -1, -1);
    }

    (*(v10 + 8))(v13, v43);
    sub_25D153C04(&v101);
    return 0;
  }

  sub_25D153C6C(&v96, v98);
  v26 = a5[3];
  v27 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v26);
  v28 = (*(v27 + 8))(v26, v27);
  v95 = v10;
  v29 = v9;
  if (v28)
  {
    if (!a4)
    {
      v74 = v99;
      v75 = v100;
      __swift_project_boxed_opaque_existential_1(v98, v99);
      v76 = (*(v75 + 32))(v74, v75);
      v77 = *(v76 + 16);
      v78 = (v76 + 32);
      v79 = v90;
      while (v77)
      {
        v80 = *v78++;
        --v77;
        if (v80 == 1)
        {

          v30 = 0xE800000000000000;
          v34 = 0x6C616E6F73726570;
          goto LABEL_11;
        }
      }

      v82 = sub_25D167248();
      (*(v95 + 16))(v79, v82, v29);

      v83 = sub_25D168334();
      v84 = sub_25D1684F4();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        *&v96 = v86;
        *v85 = 136315138;
        *(v85 + 4) = sub_25D152878(v94, v25, &v96);
        _os_log_impl(&dword_25D151000, v83, v84, "Personal persona not found for %s so not bypassing eligibility", v85, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v86);
        MEMORY[0x25F893300](v86, -1, -1);
        MEMORY[0x25F893300](v85, -1, -1);
      }

      v87 = *(v95 + 8);
      v88 = v79;
      goto LABEL_31;
    }

    v30 = a4;
    v31 = v99;
    v32 = v100;
    __swift_project_boxed_opaque_existential_1(v98, v99);
    v33 = *(v32 + 40);

    v34 = v91;
    if ((v33(v91, v30, v31, v32) & 1) == 0)
    {
      v35 = sub_25D167248();
      v36 = v89;
      (*(v95 + 16))(v89, v35, v9);

      v37 = sub_25D168334();
      v38 = sub_25D1684F4();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *&v96 = v40;
        *v39 = 136315394;
        v41 = sub_25D152878(v34, v30, &v96);

        *(v39 + 4) = v41;
        *(v39 + 12) = 2080;
        *(v39 + 14) = sub_25D152878(v94, v25, &v96);
        _os_log_impl(&dword_25D151000, v37, v38, "Persona %s not applicable for %s so not bypassing eligibility", v39, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F893300](v40, -1, -1);
        MEMORY[0x25F893300](v39, -1, -1);
      }

      else
      {
      }

LABEL_30:
      v87 = *(v95 + 8);
      v88 = v36;
LABEL_31:
      v87(v88, v29);
      goto LABEL_32;
    }
  }

  else
  {
    v30 = 0xE400000000000000;
    v34 = 1701736302;
  }

LABEL_11:
  v48 = v99;
  v49 = v100;
  __swift_project_boxed_opaque_existential_1(v98, v99);
  v50 = (*(v49 + 8))(v48, v49);
  v51 = v99;
  v52 = v100;
  __swift_project_boxed_opaque_existential_1(v98, v99);
  v53 = (*(v52 + 16))(v51, v52);
  v54 = v99;
  v55 = v100;
  __swift_project_boxed_opaque_existential_1(v98, v99);
  v56 = (*(v55 + 24))(v54, v55);
  v57 = sub_25D167248();
  v58 = *(v95 + 16);
  if (v50 & 1) == 0 || (v53 & 1) != 0 || (v56)
  {
    v36 = v93;
    v58(v93, v57, v29);

    v65 = sub_25D168334();
    v66 = sub_25D1684F4();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v92 = v29;
      v68 = v67;
      v69 = swift_slowAlloc();
      v70 = v25;
      v71 = v34;
      v72 = v69;
      *&v96 = v69;
      *v68 = 136316162;
      *(v68 + 4) = sub_25D152878(v94, v70, &v96);
      *(v68 + 12) = 2080;
      v73 = sub_25D152878(v71, v30, &v96);

      *(v68 + 14) = v73;
      *(v68 + 22) = 1024;
      *(v68 + 24) = v50 & 1;
      *(v68 + 28) = 1024;
      *(v68 + 30) = v53 & 1;
      *(v68 + 34) = 1024;
      *(v68 + 36) = v56 & 1;
      _os_log_impl(&dword_25D151000, v65, v66, "Not bypassing eligibility for %s:%s (isProfileValidated: %{BOOL}d isUPPValidated:%{BOOL}d isBeta:%{BOOL}d", v68, 0x28u);
      swift_arrayDestroy();
      MEMORY[0x25F893300](v72, -1, -1);
      MEMORY[0x25F893300](v68, -1, -1);

      (*(v95 + 8))(v36, v92);
LABEL_32:
      sub_25D153C04(&v101);
      __swift_destroy_boxed_opaque_existential_0Tm(v98);
      return 0;
    }

    goto LABEL_30;
  }

  v59 = v92;
  v58(v92, v57, v29);

  v60 = sub_25D168334();
  v61 = sub_25D1684F4();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *&v96 = v63;
    *v62 = 136315394;
    *(v62 + 4) = sub_25D152878(v94, v25, &v96);
    *(v62 + 12) = 2080;
    v64 = sub_25D152878(v34, v30, &v96);

    *(v62 + 14) = v64;
    _os_log_impl(&dword_25D151000, v60, v61, "Bypassing eligibility for %s:%s", v62, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F893300](v63, -1, -1);
    MEMORY[0x25F893300](v62, -1, -1);
  }

  else
  {
  }

  (*(v95 + 8))(v59, v29);
  sub_25D153C04(&v101);
  __swift_destroy_boxed_opaque_existential_0Tm(v98);
  return 1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_25D1539B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27A40, &unk_25D16B9C0);
    v3 = sub_25D1685B4();

    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_25D152E20(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_25D153AEC()
{
  result = qword_28155A478;
  if (!qword_28155A478)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OSEligibilityInput, &type metadata for OSEligibilityInput, v0, v1);
    atomic_store(result, &qword_28155A478);
  }

  return result;
}

unint64_t sub_25D153B40()
{
  result = qword_28155A470;
  if (!qword_28155A470)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OSEligibilityInput, &type metadata for OSEligibilityInput, v0, v1);
    atomic_store(result, &qword_28155A470);
  }

  return result;
}

uint64_t sub_25D153B94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27A48, &qword_25D168C18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25D153C04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27A48, &qword_25D168C18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25D153C6C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
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

uint64_t sub_25D153CD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25D153D3C()
{
  v1 = 0x7641746559746F6ELL;
  v2 = 0x656279616DLL;
  if (*v0 != 2)
  {
    v2 = 0x656C626967696C65;
  }

  if (*v0)
  {
    v1 = 0x6967696C45746F6ELL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25D153DC8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25D15F3AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25D153E08(uint64_t a1)
{
  v2 = sub_25D1544A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D153E44(uint64_t a1)
{
  v2 = sub_25D1544A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D153E8C(uint64_t a1)
{
  v2 = sub_25D1544F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D153EC8(uint64_t a1)
{
  v2 = sub_25D1544F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D153F04(uint64_t a1)
{
  v2 = sub_25D15454C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D153F40(uint64_t a1)
{
  v2 = sub_25D15454C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D153F7C(uint64_t a1)
{
  v2 = sub_25D1545A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D153FB8(uint64_t a1)
{
  v2 = sub_25D1545A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D153FF4(uint64_t a1)
{
  v2 = sub_25D1545F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D154030(uint64_t a1)
{
  v2 = sub_25D1545F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OSEligibilityAnswer.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27A58, &qword_25D168C20);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27A60, &qword_25D168C28);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27A68, &qword_25D168C30);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27A70, &qword_25D168C38);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27A78, &qword_25D168C40);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25D1544A4();
  sub_25D168724();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_25D15454C();
      v18 = v27;
      sub_25D168624();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_25D1544F8();
      v18 = v30;
      sub_25D168624();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_25D1545A0();
    v18 = v24;
    sub_25D168624();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_25D1545F4();
  sub_25D168624();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

unint64_t sub_25D1544A4()
{
  result = qword_27FC27E40;
  if (!qword_27FC27E40)
  {
    result = swift_getWitnessTable(byte_25D16B95C, &type metadata for OSEligibilityAnswer.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27E40);
  }

  return result;
}

unint64_t sub_25D1544F8()
{
  result = qword_27FC27E48;
  if (!qword_27FC27E48)
  {
    result = swift_getWitnessTable(byte_25D16B90C, &type metadata for OSEligibilityAnswer.EligibleCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27E48);
  }

  return result;
}

unint64_t sub_25D15454C()
{
  result = qword_27FC27E50;
  if (!qword_27FC27E50)
  {
    result = swift_getWitnessTable(aM_0, &type metadata for OSEligibilityAnswer.MaybeCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27E50);
  }

  return result;
}

unint64_t sub_25D1545A0()
{
  result = qword_27FC27E58;
  if (!qword_27FC27E58)
  {
    result = swift_getWitnessTable(byte_25D16B86C, &type metadata for OSEligibilityAnswer.NotEligibleCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27E58);
  }

  return result;
}

unint64_t sub_25D1545F4()
{
  result = qword_27FC27E60;
  if (!qword_27FC27E60)
  {
    result = swift_getWitnessTable(asc_25D16B81C, &type metadata for OSEligibilityAnswer.NotYetAvailableCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27E60);
  }

  return result;
}

uint64_t OSEligibilityAnswer.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27A80, &qword_25D168C48);
  v40 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27A88, &qword_25D168C50);
  v5 = *(v4 - 8);
  v42 = v4;
  v43 = v5;
  MEMORY[0x28223BE20](v4);
  v46 = v35 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27A90, &qword_25D168C58);
  v38 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v8 = v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27A98, &qword_25D168C60);
  v39 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27AA0, &qword_25D168C68);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v35 - v14;
  v16 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_25D1544A4();
  v17 = v48;
  sub_25D168714();
  if (!v17)
  {
    v36 = v9;
    v37 = 0;
    v18 = v46;
    v19 = v47;
    v48 = v13;
    v20 = v15;
    v21 = sub_25D168614();
    v22 = *(v21 + 16);
    if (!v22 || ((v23 = *(v21 + 32), v22 == 1) ? (v24 = v23 == 4) : (v24 = 1), v24))
    {
      v25 = sub_25D168564();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27AA8, &qword_25D168C70);
      *v27 = &type metadata for OSEligibilityAnswer;
      sub_25D1685D4();
      sub_25D168554();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
      swift_willThrow();
      (*(v48 + 8))(v20, v12);
    }

    else
    {
      v35[1] = v21;
      if (v23 <= 1)
      {
        if (v23)
        {
          v51 = 1;
          sub_25D1545A0();
          v32 = v37;
          sub_25D1685C4();
          if (!v32)
          {
            (*(v38 + 8))(v8, v41);
            goto LABEL_23;
          }
        }

        else
        {
          v50 = 0;
          sub_25D1545F4();
          v28 = v37;
          sub_25D1685C4();
          if (!v28)
          {
            (*(v39 + 8))(v11, v36);
LABEL_23:
            (*(v48 + 8))(v15, v12);
LABEL_25:
            swift_unknownObjectRelease();
            *v45 = v23;
            return __swift_destroy_boxed_opaque_existential_0Tm(v49);
          }
        }

        (*(v48 + 8))(v15, v12);
        goto LABEL_20;
      }

      v29 = v45;
      v30 = v48;
      if (v23 == 2)
      {
        v52 = 2;
        sub_25D15454C();
        v31 = v37;
        sub_25D1685C4();
        if (!v31)
        {
          (*(v43 + 8))(v18, v42);
          (*(v30 + 8))(v20, v12);
          swift_unknownObjectRelease();
          *v29 = 2;
          return __swift_destroy_boxed_opaque_existential_0Tm(v49);
        }
      }

      else
      {
        v53 = 3;
        sub_25D1544F8();
        v33 = v37;
        sub_25D1685C4();
        if (!v33)
        {
          (*(v40 + 8))(v19, v44);
          (*(v30 + 8))(v20, v12);
          goto LABEL_25;
        }
      }

      (*(v30 + 8))(v20, v12);
    }

LABEL_20:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v49);
}

uint64_t sub_25D154CFC()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_25D154D74()
{
  if (*v0)
  {
    return 0x646563726F66;
  }

  else
  {
    return 0x64657475706D6F63;
  }
}

uint64_t sub_25D154DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64657475706D6F63 && a2 == 0xE800000000000000;
  if (v6 || (sub_25D168664() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646563726F66 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25D168664();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_25D154E90(uint64_t a1)
{
  v2 = sub_25D1552A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D154ECC(uint64_t a1)
{
  v2 = sub_25D1552A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D154F08(uint64_t a1)
{
  v2 = sub_25D155350();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D154F44(uint64_t a1)
{
  v2 = sub_25D155350();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D154F80(uint64_t a1)
{
  v2 = sub_25D1552FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D154FBC(uint64_t a1)
{
  v2 = sub_25D1552FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OSEligibilityAnswerSource.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27AB0, &qword_25D168C78);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27AB8, &qword_25D168C80);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27AC0, &qword_25D168C88);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25D1552A8();
  sub_25D168724();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_25D1552FC();
    v14 = v18;
    sub_25D168624();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_25D155350();
    sub_25D168624();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_25D1552A8()
{
  result = qword_27FC27E68;
  if (!qword_27FC27E68)
  {
    result = swift_getWitnessTable(asc_25D16B7CC, &type metadata for OSEligibilityAnswerSource.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27E68);
  }

  return result;
}

unint64_t sub_25D1552FC()
{
  result = qword_27FC27E70;
  if (!qword_27FC27E70)
  {
    result = swift_getWitnessTable(byte_25D16B77C, &type metadata for OSEligibilityAnswerSource.ForcedCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27E70);
  }

  return result;
}

unint64_t sub_25D155350()
{
  result = qword_27FC27E78;
  if (!qword_27FC27E78)
  {
    result = swift_getWitnessTable(byte_25D16B72C, &type metadata for OSEligibilityAnswerSource.ComputedCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27E78);
  }

  return result;
}

uint64_t OSEligibilityAnswerSource.hashValue.getter()
{
  v1 = *v0;
  sub_25D1686D4();
  MEMORY[0x25F892F60](v1);
  return sub_25D168704();
}

uint64_t OSEligibilityAnswerSource.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27AC8, &qword_25D168C90);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27AD0, &qword_25D168C98);
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27AD8, &qword_25D168CA0);
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25D1552A8();
  v13 = v31;
  sub_25D168714();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_25D168614();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_25D168564();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27AA8, &qword_25D168C70);
    *v21 = &type metadata for OSEligibilityAnswerSource;
    sub_25D1685D4();
    sub_25D168554();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_25D1552FC();
    sub_25D1685C4();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_25D155350();
    sub_25D1685C4();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_0Tm(v22);
}

uint64_t _s13OSEligibility0A11InputStatusO9hashValueSivg_0()
{
  v1 = *v0;
  sub_25D1686D4();
  MEMORY[0x25F892F60](v1);
  return sub_25D168704();
}

uint64_t sub_25D1558B4(uint64_t a1)
{
  v2 = *v1;
  sub_25D1686D4();
  MEMORY[0x25F892F60](v2);
  return sub_25D168704();
}

uint64_t sub_25D155928@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = result == 0xD000000000000025 && 0x800000025D16D3C0 == a2;
  if (v5 || (v6 = result, result = sub_25D168664(), (result & 1) != 0))
  {
    v7 = 0;
  }

  else if (v6 == 0xD000000000000024 && 0x800000025D16D3F0 == a2 || (result = sub_25D168664(), (result & 1) != 0))
  {
    v7 = 1;
  }

  else
  {
    result = 0xD000000000000021;
    if (v6 == 0xD000000000000021 && 0x800000025D16D420 == a2 || (result = sub_25D168664(), (result & 1) != 0))
    {
      v7 = 2;
    }

    else if (v6 == 0xD000000000000022 && 0x800000025D16D450 == a2 || (result = sub_25D168664(), (result & 1) != 0))
    {
      v7 = 3;
    }

    else
    {
      result = 0xD000000000000023;
      if (v6 == 0xD000000000000023 && 0x800000025D16D480 == a2 || (result = sub_25D168664(), (result & 1) != 0))
      {
        v7 = 4;
      }

      else
      {
        result = 0xD000000000000026;
        if (v6 == 0xD000000000000026 && 0x800000025D16D4B0 == a2 || (result = sub_25D168664(), (result & 1) != 0))
        {
          v7 = 17;
        }

        else
        {
          result = 0xD000000000000027;
          if (v6 == 0xD000000000000027 && 0x800000025D16D4E0 == a2 || (result = sub_25D168664(), (result & 1) != 0))
          {
            v7 = 5;
          }

          else if (v6 == 0xD000000000000024 && 0x800000025D16D510 == a2 || (result = sub_25D168664(), (result & 1) != 0))
          {
            v7 = 6;
          }

          else
          {
            result = 0xD00000000000002CLL;
            if (v6 == 0xD00000000000002CLL && 0x800000025D16D540 == a2 || (result = sub_25D168664(), (result & 1) != 0))
            {
              v7 = 7;
            }

            else if (v6 == 0xD000000000000028 && 0x800000025D16D570 == a2 || (result = sub_25D168664(), (result & 1) != 0))
            {
              v7 = 8;
            }

            else if (v6 == 0xD000000000000022 && 0x800000025D16D5A0 == a2 || (result = sub_25D168664(), (result & 1) != 0))
            {
              v7 = 9;
            }

            else if (v6 == 0xD000000000000028 && 0x800000025D16D5D0 == a2 || (result = sub_25D168664(), (result & 1) != 0))
            {
              v7 = 10;
            }

            else
            {
              result = 0xD000000000000020;
              if (v6 == 0xD000000000000020 && 0x800000025D16D600 == a2 || (result = sub_25D168664(), (result & 1) != 0))
              {
                v7 = 11;
              }

              else
              {
                result = 0xD000000000000033;
                if (v6 == 0xD000000000000033 && 0x800000025D16D630 == a2 || (result = sub_25D168664(), (result & 1) != 0))
                {
                  v7 = 12;
                }

                else
                {
                  result = 0xD00000000000002BLL;
                  if (v6 == 0xD00000000000002BLL && 0x800000025D16D670 == a2 || (result = sub_25D168664(), (result & 1) != 0))
                  {
                    v7 = 13;
                  }

                  else
                  {
                    result = 0xD00000000000001ELL;
                    if (v6 == 0xD00000000000001ELL && 0x800000025D16D6A0 == a2 || (result = sub_25D168664(), (result & 1) != 0))
                    {
                      v7 = 14;
                    }

                    else if (v6 == 0xD000000000000025 && 0x800000025D16D6C0 == a2 || (result = sub_25D168664(), (result & 1) != 0))
                    {
                      v7 = 15;
                    }

                    else
                    {
                      v7 = 16;
                      if (v6 != 0xD000000000000024 || 0x800000025D16D6F0 != a2)
                      {
                        result = sub_25D168664();
                        if (result)
                        {
                          v7 = 16;
                        }

                        else
                        {
                          v7 = 18;
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

  *a3 = v7;
  return result;
}

unint64_t sub_25D155E14(uint64_t a1, uint64_t a2, void *a3)
{
  result = sub_25D155928(a1, a2, &v7);
  v5 = v7;
  if (v7 != 18)
  {
    result = xpc_int64_get_value(a3);
    if ((result & 0x8000000000000000) == 0)
    {
      if (result >= 8)
      {
        v6 = 6;
      }

      else
      {
        v6 = (0x504030602010006uLL >> (8 * result));
      }

      return sub_25D155E94(v6, v5);
    }
  }

  return result;
}

uint64_t sub_25D155E94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1 == 6)
  {
    result = sub_25D152E20(a2);
    if (v5)
    {
      v6 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v12 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_25D15E00C();
        v8 = v12;
      }

      result = sub_25D15DD54(v6, v8);
      *v3 = v8;
    }
  }

  else
  {
    v9 = a1;
    v10 = a2;
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    result = sub_25D15DEE8(v9, v10, v11);
    *v2 = v13;
  }

  return result;
}

unint64_t OSEligibilityInput.bridgedInputKey.getter()
{
  result = 0xD000000000000025;
  switch(*v0)
  {
    case 1:
    case 6:
    case 0x10:
      result = 0xD000000000000024;
      break;
    case 2:
      result = 0xD000000000000021;
      break;
    case 3:
    case 9:
      result = 0xD000000000000022;
      break;
    case 4:
      result = 0xD000000000000023;
      break;
    case 5:
      result = 0xD000000000000027;
      break;
    case 7:
      result = 0xD00000000000002CLL;
      break;
    case 8:
    case 0xA:
      result = 0xD000000000000028;
      break;
    case 0xB:
      result = 0xD000000000000020;
      break;
    case 0xC:
      result = 0xD000000000000033;
      break;
    case 0xD:
      result = 0xD00000000000002BLL;
      break;
    case 0xE:
      result = 0xD00000000000001ELL;
      break;
    case 0xF:
      result = 0xD000000000000025;
      break;
    case 0x11:
      result = 0xD000000000000026;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_25D1560F8(char a1)
{
  result = 0x4C7972746E756F63;
  switch(a1)
  {
    case 1:
      result = 0x427972746E756F63;
      break;
    case 2:
      result = 0x6C43656369766564;
      break;
    case 3:
      result = 0x6F4C656369766564;
      break;
    case 4:
      result = 0x6C6543616E696863;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x614C656369766564;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x676E614C69726973;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x5069646572616873;
      break;
    case 12:
      result = 0xD00000000000001ALL;
      break;
    case 13:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0x7461646874726962;
      break;
    case 15:
      result = 0x4C65736963657270;
      break;
    case 16:
      result = 0x6F4C6F7470696873;
      break;
    case 17:
      result = 0x707041656E6F6870;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25D156350(uint64_t a1)
{
  v2 = sub_25D15FB68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D15638C(uint64_t a1)
{
  v2 = sub_25D15FB68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D1563C8(uint64_t a1)
{
  v2 = sub_25D15FEB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D156404(uint64_t a1)
{
  v2 = sub_25D15FEB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D156448@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25D1602CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25D15647C(uint64_t a1)
{
  v2 = sub_25D15FA18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D1564B8(uint64_t a1)
{
  v2 = sub_25D15FA18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D1564F4(uint64_t a1)
{
  v2 = sub_25D15FFAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D156530(uint64_t a1)
{
  v2 = sub_25D15FFAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D15656C(uint64_t a1)
{
  v2 = sub_25D160000();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D1565A8(uint64_t a1)
{
  v2 = sub_25D160000();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D1565E4(uint64_t a1)
{
  v2 = sub_25D15FC10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D156620(uint64_t a1)
{
  v2 = sub_25D15FC10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D15665C(uint64_t a1)
{
  v2 = sub_25D15FF58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D156698(uint64_t a1)
{
  v2 = sub_25D15FF58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D1566D4(uint64_t a1)
{
  v2 = sub_25D15FE08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D156710(uint64_t a1)
{
  v2 = sub_25D15FE08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D15674C(uint64_t a1)
{
  v2 = sub_25D15FF04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D156788(uint64_t a1)
{
  v2 = sub_25D15FF04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D1567C4(uint64_t a1)
{
  v2 = sub_25D15FE5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D156800(uint64_t a1)
{
  v2 = sub_25D15FE5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D15683C(uint64_t a1)
{
  v2 = sub_25D15FCB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D156878(uint64_t a1)
{
  v2 = sub_25D15FCB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D1568B4(uint64_t a1)
{
  v2 = sub_25D15FDB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D1568F0(uint64_t a1)
{
  v2 = sub_25D15FDB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D15692C(uint64_t a1)
{
  v2 = sub_25D15FD60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D156968(uint64_t a1)
{
  v2 = sub_25D15FD60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D1569A4(uint64_t a1)
{
  v2 = sub_25D15FBBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D1569E0(uint64_t a1)
{
  v2 = sub_25D15FBBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D156A1C(uint64_t a1)
{
  v2 = sub_25D15FA6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D156A58(uint64_t a1)
{
  v2 = sub_25D15FA6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D156A94(uint64_t a1)
{
  v2 = sub_25D15FB14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D156AD0(uint64_t a1)
{
  v2 = sub_25D15FB14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D156B0C(uint64_t a1)
{
  v2 = sub_25D15FC64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D156B48(uint64_t a1)
{
  v2 = sub_25D15FC64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D156B84(uint64_t a1)
{
  v2 = sub_25D15FAC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D156BC0(uint64_t a1)
{
  v2 = sub_25D15FAC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D156BFC(uint64_t a1)
{
  v2 = sub_25D15FD0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D156C38(uint64_t a1)
{
  v2 = sub_25D15FD0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OSEligibilityInput.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27AE0, &qword_25D168CA8);
  v107 = *(v4 - 8);
  v108 = v4;
  MEMORY[0x28223BE20](v4);
  v106 = &v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27AE8, &qword_25D168CB0);
  v104 = *(v6 - 8);
  v105 = v6;
  MEMORY[0x28223BE20](v6);
  v103 = &v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27AF0, &qword_25D168CB8);
  v101 = *(v8 - 8);
  v102 = v8;
  MEMORY[0x28223BE20](v8);
  v100 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27AF8, &qword_25D168CC0);
  v98 = *(v10 - 8);
  v99 = v10;
  MEMORY[0x28223BE20](v10);
  v97 = &v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B00, &qword_25D168CC8);
  v95 = *(v12 - 8);
  v96 = v12;
  MEMORY[0x28223BE20](v12);
  v94 = &v57 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B08, &qword_25D168CD0);
  v92 = *(v14 - 8);
  v93 = v14;
  MEMORY[0x28223BE20](v14);
  v91 = &v57 - v15;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B10, &qword_25D168CD8);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v57 - v16;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B18, &qword_25D168CE0);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v57 - v17;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B20, &qword_25D168CE8);
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v57 - v18;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B28, &qword_25D168CF0);
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v57 - v19;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B30, &qword_25D168CF8);
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v57 - v20;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B38, &qword_25D168D00);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v57 - v21;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B40, &qword_25D168D08);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v57 - v22;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B48, &qword_25D168D10);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v57 - v23;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B50, &qword_25D168D18);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v57 - v24;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B58, &qword_25D168D20);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v57 - v25;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B60, &qword_25D168D28);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v27 = &v57 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B68, &qword_25D168D30);
  v58 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v30 = &v57 - v29;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B70, &qword_25D168D38);
  v31 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v33 = &v57 - v32;
  v34 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25D15FA18();
  v109 = v33;
  sub_25D168724();
  v35 = (v31 + 8);
  switch(v34)
  {
    case 1:
      v112 = 1;
      sub_25D15FFAC();
      v50 = v109;
      v51 = v110;
      sub_25D168624();
      (*(v59 + 8))(v27, v60);
      return (*v35)(v50, v51);
    case 2:
      v112 = 2;
      sub_25D15FF58();
      v47 = v61;
      v37 = v109;
      v36 = v110;
      sub_25D168624();
      v42 = *(v62 + 8);
      v43 = v47;
      v44 = &v95;
      goto LABEL_21;
    case 3:
      v112 = 3;
      sub_25D15FF04();
      v48 = v64;
      v37 = v109;
      v36 = v110;
      sub_25D168624();
      v42 = *(v65 + 8);
      v43 = v48;
      v44 = &v98;
      goto LABEL_21;
    case 4:
      v112 = 4;
      sub_25D15FEB0();
      v45 = v67;
      v37 = v109;
      v36 = v110;
      sub_25D168624();
      v42 = *(v68 + 8);
      v43 = v45;
      v44 = &v101;
      goto LABEL_21;
    case 5:
      v112 = 5;
      sub_25D15FE5C();
      v53 = v70;
      v37 = v109;
      v36 = v110;
      sub_25D168624();
      v42 = *(v71 + 8);
      v43 = v53;
      v44 = &v104;
      goto LABEL_21;
    case 6:
      v112 = 6;
      sub_25D15FE08();
      v54 = v73;
      v37 = v109;
      v36 = v110;
      sub_25D168624();
      v42 = *(v74 + 8);
      v43 = v54;
      v44 = &v107;
      goto LABEL_21;
    case 7:
      v112 = 7;
      sub_25D15FDB4();
      v49 = v76;
      v37 = v109;
      v36 = v110;
      sub_25D168624();
      v42 = *(v77 + 8);
      v43 = v49;
      v44 = &v110;
      goto LABEL_21;
    case 8:
      v112 = 8;
      sub_25D15FD60();
      v56 = v79;
      v37 = v109;
      v36 = v110;
      sub_25D168624();
      v42 = *(v80 + 8);
      v43 = v56;
      v44 = &v111;
      goto LABEL_21;
    case 9:
      v112 = 9;
      sub_25D15FD0C();
      v46 = v82;
      v37 = v109;
      v36 = v110;
      sub_25D168624();
      v42 = *(v83 + 8);
      v43 = v46;
      v44 = &v113;
      goto LABEL_21;
    case 10:
      v112 = 10;
      sub_25D15FCB8();
      v55 = v85;
      v37 = v109;
      v36 = v110;
      sub_25D168624();
      v42 = *(v86 + 8);
      v43 = v55;
      v44 = &v114;
      goto LABEL_21;
    case 11:
      v112 = 11;
      sub_25D15FC64();
      v41 = v88;
      v37 = v109;
      v36 = v110;
      sub_25D168624();
      v42 = *(v89 + 8);
      v43 = v41;
      v44 = &v115;
LABEL_21:
      v42(v43, *(v44 - 32));
      return (*v35)(v37, v36);
    case 12:
      v112 = 12;
      sub_25D15FC10();
      v38 = v91;
      v37 = v109;
      v36 = v110;
      sub_25D168624();
      v40 = v92;
      v39 = v93;
      goto LABEL_17;
    case 13:
      v112 = 13;
      sub_25D15FBBC();
      v38 = v94;
      v37 = v109;
      v36 = v110;
      sub_25D168624();
      v40 = v95;
      v39 = v96;
      goto LABEL_17;
    case 14:
      v112 = 14;
      sub_25D15FB68();
      v38 = v97;
      v37 = v109;
      v36 = v110;
      sub_25D168624();
      v40 = v98;
      v39 = v99;
      goto LABEL_17;
    case 15:
      v112 = 15;
      sub_25D15FB14();
      v38 = v100;
      v37 = v109;
      v36 = v110;
      sub_25D168624();
      v40 = v101;
      v39 = v102;
      goto LABEL_17;
    case 16:
      v112 = 16;
      sub_25D15FAC0();
      v38 = v103;
      v37 = v109;
      v36 = v110;
      sub_25D168624();
      v40 = v104;
      v39 = v105;
      goto LABEL_17;
    case 17:
      v112 = 17;
      sub_25D15FA6C();
      v38 = v106;
      v37 = v109;
      v36 = v110;
      sub_25D168624();
      v40 = v107;
      v39 = v108;
LABEL_17:
      (*(v40 + 8))(v38, v39);
      break;
    default:
      v112 = 0;
      sub_25D160000();
      v37 = v109;
      v36 = v110;
      sub_25D168624();
      (*(v58 + 8))(v30, v28);
      break;
  }

  return (*v35)(v37, v36);
}

uint64_t OSEligibilityInput.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v131 = a2;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B78, &qword_25D168D40);
  v113 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v126 = &v75 - v3;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B80, &qword_25D168D48);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v125 = &v75 - v4;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B88, &qword_25D168D50);
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v124 = &v75 - v5;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B90, &qword_25D168D58);
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v123 = &v75 - v6;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B98, &qword_25D168D60);
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v122 = &v75 - v7;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27BA0, &qword_25D168D68);
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v121 = &v75 - v8;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27BA8, &qword_25D168D70);
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v120 = &v75 - v9;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27BB0, &qword_25D168D78);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v119 = &v75 - v10;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27BB8, &qword_25D168D80);
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v118 = &v75 - v11;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27BC0, &qword_25D168D88);
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v117 = &v75 - v12;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27BC8, &qword_25D168D90);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v116 = &v75 - v13;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27BD0, &qword_25D168D98);
  v92 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v129 = &v75 - v14;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27BD8, &qword_25D168DA0);
  v90 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v115 = &v75 - v15;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27BE0, &qword_25D168DA8);
  v89 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v128 = &v75 - v16;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27BE8, &qword_25D168DB0);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v127 = &v75 - v17;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27BF0, &qword_25D168DB8);
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v114 = &v75 - v18;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27BF8, &qword_25D168DC0);
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v20 = &v75 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C00, &qword_25D168DC8);
  v80 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v75 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C08, &qword_25D168DD0);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v75 - v26;
  v28 = a1[3];
  v132 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_25D15FA18();
  v29 = v133;
  sub_25D168714();
  if (v29)
  {
LABEL_43:
    v73 = v132;
    return __swift_destroy_boxed_opaque_existential_0Tm(v73);
  }

  v77 = v23;
  v76 = v21;
  v78 = v20;
  v30 = v127;
  v31 = v128;
  v32 = v129;
  v79 = 0;
  v34 = v130;
  v33 = v131;
  v133 = v25;
  v35 = sub_25D168614();
  if (*(v35 + 16) != 1 || (v36 = *(v35 + 32), v36 == 18))
  {
    v39 = sub_25D168564();
    swift_allocError();
    v41 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27AA8, &qword_25D168C70);
    *v41 = &type metadata for OSEligibilityInput;
    sub_25D1685D4();
    sub_25D168554();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
    swift_willThrow();
    (*(v133 + 8))(v27, v24);
LABEL_42:
    swift_unknownObjectRelease();
    goto LABEL_43;
  }

  v75 = v35;
  switch(v36)
  {
    case 1:
      v134 = 1;
      sub_25D15FFAC();
      v60 = v78;
      v61 = v79;
      sub_25D1685C4();
      if (v61)
      {
        goto LABEL_41;
      }

      (*(v81 + 8))(v60, v82);
      goto LABEL_46;
    case 2:
      v134 = 2;
      sub_25D15FF58();
      v53 = v114;
      v54 = v79;
      sub_25D1685C4();
      if (v54)
      {
        goto LABEL_41;
      }

      (*(v83 + 8))(v53, v84);
      goto LABEL_46;
    case 3:
      v134 = 3;
      sub_25D15FF04();
      v57 = v79;
      sub_25D1685C4();
      if (v57)
      {
        goto LABEL_41;
      }

      (*(v86 + 8))(v30, v87);
      goto LABEL_46;
    case 4:
      v134 = 4;
      sub_25D15FEB0();
      v48 = v79;
      sub_25D1685C4();
      if (v48)
      {
        goto LABEL_41;
      }

      (*(v89 + 8))(v31, v85);
      goto LABEL_46;
    case 5:
      v134 = 5;
      sub_25D15FE5C();
      v64 = v115;
      v65 = v79;
      sub_25D1685C4();
      if (v65)
      {
        goto LABEL_41;
      }

      (*(v90 + 8))(v64, v88);
      goto LABEL_46;
    case 6:
      v134 = 6;
      sub_25D15FE08();
      v68 = v79;
      sub_25D1685C4();
      if (v68)
      {
        goto LABEL_41;
      }

      (*(v92 + 8))(v32, v91);
      goto LABEL_46;
    case 7:
      v134 = 7;
      sub_25D15FDB4();
      v58 = v116;
      v59 = v79;
      sub_25D1685C4();
      if (v59)
      {
        goto LABEL_41;
      }

      (*(v93 + 8))(v58, v94);
      goto LABEL_46;
    case 8:
      v134 = 8;
      sub_25D15FD60();
      v71 = v117;
      v72 = v79;
      sub_25D1685C4();
      if (v72)
      {
        goto LABEL_41;
      }

      (*(v95 + 8))(v71, v96);
      goto LABEL_46;
    case 9:
      v134 = 9;
      sub_25D15FD0C();
      v51 = v118;
      v52 = v79;
      sub_25D1685C4();
      if (v52)
      {
        goto LABEL_41;
      }

      (*(v97 + 8))(v51, v98);
      goto LABEL_46;
    case 10:
      v134 = 10;
      sub_25D15FCB8();
      v69 = v119;
      v70 = v79;
      sub_25D1685C4();
      if (v70)
      {
        goto LABEL_41;
      }

      (*(v99 + 8))(v69, v100);
      goto LABEL_46;
    case 11:
      v134 = 11;
      sub_25D15FC64();
      v46 = v120;
      v47 = v79;
      sub_25D1685C4();
      if (v47)
      {
        goto LABEL_41;
      }

      (*(v101 + 8))(v46, v102);
      goto LABEL_46;
    case 12:
      v134 = 12;
      sub_25D15FC10();
      v49 = v121;
      v50 = v79;
      sub_25D1685C4();
      if (v50)
      {
        goto LABEL_41;
      }

      (*(v103 + 8))(v49, v104);
      goto LABEL_46;
    case 13:
      v134 = 13;
      sub_25D15FBBC();
      v66 = v122;
      v67 = v79;
      sub_25D1685C4();
      if (v67)
      {
        goto LABEL_41;
      }

      (*(v105 + 8))(v66, v106);
      goto LABEL_46;
    case 14:
      v134 = 14;
      sub_25D15FB68();
      v44 = v123;
      v45 = v79;
      sub_25D1685C4();
      if (v45)
      {
        goto LABEL_41;
      }

      (*(v107 + 8))(v44, v108);
      goto LABEL_46;
    case 15:
      v134 = 15;
      sub_25D15FB14();
      v55 = v124;
      v56 = v79;
      sub_25D1685C4();
      if (v56)
      {
        goto LABEL_41;
      }

      (*(v109 + 8))(v55, v110);
      goto LABEL_46;
    case 16:
      v134 = 16;
      sub_25D15FAC0();
      v42 = v125;
      v43 = v79;
      sub_25D1685C4();
      if (v43)
      {
        goto LABEL_41;
      }

      (*(v111 + 8))(v42, v112);
      goto LABEL_46;
    case 17:
      v134 = 17;
      sub_25D15FA6C();
      v62 = v126;
      v63 = v79;
      sub_25D1685C4();
      if (v63)
      {
        goto LABEL_41;
      }

      (*(v113 + 8))(v62, v34);
      goto LABEL_46;
    default:
      v134 = 0;
      sub_25D160000();
      v37 = v77;
      v38 = v79;
      sub_25D1685C4();
      if (v38)
      {
LABEL_41:
        (*(v133 + 8))(v27, v24);
        goto LABEL_42;
      }

      (*(v80 + 8))(v37, v76);
LABEL_46:
      (*(v133 + 8))(v27, v24);
      swift_unknownObjectRelease();
      v73 = v132;
      *v33 = v36;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v73);
}

unint64_t sub_25D158FF0()
{
  v1 = *v0;
  v2 = 0x746553746F6ELL;
  v3 = 0xD000000000000010;
  v4 = 0x7078456E656B6F74;
  if (v1 != 4)
  {
    v4 = 0x6E756F6363416F6ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6967696C45746F6ELL;
  if (v1 != 1)
  {
    v5 = 0x656C626967696C65;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25D1590C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25D1608A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25D1590F4(uint64_t a1)
{
  v2 = sub_25D160054();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D159130(uint64_t a1)
{
  v2 = sub_25D160054();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D15916C(uint64_t a1)
{
  v2 = sub_25D1601A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D1591A8(uint64_t a1)
{
  v2 = sub_25D1601A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D1591E4(uint64_t a1)
{
  v2 = sub_25D1600A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D159220(uint64_t a1)
{
  v2 = sub_25D1600A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D15925C(uint64_t a1)
{
  v2 = sub_25D1601F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D159298(uint64_t a1)
{
  v2 = sub_25D1601F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D1592D4@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_25D159310(uint64_t a1)
{
  v2 = sub_25D16024C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D15934C(uint64_t a1)
{
  v2 = sub_25D16024C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D159388(uint64_t a1)
{
  v2 = sub_25D1600FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D1593C4(uint64_t a1)
{
  v2 = sub_25D1600FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D159400(uint64_t a1)
{
  v2 = sub_25D160150();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D15943C(uint64_t a1)
{
  v2 = sub_25D160150();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OSEligibilityInputStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C10, &qword_25D168DD8);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C18, &qword_25D168DE0);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C20, &qword_25D168DE8);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v33 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C28, &qword_25D168DF0);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x28223BE20](v9);
  v30 = &v26 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C30, &qword_25D168DF8);
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x28223BE20](v11);
  v27 = &v26 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C38, &qword_25D168E00);
  v26 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C40, &qword_25D168E08);
  v16 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v18 = &v26 - v17;
  v19 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25D160054();
  sub_25D168724();
  v20 = (v16 + 8);
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v46 = 3;
      sub_25D160150();
      v21 = v33;
      v22 = v42;
      sub_25D168624();
      v24 = v34;
      v23 = v35;
    }

    else if (v19 == 4)
    {
      v47 = 4;
      sub_25D1600FC();
      v21 = v36;
      v22 = v42;
      sub_25D168624();
      v24 = v37;
      v23 = v38;
    }

    else
    {
      v48 = 5;
      sub_25D1600A8();
      v21 = v39;
      v22 = v42;
      sub_25D168624();
      v24 = v40;
      v23 = v41;
    }

    goto LABEL_12;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      v44 = 1;
      sub_25D1601F8();
      v21 = v27;
      v22 = v42;
      sub_25D168624();
      v24 = v28;
      v23 = v29;
    }

    else
    {
      v45 = 2;
      sub_25D1601A4();
      v21 = v30;
      v22 = v42;
      sub_25D168624();
      v24 = v31;
      v23 = v32;
    }

LABEL_12:
    (*(v24 + 8))(v21, v23);
    return (*v20)(v18, v22);
  }

  v43 = 0;
  sub_25D16024C();
  v22 = v42;
  sub_25D168624();
  (*(v26 + 8))(v15, v13);
  return (*v20)(v18, v22);
}

uint64_t OSEligibilityInputStatus.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C48, &qword_25D168E10);
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = &v43[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C50, &qword_25D168E18);
  v6 = *(v5 - 8);
  v53 = v5;
  v54 = v6;
  MEMORY[0x28223BE20](v5);
  v57 = &v43[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C58, &qword_25D168E20);
  v9 = *(v8 - 8);
  v51 = v8;
  v52 = v9;
  MEMORY[0x28223BE20](v8);
  v61 = &v43[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C60, &qword_25D168E28);
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x28223BE20](v11);
  v60 = &v43[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C68, &qword_25D168E30);
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v43[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C70, &qword_25D168E38);
  v46 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v43[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C78, &qword_25D168E40);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v43[-v21];
  v23 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_25D160054();
  v24 = v62;
  sub_25D168714();
  if (!v24)
  {
    v45 = v16;
    v25 = v15;
    v27 = v60;
    v26 = v61;
    v62 = v20;
    v28 = v22;
    v29 = sub_25D168614();
    if (*(v29 + 16) != 1 || (v30 = *(v29 + 32), v30 == 6))
    {
      v33 = sub_25D168564();
      swift_allocError();
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27AA8, &qword_25D168C70);
      *v35 = &type metadata for OSEligibilityInputStatus;
      sub_25D1685D4();
      sub_25D168554();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
      swift_willThrow();
      (*(v62 + 8))(v28, v19);
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = *(v29 + 32);
      if (v30 > 2)
      {
        if (v30 == 3)
        {
          v39 = v59;
          v67 = 3;
          sub_25D160150();
          sub_25D1685C4();
          v40 = v62;
          (*(v52 + 8))(v26, v51);
          (*(v40 + 8))(v22, v19);
          swift_unknownObjectRelease();
          v36 = v39;
        }

        else
        {
          v36 = v59;
          v37 = v62;
          if (v30 == 4)
          {
            v68 = 4;
            sub_25D1600FC();
            v38 = v57;
            sub_25D1685C4();
            (*(v54 + 8))(v38, v53);
          }

          else
          {
            v69 = 5;
            sub_25D1600A8();
            v41 = v58;
            sub_25D1685C4();
            (*(v55 + 8))(v41, v56);
          }

          (*(v37 + 8))(v22, v19);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        if (v30)
        {
          if (v30 == 1)
          {
            v65 = 1;
            sub_25D1601F8();
            v31 = v25;
            sub_25D1685C4();
            v32 = v62;
            (*(v47 + 8))(v31, v48);
          }

          else
          {
            v66 = 2;
            sub_25D1601A4();
            sub_25D1685C4();
            v32 = v62;
            (*(v49 + 8))(v27, v50);
          }
        }

        else
        {
          v64 = 0;
          sub_25D16024C();
          sub_25D1685C4();
          (*(v46 + 8))(v18, v45);
          v32 = v62;
        }

        (*(v32 + 8))(v22, v19);
        swift_unknownObjectRelease();
        v36 = v59;
      }

      *v36 = v44;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v63);
}

uint64_t sub_25D15A2FC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = MEMORY[0x25F892C70](a1);
  if (v5)
  {
    v6 = result;
    v7 = v5;
    v8 = *a3;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v8;
    if ((result & 1) == 0)
    {
      result = sub_25D15E158(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
      *a3 = result;
    }

    v10 = *(v8 + 16);
    v9 = *(v8 + 24);
    if (v10 >= v9 >> 1)
    {
      result = sub_25D15E158((v9 > 1), v10 + 1, 1, v8);
      v8 = result;
      *a3 = result;
    }

    *(v8 + 16) = v10 + 1;
    v11 = v8 + 16 * v10;
    *(v11 + 32) = v6;
    *(v11 + 40) = v7;
  }

  return result;
}

xpc_object_t sub_25D15A3B8(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  v5 = MEMORY[0x25F8933D0]();
  result = sub_25D168364();
  if (v5 != result)
  {
    return result;
  }

  if (v4 > 2)
  {
    if (v4 == 3)
    {
      result = xpc_array_create(0, 0);
      v9 = result;
      v16 = *(v3 + 16);
      if (!v16)
      {
LABEL_18:
        v15 = "OS_ELIGIBILITY_CONTEXT_COUNTRY_POLICY";
        goto LABEL_24;
      }

      v17 = 0;
      v18 = v3 + 40;
      while (v17 < *(v3 + 16))
      {
        ++v17;
        v19 = sub_25D168464();

        v20 = xpc_string_create((v19 + 32));

        xpc_array_append_value(v9, v20);

        result = swift_unknownObjectRelease();
        v18 += 16;
        if (v16 == v17)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
      if (v4 != 4)
      {
        v7 = sub_25D168464();
        v8 = "OS_ELIGIBILITY_CONTEXT_ELIGIBLE_SIRI_LANGUAGE";
        goto LABEL_28;
      }

      result = xpc_array_create(0, 0);
      v9 = result;
      v10 = *(v3 + 16);
      if (!v10)
      {
LABEL_12:
        v15 = "OS_ELIGIBILITY_CONTEXT_PRECISE_LOCATION";
        goto LABEL_24;
      }

      v11 = 0;
      v12 = v3 + 40;
      while (v11 < *(v3 + 16))
      {
        ++v11;
        v13 = sub_25D168464();

        v14 = xpc_string_create((v13 + 32));

        xpc_array_append_value(v9, v14);

        result = swift_unknownObjectRelease();
        v12 += 16;
        if (v10 == v11)
        {
          goto LABEL_12;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
    return result;
  }

  if (!v4)
  {
    v7 = sub_25D168464();
    v8 = "OS_ELIGIBILITY_CONTEXT_COUNTRY_BILLING";
    goto LABEL_28;
  }

  if (v4 == 1)
  {
    v7 = sub_25D168464();
    v8 = "OS_ELIGIBILITY_CONTEXT_FORCE_REASON";
LABEL_28:
    xpc_dictionary_set_string(a1, v8, (v7 + 32));
  }

  result = xpc_array_create(0, 0);
  v9 = result;
  v21 = *(v3 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = v3 + 40;
    while (v22 < *(v3 + 16))
    {
      ++v22;
      v24 = sub_25D168464();

      v25 = xpc_string_create((v24 + 32));

      xpc_array_append_value(v9, v25);

      result = swift_unknownObjectRelease();
      v23 += 16;
      if (v21 == v22)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_33;
  }

LABEL_23:
  v15 = "OS_ELIGIBILITY_CONTEXT_ELIGIBLE_DEVICE_LANGUAGES";
LABEL_24:
  xpc_dictionary_set_value(a1, v15, v9);

  return swift_unknownObjectRelease();
}

uint64_t sub_25D15A6BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_25D168664() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_25D15A74C()
{
  v1 = *v0;
  v2 = 0x427972746E756F63;
  v3 = 0x507972746E756F63;
  v4 = 0x4C65736963657270;
  if (v1 != 4)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6165526563726F66;
  if (v1 != 1)
  {
    v5 = 0xD000000000000017;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25D15A838@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25D165698(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25D15A860(uint64_t a1)
{
  v2 = sub_25D161E24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D15A89C(uint64_t a1)
{
  v2 = sub_25D161E24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D15A8EC(uint64_t a1)
{
  v2 = sub_25D162064();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D15A928(uint64_t a1)
{
  v2 = sub_25D162064();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D15A964(uint64_t a1)
{
  v2 = sub_25D161F68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D15A9A0(uint64_t a1)
{
  v2 = sub_25D161F68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D15A9DC(uint64_t a1)
{
  v2 = sub_25D161FBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D15AA18(uint64_t a1)
{
  v2 = sub_25D161FBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D15AA54(uint64_t a1)
{
  v2 = sub_25D161E78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D15AA90(uint64_t a1)
{
  v2 = sub_25D161E78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D15AB00(uint64_t a1)
{
  v2 = sub_25D162010();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D15AB3C(uint64_t a1)
{
  v2 = sub_25D162010();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D15AB78()
{
  sub_25D1686D4();
  MEMORY[0x25F892F60](0);
  return sub_25D168704();
}

uint64_t sub_25D15ABBC(uint64_t a1)
{
  sub_25D1686D4();
  MEMORY[0x25F892F60](0);
  return sub_25D168704();
}

uint64_t sub_25D15ABFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25D168664();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25D15AC7C(uint64_t a1)
{
  v2 = sub_25D161ECC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D15ACB8(uint64_t a1)
{
  v2 = sub_25D161ECC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OSEligibilityContext.encode(to:)(void *a1)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C80, &qword_25D168E48);
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v36 = &v24 - v3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C88, &qword_25D168E50);
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v35 = &v24 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C90, &qword_25D168E58);
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x28223BE20](v5);
  v32 = &v24 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C98, &qword_25D168E60);
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x28223BE20](v7);
  v29 = &v24 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27CA0, &qword_25D168E68);
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x28223BE20](v9);
  v26 = &v24 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27CA8, &qword_25D168E70);
  v25 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27CB0, &qword_25D168E78);
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  v17 = *v1;
  v41 = v1[1];
  v42 = v17;
  v18 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25D161E24();
  sub_25D168724();
  if (v18 > 2)
  {
    if (v18 == 3)
    {
      LOBYTE(v44) = 3;
      sub_25D161F68();
      v20 = v32;
      v19 = v16;
      sub_25D168624();
      v44 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27CB8, &qword_25D168E80);
      sub_25D1620B8(&qword_27FC27CC0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
      v21 = v34;
      sub_25D168654();
      v22 = v33;
    }

    else
    {
      v19 = v16;
      if (v18 == 4)
      {
        LOBYTE(v44) = 4;
        sub_25D161ECC();
        v20 = v35;
        sub_25D168624();
        v44 = v42;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27CB8, &qword_25D168E80);
        sub_25D1620B8(&qword_27FC27CC0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
        v21 = v39;
        sub_25D168654();
        v22 = v37;
      }

      else
      {
        LOBYTE(v44) = 5;
        sub_25D161E78();
        v20 = v36;
        sub_25D168624();
        v21 = v40;
        sub_25D168644();
        v22 = v38;
      }
    }
  }

  else
  {
    if (!v18)
    {
      LOBYTE(v44) = 0;
      sub_25D162064();
      sub_25D168624();
      sub_25D168644();
      (*(v25 + 8))(v13, v11);
      return (*(v43 + 8))(v16, v14);
    }

    v19 = v16;
    if (v18 == 1)
    {
      LOBYTE(v44) = 1;
      sub_25D162010();
      v20 = v26;
      sub_25D168624();
      v21 = v28;
      sub_25D168644();
      v22 = v27;
    }

    else
    {
      LOBYTE(v44) = 2;
      sub_25D161FBC();
      v20 = v29;
      sub_25D168624();
      v44 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27CB8, &qword_25D168E80);
      sub_25D1620B8(&qword_27FC27CC0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
      v21 = v31;
      sub_25D168654();
      v22 = v30;
    }
  }

  (*(v22 + 8))(v20, v21);
  return (*(v43 + 8))(v19, v14);
}

uint64_t OSEligibilityContext.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  if (*(v1 + 16) > 2u)
  {
    if (v3 == 3)
    {
      MEMORY[0x25F892F60](3);
      result = MEMORY[0x25F892F60](*(v2 + 16));
      v7 = *(v2 + 16);
      if (v7)
      {
        v8 = v2 + 40;
        do
        {

          sub_25D168474();

          v8 += 16;
          --v7;
        }

        while (v7);
      }
    }

    else
    {
      if (v3 != 4)
      {
        v3 = 5;
        goto LABEL_20;
      }

      MEMORY[0x25F892F60](4);
      result = MEMORY[0x25F892F60](*(v2 + 16));
      v5 = *(v2 + 16);
      if (v5)
      {
        v6 = v2 + 40;
        do
        {

          sub_25D168474();

          v6 += 16;
          --v5;
        }

        while (v5);
      }
    }
  }

  else
  {
    if (!*(v1 + 16))
    {
LABEL_20:
      MEMORY[0x25F892F60](v3);

      return sub_25D168474();
    }

    if (v3 == 1)
    {
      v3 = 1;
      goto LABEL_20;
    }

    MEMORY[0x25F892F60](2);
    result = MEMORY[0x25F892F60](*(v2 + 16));
    v9 = *(v2 + 16);
    if (v9)
    {
      v10 = v2 + 40;
      do
      {

        sub_25D168474();

        v10 += 16;
        --v9;
      }

      while (v9);
    }
  }

  return result;
}

uint64_t OSEligibilityContext.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_25D1686D4();
  OSEligibilityContext.hash(into:)(v3);
  return sub_25D168704();
}

uint64_t OSEligibilityContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27CC8, &qword_25D168E88);
  v75 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v81 = &v62[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27CD0, &qword_25D168E90);
  v5 = *(v4 - 8);
  v76 = v4;
  v77 = v5;
  MEMORY[0x28223BE20](v4);
  v80 = &v62[-v6];
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27CD8, &qword_25D168E98);
  v74 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v78 = &v62[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27CE0, &qword_25D168EA0);
  v72 = *(v8 - 8);
  v73 = v8;
  MEMORY[0x28223BE20](v8);
  v79 = &v62[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27CE8, &qword_25D168EA8);
  v11 = *(v10 - 8);
  v68 = v10;
  v69 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v62[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27CF0, &qword_25D168EB0);
  v67 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v62[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27CF8, &qword_25D168EB8);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v62[-v19];
  v21 = a1[3];
  v84 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_25D161E24();
  v22 = v83;
  sub_25D168714();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v84);
  }

  v64 = v14;
  v65 = 0;
  v24 = v79;
  v23 = v80;
  v66 = v18;
  v25 = v81;
  v26 = v82;
  v83 = v20;
  v27 = sub_25D168614();
  if (*(v27 + 16) != 1 || (v28 = *(v27 + 32), v28 == 6))
  {
    v31 = sub_25D168564();
    swift_allocError();
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27AA8, &qword_25D168C70);
    *v33 = &type metadata for OSEligibilityContext;
    v34 = v83;
    sub_25D1685D4();
    sub_25D168554();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
    swift_willThrow();
    (*(v66 + 8))(v34, v17);
LABEL_10:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v84);
  }

  if (*(v27 + 32) <= 2u)
  {
    if (*(v27 + 32))
    {
      v78 = v27;
      if (v28 == 1)
      {
        LOBYTE(v85) = 1;
        sub_25D162010();
        v29 = v83;
        v30 = v65;
        sub_25D1685C4();
        if (v30)
        {
LABEL_8:
          (*(v66 + 8))(v29, v17);
          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_0Tm(v84);
        }

        v63 = 1;
        v52 = v17;
        v53 = v68;
        v54 = sub_25D1685F4();
        v65 = 0;
        v57 = v54;
        v59 = v60;
        (*(v69 + 8))(v13, v53);
        (*(v66 + 8))(v83, v52);
        goto LABEL_30;
      }

      v63 = v28;
      LOBYTE(v85) = 2;
      sub_25D161FBC();
      v37 = v83;
      v43 = v65;
      sub_25D1685C4();
      if (!v43)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27CB8, &qword_25D168E80);
        sub_25D1620B8(&qword_27FC27D00, MEMORY[0x277D83808], MEMORY[0x277D83978]);
        v44 = v73;
        sub_25D168604();
        v45 = v66;
        v65 = 0;
        (*(v72 + 8))(v24, v44);
        (*(v45 + 8))(v37, v17);
        goto LABEL_29;
      }

      goto LABEL_20;
    }

    LOBYTE(v85) = 0;
    sub_25D162064();
    v40 = v16;
    v29 = v83;
    v41 = v65;
    sub_25D1685C4();
    if (v41)
    {
      goto LABEL_8;
    }

    v63 = 0;
    v47 = v17;
    v48 = v64;
    v49 = sub_25D1685F4();
    v65 = 0;
    v57 = v49;
    v59 = v58;
    (*(v67 + 8))(v40, v48);
    (*(v66 + 8))(v83, v47);
LABEL_30:
    swift_unknownObjectRelease();
    goto LABEL_31;
  }

  v63 = *(v27 + 32);
  if (v28 == 3)
  {
    LOBYTE(v85) = 3;
    sub_25D161F68();
    v37 = v83;
    v42 = v65;
    sub_25D1685C4();
    if (!v42)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27CB8, &qword_25D168E80);
      sub_25D1620B8(&qword_27FC27D00, MEMORY[0x277D83808], MEMORY[0x277D83978]);
      v50 = v71;
      v51 = v78;
      sub_25D168604();
      v65 = 0;
      (*(v74 + 8))(v51, v50);
      (*(v66 + 8))(v37, v17);
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  v78 = v27;
  v36 = v28 == 4;
  v37 = v83;
  if (!v36)
  {
    LOBYTE(v85) = 5;
    sub_25D161E78();
    v46 = v65;
    sub_25D1685C4();
    if (!v46)
    {
      v80 = v17;
      v55 = v70;
      v56 = sub_25D1685F4();
      v65 = 0;
      v57 = v56;
      v59 = v61;
      (*(v75 + 8))(v25, v55);
      (*(v66 + 8))(v37, v80);
      goto LABEL_30;
    }

LABEL_20:
    (*(v66 + 8))(v37, v17);
    goto LABEL_10;
  }

  LOBYTE(v85) = 4;
  sub_25D161ECC();
  v38 = v65;
  sub_25D1685C4();
  if (v38)
  {
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27CB8, &qword_25D168E80);
  sub_25D1620B8(&qword_27FC27D00, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  v39 = v76;
  sub_25D168604();
  v65 = 0;
  (*(v77 + 8))(v23, v39);
  (*(v66 + 8))(v37, v17);
LABEL_29:
  swift_unknownObjectRelease();
  v59 = 0;
  v57 = v85;
LABEL_31:
  *v26 = v57;
  *(v26 + 8) = v59;
  *(v26 + 16) = v63;
  return __swift_destroy_boxed_opaque_existential_0Tm(v84);
}

uint64_t sub_25D15C2D4()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_25D1686D4();
  OSEligibilityContext.hash(into:)(v3);
  return sub_25D168704();
}

uint64_t sub_25D15C32C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_25D1686D4();
  OSEligibilityContext.hash(into:)(v4);
  return sub_25D168704();
}

uint64_t OSEligibilityResult.statusByInput.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t OSEligibilityResult.context.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_25D15C510@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v37[1] = *MEMORY[0x277D85DE8];
  v6 = sub_25D168394();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37[0] = 0;
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  LOBYTE(v33) = v10;
  v13 = OSEligibilityDomain.bridgedDomainType.getter();
  v14 = (*(v12 + 16))(v13, &v35, &v34, v37, &v36, v11, v12);
  if (v14)
  {
    v15 = v14;
LABEL_14:
    v22 = v14 == 0;
    sub_25D162124();
    swift_allocError();
    *v23 = v15;
    *(v23 + 8) = v22;
    swift_willThrow();
    goto LABEL_15;
  }

  v31 = v7;
  v32 = v6;
  v15 = v35;
  v16 = v35 - 1;
  if ((v35 - 1) > 3)
  {
    goto LABEL_14;
  }

  v29[1] = sub_25D1539B8(MEMORY[0x277D84F90]);
  if (v34 == 2)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  if (v34 == 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  v30 = v18;
  if (v37[0])
  {
    v19 = swift_unknownObjectRetain_n();
    v20 = MEMORY[0x25F8933D0](v19);
    if (v20 == sub_25D168364())
    {
      v33 = sub_25D1539B8(MEMORY[0x277D84F90]);
      swift_unknownObjectRetain();
      v25 = sub_25D1683B4();
      MEMORY[0x28223BE20](v25);
      v29[-2] = &v33;
      sub_25D168384();
      swift_unknownObjectRelease();
      (*(v31 + 8))(v9, v32);

      swift_unknownObjectRelease();
      v21 = v33;
      goto LABEL_17;
    }

    swift_unknownObjectRelease_n();
  }

  v21 = sub_25D1539B8(MEMORY[0x277D84F90]);

LABEL_17:
  v26 = swift_unknownObjectRetain();
  v27 = sub_25D160AB4(v26);
  swift_unknownObjectRelease();
  v28 = MEMORY[0x277D84FA0];
  if (v27)
  {
    v28 = v27;
  }

  *a3 = v10;
  *(a3 + 1) = v16;
  *(a3 + 2) = v30;
  *(a3 + 8) = v21;
  *(a3 + 16) = v28;
LABEL_15:
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

_BYTE *sub_25D15C858@<X0>(_BYTE *result@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  *a6 = *result;
  *(a6 + 1) = v6;
  *(a6 + 2) = v7;
  *(a6 + 8) = a4;
  *(a6 + 16) = a5;
  return result;
}

xpc_object_t sub_25D15C878()
{
  v1 = *(v0 + 8);
  empty = xpc_dictionary_create_empty();
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = )
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(v1 + 56) + (v10 | (v9 << 6)));
    OSEligibilityInput.bridgedInputKey.getter();
    v12 = qword_25D16B9D0[v11];
    v13 = sub_25D168464();

    xpc_dictionary_set_uint64(empty, (v13 + 32), v12);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return empty;
    }

    v5 = *(v1 + 64 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

xpc_object_t sub_25D15C9AC()
{
  v1 = *(v0 + 16);
  empty = xpc_dictionary_create_empty();
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 56);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = sub_25D1621C8(v12, v13, v14))
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(v1 + 48) + 24 * (v10 | (v9 << 6));
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    sub_25D162178(*v11, v13, v14);
    sub_25D15A3B8(empty);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return empty;
    }

    v5 = *(v1 + 56 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25D15CADC(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + v12);
    v14 = v13 == 6;
    if (v13 != 6)
    {
      result = sub_25D152E20(*(*(v3 + 48) + v12));
      if ((v15 & 1) != 0 && *(*(a2 + 56) + result) == v13)
      {
        continue;
      }
    }

    return v14;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25D15CBFC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v49 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v55 = a2 + 56;
  v51 = result;
  v50 = v7;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v8 = __clz(__rbit64(v6));
    v53 = (v6 - 1) & v6;
LABEL_13:
    v11 = *(result + 48) + 24 * (v8 | (v3 << 6));
    v12 = *(v11 + 8);
    v14 = *(v11 + 16);
    v58 = *v11;
    v13 = v58;
    v59 = v12;
    v60 = v14;
    sub_25D1686D4();
    v56 = v12;
    sub_25D162178(v13, v12, v14);
    OSEligibilityContext.hash(into:)(v57);
    v15 = sub_25D168704();
    v16 = -1 << *(v2 + 32);
    v17 = v15 & ~v16;
    if (((*(v55 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
LABEL_102:
      sub_25D1621C8(v13, v56, v14);
      return 0;
    }

    v54 = ~v16;
    while (1)
    {
      v18 = *(v2 + 48) + 24 * v17;
      v20 = *v18;
      v19 = *(v18 + 8);
      v21 = *(v18 + 16);
      if (v21 > 2)
      {
        break;
      }

      v22 = v56;
      v23 = v14;
      if (*(v18 + 16))
      {
        if (v21 != 1)
        {
          if (v14 == 2)
          {
            v37 = *(v20 + 16);
            if (v37 == *(v13 + 16))
            {
              if (v37)
              {
                if (v20 != v13)
                {
                  v38 = (v20 + 40);
                  v39 = (v13 + 40);
                  do
                  {
                    v40 = *(v38 - 1) == *(v39 - 1) && *v38 == *v39;
                    if (!v40 && (sub_25D168664() & 1) == 0)
                    {
                      v23 = 2;
                      goto LABEL_65;
                    }

                    v38 += 2;
                    v39 += 2;
                    --v37;
                  }

                  while (v37);
                  sub_25D162178(v20, v19, 2u);
                  v43 = v20;
                  v44 = v19;
                  v45 = 2;
LABEL_85:
                  sub_25D1621C8(v43, v44, v45);
                  v2 = a2;
                  goto LABEL_86;
                }

                v46 = v13;
              }

              else
              {
              }

              v47 = v19;
              v48 = 2;
              goto LABEL_100;
            }

            v23 = 2;
          }

          goto LABEL_16;
        }

        if (v14 != 1)
        {
          goto LABEL_16;
        }

        if (v20 == v13 && v19 == v56)
        {

          v46 = v13;
          v47 = v56;
          v48 = 1;
          goto LABEL_100;
        }

        v25 = sub_25D168664();
        sub_25D162178(v13, v56, 1u);
        sub_25D162178(v20, v19, 1u);
        sub_25D1621C8(v20, v19, 1u);
        v26 = v13;
        v27 = v56;
        v28 = 1;
      }

      else
      {
        if (v14)
        {
          goto LABEL_16;
        }

        if (v20 == v13 && v19 == v56)
        {

          v46 = v13;
          v47 = v56;
          v48 = 0;
          goto LABEL_100;
        }

        v25 = sub_25D168664();
        sub_25D162178(v13, v56, 0);
        sub_25D162178(v20, v19, 0);
        sub_25D1621C8(v20, v19, 0);
        v26 = v13;
        v27 = v56;
        v28 = 0;
      }

LABEL_77:
      sub_25D1621C8(v26, v27, v28);
      if (v25)
      {
        goto LABEL_86;
      }

LABEL_17:
      v17 = (v17 + 1) & v54;
      if (((*(v55 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_102;
      }
    }

    v22 = v56;
    v23 = v14;
    if (v21 == 3)
    {
      if (v14 == 3)
      {
        v33 = *(v20 + 16);
        if (v33 == *(v13 + 16))
        {
          if (v33)
          {
            if (v20 != v13)
            {
              v34 = (v20 + 40);
              v35 = (v13 + 40);
              while (1)
              {
                v36 = *(v34 - 1) == *(v35 - 1) && *v34 == *v35;
                if (!v36 && (sub_25D168664() & 1) == 0)
                {
                  break;
                }

                v34 += 2;
                v35 += 2;
                if (!--v33)
                {
                  sub_25D162178(v20, v19, 3u);
                  v43 = v20;
                  v44 = v19;
                  v45 = 3;
                  goto LABEL_85;
                }
              }

              v23 = 3;
LABEL_65:
              v2 = a2;
              v22 = v56;
              goto LABEL_16;
            }

            v46 = v13;
          }

          else
          {
          }

          v47 = v19;
          v48 = 3;
          goto LABEL_100;
        }

        v23 = 3;
      }

LABEL_16:
      sub_25D162178(v13, v22, v23);
      sub_25D162178(v20, v19, v21);
      sub_25D1621C8(v20, v19, v21);
      sub_25D1621C8(v13, v22, v23);
      goto LABEL_17;
    }

    if (v21 == 4)
    {
      if (v14 == 4)
      {
        v29 = *(v20 + 16);
        if (v29 == *(v13 + 16))
        {
          if (v29)
          {
            if (v20 != v13)
            {
              v30 = (v20 + 40);
              v31 = (v13 + 40);
              do
              {
                v32 = *(v30 - 1) == *(v31 - 1) && *v30 == *v31;
                if (!v32 && (sub_25D168664() & 1) == 0)
                {
                  v23 = 4;
                  goto LABEL_65;
                }

                v30 += 2;
                v31 += 2;
                --v29;
              }

              while (v29);
              sub_25D162178(v20, v19, 4u);
              v43 = v20;
              v44 = v19;
              v45 = 4;
              goto LABEL_85;
            }

            v46 = v13;
          }

          else
          {
          }

          v47 = v19;
          v48 = 4;
          goto LABEL_100;
        }

        v23 = 4;
      }

      goto LABEL_16;
    }

    if (v14 != 5)
    {
      goto LABEL_16;
    }

    if (v20 != v13 || v19 != v56)
    {
      v25 = sub_25D168664();
      sub_25D162178(v13, v56, 5u);
      sub_25D162178(v20, v19, 5u);
      sub_25D1621C8(v20, v19, 5u);
      v26 = v13;
      v27 = v56;
      v28 = 5;
      goto LABEL_77;
    }

    v46 = v13;
    v47 = v56;
    v48 = 5;
LABEL_100:
    sub_25D1621C8(v46, v47, v48);
LABEL_86:
    sub_25D1621C8(v13, v56, v21);
    v7 = v50;
    result = v51;
    v6 = v53;
  }

  while (v53);
LABEL_8:
  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v49 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v53 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_25D15D250()
{
  v1 = *v0;
  v2 = 0x6E69616D6F64;
  v3 = 0x6F53726577736E61;
  v4 = 0x7942737574617473;
  if (v1 != 3)
  {
    v4 = 0x747865746E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x726577736E61;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25D15D2F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25D1658C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25D15D32C(uint64_t a1)
{
  v2 = sub_25D162218();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D15D368(uint64_t a1)
{
  v2 = sub_25D162218();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OSEligibilityResult.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27D10, &qword_25D168EC0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = *v1;
  v18 = v1[1];
  v16 = v1[2];
  v9 = *(v1 + 1);
  v14 = *(v1 + 2);
  v15 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25D162218();
  sub_25D168724();
  LOBYTE(v17) = v8;
  v19 = 0;
  sub_25D16226C();
  sub_25D168654();
  if (!v2)
  {
    v10 = v16;
    v11 = v14;
    v12 = v15;
    LOBYTE(v17) = v18;
    v19 = 1;
    sub_25D1622C0();
    sub_25D168654();
    LOBYTE(v17) = v10;
    v19 = 2;
    sub_25D162314();
    sub_25D168634();
    v17 = v12;
    v19 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27D30, &qword_25D168EC8);
    sub_25D162560(&qword_27FC27D38, sub_25D162368, sub_25D1623BC, MEMORY[0x277D83508]);
    sub_25D168654();
    v17 = v11;
    v19 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27D50, &qword_25D168ED0);
    sub_25D162698(&qword_27FC27D58, sub_25D162410, MEMORY[0x277D83B50]);
    sub_25D168654();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t OSEligibilityResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27D68, &qword_25D168ED8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v17 = sub_25D1539B8(MEMORY[0x277D84F90]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25D162218();
  sub_25D168714();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v9 = v6;
    v20 = 0;
    sub_25D162464();
    sub_25D168604();
    v10 = v18;
    v20 = 1;
    sub_25D1624B8();
    sub_25D168604();
    v12 = v18;
    v20 = 2;
    sub_25D16250C();
    sub_25D1685E4();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27D30, &qword_25D168EC8);
    v20 = 3;
    sub_25D162560(&qword_27FC27D88, sub_25D1625F0, sub_25D162644, MEMORY[0x277D83528]);
    sub_25D168604();
    v16 = v12;

    v13 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27D50, &qword_25D168ED0);
    v20 = 4;
    sub_25D162698(&qword_27FC27DA0, sub_25D162710, MEMORY[0x277D83B70]);
    sub_25D168604();
    (*(v9 + 8))(v8, v5);
    v14 = v18;
    *a2 = v10;
    *(a2 + 1) = v16;
    *(a2 + 2) = v19;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14;

    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }
}

void *sub_25D15DAB8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_25D15DAD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27A40, &unk_25D16B9C0);
  result = sub_25D1685A4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + v19);
      sub_25D1686D4();
      MEMORY[0x25F892F60](v20);
      result = sub_25D168704();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_25D15DD54(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25D168504() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_25D1686D4();
      MEMORY[0x25F892F60](v9);
      result = sub_25D168704();
      v10 = result & v7;
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
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + v3);
        v16 = (v14 + v6);
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

unint64_t sub_25D15DEE8(char a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_25D152E20(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_25D15E00C();
    result = v17;
    goto LABEL_8;
  }

  sub_25D15DAD4(v14, a3 & 1);
  result = sub_25D152E20(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_25D168684();
  __break(1u);
  return result;
}

void *sub_25D15E00C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27A40, &unk_25D16B9C0);
  v2 = *v0;
  v3 = sub_25D168594();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

char *sub_25D15E158(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27DE8, &qword_25D16B9B8);
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

uint64_t sub_25D15E264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v54[9] = a2;
  v54[10] = a3;
  v55 = a4;
  sub_25D1686D4();
  OSEligibilityContext.hash(into:)(v54);
  v10 = sub_25D168704();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  v53 = v9 + 56;
  if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_70:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54[0] = *v51;
    sub_25D162178(a2, a3, a4);
    sub_25D15EACC(a2, a3, a4, v12, isUniquelyReferenced_nonNull_native);
    *v51 = v54[0];
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    return 1;
  }

  v52 = ~v11;
  v50 = a1;
  v49 = v9;
  while (1)
  {
    v14 = *(v9 + 48) + 24 * v12;
    v16 = *v14;
    v15 = *(v14 + 8);
    v17 = *(v14 + 16);
    if (v17 > 2)
    {
      break;
    }

    if (*(v14 + 16))
    {
      v13 = a4;
      if (v17 != 1)
      {
        if (a4 == 2)
        {
          v31 = *(v16 + 16);
          if (v31 == *(a2 + 16))
          {
            if (v31)
            {
              if (v16 != a2)
              {
                v32 = (v16 + 40);
                v33 = (a2 + 40);
                do
                {
                  v34 = *(v32 - 1) == *(v33 - 1) && *v32 == *v33;
                  if (!v34 && (sub_25D168664() & 1) == 0)
                  {
                    v13 = 2;
                    goto LABEL_53;
                  }

                  v32 += 2;
                  v33 += 2;
                  --v31;
                }

                while (v31);
                sub_25D162178(v16, v15, 2u);
                v39 = v16;
                v40 = v15;
                v41 = 2;
LABEL_74:
                sub_25D1621C8(v39, v40, v41);
                v9 = v49;
                a1 = v50;
                goto LABEL_75;
              }

              v46 = a2;
            }

            else
            {
            }

            v47 = v15;
            v48 = 2;
            goto LABEL_88;
          }

          v13 = 2;
        }

        goto LABEL_4;
      }

      if (a4 != 1)
      {
        goto LABEL_4;
      }

      if (v16 == a2 && v15 == a3)
      {

        v46 = a2;
        v47 = a3;
        v48 = 1;
        goto LABEL_88;
      }

      v19 = sub_25D168664();
      sub_25D162178(a2, a3, 1u);
      sub_25D162178(v16, v15, 1u);
      sub_25D1621C8(v16, v15, 1u);
      v20 = a2;
      v21 = a3;
      v22 = 1;
    }

    else
    {
      v13 = a4;
      if (a4)
      {
        goto LABEL_4;
      }

      if (v16 == a2 && v15 == a3)
      {

        v46 = a2;
        v47 = a3;
        v48 = 0;
        goto LABEL_88;
      }

      v19 = sub_25D168664();
      sub_25D162178(a2, a3, 0);
      sub_25D162178(v16, v15, 0);
      sub_25D1621C8(v16, v15, 0);
      v20 = a2;
      v21 = a3;
      v22 = 0;
    }

LABEL_65:
    sub_25D1621C8(v20, v21, v22);
    if (v19)
    {
      goto LABEL_75;
    }

LABEL_5:
    v12 = (v12 + 1) & v52;
    if (((*(v53 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_70;
    }
  }

  v13 = a4;
  if (v17 == 3)
  {
    if (a4 == 3)
    {
      v27 = *(v16 + 16);
      if (v27 == *(a2 + 16))
      {
        if (v27)
        {
          if (v16 != a2)
          {
            v28 = (v16 + 40);
            v29 = (a2 + 40);
            while (1)
            {
              v30 = *(v28 - 1) == *(v29 - 1) && *v28 == *v29;
              if (!v30 && (sub_25D168664() & 1) == 0)
              {
                break;
              }

              v28 += 2;
              v29 += 2;
              if (!--v27)
              {
                sub_25D162178(v16, v15, 3u);
                v39 = v16;
                v40 = v15;
                v41 = 3;
                goto LABEL_74;
              }
            }

            v13 = 3;
LABEL_53:
            v9 = v49;
            a1 = v50;
            goto LABEL_4;
          }

          v46 = a2;
        }

        else
        {
        }

        v47 = v15;
        v48 = 3;
        goto LABEL_88;
      }

      v13 = 3;
    }

LABEL_4:
    sub_25D162178(a2, a3, v13);
    sub_25D162178(v16, v15, v17);
    sub_25D1621C8(v16, v15, v17);
    sub_25D1621C8(a2, a3, v13);
    goto LABEL_5;
  }

  if (v17 == 4)
  {
    if (a4 == 4)
    {
      v23 = *(v16 + 16);
      if (v23 == *(a2 + 16))
      {
        if (v23)
        {
          if (v16 != a2)
          {
            v24 = (v16 + 40);
            v25 = (a2 + 40);
            do
            {
              v26 = *(v24 - 1) == *(v25 - 1) && *v24 == *v25;
              if (!v26 && (sub_25D168664() & 1) == 0)
              {
                v13 = 4;
                goto LABEL_53;
              }

              v24 += 2;
              v25 += 2;
              --v23;
            }

            while (v23);
            sub_25D162178(v16, v15, 4u);
            v39 = v16;
            v40 = v15;
            v41 = 4;
            goto LABEL_74;
          }

          v46 = a2;
        }

        else
        {
        }

        v47 = v15;
        v48 = 4;
        goto LABEL_88;
      }

      v13 = 4;
    }

    goto LABEL_4;
  }

  if (a4 != 5)
  {
    goto LABEL_4;
  }

  if (v16 != a2 || v15 != a3)
  {
    v19 = sub_25D168664();
    sub_25D162178(a2, a3, 5u);
    sub_25D162178(v16, v15, 5u);
    sub_25D1621C8(v16, v15, 5u);
    v20 = a2;
    v21 = a3;
    v22 = 5;
    goto LABEL_65;
  }

  v46 = a2;
  v47 = a3;
  v48 = 5;
LABEL_88:
  sub_25D1621C8(v46, v47, v48);
LABEL_75:
  sub_25D1621C8(a2, a3, v17);
  v42 = *(v9 + 48) + 24 * v12;
  v43 = *v42;
  v44 = *(v42 + 8);
  *a1 = *v42;
  *(a1 + 8) = v44;
  v45 = *(v42 + 16);
  *(a1 + 16) = v45;
  sub_25D162178(v43, v44, v45);
  return 0;
}

uint64_t sub_25D15E854(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27DE0, &qword_25D16B9B0);
  result = sub_25D168524();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
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
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v32 = *v18;
      v33 = v20;
      v34 = v21;
      sub_25D1686D4();
      OSEligibilityContext.hash(into:)(v31);
      result = sub_25D168704();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v30;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25D15EACC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v7 = v5;
  v9 = a3;
  v11 = result;
  v12 = *(*v5 + 16);
  v13 = *(*v5 + 24);
  if (v13 <= v12 || (a5 & 1) == 0)
  {
    if (a5)
    {
      sub_25D15E854(v12 + 1);
    }

    else
    {
      if (v13 > v12)
      {
        result = sub_25D15EFEC();
        goto LABEL_77;
      }

      sub_25D15F154(v12 + 1);
    }

    v14 = *v5;
    v48 = v11;
    v49 = a2;
    v50 = v9;
    sub_25D1686D4();
    OSEligibilityContext.hash(into:)(v47);
    result = sub_25D168704();
    v15 = -1 << *(v14 + 32);
    a4 = result & ~v15;
    v46 = v14 + 56;
    if ((*(v14 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
    {
      v45 = ~v15;
      v44 = v5;
      v43 = v14;
      do
      {
        v16 = *(v14 + 48) + 24 * a4;
        v18 = *v16;
        v17 = *(v16 + 8);
        v6 = *(v16 + 16);
        if (v6 > 2)
        {
          v19 = v9;
          if (v6 == 3)
          {
            if (v9 != 3)
            {
              goto LABEL_11;
            }

            v29 = *(v18 + 16);
            if (v29 != *(v11 + 16))
            {
              v19 = 3;
              goto LABEL_11;
            }

            if (!v29)
            {
              goto LABEL_82;
            }

            if (v18 == v11)
            {
              goto LABEL_81;
            }

            v30 = (v18 + 40);
            v31 = (v11 + 40);
            while (1)
            {
              v32 = *(v30 - 1) == *(v31 - 1) && *v30 == *v31;
              if (!v32 && (sub_25D168664() & 1) == 0)
              {
                break;
              }

              v30 += 2;
              v31 += 2;
              if (!--v29)
              {
                goto LABEL_82;
              }
            }

            v19 = 3;
            goto LABEL_10;
          }

          if (v6 == 4)
          {
            if (v9 == 4)
            {
              v24 = *(v18 + 16);
              if (v24 == *(v11 + 16))
              {
                if (!v24)
                {
                  goto LABEL_82;
                }

                if (v18 == v11)
                {
                  goto LABEL_81;
                }

                v25 = (v18 + 40);
                v26 = (v11 + 40);
                while (1)
                {
                  v27 = *(v25 - 1) == *(v26 - 1) && *v25 == *v26;
                  if (!v27 && (sub_25D168664() & 1) == 0)
                  {
                    break;
                  }

                  v25 += 2;
                  v26 += 2;
                  if (!--v24)
                  {
                    goto LABEL_82;
                  }
                }

                v19 = 4;
                goto LABEL_10;
              }

              v19 = 4;
            }

LABEL_11:
            sub_25D162178(v18, v17, v6);
            sub_25D162178(v11, a2, v19);
            sub_25D1621C8(v18, v17, v6);
            result = sub_25D1621C8(v11, a2, v19);
            goto LABEL_12;
          }

          if (v9 != 5)
          {
            goto LABEL_11;
          }

          if (v18 == v11 && v17 == a2)
          {
            goto LABEL_80;
          }

          LOBYTE(v6) = sub_25D168664();
          sub_25D162178(v18, v17, 5u);
          sub_25D162178(v11, a2, 5u);
          sub_25D1621C8(v18, v17, 5u);
          v21 = v11;
          v22 = a2;
          v23 = 5;
        }

        else if (*(v16 + 16))
        {
          v19 = v9;
          if (v6 != 1)
          {
            if (v9 != 2)
            {
              goto LABEL_11;
            }

            v33 = *(v18 + 16);
            if (v33 != *(v11 + 16))
            {
              v19 = 2;
              goto LABEL_11;
            }

            if (!v33)
            {
              goto LABEL_82;
            }

            if (v18 == v11)
            {
              goto LABEL_81;
            }

            v34 = (v18 + 40);
            v35 = (v11 + 40);
            while (1)
            {
              v36 = *(v34 - 1) == *(v35 - 1) && *v34 == *v35;
              if (!v36 && (sub_25D168664() & 1) == 0)
              {
                break;
              }

              v34 += 2;
              v35 += 2;
              if (!--v33)
              {
                goto LABEL_82;
              }
            }

            v19 = 2;
LABEL_10:
            v14 = v43;
            v7 = v44;
            goto LABEL_11;
          }

          if (v9 != 1)
          {
            goto LABEL_11;
          }

          if (v18 == v11 && v17 == a2)
          {
            goto LABEL_80;
          }

          LOBYTE(v6) = sub_25D168664();
          sub_25D162178(v18, v17, 1u);
          sub_25D162178(v11, a2, 1u);
          sub_25D1621C8(v18, v17, 1u);
          v21 = v11;
          v22 = a2;
          v23 = 1;
        }

        else
        {
          v19 = v9;
          if (v9)
          {
            goto LABEL_11;
          }

          if (v18 == v11 && v17 == a2)
          {
            goto LABEL_80;
          }

          LOBYTE(v6) = sub_25D168664();
          sub_25D162178(v18, v17, 0);
          sub_25D162178(v11, a2, 0);
          sub_25D1621C8(v18, v17, 0);
          v21 = v11;
          v22 = a2;
          v23 = 0;
        }

        result = sub_25D1621C8(v21, v22, v23);
        if (v6)
        {
          goto LABEL_83;
        }

LABEL_12:
        a4 = (a4 + 1) & v45;
      }

      while (((*(v46 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
    }
  }

LABEL_77:
  v38 = *v7;
  *(*v7 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v39 = *(v38 + 48) + 24 * a4;
  *v39 = v11;
  *(v39 + 8) = a2;
  *(v39 + 16) = v9;
  v40 = *(v38 + 16);
  v41 = __OFADD__(v40, 1);
  v42 = v40 + 1;
  if (v41)
  {
    __break(1u);
LABEL_80:
    v17 = a2;
LABEL_81:
    v18 = v11;
LABEL_82:
    sub_25D162178(v18, v17, v6);
    sub_25D162178(v11, a2, v6);
    sub_25D1621C8(v18, v17, v6);
    sub_25D1621C8(v11, a2, v6);
LABEL_83:
    result = sub_25D168674();
    __break(1u);
  }

  else
  {
    *(v38 + 16) = v42;
  }

  return result;
}

void *sub_25D15EFEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27DE0, &qword_25D16B9B0);
  v2 = *v0;
  v3 = sub_25D168514();
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v22;
        result = sub_25D162178(v19, v20, v22);
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

uint64_t sub_25D15F154(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27DE0, &qword_25D16B9B0);
  result = sub_25D168524();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v31 = *v18;
      v19 = v31;
      v32 = v20;
      v33 = v21;
      sub_25D1686D4();
      sub_25D162178(v19, v20, v21);
      OSEligibilityContext.hash(into:)(v30);
      result = sub_25D168704();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v29;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_25D15F3AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7641746559746F6ELL && a2 == 0xEF656C62616C6961;
  if (v4 || (sub_25D168664() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6967696C45746F6ELL && a2 == 0xEB00000000656C62 || (sub_25D168664() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656279616DLL && a2 == 0xE500000000000000 || (sub_25D168664() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C626967696C65 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_25D168664();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t _s13OSEligibility0A6ResultV2eeoiySbAC_ACtFZ_0(char *a1, char *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *(a1 + 1);
  v11 = *(a1 + 2);
  v5 = a2[1];
  v6 = a2[2];
  v8 = *(a2 + 1);
  v7 = *(a2 + 2);
  sub_25D165A74();
  sub_25D1684A4();
  sub_25D1684A4();
  v9 = 0;
  if (v13 == v12 && v2 == v5)
  {
    if (v3 == 2)
    {
      if (v6 != 2)
      {
        goto LABEL_10;
      }
    }

    else if (v6 == 2 || ((v6 ^ v3) & 1) != 0)
    {
      goto LABEL_10;
    }

    if ((sub_25D15CADC(v4, v8) & 1) == 0)
    {
LABEL_10:
      v9 = 0;
      return v9 & 1;
    }

    v9 = sub_25D15CBFC(v11, v7);
  }

  return v9 & 1;
}

uint64_t _s13OSEligibility0A7ContextO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (v7 != 3)
      {
        goto LABEL_26;
      }

      v11 = sub_25D15A6BC(*a1, *a2);
      sub_25D162178(v6, v5, 3u);
      sub_25D162178(v3, v2, 3u);
      sub_25D1621C8(v3, v2, 3u);
      v12 = v6;
      v13 = v5;
      v14 = 3;
    }

    else if (v4 == 4)
    {
      if (v7 != 4)
      {
        goto LABEL_26;
      }

      v11 = sub_25D15A6BC(*a1, *a2);
      sub_25D162178(v6, v5, 4u);
      sub_25D162178(v3, v2, 4u);
      sub_25D1621C8(v3, v2, 4u);
      v12 = v6;
      v13 = v5;
      v14 = 4;
    }

    else
    {
      if (v7 != 5)
      {
        goto LABEL_26;
      }

      if (v3 == v6 && v2 == v5)
      {
        sub_25D162178(*a1, v2, 5u);
        sub_25D162178(v3, v2, 5u);
        sub_25D1621C8(v3, v2, 5u);
        v8 = v3;
        v9 = v2;
        v10 = 5;
        goto LABEL_31;
      }

      v11 = sub_25D168664();
      sub_25D162178(v6, v5, 5u);
      sub_25D162178(v3, v2, 5u);
      sub_25D1621C8(v3, v2, 5u);
      v12 = v6;
      v13 = v5;
      v14 = 5;
    }

LABEL_29:
    sub_25D1621C8(v12, v13, v14);
    return v11 & 1;
  }

  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_26;
    }

    v15 = *a1;
    if (v3 == v6 && v2 == v5)
    {
      sub_25D162178(v15, v2, 0);
      sub_25D162178(v3, v2, 0);
      sub_25D1621C8(v3, v2, 0);
      v8 = v3;
      v9 = v2;
      v10 = 0;
      goto LABEL_31;
    }

    v11 = sub_25D168664();
    sub_25D162178(v6, v5, 0);
    sub_25D162178(v3, v2, 0);
    sub_25D1621C8(v3, v2, 0);
    v12 = v6;
    v13 = v5;
    v14 = 0;
    goto LABEL_29;
  }

  if (v4 != 1)
  {
    if (v7 != 2)
    {
      goto LABEL_26;
    }

    v11 = sub_25D15A6BC(*a1, *a2);
    sub_25D162178(v6, v5, 2u);
    sub_25D162178(v3, v2, 2u);
    sub_25D1621C8(v3, v2, 2u);
    v12 = v6;
    v13 = v5;
    v14 = 2;
    goto LABEL_29;
  }

  if (v7 != 1)
  {
LABEL_26:
    sub_25D162178(*a2, a2[1], v7);
    sub_25D162178(v3, v2, v4);
    sub_25D1621C8(v3, v2, v4);
    sub_25D1621C8(v6, v5, v7);
    return 0;
  }

  if (v3 != v6 || v2 != v5)
  {
    v11 = sub_25D168664();
    sub_25D162178(v6, v5, 1u);
    sub_25D162178(v3, v2, 1u);
    sub_25D1621C8(v3, v2, 1u);
    v12 = v6;
    v13 = v5;
    v14 = 1;
    goto LABEL_29;
  }

  sub_25D162178(*a1, v2, 1u);
  sub_25D162178(v3, v2, 1u);
  sub_25D1621C8(v3, v2, 1u);
  v8 = v3;
  v9 = v2;
  v10 = 1;
LABEL_31:
  sub_25D1621C8(v8, v9, v10);
  return 1;
}

unint64_t sub_25D15FA18()
{
  result = qword_27FC27E80;
  if (!qword_27FC27E80)
  {
    result = swift_getWitnessTable(aM_1, &type metadata for OSEligibilityInput.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27E80);
  }

  return result;
}

unint64_t sub_25D15FA6C()
{
  result = qword_27FC27E88;
  if (!qword_27FC27E88)
  {
    result = swift_getWitnessTable(byte_25D16B68C, &type metadata for OSEligibilityInput.PhoneAppRemovalCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27E88);
  }

  return result;
}

unint64_t sub_25D15FAC0()
{
  result = qword_27FC27E90;
  if (!qword_27FC27E90)
  {
    result = swift_getWitnessTable(byte_25D16B63C, &type metadata for OSEligibilityInput.ShiptoLocationCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27E90);
  }

  return result;
}

unint64_t sub_25D15FB14()
{
  result = qword_27FC27E98;
  if (!qword_27FC27E98)
  {
    result = swift_getWitnessTable("=", &type metadata for OSEligibilityInput.PreciseLocationCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27E98);
  }

  return result;
}

unint64_t sub_25D15FB68()
{
  result = qword_27FC27EA0;
  if (!qword_27FC27EA0)
  {
    result = swift_getWitnessTable(byte_25D16B59C, &type metadata for OSEligibilityInput.BirthdateCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27EA0);
  }

  return result;
}

unint64_t sub_25D15FBBC()
{
  result = qword_27FC27EA8;
  if (!qword_27FC27EA8)
  {
    result = swift_getWitnessTable(byte_25D16B54C, &type metadata for OSEligibilityInput.InitialSetupLocationCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27EA8);
  }

  return result;
}

unint64_t sub_25D15FC10()
{
  result = qword_27FC27EB0;
  if (!qword_27FC27EB0)
  {
    result = swift_getWitnessTable(asc_25D16B4FC, &type metadata for OSEligibilityInput.DeviceAndSiriLanguageMatchCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27EB0);
  }

  return result;
}

unint64_t sub_25D15FC64()
{
  result = qword_27FC27EB8;
  if (!qword_27FC27EB8)
  {
    result = swift_getWitnessTable(asc_25D16B4AC, &type metadata for OSEligibilityInput.SharediPadCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27EB8);
  }

  return result;
}

unint64_t sub_25D15FCB8()
{
  result = qword_27FC27EC0;
  if (!qword_27FC27EC0)
  {
    result = swift_getWitnessTable(byte_25D16B45C, &type metadata for OSEligibilityInput.ExternalBootDriveCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27EC0);
  }

  return result;
}

unint64_t sub_25D15FD0C()
{
  result = qword_27FC27EC8;
  if (!qword_27FC27EC8)
  {
    result = swift_getWitnessTable(byte_25D16B40C, &type metadata for OSEligibilityInput.SiriLanguageCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27EC8);
  }

  return result;
}

unint64_t sub_25D15FD60()
{
  result = qword_27FC27ED0;
  if (!qword_27FC27ED0)
  {
    result = swift_getWitnessTable(aM_3, &type metadata for OSEligibilityInput.GreymatterOnQueueCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27ED0);
  }

  return result;
}

unint64_t sub_25D15FDB4()
{
  result = qword_27FC27ED8;
  if (!qword_27FC27ED8)
  {
    result = swift_getWitnessTable(byte_25D16B36C, &type metadata for OSEligibilityInput.GenerativeModelSystemCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27ED8);
  }

  return result;
}

unint64_t sub_25D15FE08()
{
  result = qword_27FC27EE0;
  if (!qword_27FC27EE0)
  {
    result = swift_getWitnessTable(asc_25D16B31C, &type metadata for OSEligibilityInput.DeviceLanguageCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27EE0);
  }

  return result;
}

unint64_t sub_25D15FE5C()
{
  result = qword_27FC27EE8;
  if (!qword_27FC27EE8)
  {
    result = swift_getWitnessTable(asc_25D16B2CC, &type metadata for OSEligibilityInput.DeviceRegionCodeCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27EE8);
  }

  return result;
}

unint64_t sub_25D15FEB0()
{
  result = qword_27FC27EF0;
  if (!qword_27FC27EF0)
  {
    result = swift_getWitnessTable(byte_25D16B27C, &type metadata for OSEligibilityInput.ChinaCellularCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27EF0);
  }

  return result;
}

unint64_t sub_25D15FF04()
{
  result = qword_27FC27EF8;
  if (!qword_27FC27EF8)
  {
    result = swift_getWitnessTable(byte_25D16B22C, &type metadata for OSEligibilityInput.DeviceLocaleCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27EF8);
  }

  return result;
}

unint64_t sub_25D15FF58()
{
  result = qword_27FC27F00;
  if (!qword_27FC27F00)
  {
    result = swift_getWitnessTable(aM_2, &type metadata for OSEligibilityInput.DeviceClassCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27F00);
  }

  return result;
}

unint64_t sub_25D15FFAC()
{
  result = qword_27FC27F08;
  if (!qword_27FC27F08)
  {
    result = swift_getWitnessTable(byte_25D16B18C, &type metadata for OSEligibilityInput.CountryBillingCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27F08);
  }

  return result;
}

unint64_t sub_25D160000()
{
  result = qword_27FC27F10;
  if (!qword_27FC27F10)
  {
    result = swift_getWitnessTable(byte_25D16B13C, &type metadata for OSEligibilityInput.CountryLocationCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27F10);
  }

  return result;
}

unint64_t sub_25D160054()
{
  result = qword_27FC27F18;
  if (!qword_27FC27F18)
  {
    result = swift_getWitnessTable(asc_25D16B0EC, &type metadata for OSEligibilityInputStatus.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27F18);
  }

  return result;
}

unint64_t sub_25D1600A8()
{
  result = qword_27FC27F20;
  if (!qword_27FC27F20)
  {
    result = swift_getWitnessTable(byte_25D16B09C, &type metadata for OSEligibilityInputStatus.NoAccountCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27F20);
  }

  return result;
}

unint64_t sub_25D1600FC()
{
  result = qword_27FC27F28;
  if (!qword_27FC27F28)
  {
    result = swift_getWitnessTable(byte_25D16B04C, &type metadata for OSEligibilityInputStatus.TokenExpiredCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27F28);
  }

  return result;
}

unint64_t sub_25D160150()
{
  result = qword_27FC27F30;
  if (!qword_27FC27F30)
  {
    result = swift_getWitnessTable(asc_25D16AFFC, &type metadata for OSEligibilityInputStatus.UnspecifiedErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27F30);
  }

  return result;
}

unint64_t sub_25D1601A4()
{
  result = qword_27FC27F38;
  if (!qword_27FC27F38)
  {
    result = swift_getWitnessTable(asc_25D16AFAC, &type metadata for OSEligibilityInputStatus.EligibleCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27F38);
  }

  return result;
}

unint64_t sub_25D1601F8()
{
  result = qword_27FC27F40;
  if (!qword_27FC27F40)
  {
    result = swift_getWitnessTable(byte_25D16AF5C, &type metadata for OSEligibilityInputStatus.NotEligibleCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27F40);
  }

  return result;
}

unint64_t sub_25D16024C()
{
  result = qword_27FC27F48;
  if (!qword_27FC27F48)
  {
    result = swift_getWitnessTable(byte_25D16AF0C, &type metadata for OSEligibilityInputStatus.NotSetCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27F48);
  }

  return result;
}

uint64_t sub_25D1602CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C7972746E756F63 && a2 == 0xEF6E6F697461636FLL;
  if (v4 || (sub_25D168664() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x427972746E756F63 && a2 == 0xEE00676E696C6C69 || (sub_25D168664() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C43656369766564 && a2 == 0xEB00000000737361 || (sub_25D168664() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4C656369766564 && a2 == 0xEC000000656C6163 || (sub_25D168664() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6543616E696863 && a2 == 0xED000072616C756CLL || (sub_25D168664() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025D16D850 == a2 || (sub_25D168664() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x614C656369766564 && a2 == 0xEE0065676175676ELL || (sub_25D168664() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025D16D870 == a2 || (sub_25D168664() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025D16D890 == a2 || (sub_25D168664() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x676E614C69726973 && a2 == 0xEC00000065676175 || (sub_25D168664() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025D16D8B0 == a2 || (sub_25D168664() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x5069646572616873 && a2 == 0xEA00000000006461 || (sub_25D168664() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000025D16D8D0 == a2 || (sub_25D168664() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000014 && 0x800000025D16D8F0 == a2 || (sub_25D168664() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x7461646874726962 && a2 == 0xE900000000000065 || (sub_25D168664() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x4C65736963657270 && a2 == 0xEF6E6F697461636FLL || (sub_25D168664() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6F4C6F7470696873 && a2 == 0xEE006E6F69746163 || (sub_25D168664() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x707041656E6F6870 && a2 == 0xEF6C61766F6D6552)
  {

    return 17;
  }

  else
  {
    v6 = sub_25D168664();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

uint64_t sub_25D1608A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746553746F6ELL && a2 == 0xE600000000000000;
  if (v4 || (sub_25D168664() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6967696C45746F6ELL && a2 == 0xEB00000000656C62 || (sub_25D168664() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C626967696C65 && a2 == 0xE800000000000000 || (sub_25D168664() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025D16D910 == a2 || (sub_25D168664() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7078456E656B6F74 && a2 == 0xEC00000064657269 || (sub_25D168664() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E756F6363416F6ELL && a2 == 0xE900000000000074)
  {

    return 5;
  }

  else
  {
    v6 = sub_25D168664();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_25D160AB4(void *a1)
{
  v2 = sub_25D1683E4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v135 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v148 = &v135 - v8;
  MEMORY[0x28223BE20](v7);
  v149 = &v135 - v9;
  v10 = sub_25D168394();
  v11 = MEMORY[0x28223BE20](v10);
  v14 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v145 = v6;
  v146 = v12;
  v147 = v11;
  v15 = swift_unknownObjectRetain();
  v16 = MEMORY[0x25F8933D0](v15);
  if (v16 != sub_25D168364())
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v141 = v2;
  swift_unknownObjectRetain();
  sub_25D1683B4();
  v159 = MEMORY[0x277D84FA0];
  v18 = sub_25D168374();
  v19 = v18;
  v155 = *(v18 + 16);
  if (!v155)
  {
LABEL_143:
    swift_unknownObjectRelease();

    (*(v146 + 8))(v14, v147);
    return v159;
  }

  v144 = a1;
  v20 = 0;
  v142 = 0;
  v154 = v18 + 32;
  v21 = 0x800000025D16D820;
  v150 = 0x800000025D16D7F0;
  v143 = 0x800000025D16D7B0;
  v139 = 0x800000025D16D780;
  v138 = 0x800000025D16D750;
  v137 = 0x800000025D16D720;
  v140 = (v3 + 8);
  v151 = v18;
  v152 = v14;
  v153 = 0x800000025D16D820;
LABEL_11:
  if (v20 >= *(v19 + 16))
  {
    __break(1u);
    goto LABEL_145;
  }

  v25 = (v154 + 16 * v20);
  v26 = *v25;
  v27 = v25[1];
  v28 = *v25 == 0xD000000000000026 && v21 == v27;
  if (v28 || (sub_25D168664() & 1) != 0)
  {

    v29 = MEMORY[0x25F892C20](v26, v27);
    v31 = v30;

    if (!v31)
    {
      goto LABEL_10;
    }

    v32 = v20;
    v33 = v159;
    sub_25D1686D4();
    MEMORY[0x25F892F60](0);
    sub_25D168474();
    v34 = sub_25D168704();
    v14 = (v33 + 56);
    v35 = -1 << *(v33 + 32);
    v36 = v34 & ~v35;
    if ((*(v33 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
    {
      v37 = ~v35;
      do
      {
        v38 = *(v33 + 48) + 24 * v36;
        v40 = *v38;
        v39 = *(v38 + 8);
        v41 = *(v38 + 16);
        if (v41)
        {

          sub_25D162178(v40, v39, v41);
          sub_25D1621C8(v40, v39, v41);
          sub_25D1621C8(v29, v31, 0);
        }

        else
        {
          if (v40 == v29 && v39 == v31)
          {

            sub_25D1621C8(v29, v31, 0);
            v22 = v29;
            v23 = v31;
            v24 = 0;
            goto LABEL_8;
          }

          v43 = sub_25D168664();

          sub_25D162178(v40, v39, 0);
          sub_25D1621C8(v40, v39, 0);
          sub_25D1621C8(v29, v31, 0);
          if (v43)
          {
            goto LABEL_48;
          }
        }

        v36 = (v36 + 1) & v37;
      }

      while (((*&v14[(v36 >> 3) & 0xFFFFFFFFFFFFFF8] >> v36) & 1) != 0);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v156 = v33;
    v45 = *(v33 + 16);
    if (*(v33 + 24) <= v45)
    {
      v20 = v32;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25D15E854(v45 + 1);
      }

      else
      {
        sub_25D15F154(v45 + 1);
      }

      v33 = v156;
      sub_25D1686D4();
      MEMORY[0x25F892F60](0);
      sub_25D168474();
      v58 = sub_25D168704();
      v14 = (v33 + 56);
      v59 = -1 << *(v33 + 32);
      v36 = v58 & ~v59;
      if ((*(v33 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
      {
        v60 = ~v59;
        do
        {
          v61 = *(v33 + 48) + 24 * v36;
          v62 = *v61;
          v63 = *(v61 + 8);
          v64 = *(v61 + 16);
          if (v64)
          {
            sub_25D162178(*v61, *(v61 + 8), *(v61 + 16));

            sub_25D1621C8(v62, v63, v64);
            sub_25D1621C8(v29, v31, 0);
          }

          else
          {
            if (v62 == v29 && v63 == v31)
            {
              goto LABEL_149;
            }

            v66 = sub_25D168664();
            sub_25D162178(v62, v63, 0);

            sub_25D1621C8(v62, v63, 0);
            sub_25D1621C8(v29, v31, 0);
            if (v66)
            {
              goto LABEL_152;
            }
          }

          v36 = (v36 + 1) & v60;
        }

        while (((*&v14[(v36 >> 3) & 0xFFFFFFFFFFFFFF8] >> v36) & 1) != 0);
        v20 = v32;
      }
    }

    else
    {
      v20 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25D15EFEC();
        v33 = v156;
      }
    }

    v21 = v153;
    *(v33 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v36;
    v67 = *(v33 + 48) + 24 * v36;
    *v67 = v29;
    *(v67 + 8) = v31;
    *(v67 + 16) = 0;
    v68 = *(v33 + 16);
    v69 = __OFADD__(v68, 1);
    v70 = v68 + 1;
    if (!v69)
    {
LABEL_65:
      *(v33 + 16) = v70;
      v159 = v33;
      goto LABEL_66;
    }

LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  v46 = v26 == 0xD000000000000023 && v150 == v27;
  if (!v46 && (sub_25D168664() & 1) == 0)
  {
    if (v26 == 0xD000000000000030 && v143 == v27 || (sub_25D168664() & 1) != 0)
    {
      v73 = sub_25D168464();
      v74 = xpc_dictionary_get_array(v144, (v73 + 32));

      if (!v74)
      {
        goto LABEL_10;
      }

      swift_unknownObjectRetain();
      v75 = v149;
      sub_25D168404();
      v76 = sub_25D1683C4();
      v157[0] = sub_25D15E158(0, v76 & ~(v76 >> 63), 0, MEMORY[0x277D84F90]);
      MEMORY[0x28223BE20](v157[0]);
      *(&v135 - 2) = v75;
      *(&v135 - 1) = v157;
      v77 = v142;
      sub_25D1683D4();
      v142 = v77;
      v21 = v153;
      swift_unknownObjectRelease();
      v78 = v157[0];
      (*v140)(v75, v141);
      v79 = v78;
      v80 = 2;
    }

    else if (v26 == 0xD000000000000025 && v139 == v27 || (sub_25D168664() & 1) != 0)
    {
      v92 = sub_25D168464();
      v93 = xpc_dictionary_get_array(v144, (v92 + 32));

      if (!v93)
      {
        goto LABEL_10;
      }

      swift_unknownObjectRetain();
      v94 = v148;
      sub_25D168404();
      v95 = sub_25D1683C4();
      v157[0] = sub_25D15E158(0, v95 & ~(v95 >> 63), 0, MEMORY[0x277D84F90]);
      MEMORY[0x28223BE20](v157[0]);
      *(&v135 - 2) = v94;
      *(&v135 - 1) = v157;
      v96 = v142;
      sub_25D1683D4();
      v142 = v96;
      v21 = v153;
      swift_unknownObjectRelease();
      v97 = v157[0];
      (*v140)(v94, v141);
      v79 = v97;
      v80 = 3;
    }

    else
    {
      if ((v26 != 0xD000000000000027 || v138 != v27) && (sub_25D168664() & 1) == 0)
      {
        if ((v26 != 0xD00000000000002DLL || v137 != v27) && (sub_25D168664() & 1) == 0)
        {
          goto LABEL_147;
        }

        v29 = MEMORY[0x25F892C20](v26, v27);
        v31 = v104;

        if (!v31)
        {
          goto LABEL_10;
        }

        v105 = v159;
        sub_25D1686D4();
        MEMORY[0x25F892F60](5);
        sub_25D168474();
        v106 = sub_25D168704();
        v107 = v105 + 56;
        v108 = -1 << *(v105 + 32);
        v109 = v106 & ~v108;
        if ((*(v105 + 56 + ((v109 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v109))
        {
          v135 = ~v108;
          v136 = v105;
          do
          {
            v110 = *(v105 + 48) + 24 * v109;
            v112 = *v110;
            v111 = *(v110 + 8);
            v113 = *(v110 + 16);
            if (v113 < 5)
            {

              sub_25D162178(v112, v111, v113);
              sub_25D1621C8(v112, v111, v113);
              sub_25D1621C8(v29, v31, 5u);
            }

            else
            {
              if (v112 == v29 && v111 == v31)
              {

                sub_25D1621C8(v29, v31, 5u);
                sub_25D1621C8(v29, v31, 5u);
                goto LABEL_142;
              }

              v115 = sub_25D168664();

              sub_25D162178(v112, v111, 5u);
              sub_25D1621C8(v112, v111, 5u);
              sub_25D1621C8(v29, v31, 5u);
              if (v115)
              {

LABEL_142:
                v19 = v151;
                v14 = v152;
                goto LABEL_10;
              }
            }

            v109 = (v109 + 1) & v135;
            v105 = v136;
          }

          while (((*(v107 + ((v109 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v109) & 1) != 0);
        }

        v116 = swift_isUniquelyReferenced_nonNull_native();
        v156 = v105;
        v117 = *(v105 + 16);
        if (*(v105 + 24) <= v117)
        {
          if (v116)
          {
            sub_25D15E854(v117 + 1);
          }

          else
          {
            sub_25D15F154(v117 + 1);
          }

          v105 = v156;
          sub_25D1686D4();
          MEMORY[0x25F892F60](5);
          sub_25D168474();
          v118 = sub_25D168704();
          v119 = v105 + 56;
          v120 = -1 << *(v105 + 32);
          v109 = v118 & ~v120;
          if ((*(v105 + 56 + ((v109 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v109))
          {
            v136 = v20;
            v121 = ~v120;
            v122 = v105;
            do
            {
              v123 = *(v105 + 48) + 24 * v109;
              v124 = *v123;
              v125 = *(v123 + 8);
              v126 = *(v123 + 16);
              if (v126 < 5)
              {
                sub_25D162178(*v123, *(v123 + 8), *(v123 + 16));

                sub_25D1621C8(v124, v125, v126);
                sub_25D1621C8(v29, v31, 5u);
              }

              else
              {
                if (v124 == v29 && v125 == v31)
                {
                  goto LABEL_153;
                }

                v128 = sub_25D168664();
                sub_25D162178(v124, v125, 5u);

                sub_25D1621C8(v124, v125, 5u);
                sub_25D1621C8(v29, v31, 5u);
                if (v128)
                {
                  while (1)
                  {
LABEL_152:
                    sub_25D168674();
                    __break(1u);
LABEL_153:
                    sub_25D162178(v29, v31, 5u);

                    sub_25D1621C8(v29, v31, 5u);
                    v132 = v29;
                    v133 = v31;
                    v134 = 5;
LABEL_151:
                    sub_25D1621C8(v132, v133, v134);
                  }
                }
              }

              v109 = (v109 + 1) & v121;
              v105 = v122;
            }

            while (((*(v119 + ((v109 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v109) & 1) != 0);
            v20 = v136;
            v21 = v153;
          }
        }

        else if ((v116 & 1) == 0)
        {
          sub_25D15EFEC();
          v105 = v156;
        }

        *(v105 + ((v109 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v109;
        v129 = *(v105 + 48) + 24 * v109;
        *v129 = v29;
        *(v129 + 8) = v31;
        *(v129 + 16) = 5;
        v130 = *(v105 + 16);
        v69 = __OFADD__(v130, 1);
        v131 = v130 + 1;
        if (v69)
        {
          __break(1u);
LABEL_149:
          sub_25D162178(v29, v31, 0);

          sub_25D1621C8(v29, v31, 0);
          v132 = v29;
          v133 = v31;
          v134 = 0;
          goto LABEL_151;
        }

        *(v105 + 16) = v131;
        v159 = v105;
LABEL_66:
        v19 = v151;
        v14 = v152;
        goto LABEL_10;
      }

      v98 = sub_25D168464();
      v99 = xpc_dictionary_get_array(v144, (v98 + 32));

      if (!v99)
      {
        goto LABEL_10;
      }

      swift_unknownObjectRetain();
      v100 = v145;
      sub_25D168404();
      v101 = sub_25D1683C4();
      v157[0] = sub_25D15E158(0, v101 & ~(v101 >> 63), 0, MEMORY[0x277D84F90]);
      MEMORY[0x28223BE20](v157[0]);
      *(&v135 - 2) = v100;
      *(&v135 - 1) = v157;
      v102 = v142;
      sub_25D1683D4();
      v142 = v102;
      v21 = v153;
      swift_unknownObjectRelease();
      v103 = v157[0];
      (*v140)(v100, v141);
      v79 = v103;
      v80 = 4;
    }

    sub_25D15E264(v157, v79, 0, v80);
    sub_25D1621C8(v157[0], v157[1], v158);
    goto LABEL_10;
  }

  v29 = MEMORY[0x25F892C20](v26, v27);
  v31 = v47;

  if (!v31)
  {
    goto LABEL_10;
  }

  v32 = v20;
  v33 = v159;
  sub_25D1686D4();
  MEMORY[0x25F892F60](1);
  sub_25D168474();
  v48 = sub_25D168704();
  v14 = (v33 + 56);
  v49 = -1 << *(v33 + 32);
  v50 = v48 & ~v49;
  if ((*(v33 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50))
  {
    v51 = ~v49;
    do
    {
      v52 = *(v33 + 48) + 24 * v50;
      v54 = *v52;
      v53 = *(v52 + 8);
      v55 = *(v52 + 16);
      if (v55 == 1)
      {
        if (v54 == v29 && v53 == v31)
        {

          sub_25D1621C8(v29, v31, 1u);
          v22 = v29;
          v23 = v31;
          v24 = 1;
LABEL_8:
          sub_25D1621C8(v22, v23, v24);
LABEL_9:
          v19 = v151;
          v14 = v152;
          v20 = v32;
          v21 = v153;
LABEL_10:
          if (++v20 == v155)
          {
            goto LABEL_143;
          }

          goto LABEL_11;
        }

        v57 = sub_25D168664();

        sub_25D162178(v54, v53, 1u);
        sub_25D1621C8(v54, v53, 1u);
        sub_25D1621C8(v29, v31, 1u);
        if (v57)
        {
LABEL_48:

          goto LABEL_9;
        }
      }

      else
      {

        sub_25D162178(v54, v53, v55);
        sub_25D1621C8(v54, v53, v55);
        sub_25D1621C8(v29, v31, 1u);
      }

      v50 = (v50 + 1) & v51;
    }

    while (((*&v14[(v50 >> 3) & 0xFFFFFFFFFFFFFF8] >> v50) & 1) != 0);
  }

  v71 = swift_isUniquelyReferenced_nonNull_native();
  v156 = v33;
  v72 = *(v33 + 16);
  if (*(v33 + 24) <= v72)
  {
    v20 = v32;
    if (v71)
    {
      sub_25D15E854(v72 + 1);
    }

    else
    {
      sub_25D15F154(v72 + 1);
    }

    v33 = v156;
    sub_25D1686D4();
    MEMORY[0x25F892F60](1);
    sub_25D168474();
    v81 = sub_25D168704();
    v14 = (v33 + 56);
    v82 = -1 << *(v33 + 32);
    v50 = v81 & ~v82;
    if ((*(v33 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50))
    {
      v83 = ~v82;
      do
      {
        v84 = *(v33 + 48) + 24 * v50;
        v85 = *v84;
        v86 = *(v84 + 8);
        v87 = *(v84 + 16);
        if (v87 == 1)
        {
          if (v85 == v29 && v86 == v31)
          {
            sub_25D162178(v29, v31, 1u);

            sub_25D1621C8(v29, v31, 1u);
            v132 = v29;
            v133 = v31;
            v134 = 1;
            goto LABEL_151;
          }

          v89 = sub_25D168664();
          sub_25D162178(v85, v86, 1u);

          sub_25D1621C8(v85, v86, 1u);
          sub_25D1621C8(v29, v31, 1u);
          if (v89)
          {
            goto LABEL_152;
          }
        }

        else
        {
          sub_25D162178(*v84, *(v84 + 8), *(v84 + 16));

          sub_25D1621C8(v85, v86, v87);
          sub_25D1621C8(v29, v31, 1u);
        }

        v50 = (v50 + 1) & v83;
      }

      while (((*&v14[(v50 >> 3) & 0xFFFFFFFFFFFFFF8] >> v50) & 1) != 0);
      v20 = v32;
    }
  }

  else
  {
    v20 = v32;
    if ((v71 & 1) == 0)
    {
      sub_25D15EFEC();
      v33 = v156;
    }
  }

  v21 = v153;
  *(v33 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v50;
  v90 = *(v33 + 48) + 24 * v50;
  *v90 = v29;
  *(v90 + 8) = v31;
  *(v90 + 16) = 1;
  v91 = *(v33 + 16);
  v69 = __OFADD__(v91, 1);
  v70 = v91 + 1;
  if (!v69)
  {
    goto LABEL_65;
  }

LABEL_146:
  __break(1u);
LABEL_147:
  swift_unknownObjectRelease();

  (*(v146 + 8))(v14, v147);
  return 0;
}

unint64_t sub_25D161E24()
{
  result = qword_27FC27F50;
  if (!qword_27FC27F50)
  {
    result = swift_getWitnessTable("m\a\r%L.", &type metadata for OSEligibilityContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27F50);
  }

  return result;
}

unint64_t sub_25D161E78()
{
  result = qword_27FC27F58;
  if (!qword_27FC27F58)
  {
    result = swift_getWitnessTable(byte_25D16AE6C, &type metadata for OSEligibilityContext.EligibleSiriLanguageCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27F58);
  }

  return result;
}

unint64_t sub_25D161ECC()
{
  result = qword_27FC27F60;
  if (!qword_27FC27F60)
  {
    result = swift_getWitnessTable(asc_25D16AE1C, &type metadata for OSEligibilityContext.PreciseLocationCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27F60);
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

unint64_t sub_25D161F68()
{
  result = qword_27FC27F68;
  if (!qword_27FC27F68)
  {
    result = swift_getWitnessTable(asc_25D16ADCC, &type metadata for OSEligibilityContext.CountryPolicyCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27F68);
  }

  return result;
}

unint64_t sub_25D161FBC()
{
  result = qword_27FC27F70;
  if (!qword_27FC27F70)
  {
    result = swift_getWitnessTable(byte_25D16AD7C, &type metadata for OSEligibilityContext.EligibleDeviceLanguagesCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27F70);
  }

  return result;
}

unint64_t sub_25D162010()
{
  result = qword_27FC27F78;
  if (!qword_27FC27F78)
  {
    result = swift_getWitnessTable(byte_25D16AD2C, &type metadata for OSEligibilityContext.ForceReasonCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27F78);
  }

  return result;
}

unint64_t sub_25D162064()
{
  result = qword_27FC27F80;
  if (!qword_27FC27F80)
  {
    result = swift_getWitnessTable("M\t\r%P0", &type metadata for OSEligibilityContext.CountryBillingCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC27F80);
  }

  return result;
}

uint64_t sub_25D1620B8(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC27CB8, &qword_25D168E80);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25D162124()
{
  result = qword_27FC27D08;
  if (!qword_27FC27D08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OSEligibilityError, &type metadata for OSEligibilityError, v0, v1);
    atomic_store(result, &qword_27FC27D08);
  }

  return result;
}

uint64_t sub_25D162178(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return v3;
}

uint64_t sub_25D1621C8(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return v3;
}

unint64_t sub_25D162218()
{
  result = qword_27FC27F88[0];
  if (!qword_27FC27F88[0])
  {
    result = swift_getWitnessTable(byte_25D16AC8C, &type metadata for OSEligibilityResult.CodingKeys, v0, v1);
    atomic_store(result, qword_27FC27F88);
  }

  return result;
}

unint64_t sub_25D16226C()
{
  result = qword_27FC27D18;
  if (!qword_27FC27D18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OSEligibilityDomain, &type metadata for OSEligibilityDomain, v0, v1);
    atomic_store(result, &qword_27FC27D18);
  }

  return result;
}

unint64_t sub_25D1622C0()
{
  result = qword_27FC27D20;
  if (!qword_27FC27D20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OSEligibilityAnswer, &type metadata for OSEligibilityAnswer, v0, v1);
    atomic_store(result, &qword_27FC27D20);
  }

  return result;
}

unint64_t sub_25D162314()
{
  result = qword_27FC27D28;
  if (!qword_27FC27D28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OSEligibilityAnswerSource, &type metadata for OSEligibilityAnswerSource, v0, v1);
    atomic_store(result, &qword_27FC27D28);
  }

  return result;
}

unint64_t sub_25D162368()
{
  result = qword_27FC27D40;
  if (!qword_27FC27D40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OSEligibilityInput, &type metadata for OSEligibilityInput, v0, v1);
    atomic_store(result, &qword_27FC27D40);
  }

  return result;
}

unint64_t sub_25D1623BC()
{
  result = qword_27FC27D48;
  if (!qword_27FC27D48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OSEligibilityInputStatus, &type metadata for OSEligibilityInputStatus, v0, v1);
    atomic_store(result, &qword_27FC27D48);
  }

  return result;
}

unint64_t sub_25D162410()
{
  result = qword_27FC27D60;
  if (!qword_27FC27D60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OSEligibilityContext, &type metadata for OSEligibilityContext, v0, v1);
    atomic_store(result, &qword_27FC27D60);
  }

  return result;
}

unint64_t sub_25D162464()
{
  result = qword_27FC27D70;
  if (!qword_27FC27D70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OSEligibilityDomain, &type metadata for OSEligibilityDomain, v0, v1);
    atomic_store(result, &qword_27FC27D70);
  }

  return result;
}

unint64_t sub_25D1624B8()
{
  result = qword_27FC27D78;
  if (!qword_27FC27D78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OSEligibilityAnswer, &type metadata for OSEligibilityAnswer, v0, v1);
    atomic_store(result, &qword_27FC27D78);
  }

  return result;
}

unint64_t sub_25D16250C()
{
  result = qword_27FC27D80;
  if (!qword_27FC27D80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OSEligibilityAnswerSource, &type metadata for OSEligibilityAnswerSource, v0, v1);
    atomic_store(result, &qword_27FC27D80);
  }

  return result;
}

uint64_t sub_25D162560(unint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(void), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC27D30, &qword_25D168EC8);
    v10[0] = a2();
    v10[1] = a3();
    result = swift_getWitnessTable(a4, v9, v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25D1625F0()
{
  result = qword_27FC27D90;
  if (!qword_27FC27D90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OSEligibilityInput, &type metadata for OSEligibilityInput, v0, v1);
    atomic_store(result, &qword_27FC27D90);
  }

  return result;
}

unint64_t sub_25D162644()
{
  result = qword_27FC27D98;
  if (!qword_27FC27D98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OSEligibilityInputStatus, &type metadata for OSEligibilityInputStatus, v0, v1);
    atomic_store(result, &qword_27FC27D98);
  }

  return result;
}

uint64_t sub_25D162698(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC27D50, &qword_25D168ED0);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25D162710()
{
  result = qword_27FC27DA8;
  if (!qword_27FC27DA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OSEligibilityContext, &type metadata for OSEligibilityContext, v0, v1);
    atomic_store(result, &qword_27FC27DA8);
  }

  return result;
}

unint64_t sub_25D162768()
{
  result = qword_27FC27DB0;
  if (!qword_27FC27DB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OSEligibilityAnswer, &type metadata for OSEligibilityAnswer, v0, v1);
    atomic_store(result, &qword_27FC27DB0);
  }

  return result;
}

unint64_t sub_25D1627C0()
{
  result = qword_27FC27DB8;
  if (!qword_27FC27DB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OSEligibilityAnswerSource, &type metadata for OSEligibilityAnswerSource, v0, v1);
    atomic_store(result, &qword_27FC27DB8);
  }

  return result;
}

unint64_t sub_25D16281C()
{
  result = qword_27FC27DC0;
  if (!qword_27FC27DC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OSEligibilityInputStatus, &type metadata for OSEligibilityInputStatus, v0, v1);
    atomic_store(result, &qword_27FC27DC0);
  }

  return result;
}

unint64_t sub_25D162874()
{
  result = qword_27FC27DC8;
  if (!qword_27FC27DC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OSEligibilityContext, &type metadata for OSEligibilityContext, v0, v1);
    atomic_store(result, &qword_27FC27DC8);
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

uint64_t sub_25D162938(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25D162980(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25D1629F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_25D162A38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
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

uint64_t getEnumTagSinglePayload for OSEligibilityError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for OSEligibilityError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void type metadata accessor for os_eligibility_answer_t()
{
  if (!qword_27FC27DD0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FC27DD0);
    }
  }
}

uint64_t getEnumTagSinglePayload for OSEligibilityResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OSEligibilityResult.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s13OSEligibility20OSEligibilityContextO21ForceReasonCodingKeysOwet_0(unsigned int *a1, int a2)
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

_WORD *_s13OSEligibility20OSEligibilityContextO21ForceReasonCodingKeysOwst_0(_WORD *result, int a2, int a3)
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

uint64_t sub_25D162E40(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_25D162ED4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25D163008(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_25D16309C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25D163280(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppIdentity(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25D163404(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_25D163498(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25D16359C()
{
  result = qword_27FC28F90[0];
  if (!qword_27FC28F90[0])
  {
    result = swift_getWitnessTable(byte_25D169BFC, &type metadata for OSEligibilityAnswer.CodingKeys, v0, v1);
    atomic_store(result, qword_27FC28F90);
  }

  return result;
}

unint64_t sub_25D1635F4()
{
  result = qword_27FC293A0[0];
  if (!qword_27FC293A0[0])
  {
    result = swift_getWitnessTable(aU_0, &type metadata for OSEligibilityAnswerSource.CodingKeys, v0, v1);
    atomic_store(result, qword_27FC293A0);
  }

  return result;
}

unint64_t sub_25D16364C()
{
  result = qword_27FC2A7B0[0];
  if (!qword_27FC2A7B0[0])
  {
    result = swift_getWitnessTable(byte_25D16A3AC, &type metadata for OSEligibilityInput.CodingKeys, v0, v1);
    atomic_store(result, qword_27FC2A7B0);
  }

  return result;
}

unint64_t sub_25D1636A4()
{
  result = qword_27FC2AFC0[0];
  if (!qword_27FC2AFC0[0])
  {
    result = swift_getWitnessTable(byte_25D16A644, &type metadata for OSEligibilityInputStatus.CodingKeys, v0, v1);
    atomic_store(result, qword_27FC2AFC0);
  }

  return result;
}

unint64_t sub_25D1636FC()
{
  result = qword_27FC2B1D0[0];
  if (!qword_27FC2B1D0[0])
  {
    result = swift_getWitnessTable(byte_25D16A6FC, &type metadata for OSEligibilityContext.EligibleSiriLanguageCodingKeys, v0, v1);
    atomic_store(result, qword_27FC2B1D0);
  }

  return result;
}

unint64_t sub_25D163754()
{
  result = qword_27FC2B3E0[0];
  if (!qword_27FC2B3E0[0])
  {
    result = swift_getWitnessTable(byte_25D16A7B4, &type metadata for OSEligibilityContext.PreciseLocationCodingKeys, v0, v1);
    atomic_store(result, qword_27FC2B3E0);
  }

  return result;
}

unint64_t sub_25D1637AC()
{
  result = qword_27FC2B5F0;
  if (!qword_27FC2B5F0)
  {
    result = swift_getWitnessTable(asc_25D16A86C, &type metadata for OSEligibilityContext.CountryPolicyCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC2B5F0);
  }

  return result;
}

unint64_t sub_25D163804()
{
  result = qword_27FC2B800[0];
  if (!qword_27FC2B800[0])
  {
    result = swift_getWitnessTable(byte_25D16A924, &type metadata for OSEligibilityContext.EligibleDeviceLanguagesCodingKeys, v0, v1);
    atomic_store(result, qword_27FC2B800);
  }

  return result;
}

unint64_t sub_25D16385C()
{
  result = qword_27FC2BA10[0];
  if (!qword_27FC2BA10[0])
  {
    result = swift_getWitnessTable(byte_25D16A9DC, &type metadata for OSEligibilityContext.ForceReasonCodingKeys, v0, v1);
    atomic_store(result, qword_27FC2BA10);
  }

  return result;
}

unint64_t sub_25D1638B4()
{
  result = qword_27FC2BC20[0];
  if (!qword_27FC2BC20[0])
  {
    result = swift_getWitnessTable(a5, &type metadata for OSEligibilityContext.CountryBillingCodingKeys, v0, v1);
    atomic_store(result, qword_27FC2BC20);
  }

  return result;
}

unint64_t sub_25D16390C()
{
  result = qword_27FC2BE30[0];
  if (!qword_27FC2BE30[0])
  {
    result = swift_getWitnessTable(asc_25D16AB4C, &type metadata for OSEligibilityContext.CodingKeys, v0, v1);
    atomic_store(result, qword_27FC2BE30);
  }

  return result;
}

unint64_t sub_25D163964()
{
  result = qword_27FC2C040[0];
  if (!qword_27FC2C040[0])
  {
    result = swift_getWitnessTable(byte_25D16AC04, &type metadata for OSEligibilityResult.CodingKeys, v0, v1);
    atomic_store(result, qword_27FC2C040);
  }

  return result;
}

unint64_t sub_25D1639BC()
{
  result = qword_27FC2C250;
  if (!qword_27FC2C250)
  {
    result = swift_getWitnessTable(asc_25D16AB74, &type metadata for OSEligibilityResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FC2C250);
  }

  return result;
}

unint64_t sub_25D163A14()
{
  result = qword_27FC2C258[0];
  if (!qword_27FC2C258[0])
  {
    result = swift_getWitnessTable("=", &type metadata for OSEligibilityResult.CodingKeys, v0, v1);
    atomic_store(result, qword_27FC2C258);
  }

  return result;
}

unint64_t sub_25D163A6C()
{
  result = qword_27FC2C2E0;
  if (!qword_27FC2C2E0)
  {
    result = swift_getWitnessTable(byte_25D16AA04, &type metadata for OSEligibilityContext.CountryBillingCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC2C2E0);
  }

  return result;
}

unint64_t sub_25D163AC4()
{
  result = qword_27FC2C2E8[0];
  if (!qword_27FC2C2E8[0])
  {
    result = swift_getWitnessTable(byte_25D16AA2C, &type metadata for OSEligibilityContext.CountryBillingCodingKeys, v0, v1);
    atomic_store(result, qword_27FC2C2E8);
  }

  return result;
}

unint64_t sub_25D163B1C()
{
  result = qword_27FC2C370;
  if (!qword_27FC2C370)
  {
    result = swift_getWitnessTable(aU_1, &type metadata for OSEligibilityContext.ForceReasonCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC2C370);
  }

  return result;
}

unint64_t sub_25D163B74()
{
  result = qword_27FC2C378;
  if (!qword_27FC2C378)
  {
    result = swift_getWitnessTable(aE, &type metadata for OSEligibilityContext.ForceReasonCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC2C378);
  }

  return result;
}

unint64_t sub_25D163BCC()
{
  result = qword_27FC2C400;
  if (!qword_27FC2C400)
  {
    result = swift_getWitnessTable(asc_25D16A894, &type metadata for OSEligibilityContext.EligibleDeviceLanguagesCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC2C400);
  }

  return result;
}

unint64_t sub_25D163C24()
{
  result = qword_27FC2C408[0];
  if (!qword_27FC2C408[0])
  {
    result = swift_getWitnessTable(byte_25D16A8BC, &type metadata for OSEligibilityContext.EligibleDeviceLanguagesCodingKeys, v0, v1);
    atomic_store(result, qword_27FC2C408);
  }

  return result;
}

unint64_t sub_25D163C7C()
{
  result = qword_27FC2C490;
  if (!qword_27FC2C490)
  {
    result = swift_getWitnessTable(byte_25D16A7DC, &type metadata for OSEligibilityContext.CountryPolicyCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC2C490);
  }

  return result;
}

unint64_t sub_25D163CD4()
{
  result = qword_27FC2C498[0];
  if (!qword_27FC2C498[0])
  {
    result = swift_getWitnessTable(byte_25D16A804, &type metadata for OSEligibilityContext.CountryPolicyCodingKeys, v0, v1);
    atomic_store(result, qword_27FC2C498);
  }

  return result;
}

unint64_t sub_25D163D2C()
{
  result = qword_27FC2C520;
  if (!qword_27FC2C520)
  {
    result = swift_getWitnessTable(asc_25D16A724, &type metadata for OSEligibilityContext.PreciseLocationCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC2C520);
  }

  return result;
}

unint64_t sub_25D163D84()
{
  result = qword_27FC2C528[0];
  if (!qword_27FC2C528[0])
  {
    result = swift_getWitnessTable(byte_25D16A74C, &type metadata for OSEligibilityContext.PreciseLocationCodingKeys, v0, v1);
    atomic_store(result, qword_27FC2C528);
  }

  return result;
}

unint64_t sub_25D163DDC()
{
  result = qword_27FC2C5B0;
  if (!qword_27FC2C5B0)
  {
    result = swift_getWitnessTable("5\t\r%t7", &type metadata for OSEligibilityContext.EligibleSiriLanguageCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC2C5B0);
  }

  return result;
}

unint64_t sub_25D163E34()
{
  result = qword_27FC2C5B8[0];
  if (!qword_27FC2C5B8[0])
  {
    result = swift_getWitnessTable(aE_0, &type metadata for OSEligibilityContext.EligibleSiriLanguageCodingKeys, v0, v1);
    atomic_store(result, qword_27FC2C5B8);
  }

  return result;
}

unint64_t sub_25D163E8C()
{
  result = qword_27FC2C640;
  if (!qword_27FC2C640)
  {
    result = swift_getWitnessTable(byte_25D16AABC, &type metadata for OSEligibilityContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FC2C640);
  }

  return result;
}

unint64_t sub_25D163EE4()
{
  result = qword_27FC2C648[0];
  if (!qword_27FC2C648[0])
  {
    result = swift_getWitnessTable(byte_25D16AAE4, &type metadata for OSEligibilityContext.CodingKeys, v0, v1);
    atomic_store(result, qword_27FC2C648);
  }

  return result;
}

unint64_t sub_25D163F3C()
{
  result = qword_27FC2C6D0;
  if (!qword_27FC2C6D0)
  {
    result = swift_getWitnessTable(asc_25D16A564, &type metadata for OSEligibilityInputStatus.NotSetCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC2C6D0);
  }

  return result;
}

unint64_t sub_25D163F94()
{
  result = qword_27FC2C6D8[0];
  if (!qword_27FC2C6D8[0])
  {
    result = swift_getWitnessTable(aM, &type metadata for OSEligibilityInputStatus.NotSetCodingKeys, v0, v1);
    atomic_store(result, qword_27FC2C6D8);
  }

  return result;
}

unint64_t sub_25D163FEC()
{
  result = qword_27FC2C760;
  if (!qword_27FC2C760)
  {
    result = swift_getWitnessTable(byte_25D16A514, &type metadata for OSEligibilityInputStatus.NotEligibleCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC2C760);
  }

  return result;
}

unint64_t sub_25D164044()
{
  result = qword_27FC2C768[0];
  if (!qword_27FC2C768[0])
  {
    result = swift_getWitnessTable(byte_25D16A53C, &type metadata for OSEligibilityInputStatus.NotEligibleCodingKeys, v0, v1);
    atomic_store(result, qword_27FC2C768);
  }

  return result;
}

unint64_t sub_25D16409C()
{
  result = qword_27FC2C7F0;
  if (!qword_27FC2C7F0)
  {
    result = swift_getWitnessTable(byte_25D16A4C4, &type metadata for OSEligibilityInputStatus.EligibleCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC2C7F0);
  }

  return result;
}

unint64_t sub_25D1640F4()
{
  result = qword_27FC2C7F8[0];
  if (!qword_27FC2C7F8[0])
  {
    result = swift_getWitnessTable(byte_25D16A4EC, &type metadata for OSEligibilityInputStatus.EligibleCodingKeys, v0, v1);
    atomic_store(result, qword_27FC2C7F8);
  }

  return result;
}

unint64_t sub_25D16414C()
{
  result = qword_27FC2C880;
  if (!qword_27FC2C880)
  {
    result = swift_getWitnessTable("-\v\r% :", &type metadata for OSEligibilityInputStatus.UnspecifiedErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC2C880);
  }

  return result;
}

unint64_t sub_25D1641A4()
{
  result = qword_27FC2C888[0];
  if (!qword_27FC2C888[0])
  {
    result = swift_getWitnessTable(asc_25D16A49C, &type metadata for OSEligibilityInputStatus.UnspecifiedErrorCodingKeys, v0, v1);
    atomic_store(result, qword_27FC2C888);
  }

  return result;
}

unint64_t sub_25D1641FC()
{
  result = qword_27FC2C910;
  if (!qword_27FC2C910)
  {
    result = swift_getWitnessTable(asc_25D16A424, &type metadata for OSEligibilityInputStatus.TokenExpiredCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC2C910);
  }

  return result;
}

unint64_t sub_25D164254()
{
  result = qword_27FC2C918[0];
  if (!qword_27FC2C918[0])
  {
    result = swift_getWitnessTable(byte_25D16A44C, &type metadata for OSEligibilityInputStatus.TokenExpiredCodingKeys, v0, v1);
    atomic_store(result, qword_27FC2C918);
  }

  return result;
}

unint64_t sub_25D1642AC()
{
  result = qword_27FC2C9A0;
  if (!qword_27FC2C9A0)
  {
    result = swift_getWitnessTable(byte_25D16A3D4, &type metadata for OSEligibilityInputStatus.NoAccountCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC2C9A0);
  }

  return result;
}

unint64_t sub_25D164304()
{
  result = qword_27FC2C9A8[0];
  if (!qword_27FC2C9A8[0])
  {
    result = swift_getWitnessTable(byte_25D16A3FC, &type metadata for OSEligibilityInputStatus.NoAccountCodingKeys, v0, v1);
    atomic_store(result, qword_27FC2C9A8);
  }

  return result;
}

unint64_t sub_25D16435C()
{
  result = qword_27FC2CA30;
  if (!qword_27FC2CA30)
  {
    result = swift_getWitnessTable(byte_25D16A5B4, &type metadata for OSEligibilityInputStatus.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FC2CA30);
  }

  return result;
}

unint64_t sub_25D1643B4()
{
  result = qword_27FC2CA38[0];
  if (!qword_27FC2CA38[0])
  {
    result = swift_getWitnessTable(byte_25D16A5DC, &type metadata for OSEligibilityInputStatus.CodingKeys, v0, v1);
    atomic_store(result, qword_27FC2CA38);
  }

  return result;
}

unint64_t sub_25D16440C()
{
  result = qword_27FC2CAC0;
  if (!qword_27FC2CAC0)
  {
    result = swift_getWitnessTable(byte_25D16A2CC, &type metadata for OSEligibilityInput.CountryLocationCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC2CAC0);
  }

  return result;
}

unint64_t sub_25D164464()
{
  result = qword_27FC2CAC8[0];
  if (!qword_27FC2CAC8[0])
  {
    result = swift_getWitnessTable(byte_25D16A2F4, &type metadata for OSEligibilityInput.CountryLocationCodingKeys, v0, v1);
    atomic_store(result, qword_27FC2CAC8);
  }

  return result;
}

unint64_t sub_25D1644BC()
{
  result = qword_27FC2CB50;
  if (!qword_27FC2CB50)
  {
    result = swift_getWitnessTable(asc_25D16A27C, &type metadata for OSEligibilityInput.CountryBillingCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC2CB50);
  }

  return result;
}

unint64_t sub_25D164514()
{
  result = qword_27FC2CB58[0];
  if (!qword_27FC2CB58[0])
  {
    result = swift_getWitnessTable(a5_0, &type metadata for OSEligibilityInput.CountryBillingCodingKeys, v0, v1);
    atomic_store(result, qword_27FC2CB58);
  }

  return result;
}

unint64_t sub_25D16456C()
{
  result = qword_27FC2CBE0;
  if (!qword_27FC2CBE0)
  {
    result = swift_getWitnessTable("u\r\r%@=", &type metadata for OSEligibilityInput.DeviceClassCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC2CBE0);
  }

  return result;
}

unint64_t sub_25D1645C4()
{
  result = qword_27FC2CBE8[0];
  if (!qword_27FC2CBE8[0])
  {
    result = swift_getWitnessTable(byte_25D16A254, &type metadata for OSEligibilityInput.DeviceClassCodingKeys, v0, v1);
    atomic_store(result, qword_27FC2CBE8);
  }

  return result;
}

unint64_t sub_25D16461C()
{
  result = qword_27FC2CC70;
  if (!qword_27FC2CC70)
  {
    result = swift_getWitnessTable(byte_25D16A1DC, &type metadata for OSEligibilityInput.DeviceLocaleCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC2CC70);
  }

  return result;
}

unint64_t sub_25D164674()
{
  result = qword_27FC2CC78;
  if (!qword_27FC2CC78)
  {
    result = swift_getWitnessTable(byte_25D16A204, &type metadata for OSEligibilityInput.DeviceLocaleCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC2CC78);
  }

  return result;
}

unint64_t sub_25D1646CC()
{
  result = qword_27FC2CD00;
  if (!qword_27FC2CD00)
  {
    result = swift_getWitnessTable(byte_25D16A18C, &type metadata for OSEligibilityInput.ChinaCellularCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC2CD00);
  }

  return result;
}

unint64_t sub_25D164724()
{
  result = qword_27FC2CD08[0];
  if (!qword_27FC2CD08[0])
  {
    result = swift_getWitnessTable("%\n\r%", &type metadata for OSEligibilityInput.ChinaCellularCodingKeys, v0, v1);
    atomic_store(result, qword_27FC2CD08);
  }

  return result;
}

unint64_t sub_25D16477C()
{
  result = qword_27FC2CD90;
  if (!qword_27FC2CD90)
  {
    result = swift_getWitnessTable(aE_1, &type metadata for OSEligibilityInput.DeviceRegionCodeCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC2CD90);
  }

  return result;
}

unint64_t sub_25D1647D4()
{
  result = qword_27FC2CD98[0];
  if (!qword_27FC2CD98[0])
  {
    result = swift_getWitnessTable("u\n\r%t>", &type metadata for OSEligibilityInput.DeviceRegionCodeCodingKeys, v0, v1);
    atomic_store(result, qword_27FC2CD98);
  }

  return result;
}

unint64_t sub_25D16482C()
{
  result = qword_27FC2CE20;
  if (!qword_27FC2CE20)
  {
    result = swift_getWitnessTable(byte_25D16A0EC, &type metadata for OSEligibilityInput.DeviceLanguageCodingKeys, v0, v1);
    atomic_store(result, &qword_27FC2CE20);
  }

  return result;
}
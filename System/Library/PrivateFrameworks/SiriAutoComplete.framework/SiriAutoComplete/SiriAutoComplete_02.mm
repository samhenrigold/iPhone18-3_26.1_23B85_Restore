_BYTE **sub_21E555944(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_21E555954(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_21E5559CC@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_21E5559FC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21E555A20(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_21E57BA4C();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_21E5351E4();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_21E535114(0, &qword_2812264D0, 0x277D23B58);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_21E55BDA8(&qword_27CEC8C68, &qword_27CEC8C50, &qword_21E57DBB0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8C50, &qword_21E57DBB0);
          v9 = sub_21E555D84(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21E555BA4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_21E57BA4C();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_21E5351E4();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_21E57B4AC();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_21E55BDA8(&qword_27CEC8C48, &qword_27CEC8C28, &qword_21E57DB90);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8C28, &qword_21E57DB90);
          v9 = sub_21E555D18(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_21E555D18(uint64_t a1, unint64_t a2, uint64_t a3))()
{
  OUTLINED_FUNCTION_197(a1, a2, a3);
  if (v6)
  {
  }

  else
  {
    v7 = MEMORY[0x223D5CE50](v5, v4);
  }

  *v3 = v7;
  return j__OUTLINED_FUNCTION_150;
}

void (*sub_21E555D84(uint64_t a1, unint64_t a2, uint64_t a3))(id *a1)
{
  OUTLINED_FUNCTION_197(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v7 = MEMORY[0x223D5CE50](v5, v4);
  }

  *v3 = v7;
  return sub_21E555DEC;
}

uint64_t sub_21E555DF4(uint64_t a1, void *a2, uint64_t a3)
{
  v9[3] = type metadata accessor for DefaultInstalledAppProvider();
  v9[4] = &off_282F93050;
  v9[0] = a1;
  sub_21E534F3C(v9, a3 + 16);
  v6 = objc_allocWithZone(MEMORY[0x277CCA948]);
  v7 = sub_21E5551D4(2048);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  *(a3 + 56) = v7;
  return a3;
}

uint64_t sub_21E555E9C(uint64_t a1, void *a2)
{
  v13 = type metadata accessor for DefaultInstalledAppProvider();
  v14 = &off_282F93050;
  v12[0] = a1;
  type metadata accessor for DefaultEligibilityCriteria();
  v4 = swift_allocObject();
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  MEMORY[0x28223BE20](v5);
  v7 = (&v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = sub_21E555DF4(*v7, a2, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v9;
}

uint64_t sub_21E555FB8(uint64_t a1, uint64_t a2)
{
  v7 = type metadata accessor for DefaultEligibilityCriteria();
  v8 = &off_282F92F38;
  *&v6 = a1;
  sub_21E529804(&v6, v5);
  swift_beginAccess();
  sub_21E55BDFC(v5, a2 + 192);
  return swift_endAccess();
}

uint64_t sub_21E556030(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v57 = a5;
  v58 = a6;
  v59 = a1;
  v9 = sub_21E57B5EC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v51 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DefaultAppShortcutsApprovedPhrasesProvider();
  v64 = &off_282F92760;
  v62[0] = a4;

  v60 = a3;
  v12 = [a3 orderedPhrases];
  sub_21E535114(0, &qword_2812254C8, 0x277D23B68);
  v13 = sub_21E57B78C();

  result = sub_21E529E5C(v13);
  v52 = v10;
  v53 = v9;
  if (result)
  {
    v15 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v16 = 0;
    v54 = v13 & 0xC000000000000001;
    v17 = MEMORY[0x277D84F90];
    v55 = v13;
    v56 = a2;
    do
    {
      if (v54)
      {
        v18 = MEMORY[0x223D5CE50](v16, v13);
      }

      else
      {
        v18 = *(v13 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = [v18 localizedPhrase];
      v21 = sub_21E57B67C();
      v23 = v22;

      __swift_project_boxed_opaque_existential_1(v62, v63);
      v24 = [v60 actionIdentifier];
      v25 = sub_21E57B67C();
      v27 = v26;

      a2 = v56;
      v28 = sub_21E53EBF4(v21, v23, v59, v56, v25, v27, v57, v58);
      v30 = v29;

      if (v30)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21E543924();
          v17 = v33;
        }

        v13 = v55;
        v31 = *(v17 + 16);
        if (v31 >= *(v17 + 24) >> 1)
        {
          sub_21E543924();
          v17 = v34;
        }

        *(v17 + 16) = v31 + 1;
        v32 = v17 + 16 * v31;
        *(v32 + 32) = v28;
        *(v32 + 40) = v30;
      }

      else
      {

        v13 = v55;
      }

      ++v16;
    }

    while (v15 != v16);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v35 = v51;
  sub_21E57B5BC();

  v36 = v60;
  v37 = sub_21E57B5DC();
  v38 = sub_21E57B85C();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v61 = v40;
    *v39 = 136315650;
    *(v39 + 4) = sub_21E5553D8(v59, a2, &v61);
    *(v39 + 12) = 2080;
    v41 = [v36 actionIdentifier];
    v42 = sub_21E57B67C();
    v44 = v43;

    v45 = sub_21E5553D8(v42, v44, &v61);

    *(v39 + 14) = v45;
    *(v39 + 22) = 2080;

    v47 = MEMORY[0x223D5CC90](v46, MEMORY[0x277D837D0]);
    v49 = v48;

    v50 = sub_21E5553D8(v47, v49, &v61);

    *(v39 + 24) = v50;
    _os_log_impl(&dword_21E527000, v37, v38, "getApprovedPhrases: %s %s: %s", v39, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223D5D740](v40, -1, -1);
    MEMORY[0x223D5D740](v39, -1, -1);
  }

  (*(v52 + 8))(v35, v53);
  __swift_destroy_boxed_opaque_existential_1Tm(v62);
  return v17;
}

void sub_21E5564D0(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8AA8, &qword_21E57CBF0);
  MEMORY[0x28223BE20](v8 - 8);
  v110 = &v103 - v9;
  v109 = sub_21E57B5EC();
  v10 = *(v109 - 8);
  v11 = MEMORY[0x28223BE20](v109);
  v108 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v103 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v103 - v16;
  v117 = type metadata accessor for DefaultAppShortcutsApprovedPhrasesProvider();
  v118 = &off_282F92760;
  v116[0] = a4;
  __swift_project_boxed_opaque_existential_1(v116, v117);

  v18 = [a3 actionIdentifier];
  v19 = sub_21E57B67C();
  v21 = v20;

  v22 = sub_21E53EF98(a1, a2, v19, v21);

  v112 = v22;
  if (!v22)
  {
    v62 = a1;
    sub_21E57B5BC();

    v63 = a3;
    v64 = sub_21E57B5DC();
    v65 = sub_21E57B84C();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v115 = v67;
      *v66 = 136315394;
      *(v66 + 4) = sub_21E5553D8(v62, a2, &v115);
      *(v66 + 12) = 2080;
      v68 = [v63 actionIdentifier];
      v69 = sub_21E57B67C();
      v71 = v70;

      v72 = sub_21E5553D8(v69, v71, &v115);

      *(v66 + 14) = v72;
      _os_log_impl(&dword_21E527000, v64, v65, "getPhrasesForApprovedActions: Action not approved %s - %s", v66, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D5D740](v67, -1, -1);
      MEMORY[0x223D5D740](v66, -1, -1);
    }

    (*(v10 + 8))(v17, v109);
    goto LABEL_50;
  }

  v107 = a2;
  v23 = WFAllGroupedPhrasesForAutoShortcut();
  v24 = a3;
  if (!v23)
  {
    v73 = a1;

    sub_21E57B5BC();
    v74 = v107;

    v75 = v24;
    v76 = sub_21E57B5DC();
    v77 = sub_21E57B86C();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v115 = v79;
      *v78 = 136315394;
      *(v78 + 4) = sub_21E5553D8(v73, v74, &v115);
      *(v78 + 12) = 2080;
      v80 = [v75 actionIdentifier];
      v81 = sub_21E57B67C();
      v83 = v82;

      v84 = sub_21E5553D8(v81, v83, &v115);

      *(v78 + 14) = v84;
      _os_log_impl(&dword_21E527000, v76, v77, "getPhrasesForApprovedActions: Failed to get grouped phrases for %s - %s", v78, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D5D740](v79, -1, -1);
      MEMORY[0x223D5D740](v78, -1, -1);
    }

    (*(v10 + 8))(v15, v109);
    goto LABEL_50;
  }

  v25 = v23;
  v104 = a1;
  v105 = a3;
  v106 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8C70, &qword_21E57DBD8);
  v26 = sub_21E57B78C();

  v114 = *(v26 + 16);
  if (!v114)
  {
LABEL_47:

    v85 = v109;

    v86 = v108;
    sub_21E57B5BC();
    v87 = v107;

    v88 = v105;
    v89 = sub_21E57B5DC();
    v90 = sub_21E57B85C();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v115 = v92;
      *v91 = 136315650;
      *(v91 + 4) = sub_21E5553D8(v104, v87, &v115);
      *(v91 + 12) = 2080;
      v93 = [v88 actionIdentifier];
      v94 = sub_21E57B67C();
      v96 = v95;

      v97 = sub_21E5553D8(v94, v96, &v115);

      *(v91 + 14) = v97;
      *(v91 + 22) = 2080;

      v99 = MEMORY[0x223D5CC90](v98, MEMORY[0x277D837D0]);
      v101 = v100;

      v102 = sub_21E5553D8(v99, v101, &v115);

      *(v91 + 24) = v102;
      _os_log_impl(&dword_21E527000, v89, v90, "getPhrasesForApprovedActions: %s %s: %s", v91, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D5D740](v92, -1, -1);
      MEMORY[0x223D5D740](v91, -1, -1);

      (*(v106 + 8))(v86, v109);
    }

    else
    {

      (*(v106 + 8))(v86, v85);
    }

LABEL_50:
    __swift_destroy_boxed_opaque_existential_1Tm(v116);
    return;
  }

  v27 = 0;
  v113 = v26 + 32;
  v28 = MEMORY[0x277D84F90];
  v29 = v110;
  v111 = v26;
  while (v27 < *(v26 + 16))
  {
    v30 = *(v113 + 8 * v27);
    if (v30 >> 62)
    {
      v31 = sub_21E57BA4C();
      if (!v31)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v31)
      {
        goto LABEL_36;
      }
    }

    if ((v30 & 0xC000000000000001) != 0)
    {

      v33 = MEMORY[0x223D5CE50](0, v30);
    }

    else
    {
      if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_54;
      }

      v32 = *(v30 + 32);

      v33 = v32;
    }

    v34 = v33;
    __swift_project_boxed_opaque_existential_1(v116, v117);
    v35 = [v34 parameterIdentifier];
    if (v35)
    {
      v36 = v35;
      sub_21E57AC5C();

      v37 = 0;
    }

    else
    {
      v37 = 1;
    }

    v38 = sub_21E57AC6C();
    __swift_storeEnumTagSinglePayload(v29, v37, 1, v38);
    sub_21E53EFE0();
    v40 = v39;
    sub_21E53FF8C(v29, &qword_27CEC8AA8, &qword_21E57CBF0);
    if (v40)
    {
      for (i = 0; v31 != i; ++i)
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v42 = MEMORY[0x223D5CE50](i, v30);
        }

        else
        {
          if (i >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_52;
          }

          v42 = *(v30 + 8 * i + 32);
        }

        v43 = v42;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        if ([v42 isPrimary])
        {

          v50 = [v43 localizedPhrase];
          v51 = sub_21E57B67C();
          v53 = v52;

          v54 = v28;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21E543924();
            v54 = v60;
          }

          v29 = v110;
          v55 = *(v54 + 16);
          v56 = v54;
          if (v55 >= *(v54 + 24) >> 1)
          {
            sub_21E543924();
            v56 = v61;
          }

          *(v56 + 16) = v55 + 1;
          v57 = v56 + 16 * v55;
          v28 = v56;
          *(v57 + 32) = v51;
          *(v57 + 40) = v53;
          goto LABEL_35;
        }
      }

      v44 = [v34 localizedPhrase];
      v45 = sub_21E57B67C();
      v47 = v46;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21E543924();
        v28 = v58;
      }

      v29 = v110;
      v48 = *(v28 + 16);
      if (v48 >= *(v28 + 24) >> 1)
      {
        sub_21E543924();
        v28 = v59;
      }

      *(v28 + 16) = v48 + 1;
      v49 = v28 + 16 * v48;
      *(v49 + 32) = v45;
      *(v49 + 40) = v47;
    }

    else
    {
    }

LABEL_35:
    v26 = v111;
LABEL_36:
    if (++v27 == v114)
    {
      goto LABEL_47;
    }
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
}

id sub_21E556F0C(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = sub_21E57B5EC();
  v85 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v84 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88F8, &unk_21E57C470);
  MEMORY[0x28223BE20](v14 - 8);
  v77 = &v59 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8900, &unk_21E57C620);
  MEMORY[0x28223BE20](v16 - 8);
  v76 = &v59 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88D8, &unk_21E57D3B0);
  MEMORY[0x28223BE20](v18 - 8);
  v75 = &v59 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8908, &qword_21E57C480);
  MEMORY[0x28223BE20](v20 - 8);
  v74 = &v59 - v21;
  v73 = sub_21E57B3DC();
  v22 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for DefaultAppShortcutsApprovedPhrasesProvider();
  v90 = &off_282F92760;
  v88 = a4;

  v24 = sub_21E57B1EC();
  v25 = sub_21E52D2D4(a1, a2, v24);
  v27 = v26;

  if (!v27)
  {

    v25 = a1;
    v27 = a2;
  }

  v78 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8940, &qword_21E57C4C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E57D990;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x800000021E57F8D0;
  *(inited + 48) = 0xD000000000000011;
  *(inited + 56) = 0x800000021E57F8F0;
  *(inited + 64) = 0xD000000000000011;
  *(inited + 72) = 0x800000021E57F910;
  v29 = sub_21E57B70C();
  v64 = v25;
  if (v29)
  {
    swift_setDeallocating();
    sub_21E5552D4();
    v59 = 0;
  }

  else
  {
    v83 = v12;
    v86[0] = v25;
    v86[1] = v27;
    MEMORY[0x28223BE20](v29);
    v58 = v86;
    v30 = v27;
    v31 = sub_21E56E084(sub_21E540070, v57, inited);
    swift_setDeallocating();
    sub_21E5552D4();
    if (v31)
    {

      v32 = v84;
      sub_21E57B5BC();

      v33 = sub_21E57B5DC();
      v34 = sub_21E57B85C();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v86[0] = v36;
        *v35 = 136315394;
        *(v35 + 4) = sub_21E5553D8(v78, a2, v86);
        *(v35 + 12) = 2080;
        *(v35 + 14) = sub_21E5553D8(a5, a6, v86);
        _os_log_impl(&dword_21E527000, v33, v34, "Skipping App Shortcut from %s for %s since it's unlocalized", v35, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D5D740](v36, -1, -1);
        MEMORY[0x223D5D740](v35, -1, -1);
      }

      (*(v85 + 8))(v32, v83);
      v37 = MEMORY[0x277D84F90];
      goto LABEL_28;
    }

    v59 = 0;
    v27 = v30;
    v25 = v64;
  }

  v37 = MEMORY[0x277D84F90];
  v87 = MEMORY[0x277D84F90];
  result = sub_21E529E5C(a3);
  v66 = result;
  if (!result)
  {
LABEL_27:

LABEL_28:
    __swift_destroy_boxed_opaque_existential_1Tm(&v88);
    return v37;
  }

  v71 = a2;
  v39 = 0;
  v65 = a3 & 0xC000000000000001;
  v61 = a3 & 0xFFFFFFFFFFFFFF8;
  v60 = a3 + 32;
  v70 = *MEMORY[0x277D55840];
  v69 = (v22 + 104);
  v81 = a5;
  v80 = a6;
  v63 = a3;
  v62 = v27;
  while (1)
  {
    if (v65)
    {
      result = MEMORY[0x223D5CE50](v39, a3);
    }

    else
    {
      if (v39 >= *(v61 + 16))
      {
        goto LABEL_30;
      }

      result = *(v60 + 8 * v39);
    }

    v82 = result;
    if (__OFADD__(v39++, 1))
    {
      break;
    }

    v41 = __swift_project_boxed_opaque_existential_1(&v88, v89);
    v42 = sub_21E556030(v25, v27, v82, *v41, a5, a6);
    if (!*(v42 + 16))
    {
      __swift_project_boxed_opaque_existential_1(&v88, v89);
      if (!sub_21E53F970(a5, a6))
      {

        v43 = __swift_project_boxed_opaque_existential_1(&v88, v89);
        sub_21E5564D0(v25, v27, v82, *v43);
        v42 = v44;
      }
    }

    v45 = *(v42 + 16);
    if (v45)
    {
      v68 = v39;
      v79 = sub_21E57B5AC();
      v67 = v42;
      v46 = v42 + 40;
      do
      {
        v85 = *(v46 - 8);

        v47 = [v82 actionIdentifier];
        v84 = sub_21E57B67C();
        v83 = v48;

        (*v69)(v72, v70, v73);
        v49 = sub_21E57B1FC();
        __swift_storeEnumTagSinglePayload(v74, 1, 1, v49);
        v50 = sub_21E57AC4C();
        __swift_storeEnumTagSinglePayload(v75, 1, 1, v50);
        v51 = sub_21E57B5FC();
        __swift_storeEnumTagSinglePayload(v76, 1, 1, v51);
        v52 = sub_21E57B04C();
        v53 = v77;
        __swift_storeEnumTagSinglePayload(v77, 1, 1, v52);
        v54 = v79;
        v55 = sub_21E57B59C();
        v86[3] = v54;
        v86[4] = MEMORY[0x277D55898];
        v86[0] = v55;
        sub_21E57B4AC();
        swift_allocObject();

        v58 = v53;
        v57[0] = v81;
        sub_21E57B44C();

        MEMORY[0x223D5CC60](v56);
        if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21E57B7AC();
        }

        sub_21E57B7CC();

        v46 += 16;
        --v45;
      }

      while (v45);
      v37 = v87;
      a6 = v80;
      a5 = v81;
      a3 = v63;
      v27 = v62;
      v25 = v64;
      v39 = v68;
    }

    if (v39 == v66)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_21E5578F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[26] = a7;
  v8[27] = a8;
  v8[24] = a5;
  v8[25] = a6;
  v8[23] = a1;
  v12 = sub_21E57B5EC();
  v8[28] = v12;
  v8[29] = *(v12 - 8);
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[5] = type metadata accessor for DefaultEligibilityCriteria();
  v8[6] = &off_282F92F38;
  v8[2] = a2;
  v13 = type metadata accessor for DefaultAppShortcutsApprovedPhrasesProvider();
  v8[34] = v13;
  v8[10] = v13;
  v8[11] = &off_282F92760;
  v8[7] = a3;
  v8[15] = type metadata accessor for DefaultSiriShortcutsEnablementProvider();
  v8[16] = &off_282F92ED8;
  v8[12] = a4;

  return MEMORY[0x2822009F8](sub_21E557A60);
}

void sub_21E557A60()
{
  v3 = *(v1 + 184);
  if (!v3)
  {
    sub_21E57B5BC();
    v43 = sub_21E57B5DC();
    v44 = sub_21E57B85C();
    if (OUTLINED_FUNCTION_75_0(v44))
    {
      v45 = OUTLINED_FUNCTION_178();
      OUTLINED_FUNCTION_176(v45);
      OUTLINED_FUNCTION_12();
      _os_log_impl(v46, v47, v48, v49, v50, 2u);
      OUTLINED_FUNCTION_30();
    }

    v51 = OUTLINED_FUNCTION_62_0();
    v52(v51);
LABEL_23:
    OUTLINED_FUNCTION_195();

    OUTLINED_FUNCTION_56();

    __asm { BRAA            X1, X16 }
  }

  v4 = *(v3 + 32);
  *(v1 + 336) = v4;
  v5 = 1 << v4;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v3 + 64);

  v8 = 0;
  *&v9 = 136315394;
  v62 = v9;
  *&v9 = 136315138;
  v59 = v9;
  while (1)
  {
    if (v7)
    {
      v10 = *(v1 + 184);
      goto LABEL_13;
    }

    do
    {
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      v10 = OUTLINED_FUNCTION_196();
      if (v12 == v13)
      {

        goto LABEL_23;
      }

      v7 = *(v10 + 8 * v11 + 64);
      ++v8;
    }

    while (!v7);
    v8 = v11;
LABEL_13:
    OUTLINED_FUNCTION_103_0(v10);

    sub_21E57B5BC();

    v14 = sub_21E57B5DC();
    sub_21E57B85C();
    OUTLINED_FUNCTION_240();

    v15 = OUTLINED_FUNCTION_220();
    v16 = *(v1 + 232);
    v74 = *(v1 + 224);
    v76 = *(v1 + 256);
    if (v15)
    {
      v67 = *(v1 + 200);
      v69 = *(v1 + 208);
      v71 = v2;
      v17 = OUTLINED_FUNCTION_57();
      v18 = OUTLINED_FUNCTION_206();
      v26 = OUTLINED_FUNCTION_174(v18, v19, v20, v21, v22, v23, v24, v25, v59, *(&v59 + 1), v62, *(&v62 + 1), v65, v67, v69, v71, v74, v76, v79);
      *(v17 + 14) = OUTLINED_FUNCTION_209(v26, v27, v28, v29, v30, v31, v32, v33, v60, v61, v63, v64, v66, v68, v70, v72, v75, v77);
      OUTLINED_FUNCTION_179(&dword_21E527000, v14, v0, "Getting shortcut phrases for %s in %s");
      OUTLINED_FUNCTION_170();
      OUTLINED_FUNCTION_31();
      v2 = v73;
      OUTLINED_FUNCTION_39();
    }

    v34 = *(v16 + 8);
    v34(v76, v74);
    *(v1 + 320) = v34;
    OUTLINED_FUNCTION_242((v1 + 16), *(v1 + 40));
    v35 = OUTLINED_FUNCTION_98_0();
    if (sub_21E54A03C(v35))
    {
      break;
    }

    OUTLINED_FUNCTION_235();
    sub_21E57B5BC();

    v36 = sub_21E57B5DC();
    sub_21E57B85C();
    OUTLINED_FUNCTION_240();
    v37 = OUTLINED_FUNCTION_220();
    v38 = *(v1 + 248);
    v78 = *(v1 + 224);
    if (v37)
    {
      v39 = OUTLINED_FUNCTION_50();
      v79 = OUTLINED_FUNCTION_43();
      *v39 = v59;
      v40 = OUTLINED_FUNCTION_98_0();
      sub_21E5553D8(v40, v41, v42);
      OUTLINED_FUNCTION_241();
      *(v39 + 4) = v2;
      OUTLINED_FUNCTION_237(&dword_21E527000, v36, v0, "Skipping App Shortcut since it is associated with an app that is not installed: %s", v59);
      OUTLINED_FUNCTION_95_0();
      OUTLINED_FUNCTION_39();
    }

    else
    {
    }

    v34(v38, v78);
  }

  OUTLINED_FUNCTION_242((v1 + 96), *(v1 + 120));
  v55 = swift_task_alloc();
  v56 = OUTLINED_FUNCTION_113(v55);
  *v56 = v57;
  OUTLINED_FUNCTION_87_0(v56);
  OUTLINED_FUNCTION_98_0();
  OUTLINED_FUNCTION_56();

  sub_21E5496DC();
}

uint64_t sub_21E557E10()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 337) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_21E557EF8()
{
  if ((*(v0 + 337) & 1) == 0)
  {

    sub_21E57B5BC();

    v11 = sub_21E57B5DC();
    v12 = sub_21E57B85C();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 320);
    if (v13)
    {
      v1 = *(v0 + 296);
      v114 = *(v0 + 240);
      isUniquelyReferenced_nonNull_native = *(v0 + 224);
      v15 = OUTLINED_FUNCTION_50();
      v118 = OUTLINED_FUNCTION_43();
      *v15 = 136315138;
      v16 = OUTLINED_FUNCTION_98_0();
      sub_21E5553D8(v16, v17, v18);
      OUTLINED_FUNCTION_241();
      *(v15 + 4) = v1;
      OUTLINED_FUNCTION_230();
      _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v118);
      OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_81_0();

      v14(v114, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = *(v0 + 224);

      v52 = OUTLINED_FUNCTION_62_0();
      v24 = (v14)(v52);
    }

    goto LABEL_31;
  }

  v2 = *(v0 + 272);
  v3 = *__swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  *(v0 + 160) = v2;
  *(v0 + 168) = &off_282F92760;
  *(v0 + 136) = v3;

  if (sub_21E57B70C())
  {
    v4 = *(v0 + 312);
    v6 = *(v0 + 200);
    v5 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
    v7 = OUTLINED_FUNCTION_60();
    isUniquelyReferenced_nonNull_native = sub_21E556F0C(v7, v8, v4, v9, v6, v5);
  }

  else
  {
    v25 = *(v0 + 208);

    v26 = OUTLINED_FUNCTION_200();
    isUniquelyReferenced_nonNull_native = sub_21E56C824(v26, v27, v25);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_58;
  }

  v1 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v1)
  {
    goto LABEL_9;
  }

LABEL_29:
  while (1)
  {

LABEL_31:
    v53 = *(v0 + 288);
    v24.n128_u64[0] = 136315394;
    v97 = v24;
    v24.n128_u64[0] = 136315138;
    v94 = v24;
    if (((*(v0 + 280) - 1) & *(v0 + 280)) != 0)
    {
      break;
    }

    while (!__OFADD__(v53, 1))
    {
      v54 = OUTLINED_FUNCTION_196();
      if (v56 == v50)
      {

        OUTLINED_FUNCTION_195();

        OUTLINED_FUNCTION_56();

        __asm { BRAA            X1, X16 }
      }

      ++v53;
      if (*(v54 + 8 * v55 + 64))
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v1 = sub_21E57BA4C();
    if (v1)
    {
LABEL_9:
      v28 = 0;
      v107 = isUniquelyReferenced_nonNull_native;
      v111 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v104 = v1;
      while (1)
      {
        if (v111)
        {
          v29 = MEMORY[0x223D5CE50](v28, isUniquelyReferenced_nonNull_native);
        }

        else
        {
          OUTLINED_FUNCTION_232();
          if (v28 >= v30)
          {
            goto LABEL_56;
          }

          v29 = *(isUniquelyReferenced_nonNull_native + 8 * v28 + 32);
        }

        v31 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_54;
        }

        v32 = **(v0 + 192);

        v33 = sub_21E57B45C();
        if (*(v32 + 16))
        {
          sub_21E52F7C4(v33);
          v35 = v34;

          if (v35)
          {

            goto LABEL_28;
          }
        }

        else
        {
        }

        v36 = *(v0 + 192);
        v37 = sub_21E57B45C();
        v39 = v38;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = *v36;
        *(v0 + 176) = *v36;
        v41 = sub_21E52F7C4(v37);
        if (__OFADD__(*(v40 + 16), (v42 & 1) == 0))
        {
          goto LABEL_55;
        }

        v43 = v41;
        v44 = v42;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8B88, &unk_21E57D3D0);
        if (sub_21E57BA1C())
        {
          v45 = sub_21E52F7C4(v37);
          if ((v44 & 1) != (v46 & 1))
          {
            OUTLINED_FUNCTION_56();

            return sub_21E57BB6C();
          }

          v43 = v45;
        }

        if (v44)
        {

          v47 = *(v0 + 176);
          *(v47[7] + 8 * v43) = v29;
        }

        else
        {
          v47 = *(v0 + 176);
          v47[(v43 >> 6) + 8] |= 1 << v43;
          v48 = (v47[6] + 16 * v43);
          *v48 = v37;
          v48[1] = v39;
          *(v47[7] + 8 * v43) = v29;

          v49 = v47[2];
          v50 = __OFADD__(v49, 1);
          v51 = v49 + 1;
          if (v50)
          {
            goto LABEL_57;
          }

          v47[2] = v51;
        }

        **(v0 + 192) = v47;
        v1 = v104;
        isUniquelyReferenced_nonNull_native = v107;
        v31 = v28 + 1;
LABEL_28:
        ++v28;
        if (v31 == v1)
        {
          goto LABEL_29;
        }
      }
    }
  }

  while (1)
  {
    v54 = *(v0 + 184);
LABEL_37:
    OUTLINED_FUNCTION_103_0(v54);

    sub_21E57B5BC();

    v57 = sub_21E57B5DC();
    sub_21E57B85C();
    OUTLINED_FUNCTION_240();

    v58 = OUTLINED_FUNCTION_220();
    v59 = *(v0 + 232);
    v112 = *(v0 + 224);
    v115 = *(v0 + 256);
    if (v58)
    {
      v102 = *(v0 + 200);
      v105 = *(v0 + 208);
      v108 = v1;
      v60 = OUTLINED_FUNCTION_57();
      v61 = OUTLINED_FUNCTION_206();
      v69 = OUTLINED_FUNCTION_174(v61, v62, v63, v64, v65, v66, v67, v68, v94.n128_i64[0], v94.n128_i64[1], v97.n128_i32[0], v97.n128_i64[1], v100, v102, v105, v108, v112, v115, v118);
      *(v60 + 14) = OUTLINED_FUNCTION_209(v69, v70, v71, v72, v73, v74, v75, v76, v95, v96, v98, v99, v101, v103, v106, v109, v113, v116);
      OUTLINED_FUNCTION_179(&dword_21E527000, v57, isUniquelyReferenced_nonNull_native, "Getting shortcut phrases for %s in %s");
      OUTLINED_FUNCTION_170();
      OUTLINED_FUNCTION_31();
      v1 = v110;
      OUTLINED_FUNCTION_39();
    }

    v77 = *(v59 + 8);
    v77(v115, v112);
    *(v0 + 320) = v77;
    OUTLINED_FUNCTION_242((v0 + 16), *(v0 + 40));
    v78 = OUTLINED_FUNCTION_98_0();
    if (sub_21E54A03C(v78))
    {
      break;
    }

    OUTLINED_FUNCTION_235();
    sub_21E57B5BC();

    v79 = sub_21E57B5DC();
    sub_21E57B85C();
    OUTLINED_FUNCTION_240();
    v80 = OUTLINED_FUNCTION_220();
    v81 = *(v0 + 248);
    v117 = *(v0 + 224);
    if (v80)
    {
      v82 = OUTLINED_FUNCTION_50();
      v118 = OUTLINED_FUNCTION_43();
      *v82 = v94.n128_u32[0];
      v83 = OUTLINED_FUNCTION_98_0();
      sub_21E5553D8(v83, v84, v85);
      OUTLINED_FUNCTION_241();
      *(v82 + 4) = v1;
      OUTLINED_FUNCTION_237(&dword_21E527000, v79, isUniquelyReferenced_nonNull_native, "Skipping App Shortcut since it is associated with an app that is not installed: %s", v94.n128_u64[0]);
      OUTLINED_FUNCTION_95_0();
      OUTLINED_FUNCTION_39();
    }

    else
    {
    }

    v77(v81, v117);
  }

  OUTLINED_FUNCTION_242((v0 + 96), *(v0 + 120));
  v88 = swift_task_alloc();
  v89 = OUTLINED_FUNCTION_113(v88);
  *v89 = v90;
  OUTLINED_FUNCTION_87_0(v89);
  OUTLINED_FUNCTION_98_0();
  OUTLINED_FUNCTION_56();

  return sub_21E5496DC();
}

uint64_t sub_21E55864C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v35 = a5;
  v33 = a3;
  v37 = sub_21E57B5EC();
  v7 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DefaultEligibilityCriteria();
  v42 = &off_282F92F38;
  v40[0] = a2;
  v39 = MEMORY[0x277D84F90];
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (v7 + 8);

    v12 = (a1 + 40);
    v32 = MEMORY[0x277D84F90];
    *&v13 = 136315138;
    v36 = v13;
    while (1)
    {
      v14 = *(v12 - 1);
      v15 = *v12;
      v16 = __swift_project_boxed_opaque_existential_1(v40, v41);
      v17 = *(*__swift_project_boxed_opaque_existential_1((*v16 + 16), *(*v16 + 40)) + 16);
      v18 = *(v17 + 16);

      if (v18)
      {

        v19 = sub_21E52F7C4(v14);
        if (v20)
        {
          v21 = (*(v17 + 56) + 24 * v19);
          v22 = *v21;
          v23 = v21[1];

          v24 = sub_21E567844(v14, v15, v22, v23, v33, v34);

          if (v24)
          {

            MEMORY[0x223D5CC60](v25);
            if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_21E57B7AC();
            }

            sub_21E57B7CC();

            v32 = v39;
          }

          goto LABEL_14;
        }
      }

      sub_21E57B5BC();

      v26 = sub_21E57B5DC();
      v27 = sub_21E57B85C();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v38 = v29;
        *v28 = v36;
        v30 = sub_21E5553D8(v14, v15, &v38);

        *(v28 + 4) = v30;
        _os_log_impl(&dword_21E527000, v26, v27, "SiriAutoCompleteIndexBuilder updateIndexForAppInstall:%s not able to get app metadata. Not updating index", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v29);
        MEMORY[0x223D5D740](v29, -1, -1);
        MEMORY[0x223D5D740](v28, -1, -1);
      }

      else
      {
      }

      (*v11)(v9, v37);
LABEL_14:
      v12 += 2;
      if (!--v10)
      {
        goto LABEL_17;
      }
    }
  }

  v32 = MEMORY[0x277D84F90];
LABEL_17:
  __swift_destroy_boxed_opaque_existential_1Tm(v40);
  return v32;
}

uint64_t sub_21E5589A4()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v0[28] = v3;
  v0[29] = v4;
  v0[26] = v5;
  v0[27] = v6;
  v7 = sub_21E57B5EC();
  v0[30] = v7;
  OUTLINED_FUNCTION_6(v7);
  v0[31] = v8;
  v0[32] = OUTLINED_FUNCTION_159();
  v0[21] = type metadata accessor for DefaultEligibilityCriteria();
  v0[22] = &off_282F92F38;
  v0[18] = v2;

  OUTLINED_FUNCTION_76_0();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_21E558A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_231();
  v13 = v12[26];
  v12[33] = [objc_allocWithZone(MEMORY[0x277D23B78]) init];
  sub_21E57B4AC();
  OUTLINED_FUNCTION_62_0();
  v12[23] = sub_21E57B62C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8C50, &qword_21E57DBB0);
  OUTLINED_FUNCTION_62_0();
  v14 = sub_21E57B62C();
  v15 = *(v13 + 16);
  v12[34] = v15;
  if (v15)
  {
    v12[40] = 0;
    v12[41] = v14;
    v12[38] = v14;
    v12[39] = 0;
    v16 = v12[33];
    v17 = v12[26];
    v12[42] = *(v17 + 32);
    OUTLINED_FUNCTION_218(v17);
    v18 = sub_21E57B66C();
    v12[44] = v18;
    OUTLINED_FUNCTION_98_0();
    v19 = sub_21E57B66C();
    OUTLINED_FUNCTION_109(v19);
    v12[2] = v20;
    v12[7] = v12 + 24;
    v12[3] = sub_21E558ED0;
    v21 = swift_continuation_init();
    v12[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8C58, &qword_21E57DBB8);
    v12[10] = MEMORY[0x277D85DD0];
    v12[11] = 1107296256;
    v12[12] = sub_21E55512C;
    v12[13] = &block_descriptor_2;
    v12[14] = v21;
    [v16 autoShortcutsForBundleIdentifier:v18 localeIdentifier:v19 completion:v12 + 10];
    OUTLINED_FUNCTION_55();

    return MEMORY[0x282200938](v22, v23, v24, v25, v26, v27, v28, v29, v12 + 12, a10, a11, a12);
  }

  else
  {
    v12[35] = 0;
    v12[36] = v14;
    if (qword_2812261A8 != -1)
    {
      OUTLINED_FUNCTION_54_0(&qword_2812261A8);
    }

    type metadata accessor for DefaultSiriShortcutsEnablementProvider();
    swift_initStaticObject();
    __swift_project_boxed_opaque_existential_1(v12 + 18, v12[21]);
    OUTLINED_FUNCTION_11(&unk_21E57DBC0);
    v43 = v30;
    v31 = swift_task_alloc();
    v12[37] = v31;
    *v31 = v12;
    OUTLINED_FUNCTION_39_0(v31);
    OUTLINED_FUNCTION_55();

    return v40(v32, v33, v34, v35, v36, v37, v38, v39, v43, a10, a11, a12);
  }
}

uint64_t sub_21E558D28()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_21E558E28()
{
  OUTLINED_FUNCTION_152();
  v1 = v0[35];
  v2 = v0[33];

  v4 = sub_21E529E80(v3);

  sub_21E5400E4(v1, 0);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);

  OUTLINED_FUNCTION_9_0();

  return v5(v4);
}

uint64_t sub_21E558ED0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 368) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_76_0();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_21E558FD8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_231();
  v21 = *(v20 + 192);
  v22 = *(v20 + 352);

  if (v21 >> 62)
  {
    v23 = sub_21E57BA4C();
  }

  else
  {
    v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v23)
  {
    v24 = *(v20 + 336);
    v25 = *(v20 + 304);
    sub_21E5400E4(*(v20 + 312), 0);
    swift_isUniquelyReferenced_nonNull_native();
    *(v20 + 200) = v25;
    v26 = sub_21E52F7C4(v24);
    if (__OFADD__(*(v25 + 16), (v27 & 1) == 0))
    {
      __break(1u);
      goto LABEL_27;
    }

    v28 = v26;
    v29 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8C60, &qword_21E57DBD0);
    v30 = sub_21E57BA1C();
    v38 = *(v20 + 200);
    if (v30)
    {
      v39 = sub_21E52F7C4(*(v20 + 336));
      if ((v29 & 1) != (v31 & 1))
      {
        OUTLINED_FUNCTION_55();

        return sub_21E57BB6C();
      }

      v28 = v39;
    }

    v44 = *(v20 + 344);
    if (v29)
    {
    }

    else
    {
      v45 = *(v20 + 336);
      v38[(v28 >> 6) + 8] |= 1 << v28;
      v46 = (v38[6] + 16 * v28);
      *v46 = v45;
      v46[1] = v44;
      *(v38[7] + 8 * v28) = MEMORY[0x277D84F90];
      v47 = v38[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        __break(1u);
        return MEMORY[0x282200938](v44, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
      }

      v38[2] = v49;
    }

    sub_21E54A3EC(v21, sub_21E5351E4, sub_21E543DD8, sub_21E555A20);
    v43 = sub_21E53EBE4;
    v42 = v38;
  }

  else
  {

    v42 = *(v20 + 328);
    v38 = *(v20 + 304);
    v43 = *(v20 + 312);
  }

  v50 = *(v20 + 320) + 1;
  if (v50 != *(v20 + 272))
  {
    *(v20 + 320) = v50;
    *(v20 + 328) = v42;
    *(v20 + 304) = v38;
    *(v20 + 312) = v43;
    a9 = *(v20 + 264);
    v63 = *(v20 + 208) + 16 * v50;
    *(v20 + 336) = *(v63 + 32);
    OUTLINED_FUNCTION_218(v63);
    v64 = sub_21E57B66C();
    *(v20 + 352) = v64;
    OUTLINED_FUNCTION_98_0();
    v65 = sub_21E57B66C();
    OUTLINED_FUNCTION_109(v65);
    *(v20 + 16) = v66;
    *(v20 + 56) = v20 + 192;
    *(v20 + 24) = sub_21E558ED0;
    v67 = swift_continuation_init();
    *(v20 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8C58, &qword_21E57DBB8);
    *(v20 + 80) = MEMORY[0x277D85DD0];
    *(v20 + 88) = 1107296256;
    *(v20 + 96) = sub_21E55512C;
    *(v20 + 104) = &block_descriptor_2;
    *(v20 + 112) = v67;
    [a9 autoShortcutsForBundleIdentifier:v64 localeIdentifier:v65 completion:v20 + 80];
    OUTLINED_FUNCTION_55();

    return MEMORY[0x282200938](v44, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
  }

  *(v20 + 280) = v43;
  *(v20 + 288) = v42;
  if (qword_2812261A8 != -1)
  {
LABEL_27:
    OUTLINED_FUNCTION_54_0(&qword_2812261A8);
  }

  type metadata accessor for DefaultSiriShortcutsEnablementProvider();
  swift_initStaticObject();
  __swift_project_boxed_opaque_existential_1((v20 + 144), *(v20 + 168));
  OUTLINED_FUNCTION_11(&unk_21E57DBC0);
  v68 = v51;
  v52 = swift_task_alloc();
  *(v20 + 296) = v52;
  *v52 = v20;
  OUTLINED_FUNCTION_39_0(v52);
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_55();

  return v61(v53, v54, v55, v56, v57, v58, v59, v60, v68, a10, a11, a12);
}

uint64_t sub_21E5593E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = v12[45];
  v13 = v12[46];
  v15 = v12[44];
  v16 = v13;
  swift_willThrow();

  sub_21E57B5BC();
  v17 = v13;
  v18 = sub_21E57B5DC();
  sub_21E57B86C();

  v19 = OUTLINED_FUNCTION_220();
  v20 = v12[46];
  if (v19)
  {
    v21 = OUTLINED_FUNCTION_50();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    v23 = v20;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 4) = v24;
    *v22 = v24;
    _os_log_impl(&dword_21E527000, v18, v16, "Unexpected error when attempting to fetch shortcuts via LNAutoShortcutsProvider. Error: %@", v21, 0xCu);
    sub_21E53FF8C(v22, &qword_27CEC88E8, &qword_21E57C660);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_39();
  }

  else
  {
  }

  (*(v12[31] + 8))(v12[32], v12[30]);
  v25 = v12[40] + 1;
  if (v25 == v12[34])
  {
    v26 = v12[41];
    v12[35] = v12[39];
    v12[36] = v26;
    if (qword_2812261A8 != -1)
    {
      OUTLINED_FUNCTION_54_0(&qword_2812261A8);
    }

    type metadata accessor for DefaultSiriShortcutsEnablementProvider();
    swift_initStaticObject();
    __swift_project_boxed_opaque_existential_1(v12 + 18, v12[21]);
    OUTLINED_FUNCTION_11(&unk_21E57DBC0);
    v27 = swift_task_alloc();
    v12[37] = v27;
    *v27 = v12;
    OUTLINED_FUNCTION_39_0(v27);
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_54();

    __asm { BR              X8 }
  }

  v12[40] = v25;
  v44 = v12[33];
  v30 = v12[26] + 16 * v25;
  v12[42] = *(v30 + 32);
  OUTLINED_FUNCTION_218(v30);
  v31 = sub_21E57B66C();
  v12[44] = v31;
  OUTLINED_FUNCTION_98_0();
  v32 = sub_21E57B66C();
  OUTLINED_FUNCTION_109(v32);
  v12[2] = v33;
  v12[7] = v12 + 24;
  v12[3] = sub_21E558ED0;
  v34 = swift_continuation_init();
  v12[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8C58, &qword_21E57DBB8);
  v12[10] = MEMORY[0x277D85DD0];
  v12[11] = 1107296256;
  v12[12] = sub_21E55512C;
  v12[13] = &block_descriptor_2;
  v12[14] = v34;
  [v44 autoShortcutsForBundleIdentifier:v31 localeIdentifier:v32 completion:v12 + 10];
  OUTLINED_FUNCTION_54();

  return MEMORY[0x282200938](v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
}

uint64_t dispatch thunk of SiriAutoCompleteIndexBuilderProtocol.run(onStartUpEvent:)()
{
  OUTLINED_FUNCTION_152();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_73_0();
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_114(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_87_0(v8);

  return v11(v5, v3, v1);
}

uint64_t dispatch thunk of SiriAutoCompleteIndexBuilderProtocol.buildIndividualSources(sources:)()
{
  OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_131(v0, v1, v2);
  OUTLINED_FUNCTION_73_0();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_114(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_77_0(v4);

  return v7(v6);
}

uint64_t dispatch thunk of SiriAutoCompleteIndexBuilderProtocol.updateIndexForAppInstall(bundleIds:)()
{
  OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_131(v0, v1, v2);
  OUTLINED_FUNCTION_73_0();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_114(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_77_0(v4);

  return v7(v6);
}

uint64_t dispatch thunk of SiriAutoCompleteIndexBuilderProtocol.deletePhrasesFromApp(bundleIds:)()
{
  OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_131(v0, v1, v2);
  OUTLINED_FUNCTION_73_0();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_114(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_77_0(v4);

  return v7(v6);
}

uint64_t dispatch thunk of SiriAutoCompleteIndexBuilder.updateIndexForAppInstall(bundleIds:)()
{
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_181();
  v6 = (*(v0 + 168) + **(v0 + 168));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_114(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_43_0(v2);

  return v6(v4);
}

uint64_t dispatch thunk of SiriAutoCompleteIndexBuilder.deletePhrasesFromApp(bundleIds:)()
{
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_181();
  v6 = (*(v0 + 176) + **(v0 + 176));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_114(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_43_0(v2);

  return v6(v4);
}

uint64_t dispatch thunk of SiriAutoCompleteIndexBuilder.buildIndividualSources(sources:)()
{
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_181();
  v6 = (*(v0 + 184) + **(v0 + 184));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_114(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_43_0(v2);

  return v6(v4);
}

uint64_t dispatch thunk of SiriAutoCompleteIndexBuilder.run(onStartUpEvent:)()
{
  OUTLINED_FUNCTION_99_0();
  v2 = v1;
  v7 = (*(*v0 + 200) + **(*v0 + 200));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_114(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_87_0(v4);

  return v7(v2);
}

uint64_t type metadata accessor for SiriAutoCompleteIndexBuilder.TapCountInfo(uint64_t a1)
{
  result = qword_281225F80;
  if (!qword_281225F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E559FB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAutoCompleteIndexBuilder.TapCountInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E55A01C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAutoCompleteIndexBuilder.TapCountInfo(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E55A080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAutoCompleteIndexBuilder.TapCountInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E55A0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 336) = v17;
  *(v8 + 344) = v18;
  *(v8 + 560) = a8;
  *(v8 + 320) = a7;
  *(v8 + 328) = v16;
  *(v8 + 304) = a4;
  *(v8 + 312) = a6;
  *(v8 + 288) = a2;
  *(v8 + 296) = a3;
  v10 = sub_21E57B5EC();
  *(v8 + 352) = v10;
  *(v8 + 360) = *(v10 - 8);
  *(v8 + 368) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88D8, &unk_21E57D3B0);
  *(v8 + 376) = swift_task_alloc();
  v11 = type metadata accessor for SiriAutoCompleteIndexBuilder.TapCountInfo(0);
  *(v8 + 384) = v11;
  *(v8 + 392) = *(v11 - 8);
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();
  v12 = sub_21E57B53C();
  *(v8 + 416) = v12;
  *(v8 + 424) = *(v12 - 8);
  *(v8 + 432) = swift_task_alloc();
  v13 = sub_21E57B3DC();
  *(v8 + 440) = v13;
  *(v8 + 448) = *(v13 - 8);
  *(v8 + 456) = swift_task_alloc();
  *(v8 + 464) = swift_task_alloc();
  *(v8 + 40) = v17;
  *(v8 + 48) = v18;
  *(v8 + 472) = __swift_allocate_boxed_opaque_existential_3((v8 + 16));
  (*(*(v17 - 8) + 16))();
  *(v8 + 80) = type metadata accessor for DefaultEligibilityCriteria();
  *(v8 + 88) = &off_282F92F38;
  *(v8 + 56) = a5;

  return MEMORY[0x2822009F8](sub_21E55A3A0);
}

uint64_t sub_21E55A3A0()
{
  OUTLINED_FUNCTION_152();
  *(v0 + 480) = sub_21E57B4FC();
  if (qword_281225EF8 != -1)
  {
    OUTLINED_FUNCTION_129(&qword_281225EF8);
  }

  *(v0 + 488) = qword_281226A08;
  sub_21E57B4EC();
  sub_21E534F3C(v0 + 16, v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8C20, &qword_21E57DB78);
  type metadata accessor for SiriKitIntentSource(0);
  if (swift_dynamicCast())
  {

    OUTLINED_FUNCTION_73_0();
    v14 = (v1 + *v1);
    v2 = swift_task_alloc();
    *(v0 + 496) = v2;
    *v2 = v0;
    v2[1] = sub_21E55A670;
    v3 = *(v0 + 336);
    v4 = *(v0 + 344);
    v5 = *(v0 + 288);
    v6 = *(v0 + 296);

    return v14(v0 + 56, v5, v6, v3, v4);
  }

  else
  {
    v9 = *(v0 + 288);
    v8 = *(v0 + 296);
    sub_21E534F3C(v0 + 16, v0 + 136);
    sub_21E534F3C(v0 + 56, v0 + 176);
    v10 = swift_allocObject();
    *(v0 + 512) = v10;
    sub_21E529804((v0 + 136), v10 + 16);
    sub_21E529804((v0 + 176), v10 + 56);
    *(v10 + 96) = v9;
    *(v10 + 104) = v8;

    v11 = swift_task_alloc();
    *(v0 + 520) = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8C28, &qword_21E57DB90);
    *v11 = v0;
    v11[1] = sub_21E55ABC0;
    v13.n128_u64[0] = 0x4056800000000000;

    return MEMORY[0x2821C8618](v0 + 264, &unk_21E57DB88, v10, v12, v13);
  }
}

uint64_t sub_21E55A670()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 504) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_21E55A758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_234();
  a27 = v34;
  a28 = v35;
  a26 = v29;
  v36 = v29[63];
  if (qword_281226930 != -1)
  {
LABEL_58:
    OUTLINED_FUNCTION_23_1(&qword_281226930);
  }

  v37 = v29[56];
  v38 = &dword_281226A40;
  os_unfair_lock_lock(&dword_281226A40);
  v73 = qword_281226A48;
  v74 = qword_281226A50;

  os_unfair_lock_unlock(&dword_281226A40);
  a17 = MEMORY[0x277D84F90];
  sub_21E529E5C(v36);
  OUTLINED_FUNCTION_193();
  OUTLINED_FUNCTION_228();
  while (a16 != v31)
  {
    if (a15)
    {
      v40 = MEMORY[0x223D5CE50](v31, v36);
      v33 = v40;
    }

    else
    {
      OUTLINED_FUNCTION_232();
      if (v31 >= v39)
      {
        goto LABEL_57;
      }

      v33 = *(v36 + 8 * v31 + 32);
    }

    if (__OFADD__(v31, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    OUTLINED_FUNCTION_161(v40);
    v41 = OUTLINED_FUNCTION_198();
    v42(v41);
    sub_21E542E98();
    OUTLINED_FUNCTION_94_0();
    sub_21E57B73C();
    OUTLINED_FUNCTION_94_0();
    sub_21E57B73C();
    v43 = *v30;
    v44 = OUTLINED_FUNCTION_62_0();
    v43(v44);
    (v43)(v32, v28);
    if (v29[34] == v29[35])
    {
      v32 = 1;
    }

    else
    {
      v45 = sub_21E57B43C();
      if (v46)
      {
        if (v45 == v73 && v46 == v74)
        {
          v32 = 1;
        }

        else
        {
          v32 = sub_21E57BB3C();
        }
      }

      else
      {
        v32 = 0;
      }
    }

    if (qword_281226988 != -1)
    {
      OUTLINED_FUNCTION_22_1();
      swift_once();
    }

    LOBYTE(v38) = qword_281226A58;
    if ((sub_21E537304(v33) & 1) != 0 || (v32 & 1) == 0)
    {
    }

    else
    {
      sub_21E57B98C();
      v37 = *(a17 + 16);
      OUTLINED_FUNCTION_227();
      sub_21E57B9AC();
      OUTLINED_FUNCTION_227();
      sub_21E57B9BC();
      v38 = &a17;
      sub_21E57B99C();
    }

    ++v31;
  }

  v48 = sub_21E529E5C(a17);
  if (v48)
  {
    v49 = v48;
    if (v48 >= 1)
    {
      OUTLINED_FUNCTION_203();
      while (1)
      {
        if (v33)
        {
          v50 = OUTLINED_FUNCTION_94_0();
          MEMORY[0x223D5CE50](v50);
        }

        else
        {
          OUTLINED_FUNCTION_212();
        }

        sub_21E57B45C();
        OUTLINED_FUNCTION_171();
        if (v52)
        {
          OUTLINED_FUNCTION_211(v51);
          OUTLINED_FUNCTION_128();
          if (v37)
          {
            v37 = v29[51];
            OUTLINED_FUNCTION_60_0();
            OUTLINED_FUNCTION_208(v53);
            sub_21E55BCD8(v37);
          }
        }

        else
        {
        }

        sub_21E57B49C();
        sub_21E57B45C();
        OUTLINED_FUNCTION_171();
        if (!v55)
        {
          break;
        }

        OUTLINED_FUNCTION_211(v54);
        OUTLINED_FUNCTION_128();
        if ((v37 & 1) == 0)
        {
          goto LABEL_41;
        }

        v37 = v29[50];
        OUTLINED_FUNCTION_60_0();
        OUTLINED_FUNCTION_208(v56);
        OUTLINED_FUNCTION_217(a15);
LABEL_42:
        OUTLINED_FUNCTION_214();

        if (v49 == v28)
        {
          sub_21E57B52C();
          OUTLINED_FUNCTION_146();
          sub_21E57B50C();
          OUTLINED_FUNCTION_219();

          OUTLINED_FUNCTION_216(v58);

          goto LABEL_52;
        }
      }

LABEL_41:
      v57 = sub_21E57AC4C();
      OUTLINED_FUNCTION_163(v57);
      goto LABEL_42;
    }

    __break(1u);
    return MEMORY[0x2821B7108](v48);
  }

  v60 = v29[36];
  v59 = v29[37];
  sub_21E57B52C();
  OUTLINED_FUNCTION_146();
  sub_21E57B50C();
  OUTLINED_FUNCTION_219();

  OUTLINED_FUNCTION_216(v61);

  if (v73 == v60 && v74 == v59)
  {
LABEL_52:
  }

  else
  {
    sub_21E57BB3C();
    OUTLINED_FUNCTION_115();

    if ((v38 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_1(v29[41]);
      v63 = swift_task_alloc();
      v64 = OUTLINED_FUNCTION_223(v63);
      *v64 = v65;
      OUTLINED_FUNCTION_14_1(v64);
      OUTLINED_FUNCTION_162();

      return MEMORY[0x2821B7108](v48);
    }
  }

  v67 = OUTLINED_FUNCTION_55_0();
  v68(v67);
  v69 = swift_task_alloc();
  v29[69] = v69;
  *v69 = v29;
  OUTLINED_FUNCTION_27_0(v69);
  OUTLINED_FUNCTION_162();

  return MEMORY[0x2821B7120](v70);
}

uint64_t sub_21E55ABC0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  v3 = v2;
  OUTLINED_FUNCTION_46_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 528) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_76_0();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_21E55ACC0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 544) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4);
}

void sub_21E55ADA8()
{
  (*(v0[53] + 8))(v0[54], v0[52]);
  sub_21E57B4DC();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_54();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_21E55AEBC()
{
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_32();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_90();
  v4(v3);
  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_21E55AFF8()
{
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_17_1(*(v0 + 328));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_223(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_14_1(v2);

  return MEMORY[0x2821B7108](v4);
}

uint64_t sub_21E55B074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_234();
  a27 = v34;
  a28 = v35;
  a26 = v29;
  v36 = v29[33];
  if (qword_281226930 != -1)
  {
LABEL_58:
    OUTLINED_FUNCTION_23_1(&qword_281226930);
  }

  v37 = v29[56];
  v38 = &dword_281226A40;
  os_unfair_lock_lock(&dword_281226A40);
  v73 = qword_281226A48;
  v74 = qword_281226A50;

  os_unfair_lock_unlock(&dword_281226A40);
  a17 = MEMORY[0x277D84F90];
  sub_21E529E5C(v36);
  OUTLINED_FUNCTION_193();
  OUTLINED_FUNCTION_228();
  while (a16 != v31)
  {
    if (a15)
    {
      v40 = MEMORY[0x223D5CE50](v31, v36);
      v33 = v40;
    }

    else
    {
      OUTLINED_FUNCTION_232();
      if (v31 >= v39)
      {
        goto LABEL_57;
      }

      v33 = *(v36 + 8 * v31 + 32);
    }

    if (__OFADD__(v31, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    OUTLINED_FUNCTION_161(v40);
    v41 = OUTLINED_FUNCTION_198();
    v42(v41);
    sub_21E542E98();
    OUTLINED_FUNCTION_94_0();
    sub_21E57B73C();
    OUTLINED_FUNCTION_94_0();
    sub_21E57B73C();
    v43 = *v30;
    v44 = OUTLINED_FUNCTION_62_0();
    v43(v44);
    (v43)(v32, v28);
    if (v29[34] == v29[35])
    {
      v32 = 1;
    }

    else
    {
      v45 = sub_21E57B43C();
      if (v46)
      {
        if (v45 == v73 && v46 == v74)
        {
          v32 = 1;
        }

        else
        {
          v32 = sub_21E57BB3C();
        }
      }

      else
      {
        v32 = 0;
      }
    }

    if (qword_281226988 != -1)
    {
      OUTLINED_FUNCTION_22_1();
      swift_once();
    }

    LOBYTE(v38) = qword_281226A58;
    if ((sub_21E537304(v33) & 1) != 0 || (v32 & 1) == 0)
    {
    }

    else
    {
      sub_21E57B98C();
      v37 = *(a17 + 16);
      OUTLINED_FUNCTION_227();
      sub_21E57B9AC();
      OUTLINED_FUNCTION_227();
      sub_21E57B9BC();
      v38 = &a17;
      sub_21E57B99C();
    }

    ++v31;
  }

  v48 = sub_21E529E5C(a17);
  if (v48)
  {
    v49 = v48;
    if (v48 >= 1)
    {
      OUTLINED_FUNCTION_203();
      while (1)
      {
        if (v33)
        {
          v50 = OUTLINED_FUNCTION_94_0();
          MEMORY[0x223D5CE50](v50);
        }

        else
        {
          OUTLINED_FUNCTION_212();
        }

        sub_21E57B45C();
        OUTLINED_FUNCTION_171();
        if (v52)
        {
          OUTLINED_FUNCTION_211(v51);
          OUTLINED_FUNCTION_128();
          if (v37)
          {
            v37 = v29[51];
            OUTLINED_FUNCTION_60_0();
            OUTLINED_FUNCTION_208(v53);
            sub_21E55BCD8(v37);
          }
        }

        else
        {
        }

        sub_21E57B49C();
        sub_21E57B45C();
        OUTLINED_FUNCTION_171();
        if (!v55)
        {
          break;
        }

        OUTLINED_FUNCTION_211(v54);
        OUTLINED_FUNCTION_128();
        if ((v37 & 1) == 0)
        {
          goto LABEL_41;
        }

        v37 = v29[50];
        OUTLINED_FUNCTION_60_0();
        OUTLINED_FUNCTION_208(v56);
        OUTLINED_FUNCTION_217(a15);
LABEL_42:
        OUTLINED_FUNCTION_214();

        if (v49 == v28)
        {
          sub_21E57B52C();
          OUTLINED_FUNCTION_146();
          sub_21E57B50C();
          OUTLINED_FUNCTION_219();

          OUTLINED_FUNCTION_216(v58);

          goto LABEL_52;
        }
      }

LABEL_41:
      v57 = sub_21E57AC4C();
      OUTLINED_FUNCTION_163(v57);
      goto LABEL_42;
    }

    __break(1u);
    return MEMORY[0x2821B7108](v48);
  }

  v60 = v29[36];
  v59 = v29[37];
  sub_21E57B52C();
  OUTLINED_FUNCTION_146();
  sub_21E57B50C();
  OUTLINED_FUNCTION_219();

  OUTLINED_FUNCTION_216(v61);

  if (v73 == v60 && v74 == v59)
  {
LABEL_52:
  }

  else
  {
    sub_21E57BB3C();
    OUTLINED_FUNCTION_115();

    if ((v38 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_1(v29[41]);
      v63 = swift_task_alloc();
      v64 = OUTLINED_FUNCTION_223(v63);
      *v64 = v65;
      OUTLINED_FUNCTION_14_1(v64);
      OUTLINED_FUNCTION_162();

      return MEMORY[0x2821B7108](v48);
    }
  }

  v67 = OUTLINED_FUNCTION_55_0();
  v68(v67);
  v69 = swift_task_alloc();
  v29[69] = v69;
  *v69 = v29;
  OUTLINED_FUNCTION_27_0(v69);
  OUTLINED_FUNCTION_162();

  return MEMORY[0x2821B7120](v70);
}

uint64_t sub_21E55B4DC()
{
  v54 = v0;

  sub_21E57B5BC();
  sub_21E534F3C((v0 + 2), (v0 + 27));
  v2 = sub_21E57B5DC();
  v3 = sub_21E57B86C();
  v4 = OUTLINED_FUNCTION_48(v3);
  v5 = v0[66];
  v6 = v0[45];
  v7 = v0[46];
  v8 = v0[44];
  if (v4)
  {
    OUTLINED_FUNCTION_50();
    v53 = OUTLINED_FUNCTION_2_0();
    *v7 = 136315138;
    __swift_project_boxed_opaque_existential_1(v0 + 27, v0[30]);
    swift_getDynamicType();
    v9 = sub_21E57BC2C();
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);
    v1 = sub_21E5553D8(v9, v11, &v53);

    *(v7 + 4) = v1;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_20();

    (*(v6 + 8))(v7, v8);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);
    (*(v6 + 8))(v7, v8);
  }

  if (qword_281226930 != -1)
  {
LABEL_56:
    OUTLINED_FUNCTION_23_1(&qword_281226930);
  }

  v17 = v0[56];
  os_unfair_lock_lock(&dword_281226A40);
  v46 = qword_281226A48;
  v47 = qword_281226A50;

  os_unfair_lock_unlock(&dword_281226A40);
  v18 = MEMORY[0x277D84F90];
  v53 = MEMORY[0x277D84F90];
  v52 = sub_21E529E5C(MEMORY[0x277D84F90]);
  v19 = 0;
  v49 = v18 & 0xFFFFFFFFFFFFFF8;
  v48 = *MEMORY[0x277D55848];
  v20 = (v17 + 104);
  v21 = (v17 + 8);
  v50 = v18 >> 62;
  while (v52 != v19)
  {
    if (v50)
    {
      v23 = MEMORY[0x223D5CE50](v19, MEMORY[0x277D84F90]);
      v22 = v23;
    }

    else
    {
      if (v19 >= *(v49 + 16))
      {
        goto LABEL_55;
      }

      v22 = *(MEMORY[0x277D84F90] + 8 * v19 + 32);
    }

    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    OUTLINED_FUNCTION_161(v23);
    (*v20)(v17, v48, v8);
    sub_21E542E98();
    OUTLINED_FUNCTION_94_0();
    sub_21E57B73C();
    OUTLINED_FUNCTION_94_0();
    sub_21E57B73C();
    v24 = *v21;
    v25 = OUTLINED_FUNCTION_62_0();
    v24(v25);
    (v24)(v1, v8);
    if (v0[34] == v0[35])
    {
      v1 = 1;
    }

    else
    {
      v26 = sub_21E57B43C();
      if (v27)
      {
        if (v26 == v46 && v27 == v47)
        {
          v1 = 1;
        }

        else
        {
          v1 = sub_21E57BB3C();
        }
      }

      else
      {
        v1 = 0;
      }
    }

    if (qword_281226988 != -1)
    {
      OUTLINED_FUNCTION_22_1();
      swift_once();
    }

    if ((sub_21E537304(v22) & 1) != 0 || (v1 & 1) == 0)
    {
    }

    else
    {
      sub_21E57B98C();
      v17 = *(v53 + 16);
      sub_21E57B9AC();
      sub_21E57B9BC();
      sub_21E57B99C();
    }

    ++v19;
  }

  v29 = v53;
  v30 = sub_21E529E5C(v53);
  if (v30)
  {
    if (v30 >= 1)
    {
      v51 = v0[48];
      v31 = v0[38];
      while (1)
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          v32 = OUTLINED_FUNCTION_94_0();
          MEMORY[0x223D5CE50](v32);
        }

        else
        {
          OUTLINED_FUNCTION_212();
        }

        sub_21E57B45C();
        OUTLINED_FUNCTION_171();
        if (v34)
        {
          OUTLINED_FUNCTION_211(v33);
          OUTLINED_FUNCTION_128();
          if (v17)
          {
            v17 = v0[51];
            OUTLINED_FUNCTION_208(*(v31 + 56));
            sub_21E55BCD8(v17);
          }
        }

        else
        {
        }

        sub_21E57B49C();
        sub_21E57B45C();
        OUTLINED_FUNCTION_171();
        if (v36)
        {
          OUTLINED_FUNCTION_211(v35);
          OUTLINED_FUNCTION_128();
          if (v17)
          {
            v17 = v0[50];
            OUTLINED_FUNCTION_208(*(v31 + 56));
            OUTLINED_FUNCTION_217(v51);
            goto LABEL_45;
          }
        }

        else
        {
        }

        v37 = sub_21E57AC4C();
        OUTLINED_FUNCTION_163(v37);
LABEL_45:
        OUTLINED_FUNCTION_214();
      }
    }

    __break(1u);
  }

  else
  {
    v39 = v0[36];
    v38 = v0[37];
    sub_21E57B52C();
    OUTLINED_FUNCTION_146();
    sub_21E57B50C();
    OUTLINED_FUNCTION_219();

    OUTLINED_FUNCTION_216(v40);

    if (v46 != v39 || v47 != v38)
    {
      sub_21E57BB3C();
    }

    OUTLINED_FUNCTION_17_1(v0[41]);
    v42 = swift_task_alloc();
    v43 = OUTLINED_FUNCTION_223(v42);
    *v43 = v44;
    v30 = OUTLINED_FUNCTION_14_1(v43);
  }

  return MEMORY[0x2821B7108](v30);
}

uint64_t sub_21E55BADC()
{
  OUTLINED_FUNCTION_99_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_114(v0);
  *v1 = v2;
  v1[1] = sub_21E55BB84;
  OUTLINED_FUNCTION_224();

  return sub_21E553A90(v3, v4, v5, v6, v7);
}

uint64_t sub_21E55BB84()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_21E55BC68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88D8, &unk_21E57D3B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E55BCD8(uint64_t a1)
{
  v2 = type metadata accessor for SiriAutoCompleteIndexBuilder.TapCountInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return OUTLINED_FUNCTION_150(a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_21E55BDA8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_21E55BDFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8BF8, &qword_21E57D9A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_21E55BE94(uint64_t a1)
{
  sub_21E55BF10(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_21E55BF10(uint64_t a1)
{
  if (!qword_2812260C8)
  {
    sub_21E57AC4C();
    v1 = sub_21E57B89C();
    if (!v2)
    {
      atomic_store(v1, &qword_2812260C8);
    }
  }
}

uint64_t OUTLINED_FUNCTION_8_2@<X0>(uint64_t a1@<X8>)
{
  v4[3] = v1;
  v4[4] = v3;
  v4[2] = a1;
  return v2;
}

uint64_t OUTLINED_FUNCTION_11_3@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v15[36] = a12;
  v15[37] = a14;
  v18 = *(v16 - 88);
  v15[34] = *(v16 - 96);
  v15[35] = a1;
  v15[32] = a15;
  v15[33] = v18;

  return sub_21E57B3BC();
}

void OUTLINED_FUNCTION_13_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v20 + 4) = v21;
  *(v20 + 12) = 2048;
  *(v20 + 14) = a20;
}

void OUTLINED_FUNCTION_16_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v24 = *(v23 - 96);
  v22[54] = *(v23 - 88);
  v22[55] = v24;
  v22[53] = a22;
}

void OUTLINED_FUNCTION_19_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v20 + 4) = v21;
  *(v20 + 12) = 2048;
  *(v20 + 14) = a20;
}

uint64_t OUTLINED_FUNCTION_21_1(uint64_t result, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *result = a2;
  *(result + 4) = v20;
  *(result + 8) = 2048;
  *(result + 10) = a20;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_1(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_25_2()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x223D5D740);
}

uint64_t OUTLINED_FUNCTION_29_0(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v2;
  *(result + 8) = 2048;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15)
{
  *(v16 - 80) = a1;
  *v15 = a15;

  return sub_21E57BC2C();
}

uint64_t OUTLINED_FUNCTION_33_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  *(v10 - 80) = a1;
  *v9 = a9;

  return sub_21E57BC2C();
}

uint64_t OUTLINED_FUNCTION_34_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15)
{
  *(v16 - 80) = a1;
  *v15 = a15;

  return sub_21E57BC2C();
}

void OUTLINED_FUNCTION_41_0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x223D5D740);
}

uint64_t OUTLINED_FUNCTION_54_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_55_0()
{
  v1 = *(v0 + 336);
  __swift_project_boxed_opaque_existential_1((*(v0 + 328) + 16), *(*(v0 + 328) + 40));
  return v1;
}

uint64_t OUTLINED_FUNCTION_61_0()
{

  return sub_21E57BB3C();
}

uint64_t OUTLINED_FUNCTION_65_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_66_0()
{

  return sub_21E57B16C();
}

void OUTLINED_FUNCTION_67_0()
{
  v3 = *(v1 + 216);
  v4 = *(v1 + 224);

  sub_21E5502BC(v3, v4, v0 & 1);
}

uint64_t OUTLINED_FUNCTION_68_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_69_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_70_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_71_0()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_75_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_81_0()
{

  JUMPOUT(0x223D5D740);
}

uint64_t OUTLINED_FUNCTION_83_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_84_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_85_0()
{

  JUMPOUT(0x223D5D740);
}

void OUTLINED_FUNCTION_86_0()
{

  JUMPOUT(0x223D5D740);
}

BOOL OUTLINED_FUNCTION_89_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL OUTLINED_FUNCTION_92_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_95_0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x223D5D740);
}

double OUTLINED_FUNCTION_103_0(uint64_t a1)
{
  v1[35] = v2;
  v1[36] = v3;
  v5 = __clz(__rbit64(v2)) | (v3 << 6);
  v6 = (*(a1 + 48) + 16 * v5);
  v1[37] = *v6;
  v1[38] = v6[1];
  v1[39] = *(*(a1 + 56) + 8 * v5);

  return result;
}

void OUTLINED_FUNCTION_105_0()
{
}

uint64_t OUTLINED_FUNCTION_106_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_107_0(float a1)
{
  *v1 = a1;

  return sub_21E57BC2C();
}

uint64_t OUTLINED_FUNCTION_111()
{
}

uint64_t OUTLINED_FUNCTION_121(uint64_t a1)
{
  *(v2 + 4) = v1;
  *(v2 + 12) = 2048;

  return sub_21E57B3CC();
}

uint64_t OUTLINED_FUNCTION_122()
{
}

BOOL OUTLINED_FUNCTION_123(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_124()
{
  sub_21E529804((v0 + 56), v0 + 16);

  return sub_21E54A648((v0 + 96));
}

uint64_t OUTLINED_FUNCTION_128()
{
}

uint64_t OUTLINED_FUNCTION_129(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_130(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_149(float a1)
{
  *v1 = a1;

  return sub_21E57BC2C();
}

uint64_t OUTLINED_FUNCTION_158(uint64_t a1, unint64_t a2)
{

  return sub_21E5553D8(a1, a2, (v2 - 80));
}

uint64_t OUTLINED_FUNCTION_159()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_161(uint64_t a1)
{

  return sub_21E57B46C();
}

uint64_t OUTLINED_FUNCTION_163(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_164(uint64_t a1, unint64_t a2)
{

  return sub_21E5553D8(a1, a2, (v2 - 80));
}

uint64_t OUTLINED_FUNCTION_170()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_173(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;

  return sub_21E57B5EC();
}

uint64_t OUTLINED_FUNCTION_174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  a19 = a1;
  *v20 = a11;

  return sub_21E5553D8(a16, v19, &a19);
}

uint64_t OUTLINED_FUNCTION_178()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_179(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_182(uint64_t a1)
{

  return sub_21E57B5BC();
}

uint64_t OUTLINED_FUNCTION_183()
{
}

uint64_t OUTLINED_FUNCTION_184()
{

  return sub_21E57B58C();
}

uint64_t OUTLINED_FUNCTION_186()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_187()
{

  return swift_task_alloc();
}

double OUTLINED_FUNCTION_188()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_191(uint64_t a1)
{

  return sub_21E57B5BC();
}

uint64_t OUTLINED_FUNCTION_192(uint64_t a1)
{

  return sub_21E57B5BC();
}

uint64_t OUTLINED_FUNCTION_195()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
}

unint64_t OUTLINED_FUNCTION_197(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_21E5294D8(a3);

  return sub_21E5559FC(a2, v5, a3);
}

void OUTLINED_FUNCTION_204(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

void OUTLINED_FUNCTION_205(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_206()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_207(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_208@<X0>(uint64_t a1@<X8>)
{

  return sub_21E55A080(a1 + v1 * v3, v2);
}

uint64_t OUTLINED_FUNCTION_209(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  *(v18 + 4) = a1;
  *(v18 + 12) = 2080;

  return sub_21E5553D8(a14, a15, va);
}

double OUTLINED_FUNCTION_210@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[27] = a1;
  v3[28] = a2;
  v3[24] = v2;

  return result;
}

unint64_t OUTLINED_FUNCTION_211(uint64_t a1)
{

  return sub_21E52F7C4(a1);
}

double OUTLINED_FUNCTION_212()
{

  return result;
}

void *OUTLINED_FUNCTION_213()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 - 184));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  return v0 + 3;
}

uint64_t OUTLINED_FUNCTION_214()
{
  v2 = *(v0 + 376);

  return MEMORY[0x2821B71A8](v2);
}

uint64_t OUTLINED_FUNCTION_215(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_216(uint64_t a1)
{

  return sub_21E57B51C();
}

uint64_t OUTLINED_FUNCTION_217@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + *(a1 + 20);

  return sub_21E55BC68(v4, v2);
}

double OUTLINED_FUNCTION_218@<D0>(uint64_t a1@<X8>)
{
  *(v1 + 344) = *(a1 + 40);

  return result;
}

uint64_t OUTLINED_FUNCTION_219()
{
}

BOOL OUTLINED_FUNCTION_220()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_221()
{
}

void OUTLINED_FUNCTION_222()
{
  v2 = *(v0 + 264);
  *(v1 - 96) = *(v0 + 272);
  *(v1 - 88) = v2;
}

uint64_t OUTLINED_FUNCTION_235()
{
}

void OUTLINED_FUNCTION_236(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_237(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

void *OUTLINED_FUNCTION_238()
{

  return __swift_project_boxed_opaque_existential_1((v1 + 16), v0);
}

uint64_t OUTLINED_FUNCTION_239()
{
}

uint64_t OUTLINED_FUNCTION_240()
{
}

uint64_t OUTLINED_FUNCTION_241()
{
}

uint64_t sub_21E55D538()
{
  v8 = sub_21E57B62C();
  v0 = [objc_opt_self() enumeratorWithOptions_];
  aBlock[4] = sub_21E55D69C;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E529E04;
  aBlock[3] = &block_descriptor_3;
  v1 = _Block_copy(aBlock);
  [v0 setFilter_];
  _Block_release(v1);
  for (i = 1000; ; --i)
  {
    v3 = [v0 nextObject];
    if (!v3)
    {
      break;
    }

    v4 = v3;
    if (!i)
    {

      break;
    }

    v5 = MEMORY[0x223D5D190]();
    sub_21E55D6E8(v4, &v8);
    objc_autoreleasePoolPop(v5);
  }

  return v8;
}

id sub_21E55D69C(void *a1)
{
  v1 = [a1 applicationState];
  v2 = [v1 isInstalled];

  return v2;
}

uint64_t sub_21E55D6E8(void *a1, uint64_t *a2)
{
  v5 = sub_21E57B5EC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v109 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v114 = v109 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v115 = v109 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v116 = v109 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v117 = v109 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v118 = v109 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v109 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = v109 - v26;
  result = sub_21E55E640(a1);
  if (!v29)
  {
    return result;
  }

  v110 = v9;
  v111 = a2;
  v112 = v12;
  v113 = result;
  v120 = v6;
  v121 = v29;
  v30 = sub_21E55E6A4([a1 compatibilityObject]);
  v32 = v31;
  v33 = sub_21E57B67C();
  v119 = v5;
  if (v32)
  {
    if (v30 == v33 && v32 == v34)
    {
      goto LABEL_17;
    }

    v36 = sub_21E57BB3C();

    if (v36)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v37 = sub_21E57B67C();
  if (!v32)
  {

    goto LABEL_25;
  }

  if (v30 == v37 && v32 == v38)
  {
LABEL_17:

LABEL_18:

    goto LABEL_19;
  }

  v40 = sub_21E57BB3C();

  if (v40)
  {
LABEL_19:
    sub_21E57B5BC();
    v41 = v121;

    v42 = sub_21E57B5DC();
    v43 = sub_21E57B85C();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v122 = v45;
      *v44 = 136315138;
      v46 = sub_21E5553D8(v113, v41, &v122);

      *(v44 + 4) = v46;
      _os_log_impl(&dword_21E527000, v42, v43, "Application %s is internal type or is hidden app type. Not indexing", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      MEMORY[0x223D5D740](v45, -1, -1);
      MEMORY[0x223D5D740](v44, -1, -1);
    }

    else
    {
    }

    return (*(v120 + 8))(v27, v119);
  }

LABEL_25:
  v109[1] = v2;
  v47 = [a1 appTags];
  v48 = sub_21E57B78C();

  v49 = v48 + 40;
  v50 = -*(v48 + 16);
  v51 = -1;
  while (v50 + v51 != -1)
  {
    if (++v51 >= *(v48 + 16))
    {
      __break(1u);
LABEL_58:
      v68 = v110;
      sub_21E57B5BC();

      v104 = sub_21E57B5DC();
      v105 = sub_21E57B86C();

      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v122 = v107;
        *v106 = 136315138;
        v108 = sub_21E5553D8(v113, v50, &v122);

        *(v106 + 4) = v108;
        _os_log_impl(&dword_21E527000, v104, v105, "Unable to fetch App Info for bundleId: %s", v106, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v107);
        MEMORY[0x223D5D740](v107, -1, -1);
        MEMORY[0x223D5D740](v106, -1, -1);

        return (*(v120 + 8))(v68, v119);
      }

LABEL_52:

      return (*(v120 + 8))(v68, v119);
    }

    v52 = v49 + 16;

    v53 = sub_21E57B70C();

    v49 = v52;
    if (v53)
    {

      sub_21E57B5BC();
      v54 = v121;

      v55 = sub_21E57B5DC();
      v56 = sub_21E57B85C();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v122 = v58;
        *v57 = 136315138;
        v59 = sub_21E5553D8(v113, v54, &v122);

        *(v57 + 4) = v59;
        _os_log_impl(&dword_21E527000, v55, v56, "iOS Application %s has hidden tag. Not indexing", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v58);
        MEMORY[0x223D5D740](v58, -1, -1);
        MEMORY[0x223D5D740](v57, -1, -1);
      }

      else
      {
      }

      return (*(v120 + 8))(v25, v119);
    }
  }

  if ([a1 isLaunchProhibited])
  {
    v60 = v118;
    sub_21E57B5BC();
    v61 = v121;

    v62 = sub_21E57B5DC();
    v63 = sub_21E57B85C();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v122 = v65;
      *v64 = 136315138;
      v66 = sub_21E5553D8(v113, v61, &v122);

      *(v64 + 4) = v66;
      _os_log_impl(&dword_21E527000, v62, v63, "iOS Application %s has launch prohibited. Not indexing", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v65);
      MEMORY[0x223D5D740](v65, -1, -1);
      MEMORY[0x223D5D740](v64, -1, -1);
    }

    else
    {
    }

    return (*(v120 + 8))(v60, v119);
  }

  v67 = [a1 appClipMetadata];
  v50 = v121;
  if (v67)
  {

    v68 = v117;
    sub_21E57B5BC();

    v69 = sub_21E57B5DC();
    v70 = sub_21E57B85C();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v122 = v72;
      *v71 = 136315138;
      v73 = sub_21E5553D8(v113, v50, &v122);

      *(v71 + 4) = v73;
      v74 = "iOS Application %s is an appClipMetadata. Not indexing";
LABEL_50:
      _os_log_impl(&dword_21E527000, v69, v70, v74, v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v72);
      MEMORY[0x223D5D740](v72, -1, -1);
      MEMORY[0x223D5D740](v71, -1, -1);

      return (*(v120 + 8))(v68, v119);
    }

    goto LABEL_51;
  }

  v75 = [a1 applicationState];
  v76 = [v75 isRestricted];

  if (v76)
  {
    v68 = v116;
    sub_21E57B5BC();

    v69 = sub_21E57B5DC();
    v70 = sub_21E57B85C();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v122 = v72;
      *v71 = 136315138;
      v77 = sub_21E5553D8(v113, v50, &v122);

      *(v71 + 4) = v77;
      v74 = "Application %s is Restricted. Not indexing";
      goto LABEL_50;
    }

LABEL_51:

    goto LABEL_52;
  }

  v78 = v113;
  if (sub_21E57B70C())
  {
    v68 = v115;
    sub_21E57B5BC();

    v69 = sub_21E57B5DC();
    v70 = sub_21E57B85C();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v122 = v72;
      *v71 = 136315138;
      v79 = sub_21E5553D8(v113, v50, &v122);

      *(v71 + 4) = v79;
      v74 = "Application %s is a webapp or webclips. Not indexing";
      goto LABEL_50;
    }

    goto LABEL_51;
  }

  type metadata accessor for DefaultInstalledAppProvider();
  if (sub_21E55E4F4(v78, v50))
  {
    v68 = v114;
    sub_21E57B5BC();

    v69 = sub_21E57B5DC();
    v70 = sub_21E57B85C();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v122 = v72;
      *v71 = 136315138;
      v80 = sub_21E5553D8(v113, v50, &v122);

      *(v71 + 4) = v80;
      v74 = "Application %s is not launchable. Not indexing";
      goto LABEL_50;
    }

    goto LABEL_51;
  }

  v81 = [objc_opt_self() appInfoWithApplicationRecord_];
  if (!v81)
  {
    goto LABEL_58;
  }

  v82 = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8940, &qword_21E57C4C0);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_21E57C390;
  sub_21E57B56C();
  sub_21E57B55C();
  v84 = sub_21E57B54C();
  v86 = v85;

  *(v83 + 32) = v84;
  *(v83 + 40) = v86;
  v87 = sub_21E57B77C();

  v88 = [a1 localizedNameWithPreferredLocalizations_];

  v89 = sub_21E57B67C();
  v91 = v90;

  v118 = v82;
  v92 = [v82 supportedIntents];
  v93 = sub_21E57B80C();

  v94 = v111;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v122 = *v94;
  v96 = v113;
  sub_21E546068(v89, v91, v93, v113, v50, isUniquelyReferenced_nonNull_native);
  *v94 = v122;
  v97 = v112;
  sub_21E57B5BC();

  v98 = sub_21E57B5DC();
  v99 = sub_21E57B85C();

  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v122 = v101;
    *v100 = 136315394;
    v102 = sub_21E5553D8(v89, v91, &v122);

    *(v100 + 4) = v102;
    *(v100 + 12) = 2080;
    v103 = sub_21E5553D8(v96, v50, &v122);

    *(v100 + 14) = v103;
    _os_log_impl(&dword_21E527000, v98, v99, "Added application name: %s bundleId: %s to list of installedApps", v100, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D5D740](v101, -1, -1);
    MEMORY[0x223D5D740](v100, -1, -1);
  }

  else
  {
  }

  return (*(v120 + 8))(v97, v119);
}

uint64_t sub_21E55E4F4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8940, &qword_21E57C4C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E57D990;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x800000021E57F9C0;
  *(inited + 48) = 0xD000000000000011;
  *(inited + 56) = 0x800000021E57F9E0;
  strcpy((inited + 64), "com.apple.siri");
  *(inited + 79) = -18;
  v7[0] = a1;
  v7[1] = a2;
  v6[2] = v7;
  LOBYTE(a2) = sub_21E56E084(sub_21E540070, v6, inited);
  swift_setDeallocating();
  sub_21E5552D4();
  return a2 & 1;
}

double block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_21E55E640(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21E57B67C();

  return v3;
}

uint64_t sub_21E55E6A4(void *a1)
{
  v2 = [a1 applicationType];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_21E57B67C();

  return v3;
}

uint64_t sub_21E55E728()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_14_2(v0, v1, v2, v3, v4);
  OUTLINED_FUNCTION_73_0();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_114(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_11_4(v6);

  return v9(v8);
}

uint64_t sub_21E55E854(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v120 = a7;
  v121 = a8;
  v114 = a5;
  v115 = a1;
  v116 = a4;
  v118 = a2;
  v119 = a3;
  v105 = sub_21E57ACFC();
  OUTLINED_FUNCTION_0();
  v104 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_2(v11 - v10);
  v12 = sub_21E57AD4C();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_2();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_17_2(&v100 - v20);
  sub_21E57AD1C();
  OUTLINED_FUNCTION_0();
  v108 = v22;
  v109 = v21;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_2();
  v101 = (v23 - v24);
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x28223BE20](v25);
  v122 = &v100 - v26;
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x28223BE20](v27);
  v117 = &v100 - v28;
  sub_21E57B5EC();
  OUTLINED_FUNCTION_0();
  v110 = v30;
  v111 = v29;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_2();
  v123 = v31 - v32;
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x28223BE20](v33);
  v106 = &v100 - v34;
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_17_2(&v100 - v36);
  v113 = sub_21E57AEBC();
  OUTLINED_FUNCTION_0();
  v38 = v37;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_14();
  v42 = v41 - v40;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8C98, &qword_21E57DEC8);
  OUTLINED_FUNCTION_8_3();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_2_2();
  v46 = (v44 - v45);
  MEMORY[0x28223BE20](v47);
  v49 = &v100 - v48;
  sub_21E57AE9C();
  sub_21E57AE7C();

  v50 = sub_21E57AE6C();
  v125 = 0;
  memset(v124, 0, sizeof(v124));
  sub_21E57AEAC();
  sub_21E57AE8C();

  v51 = v49;
  (*(v38 + 8))(v42, v113);
  sub_21E56514C(v124, &qword_27CEC8CA0, &unk_21E57DED0);
  sub_21E563058(v49, v46, &qword_27CEC8C98, &qword_21E57DEC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v52 = *v46;
    v53 = v107;
    sub_21E57B5BC();
    v54 = v119;

    v55 = v52;
    v56 = sub_21E57B5DC();
    v57 = sub_21E57B86C();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = OUTLINED_FUNCTION_57();
      v59 = swift_slowAlloc();
      v60 = OUTLINED_FUNCTION_43();
      *&v124[0] = v60;
      *v58 = 136315394;
      *(v58 + 4) = sub_21E5553D8(v118, v54, v124);
      *(v58 + 12) = 2112;
      v61 = v52;
      v62 = _swift_stdlib_bridgeErrorToNSError();
      *(v58 + 14) = v62;
      *v59 = v62;
      _os_log_impl(&dword_21E527000, v56, v57, "getCATDialog: Failed to create dialog for %s with error %@", v58, 0x16u);
      sub_21E56514C(v59, &qword_27CEC88E8, &qword_21E57C660);
      OUTLINED_FUNCTION_39();
      __swift_destroy_boxed_opaque_existential_0Tm(v60);
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_39();
    }

    OUTLINED_FUNCTION_26_1();
    v63(v53);
    v64 = v51;
LABEL_17:
    sub_21E56514C(v64, &qword_27CEC8C98, &qword_21E57DEC8);
  }

  else
  {
    v116 = v49;
    (*(v108 + 32))(v117, v46, v109);
    result = sub_21E57AD0C();
    v66 = result;
    v67 = 0;
    v68 = *(result + 16);
    while (1)
    {
      v69 = v122;
      v70 = v123;
      if (v68 == v67)
      {

        sub_21E57B5BC();
        v73 = v108;
        v72 = v109;
        v74 = *(v108 + 16);
        v74(v69, v117, v109);
        v75 = v119;

        v76 = v121;

        v77 = v69;
        v78 = sub_21E57B5DC();
        v79 = sub_21E57B85C();

        if (os_log_type_enabled(v78, v79))
        {
          v80 = OUTLINED_FUNCTION_43();
          *&v124[0] = swift_slowAlloc();
          *v80 = 136315650;
          *(v80 + 4) = sub_21E5553D8(v120, v76, v124);
          *(v80 + 12) = 2080;
          *(v80 + 14) = sub_21E5553D8(v118, v75, v124);
          *(v80 + 22) = 2080;
          v74(v101, v77, v72);
          v81 = sub_21E57B68C();
          v83 = v82;
          v84 = *(v73 + 8);
          v84(v77, v72);
          v85 = sub_21E5553D8(v81, v83, v124);

          *(v80 + 24) = v85;
          _os_log_impl(&dword_21E527000, v78, v79, "getCATDialog: Cannot get text from %s from %s with templateResult \n%s", v80, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_39();

          OUTLINED_FUNCTION_26_1();
          v86(v123);
          v84(v117, v72);
        }

        else
        {

          v98 = *(v73 + 8);
          v98(v77, v72);
          OUTLINED_FUNCTION_26_1();
          v99(v70);
          v98(v117, v72);
        }

        v64 = v116;
        goto LABEL_17;
      }

      if (v67 >= *(v66 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v14 + 16))(v18, v66 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v67, v12);
      sub_21E57AD2C();
      v71 = sub_21E57B71C();

      if (v71)
      {
        break;
      }

      ++v67;
      result = (*(v14 + 8))(v18, v12);
    }

    v87 = v102;
    (*(v14 + 32))(v102, v18, v12);
    v88 = v103;
    sub_21E57AD3C();
    (*(v14 + 8))(v87, v12);
    sub_21E57ACEC();
    (*(v104 + 8))(v88, v105);
    v89 = v106;
    sub_21E57B5BC();
    v90 = v119;

    v91 = sub_21E57B5DC();
    v92 = sub_21E57B85C();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = OUTLINED_FUNCTION_57();
      *&v124[0] = swift_slowAlloc();
      *v93 = 136315394;
      v94 = OUTLINED_FUNCTION_62_0();
      *(v93 + 4) = sub_21E5553D8(v94, v95, v96);
      *(v93 + 12) = 2080;
      *(v93 + 14) = sub_21E5553D8(v118, v90, v124);
      _os_log_impl(&dword_21E527000, v91, v92, "getCATDialog: Created dialog %s for %s", v93, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_39();
    }

    OUTLINED_FUNCTION_26_1();
    v97(v89);
    (*(v108 + 8))(v117, v109);
    sub_21E56514C(v116, &qword_27CEC8C98, &qword_21E57DEC8);
  }

  return OUTLINED_FUNCTION_62_0();
}

void sub_21E55F2C0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v102 = a3;
  v99 = *v3;
  sub_21E57B5EC();
  OUTLINED_FUNCTION_0();
  v100 = v7;
  v101 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_2();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v97 - v12;
  v14 = sub_21E57B3DC();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  v20 = (v18 - v19);
  MEMORY[0x28223BE20](v21);
  v23 = &v97 - v22;
  v24 = (v16 + 16);
  v25 = *(v16 + 16);
  v25(&v97 - v22, a1, v14);
  v98 = v16;
  v26 = (*(v16 + 88))(v23, v14);
  if (v26 == *MEMORY[0x277D55860])
  {
    sub_21E57B5BC();
    v27 = sub_21E57B5DC();
    v28 = sub_21E57B85C();
    if (OUTLINED_FUNCTION_75_0(v28))
    {
      v29 = swift_slowAlloc();
      v30 = OUTLINED_FUNCTION_43();
      v106[0] = v30;
      *v29 = 136315138;
      v31 = sub_21E57BC2C();
      v33 = sub_21E5553D8(v31, v32, v106);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_21E527000, v27, a1, "%s: AssistantSuggestions source does not have a source runner", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_39();
    }

    (*(v100 + 8))(v13, v101);
    goto LABEL_5;
  }

  v34 = v26;
  if (v26 == *MEMORY[0x277D55868])
  {
    if (qword_281225610 != -1)
    {
      OUTLINED_FUNCTION_2_6(&qword_281225610);
    }

    v36 = sub_21E564F80(v35, 900.0);
    v37 = type metadata accessor for SiriKitIntentSource(0);
    v38 = &off_282F92388;
LABEL_14:
    v40 = v102;
    v102[3] = v37;
    v40[4] = v38;
    *v40 = v36;
    return;
  }

  if (v26 == *MEMORY[0x277D55858])
  {
    if (qword_281225610 != -1)
    {
      OUTLINED_FUNCTION_2_6(&qword_281225610);
    }

    v36 = sub_21E565294(v39, 1000);
    v37 = type metadata accessor for AppIntentTranscriptSource(0);
    v38 = &off_282F92B70;
    goto LABEL_14;
  }

  if (v26 == *MEMORY[0x277D55878])
  {
    if (a2)
    {
      v41 = type metadata accessor for AppLaunchSource(0);
      v42 = OUTLINED_FUNCTION_25_3(v41);
      v43 = OUTLINED_FUNCTION_20_3(v42, OBJC_IVAR____TtC16SiriAutoComplete15AppLaunchSource_source);
      v44(v43);
      *(v42 + OBJC_IVAR____TtC16SiriAutoComplete15AppLaunchSource_histogram) = a2;
      v45 = v102;
      v102[3] = v41;
      v45[4] = &off_282F93240;
      *v45 = v42;

      return;
    }

LABEL_5:
    OUTLINED_FUNCTION_31_1();
    return;
  }

  if (v26 == *MEMORY[0x277D55840])
  {
    if (!a2)
    {
      goto LABEL_5;
    }

    v46 = type metadata accessor for AppShortcutsSource(0);
    OUTLINED_FUNCTION_25_3(v46);

    v48 = sub_21E56C778(v47);
    v49 = v102;
    v102[3] = v46;
    v49[4] = &off_282F93488;
    *v49 = v48;
  }

  else if (v26 == *MEMORY[0x277D55848])
  {
    v50 = type metadata accessor for VoiceShortcutSource(0);
    v51 = OUTLINED_FUNCTION_25_3(v50);
    v52 = OUTLINED_FUNCTION_20_3(v51, OBJC_IVAR____TtC16SiriAutoComplete19VoiceShortcutSource_source);
    v53(v52);
    v54 = v102;
    v102[3] = v50;
    v54[4] = &off_282F931F8;
    *v54 = v51;
  }

  else if (v26 == *MEMORY[0x277D55870])
  {
    if (!a2)
    {
      goto LABEL_5;
    }

    v55 = qword_281225610;
    swift_retain_n();
    if (v55 != -1)
    {
      OUTLINED_FUNCTION_2_6(&qword_281225610);
    }

    v56 = qword_2812269B8;
    v57 = type metadata accessor for DefaultSuggestionsForIntentProvider();
    v107 = v57;
    v108 = &off_282F93088;
    v106[0] = v56;
    v58 = type metadata accessor for BaseSetAppIntentPhrasesSource(0);
    v59 = OUTLINED_FUNCTION_25_3(v58);
    __swift_mutable_project_boxed_opaque_existential_1(v106, v57);
    OUTLINED_FUNCTION_3_7();
    MEMORY[0x28223BE20](v60);
    OUTLINED_FUNCTION_14();
    v63 = (v62 - v61);
    (*(v64 + 16))(v62 - v61);
    v65 = *v63;
    v66 = (v59 + OBJC_IVAR____TtC16SiriAutoComplete29BaseSetAppIntentPhrasesSource_suggestionsForIntentProvider);
    v66[3] = v57;
    v66[4] = &off_282F93088;
    *v66 = v65;
    (*(v98 + 104))(v59 + OBJC_IVAR____TtC16SiriAutoComplete29BaseSetAppIntentPhrasesSource_source, v34, v14);
    *(v59 + OBJC_IVAR____TtC16SiriAutoComplete29BaseSetAppIntentPhrasesSource_histogram) = a2;

    __swift_destroy_boxed_opaque_existential_0Tm(v106);
    v67 = v102;
    v102[3] = v58;
    v67[4] = &off_282F92470;

    *v67 = v59;
  }

  else if (v26 == *MEMORY[0x277D55850])
  {
    v68 = type metadata accessor for DefaultAppFinderForIntentProvider();
    inited = swift_initStaticObject();
    if (qword_281225610 != -1)
    {
      OUTLINED_FUNCTION_2_6(&qword_281225610);
    }

    v70 = qword_2812269B8;
    v107 = v68;
    v108 = &off_282F930A8;
    v106[0] = inited;
    v100 = type metadata accessor for DefaultSuggestionsForIntentProvider();
    v104 = v100;
    v105 = &off_282F93088;
    v103[0] = v70;
    v71 = type metadata accessor for StaticSuggestionsSource(0);
    v72 = OUTLINED_FUNCTION_25_3(v71);
    __swift_mutable_project_boxed_opaque_existential_1(v106, v68);
    v101 = &v97;
    OUTLINED_FUNCTION_3_7();
    MEMORY[0x28223BE20](v73);
    OUTLINED_FUNCTION_14();
    v76 = (v75 - v74);
    (*(v77 + 16))(v75 - v74);
    __swift_mutable_project_boxed_opaque_existential_1(v103, v104);
    OUTLINED_FUNCTION_3_7();
    MEMORY[0x28223BE20](v78);
    OUTLINED_FUNCTION_14();
    v81 = (v80 - v79);
    (*(v82 + 16))(v80 - v79);
    v83 = *v76;
    v84 = *v81;
    v85 = (v72 + OBJC_IVAR____TtC16SiriAutoComplete23StaticSuggestionsSource_appFinderProvider);
    v85[3] = v68;
    v85[4] = &off_282F930A8;
    *v85 = v83;
    v86 = (v72 + OBJC_IVAR____TtC16SiriAutoComplete23StaticSuggestionsSource_suggestionsForIntentProvider);
    v86[3] = v100;
    v86[4] = &off_282F93088;
    *v86 = v84;
    (*(v98 + 104))(v72 + OBJC_IVAR____TtC16SiriAutoComplete23StaticSuggestionsSource_source, v34, v14);

    __swift_destroy_boxed_opaque_existential_0Tm(v103);
    __swift_destroy_boxed_opaque_existential_0Tm(v106);
    v87 = v102;
    v102[3] = v71;
    v87[4] = &off_282F934A8;
    *v87 = v72;
  }

  else
  {
    sub_21E57B5BC();
    v25(v20, a1, v14);
    v88 = sub_21E57B5DC();
    v89 = sub_21E57B86C();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = OUTLINED_FUNCTION_57();
      v97 = OUTLINED_FUNCTION_43();
      v106[0] = v97;
      *v90 = 136315394;
      v91 = sub_21E57BC2C();
      v24 = sub_21E5553D8(v91, v92, v106);

      *(v90 + 4) = v24;
      *(v90 + 12) = 2048;
      v93 = sub_21E57B3CC();
      v94 = OUTLINED_FUNCTION_16_2();
      v24(v94);
      *(v90 + 14) = v93;
      _os_log_impl(&dword_21E527000, v88, v89, "%s: %lld is an unknown source and does not have a source runner", v90, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v97);
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_39();
    }

    else
    {
      v95 = OUTLINED_FUNCTION_16_2();
      v24(v95);
    }

    (*(v100 + 8))(v10, v101);
    v96 = OUTLINED_FUNCTION_31_1();
    (v24)(v23, v14, v96);
  }
}

uint64_t sub_21E55FCA0()
{
  sub_21E56514C(v0 + OBJC_IVAR____TtC16SiriAutoComplete25DefaultDeviceTypeProvider_currentDeviceType, &qword_27CEC8CC0, &qword_21E57DF38);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for DefaultDeviceTypeProvider(uint64_t a1)
{
  result = qword_27CEC8C80;
  if (!qword_27CEC8C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E55FD68(uint64_t a1)
{
  sub_21E55FDF8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21E55FDF8(uint64_t a1)
{
  if (!qword_27CEC8C90)
  {
    sub_21E57B0AC();
    v1 = sub_21E57B89C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CEC8C90);
    }
  }
}

uint64_t sub_21E55FE50()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_73_0();
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_114(v9);
  *v10 = v11;
  v10[1] = sub_21E55BF74;

  return v13(v7, v5, v3, v1);
}

uint64_t sub_21E55FF74()
{
  OUTLINED_FUNCTION_29();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_21E57AEDC();
  v0[4] = v3;
  OUTLINED_FUNCTION_6(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_159();
  v5 = sub_21E57AECC();
  v0[7] = v5;
  OUTLINED_FUNCTION_6(v5);
  v0[8] = v6;
  v0[9] = OUTLINED_FUNCTION_159();
  v7 = sub_21E57AEFC();
  v0[10] = v7;
  OUTLINED_FUNCTION_6(v7);
  v0[11] = v8;
  v0[12] = OUTLINED_FUNCTION_159();
  v9 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_21E5600B0()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  sub_21E57AF1C();
  v0[13] = sub_21E57AF0C();
  *v1 = &unk_282F92178;
  (*(v2 + 104))(v1, *MEMORY[0x277D55398], v3);
  (*(v5 + 104))(v4, *MEMORY[0x277D553A0], v6);

  sub_21E57AEEC();
  v10 = (*MEMORY[0x277D553A8] + MEMORY[0x277D553A8]);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_21E56021C;
  v8 = v0[12];

  return v10(v8);
}

uint64_t sub_21E56021C()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  OUTLINED_FUNCTION_32();
  v4 = v3[12];
  v5 = v3[11];
  v6 = v3[10];
  v7 = *v0;
  OUTLINED_FUNCTION_8();
  *v8 = v7;

  (*(v5 + 8))(v4, v6);

  OUTLINED_FUNCTION_9_0();

  return v9(v2);
}

uint64_t sub_21E560414()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_14_2(v0, v1, v2, v3, v4);
  OUTLINED_FUNCTION_73_0();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_114(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_11_4(v6);

  return v9(v8);
}

uint64_t sub_21E560518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_73_0();
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_114(v7);
  *v8 = v9;
  v8[1] = sub_21E55BF74;

  return v11(a1, a2, a3);
}

unint64_t *sub_21E56064C(unint64_t *a1)
{
  sub_21E57B5EC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14();
  v3 = a1[2];
  if (v3 < 2)
  {
LABEL_2:

    return a1;
  }

  v5 = 4;
  v35 = a1[2];
  while (1)
  {
    memcpy(__dst, &a1[v5], sizeof(__dst));
    if (__dst[7])
    {
      break;
    }

LABEL_8:
    v5 += 12;
    if (!--v3)
    {
      goto LABEL_2;
    }
  }

  v6 = __dst[0];
  v7 = __dst[1];
  v40 = __dst[6];
  v41 = __dst[7];
  v38 = 0x6165536C61636F6CLL;
  v39 = 0xEB00000000686372;
  sub_21E534CEC(__dst, v37);
  sub_21E534DE8();
  if ((sub_21E57B8DC() & 1) == 0)
  {
    sub_21E534D48(__dst);
    goto LABEL_8;
  }

  v28 = v6;

  sub_21E534D48(__dst);
  sub_21E57B5BC();

  v8 = sub_21E57B5DC();
  v9 = sub_21E57B85C();

  v27 = v7;
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_57();
    v11 = a1;
    v12 = OUTLINED_FUNCTION_43();
    v37[0] = v12;
    *v10 = 134218242;
    v13 = v35;
    *(v10 + 4) = v35;

    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_21E5553D8(v6, v7, v37);
    _os_log_impl(&dword_21E527000, v8, v9, "Modifying %ld getDirection phrases to use Siri version: %s", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    a1 = v11;
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_39();

    v14 = OUTLINED_FUNCTION_15_2();
    v15(v14);
  }

  else
  {

    v16 = OUTLINED_FUNCTION_15_2();
    v17(v16);
    v13 = v35;
  }

  v37[0] = MEMORY[0x277D84F90];
  sub_21E562880(0, v13, 0);
  v18 = a1 + 8;
  a1 = v37[0];
  do
  {
    v36 = v13;
    v19 = *(v18 - 1);
    v32 = *(v18 - 2);
    v20 = v18[1];
    v31 = *v18;
    v21 = v18[3];
    v30 = v18[2];
    v22 = v18[5];
    v29 = v18[4];
    v23 = v18[7];
    v33 = v18[6];
    v24 = a1[2];
    v25 = a1[3];
    v34 = v24 + 1;
    v37[0] = a1;

    if (v24 >= v25 >> 1)
    {
      sub_21E562880((v25 > 1), v34, 1);
      a1 = v37[0];
    }

    a1[2] = v34;
    v26 = &a1[12 * v24];
    v26[4] = v28;
    v26[5] = v27;
    v26[6] = v32;
    v26[7] = v19;
    v26[8] = v31;
    v26[9] = v20;
    v26[10] = v30;
    v26[11] = v21;
    v26[12] = v29;
    v26[13] = v22;
    v18 += 12;
    v26[14] = v33;
    v26[15] = v23;
    v13 = v36 - 1;
  }

  while (v36 != 1);

  return a1;
}

uint64_t sub_21E560A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_21E57BB3C();
  }
}

uint64_t sub_21E560A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x223D5D090](0);

  return sub_21E57B6AC();
}

uint64_t sub_21E560AE0(uint64_t a1, uint64_t a2)
{
  sub_21E57BB8C();
  MEMORY[0x223D5D090](0);
  sub_21E57B6AC();
  return sub_21E57BBCC();
}

uint64_t sub_21E560B54(uint64_t a1)
{
  sub_21E57BB8C();
  MEMORY[0x223D5D090](0);
  sub_21E57B6AC();
  return sub_21E57BBCC();
}

uint64_t sub_21E560BC4(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_21E57BB3C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_21E57BB3C() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v6 && (sub_21E57BB3C() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[7];
  v8 = a2[7];
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = a1[6] == a2[6] && v7 == v8;
    if (!v9 && (sub_21E57BB3C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v10 = a1[9];
  v11 = a2[9];
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = a1[8] == a2[8] && v10 == v11;
    if (!v12 && (sub_21E57BB3C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v13 = a1[11];
  v14 = a2[11];
  if (v13)
  {
    if (v14)
    {
      v15 = a1[10] == a2[10] && v13 == v14;
      if (v15 || (sub_21E57BB3C() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v14)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_21E560D00()
{
  type metadata accessor for DefaultSuggestionsForIntentProvider();
  v0 = swift_allocObject();
  result = sub_21E562228();
  qword_2812269B8 = v0;
  return result;
}

uint64_t sub_21E560D3C()
{
  OUTLINED_FUNCTION_29();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v5 = sub_21E57B06C();
  v1[14] = v5;
  OUTLINED_FUNCTION_6(v5);
  v1[15] = v6;
  v1[16] = OUTLINED_FUNCTION_159();
  v7 = sub_21E57B03C();
  v1[17] = v7;
  OUTLINED_FUNCTION_6(v7);
  v1[18] = v8;
  v1[19] = OUTLINED_FUNCTION_159();
  v9 = sub_21E57AFEC();
  v1[20] = v9;
  OUTLINED_FUNCTION_6(v9);
  v1[21] = v10;
  v1[22] = OUTLINED_FUNCTION_159();
  v11 = sub_21E57B08C();
  v1[23] = v11;
  OUTLINED_FUNCTION_6(v11);
  v1[24] = v12;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v13 = sub_21E57B5EC();
  v1[27] = v13;
  OUTLINED_FUNCTION_6(v13);
  v1[28] = v14;
  v1[29] = OUTLINED_FUNCTION_159();
  v15 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v15);
}

uint64_t sub_21E560F28(uint64_t a1)
{
  v55 = v1;
  v3 = v1[25];
  v2 = v1[26];
  v4 = v1[23];
  v5 = v1[24];
  v6 = v1[10];
  sub_21E57B5BC();
  v7 = *(v5 + 16);
  v7(v2, v6, v4);
  v7(v3, v6, v4);
  v8 = sub_21E57B5DC();
  v9 = sub_21E57B84C();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v1[28];
  v12 = v1[29];
  v13 = v1[26];
  v53 = v1[27];
  v15 = v1[24];
  v14 = v1[25];
  v16 = v1[23];
  if (v10)
  {
    v51 = v1[28];
    v52 = v1[29];
    v50 = v9;
    v18 = v1[21];
    v17 = v1[22];
    v19 = v1[19];
    v44 = v1[20];
    v48 = v1[25];
    v20 = v1[17];
    v21 = v1[18];
    v47 = v20;
    v45 = OUTLINED_FUNCTION_57();
    v54 = swift_slowAlloc();
    *v45 = 136315394;
    log = v8;
    sub_21E57B07C();
    sub_21E57B01C();
    v46 = *(v21 + 8);
    v46(v19, v20);
    sub_21E5653AC();
    v22 = sub_21E57BB2C();
    v24 = v23;
    (*(v18 + 8))(v17, v44);
    v25 = *(v15 + 8);
    v25(v13, v16);
    v26 = sub_21E5553D8(v22, v24, &v54);

    *(v45 + 4) = v26;
    *(v45 + 12) = 2080;
    sub_21E57B07C();
    sub_21E57B02C();
    v46(v19, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8968, qword_21E57D170);
    sub_21E57B61C();

    v25(v48, v16);
    v27 = OUTLINED_FUNCTION_62_0();
    v30 = sub_21E5553D8(v27, v28, v29);

    *(v45 + 14) = v30;
    _os_log_impl(&dword_21E527000, log, v50, "SuggestionsForIntentProvider: Fetching suggestions for intent %s with parameters: %s", v45, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_39();

    (*(v51 + 8))(v52, v53);
  }

  else
  {

    v31 = *(v15 + 8);
    v31(v14, v16);
    v31(v13, v16);
    (*(v11 + 8))(v12, v53);
  }

  v32 = v1[12];
  if (v32)
  {
    v33 = v1[11];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8CC8, &unk_21E57DF50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21E57C390;
    sub_21E57AD7C();
    *(inited + 32) = sub_21E57AD6C();
    *(inited + 40) = v35;
    *(inited + 48) = v33;
    *(inited + 56) = v32;
  }

  v36 = sub_21E57B62C();
  v38 = v1[15];
  v37 = v1[16];
  v39 = v1[14];
  sub_21E57B07C();
  sub_21E539508(v36);

  sub_21E57B05C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8930, &unk_21E57C4B0);
  v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v41 = swift_allocObject();
  v1[30] = v41;
  *(v41 + 16) = xmmword_21E57C390;
  (*(v38 + 16))(v41 + v40, v37, v39);
  v42 = swift_task_alloc();
  v1[31] = v42;
  *v42 = v1;
  v42[1] = sub_21E5613EC;

  return sub_21E5615B8();
}

uint64_t sub_21E5613EC()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  *(v4 + 256) = v3;

  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_21E5614F4()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  OUTLINED_FUNCTION_9_0();
  v2 = v0[32];

  return v1(v2);
}

uint64_t sub_21E5615B8()
{
  OUTLINED_FUNCTION_29();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_21E57B5EC();
  v1[5] = v3;
  OUTLINED_FUNCTION_6(v3);
  v1[6] = v4;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8CA8, &unk_21E57DEF8);
  v1[10] = OUTLINED_FUNCTION_159();
  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_21E5616AC()
{
  OUTLINED_FUNCTION_155();
  v2 = *(v0[3] + 16);
  if (v2)
  {
    v3 = *(v0[4] + 24);
    v0[11] = v3;
    if (v3)
    {
      v4 = v0[10];
      v5 = *MEMORY[0x277D60B80];
      v6 = sub_21E57B0DC();
      OUTLINED_FUNCTION_8_3();
      (*(v7 + 104))(v4, v5, v6);
      v8 = __swift_storeEnumTagSinglePayload(v4, 0, 1, v6);
      if ((v2 * 3) >> 64 == (3 * v2) >> 63)
      {

        v11 = swift_task_alloc();
        v0[12] = v11;
        *v11 = v0;
        v11[1] = sub_21E561930;
        v9 = v0[10];
        v8 = v0[3];
        v10.n128_f64[0] = (3 * v2);
      }

      else
      {
        __break(1u);
      }

      return MEMORY[0x2821C6048](v8, v9, v10);
    }

    sub_21E57B5BC();
    v12 = sub_21E57B5DC();
    v16 = sub_21E57B86C();
    if (OUTLINED_FUNCTION_75_0(v16))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "SuggestionsForIntentProvider: Error getting SiriSuggestionsFacade";
      goto LABEL_11;
    }
  }

  else
  {
    sub_21E57B5BC();
    v12 = sub_21E57B5DC();
    v13 = sub_21E57B85C();
    if (OUTLINED_FUNCTION_75_0(v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "SuggestionsForIntentProvider: No IntentQueries to fetch from SiriSuggestions platform. Returning nil Suggestions list";
LABEL_11:
      _os_log_impl(&dword_21E527000, v12, v1, v15, v14, 2u);
      OUTLINED_FUNCTION_39();
    }
  }

  v17 = OUTLINED_FUNCTION_62_0();
  v18(v17);

  OUTLINED_FUNCTION_9_0();

  return v19(0);
}

uint64_t sub_21E561930()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  v2 = *(v1 + 80);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  *(v6 + 104) = v5;

  sub_21E56514C(v2, &qword_27CEC8CA8, &unk_21E57DEF8);
  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_21E561A48(uint64_t a1)
{
  v11 = v1;
  v2 = v1[13];
  sub_21E57B5BC();
  sub_21E57B94C();

  v10[0] = 544501575;
  v10[1] = 0xE400000000000000;
  v1[2] = *(v2 + 16);
  v3 = sub_21E57BB2C();
  MEMORY[0x223D5CBD0](v3);

  MEMORY[0x223D5CBD0](0x7473656767757320, 0xEC000000736E6F69);
  v10[0] = v2;

  sub_21E562FB0(v10);
  v4 = v1[13];
  v5 = v1[9];
  v6 = v1[5];
  v7 = v1[6];
  sub_21E57AF9C();
  sub_21E57B5CC();

  (*(v7 + 8))(v5, v6);

  OUTLINED_FUNCTION_9_0();

  return v8(v4);
}

uint64_t sub_21E561C58()
{
  v0 = sub_21E57B23C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - v5;
  sub_21E57AF6C();
  v7 = sub_21E57B22C();
  v9 = v8;
  v10 = *(v1 + 8);
  v10(v6, v0);
  sub_21E57AF6C();
  v11 = sub_21E57B22C();
  v13 = v12;
  v10(v4, v0);
  if (v7 == v11 && v9 == v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_21E57BB3C();
  }

  return v15 & 1;
}

uint64_t sub_21E561DE4()
{
  v0 = sub_21E57B25C();
  v37 = *(v0 - 8);
  v38 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8908, &qword_21E57C480);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v36 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v35 = &v31 - v6;
  v7 = sub_21E57B23C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21E57AFDC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E57AF5C();
  v15 = sub_21E57AFAC();
  v33 = v16;
  v34 = v15;
  v17 = *(v12 + 8);
  v17(v14, v11);
  sub_21E57AF6C();
  v18 = sub_21E57B22C();
  v31 = v19;
  v32 = v18;
  (*(v8 + 8))(v10, v7);
  sub_21E57AF5C();
  sub_21E57AFBC();
  v20 = v14;
  v21 = v35;
  v17(v20, v11);
  v22 = v36;
  sub_21E57B24C();
  (*(v37 + 8))(v2, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8CB0, &qword_21E57DF08);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21E57D990;
  v24 = MEMORY[0x277D837D0];
  v25 = v33;
  *(v23 + 32) = v34;
  *(v23 + 40) = v25;
  *(v23 + 88) = v24;
  v26 = v31;
  v27 = v32;
  *(v23 + 56) = v24;
  *(v23 + 64) = v27;
  *(v23 + 72) = v26;
  sub_21E563058(v21, v22, &qword_27CEC8908, &qword_21E57C480);
  v28 = sub_21E57B1FC();
  if (__swift_getEnumTagSinglePayload(v22, 1, v28) == 1)
  {
    sub_21E56514C(v22, &qword_27CEC8908, &qword_21E57C480);
    *(v23 + 96) = 0u;
    *(v23 + 112) = 0u;
  }

  else
  {
    *(v23 + 120) = v28;
    boxed_opaque_existential_3 = __swift_allocate_boxed_opaque_existential_3((v23 + 96));
    (*(*(v28 - 8) + 32))(boxed_opaque_existential_3, v22, v28);
  }

  sub_21E56514C(v21, &qword_27CEC8908, &qword_21E57C480);
  return v23;
}

uint64_t sub_21E5621CC()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_21E562228()
{
  *(v0 + 16) = 3;
  sub_21E57AF4C();
  *(v0 + 24) = sub_21E57AF3C();
  return v0;
}

void sub_21E56228C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = v3;
  v6 = [v3 privatePlayMediaIntentData];
  v26 = [v6 appSelectionEnabled];
  v25 = [v6 appInferred];
  if (v6)
  {
    v24 = sub_21E564E20(v6);
  }

  else
  {
    v24 = 0;
  }

  v23 = [v6 privateMediaIntentData];
  v22 = [v6 appSelectionSignalsEnabled];
  v21 = [v6 appSelectionSignalsFrequencyDenominator];
  v7 = [v6 shouldSuppressCommonWholeHouseAudioRoutes];
  v8 = [v6 immediatelyStartPlayback];
  v9 = [v6 isAmbiguousPlay];
  v10 = [v6 isPersonalizedRequest];
  if (v6 && (v11 = sub_21E564DBC(v6)) != 0)
  {
    v12 = v11;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8940, &qword_21E57C4C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E57C390;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_21E54A4B4(inited);
  v14 = v12;
  v15 = [v6 entityConfidenceSignalsEnabled];
  v16 = [v6 entityConfidenceSignalsFrequencyDenominatorInternal];
  v17 = [v6 entityConfidenceSignalsFrequencyDenominatorProd];
  v18 = [v6 entityConfidenceSignalsMaxItemsToDisambiguate];

  v19 = objc_allocWithZone(MEMORY[0x277CD3F10]);
  v20 = sub_21E562554(v26, v25, v24, v23, v22, v21, v7, v8, v9, v10, v14, v15, v16, v17, v18);
  [v27 setPrivatePlayMediaIntentData_];
}

id sub_21E562554(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15)
{
  if (a3)
  {
    sub_21E5650F4();
    v16 = sub_21E57B77C();
  }

  else
  {
    v16 = 0;
  }

  if (a11)
  {
    v17 = sub_21E57B77C();
  }

  else
  {
    v17 = 0;
  }

  v20 = [v19 initWithAppSelectionEnabled:a1 appInferred:a2 audioSearchResults:v16 privateMediaIntentData:a4 appSelectionSignalsEnabled:a5 appSelectionSignalsFrequencyDenominator:a6 shouldSuppressCommonWholeHouseAudioRoutes:a7 immediatelyStartPlayback:a8 isAmbiguousPlay:a9 isPersonalizedRequest:a10 internalSignals:v17 entityConfidenceSignalsEnabled:a12 entityConfidenceSignalsFrequencyDenominatorInternal:a13 entityConfidenceSignalsFrequencyDenominatorProd:a14 entityConfidenceSignalsMaxItemsToDisambiguate:a15];

  return v20;
}

char *sub_21E5626D0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_4(a3, result);
  }

  return result;
}

char *sub_21E562708(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[96 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_4(a3, result);
  }

  return result;
}

void sub_21E562748(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_8_3(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_28_1();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_28_1();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_21E562808(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_4(a3, result);
  }

  return result;
}

uint64_t sub_21E562830@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

char *sub_21E562860(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21E5628C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21E562880(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21E562C90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21E5628A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21E562EA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21E5628C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8940, &qword_21E57C4C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21E5629C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8C00, &qword_21E57DF60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void *sub_21E562AC8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8948, &qword_21E57C4C8);
  v10 = *(sub_21E57AF9C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_21E57AF9C() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_21E562748(a4 + v16, v8, v13 + v16, MEMORY[0x277D606E0]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_21E562C90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8928, &qword_21E57C4A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[96 * v8] <= v12)
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21E562DA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8B80, &qword_21E57DF30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_21E562EA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8CB8, &unk_21E57DF20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 64);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[64 * v8] <= v12)
    {
      memmove(v12, v13, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_21E562FB0(uint64_t *a1)
{
  v2 = *(sub_21E57AF9C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_21E5650E0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_21E5630B8(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_21E563058(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_8_3();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_21E5630B8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21E57BB0C();
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
        sub_21E57AF9C();
        v6 = sub_21E57B7BC();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_21E57AF9C() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_21E563624(v8, v9, a1, v4);
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
    return sub_21E5631E8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21E5631E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v71 = sub_21E57B23C();
  v8 = *(v71 - 8);
  v9 = MEMORY[0x28223BE20](v71);
  v70 = &v52[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v69 = &v52[-v11];
  v12 = sub_21E57AF9C();
  v13 = MEMORY[0x28223BE20](v12);
  v62 = &v52[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v52[-v16];
  result = MEMORY[0x28223BE20](v15);
  v21 = &v52[-v19];
  v54 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v24 = *(v20 + 16);
    v23 = v20 + 16;
    v25 = *(v23 + 56);
    v66 = (v8 + 8);
    v67 = v24;
    v64 = &v52[-v19];
    v65 = (v23 - 8);
    v68 = v23;
    v60 = (v23 + 16);
    v61 = v22;
    v26 = v22 + v25 * (a3 - 1);
    v59 = -v25;
    v27 = a1 - a3;
    v53 = v25;
    v28 = v22 + v25 * a3;
    v63 = v17;
    while (2)
    {
      v57 = v26;
      v58 = a3;
      v55 = v28;
      v56 = v27;
      v29 = v27;
      v74 = v26;
      while (1)
      {
        v72 = v29;
        v73 = v28;
        v30 = v67;
        v67(v21, v28, v12);
        v30(v17, v74, v12);
        v31 = v69;
        sub_21E57AF6C();
        v32 = sub_21E57B22C();
        v34 = v33;
        v35 = *v66;
        v36 = v71;
        (*v66)(v31, v71);
        v37 = v70;
        sub_21E57AF6C();
        v38 = v12;
        v39 = sub_21E57B22C();
        v41 = v40;
        v35(v37, v36);
        if (v32 == v39 && v34 == v41)
        {
          break;
        }

        v43 = sub_21E57BB3C();

        v44 = *v65;
        v17 = v63;
        (*v65)(v63, v38);
        v21 = v64;
        result = v44(v64, v38);
        v12 = v38;
        v46 = v72;
        v45 = v73;
        if (v43)
        {
          if (!v61)
          {
            __break(1u);
            return result;
          }

          v47 = *v60;
          v48 = v62;
          (*v60)(v62, v73, v38);
          v49 = v74;
          swift_arrayInitWithTakeFrontToBack();
          result = v47(v49, v48, v38);
          v74 = v49 + v59;
          v28 = v45 + v59;
          v50 = __CFADD__(v46, 1);
          v29 = v46 + 1;
          if (!v50)
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v51 = *v65;
      v17 = v63;
      (*v65)(v63, v38);
      v21 = v64;
      result = v51(v64, v38);
      v12 = v38;
LABEL_14:
      a3 = v58 + 1;
      v26 = v57 + v53;
      v27 = v56 - 1;
      v28 = v55 + v53;
      if (v58 + 1 != v54)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_21E563624(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v165 = a1;
  v191 = sub_21E57B23C();
  v6 = *(v191 - 8);
  v7 = MEMORY[0x28223BE20](v191);
  v187 = &v160 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v186 = &v160 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v174 = &v160 - v12;
  MEMORY[0x28223BE20](v11);
  v173 = &v160 - v13;
  v175 = sub_21E57AF9C();
  v14 = MEMORY[0x28223BE20](v175);
  v169 = &v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v184 = &v160 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v188 = &v160 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v160 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v179 = &v160 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v178 = &v160 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v160 - v28;
  MEMORY[0x28223BE20](v27);
  v32 = &v160 - v30;
  v176 = v31;
  v177 = a3;
  v33 = a3[1];
  if (v33 < 1)
  {
    v35 = MEMORY[0x277D84F90];
LABEL_117:
    v197 = *v165;
    if (!v197)
    {
      goto LABEL_159;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v180;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_119:
      v152 = (v35 + 16);
      for (i = *(v35 + 2); i >= 2; *v152 = i)
      {
        if (!*v177)
        {
          goto LABEL_156;
        }

        v154 = &v35[16 * i];
        v155 = *v154;
        v156 = &v152[2 * i];
        v157 = v156[1];
        sub_21E564414(*v177 + *(v176 + 72) * *v154, *v177 + *(v176 + 72) * *v156, (*v177 + *(v176 + 72) * v157), v197);
        if (v29)
        {
          break;
        }

        if (v157 < v155)
        {
          goto LABEL_144;
        }

        if (i - 2 >= *v152)
        {
          goto LABEL_145;
        }

        *v154 = v155;
        *(v154 + 1) = v157;
        v158 = *v152 - i;
        if (*v152 < i)
        {
          goto LABEL_146;
        }

        i = *v152 - 1;
        memmove(v156, v156 + 2, 16 * v158);
      }

LABEL_115:

      return;
    }

LABEL_153:
    v35 = sub_21E564BC8(v35);
    goto LABEL_119;
  }

  v34 = 0;
  v192 = (v31 + 8);
  v193 = v31 + 16;
  v189 = (v31 + 32);
  v190 = (v6 + 8);
  v35 = MEMORY[0x277D84F90];
  v164 = a4;
  v194 = v22;
  v162 = v29;
  v161 = &v160 - v30;
  while (1)
  {
    v36 = v34;
    v37 = v34 + 1;
    v166 = v35;
    if (v34 + 1 < v33)
    {
      v185 = v33;
      v38 = *v177;
      v39 = *(v31 + 72);
      v40 = v34;
      v181 = v34 + 1;
      v41 = *(v31 + 16);
      v197 = v38 + v39 * (v34 + 1);
      v42 = v175;
      (v41)(v32);
      v182 = v41;
      (v41)(v29, v38 + v39 * v40, v42);
      v43 = v180;
      LODWORD(v183) = sub_21E561C58();
      if (v43)
      {
        v159 = *v192;
        (*v192)(v29, v42);
        (v159)(v32, v42);

        return;
      }

      v180 = 0;
      v44 = *v192;
      (*v192)(v29, v42);
      v172 = v44;
      (v44)(v32, v42);
      v163 = v40;
      v45 = (v40 + 2);
      v46 = v38 + v39 * (v40 + 2);
      v37 = v181;
      v195 = v39;
      v47 = v185;
      v48 = v197;
      while (1)
      {
        v49 = v45;
        if (v37 + 1 >= v47)
        {
          break;
        }

        v196 = v45;
        v181 = v37;
        v50 = v182;
        (v182)(v178, v46, v42);
        v197 = v48;
        v50(v179, v48, v42);
        v51 = v173;
        sub_21E57AF6C();
        v52 = sub_21E57B22C();
        v54 = v53;
        v29 = v191;
        v55 = *v190;
        (*v190)(v51, v191);
        v56 = v174;
        sub_21E57AF6C();
        v57 = sub_21E57B22C();
        v59 = v58;
        v55(v56, v29);
        if (v52 == v57 && v54 == v59)
        {
          v61 = 0;
        }

        else
        {
          v61 = sub_21E57BB3C();
        }

        v42 = v175;
        v62 = v172;
        (v172)(v179, v175);
        v62(v178, v42);
        v63 = v183 ^ v61;
        v39 = v195;
        v49 = v196;
        v46 += v195;
        v48 = &v195[v197];
        v37 = v181 + 1;
        v45 = v196 + 1;
        v22 = v194;
        v47 = v185;
        if (v63)
        {
          goto LABEL_16;
        }
      }

      v37 = v47;
LABEL_16:
      a4 = v164;
      if (v183)
      {
        v36 = v163;
        v35 = v166;
        if (v37 < v163)
        {
          goto LABEL_152;
        }

        if (v163 >= v37)
        {
          v31 = v176;
          goto LABEL_39;
        }

        if (v47 >= v49)
        {
          v64 = v49;
        }

        else
        {
          v64 = v47;
        }

        v65 = v37;
        v66 = v39 * (v64 - 1);
        v67 = v39 * v64;
        v68 = v163 * v39;
        v181 = v65;
        do
        {
          if (v36 != --v65)
          {
            v69 = *v177;
            if (!*v177)
            {
              goto LABEL_157;
            }

            v70 = *v189;
            v29 = v175;
            (*v189)(v169, v69 + v68, v175);
            v71 = v68 < v66 || v69 + v68 >= (v69 + v67);
            if (v71)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v68 != v66)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v70((v69 + v66), v169, v29);
            v35 = v166;
            v22 = v194;
            v39 = v195;
          }

          ++v36;
          v66 -= v39;
          v67 -= v39;
          v68 += v39;
        }

        while (v36 < v65);
        v31 = v176;
        a4 = v164;
        v37 = v181;
      }

      else
      {
        v31 = v176;
        v35 = v166;
      }

      v36 = v163;
    }

LABEL_39:
    v72 = v177[1];
    if (v37 < v72)
    {
      if (__OFSUB__(v37, v36))
      {
        goto LABEL_149;
      }

      if (v37 - v36 < a4)
      {
        break;
      }
    }

LABEL_61:
    if (v37 < v36)
    {
      goto LABEL_148;
    }

    v104 = swift_isUniquelyReferenced_nonNull_native();
    v181 = v37;
    if ((v104 & 1) == 0)
    {
      sub_21E543698();
      v35 = v149;
    }

    v105 = v35;
    v106 = *(v35 + 2);
    v107 = v105;
    v108 = v106 + 1;
    if (v106 >= *(v105 + 3) >> 1)
    {
      sub_21E543698();
      v107 = v150;
    }

    *(v107 + 2) = v108;
    v109 = v107 + 32;
    v110 = &v107[16 * v106 + 32];
    v111 = v181;
    *v110 = v36;
    v110[1] = v111;
    if (!*v165)
    {
      goto LABEL_158;
    }

    if (v106)
    {
      v29 = *v165;
      v35 = v107;
      while (1)
      {
        v112 = v108 - 1;
        v113 = &v109[16 * v108 - 16];
        v114 = &v35[16 * v108];
        if (v108 >= 4)
        {
          break;
        }

        if (v108 == 3)
        {
          v115 = *(v35 + 4);
          v116 = *(v35 + 5);
          v125 = __OFSUB__(v116, v115);
          v117 = v116 - v115;
          v118 = v125;
LABEL_82:
          if (v118)
          {
            goto LABEL_135;
          }

          v130 = *v114;
          v129 = *(v114 + 1);
          v131 = __OFSUB__(v129, v130);
          v132 = v129 - v130;
          v133 = v131;
          if (v131)
          {
            goto LABEL_138;
          }

          v134 = *(v113 + 1);
          v135 = v134 - *v113;
          if (__OFSUB__(v134, *v113))
          {
            goto LABEL_141;
          }

          if (__OFADD__(v132, v135))
          {
            goto LABEL_143;
          }

          if (v132 + v135 >= v117)
          {
            if (v117 < v135)
            {
              v112 = v108 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v108 < 2)
        {
          goto LABEL_137;
        }

        v137 = *v114;
        v136 = *(v114 + 1);
        v125 = __OFSUB__(v136, v137);
        v132 = v136 - v137;
        v133 = v125;
LABEL_97:
        if (v133)
        {
          goto LABEL_140;
        }

        v139 = *v113;
        v138 = *(v113 + 1);
        v125 = __OFSUB__(v138, v139);
        v140 = v138 - v139;
        if (v125)
        {
          goto LABEL_142;
        }

        if (v140 < v132)
        {
          goto LABEL_113;
        }

LABEL_104:
        if (v112 - 1 >= v108)
        {
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
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
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
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
          goto LABEL_151;
        }

        if (!*v177)
        {
          goto LABEL_155;
        }

        v144 = &v109[16 * v112 - 16];
        v145 = *v144;
        v35 = &v109[16 * v112];
        v146 = *(v35 + 1);
        v147 = v180;
        sub_21E564414(*v177 + *(v176 + 72) * *v144, *v177 + *(v176 + 72) * *v35, (*v177 + *(v176 + 72) * v146), v29);
        v180 = v147;
        if (v147)
        {
          goto LABEL_115;
        }

        if (v146 < v145)
        {
          goto LABEL_130;
        }

        v148 = *(v107 + 2);
        if (v112 > v148)
        {
          goto LABEL_131;
        }

        *v144 = v145;
        v144[1] = v146;
        if (v112 >= v148)
        {
          goto LABEL_132;
        }

        v108 = v148 - 1;
        memmove(&v109[16 * v112], v35 + 16, 16 * (v148 - 1 - v112));
        v35 = v107;
        *(v107 + 2) = v148 - 1;
        if (v148 <= 2)
        {
          goto LABEL_113;
        }
      }

      v119 = &v109[16 * v108];
      v120 = *(v119 - 8);
      v121 = *(v119 - 7);
      v125 = __OFSUB__(v121, v120);
      v122 = v121 - v120;
      if (v125)
      {
        goto LABEL_133;
      }

      v124 = *(v119 - 6);
      v123 = *(v119 - 5);
      v125 = __OFSUB__(v123, v124);
      v117 = v123 - v124;
      v118 = v125;
      if (v125)
      {
        goto LABEL_134;
      }

      v126 = *(v114 + 1);
      v127 = v126 - *v114;
      if (__OFSUB__(v126, *v114))
      {
        goto LABEL_136;
      }

      v125 = __OFADD__(v117, v127);
      v128 = v117 + v127;
      if (v125)
      {
        goto LABEL_139;
      }

      if (v128 >= v122)
      {
        v142 = *v113;
        v141 = *(v113 + 1);
        v125 = __OFSUB__(v141, v142);
        v143 = v141 - v142;
        if (v125)
        {
          goto LABEL_147;
        }

        if (v117 < v143)
        {
          v112 = v108 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

    v35 = v107;
LABEL_113:
    v31 = v176;
    v33 = v177[1];
    v34 = v181;
    a4 = v164;
    v22 = v194;
    v32 = v161;
    v29 = v162;
    if (v181 >= v33)
    {
      goto LABEL_117;
    }
  }

  v73 = v36 + a4;
  if (__OFADD__(v36, a4))
  {
    goto LABEL_150;
  }

  if (v73 >= v72)
  {
    v73 = v177[1];
  }

  v74 = v188;
  if (v73 < v36)
  {
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  if (v37 == v73)
  {
    goto LABEL_61;
  }

  v75 = *v177;
  v76 = *(v31 + 72);
  v185 = *(v31 + 16);
  v77 = (v75 + v76 * (v37 - 1));
  v182 = -v76;
  v163 = v36;
  v78 = v36 - v37;
  v183 = v75;
  v167 = v76;
  v79 = (v75 + v37 * v76);
  v29 = v175;
  v168 = v73;
LABEL_48:
  v181 = v37;
  v170 = v79;
  v171 = v78;
  v80 = v78;
  v172 = v77;
  while (1)
  {
    v197 = v80;
    v196 = v79;
    v81 = v185;
    v185(v22, v79, v29);
    v195 = v77;
    v81(v74, v77, v29);
    v82 = v186;
    sub_21E57AF6C();
    v83 = sub_21E57B22C();
    v85 = v84;
    v86 = *v190;
    v87 = v29;
    v88 = v191;
    (*v190)(v82, v191);
    v89 = v187;
    sub_21E57AF6C();
    v90 = sub_21E57B22C();
    v92 = v91;
    v86(v89, v88);
    if (v83 == v90 && v85 == v92)
    {

      v102 = *v192;
      v103 = v188;
      (*v192)(v188, v87);
      v22 = v194;
      (v102)(v194, v87);
      v29 = v87;
      v74 = v103;
LABEL_59:
      v37 = v181 + 1;
      v77 = &v172[v167];
      v78 = v171 - 1;
      v79 = &v170[v167];
      if (v181 + 1 == v168)
      {
        v37 = v168;
        v35 = v166;
        v36 = v163;
        goto LABEL_61;
      }

      goto LABEL_48;
    }

    v94 = sub_21E57BB3C();

    v95 = *v192;
    v96 = v188;
    (*v192)(v188, v87);
    v22 = v194;
    (v95)(v194, v87);
    v29 = v87;
    v74 = v96;
    if ((v94 & 1) == 0)
    {
      goto LABEL_59;
    }

    v97 = v197;
    if (!v183)
    {
      break;
    }

    v98 = *v189;
    v99 = v184;
    v100 = v196;
    (*v189)(v184, v196, v29);
    v101 = v195;
    swift_arrayInitWithTakeFrontToBack();
    v98(v101, v99, v29);
    v77 = &v101[v182];
    v79 = &v100[v182];
    v71 = __CFADD__(v97, 1);
    v80 = v97 + 1;
    if (v71)
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
}

uint64_t sub_21E564414(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v93 = sub_21E57B23C();
  v8 = *(v93 - 8);
  v9 = MEMORY[0x28223BE20](v93);
  v83 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v82 = &v78 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v88 = &v78 - v14;
  MEMORY[0x28223BE20](v13);
  v87 = &v78 - v15;
  v16 = sub_21E57AF9C();
  v17 = MEMORY[0x28223BE20](v16);
  v86 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = MEMORY[0x28223BE20](&v78 - v19);
  v22 = &v78 - v21;
  result = MEMORY[0x28223BE20](v20);
  v27 = *(v26 + 72);
  if (!v27)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v28 = a2 - a1 == 0x8000000000000000 && v27 == -1;
  if (v28)
  {
    goto LABEL_72;
  }

  v29 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_73;
  }

  v94 = &v78 - v25;
  v31 = (a2 - a1) / v27;
  v100 = a1;
  v99 = a4;
  v91 = (v8 + 8);
  v92 = (v24 + 16);
  v89 = v22;
  v90 = (v24 + 8);
  v32 = v29 / v27;
  if (v31 < v29 / v27)
  {
    sub_21E562748(a1, (a2 - a1) / v27, a4, MEMORY[0x277D606E0]);
    v85 = a3;
    v86 = (a4 + v31 * v27);
    v98 = v86;
    v33 = v89;
    v84 = v27;
    while (1)
    {
      if (a4 >= v86 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v96 = a1;
      v97 = a2;
      v35 = *v92;
      (*v92)(v94, a2, v16);
      v95 = a4;
      v35(v33, a4, v16);
      v36 = v87;
      sub_21E57AF6C();
      v37 = v16;
      v38 = sub_21E57B22C();
      v40 = v39;
      v41 = *v91;
      v42 = v93;
      (*v91)(v36, v93);
      v43 = v88;
      sub_21E57AF6C();
      v44 = sub_21E57B22C();
      v46 = v45;
      v41(v43, v42);
      if (v38 == v44 && v40 == v46)
      {

        v33 = v89;
        v53 = *v90;
        (*v90)(v89, v37);
        v53(v94, v37);
        v16 = v37;
        v50 = v96;
      }

      else
      {
        v48 = sub_21E57BB3C();

        v33 = v89;
        v49 = *v90;
        (*v90)(v89, v37);
        v49(v94, v37);
        v16 = v37;
        v50 = v96;
        if (v48)
        {
          v51 = v84;
          a3 = v85;
          a2 = v97 + v84;
          v52 = v96 < v97 || v96 >= a2;
          a4 = v95;
          if (v52)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v96 != v97)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          goto LABEL_37;
        }
      }

      v51 = v84;
      a3 = v85;
      a4 = v95 + v84;
      v54 = v50 < v95 || v50 >= a4;
      a2 = v97;
      if (v54)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v50 != v95)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v99 = a4;
LABEL_37:
      a1 = v50 + v51;
      v100 = a1;
    }
  }

  v94 = result;
  sub_21E562748(a2, v29 / v27, a4, MEMORY[0x277D606E0]);
  v55 = a4 + v32 * v27;
  v56 = -v27;
  v57 = v55;
  v95 = a4;
  v96 = a1;
  v81 = v16;
  v84 = v56;
LABEL_41:
  v85 = (a2 + v56);
  v79 = v57;
  v97 = a2;
  while (1)
  {
    if (v55 <= a4)
    {
      v100 = a2;
      v98 = v57;
      goto LABEL_70;
    }

    if (a2 <= a1)
    {
      break;
    }

    v88 = a3;
    v89 = v55;
    v80 = v57;
    v58 = *v92;
    v87 = (v55 + v56);
    (v58)(v94);
    v58(v86, v85, v16);
    v59 = v82;
    sub_21E57AF6C();
    v60 = sub_21E57B22C();
    v62 = v61;
    v63 = *v91;
    v64 = v93;
    (*v91)(v59, v93);
    v65 = v83;
    sub_21E57AF6C();
    v66 = sub_21E57B22C();
    v68 = v67;
    v63(v65, v64);
    if (v60 == v66 && v62 == v68)
    {
      v70 = 0;
    }

    else
    {
      v70 = sub_21E57BB3C();
    }

    v71 = v88;

    v56 = v84;
    v72 = &v71[v84];
    v73 = *v90;
    v16 = v81;
    (*v90)(v86, v81);
    v73(v94, v16);
    a4 = v95;
    a1 = v96;
    a2 = v97;
    if (v70)
    {
      v75 = v71 < v97 || v72 >= v97;
      v76 = v71;
      a3 = &v71[v56];
      if (v75)
      {
        a2 = v85;
        swift_arrayInitWithTakeFrontToBack();
        v57 = v80;
        v55 = v89;
      }

      else
      {
        v57 = v80;
        v77 = v85;
        a2 = v85;
        v55 = v89;
        if (v76 != v97)
        {
          v57 = v80;
          swift_arrayInitWithTakeBackToFront();
          a2 = v77;
        }
      }

      goto LABEL_41;
    }

    if (v71 < v89 || v72 >= v89)
    {
      v57 = v87;
      swift_arrayInitWithTakeFrontToBack();
      goto LABEL_59;
    }

    v57 = v87;
    v28 = v89 == v71;
    a3 = &v71[v56];
    v55 = v87;
    if (!v28)
    {
      v57 = v87;
      swift_arrayInitWithTakeBackToFront();
LABEL_59:
      a3 = v72;
      v55 = v57;
    }
  }

  v100 = a2;
  v98 = v79;
LABEL_70:
  sub_21E564BDC(&v100, &v99, &v98);
  return 1;
}

uint64_t sub_21E564BDC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_21E57AF9C();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_21E564CBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8B70, &unk_21E57DF10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_21E564DBC(void *a1)
{
  v2 = [a1 internalSignals];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_21E57B78C();

  return v3;
}

uint64_t sub_21E564E20(void *a1)
{
  v2 = [a1 audioSearchResults];

  if (!v2)
  {
    return 0;
  }

  sub_21E5650F4();
  v3 = sub_21E57B78C();

  return v3;
}

uint64_t sub_21E564E88(uint64_t a1, uint64_t a2, double a3)
{
  v6 = (a2 + OBJC_IVAR____TtC16SiriAutoComplete19SiriKitIntentSource_suggestionsForIntentProvider);
  v6[3] = type metadata accessor for DefaultSuggestionsForIntentProvider();
  v6[4] = &off_282F93088;
  *v6 = a1;
  v7 = OBJC_IVAR____TtC16SiriAutoComplete19SiriKitIntentSource_source;
  v8 = *MEMORY[0x277D55868];
  v9 = sub_21E57B3DC();
  (*(*(v9 - 8) + 104))(a2 + v7, v8, v9);
  *(a2 + OBJC_IVAR____TtC16SiriAutoComplete19SiriKitIntentSource_fetchPhrasesTimeoutSeconds) = a3;
  type metadata accessor for SiriAutoCompleteHistogram();
  v10 = swift_allocObject();
  *(v10 + 16) = MEMORY[0x277D84F98];
  *(v10 + 24) = 1;
  *(a2 + OBJC_IVAR____TtC16SiriAutoComplete19SiriKitIntentSource_histogram) = v10;
  return a2;
}

uint64_t sub_21E564F80(uint64_t *a1, double a2)
{
  v12 = *a1;
  v13 = &off_282F93088;
  v11[0] = a1;
  type metadata accessor for SiriKitIntentSource(0);
  v3 = swift_allocObject();
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
  MEMORY[0x28223BE20](v4);
  v6 = (&v11[-1] - v5);
  (*(v7 + 16))(&v11[-1] - v5);
  v8 = sub_21E564E88(*v6, v3, a2);
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v8;
}

unint64_t sub_21E5650F4()
{
  result = qword_281225510;
  if (!qword_281225510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281225510);
  }

  return result;
}

uint64_t sub_21E56514C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_8_3();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_21E5651A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a3 + OBJC_IVAR____TtC16SiriAutoComplete25AppIntentTranscriptSource_suggestionsForIntentProvider);
  v6[3] = type metadata accessor for DefaultSuggestionsForIntentProvider();
  v6[4] = &off_282F93088;
  *v6 = a1;
  v7 = OBJC_IVAR____TtC16SiriAutoComplete25AppIntentTranscriptSource_source;
  v8 = *MEMORY[0x277D55858];
  v9 = sub_21E57B3DC();
  (*(*(v9 - 8) + 104))(a3 + v7, v8, v9);
  type metadata accessor for SiriAutoCompleteHistogram();
  v10 = swift_allocObject();
  *(v10 + 16) = MEMORY[0x277D84F98];
  *(v10 + 24) = 2;
  *(a3 + OBJC_IVAR____TtC16SiriAutoComplete25AppIntentTranscriptSource_histogram) = v10;
  *(a3 + OBJC_IVAR____TtC16SiriAutoComplete25AppIntentTranscriptSource_maxNumTrancriptRecords) = a2;
  return a3;
}

uint64_t sub_21E565294(uint64_t a1, uint64_t a2)
{
  v13 = type metadata accessor for DefaultSuggestionsForIntentProvider();
  v14 = &off_282F93088;
  v12[0] = a1;
  type metadata accessor for AppIntentTranscriptSource(0);
  v4 = swift_allocObject();
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  MEMORY[0x28223BE20](v5);
  v7 = (&v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = sub_21E5651A4(*v7, a2, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  return v9;
}

unint64_t sub_21E5653AC()
{
  result = qword_281225560;
  if (!qword_281225560)
  {
    sub_21E57AFEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281225560);
  }

  return result;
}

uint64_t sub_21E565404(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21E565444(uint64_t result, int a2, int a3)
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

uint64_t sub_21E565498(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21E5654D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21E565544()
{
  result = qword_27CEC8CD0;
  if (!qword_27CEC8CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8CD0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_25_3(uint64_t a1)
{

  return swift_allocObject();
}

double OUTLINED_FUNCTION_31_1()
{
  v1 = *(v0 - 168);
  *(v1 + 32) = 0;
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

uint64_t sub_21E5656E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_21E565760(v4, a3);
  }

  sub_21E567754();
  v6 = sub_21E57B78C();
  return sub_21E5657D0(v4, v6);
}

uint64_t sub_21E565760(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8CE0, qword_21E57E0F8);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_21E5657F0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88F8, &unk_21E57C470);
  OUTLINED_FUNCTION_13_1(v2);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v3);
  v5 = v49 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8900, &unk_21E57C620);
  OUTLINED_FUNCTION_13_1(v6);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v7);
  v9 = v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88D8, &unk_21E57D3B0);
  OUTLINED_FUNCTION_13_1(v10);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v11);
  v13 = v49 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8908, &qword_21E57C480);
  OUTLINED_FUNCTION_13_1(v14);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v15);
  v17 = v49 - v16;
  v18 = sub_21E57B3DC();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v23 = v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [a1 phrase];
  v25 = sub_21E57B67C();
  v49[3] = v26;
  v49[4] = v25;

  v27 = [a1 associatedAppBundleIdentifier];
  v28 = sub_21E57B67C();
  v49[1] = v29;
  v49[2] = v28;

  v30 = [a1 identifier];
  v49[0] = sub_21E57B67C();

  (*(v20 + 104))(v23, *MEMORY[0x277D55848], v18);
  v31 = sub_21E57B1FC();
  OUTLINED_FUNCTION_7(v17, v32, v33, v31);
  v34 = sub_21E57AC4C();
  OUTLINED_FUNCTION_7(v13, v35, v36, v34);
  v37 = sub_21E57B5FC();
  OUTLINED_FUNCTION_7(v9, v38, v39, v37);
  v40 = sub_21E57B04C();
  OUTLINED_FUNCTION_7(v5, v41, v42, v40);
  v43 = sub_21E57B5AC();
  v44 = sub_21E57B59C();
  v49[8] = v43;
  v49[9] = MEMORY[0x277D55898];
  v49[5] = v44;
  sub_21E57B4AC();
  swift_allocObject();
  v45 = sub_21E57B44C();
  v46 = [a1 runEventsCount];
  v47 = v46;
  if (v46)
  {
    [v46 doubleValue];
  }

  sub_21E57B3FC();
  return v45;
}

uint64_t sub_21E565B74(uint64_t a1)
{
  v2 = sub_21E57B5EC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E57B5BC();
  v8 = sub_21E57B5DC();
  v9 = sub_21E57B84C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_21E527000, v8, v9, "Ranking Voice Shortcut phrases", v10, 2u);
    OUTLINED_FUNCTION_39();
  }

  (*(v4 + 8))(v7, v2);
  v11 = sub_21E5351E4();
  v12 = v11;
  if (v11)
  {
    if (v11 < 1)
    {
      __break(1u);
      goto LABEL_30;
    }

    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = OUTLINED_FUNCTION_60();
        MEMORY[0x223D5CE50](v15);
      }

      else
      {
      }

      v16 = COERCE_DOUBLE(sub_21E57B3EC());
      if (v17)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = v16;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21E543828();
        v14 = v20;
      }

      v19 = *(v14 + 16);
      if (v19 >= *(v14 + 24) >> 1)
      {
        sub_21E543828();
        v14 = v21;
      }

      ++v13;

      *(v14 + 16) = v19 + 1;
      *(v14 + 8 * v19 + 32) = v18;
    }

    while (v12 != v13);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v27 = v14;

  sub_21E571410(&v27);

  v2 = v27;
  if (!v12)
  {
  }

  if (v12 >= 1)
  {
    v22 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223D5CE50](v22, a1);
      }

      else
      {
      }

      ++v22;
      v23 = COERCE_DOUBLE(sub_21E57B3EC());
      if (v24)
      {
        v23 = 0.0;
      }

      sub_21E57A72C(v2, v23);
      sub_21E57B3FC();
    }

    while (v12 != v22);
  }

LABEL_30:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_21E565E58()
{
  v1 = OBJC_IVAR____TtC16SiriAutoComplete19VoiceShortcutSource_source;
  v2 = sub_21E57B3DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for VoiceShortcutSource(uint64_t a1)
{
  result = qword_281225CF8;
  if (!qword_281225CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E565F48(uint64_t a1)
{
  result = sub_21E57B3DC();
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

uint64_t sub_21E565FD8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16SiriAutoComplete19VoiceShortcutSource_source;
  v5 = sub_21E57B3DC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_21E566054(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21E566128;

  return sub_21E566938(v8, a2, a3, v7);
}

uint64_t sub_21E566128()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();

  v0 = OUTLINED_FUNCTION_5();

  return v1(v0);
}

uint64_t sub_21E566214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a1;
  v6 = sub_21E57B5EC();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v7 = type metadata accessor for DefaultEligibilityCriteria();
  v3[17] = v7;
  v3[5] = v7;
  v3[6] = &off_282F92F38;
  v3[2] = a2;
  v3[10] = type metadata accessor for DefaultSiriShortcutsEnablementProvider();
  v3[11] = &off_282F92ED8;
  v3[7] = a3;

  return MEMORY[0x2822009F8](sub_21E566338);
}

uint64_t sub_21E566338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_190();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_225();
  a22 = v24;
  v27 = *(v24 + 136);
  v28 = [*(v24 + 96) associatedAppBundleIdentifier];
  v29 = sub_21E57B67C();
  v31 = v30;

  *(v24 + 144) = v29;
  *(v24 + 152) = v31;
  __swift_project_boxed_opaque_existential_1((v24 + 16), v27);
  v32 = OUTLINED_FUNCTION_60();
  if (sub_21E54A03C(v32))
  {
    __swift_project_boxed_opaque_existential_1((v24 + 56), *(v24 + 80));
    v33 = swift_task_alloc();
    *(v24 + 160) = v33;
    *v33 = v24;
    v33[1] = sub_21E566608;
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_120();

    return sub_21E5496DC();
  }

  else
  {
    v36 = *(v24 + 96);
    sub_21E57B5BC();
    v37 = v36;

    v38 = sub_21E57B5DC();
    v39 = sub_21E57B85C();

    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v24 + 128);
    v42 = *(v24 + 104);
    v43 = *(v24 + 112);
    if (v40)
    {
      v44 = *(v24 + 96);
      v45 = swift_slowAlloc();
      a10 = swift_slowAlloc();
      a13 = a10;
      *v45 = 136315394;
      v46 = [v44 shortcutName];
      a11 = v42;
      a12 = v41;
      v47 = sub_21E57B67C();
      v49 = v48;

      v50 = sub_21E5553D8(v47, v49, &a13);

      *(v45 + 4) = v50;
      *(v45 + 12) = 2080;
      v51 = OUTLINED_FUNCTION_60();
      v54 = sub_21E5553D8(v51, v52, v53);

      *(v45 + 14) = v54;
      _os_log_impl(&dword_21E527000, v38, v39, "VoiceShortcut: %s's appBundleId %s is not installed. Not eligible for autocomplete", v45, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_39();

      (*(v43 + 8))(a12, a11);
    }

    else
    {

      (*(v43 + 8))(v41, v42);
    }

    __swift_destroy_boxed_opaque_existential_0Tm((v24 + 16));
    __swift_destroy_boxed_opaque_existential_0Tm((v24 + 56));

    OUTLINED_FUNCTION_120();

    return v57(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_21E566608()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 168) = v3;

  return MEMORY[0x2822009F8](sub_21E5666F8);
}

uint64_t sub_21E5666F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_190();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_225();
  a22 = v24;
  if (*(v24 + 168) == 1)
  {
  }

  else
  {
    v27 = *(v24 + 96);
    sub_21E57B5BC();
    v28 = v27;

    v29 = sub_21E57B5DC();
    v30 = sub_21E57B85C();

    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v24 + 152);
    if (v31)
    {
      a9 = *(v24 + 144);
      a10 = *(v24 + 112);
      v33 = *(v24 + 96);
      a11 = *(v24 + 104);
      a12 = *(v24 + 120);
      v34 = swift_slowAlloc();
      a13 = swift_slowAlloc();
      *v34 = 136315394;
      v35 = [v33 shortcutName];
      v36 = sub_21E57B67C();
      v38 = v37;

      v39 = sub_21E5553D8(v36, v38, &a13);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2080;
      v40 = sub_21E5553D8(a9, v32, &a13);

      *(v34 + 14) = v40;
      _os_log_impl(&dword_21E527000, v29, v30, "VoiceShortcut: %s's appBundleId %s is not enabled for Siri. Not eligible for autocomplete", v34, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_39();

      (*(a10 + 8))(a12, a11);
    }

    else
    {
      v42 = *(v24 + 112);
      v41 = *(v24 + 120);
      v43 = *(v24 + 104);

      (*(v42 + 8))(v41, v43);
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v24 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v24 + 56));

  OUTLINED_FUNCTION_120();

  return v46(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_21E566938(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[28] = a4;
  v4[29] = *a4;
  v6 = sub_21E57B5EC();
  v4[30] = v6;
  v4[31] = *(v6 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[21] = type metadata accessor for DefaultEligibilityCriteria();
  v4[22] = &off_282F92F38;
  v4[18] = a1;

  return MEMORY[0x2822009F8](sub_21E566A6C);
}

uint64_t sub_21E566A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v37 = v12;
  sub_21E57B5BC();
  v13 = sub_21E57B5DC();
  v14 = sub_21E57B84C();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v12[35];
  v17 = v12[30];
  v18 = v12[31];
  if (v15)
  {
    v19 = OUTLINED_FUNCTION_50();
    v20 = swift_slowAlloc();
    v36 = v20;
    *v19 = 136315138;
    v21 = sub_21E57BC2C();
    v23 = sub_21E5553D8(v21, v22, &v36);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_21E527000, v13, v14, "%s: Fetching phrases", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_39();
  }

  v24 = *(v18 + 8);
  v24(v16, v17);
  v12[36] = v24;
  sub_21E57B4AC();
  v12[37] = sub_21E57B62C();
  v25 = [objc_opt_self() standardClient];
  v12[38] = v25;
  v12[2] = v12;
  v12[7] = v12 + 26;
  v12[3] = sub_21E566CC4;
  v26 = swift_continuation_init();
  v12[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8CD8, &qword_21E57E0E8);
  v12[10] = MEMORY[0x277D85DD0];
  v12[11] = 1107296256;
  v12[12] = sub_21E5656E8;
  v12[13] = &block_descriptor_4;
  v12[14] = v26;
  [v25 getVoiceShortcutsWithCompletion_];
  OUTLINED_FUNCTION_55();

  return MEMORY[0x282200938](v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t sub_21E566CC4()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 312) = v4;
  if (v4)
  {
    v5 = sub_21E566FD0;
  }

  else
  {
    v5 = sub_21E566DC4;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_21E566DC4()
{
  v2 = v0[38];
  v0[40] = v0[26];

  result = sub_21E5351E4();
  v0[41] = result;
  if (!result)
  {

    v8 = v0[37];
    sub_21E57B5BC();
    sub_21E57B5DC();
    v9 = sub_21E57B84C();
    if (OUTLINED_FUNCTION_10_5(v9))
    {
      v10 = OUTLINED_FUNCTION_50();
      *v10 = 134217984;
      *(v10 + 4) = *(v8 + 16);
      OUTLINED_FUNCTION_4_6(&dword_21E527000, v11, v12, "VoiceShortcutSource: created %ld phrases");
      OUTLINED_FUNCTION_39();
    }

    OUTLINED_FUNCTION_3_8();
    v13 = OUTLINED_FUNCTION_7_4();
    v1(v13);

    v15 = sub_21E529E80(v14);
    sub_21E565B74(v15);

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_55();

    __asm { BRAA            X2, X16 }
  }

  if (result >= 1)
  {
    type metadata accessor for DefaultSiriShortcutsEnablementProvider();
    inited = swift_initStaticObject();
    v5 = v0[37];
    v0[45] = v5;
    v0[46] = v5;
    v0[43] = v5;
    v0[44] = 0;
    v0[42] = inited;
    v6 = v0[40];
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x223D5CE50](0);
    }

    else
    {
      v7 = *(v6 + 32);
    }

    v0[47] = v7;
    __swift_project_boxed_opaque_existential_1(v0 + 18, v0[21]);
    v18 = swift_task_alloc();
    v0[48] = v18;
    *v18 = v0;
    OUTLINED_FUNCTION_0_5(v18);
    OUTLINED_FUNCTION_55();

    __asm { BR              X4 }
  }

  __break(1u);
  return result;
}

uint64_t sub_21E566FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t, uint64_t), void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_190();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_225();
  a22 = v24;
  v28 = *(v24 + 304);
  v29 = *(v24 + 312);
  swift_willThrow();

  sub_21E57B5BC();
  v30 = v29;
  v31 = sub_21E57B5DC();
  v32 = sub_21E57B86C();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = *(v24 + 312);
    a10 = *(v24 + 272);
    a11 = *(v24 + 288);
    v34 = *(v24 + 240);
    v35 = OUTLINED_FUNCTION_50();
    v25 = swift_slowAlloc();
    a12 = v25;
    *v35 = 136315138;
    swift_getErrorValue();
    v36 = sub_21E57BB7C();
    v38 = sub_21E5553D8(v36, v37, &a12);

    *(v35 + 4) = v38;
    _os_log_impl(&dword_21E527000, v31, v32, "Unexpected error occurred while fetching voice shortcuts: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_39();

    a11(a10, v34);
  }

  else
  {
    v39 = *(v24 + 288);
    v40 = *(v24 + 272);
    v41 = *(v24 + 240);

    v39(v40, v41);
  }

  v42 = *(v24 + 296);
  sub_21E57B5BC();
  sub_21E57B5DC();
  v43 = sub_21E57B84C();
  if (OUTLINED_FUNCTION_10_5(v43))
  {
    v44 = OUTLINED_FUNCTION_50();
    *v44 = 134217984;
    *(v44 + 4) = *(v42 + 16);
    OUTLINED_FUNCTION_4_6(&dword_21E527000, v45, v46, "VoiceShortcutSource: created %ld phrases");
    OUTLINED_FUNCTION_39();
  }

  OUTLINED_FUNCTION_3_8();
  v47 = OUTLINED_FUNCTION_7_4();
  (v25)(v47);

  v49 = sub_21E529E80(v48);
  sub_21E565B74(v49);

  __swift_destroy_boxed_opaque_existential_0Tm((v24 + 144));

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_120();

  return v52(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_21E567230()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 392) = v3;

  return MEMORY[0x2822009F8](sub_21E567320);
}

uint64_t sub_21E567320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t, void *), uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_190();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_225();
  a22 = v24;
  v28 = *(v24 + 376);
  if ((*(v24 + 392) & 1) == 0)
  {
    sub_21E57B5BC();
    v34 = v28;
    v35 = sub_21E57B5DC();
    v36 = sub_21E57B85C();

    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v24 + 376);
    v39 = *(v24 + 288);
    v40 = *(v24 + 256);
    v41 = *(v24 + 240);
    if (v37)
    {
      a12 = *(v24 + 248) + 8;
      a11 = *(v24 + 288);
      v42 = OUTLINED_FUNCTION_50();
      a10 = v40;
      v43 = swift_slowAlloc();
      a13 = v43;
      *v42 = 136315138;
      v44 = [v38 shortcutName];
      v45 = sub_21E57B67C();
      v47 = v46;

      v25 = sub_21E5553D8(v45, v47, &a13);

      *(v42 + 4) = v25;
      _os_log_impl(&dword_21E527000, v35, v36, "VoiceShortcut %s is not eligible for autocomplete. Skipping processing", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_39();

      a11(a10, v41);
    }

    else
    {

      v39(v40, v41);
    }

    goto LABEL_8;
  }

  v29 = *(v24 + 360);
  sub_21E5657F0(*(v24 + 376));

  v30 = sub_21E57B45C();
  if (*(v29 + 16))
  {
    sub_21E52F7C4(v30);
    v32 = v31;

    if (v32)
    {
      v33 = *(v24 + 376);

LABEL_8:
      v49 = *(v24 + 360);
      v48 = *(v24 + 368);
      v50 = *(v24 + 344);
      goto LABEL_11;
    }
  }

  else
  {
  }

  v51 = *(v24 + 376);
  v52 = *(v24 + 344);
  v53 = sub_21E57B45C();
  v54 = sub_21E5657F0(v51);
  swift_isUniquelyReferenced_nonNull_native();
  a13 = v52;
  sub_21E545E44(v54, v53);

  v50 = a13;
  v49 = a13;
  v48 = a13;
LABEL_11:
  v55 = *(v24 + 352) + 1;
  if (v55 == *(v24 + 328))
  {

    sub_21E57B5BC();
    sub_21E57B5DC();
    v56 = sub_21E57B84C();
    if (OUTLINED_FUNCTION_10_5(v56))
    {
      v57 = OUTLINED_FUNCTION_50();
      *v57 = 134217984;
      *(v57 + 4) = v49[2];
      OUTLINED_FUNCTION_4_6(&dword_21E527000, v58, v59, "VoiceShortcutSource: created %ld phrases");
      OUTLINED_FUNCTION_39();
    }

    OUTLINED_FUNCTION_3_8();
    v60 = OUTLINED_FUNCTION_7_4();
    v25(v60);

    v62 = sub_21E529E80(v61);
    sub_21E565B74(v62);

    __swift_destroy_boxed_opaque_existential_0Tm((v24 + 144));

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_120();

    return v65(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    *(v24 + 360) = v49;
    *(v24 + 368) = v48;
    *(v24 + 344) = v50;
    *(v24 + 352) = v55;
    v72 = *(v24 + 320);
    if ((v72 & 0xC000000000000001) != 0)
    {
      v73 = MEMORY[0x223D5CE50]();
    }

    else
    {
      v73 = *(v72 + 8 * v55 + 32);
    }

    *(v24 + 376) = v73;
    __swift_project_boxed_opaque_existential_1((v24 + 144), *(v24 + 168));
    v74 = swift_task_alloc();
    *(v24 + 384) = v74;
    *v74 = v24;
    OUTLINED_FUNCTION_0_5(v74);
    OUTLINED_FUNCTION_120();

    return v79(v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11, sub_21E566214, a13, a14, a15, a16);
  }
}

unint64_t sub_21E567754()
{
  result = qword_281225500;
  if (!qword_281225500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281225500);
  }

  return result;
}

void OUTLINED_FUNCTION_3_8()
{
}

void OUTLINED_FUNCTION_4_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_10_5(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_21E567844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v57 = a2;
  v58 = a6;
  v56 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88F8, &unk_21E57C470);
  OUTLINED_FUNCTION_13_1(v9);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_9();
  v54 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8900, &unk_21E57C620);
  OUTLINED_FUNCTION_13_1(v12);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_9();
  v53 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88D8, &unk_21E57D3B0);
  OUTLINED_FUNCTION_13_1(v15);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_9();
  v52 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8908, &qword_21E57C480);
  OUTLINED_FUNCTION_13_1(v18);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_9();
  v51 = v20;
  v21 = sub_21E57B3DC();
  OUTLINED_FUNCTION_0();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  v26 = v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CATDialogProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8910, &qword_21E57C490);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E57C390;
  *(inited + 32) = 0x656D614E707061;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = a3;
  *(inited + 56) = a4;

  v28 = sub_21E57B62C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = [objc_opt_self() bundleForClass_];
  v55 = a5;
  v31 = sub_21E55E854(v30, 0xD000000000000020, 0x800000021E57FBE0, v28, a5, v58, 0x636E75614C707061, 0xEF65736172685068);
  v33 = v32;

  if (!v33)
  {
    return 0;
  }

  v59 = 0x636E75614C707061;
  v60 = 0xEA00000000005F68;
  v34 = v57;

  v50[1] = v31;
  MEMORY[0x223D5CBD0](v56, v34);
  v50[3] = v59;
  v50[2] = v60;
  (*(v23 + 104))(v26, *MEMORY[0x277D55878], v21);
  v35 = sub_21E57B1FC();
  OUTLINED_FUNCTION_7(v51, v36, v37, v35);
  v38 = sub_21E57AC4C();
  OUTLINED_FUNCTION_7(v52, v39, v40, v38);
  v41 = sub_21E57B5FC();
  OUTLINED_FUNCTION_7(v53, v42, v43, v41);
  v44 = sub_21E57B04C();
  OUTLINED_FUNCTION_7(v54, v45, v46, v44);
  v47 = sub_21E57B5AC();
  v48 = sub_21E57B59C();
  v61 = v47;
  v62 = MEMORY[0x277D55898];
  v59 = v48;
  sub_21E57B4AC();
  swift_allocObject();

  return sub_21E57B44C();
}

uint64_t sub_21E567CC0(char a1)
{
  if (!a1)
  {
    return 0xD000000000000020;
  }

  if (a1 == 1)
  {
    return 0x656D614E707061;
  }

  return 0x636E75614C707061;
}

uint64_t sub_21E567D28(uint64_t a1)
{
  v2 = sub_21E57B5EC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E57B5BC();
  v8 = sub_21E57B5DC();
  v9 = sub_21E57B84C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_21E527000, v8, v9, "Ranking App Launch phrases", v10, 2u);
    OUTLINED_FUNCTION_39();
  }

  (*(v4 + 8))(v7, v2);

  sub_21E5427F8(a1);
}

uint64_t sub_21E567E7C()
{
  v1 = OBJC_IVAR____TtC16SiriAutoComplete15AppLaunchSource_source;
  v2 = sub_21E57B3DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for AppLaunchSource(uint64_t a1)
{
  result = qword_2812267B0;
  if (!qword_2812267B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E567F7C(uint64_t a1)
{
  result = sub_21E57B3DC();
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

uint64_t sub_21E568018@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16SiriAutoComplete15AppLaunchSource_source;
  v5 = sub_21E57B3DC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_21E568094(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21E568168;

  return sub_21E568264(v8, a2, a3, v7);
}

uint64_t sub_21E568168(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_21E568264(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[7] = a2;
  v4[10] = *a4;
  v6 = sub_21E57B5EC();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v7 = type metadata accessor for DefaultEligibilityCriteria();
  v4[15] = v7;
  v4[5] = v7;
  v4[6] = &off_282F92F38;
  v4[2] = a1;

  return MEMORY[0x2822009F8](sub_21E568388);
}

void sub_21E568388(uint64_t a1)
{
  v50 = v1;
  sub_21E57B5BC();
  v2 = sub_21E57B5DC();
  v3 = sub_21E57B84C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[14];
  v7 = v1[11];
  v6 = v1[12];
  v48 = v1;
  if (v4)
  {
    v8 = v1 + 5;
    v46 = v1[14];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v49 = v10;
    *v9 = 136315138;
    v11 = sub_21E57BC2C();
    v13 = sub_21E5553D8(v11, v12, &v49);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_21E527000, v2, v3, "%s: Fetching phrases", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_39();

    (*(v6 + 8))(v46, v7);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
    v8 = v1 + 15;
  }

  v14 = *v8;
  v44 = MEMORY[0x277D84F90];
  v49 = MEMORY[0x277D84F90];
  v15 = __swift_project_boxed_opaque_existential_1(v1 + 2, v14);
  v16 = *(*__swift_project_boxed_opaque_existential_1((*v15 + 16), *(*v15 + 40)) + 16);
  v45 = v16 + 64;
  v47 = v16;
  v17 = -1;
  v18 = -1 << *(v16 + 32);
  if (-v18 < 64)
  {
    v17 = ~(-1 << -v18);
  }

  v19 = v17 & *(v16 + 64);
  v20 = (63 - v18) >> 6;

  v21 = 0;
  while (v19)
  {
    v22 = v48;
LABEL_14:
    v25 = v22[7];
    v24 = v22[8];
    v26 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v27 = v26 | (v21 << 6);
    v28 = (*(v47 + 48) + 16 * v27);
    v29 = *v28;
    v30 = v28[1];
    v31 = (*(v47 + 56) + 24 * v27);
    v32 = *v31;
    v33 = v31[1];

    v34 = sub_21E567844(v29, v30, v32, v33, v25, v24);

    if (v34)
    {

      MEMORY[0x223D5CC60](v35);
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21E57B7AC();
      }

      sub_21E57B7CC();

      v44 = v49;
    }
  }

  v22 = v48;
  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      return;
    }

    if (v23 >= v20)
    {
      break;
    }

    v19 = *(v45 + 8 * v23);
    ++v21;
    if (v19)
    {
      v21 = v23;
      goto LABEL_14;
    }
  }

  sub_21E57B5BC();

  v36 = sub_21E57B5DC();
  v37 = sub_21E57B84C();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 134217984;
    *(v38 + 4) = sub_21E5351E4();

    _os_log_impl(&dword_21E527000, v36, v37, "AppLaunchSource: created %ld phrases", v38, 0xCu);
    OUTLINED_FUNCTION_39();

    v39 = OUTLINED_FUNCTION_4_7();
    v40(v39);
  }

  else
  {

    v41 = OUTLINED_FUNCTION_4_7();
    v42(v41);
  }

  sub_21E567D28(v44);
  __swift_destroy_boxed_opaque_existential_0Tm(v48 + 2);

  v43 = v48[1];

  v43(v44);
}

uint64_t sub_21E5687D0()
{
  v44 = sub_21E57AC4C();
  OUTLINED_FUNCTION_0();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14();
  v5 = v4 - v3;
  v6 = sub_21E57ACCC();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14();
  v12 = v11 - v10;
  v43 = sub_21E57ACDC();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88D8, &unk_21E57D3B0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v42 - v24;
  MEMORY[0x28223BE20](v23);
  v42 = &v42 - v26;
  type metadata accessor for SiriAutoCompleteHistogram();
  v27 = swift_allocObject();
  v45 = v27;
  *(v27 + 16) = MEMORY[0x277D84F98];
  *(v27 + 24) = 0;
  sub_21E57ACBC();
  (*(v8 + 104))(v12, *MEMORY[0x277CC9998], v6);
  sub_21E57AC3C();
  sub_21E57ACAC();
  v28 = v44;
  (*(v1 + 8))(v5, v44);
  (*(v8 + 8))(v12, v6);
  (*(v14 + 8))(v18, v43);
  v29 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v30 = [v29 InFocus];
  swift_unknownObjectRelease();
  v31 = v42;
  sub_21E569258(v42, v25);
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v28);
  v32 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v33 = sub_21E52F134(v25, v22, 1000, 0, 0);
  v34 = [v30 publisherWithOptions_];

  v50 = sub_21E568D04;
  v51 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v47 = 1107296256;
  v48 = sub_21E529E04;
  v49 = &block_descriptor_5;
  v35 = _Block_copy(&aBlock);
  v36 = [v34 filterWithIsIncluded_];
  _Block_release(v35);

  v50 = sub_21E568E7C;
  v51 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v47 = 1107296256;
  v48 = sub_21E529A78;
  v49 = &block_descriptor_4;
  v37 = _Block_copy(&aBlock);
  v38 = v45;
  v50 = sub_21E5692E0;
  v51 = v45;
  aBlock = MEMORY[0x277D85DD0];
  v47 = 1107296256;
  v48 = sub_21E529A78;
  v49 = &block_descriptor_7;
  v39 = _Block_copy(&aBlock);

  v40 = [v36 sinkWithCompletion:v37 receiveInput:v39];
  _Block_release(v39);
  _Block_release(v37);

  sub_21E5692E8(v31);
  return v38;
}

id sub_21E568D04(void *a1)
{
  v2 = sub_21E57B5EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 eventBody];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 starting];
  }

  else
  {
    sub_21E57B5BC();
    v9 = sub_21E57B5DC();
    v10 = sub_21E57B86C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21E527000, v9, v10, "Skipping Biome event with missing body", v11, 2u);
      MEMORY[0x223D5D740](v11, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  return v8;
}

id sub_21E568E7C(void *a1)
{
  v2 = sub_21E57B5EC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  if ([a1 state])
  {
    sub_21E57B5BC();
    v9 = sub_21E57B5DC();
    v10 = sub_21E57B86C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21E527000, v9, v10, "Publisher completion state was not 'success'", v11, 2u);
      MEMORY[0x223D5D740](v11, -1, -1);
    }

    return (*(v3 + 8))(v8, v2);
  }

  else
  {
    result = [a1 error];
    if (result)
    {
      v13 = result;
      sub_21E57B5BC();
      v14 = v13;
      v15 = sub_21E57B5DC();
      v16 = sub_21E57B86C();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v23 = v18;
        *v17 = 136315138;
        swift_getErrorValue();
        v19 = sub_21E57BB7C();
        v21 = sub_21E5553D8(v19, v20, &v23);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_21E527000, v15, v16, "Error encountered while attempting to build the app launch histogram: %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
        MEMORY[0x223D5D740](v18, -1, -1);
        MEMORY[0x223D5D740](v17, -1, -1);
      }

      else
      {
      }

      return (*(v3 + 8))(v6, v2);
    }
  }

  return result;
}

void sub_21E569128(void *a1)
{
  v1 = [a1 eventBody];
  if (v1)
  {
    v4 = v1;
    v2 = sub_21E569350(v1);
    if (v3)
    {
      sub_21E542680(v2, v3, 1.0);
    }

    else
    {
    }
  }
}

uint64_t sub_21E5691D8()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_21E569258(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88D8, &unk_21E57D3B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_21E5692E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88D8, &unk_21E57D3B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21E569350(void *a1)
{
  v1 = [a1 bundleID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21E57B67C();

  return v3;
}

void sub_21E5693C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v74 = a3;
  v7 = *v3;
  v8 = sub_21E57B5EC();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v67 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v67 - v18;
  v20 = v4[3];
  v77[0] = a1;
  v77[1] = a2;
  v76 = v77;
  if (sub_21E56E084(sub_21E540070, v75, v20))
  {
    v21 = sub_21E52D130(a1, a2, v4[2]);
    if (v21)
    {
      v22 = v21;
      v23 = *(*(v21 + 40) + 16);
      v73 = v8;
      v70 = a1;
      if (v23 || *(*(v21 + 32) + 16))
      {
        v68 = v10;
        v69 = v14;
        v67 = v7;
        v71 = a2;
        v24 = v74;
        v25 = v74 + 56;
        v26 = 1 << *(v74 + 32);
        if (v26 < 64)
        {
          v27 = ~(-1 << v26);
        }

        else
        {
          v27 = -1;
        }

        v28 = v27 & *(v74 + 56);
        v29 = (v26 + 63) >> 6;

        v30 = 0;
        v72 = v22;
LABEL_9:
        while (v28)
        {
          v31 = v28;
LABEL_16:
          v28 = (v31 - 1) & v31;
          v34 = *(v22 + 40);
          if (*(v34 + 16))
          {
            v35 = (*(v24 + 48) + ((v30 << 10) | (16 * __clz(__rbit64(v31)))));
            v37 = *v35;
            v36 = v35[1];
            sub_21E57BB8C();

            sub_21E57B6AC();
            v38 = sub_21E57BBCC();
            v39 = ~(-1 << *(v34 + 32));
            do
            {
              v40 = v38 & v39;
              if (((*(v34 + 56 + (((v38 & v39) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v38 & v39)) & 1) == 0)
              {

                v22 = v72;
                v24 = v74;
                goto LABEL_9;
              }

              v41 = (*(v34 + 48) + 16 * v40);
              if (*v41 == v37 && v41[1] == v36)
              {
                break;
              }

              v43 = sub_21E57BB3C();
              v38 = v40 + 1;
            }

            while ((v43 & 1) == 0);

            return;
          }
        }

        v32 = v71;
        while (1)
        {
          v33 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            __break(1u);
            return;
          }

          if (v33 >= v29)
          {
            break;
          }

          v31 = *(v25 + 8 * v33);
          ++v30;
          if (v31)
          {
            v30 = v33;
            goto LABEL_16;
          }
        }

        if (sub_21E543F9C(v24, *(v22 + 32)))
        {
          v51 = v69;
          sub_21E57B5BC();

          v52 = sub_21E57B5DC();
          v53 = sub_21E57B85C();

          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            v77[0] = swift_slowAlloc();
            *v54 = 136315650;
            v55 = sub_21E57BC2C();
            v57 = sub_21E5553D8(v55, v56, v77);

            *(v54 + 4) = v57;
            *(v54 + 12) = 2080;
            *(v54 + 14) = sub_21E5553D8(v70, v32, v77);
            *(v54 + 22) = 2080;
            v58 = sub_21E57B81C();
            v60 = sub_21E5553D8(v58, v59, v77);

            *(v54 + 24) = v60;
            _os_log_impl(&dword_21E527000, v52, v53, "%s: Not adding intent class %s, parameter combination: %s", v54, 0x20u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_39();
            OUTLINED_FUNCTION_39();
          }

          else
          {
          }

          (*(v68 + 8))(v51, v73);
        }

        else
        {
        }
      }

      else
      {
        sub_21E57B5BC();

        v61 = sub_21E57B5DC();
        v62 = sub_21E57B85C();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v77[0] = swift_slowAlloc();
          *v63 = 136315394;
          v64 = sub_21E57BC2C();
          v66 = sub_21E5553D8(v64, v65, v77);

          *(v63 + 4) = v66;
          *(v63 + 12) = 2080;
          *(v63 + 14) = sub_21E5553D8(v70, a2, v77);
          _os_log_impl(&dword_21E527000, v61, v62, "%s: %s has malformed deniedIntentParameters, assuming the intent is allowed for all parameter combinations.", v63, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_39();

          (*(v10 + 8))(v17, v73);
        }

        else
        {

          (*(v10 + 8))(v17, v8);
        }
      }
    }
  }

  else
  {
    sub_21E57B5BC();

    v44 = sub_21E57B5DC();
    v45 = sub_21E57B85C();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v73 = v8;
      v77[0] = v47;
      *v46 = 136315394;
      v48 = sub_21E57BC2C();
      v50 = sub_21E5553D8(v48, v49, v77);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      *(v46 + 14) = sub_21E5553D8(a1, a2, v77);
      _os_log_impl(&dword_21E527000, v44, v45, "%s: Not indexing %s since it is not an allowed intent", v46, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_39();

      (*(v10 + 8))(v19, v73);
    }

    else
    {

      (*(v10 + 8))(v19, v8);
    }
  }
}

uint64_t sub_21E569AFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C43746E65746E69 && a2 == 0xEB00000000737361;
  if (v4 || (sub_21E57BB3C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001BLL && 0x800000021E57FC90 == a2;
    if (v6 || (sub_21E57BB3C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x800000021E57FCB0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_21E57BB3C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_21E569C24(char a1)
{
  if (!a1)
  {
    return 0x6C43746E65746E69;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001BLL;
  }

  return 0xD000000000000010;
}

uint64_t sub_21E569C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E569AFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21E569CC4(uint64_t a1)
{
  v2 = sub_21E56BFDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E569D00(uint64_t a1)
{
  v2 = sub_21E56BFDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21E569D3C()
{

  return v0;
}

uint64_t sub_21E569D6C()
{
  sub_21E569D3C();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_21E569DC4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8CE8, &qword_21E57E290);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E56BFDC();
  sub_21E57BBEC();
  LOBYTE(v13) = 0;
  sub_21E57BAEC();
  if (!v2)
  {
    v13 = *(v3 + 32);
    HIBYTE(v12) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8CF0, &unk_21E57E298);
    sub_21E56C030(&unk_27CEC8CF8);
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_1_5();
    sub_21E57BAFC();
    v13 = *(v3 + 40);
    HIBYTE(v12) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88E0, &unk_21E57C450);
    sub_21E56C0B4(&unk_27CEC8D00);
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_1_5();
    sub_21E57BAFC();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_21E569FD0(void *a1)
{
  v2 = swift_allocObject();
  sub_21E56A020(a1);
  return v2;
}

uint64_t *sub_21E56A020(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8D08, &qword_21E57E2A8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E56BFDC();
  sub_21E57BBDC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v9) = 0;
    v1[2] = sub_21E57BAAC();
    v1[3] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8CF0, &unk_21E57E298);
    sub_21E56C030(&unk_281225518);
    OUTLINED_FUNCTION_2_7();
    sub_21E57BABC();
    v1[4] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88E0, &unk_21E57C450);
    sub_21E56C0B4(&unk_281225520);
    OUTLINED_FUNCTION_2_7();
    sub_21E57BABC();
    v6 = OUTLINED_FUNCTION_4_8();
    v7(v6);
    v1[5] = v9;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

uint64_t sub_21E56A2C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496465776F6C6C61 && a2 == 0xEE0073746E65746ELL;
  if (v4 || (sub_21E57BB3C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021E57FD60 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_21E57BB3C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_21E56A398(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x496465776F6C6C61;
  }
}

uint64_t sub_21E56A3E0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8D30, &qword_21E57E480);
  OUTLINED_FUNCTION_0();
  v9 = v8;
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E56C3C8();
  sub_21E57BBEC();
  v16 = a2;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8958, &unk_21E57C580);
  sub_21E56C49C(&unk_27CEC8D38);
  OUTLINED_FUNCTION_9_6();
  OUTLINED_FUNCTION_1_5();
  sub_21E57BAFC();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8D28, &qword_21E57E478);
    sub_21E56C41C(&unk_27CEC8D40);
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_1_5();
    sub_21E57BAFC();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_21E56A5D4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8D20, &unk_21E57E468);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E56C3C8();
  sub_21E57BBDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8958, &unk_21E57C580);
  HIBYTE(v10) = 0;
  sub_21E56C49C(&qword_2812264D8);
  OUTLINED_FUNCTION_7_0();
  v9 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8D28, &qword_21E57E478);
  HIBYTE(v10) = 1;
  sub_21E56C41C(&unk_281225548);
  OUTLINED_FUNCTION_7_0();
  (*(v4 + 8))(v7, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v9;
}

uint64_t sub_21E56A7F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21E569FD0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_21E56A848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E56A2C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21E56A870(uint64_t a1)
{
  v2 = sub_21E56C3C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E56A8AC(uint64_t a1)
{
  v2 = sub_21E56C3C8();

  return MEMORY[0x2821FE720](a1, v2);
}
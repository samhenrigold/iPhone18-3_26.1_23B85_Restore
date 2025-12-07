uint64_t sub_2691C9F48(uint64_t a1)
{
  v2 = sub_2691E1394();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v94 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v94 - v10;
  v12 = sub_2691E10B4();
  v110 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v14 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  if (a1)
  {
    v96 = v17;
    v97 = v16;
    v98 = v11;
    v99 = v9;
    v101 = v2;
    v102 = &v94 - v15;
    v100 = v3;
    v18 = sub_2691B8328(a1);
    v19 = 0;
    v108 = a1 & 0xC000000000000001;
    v109 = v18;
    v107 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = MEMORY[0x277D84F90];
    v105 = v12;
LABEL_3:
    for (i = v19; v109 != i; ++i)
    {
      if (v108)
      {
        MEMORY[0x26D632F20](i, a1);
      }

      else
      {
        if (i >= *(v107 + 16))
        {
          goto LABEL_88;
        }
      }

      v19 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
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
        __break(1u);
        goto LABEL_102;
      }

      sub_2691E10C4();
      if (v111)
      {
        sub_2691E1074();

        v22 = sub_2691E1264();

        if (*(v22 + 16))
        {
          v23 = sub_2691CB56C(0x73656D616ELL, 0xE500000000000000);
          if (v24)
          {
            v95 = a1;
            v25 = *(*(v22 + 56) + 8 * v23);

            v106 = sub_2691B8328(v25);
            v26 = 0;
            v103 = v25 & 0xFFFFFFFFFFFFFF8;
            v104 = v25 & 0xC000000000000001;
            v27 = MEMORY[0x277D84F90];
            while (v106 != v26)
            {
              if (v104)
              {
                MEMORY[0x26D632F20](v26, v25);
              }

              else
              {
                if (v26 >= *(v103 + 16))
                {
                  goto LABEL_95;
                }
              }

              if (__OFADD__(v26, 1))
              {
                goto LABEL_94;
              }

              v28 = sub_2691E1254();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v27 = sub_2691CB054(0, v27[2] + 1, 1, v27);
              }

              v30 = v27[2];
              v29 = v27[3];
              if (v30 >= v29 >> 1)
              {
                v27 = sub_2691CB054((v29 > 1), v30 + 1, 1, v27);
              }

              v27[2] = v30 + 1;
              v27[v30 + 4] = v28;
              ++v26;
            }

            v31 = 0;
            v106 = v27[2];
            v32 = MEMORY[0x277D84F90];
            while (v106 != v31)
            {
              if (v31 >= v27[2])
              {
                goto LABEL_96;
              }

              v33 = v27[v31 + 4];
              v34 = *(v33 + 16);
              v35 = v32[2];
              v36 = v35 + v34;
              if (__OFADD__(v35, v34))
              {
                goto LABEL_97;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (!isUniquelyReferenced_nonNull_native || v36 > v32[3] >> 1)
              {
                if (v35 <= v36)
                {
                  v38 = v35 + v34;
                }

                else
                {
                  v38 = v35;
                }

                v32 = sub_2691CAF68(isUniquelyReferenced_nonNull_native, v38, 1, v32);
              }

              v12 = v105;
              if (*(v33 + 16))
              {
                if ((v32[3] >> 1) - v32[2] < v34)
                {
                  goto LABEL_100;
                }

                swift_arrayInitWithCopy();

                if (v34)
                {
                  v39 = v32[2];
                  v40 = __OFADD__(v39, v34);
                  v41 = v39 + v34;
                  if (v40)
                  {
                    goto LABEL_101;
                  }

                  v32[2] = v41;
                }
              }

              else
              {

                if (v34)
                {
                  goto LABEL_98;
                }
              }

              ++v31;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v20 = sub_2691CB054(0, v20[2] + 1, 1, v20);
            }

            a1 = v95;
            v43 = v20[2];
            v42 = v20[3];
            if (v43 >= v42 >> 1)
            {
              v20 = sub_2691CB054((v42 > 1), v43 + 1, 1, v20);
            }

            v20[2] = v43 + 1;
            v20[v43 + 4] = v32;
            goto LABEL_3;
          }
        }
      }
    }

    v44 = 0;
    v45 = v20[2];
    v46 = MEMORY[0x277D84F90];
    while (v45 != v44)
    {
      if (v44 >= v20[2])
      {
        goto LABEL_89;
      }

      v47 = v20[v44 + 4];
      v48 = *(v47 + 16);
      v49 = v46[2];
      v50 = v49 + v48;
      if (__OFADD__(v49, v48))
      {
        goto LABEL_90;
      }

      v51 = swift_isUniquelyReferenced_nonNull_native();
      if (!v51 || v50 > v46[3] >> 1)
      {
        if (v49 <= v50)
        {
          v52 = v49 + v48;
        }

        else
        {
          v52 = v49;
        }

        v46 = sub_2691CAF68(v51, v52, 1, v46);
      }

      if (*(v47 + 16))
      {
        if ((v46[3] >> 1) - v46[2] < v48)
        {
          goto LABEL_92;
        }

        swift_arrayInitWithCopy();

        if (v48)
        {
          v53 = v46[2];
          v40 = __OFADD__(v53, v48);
          v54 = v53 + v48;
          if (v40)
          {
            goto LABEL_93;
          }

          v46[2] = v54;
        }
      }

      else
      {

        if (v48)
        {
          goto LABEL_91;
        }
      }

      ++v44;
    }

    v55 = v46[2];
    v56 = v102;
    if (v55)
    {
      v57 = 0;
      v58 = v46 + ((*(v110 + 80) + 32) & ~*(v110 + 80));
      v59 = v110 + 4;
      v109 = (v110 + 2);
      while (v57 < v46[2])
      {
        v60 = *(v110 + 2);
        v61 = v59;
        v60(v56, &v58[*(v110 + 9) * v57], v12);
        sub_2691E10A4();
        v62 = sub_2691E1654();

        if (!v62)
        {

          if (qword_2802F9378 != -1)
          {
            swift_once();
          }

          v75 = v101;
          v76 = __swift_project_value_buffer(v101, qword_2802FBA28);
          v77 = v100;
          v78 = v98;
          (*(v100 + 16))(v98, v76, v75);
          v79 = v97;
          v80 = v105;
          v60(v97, v102, v105);
          v81 = sub_2691E1384();
          v82 = sub_2691E1534();
          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            v110 = v83;
            v84 = swift_slowAlloc();
            v111 = v84;
            *v83 = 136315138;
            v60(v96, v79, v80);
            v85 = sub_2691E13E4();
            v87 = v86;
            v88 = *v109;
            (*v109)(v79, v80);
            v89 = sub_2691B98CC(v85, v87, &v111);

            v90 = v110;
            *(v110 + 1) = v89;
            v91 = v82;
            v92 = v90;
            _os_log_impl(&dword_2691B1000, v81, v91, "SystemCommandsIntent isSettingsParse | Found MP identifier: %s", v90, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v84);
            MEMORY[0x26D6335B0](v84, -1, -1);
            MEMORY[0x26D6335B0](v92, -1, -1);

            (*(v77 + 8))(v98, v101);
            v88(v102, v80);
          }

          else
          {

            v93 = *v109;
            (*v109)(v79, v80);
            (*(v77 + 8))(v78, v75);
            v93(v102, v80);
          }

          return 1;
        }

        ++v57;
        (*v109)(v56, v12);
        v59 = v61;
        if (v55 == v57)
        {
          goto LABEL_71;
        }
      }

      goto LABEL_99;
    }

LABEL_71:

    if (qword_2802F9378 == -1)
    {
      goto LABEL_72;
    }

LABEL_102:
    swift_once();
LABEL_72:
    v63 = v101;
    v64 = __swift_project_value_buffer(v101, qword_2802FBA28);
    v66 = v99;
    v65 = v100;
    (*(v100 + 16))(v99, v64, v63);
    v67 = sub_2691E1384();
    v68 = sub_2691E1534();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_2691B1000, v67, v68, "SystemCommandsIntent isMediaPlayerParse | No MP identifiers found, parse is not MediaPlayer", v69, 2u);
      MEMORY[0x26D6335B0](v69, -1, -1);
    }

    (*(v65 + 8))(v66, v63);
  }

  else
  {
    if (qword_2802F9378 != -1)
    {
      swift_once();
    }

    v70 = __swift_project_value_buffer(v2, qword_2802FBA28);
    (*(v3 + 16))(v6, v70, v2);
    v71 = sub_2691E1384();
    v72 = sub_2691E1534();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_2691B1000, v71, v72, "SystemCommandsIntent isSettingsParse | No UserEntities found", v73, 2u);
      MEMORY[0x26D6335B0](v73, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

uint64_t sub_2691CAAAC(uint64_t a1)
{
  sub_2691E1214();
  v1 = v5;
  if (v5)
  {
    v2 = sub_2691C7D84(0);

    if (v2)
    {
      sub_2691CAB20(13, v2);
      v1 = v3;
    }

    else
    {
      v1 = 0;
    }
  }

  return v1 & 1;
}

void sub_2691CAB20(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26_0();
  v3 = v2;
  v28 = v4;
  v31 = sub_2691E10B4();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_47();
  v9 = v8 - v7;
  v10 = *(v3 + 16);
  if (v10)
  {
    v12 = *(v6 + 16);
    v11 = v6 + 16;
    v13 = v3 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v29 = *(v11 + 56);
    v30 = v12;
    v14 = (v11 - 8);
    v15 = MEMORY[0x277D84F90];
    do
    {
      v16 = v11;
      v30(v9, v13, v31);
      v17 = sub_2691E1094();
      v19 = v18;
      (*v14)(v9, v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_2691CAE60(0, *(v15 + 2) + 1, 1, v15);
      }

      v21 = *(v15 + 2);
      v20 = *(v15 + 3);
      if (v21 >= v20 >> 1)
      {
        v23 = OUTLINED_FUNCTION_48_0(v20);
        v15 = sub_2691CAE60(v23, v24, v25, v15);
      }

      *(v15 + 2) = v21 + 1;
      v22 = &v15[16 * v21];
      *(v22 + 4) = v17;
      *(v22 + 5) = v19;
      v13 += v29;
      --v10;
      v11 = v16;
    }

    while (v10);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v32[0] = sub_2691CC548(v28);
  v32[1] = v26;
  MEMORY[0x28223BE20](v32[0]);
  *&v27[-16] = v32;
  sub_2691C4770(sub_2691CB6E4, &v27[-32], v15);

  OUTLINED_FUNCTION_24_0();
}

unint64_t sub_2691CAD28(uint64_t a1, uint64_t a2)
{
  v2 = sub_2691E1654();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2691CAD74(uint64_t a1, uint64_t a2)
{
  v2 = sub_2691E1654();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

BOOL sub_2691CADC0(uint64_t a1, uint64_t a2)
{
  v2 = sub_2691E1654();

  return v2 != 0;
}

uint64_t sub_2691CAE08(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_27();
  (*(v4 + 8))(a1);
  return a1;
}

char *sub_2691CAE60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9AB0, &qword_2691E3170);
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

void *sub_2691CAF68(void *result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_2691CB184(v8, v7);
  v10 = *(sub_2691E10B4() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_2691CB280(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_2691CB054(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9AC8, &qword_2691E3188);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9AD0, &unk_2691E3190);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2691CB184(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9AA8, &qword_2691E3168);
  v4 = *(sub_2691E10B4() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2691CB280(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_2691E10B4(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_2691E10B4();

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

uint64_t sub_2691CB354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_2691E16D4() & 1;
  }
}

void *sub_2691CB398(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2691CB3B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2691CB3B8(void *result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9AA8, &qword_2691E3168);
  v10 = *(sub_2691E10B4() - 8);
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
  v15 = *(sub_2691E10B4() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2691CB280(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_2691CB56C(uint64_t a1, uint64_t a2)
{
  sub_2691E1714();
  sub_2691E1414();
  v4 = sub_2691E1734();

  return sub_2691CB5E4(a1, a2, v4);
}

unint64_t sub_2691CB5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2691E16D4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void OUTLINED_FUNCTION_9_2()
{

  JUMPOUT(0x26D6335B0);
}

void OUTLINED_FUNCTION_10_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_12_2()
{

  JUMPOUT(0x26D6335B0);
}

uint64_t OUTLINED_FUNCTION_15_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

BOOL OUTLINED_FUNCTION_17_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_18_0()
{

  JUMPOUT(0x26D6335B0);
}

uint64_t OUTLINED_FUNCTION_20_0()
{

  return type metadata accessor for SystemCommandsIntent(0);
}

uint64_t OUTLINED_FUNCTION_22_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_39_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_41_0(uint64_t a1, ...)
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_51_0(uint64_t a1)
{

  return sub_2691E1134();
}

uint64_t OUTLINED_FUNCTION_52_0(uint64_t a1)
{

  return sub_2691CAE08(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_53_0()
{
}

uint64_t *SystemCommandsFeatureFlags.shared.unsafeMutableAddressor()
{
  if (qword_2802F9368 != -1)
  {
    swift_once();
  }

  return &static SystemCommandsFeatureFlags.shared;
}

const char *sub_2691CBAF8(char a1)
{
  if (a1)
  {
    return "ScreenRecording";
  }

  else
  {
    return "NLX";
  }
}

uint64_t sub_2691CBB34()
{
  type metadata accessor for SystemCommandsFeatureFlags();
  result = swift_initStaticObject();
  static SystemCommandsFeatureFlags.shared = result;
  return result;
}

uint64_t static SystemCommandsFeatureFlags.shared.getter()
{
  type metadata accessor for SystemCommandsFeatureFlags();

  return swift_initStaticObject();
}

uint64_t sub_2691CBBC4(char a1)
{
  v4[3] = &type metadata for SystemCommandsFeatures;
  v4[4] = sub_2691CBC34();
  LOBYTE(v4[0]) = a1;
  v2 = sub_2691E0F44();
  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  return v2 & 1;
}

unint64_t sub_2691CBC34()
{
  result = qword_2802F9AD8;
  if (!qword_2802F9AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9AD8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SystemCommandsFeatures(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2691CBD54);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2691CBD90()
{
  result = qword_2802F9AE0;
  if (!qword_2802F9AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9AE0);
  }

  return result;
}

uint64_t type metadata accessor for RestartShutdownCATsSimple(uint64_t a1)
{
  result = qword_2802F9AE8;
  if (!qword_2802F9AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2691CBE70()
{
  OUTLINED_FUNCTION_61();
  v0 = OUTLINED_FUNCTION_0_2();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2691C3270;
  OUTLINED_FUNCTION_3_4();
  v3 = OUTLINED_FUNCTION_2_4(27);

  return v4(v3);
}

uint64_t sub_2691CBF14()
{
  OUTLINED_FUNCTION_61();
  v0 = OUTLINED_FUNCTION_0_2();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2691CC500;
  OUTLINED_FUNCTION_3_4();
  v3 = OUTLINED_FUNCTION_2_4(28);

  return v4(v3);
}

uint64_t sub_2691CBFB8()
{
  OUTLINED_FUNCTION_61();
  v0 = OUTLINED_FUNCTION_0_2();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2691CC500;
  OUTLINED_FUNCTION_3_4();
  v3 = OUTLINED_FUNCTION_2_4(29);

  return v4(v3);
}

uint64_t sub_2691CC05C()
{
  OUTLINED_FUNCTION_61();
  v0 = OUTLINED_FUNCTION_0_2();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2691CC500;
  OUTLINED_FUNCTION_3_4();
  v3 = OUTLINED_FUNCTION_2_4(28);

  return v4(v3);
}

uint64_t sub_2691CC100()
{
  OUTLINED_FUNCTION_61();
  v0 = OUTLINED_FUNCTION_0_2();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2691CC500;
  OUTLINED_FUNCTION_3_4();
  v3 = OUTLINED_FUNCTION_2_4(29);

  return v4(v3);
}

uint64_t sub_2691CC1A4()
{
  OUTLINED_FUNCTION_61();
  v0 = OUTLINED_FUNCTION_0_2();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2691CC500;
  OUTLINED_FUNCTION_3_4();
  v3 = OUTLINED_FUNCTION_2_4(30);

  return v4(v3);
}

uint64_t sub_2691CC29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2691E1374();
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9810, &unk_2691E2660);
  MEMORY[0x28223BE20](v11 - 8);
  sub_2691BACA4(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_2691E1304();
  (*(v7 + 8))(a2, v3);
  sub_2691BAD14(a1);
  return v13;
}

uint64_t sub_2691CC3F8(uint64_t a1, uint64_t a2)
{
  sub_2691E1374();
  OUTLINED_FUNCTION_0_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_2691E1314();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t OUTLINED_FUNCTION_0_2()
{

  return swift_task_alloc();
}

unint64_t sub_2691CC548(char a1)
{
  result = 0x61436D6574737973;
  switch(a1)
  {
    case 1:
      result = 0x74416D6574737973;
      break;
    case 2:
      result = 0x7250726577736E61;
      break;
    case 3:
      result = 0x656E6F6870;
      break;
    case 4:
      result = 0x656E6F687069;
      break;
    case 5:
      result = 1684107369;
      break;
    case 6:
      result = 0x656369766564;
      break;
    case 7:
      result = 0x746375646F7270;
      break;
    case 8:
      result = 0x6E6565726373;
      break;
    case 9:
      result = 1801678700;
      break;
    case 10:
      result = 0x6B636F6C6E75;
      break;
    case 11:
      result = 1701667182;
      break;
    case 12:
      result = 0x73656D616ELL;
      break;
    case 13:
      result = 0x7265776F70;
      break;
    case 14:
      result = 0x6E776F6474756873;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SCSystemQueryFlow.__allocating_init(systemCategory:sharedObjects:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  SCSystemQueryFlow.init(systemCategory:sharedObjects:)(a1, a2, a3);
  return v6;
}

uint64_t sub_2691CC778(char a1)
{
  if (a1)
  {
    return 0x646C697562;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t SCSystemQueryFlow.init(systemCategory:sharedObjects:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_2691B8078(a3 + 40, v3 + 32);
  sub_2691B8078(a3 + 80, v6);
  sub_2691B8A88(a3);
  sub_2691B8ADC(v6, v3 + 72);
  return v3;
}

uint64_t SCSystemQueryFlow.execute()()
{
  OUTLINED_FUNCTION_34();
  v1[25] = v2;
  v1[26] = v0;
  sub_2691E0CA4();
  v1[27] = swift_task_alloc();
  v3 = sub_2691E0E64();
  v1[28] = v3;
  v1[29] = *(v3 - 8);
  v1[30] = swift_task_alloc();
  v4 = sub_2691E1394();
  v1[31] = v4;
  v1[32] = *(v4 - 8);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  sub_2691E1374();
  v1[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2691CC9A4);
}

uint64_t sub_2691CC9A4()
{
  v1 = v0[26];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (v2 == 0x6E6F6973726576 && v3 == 0xE700000000000000)
  {
    goto LABEL_7;
  }

  if (sub_2691E16D4())
  {
    v1 = v0[26];
LABEL_7:
    type metadata accessor for SystemQueryCATPatternsExecutor(0);
    sub_2691E1294();
    sub_2691B8078(v1 + 32, (v0 + 12));
    sub_2691E1274();
    sub_2691B80DC((v0 + 12));
    sub_2691E1284();

    sub_2691E1364();
    v5 = sub_2691E12C4();
    v0[38] = v5;
    v22 = sub_2691CF114;

    v6 = swift_task_alloc();
    v0[39] = v6;
    *v6 = v0;
    v7 = sub_2691CCD48;
LABEL_8:
    v6[1] = v7;
    v8 = v0[26];

    return v22(0, v5, v8);
  }

  v10 = v2 == 0x646C697562 && v3 == 0xE500000000000000;
  if (v10 || (sub_2691E16D4() & 1) != 0)
  {
    v11 = v0[26];
    type metadata accessor for SystemQueryCATPatternsExecutor(0);
    sub_2691E1294();
    sub_2691B8078(v11 + 32, (v0 + 2));
    sub_2691E1274();
    sub_2691B80DC((v0 + 2));
    sub_2691E1284();

    sub_2691E1364();
    v5 = sub_2691E12C4();
    v0[42] = v5;
    v22 = sub_2691CECCC;

    v6 = swift_task_alloc();
    v0[43] = v6;
    *v6 = v0;
    v7 = sub_2691CD068;
    goto LABEL_8;
  }

  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2802F9378);
  }

  __swift_project_value_buffer(v0[31], qword_2802FBA28);
  v12 = OUTLINED_FUNCTION_9_1();
  v13(v12);
  v14 = sub_2691E1384();
  v15 = sub_2691E1544();
  if (OUTLINED_FUNCTION_11_1(v15))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_12_0(&dword_2691B1000, v16, v17, "SCSystemQueryFlow execute | invalid systemCategory");
    OUTLINED_FUNCTION_42();
  }

  v18 = v0[34];
  v19 = v0[31];
  v20 = v0[32];

  (*(v20 + 8))(v18, v19);
  sub_2691E0D54();
  OUTLINED_FUNCTION_1_4();

  OUTLINED_FUNCTION_31();

  return v21();
}

uint64_t sub_2691CCD48()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 320) = v5;
  *(v3 + 328) = v0;

  if (v0)
  {
    v6 = sub_2691CD388;
  }

  else
  {

    v6 = sub_2691CCE58;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2691CCE58()
{
  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2802F9378);
  }

  v5 = v0[31];
  __swift_project_value_buffer(v5, qword_2802FBA28);
  v6 = OUTLINED_FUNCTION_9_1();
  v7(v6);
  sub_2691E1384();
  v8 = sub_2691E1534();
  if (OUTLINED_FUNCTION_11_1(v8))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_12_0(&dword_2691B1000, v9, v10, "SCSystemQueryFlow execute | QueryVersion pattern successfully executed");
    OUTLINED_FUNCTION_42();
  }

  v11 = v0[40];
  v12 = v0[36];
  OUTLINED_FUNCTION_12_3();
  (*(v1 + 8))(v12, v3);
  sub_2691E0C84();
  OUTLINED_FUNCTION_2_5();
  sub_2691B8078(v2 + 72, (v0 + 17));
  v13 = sub_2691E0DA4();
  OUTLINED_FUNCTION_9_3(v13);
  sub_2691E0D94();
  v14 = sub_2691E0B04();
  OUTLINED_FUNCTION_9_3(v14);
  v0[24] = sub_2691E0AF4();
  sub_2691E0B14();

  sub_2691E0D44();

  (*(v4 + 8))(v5);
  OUTLINED_FUNCTION_1_4();

  OUTLINED_FUNCTION_31();

  return v15();
}

uint64_t sub_2691CD068()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 352) = v5;
  *(v3 + 360) = v0;

  if (v0)
  {
    v6 = sub_2691CD590;
  }

  else
  {

    v6 = sub_2691CD178;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2691CD178()
{
  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2802F9378);
  }

  v5 = v0[31];
  __swift_project_value_buffer(v5, qword_2802FBA28);
  v6 = OUTLINED_FUNCTION_9_1();
  v7(v6);
  sub_2691E1384();
  v8 = sub_2691E1534();
  if (OUTLINED_FUNCTION_11_1(v8))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_12_0(&dword_2691B1000, v9, v10, "SCSystemQueryFlow execute | QueryBuild pattern successfully executed");
    OUTLINED_FUNCTION_42();
  }

  v11 = v0[44];
  v12 = v0[35];
  OUTLINED_FUNCTION_12_3();
  (*(v1 + 8))(v12, v3);
  sub_2691E0C84();
  OUTLINED_FUNCTION_2_5();
  sub_2691B8078(v2 + 72, (v0 + 7));
  v13 = sub_2691E0DA4();
  OUTLINED_FUNCTION_9_3(v13);
  sub_2691E0D94();
  v14 = sub_2691E0B04();
  OUTLINED_FUNCTION_9_3(v14);
  v0[23] = sub_2691E0AF4();
  sub_2691E0B14();

  sub_2691E0D44();

  (*(v4 + 8))(v5);
  OUTLINED_FUNCTION_1_4();

  OUTLINED_FUNCTION_31();

  return v15();
}

uint64_t sub_2691CD388()
{
  v21 = v0;
  v1 = v0[41];

  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2802F9378);
  }

  __swift_project_value_buffer(v0[31], qword_2802FBA28);
  v2 = OUTLINED_FUNCTION_15_1();
  v3(v2);
  MEMORY[0x26D633490](v1);
  v4 = sub_2691E1384();
  v5 = sub_2691E1544();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[32];
  v8 = v0[33];
  v9 = v0[31];
  if (v6)
  {
    v19 = v0[33];
    v10 = OUTLINED_FUNCTION_72();
    v11 = OUTLINED_FUNCTION_13_2();
    v20 = v11;
    *v10 = 136315138;
    v0[22] = v1;
    MEMORY[0x26D633490](v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F97D0, qword_2691E2360);
    v12 = sub_2691E13E4();
    v14 = sub_2691B98CC(v12, v13, &v20);

    *(v10 + 4) = v14;
    OUTLINED_FUNCTION_19_0(&dword_2691B1000, v15, v16, "SCSystemQueryFlow execute | error: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_42();

    (*(v7 + 8))(v19, v9);
  }

  else
  {

    (*(v7 + 8))(v8, v9);
  }

  sub_2691E0D54();

  OUTLINED_FUNCTION_1_4();

  OUTLINED_FUNCTION_31();

  return v17();
}

uint64_t sub_2691CD590()
{
  v21 = v0;
  v1 = v0[45];

  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2802F9378);
  }

  __swift_project_value_buffer(v0[31], qword_2802FBA28);
  v2 = OUTLINED_FUNCTION_15_1();
  v3(v2);
  MEMORY[0x26D633490](v1);
  v4 = sub_2691E1384();
  v5 = sub_2691E1544();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[32];
  v8 = v0[33];
  v9 = v0[31];
  if (v6)
  {
    v19 = v0[33];
    v10 = OUTLINED_FUNCTION_72();
    v11 = OUTLINED_FUNCTION_13_2();
    v20 = v11;
    *v10 = 136315138;
    v0[22] = v1;
    MEMORY[0x26D633490](v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F97D0, qword_2691E2360);
    v12 = sub_2691E13E4();
    v14 = sub_2691B98CC(v12, v13, &v20);

    *(v10 + 4) = v14;
    OUTLINED_FUNCTION_19_0(&dword_2691B1000, v15, v16, "SCSystemQueryFlow execute | error: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_42();

    (*(v7 + 8))(v19, v9);
  }

  else
  {

    (*(v7 + 8))(v8, v9);
  }

  sub_2691E0D54();

  OUTLINED_FUNCTION_1_4();

  OUTLINED_FUNCTION_31();

  return v17();
}

uint64_t SCSystemQueryFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SCSystemQueryFlow();
  sub_2691CE584();
  return sub_2691E0B34();
}

uint64_t sub_2691CD7F4()
{
  v0 = sub_2691E1394();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() processInfo];
  [v6 operatingSystemVersion];
  v7 = v25;
  v8 = v26;
  v9 = v27;

  v25 = v7;
  OUTLINED_FUNCTION_5_4();
  v25 = sub_2691E16C4();
  v26 = v10;
  v23 = 46;
  v24 = 0xE100000000000000;
  v22 = v8;
  OUTLINED_FUNCTION_5_4();
  v11 = sub_2691E16C4();
  MEMORY[0x26D632D90](v11);

  MEMORY[0x26D632D90](v23, v24);

  if (v9)
  {
    v23 = 46;
    v24 = 0xE100000000000000;
    v22 = v9;
    v12 = sub_2691E16C4();
    MEMORY[0x26D632D90](v12);

    MEMORY[0x26D632D90](v23, v24);
  }

  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2802F9378);
  }

  v13 = __swift_project_value_buffer(v0, qword_2802FBA28);
  (*(v2 + 16))(v5, v13, v0);

  v14 = sub_2691E1384();
  v15 = sub_2691E1524();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_72();
    v17 = OUTLINED_FUNCTION_13_2();
    v23 = v17;
    *v16 = 136315138;
    v18 = OUTLINED_FUNCTION_5_4();
    *(v16 + 4) = sub_2691B98CC(v18, v19, v20);
    _os_log_impl(&dword_2691B1000, v14, v15, "SCSystemQueryFlow getVersion | version number is %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_42();
  }

  (*(v2 + 8))(v5, v0);
  OUTLINED_FUNCTION_5_4();
  return sub_2691E12E4();
}

uint64_t sub_2691CDACC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2691E1394();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v50 - v9;
  v11 = [objc_opt_self() processInfo];
  v12 = [v11 operatingSystemVersionString];

  v13 = sub_2691E13D4();
  v15 = v14;

  v54[0] = 32;
  v54[1] = 0xE100000000000000;
  v53 = v54;
  v16 = sub_2691CE5D8(sub_2691CB6C4, v52, v13, v15);
  if (v17)
  {
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2802F9378);
    }

    v18 = __swift_project_value_buffer(v2, qword_2802FBA28);
    (*(v4 + 16))(v8, v18, v2);

    v19 = sub_2691E1384();
    v20 = sub_2691E1524();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v2;
      v22 = OUTLINED_FUNCTION_72();
      v23 = OUTLINED_FUNCTION_13_2();
      v54[0] = v23;
      *v22 = 136315138;
      v24 = sub_2691B98CC(v13, v15, v54);

      *(v22 + 4) = v24;
      _os_log_impl(&dword_2691B1000, v19, v20, "SCSystemQueryFlow getBuild | operatingSystemVersionString is in an unexpected format: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_42();

      (*(v4 + 8))(v8, v21);
    }

    else
    {

      (*(v4 + 8))(v8, v2);
    }
  }

  else
  {
    sub_2691CDF68(v16, v13, v15);
    v25 = OUTLINED_FUNCTION_3_5();
    sub_2691CE00C(v25, v26, v27, v28, v29);
    v30 = OUTLINED_FUNCTION_3_5();
    v35 = sub_2691CE0C8(v30, v31, v32, v33, v34);
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2802F9378);
    }

    v36 = __swift_project_value_buffer(v2, qword_2802FBA28);
    (*(v4 + 16))(v10, v36, v2);

    v51 = v10;
    v37 = sub_2691E1384();
    v38 = sub_2691E1524();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = OUTLINED_FUNCTION_72();
      v50[2] = a1;
      v40 = v39;
      v41 = OUTLINED_FUNCTION_13_2();
      v50[0] = v2;
      v42 = v41;
      v54[0] = v41;
      *v40 = 136315138;

      v43 = OUTLINED_FUNCTION_5_4();
      MEMORY[0x26D632D60](v43);
      v50[1] = v35;

      v44 = OUTLINED_FUNCTION_5_4();
      v47 = sub_2691B98CC(v44, v45, v46);

      *(v40 + 4) = v47;
      _os_log_impl(&dword_2691B1000, v37, v38, "SCSystemQueryFlow getBuild | build number is %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_42();

      (*(v4 + 8))(v51, v50[0]);
    }

    else
    {

      (*(v4 + 8))(v51, v2);
    }

    v48 = OUTLINED_FUNCTION_5_4();
    MEMORY[0x26D632D60](v48);
  }

  return sub_2691E12E4();
}

unint64_t sub_2691CDF68(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v4 = sub_2691E1464();

    return v4;
  }

  return result;
}

unint64_t sub_2691CE00C(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_2691E1584();
    if (v6)
    {
      v7 = a2;
    }

    else
    {
      v7 = result;
    }

    if (v7 >> 14 >= a2 >> 14)
    {
      v8 = sub_2691E1594();

      return v8;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2691CE0C8(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_2691E1584();
    if (v6)
    {
      result = a3;
    }

    if (a3 >> 14 >= result >> 14)
    {
      v7 = sub_2691E1594();

      return v7;
    }
  }

  __break(1u);
  return result;
}

void *SCSystemQueryFlow.deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 72));
  return v0;
}

uint64_t SCSystemQueryFlow.__deallocating_deinit()
{
  SCSystemQueryFlow.deinit();

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

uint64_t sub_2691CE1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2691CE294;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2691CE294()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  OUTLINED_FUNCTION_20();
  v3 = *v0;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_2691CE3A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691CE444;

  return SCSystemQueryFlow.execute()();
}

uint64_t sub_2691CE444()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  v1 = *v0;
  OUTLINED_FUNCTION_2_2();
  *v2 = v1;

  OUTLINED_FUNCTION_31();

  return v3();
}

uint64_t sub_2691CE528(uint64_t a1, uint64_t a2)
{
  Flow = type metadata accessor for SCSystemQueryFlow();

  return MEMORY[0x2821BA658](Flow, a2);
}

unint64_t sub_2691CE584()
{
  result = qword_2802F9940;
  if (!qword_2802F9940)
  {
    type metadata accessor for SCSystemQueryFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9940);
  }

  return result;
}

unint64_t sub_2691CE5D8(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_2691E1424();
    v13[0] = sub_2691E1454();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t OUTLINED_FUNCTION_1_4()
{
}

uint64_t OUTLINED_FUNCTION_2_5()
{

  return sub_2691E0E24();
}

uint64_t OUTLINED_FUNCTION_9_3(uint64_t a1)
{

  return swift_allocObject();
}

BOOL OUTLINED_FUNCTION_11_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_12_3()
{
}

uint64_t OUTLINED_FUNCTION_13_2()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_19_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_2691CE86C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B08, &unk_2691E34B8);
  v3 = OUTLINED_FUNCTION_37(v2);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9920, &qword_2691E2C40);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2691E3400;
  *(v9 + 32) = 0x646C697562;
  *(v9 + 40) = 0xE500000000000000;
  sub_2691CF7A0(v1, v8, &qword_2802F9B08, &unk_2691E34B8);
  v10 = sub_2691E12F4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) == 1)
  {
    sub_2691CF804(v8, &qword_2802F9B08, &unk_2691E34B8);
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
  }

  else
  {
    *(v9 + 72) = v10;
    __swift_allocate_boxed_opaque_existential_1((v9 + 48));
    OUTLINED_FUNCTION_6_3();
    (*(v11 + 32))();
  }

  OUTLINED_FUNCTION_4_2();
  *(v9 + 80) = v12;
  *(v9 + 88) = v13;
  QueryBuildParameters = type metadata accessor for SystemQueryQueryBuildParameters(0);
  v15 = *(v1 + QueryBuildParameters[5]);
  if (v15)
  {
    sub_2691E1354();
    v16 = v15;
  }

  else
  {
    v16 = 0;
    *(v9 + 104) = 0;
    *(v9 + 112) = 0;
  }

  *(v9 + 96) = v16;
  OUTLINED_FUNCTION_9_4();
  *(v9 + 120) = v17;
  *(v9 + 128) = v18;
  *(v9 + 136) = v19;
  *(v9 + 144) = *(v1 + QueryBuildParameters[6]);
  OUTLINED_FUNCTION_14_1();
  *(v9 + 168) = v21;
  *(v9 + 176) = v20;
  *(v9 + 184) = 0xE700000000000000;
  sub_2691CF7A0(v1 + QueryBuildParameters[7], v6, &qword_2802F9B08, &unk_2691E34B8);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {

    sub_2691CF804(v6, &qword_2802F9B08, &unk_2691E34B8);
    *(v9 + 192) = 0u;
    *(v9 + 208) = 0u;
  }

  else
  {
    *(v9 + 216) = v10;
    __swift_allocate_boxed_opaque_existential_1((v9 + 192));
    OUTLINED_FUNCTION_6_3();
    (*(v22 + 32))();
  }

  return v9;
}

uint64_t sub_2691CEB0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B08, &unk_2691E34B8);
  v2 = OUTLINED_FUNCTION_37(v1);
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9920, &qword_2691E2C40);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2691E3410;
  OUTLINED_FUNCTION_4_2();
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  v9 = *v0;
  if (*v0)
  {
    sub_2691E1354();
    v10 = v9;
  }

  else
  {
    v10 = 0;
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
  }

  *(v5 + 48) = v10;
  OUTLINED_FUNCTION_9_4();
  *(v5 + 72) = v11;
  *(v5 + 80) = v12;
  *(v5 + 88) = v13;
  *(v5 + 96) = *(v0 + 8);
  OUTLINED_FUNCTION_14_1();
  *(v5 + 120) = v15;
  *(v5 + 128) = v14;
  *(v5 + 136) = 0xE700000000000000;
  QueryVersionParameters = type metadata accessor for SystemQueryQueryVersionParameters(0);
  sub_2691CF7A0(v0 + *(QueryVersionParameters + 24), v4, &qword_2802F9B08, &unk_2691E34B8);
  v17 = sub_2691E12F4();
  if (__swift_getEnumTagSinglePayload(v4, 1, v17) == 1)
  {

    sub_2691CF804(v4, &qword_2802F9B08, &unk_2691E34B8);
    *(v5 + 144) = 0u;
    *(v5 + 160) = 0u;
  }

  else
  {
    *(v5 + 168) = v17;
    __swift_allocate_boxed_opaque_existential_1((v5 + 144));
    OUTLINED_FUNCTION_6_3();
    (*(v18 + 32))();
  }

  return v5;
}

uint64_t sub_2691CECCC(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  *(v3 + 128) = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B08, &unk_2691E34B8);
  OUTLINED_FUNCTION_37(v4);
  *(v3 + 72) = OUTLINED_FUNCTION_44();
  QueryBuildParameters = type metadata accessor for SystemQueryQueryBuildParameters(0);
  *(v3 + 80) = QueryBuildParameters;
  OUTLINED_FUNCTION_37(QueryBuildParameters);
  *(v3 + 88) = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2691CED80()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 128);
  sub_2691E12F4();
  OUTLINED_FUNCTION_7_2(v1);
  v6 = v2[7];
  OUTLINED_FUNCTION_7_2(v1 + v6);
  v7 = v2[5];
  *(v1 + v7) = 0;
  *(v1 + v2[6]) = v5;
  sub_2691CD7F4();
  OUTLINED_FUNCTION_5_5();
  sub_2691CF730(v4, v1 + v6);
  sub_2691CDACC(v4);
  OUTLINED_FUNCTION_5_5();
  sub_2691CF730(v4, v1);
  sub_2691E1354();
  sub_2691B8078(v3 + 32, v0 + 16);
  *(v1 + v7) = sub_2691E1344();
  *(v0 + 96) = sub_2691CE86C();
  v8 = OUTLINED_FUNCTION_0_2();
  *(v0 + 104) = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_13_3(v8);

  return v10(0xD000000000000016);
}

uint64_t sub_2691CEEE4(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_2_2();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_2();
  *v7 = v6;
  *(v4 + 112) = v1;

  if (!v1)
  {
    *(v4 + 120) = a1;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2691CF024()
{
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_1_5();

  v0 = OUTLINED_FUNCTION_10_1();

  return v1(v0);
}

uint64_t sub_2691CF098()
{
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_1_5();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2691CF114(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  *(v3 + 128) = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B08, &unk_2691E34B8);
  OUTLINED_FUNCTION_37(v4);
  *(v3 + 72) = OUTLINED_FUNCTION_44();
  QueryVersionParameters = type metadata accessor for SystemQueryQueryVersionParameters(0);
  *(v3 + 80) = QueryVersionParameters;
  OUTLINED_FUNCTION_37(QueryVersionParameters);
  *(v3 + 88) = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2691CF1C8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 128);
  v5 = *(*(v0 + 80) + 24);
  sub_2691E12F4();
  OUTLINED_FUNCTION_7_2(v1 + v5);
  *v1 = 0;
  *(v1 + 8) = v4;
  sub_2691CD7F4();
  OUTLINED_FUNCTION_5_5();
  sub_2691CF730(v3, v1 + v5);
  sub_2691E1354();
  sub_2691B8078(v2 + 32, v0 + 16);
  *v1 = sub_2691E1344();
  *(v0 + 96) = sub_2691CEB0C();
  v6 = OUTLINED_FUNCTION_0_2();
  *(v0 + 104) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_13_3(v6);

  return v8(0xD000000000000018);
}

uint64_t sub_2691CF2FC(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_2_2();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_2();
  *v7 = v6;
  *(v4 + 112) = v1;

  if (!v1)
  {
    *(v4 + 120) = a1;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2691CF43C()
{
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_0_3();

  v0 = OUTLINED_FUNCTION_10_1();

  return v1(v0);
}

uint64_t sub_2691CF4B0()
{
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_0_3();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2691CF580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2691E1374();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9810, &unk_2691E2660);
  v10 = OUTLINED_FUNCTION_37(v9);
  MEMORY[0x28223BE20](v10);
  sub_2691CF7A0(a1, &v14 - v11, &qword_2802F9810, &unk_2691E2660);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_2691E12A4();
  (*(v6 + 8))(a2, v5);
  sub_2691CF804(a1, &qword_2802F9810, &unk_2691E2660);
  return v12;
}

uint64_t sub_2691CF730(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B08, &unk_2691E34B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2691CF7A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_6_3();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2691CF804(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_6_3();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2691CF880(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2691CF8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B08, &unk_2691E34B8);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_3_6(*(a1 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_2691CF9B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B08, &unk_2691E34B8);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_2691CFA64(uint64_t a1)
{
  sub_2691CFB44(319, &qword_2802F9B20, MEMORY[0x277D55C48]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2691CFB44(319, &qword_2802F9B28, MEMORY[0x277D55C80]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_2691CFB44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2691E1574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2691CFBAC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    return OUTLINED_FUNCTION_3_6(*a1);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B08, &unk_2691E34B8);
  v8 = a1 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void *sub_2691CFC48(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B08, &unk_2691E34B8);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_2691CFCD4(uint64_t a1)
{
  sub_2691CFB44(319, &qword_2802F9B28, MEMORY[0x277D55C80]);
  if (v1 <= 0x3F)
  {
    sub_2691CFB44(319, &qword_2802F9B20, MEMORY[0x277D55C48]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_3()
{
  v2 = *(v0 + 88);

  return sub_2691CF880(v2, type metadata accessor for SystemQueryQueryVersionParameters);
}

uint64_t OUTLINED_FUNCTION_1_5()
{
  v2 = *(v0 + 88);

  return sub_2691CF880(v2, type metadata accessor for SystemQueryQueryBuildParameters);
}

uint64_t OUTLINED_FUNCTION_3_6@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_5_5()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_7_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t SharedObjects.init(aceServiceInvoker:deviceState:outputPublisher:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  sub_2691B8ADC(a1, a4);
  sub_2691B8ADC(a2, a4 + 40);

  return sub_2691B8ADC(a3, a4 + 80);
}

uint64_t sub_2691CFF34(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2691CFF74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2691CFFE0()
{
  sub_2691D0138();
  result = sub_2691E1564();
  qword_2802FBA20 = result;
  return result;
}

uint64_t sub_2691D0048()
{
  v0 = sub_2691E1394();
  __swift_allocate_value_buffer(v0, qword_2802FBA28);
  __swift_project_value_buffer(v0, qword_2802FBA28);
  if (qword_2802F9370 != -1)
  {
    swift_once();
  }

  v1 = qword_2802FBA20;
  return sub_2691E13A4();
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

unint64_t sub_2691D0138()
{
  result = qword_2802F9B40;
  if (!qword_2802F9B40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802F9B40);
  }

  return result;
}

uint64_t SCScreenshotFlow.execute()()
{
  OUTLINED_FUNCTION_34();
  v1[24] = v2;
  v1[25] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B48, &unk_2691E3588);
  v1[26] = OUTLINED_FUNCTION_44();
  v3 = sub_2691E0CB4();
  v1[27] = v3;
  OUTLINED_FUNCTION_1(v3);
  v1[28] = v4;
  v1[29] = OUTLINED_FUNCTION_44();
  v5 = sub_2691E1394();
  v1[30] = v5;
  OUTLINED_FUNCTION_1(v5);
  v1[31] = v6;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2691D02C8()
{
  sub_2691E0EF4();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_35();
  v1 = sub_2691E0C64();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (v1)
  {
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2802F9378);
    }

    v2 = v0[33];
    v3 = v0[30];
    v4 = v0[31];
    v5 = __swift_project_value_buffer(v3, qword_2802FBA28);
    (*(v4 + 16))(v2, v5, v3);
    v6 = sub_2691E1384();
    v7 = sub_2691E1524();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2691B1000, v6, v7, "SCScreenshotFlow execute | cannot screenshot on watchOS", v8, 2u);
      OUTLINED_FUNCTION_42();
    }

    v9 = OUTLINED_FUNCTION_35();
    v10(v9);

    sub_2691E0E14();
    sub_2691E0A74();
    swift_allocObject();
    v0[23] = sub_2691E0A64();
    sub_2691E0D34();

    OUTLINED_FUNCTION_4_3();

    OUTLINED_FUNCTION_31();

    return v11();
  }

  else
  {
    v13 = [objc_allocWithZone(MEMORY[0x277D47278]) init];
    v0[35] = v13;
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2802F9378);
    }

    v14 = v0[34];
    v15 = v0[30];
    v16 = v0[31];
    v17 = __swift_project_value_buffer(v15, qword_2802FBA28);
    v0[36] = v17;
    v18 = *(v16 + 16);
    v0[37] = v18;
    v0[38] = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v18(v14, v17, v15);
    v19 = v13;
    v20 = sub_2691E1384();
    v21 = sub_2691E1524();

    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[34];
    v24 = v0[30];
    v25 = v0[31];
    if (v22)
    {
      v26 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v26 = 136315138;
      v27 = v19;
      v28 = v19;
      v29 = [v27 description];
      sub_2691E13D4();
      v51 = v23;

      v19 = v28;
      v30 = OUTLINED_FUNCTION_35();
      v33 = sub_2691B98CC(v30, v31, v32);

      *(v26 + 4) = v33;
      _os_log_impl(&dword_2691B1000, v20, v21, "SCScreenshotFlow execute | submitting command: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_42();

      v34 = *(v25 + 8);
      v34(v51, v24);
    }

    else
    {

      v34 = *(v25 + 8);
      v35 = OUTLINED_FUNCTION_35();
      v34(v35, v36);
    }

    v0[39] = v34;
    v38 = v0[28];
    v37 = v0[29];
    v40 = v0[26];
    v39 = v0[27];
    sub_2691E0B94();
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    v0[40] = sub_2691E0C04();
    v41 = *MEMORY[0x277D5BC10];
    v42 = *(v38 + 104);
    v0[41] = v42;
    v0[42] = (v38 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v42(v37, v41, v39);
    v43 = *MEMORY[0x277D5B950];
    v44 = sub_2691E0BB4();
    v0[43] = v44;
    v45 = *(v44 - 8);
    v46 = *(v45 + 104);
    v0[44] = v46;
    v0[45] = (v45 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v46(v40, v43, v44);
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_8_1();
    sub_2691E0BF4();
    sub_2691E0BA4();

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
    sub_2691E0C14();
    v48 = v0[15];
    v47 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v48);
    v49 = swift_task_alloc();
    v0[46] = v49;
    v50 = sub_2691D102C();
    *v49 = v0;
    v49[1] = sub_2691D085C;

    return MEMORY[0x2821BB6A0](v19, v48, v50, v47);
  }
}

uint64_t sub_2691D085C()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_20();
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 376) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2691D0964()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  sub_2691E0D54();
  OUTLINED_FUNCTION_4_3();

  OUTLINED_FUNCTION_31();

  return v1();
}

uint64_t sub_2691D09FC()
{
  v28 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 296);
  v3 = *(v0 + 288);
  v4 = *(v0 + 256);
  v5 = *(v0 + 240);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  v2(v4, v3, v5);
  MEMORY[0x26D633490](v1);
  v6 = sub_2691E1384();
  v7 = sub_2691E1544();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 376);
    v26 = *(v0 + 312);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v9 = 136315138;
    *(v0 + 176) = v8;
    MEMORY[0x26D633490](v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F97D0, qword_2691E2360);
    v11 = sub_2691E13E4();
    v13 = sub_2691B98CC(v11, v12, &v27);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2691B1000, v6, v7, "SCScreenshotFlow execute | error: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_42();

    v14 = OUTLINED_FUNCTION_35();
    v26(v14);
  }

  else
  {
    v15 = *(v0 + 312);

    v16 = OUTLINED_FUNCTION_35();
    v15(v16);
  }

  v17 = *(v0 + 376);
  v18 = *(v0 + 352);
  v19 = *(v0 + 344);
  v20 = *(v0 + 328);
  v21 = *(v0 + 232);
  v22 = *(v0 + 208);
  v23 = *(v0 + 216);
  sub_2691E0B94();
  __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
  v20(v21, *MEMORY[0x277D5BC00], v23);
  v18(v22, *MEMORY[0x277D5B8D0], v19);
  OUTLINED_FUNCTION_11_2();
  *(swift_allocObject() + 16) = v17;
  MEMORY[0x26D633490](v17);
  OUTLINED_FUNCTION_8_1();
  sub_2691E0BF4();
  sub_2691E0BA4();

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
  sub_2691E0D54();
  OUTLINED_FUNCTION_4_3();

  OUTLINED_FUNCTION_31();

  return v24();
}

uint64_t sub_2691D0CF8(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2691B7DC0;

  return sub_2691D0E44();
}

uint64_t sub_2691D0D90(uint64_t a1, uint64_t a2)
{
  MEMORY[0x26D633490](a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F97D0, qword_2691E2360);
  sub_2691E13E4();
  return sub_2691E0BE4();
}

uint64_t SCScreenshotFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SCScreenshotFlow();
  sub_2691D116C();
  return sub_2691E0B34();
}

uint64_t sub_2691D0E44()
{
  OUTLINED_FUNCTION_34();
  v0[22] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9468, &unk_2691E3650);
  v0[23] = OUTLINED_FUNCTION_44();
  v2 = sub_2691E0DB4();
  v0[24] = v2;
  OUTLINED_FUNCTION_1(v2);
  v0[25] = v3;
  v0[26] = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2691D0F58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B7DC0;

  return SCScreenshotFlow.execute()();
}

uint64_t sub_2691D0FF4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SCScreenshotFlow();

  return MEMORY[0x2821BA658](v3, a2);
}

unint64_t sub_2691D102C()
{
  result = qword_2802F9B50;
  if (!qword_2802F9B50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802F9B50);
  }

  return result;
}

uint64_t sub_2691D1070()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2691D10B0()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_2691B7DC0;

  return sub_2691D0CF8(v2);
}

unint64_t sub_2691D116C()
{
  result = qword_2802F9960;
  if (!qword_2802F9960)
  {
    type metadata accessor for SCScreenshotFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9960);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_3()
{
}

uint64_t OUTLINED_FUNCTION_11_2()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t SCTakePhotoFlow.__allocating_init(captureType:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t SCTakePhotoFlow.execute()()
{
  OUTLINED_FUNCTION_34();
  v1[27] = v2;
  v1[28] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B48, &unk_2691E3588);
  v1[29] = OUTLINED_FUNCTION_44();
  v3 = sub_2691E0CB4();
  v1[30] = v3;
  OUTLINED_FUNCTION_1(v3);
  v1[31] = v4;
  v1[32] = OUTLINED_FUNCTION_44();
  v5 = sub_2691E1394();
  v1[33] = v5;
  OUTLINED_FUNCTION_1(v5);
  v1[34] = v6;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9810, &unk_2691E2660);
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2691D1404()
{
  v74 = v0;
  v1 = v0[42];
  v2 = sub_2691E09A4();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  sub_2691E0EF4();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  LOBYTE(v1) = sub_2691E0C64();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if ((v1 & 1) == 0)
  {
    v14 = v0[41];
    v13 = v0[42];
    sub_2691E0994();
    sub_2691D2168(v14, v13);
    v15 = [objc_opt_self() defaultWorkspace];
    if (v15)
    {
      v19 = v15;
      v20 = v0[40];
      sub_2691BACA4(v0[42], v20);
      if (__swift_getEnumTagSinglePayload(v20, 1, v2) == 1)
      {
        v21 = 0;
      }

      else
      {
        v22 = v0[40];
        v21 = sub_2691E0984();
        (*(*(v2 - 8) + 8))(v22, v2);
      }

      v23 = [v19 openSensitiveURL:v21 withOptions:0];

      if (v23)
      {
        if (qword_2802F9378 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_2802F9378);
        }

        __swift_project_value_buffer(v0[33], qword_2802FBA28);
        v24 = OUTLINED_FUNCTION_9_1();
        v25(v24);
        v26 = sub_2691E1384();
        v27 = sub_2691E1524();
        if (os_log_type_enabled(v26, v27))
        {
          v29 = v0[41];
          v28 = v0[42];
          v72 = v0[38];
          v31 = v0[33];
          v30 = v0[34];
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v73[0] = v33;
          *v32 = 136315138;
          swift_beginAccess();
          sub_2691BACA4(v28, v29);
          v34 = sub_2691E13E4();
          v36 = sub_2691B98CC(v34, v35, v73);

          *(v32 + 4) = v36;
          OUTLINED_FUNCTION_11_3(&dword_2691B1000, v37, v38, "SCTakePhotoFlow execute | URL was successfully opened %s");
          __swift_destroy_boxed_opaque_existential_0Tm(v33);
          OUTLINED_FUNCTION_42();
          OUTLINED_FUNCTION_42();

          (*(v30 + 8))(v72, v31);
        }

        else
        {
          v66 = v0[38];
          v67 = v0[33];
          v68 = v0[34];

          (*(v68 + 8))(v66, v67);
        }

        v69 = v0[42];
        sub_2691E0D54();
        v12 = v69;
        goto LABEL_25;
      }

      if (qword_2802F9378 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2802F9378);
      }

      v39 = v0[37];
      v40 = v0[33];
      v41 = v0[34];
      v42 = __swift_project_value_buffer(v40, qword_2802FBA28);
      v0[43] = v42;
      v43 = *(v41 + 16);
      v0[44] = v43;
      v0[45] = (v41 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v43(v39, v42, v40);
      v44 = sub_2691E1384();
      v45 = sub_2691E1524();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_2691B1000, v44, v45, "SCTakePhotoFlow execute | fallback using SAAppsLaunchApp", v46, 2u);
        OUTLINED_FUNCTION_42();
      }

      v47 = v0[37];
      v48 = v0[33];
      v49 = v0[34];
      v51 = v0[31];
      v50 = v0[32];
      v52 = v0[29];
      v53 = v0[30];

      v54 = *(v49 + 8);
      v0[46] = v54;
      v54(v47, v48);
      v55 = [objc_allocWithZone(MEMORY[0x277D47190]) init];
      v0[47] = v55;
      v56 = sub_2691E13C4();
      [v55 setLaunchId_];

      sub_2691E0B94();
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v0[48] = sub_2691E0C04();
      v57 = *MEMORY[0x277D5BC10];
      v58 = *(v51 + 104);
      v0[49] = v58;
      v0[50] = (v51 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v58(v50, v57, v53);
      v59 = *MEMORY[0x277D5B950];
      v60 = sub_2691E0BB4();
      v0[51] = v60;
      v61 = *(v60 - 8);
      v62 = *(v61 + 104);
      v0[52] = v62;
      v0[53] = (v61 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v62(v52, v59, v60);
      __swift_storeEnumTagSinglePayload(v52, 0, 1, v60);
      OUTLINED_FUNCTION_7_3();
      sub_2691E0BF4();
      sub_2691E0BA4();

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
      sub_2691E0C14();
      v63 = v0[15];
      v64 = v0[16];
      __swift_project_boxed_opaque_existential_1(v0 + 12, v63);
      v65 = swift_task_alloc();
      v0[54] = v65;
      v17 = sub_2691D102C();
      *v65 = v0;
      v65[1] = sub_2691D1C38;
      v15 = v55;
      v16 = v63;
      v18 = v64;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2821BB6A0](v15, v16, v17, v18);
  }

  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2802F9378);
  }

  __swift_project_value_buffer(v0[33], qword_2802FBA28);
  v3 = OUTLINED_FUNCTION_9_1();
  v4(v3);
  v5 = sub_2691E1384();
  v6 = sub_2691E1524();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2691B1000, v5, v6, "SCTakePhotoFlow execute | cannot take photo on watchOS", v7, 2u);
    OUTLINED_FUNCTION_42();
  }

  v8 = v0[42];
  v9 = v0[36];
  v10 = v0[33];
  v11 = v0[34];

  (*(v11 + 8))(v9, v10);

  sub_2691E0E14();
  sub_2691E0A74();
  swift_allocObject();
  v0[26] = sub_2691E0A64();
  sub_2691E0D34();

  v12 = v8;
LABEL_25:
  sub_2691C0B44(v12, &qword_2802F9810, &unk_2691E2660);
  OUTLINED_FUNCTION_2_6();

  OUTLINED_FUNCTION_31();

  return v70();
}

uint64_t sub_2691D1C38()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_20();
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 440) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2691D1D40()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  v1 = *(v0 + 336);
  sub_2691E0D54();
  sub_2691C0B44(v1, &qword_2802F9810, &unk_2691E2660);
  OUTLINED_FUNCTION_2_6();

  OUTLINED_FUNCTION_31();

  return v2();
}

uint64_t sub_2691D1E24()
{
  v32 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 352);
  v3 = *(v0 + 344);
  v4 = *(v0 + 280);
  v5 = *(v0 + 264);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  v2(v4, v3, v5);
  MEMORY[0x26D633490](v1);
  v6 = sub_2691E1384();
  LOBYTE(v5) = sub_2691E1544();

  if (os_log_type_enabled(v6, v5))
  {
    v7 = *(v0 + 440);
    v30 = *(v0 + 368);
    v8 = *(v0 + 280);
    v9 = *(v0 + 264);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v31 = v11;
    *v10 = 136315138;
    *(v0 + 200) = v7;
    MEMORY[0x26D633490](v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F97D0, qword_2691E2360);
    v12 = sub_2691E13E4();
    v14 = sub_2691B98CC(v12, v13, &v31);

    *(v10 + 4) = v14;
    OUTLINED_FUNCTION_11_3(&dword_2691B1000, v15, v16, "SCTakePhotoFlow execute | error: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_42();

    v30(v8, v9);
  }

  else
  {
    v17 = *(v0 + 368);
    v18 = *(v0 + 280);
    v19 = *(v0 + 264);

    v17(v18, v19);
  }

  v20 = *(v0 + 440);
  v21 = *(v0 + 416);
  v22 = *(v0 + 408);
  v23 = *(v0 + 392);
  v24 = *(v0 + 256);
  v25 = *(v0 + 232);
  v26 = *(v0 + 240);
  sub_2691E0B94();
  __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
  v23(v24, *MEMORY[0x277D5BC00], v26);
  v21(v25, *MEMORY[0x277D5B8D0], v22);
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v22);
  *(swift_allocObject() + 16) = v20;
  MEMORY[0x26D633490](v20);
  OUTLINED_FUNCTION_7_3();
  sub_2691E0BF4();
  sub_2691E0BA4();

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
  v27 = *(v0 + 336);
  sub_2691E0D54();
  sub_2691C0B44(v27, &qword_2802F9810, &unk_2691E2660);
  OUTLINED_FUNCTION_2_6();

  OUTLINED_FUNCTION_31();

  return v28();
}

uint64_t sub_2691D2168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9810, &unk_2691E2660);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2691D21D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B7DC0;

  return sub_2691D0E44();
}

uint64_t SCTakePhotoFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SCTakePhotoFlow();
  sub_2691D25B8();
  return sub_2691E0B34();
}

uint64_t sub_2691D2310()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B7DC0;

  return SCTakePhotoFlow.execute()();
}

uint64_t sub_2691D23AC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SCTakePhotoFlow();

  return MEMORY[0x2821BA658](v3, a2);
}

uint64_t CaptureType.hashValue.getter(unsigned __int8 a1)
{
  sub_2691E1714();
  MEMORY[0x26D633080](a1);
  return sub_2691E1734();
}

uint64_t sub_2691D2480(uint64_t a1)
{
  v2 = *v1;
  sub_2691E1714();
  CaptureType.hash(into:)(v4, v2);
  return sub_2691E1734();
}

uint64_t sub_2691D24C4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2691D24FC()
{
  OUTLINED_FUNCTION_34();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B7DC0;

  return sub_2691D21D8();
}

unint64_t sub_2691D25B8()
{
  result = qword_2802F9998;
  if (!qword_2802F9998)
  {
    type metadata accessor for SCTakePhotoFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9998);
  }

  return result;
}

unint64_t sub_2691D2610()
{
  result = qword_2802F9B58;
  if (!qword_2802F9B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9B58);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CaptureType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2691D2730);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_6()
{
}

void OUTLINED_FUNCTION_11_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t SCLockFlow.execute()()
{
  OUTLINED_FUNCTION_34();
  v1[24] = v2;
  v1[25] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B48, &unk_2691E3588);
  v1[26] = OUTLINED_FUNCTION_44();
  v3 = sub_2691E0CB4();
  v1[27] = v3;
  OUTLINED_FUNCTION_1(v3);
  v1[28] = v4;
  v1[29] = OUTLINED_FUNCTION_44();
  v5 = sub_2691E1394();
  v1[30] = v5;
  OUTLINED_FUNCTION_1(v5);
  v1[31] = v6;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2691D2914()
{
  sub_2691E0EF4();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_35();
  v1 = sub_2691E0C64();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (v1)
  {
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2802F9378);
    }

    v2 = v0[33];
    v3 = v0[30];
    v4 = v0[31];
    v5 = __swift_project_value_buffer(v3, qword_2802FBA28);
    (*(v4 + 16))(v2, v5, v3);
    v6 = sub_2691E1384();
    v7 = sub_2691E1524();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2691B1000, v6, v7, "SCLockFlow execute | cannot lock device on watchOS", v8, 2u);
      OUTLINED_FUNCTION_42();
    }

    v9 = OUTLINED_FUNCTION_35();
    v10(v9);

    sub_2691E0E14();
    sub_2691E0A74();
    swift_allocObject();
    v0[23] = sub_2691E0A64();
    sub_2691E0D34();

    OUTLINED_FUNCTION_4_3();

    OUTLINED_FUNCTION_31();

    return v11();
  }

  else
  {
    v13 = [objc_allocWithZone(MEMORY[0x277D47260]) init];
    v0[35] = v13;
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2802F9378);
    }

    v14 = v0[34];
    v15 = v0[30];
    v16 = v0[31];
    v17 = __swift_project_value_buffer(v15, qword_2802FBA28);
    v0[36] = v17;
    v18 = *(v16 + 16);
    v0[37] = v18;
    v0[38] = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v18(v14, v17, v15);
    v19 = v13;
    v20 = sub_2691E1384();
    v21 = sub_2691E1524();

    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[34];
    v24 = v0[30];
    v25 = v0[31];
    if (v22)
    {
      v26 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v26 = 136315138;
      v27 = v19;
      v28 = v19;
      v29 = [v27 description];
      sub_2691E13D4();
      v51 = v23;

      v19 = v28;
      v30 = OUTLINED_FUNCTION_35();
      v33 = sub_2691B98CC(v30, v31, v32);

      *(v26 + 4) = v33;
      _os_log_impl(&dword_2691B1000, v20, v21, "SCLockFlow execute | submitting command: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_42();

      v34 = *(v25 + 8);
      v34(v51, v24);
    }

    else
    {

      v34 = *(v25 + 8);
      v35 = OUTLINED_FUNCTION_35();
      v34(v35, v36);
    }

    v0[39] = v34;
    v38 = v0[28];
    v37 = v0[29];
    v40 = v0[26];
    v39 = v0[27];
    sub_2691E0B94();
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    v0[40] = sub_2691E0C04();
    v41 = *MEMORY[0x277D5BC10];
    v42 = *(v38 + 104);
    v0[41] = v42;
    v0[42] = (v38 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v42(v37, v41, v39);
    v43 = *MEMORY[0x277D5B950];
    v44 = sub_2691E0BB4();
    v0[43] = v44;
    v45 = *(v44 - 8);
    v46 = *(v45 + 104);
    v0[44] = v46;
    v0[45] = (v45 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v46(v40, v43, v44);
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_9_5();
    sub_2691E0BF4();
    sub_2691E0BA4();

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
    sub_2691E0C14();
    v48 = v0[15];
    v47 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v48);
    v49 = swift_task_alloc();
    v0[46] = v49;
    v50 = sub_2691D102C();
    *v49 = v0;
    v49[1] = sub_2691D2EA0;

    return MEMORY[0x2821BB6A0](v19, v48, v50, v47);
  }
}

uint64_t sub_2691D2EA0()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_20();
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 376) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2691D2FA8()
{
  v28 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 296);
  v3 = *(v0 + 288);
  v4 = *(v0 + 256);
  v5 = *(v0 + 240);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  v2(v4, v3, v5);
  MEMORY[0x26D633490](v1);
  v6 = sub_2691E1384();
  v7 = sub_2691E1544();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 376);
    v26 = *(v0 + 312);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v9 = 136315138;
    *(v0 + 176) = v8;
    MEMORY[0x26D633490](v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F97D0, qword_2691E2360);
    v11 = sub_2691E13E4();
    v13 = sub_2691B98CC(v11, v12, &v27);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2691B1000, v6, v7, "SCLockFlow execute | error: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_42();

    v14 = OUTLINED_FUNCTION_35();
    v26(v14);
  }

  else
  {
    v15 = *(v0 + 312);

    v16 = OUTLINED_FUNCTION_35();
    v15(v16);
  }

  v17 = *(v0 + 376);
  v18 = *(v0 + 352);
  v19 = *(v0 + 344);
  v20 = *(v0 + 328);
  v21 = *(v0 + 232);
  v22 = *(v0 + 208);
  v23 = *(v0 + 216);
  sub_2691E0B94();
  __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
  v20(v21, *MEMORY[0x277D5BC00], v23);
  v18(v22, *MEMORY[0x277D5B8D0], v19);
  OUTLINED_FUNCTION_11_2();
  *(swift_allocObject() + 16) = v17;
  MEMORY[0x26D633490](v17);
  OUTLINED_FUNCTION_9_5();
  sub_2691E0BF4();
  sub_2691E0BA4();

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
  sub_2691E0D54();
  OUTLINED_FUNCTION_4_3();

  OUTLINED_FUNCTION_31();

  return v24();
}

uint64_t sub_2691D329C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B7DC0;

  return sub_2691D0E44();
}

uint64_t SCLockFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SCLockFlow();
  sub_2691D3594();
  return sub_2691E0B34();
}

uint64_t sub_2691D33CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B7DC0;

  return SCLockFlow.execute()();
}

uint64_t sub_2691D3468(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SCLockFlow();

  return MEMORY[0x2821BA658](v3, a2);
}

uint64_t sub_2691D34A0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2691D34D8()
{
  OUTLINED_FUNCTION_34();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B7DC0;

  return sub_2691D329C();
}

unint64_t sub_2691D3594()
{
  result = qword_2802F9958;
  if (!qword_2802F9958)
  {
    type metadata accessor for SCLockFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9958);
  }

  return result;
}

uint64_t SCStartScreenRecordingFlow.__allocating_init(confirmationRequired:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 17) = a1;
  *(result + 24) = sub_2691D366C;
  *(result + 32) = 0;
  return result;
}

uint64_t SCStartScreenRecordingFlow.init(confirmationRequired:)(char a1)
{
  *(v1 + 16) = 0;
  *(v1 + 17) = a1;
  *(v1 + 24) = sub_2691D366C;
  *(v1 + 32) = 0;
  return v1;
}

uint64_t sub_2691D3688()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B90, &unk_2691E3A10);
  v0 = sub_2691E0AE4();
  OUTLINED_FUNCTION_1(v0);
  *(swift_allocObject() + 16) = xmmword_2691E2110;
  sub_2691E0AD4();
  v1 = sub_2691E0A24();

  return v1;
}

uint64_t SCStartScreenRecordingFlow.execute()()
{
  OUTLINED_FUNCTION_34();
  v1[32] = v2;
  v1[33] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B48, &unk_2691E3588);
  OUTLINED_FUNCTION_37(v3);
  v1[34] = OUTLINED_FUNCTION_44();
  v4 = sub_2691E0CB4();
  v1[35] = v4;
  OUTLINED_FUNCTION_1(v4);
  v1[36] = v5;
  v1[37] = OUTLINED_FUNCTION_44();
  v6 = sub_2691E1394();
  v1[38] = v6;
  OUTLINED_FUNCTION_1(v6);
  v1[39] = v7;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2691D38C8()
{
  v124 = v0;
  sub_2691E0EF4();
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_35();
  v1 = sub_2691E0C74();
  v2 = __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  if (v1)
  {
    if (qword_2802F9378 != -1)
    {
      v2 = OUTLINED_FUNCTION_0(&qword_2802F9378);
    }

    v3 = OUTLINED_FUNCTION_1_6(v2, qword_2802FBA28);
    v4(v3);
    v5 = sub_2691E1384();
    v6 = sub_2691E1524();
    if (OUTLINED_FUNCTION_11_1(v6))
    {
      v7 = OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_32(v7);
      OUTLINED_FUNCTION_12_0(&dword_2691B1000, v8, v9, "SCStartScreenRecordingFlow execute | cannot screen record in Carplay");
      OUTLINED_FUNCTION_11_4();
    }

    v10 = *(v0 + 264);

    v11 = OUTLINED_FUNCTION_35();
    v12(v11);
    *(v10 + 16) = 7;

    sub_2691E0E14();
    v13 = sub_2691E0A74();
    OUTLINED_FUNCTION_36_1(v13);
    *(v0 + 248) = sub_2691E0A64();
LABEL_13:
    sub_2691E0D34();
LABEL_14:

    goto LABEL_15;
  }

  sub_2691E0EF4();
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  OUTLINED_FUNCTION_35();
  v14 = sub_2691E0C64();
  v15 = __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  if (v14)
  {
    if (qword_2802F9378 != -1)
    {
      v15 = OUTLINED_FUNCTION_0(&qword_2802F9378);
    }

    v16 = OUTLINED_FUNCTION_1_6(v15, qword_2802FBA28);
    v17(v16);
    v18 = sub_2691E1384();
    v19 = sub_2691E1524();
    if (OUTLINED_FUNCTION_11_1(v19))
    {
      v20 = OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_32(v20);
      OUTLINED_FUNCTION_12_0(&dword_2691B1000, v21, v22, "SCStartScreenRecordingFlow execute | cannot screen record on watchOS");
      OUTLINED_FUNCTION_11_4();
    }

    v23 = *(v0 + 264);

    v24 = OUTLINED_FUNCTION_35();
    v25(v24);
    *(v23 + 16) = 7;

    sub_2691E0E14();
    v26 = sub_2691E0A74();
    OUTLINED_FUNCTION_36_1(v26);
    *(v0 + 240) = sub_2691E0A64();
    goto LABEL_13;
  }

  v29 = *(v0 + 264);
  v30 = *(v29 + 16);
  if (v30 == 4)
  {
    v55 = [objc_allocWithZone(MEMORY[0x277D47268]) init];
    *(v0 + 400) = v55;
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2802F9378);
    }

    v56 = *(v0 + 352);
    v57 = *(v0 + 304);
    v58 = *(v0 + 312);
    v59 = __swift_project_value_buffer(v57, qword_2802FBA28);
    *(v0 + 408) = v59;
    v60 = *(v58 + 16);
    *(v0 + 416) = v60;
    *(v0 + 424) = (v58 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v60(v56, v59, v57);
    v61 = v55;
    v62 = sub_2691E1384();
    v63 = sub_2691E1524();

    v64 = os_log_type_enabled(v62, v63);
    v65 = *(v0 + 352);
    v67 = *(v0 + 304);
    v66 = *(v0 + 312);
    if (v64)
    {
      v122 = *(v0 + 304);
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v123[0] = v69;
      *v68 = 136315138;
      v70 = v61;
      v71 = [v70 description];
      sub_2691E13D4();

      v72 = OUTLINED_FUNCTION_35();
      v75 = sub_2691B98CC(v72, v73, v74);

      *(v68 + 4) = v75;
      _os_log_impl(&dword_2691B1000, v62, v63, "SCStartScreenRecordingFlow execute | submitting command: %s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v69);
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_42();

      v76 = *(v66 + 8);
      v76(v65, v122);
    }

    else
    {

      v76 = *(v66 + 8);
      v76(v65, v67);
    }

    *(v0 + 432) = v76;
    v104 = *(v0 + 288);
    v103 = *(v0 + 296);
    v106 = *(v0 + 272);
    v105 = *(v0 + 280);
    sub_2691E0B94();
    __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    *(v0 + 440) = sub_2691E0C04();
    v107 = *MEMORY[0x277D5BC10];
    v108 = *(v104 + 104);
    *(v0 + 448) = v108;
    *(v0 + 456) = (v104 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v108(v103, v107, v105);
    v109 = *MEMORY[0x277D5B950];
    v110 = sub_2691E0BB4();
    *(v0 + 464) = v110;
    OUTLINED_FUNCTION_27();
    v112 = *(v111 + 104);
    *(v0 + 472) = v112;
    *(v0 + 480) = (v111 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v112(v106, v109, v110);
    OUTLINED_FUNCTION_29_1();
    __swift_storeEnumTagSinglePayload(v113, v114, v115, v110);
    sub_2691E0BF4();
    sub_2691E0BA4();

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
    sub_2691E0C14();
    __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
    v116 = swift_task_alloc();
    *(v0 + 488) = v116;
    sub_2691D102C();
    *v116 = v0;
    v116[1] = sub_2691D488C;
    OUTLINED_FUNCTION_23_0();

    return MEMORY[0x2821BB6A0](v117, v118, v119, v120);
  }

  else if (v30 == 2)
  {
    if (*(v29 + 17) == 1)
    {
      if (qword_2802F9378 != -1)
      {
        v15 = OUTLINED_FUNCTION_0(&qword_2802F9378);
      }

      v44 = OUTLINED_FUNCTION_1_6(v15, qword_2802FBA28);
      v45(v44);
      v46 = sub_2691E1384();
      v47 = sub_2691E1524();
      if (OUTLINED_FUNCTION_11_1(v47))
      {
        v48 = OUTLINED_FUNCTION_51();
        OUTLINED_FUNCTION_32(v48);
        OUTLINED_FUNCTION_12_0(&dword_2691B1000, v49, v50, "SCStartScreenRecordingFlow execute | prompting for confirmation");
        OUTLINED_FUNCTION_11_4();
      }

      v51 = *(v0 + 368);
      v52 = *(v0 + 304);
      v53 = *(v0 + 312);

      (*(v53 + 8))(v51, v52);
      *(v29 + 16) = 3;
      sub_2691E0EF4();
      type metadata accessor for SCSystemCommandsYesNoStrategy();
      swift_allocObject();
      sub_2691B2D50(v123, 2);
      sub_2691E0E14();
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B60, &qword_2691E3C20);
      OUTLINED_FUNCTION_36_1(v54);
      sub_2691D6FEC(&qword_2802F93C0, 255, type metadata accessor for SCSystemCommandsYesNoStrategy, &unk_2691E22A0);
      *(v0 + 232) = sub_2691E0AB4();
      sub_2691D6C00();

      sub_2691E0D24();

      goto LABEL_14;
    }

    if (qword_2802F9378 != -1)
    {
      v15 = OUTLINED_FUNCTION_0(&qword_2802F9378);
    }

    v91 = OUTLINED_FUNCTION_1_6(v15, qword_2802FBA28);
    v92(v91);
    v93 = sub_2691E1384();
    v94 = sub_2691E1524();
    if (OUTLINED_FUNCTION_11_1(v94))
    {
      v95 = OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_32(v95);
      OUTLINED_FUNCTION_12_0(&dword_2691B1000, v96, v97, "SCStartScreenRecordingFlow execute | confirmation is not required, proceeding to next flow");
      OUTLINED_FUNCTION_11_4();
    }

    v98 = OUTLINED_FUNCTION_35();
    v99(v98);
    *(v29 + 16) = 4;
    swift_task_alloc();
    OUTLINED_FUNCTION_13_0();
    *(v0 + 392) = v100;
    *v100 = v101;
    v100[1] = sub_2691D4688;
    OUTLINED_FUNCTION_23_0();

    return SCStartScreenRecordingFlow.execute()();
  }

  else
  {
    if (*(v29 + 16))
    {
      if (qword_2802F9378 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2802F9378);
      }

      v77 = *(v0 + 344);
      v78 = *(v0 + 304);
      v79 = *(v0 + 312);
      v80 = __swift_project_value_buffer(v78, qword_2802FBA28);
      (*(v79 + 16))(v77, v80, v78);

      v81 = sub_2691E1384();
      LOBYTE(v79) = sub_2691E1524();

      if (os_log_type_enabled(v81, v79))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v123[0] = v83;
        *v82 = 136315138;
        *(v0 + 504) = *(v29 + 16);
        v84 = sub_2691E13E4();
        v86 = sub_2691B98CC(v84, v85, v123);

        *(v82 + 4) = v86;
        OUTLINED_FUNCTION_11_3(&dword_2691B1000, v87, v88, "SCStartScreenRecordingFlow execute | flow completed with state: %s");
        __swift_destroy_boxed_opaque_existential_0Tm(v83);
        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_42();
      }

      v89 = OUTLINED_FUNCTION_35();
      v90(v89);
      sub_2691E0D54();
LABEL_15:
      OUTLINED_FUNCTION_7_4();

      OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_23_0();

      __asm { BRAA            X1, X16 }
    }

    if (qword_2802F9378 != -1)
    {
      v15 = OUTLINED_FUNCTION_0(&qword_2802F9378);
    }

    v31 = OUTLINED_FUNCTION_1_6(v15, qword_2802FBA28);
    v32(v31);
    v33 = sub_2691E1384();
    v34 = sub_2691E1524();
    if (OUTLINED_FUNCTION_11_1(v34))
    {
      v35 = OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_32(v35);
      OUTLINED_FUNCTION_12_0(&dword_2691B1000, v36, v37, "SCStartScreenRecordingFlow execute | checking if device unlock is required");
      OUTLINED_FUNCTION_11_4();
    }

    v38 = OUTLINED_FUNCTION_35();
    v39(v38);
    swift_task_alloc();
    OUTLINED_FUNCTION_13_0();
    *(v0 + 384) = v40;
    *v40 = v41;
    v40[1] = sub_2691D4484;
    OUTLINED_FUNCTION_23_0();

    return sub_2691D5904();
  }
}

uint64_t sub_2691D4484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_32_1();
  v13 = *v12;
  v14 = *v12;
  OUTLINED_FUNCTION_8();
  *v15 = v14;

  OUTLINED_FUNCTION_31_1();
  v25 = *(v13 + 296);
  OUTLINED_FUNCTION_31_1();

  OUTLINED_FUNCTION_34_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, v25, a10, a11, a12);
}

uint64_t sub_2691D4688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_32_1();
  v13 = *v12;
  v14 = *v12;
  OUTLINED_FUNCTION_8();
  *v15 = v14;

  OUTLINED_FUNCTION_31_1();
  v25 = *(v13 + 296);
  OUTLINED_FUNCTION_31_1();

  OUTLINED_FUNCTION_34_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, v25, a10, a11, a12);
}

uint64_t sub_2691D488C()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_20();
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 496) = v0;

  if (v0)
  {
    v7 = sub_2691D4A58;
  }

  else
  {

    v7 = sub_2691D4998;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2691D4998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_32_1();

  __swift_destroy_boxed_opaque_existential_0Tm((v12 + 136));
  sub_2691E0D54();
  OUTLINED_FUNCTION_7_4();

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_34_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_2691D4A58()
{
  v33 = v0;
  v1 = *(v0 + 496);
  v2 = *(v0 + 416);
  v3 = *(v0 + 408);
  v4 = *(v0 + 320);
  v5 = *(v0 + 304);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
  v2(v4, v3, v5);
  MEMORY[0x26D633490](v1);
  v6 = sub_2691E1384();
  LOBYTE(v5) = sub_2691E1544();

  if (os_log_type_enabled(v6, v5))
  {
    v7 = *(v0 + 496);
    v31 = *(v0 + 432);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32[0] = v9;
    *v8 = 136315138;
    *(v0 + 224) = v7;
    MEMORY[0x26D633490](v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F97D0, qword_2691E2360);
    v10 = sub_2691E13E4();
    v12 = sub_2691B98CC(v10, v11, v32);

    *(v8 + 4) = v12;
    OUTLINED_FUNCTION_11_3(&dword_2691B1000, v13, v14, "SCStartScreenRecordingFlow execute | unable to start recording: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_42();

    v15 = OUTLINED_FUNCTION_35();
    v31(v15);
  }

  else
  {
    v16 = *(v0 + 432);

    v17 = OUTLINED_FUNCTION_35();
    v16(v17);
  }

  v18 = *(v0 + 472);
  v19 = *(v0 + 464);
  v20 = *(v0 + 448);
  v21 = *(v0 + 296);
  v22 = *(v0 + 272);
  v23 = *(v0 + 280);
  v30 = *(v0 + 496);
  *(*(v0 + 264) + 16) = 7;
  sub_2691E0B94();
  __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
  v20(v21, *MEMORY[0x277D5BC00], v23);
  v18(v22, *MEMORY[0x277D5B8D0], v19);
  OUTLINED_FUNCTION_29_1();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v19);
  *(swift_allocObject() + 16) = v30;
  MEMORY[0x26D633490](v30);
  sub_2691E0BF4();
  sub_2691E0BA4();

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));

  sub_2691E0E14();
  v27 = sub_2691E0A74();
  OUTLINED_FUNCTION_36_1(v27);
  *(v0 + 216) = sub_2691E0A64();
  sub_2691E0D34();

  OUTLINED_FUNCTION_7_4();

  OUTLINED_FUNCTION_31();

  return v28();
}

uint64_t sub_2691D4E18(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2691B8324;

  return sub_2691D60FC();
}

uint64_t sub_2691D4EB0(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2691B7DC0;

  return sub_2691D60FC();
}

uint64_t sub_2691D4F48(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2691B8324;

  return sub_2691D64E4();
}

uint64_t SCStartScreenRecordingFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SCStartScreenRecordingFlow();
  sub_2691D6FEC(&qword_2802F9990, v2, type metadata accessor for SCStartScreenRecordingFlow, &protocol conformance descriptor for SCStartScreenRecordingFlow);
  return sub_2691E0B34();
}

uint64_t sub_2691D506C(uint64_t a1)
{
  v95 = a1;
  v1 = sub_2691E0DF4();
  OUTLINED_FUNCTION_2();
  v92 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_47();
  v87 = v5 - v4;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B78, &qword_2691E39F8);
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6();
  v89 = v7;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v8);
  v10 = &v80[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9438, &qword_2691E3A00);
  v12 = OUTLINED_FUNCTION_37(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6();
  v86 = v13;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v14);
  v90 = &v80[-v15];
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v16);
  v91 = &v80[-v17];
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v18);
  v88 = &v80[-v19];
  OUTLINED_FUNCTION_13();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v80[-v22];
  MEMORY[0x28223BE20](v21);
  v25 = &v80[-v24];
  v26 = sub_2691E0E84();
  OUTLINED_FUNCTION_2();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_47();
  v32 = v31 - v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B80, &qword_2691E3A08);
  OUTLINED_FUNCTION_2();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v80[-v37];
  (*(v35 + 16))(&v80[-v37], v95, v33);
  if ((*(v35 + 88))(v38, v33) != *MEMORY[0x277D5BC38])
  {
    *(v94 + 16) = 6;
    return (*(v35 + 8))(v38, v33);
  }

  (*(v35 + 96))(v38, v33);
  (*(v28 + 32))(v32, v38, v26);
  v85 = v32;
  sub_2691E0E74();
  v39 = *MEMORY[0x277D5BED8];
  v40 = v92;
  v83 = *(v92 + 104);
  v83(v23, v39, v1);
  OUTLINED_FUNCTION_29_1();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v1);
  v44 = *(v93 + 48);
  sub_2691D6F7C(v25, v10);
  sub_2691D6F7C(v23, &v10[v44]);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v1);
  v95 = v1;
  v84 = v28;
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_22_1(v23);
    OUTLINED_FUNCTION_22_1(v25);
    if (__swift_getEnumTagSinglePayload(&v10[v44], 1, v95) == 1)
    {
      sub_2691CAE08(v10, &qword_2802F9438, &qword_2691E3A00);
LABEL_16:
      v71 = OUTLINED_FUNCTION_28_1();
      result = v72(v71);
      *(v94 + 16) = 4;
      return result;
    }

    goto LABEL_8;
  }

  v47 = v88;
  sub_2691D6F7C(v10, v88);
  if (__swift_getEnumTagSinglePayload(&v10[v44], 1, v1) == 1)
  {
    OUTLINED_FUNCTION_22_1(v23);
    OUTLINED_FUNCTION_22_1(v25);
    (*(v40 + 8))(v47, v95);
LABEL_8:
    sub_2691CAE08(v10, &qword_2802F9B78, &qword_2691E39F8);
    goto LABEL_9;
  }

  v65 = *(v40 + 32);
  v82 = v26;
  v66 = v87;
  v65(v87, &v10[v44], v1);
  OUTLINED_FUNCTION_10_2();
  sub_2691D6FEC(v67, 255, v68, MEMORY[0x277D5BEE8]);
  v81 = sub_2691E13B4();
  v69 = *(v40 + 8);
  v70 = v66;
  v26 = v82;
  v69(v70, v1);
  sub_2691CAE08(v23, &qword_2802F9438, &qword_2691E3A00);
  sub_2691CAE08(v25, &qword_2802F9438, &qword_2691E3A00);
  v69(v47, v1);
  sub_2691CAE08(v10, &qword_2802F9438, &qword_2691E3A00);
  if (v81)
  {
    goto LABEL_16;
  }

LABEL_9:
  v48 = v91;
  sub_2691E0E74();
  v49 = v90;
  v50 = v95;
  v83(v90, *MEMORY[0x277D5BED0], v95);
  OUTLINED_FUNCTION_29_1();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v50);
  v54 = *(v93 + 48);
  v55 = v89;
  sub_2691D6F7C(v48, v89);
  sub_2691D6F7C(v49, v55 + v54);
  if (__swift_getEnumTagSinglePayload(v55, 1, v50) != 1)
  {
    v60 = v26;
    v61 = v86;
    sub_2691D6F7C(v55, v86);
    v62 = __swift_getEnumTagSinglePayload(v55 + v54, 1, v50);
    v63 = v92;
    v64 = (v92 + 8);
    if (v62 != 1)
    {
      v73 = v55 + v54;
      v74 = v87;
      (*(v92 + 32))(v87, v73, v50);
      OUTLINED_FUNCTION_10_2();
      sub_2691D6FEC(v75, 255, v76, MEMORY[0x277D5BEE8]);
      v77 = sub_2691E13B4();
      v78 = v84;
      v79 = *(v63 + 8);
      v79(v74, v50);
      sub_2691CAE08(v90, &qword_2802F9438, &qword_2691E3A00);
      sub_2691CAE08(v91, &qword_2802F9438, &qword_2691E3A00);
      (*(v78 + 8))(v85, v60);
      v79(v61, v50);
      result = sub_2691CAE08(v55, &qword_2802F9438, &qword_2691E3A00);
      v59 = v94;
      if ((v77 & 1) == 0)
      {
        return result;
      }

      goto LABEL_18;
    }

    OUTLINED_FUNCTION_22_1(v90);
    OUTLINED_FUNCTION_22_1(v91);
    (*(v84 + 8))(v85, v60);
    (*v64)(v61, v50);
    return sub_2691CAE08(v55, &qword_2802F9B78, &qword_2691E39F8);
  }

  OUTLINED_FUNCTION_22_1(v49);
  OUTLINED_FUNCTION_22_1(v48);
  v56 = OUTLINED_FUNCTION_28_1();
  v57(v56);
  v58 = __swift_getEnumTagSinglePayload(v55 + v54, 1, v50);
  v59 = v94;
  if (v58 != 1)
  {
    return sub_2691CAE08(v55, &qword_2802F9B78, &qword_2691E39F8);
  }

  result = sub_2691CAE08(v55, &qword_2802F9438, &qword_2691E3A00);
LABEL_18:
  *(v59 + 16) = 5;
  return result;
}

uint64_t sub_2691D5904()
{
  OUTLINED_FUNCTION_34();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_2691E1394();
  v1[5] = v3;
  OUTLINED_FUNCTION_1(v3);
  v1[6] = v4;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2691D59BC()
{
  v1 = sub_2691D6004();
  if (v1)
  {
    if (qword_2802F9378 != -1)
    {
      v1 = OUTLINED_FUNCTION_0(&qword_2802F9378);
    }

    v2 = OUTLINED_FUNCTION_1_6(v1, qword_2802FBA28);
    v3(v2);
    v4 = sub_2691E1384();
    v5 = sub_2691E1524();
    if (OUTLINED_FUNCTION_11_1(v5))
    {
      v6 = OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_32(v6);
      OUTLINED_FUNCTION_12_0(&dword_2691B1000, v7, v8, "SCStartScreenRecordingFlow handleUnlockCheck | unlock is required, waiting for device to be unlocked");
      OUTLINED_FUNCTION_11_4();
    }

    v9 = v0[4];

    v10 = OUTLINED_FUNCTION_35();
    v12 = v11(v10);
    *(v9 + 16) = 1;
    v0[2] = (*(v9 + 24))(v12);
    sub_2691E0AC4();

    sub_2691E0D24();

    OUTLINED_FUNCTION_31();

    return v13();
  }

  else
  {
    if (qword_2802F9378 != -1)
    {
      v1 = OUTLINED_FUNCTION_0(&qword_2802F9378);
    }

    v15 = OUTLINED_FUNCTION_1_6(v1, qword_2802FBA28);
    v16(v15);
    v17 = sub_2691E1384();
    v18 = sub_2691E1524();
    if (OUTLINED_FUNCTION_11_1(v18))
    {
      v19 = OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_32(v19);
      OUTLINED_FUNCTION_12_0(&dword_2691B1000, v20, v21, "SCStartScreenRecordingFlow handleUnlockCheck | unlock is not required, proceeding to next flow");
      OUTLINED_FUNCTION_11_4();
    }

    v22 = v0[4];

    v23 = OUTLINED_FUNCTION_35();
    v24(v23);
    *(v22 + 16) = 2;
    swift_task_alloc();
    OUTLINED_FUNCTION_13_0();
    v0[9] = v25;
    *v25 = v26;
    v25[1] = sub_2691D5C44;

    return SCStartScreenRecordingFlow.execute()();
  }
}

uint64_t sub_2691D5C44()
{
  OUTLINED_FUNCTION_34();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2691D5D64(_BYTE *a1, uint64_t a2)
{
  v4 = sub_2691E1394();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  if (*a1 == 1)
  {
    if (qword_2802F9378 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v4, qword_2802FBA28);
    (*(v5 + 16))(v10, v11, v4);
    v12 = sub_2691E1384();
    v13 = sub_2691E1524();
    if (!os_log_type_enabled(v12, v13))
    {
      v15 = 7;
      goto LABEL_13;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2691B1000, v12, v13, "SCStartScreenRecordingFlow processDeviceUnlockResult | unable to unlock device due to error", v14, 2u);
    v15 = 7;
  }

  else
  {
    if (qword_2802F9378 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v4, qword_2802FBA28);
    (*(v5 + 16))(v8, v16, v4);
    v12 = sub_2691E1384();
    v17 = sub_2691E1524();
    v15 = 2;
    if (!os_log_type_enabled(v12, v17))
    {
      v10 = v8;
      goto LABEL_13;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2691B1000, v12, v17, "SCStartScreenRecordingFlow processDeviceUnlockResult | unlocked device, authenticated", v14, 2u);
    v10 = v8;
  }

  MEMORY[0x26D6335B0](v14, -1, -1);
LABEL_13:

  result = (*(v5 + 8))(v10, v4);
  *(a2 + 16) = v15;
  return result;
}

BOOL sub_2691D6004()
{
  v0 = sub_2691E0DE4();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_47();
  v6 = v5 - v4;
  sub_2691E0EF4();
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_2691E0DD4();
  v7 = sub_2691E0C24();
  (*(v2 + 8))(v6, v0);
  __swift_destroy_boxed_opaque_existential_0Tm(v9);
  return (v7 & 1) == 0;
}

uint64_t sub_2691D60FC()
{
  OUTLINED_FUNCTION_34();
  v0[22] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9468, &unk_2691E3650);
  OUTLINED_FUNCTION_37(v2);
  v0[23] = OUTLINED_FUNCTION_44();
  v3 = sub_2691E0DB4();
  v0[24] = v3;
  OUTLINED_FUNCTION_1(v3);
  v0[25] = v4;
  v0[26] = OUTLINED_FUNCTION_44();
  v5 = OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2691D61CC()
{
  OUTLINED_FUNCTION_34();
  sub_2691E0EF4();
  swift_task_alloc();
  OUTLINED_FUNCTION_13_0();
  *(v0 + 216) = v1;
  *v1 = v2;
  v1[1] = sub_2691D6268;
  v3 = *(v0 + 208);

  return MEMORY[0x2821BB3C8](v3, v0 + 16);
}

uint64_t sub_2691D6268()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v3 + 224) = v0;

  sub_2691CAE08(v3 + 16, &unk_2802F99D0, &qword_2691E2320);
  if (v0)
  {
    v6 = sub_2691C04B4;
  }

  else
  {
    v6 = sub_2691D6384;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2691D6384()
{
  OUTLINED_FUNCTION_32_1();
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = *(v0 + 176);
  sub_2691E0EF4();
  sub_2691E0EF4();
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  sub_2691E0C34();
  v6 = sub_2691E0D84();
  v7 = OUTLINED_FUNCTION_16_0(v6);
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  v8 = MEMORY[0x277D5C1D8];
  v5[3] = v7;
  v5[4] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_18_1(boxed_opaque_existential_1, v10, v11, MEMORY[0x277D84F90], v12, v13, v14, v15, v0 + 136);
  sub_2691CAE08(v0 + 136, &unk_2802F99F0, &unk_2691E3010);
  sub_2691CAE08(v3, &qword_2802F9468, &unk_2691E3650);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  (*(v2 + 8))(v1, v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));

  OUTLINED_FUNCTION_31();

  return v16();
}

uint64_t sub_2691D64E4()
{
  OUTLINED_FUNCTION_34();
  v0[22] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9468, &unk_2691E3650);
  OUTLINED_FUNCTION_37(v2);
  v0[23] = OUTLINED_FUNCTION_44();
  v3 = sub_2691E0DB4();
  v0[24] = v3;
  OUTLINED_FUNCTION_1(v3);
  v0[25] = v4;
  v0[26] = OUTLINED_FUNCTION_44();
  v5 = sub_2691E1374();
  OUTLINED_FUNCTION_37(v5);
  v0[27] = OUTLINED_FUNCTION_44();
  v6 = OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2691D65D4()
{
  type metadata accessor for ScreenRecordingCATs(0);
  sub_2691E1364();
  sub_2691E1294();
  sub_2691E0EF4();
  sub_2691E1274();
  sub_2691CAE08(v0 + 16, &unk_2802F99D0, &qword_2691E2320);
  sub_2691E1284();

  *(v0 + 224) = sub_2691E12C4();
  swift_task_alloc();
  OUTLINED_FUNCTION_13_0();
  *(v0 + 232) = v1;
  *v1 = v2;
  v1[1] = sub_2691D66E4;

  return sub_2691D7EE0();
}

uint64_t sub_2691D66E4()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  *(v4 + 240) = v0;

  if (v0)
  {
    v5 = sub_2691D6964;
  }

  else
  {
    v5 = sub_2691D67E8;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2691D67E8()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = *(v0 + 176);
  sub_2691E0EF4();
  sub_2691E0EF4();
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  sub_2691E0C34();
  v6 = sub_2691E0D84();
  v7 = OUTLINED_FUNCTION_16_0(v6);
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  v8 = MEMORY[0x277D5C1D8];
  v5[3] = v7;
  v5[4] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_18_1(boxed_opaque_existential_1, v10, v11, MEMORY[0x277D84F90], v12, v13, v14, v15, v0 + 136);

  sub_2691CAE08(v0 + 136, &unk_2802F99F0, &unk_2691E3010);
  sub_2691CAE08(v3, &qword_2802F9468, &unk_2691E3650);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  (*(v2 + 8))(v1, v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));

  OUTLINED_FUNCTION_31();

  return v16();
}

uint64_t sub_2691D6964()
{

  OUTLINED_FUNCTION_31();

  return v0();
}

uint64_t SCStartScreenRecordingFlow.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_2691D6A68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B7DC0;

  return SCStartScreenRecordingFlow.execute()();
}

uint64_t sub_2691D6B04(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SCStartScreenRecordingFlow();

  return MEMORY[0x2821BA658](v3, a2);
}

uint64_t sub_2691D6B3C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2691D6B74()
{
  OUTLINED_FUNCTION_34();
  swift_task_alloc();
  OUTLINED_FUNCTION_13_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_1(v1);

  return sub_2691D4F48(v3);
}

unint64_t sub_2691D6C00()
{
  result = qword_2802F9B68;
  if (!qword_2802F9B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802F9B60, &qword_2691E3C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9B68);
  }

  return result;
}

uint64_t sub_2691D6C64()
{
  OUTLINED_FUNCTION_34();
  swift_task_alloc();
  OUTLINED_FUNCTION_13_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_1(v1);

  return sub_2691D4EB0(v3);
}

uint64_t sub_2691D6CEC()
{
  OUTLINED_FUNCTION_34();
  swift_task_alloc();
  OUTLINED_FUNCTION_13_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_1(v1);

  return sub_2691D4E18(v3);
}

uint64_t getEnumTagSinglePayload for SCStartScreenRecordingFlow.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SCStartScreenRecordingFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2691D6EECLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2691D6F28()
{
  result = qword_2802F9B70;
  if (!qword_2802F9B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9B70);
  }

  return result;
}

uint64_t sub_2691D6F7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9438, &qword_2691E3A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2691D6FEC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t OUTLINED_FUNCTION_7_4()
{
}

void OUTLINED_FUNCTION_11_4()
{

  JUMPOUT(0x26D6335B0);
}

uint64_t OUTLINED_FUNCTION_18_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2691E0D14();
}

uint64_t OUTLINED_FUNCTION_22_1(uint64_t a1)
{

  return sub_2691CAE08(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_36_1(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_2691D71AC(char a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *&v6[0] = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9BA0, ">+");
  *(v2 + 16) = sub_2691E13E4();
  *(v2 + 24) = v4;
  sub_2691B8078(a2 + 40, v2 + 40);
  sub_2691B8078(a2 + 80, v6);
  sub_2691B8A88(a2);
  sub_2691B8ADC(v6, v2 + 80);
  return v2;
}

uint64_t SCGuestModeFlow.execute()()
{
  OUTLINED_FUNCTION_34();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_2691E1394();
  v1[5] = v3;
  v1[6] = *(v3 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2691D7318);
}

uint64_t sub_2691D7318()
{
  v17 = v0;
  if (qword_2802F9378 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = __swift_project_value_buffer(v3, qword_2802FBA28);
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_2691E1384();
  v6 = sub_2691E1524();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[5];
  if (v7)
  {
    v11 = v0[4];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_2691B98CC(*(v11 + 16), *(v11 + 24), v16);
    _os_log_impl(&dword_2691B1000, v5, v6, "#GUM %s execute | guest mode is only on visionOS", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x26D6335B0](v13, -1, -1);
    MEMORY[0x26D6335B0](v12, -1, -1);
  }

  (*(v9 + 8))(v8, v10);

  sub_2691E0E14();
  sub_2691E0A74();
  swift_allocObject();
  v0[2] = sub_2691E0A64();
  sub_2691E0D34();

  OUTLINED_FUNCTION_31();

  return v14();
}

uint64_t sub_2691D755C(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2691B7DC0;

  return sub_2691D76E8();
}

uint64_t sub_2691D75F4()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_2691B7DC0;

  return sub_2691D755C(v2);
}

uint64_t SCGuestModeFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SCGuestModeFlow();
  sub_2691D7BF8();
  return sub_2691E0B34();
}

uint64_t sub_2691D76E8()
{
  OUTLINED_FUNCTION_34();
  v0[22] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9468, &unk_2691E3650);
  v0[23] = swift_task_alloc();
  v2 = sub_2691E0DB4();
  v0[24] = v2;
  v0[25] = *(v2 - 8);
  v0[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2691D77DC);
}

uint64_t sub_2691D77DC()
{
  OUTLINED_FUNCTION_34();
  sub_2691E0EF4();
  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  *v1 = v0;
  v1[1] = sub_2691D787C;
  v2 = *(v0 + 208);

  return MEMORY[0x2821BB3C8](v2, v0 + 16);
}

uint64_t sub_2691D787C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v3 + 224) = v0;

  sub_2691C0B44(v3 + 16, &unk_2802F99D0, &qword_2691E2320);
  if (v0)
  {
    v6 = sub_2691C04B4;
  }

  else
  {
    v6 = sub_2691C0318;
  }

  return MEMORY[0x2822009F8](v6);
}

void *SCGuestModeFlow.deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 80));
  return v0;
}

uint64_t SCGuestModeFlow.__deallocating_deinit()
{
  SCGuestModeFlow.deinit();

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

uint64_t sub_2691D7A20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B7DC0;

  return SCGuestModeFlow.execute()();
}

uint64_t sub_2691D7ABC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SCGuestModeFlow();

  return MEMORY[0x2821BA658](v3, a2);
}

uint64_t RequestType.hashValue.getter(unsigned __int8 a1)
{
  sub_2691E1714();
  MEMORY[0x26D633080](a1);
  return sub_2691E1734();
}

uint64_t sub_2691D7B90(uint64_t a1)
{
  v2 = *v1;
  sub_2691E1714();
  RequestType.hash(into:)(v4, v2);
  return sub_2691E1734();
}

unint64_t sub_2691D7BF8()
{
  result = qword_2802F9950;
  if (!qword_2802F9950)
  {
    type metadata accessor for SCGuestModeFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9950);
  }

  return result;
}

unint64_t sub_2691D7C50()
{
  result = qword_2802F9B98;
  if (!qword_2802F9B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9B98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RequestType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RequestType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2691D7DF8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for ScreenRecordingCATs(uint64_t a1)
{
  result = qword_2802F9BA8;
  if (!qword_2802F9BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2691D7EE0()
{
  OUTLINED_FUNCTION_61();
  v0 = OUTLINED_FUNCTION_0_4();
  v1 = OUTLINED_FUNCTION_2_7(v0);
  *v1 = v2;
  v1[1] = sub_2691D844C;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_3_7();

  return v3();
}

uint64_t sub_2691D7F8C()
{
  OUTLINED_FUNCTION_61();
  v0 = OUTLINED_FUNCTION_0_4();
  v1 = OUTLINED_FUNCTION_2_7(v0);
  *v1 = v2;
  v1[1] = sub_2691D844C;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_3_7();

  return v3();
}

uint64_t sub_2691D8038()
{
  OUTLINED_FUNCTION_61();
  v0 = OUTLINED_FUNCTION_0_4();
  v1 = OUTLINED_FUNCTION_2_7(v0);
  *v1 = v2;
  v1[1] = sub_2691D80E4;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_3_7();

  return v3();
}

uint64_t sub_2691D80E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2691D81D8()
{
  OUTLINED_FUNCTION_61();
  v0 = OUTLINED_FUNCTION_0_4();
  v1 = OUTLINED_FUNCTION_2_7(v0);
  *v1 = v2;
  v1[1] = sub_2691D844C;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_3_7();

  return v3();
}

uint64_t sub_2691D82D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2691E1374();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9810, &unk_2691E2660);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2691BACA4(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_2691E12A4();
  (*(v6 + 8))(a2, v5);
  sub_2691BAD14(a1);
  return v11;
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return swift_task_alloc();
}

uint64_t SCRestartShutdownFlow.execute()()
{
  OUTLINED_FUNCTION_34();
  v1[14] = v2;
  v1[15] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B48, &unk_2691E3588);
  OUTLINED_FUNCTION_37(v3);
  v1[16] = OUTLINED_FUNCTION_44();
  v4 = sub_2691E0CB4();
  v1[17] = v4;
  OUTLINED_FUNCTION_1(v4);
  v1[18] = v5;
  v1[19] = OUTLINED_FUNCTION_44();
  v6 = sub_2691E1394();
  v1[20] = v6;
  OUTLINED_FUNCTION_1(v6);
  v1[21] = v7;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2691D8650()
{
  v68 = v0;
  sub_2691E0EF4();
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_35();
  v1 = sub_2691E0C74();
  v2 = __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  if (v1)
  {
    if (qword_2802F9378 != -1)
    {
      v2 = OUTLINED_FUNCTION_0(&qword_2802F9378);
    }

    v3 = OUTLINED_FUNCTION_1_6(v2, qword_2802FBA28);
    v4(v3);
    v5 = sub_2691E1384();
    v6 = sub_2691E1524();
    if (OUTLINED_FUNCTION_11_1(v6))
    {
      v7 = OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_32(v7);
      OUTLINED_FUNCTION_12_0(&dword_2691B1000, v8, v9, "SCRestartShutdownFlow execute | cannot shutdown in Carplay");
      OUTLINED_FUNCTION_11_4();
    }

    v10 = *(v0 + 120);

    v11 = OUTLINED_FUNCTION_35();
    v12(v11);
    *(v10 + 16) = 7;

    sub_2691E0E14();
    sub_2691E0A74();
    swift_allocObject();
    *(v0 + 104) = sub_2691E0A64();
    sub_2691E0D34();
LABEL_7:

LABEL_35:

    OUTLINED_FUNCTION_31();

    return v66();
  }

  v13 = *(v0 + 120);
  v14 = *(v13 + 16);
  if (v14 == 4)
  {
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2802F9378);
      v13 = *(v0 + 120);
    }

    __swift_project_value_buffer(*(v0 + 160), qword_2802FBA28);
    v36 = OUTLINED_FUNCTION_15_1();
    v37(v36);

    v38 = sub_2691E1384();
    v39 = sub_2691E1524();
    v40 = OUTLINED_FUNCTION_11_1(v39);
    v41 = *(v0 + 120);
    if (v40)
    {
      v42 = swift_slowAlloc();
      *v42 = 67109120;
      *(v42 + 4) = *(v41 + 17);

      _os_log_impl(&dword_2691B1000, v38, v13, "SCRestartShutdownFlow execute | isShutdownOnly: %{BOOL}d", v42, 8u);
      OUTLINED_FUNCTION_42();
    }

    else
    {
    }

    v57 = *(v0 + 144);
    v56 = *(v0 + 152);
    v58 = *(v0 + 128);
    v59 = *(v0 + 136);
    (*(*(v0 + 168) + 8))(*(v0 + 192), *(v0 + 160));
    sub_2691D9184(40000000000000000, 0);
    sub_2691E0B94();
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    sub_2691E0C04();
    (*(v57 + 104))(v56, *MEMORY[0x277D5BC10], v59);
    v60 = *MEMORY[0x277D5B950];
    v61 = sub_2691E0BB4();
    OUTLINED_FUNCTION_27();
    (*(v62 + 104))(v58, v60, v61);
    OUTLINED_FUNCTION_29_1();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v61);
    OUTLINED_FUNCTION_14_2();
    sub_2691E0BF4();
    sub_2691E0BA4();

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
    goto LABEL_34;
  }

  if (v14 == 2)
  {
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2802F9378);
    }

    __swift_project_value_buffer(*(v0 + 160), qword_2802FBA28);
    v26 = OUTLINED_FUNCTION_15_1();
    v27(v26);
    v28 = sub_2691E1384();
    v29 = sub_2691E1524();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_51();
      *v30 = 0;
      _os_log_impl(&dword_2691B1000, v28, v29, "SCRestartShutdownFlow execute | prompting for confirmation", v30, 2u);
      OUTLINED_FUNCTION_42();
    }

    v31 = *(v0 + 200);
    v32 = *(v0 + 160);
    v33 = *(v0 + 168);
    v34 = *(v0 + 120);

    (*(v33 + 8))(v31, v32);
    *(v13 + 16) = 3;
    sub_2691E0EF4();
    v35 = *(v34 + 17);
    type metadata accessor for SCSystemCommandsYesNoStrategy();
    swift_allocObject();
    sub_2691B2D50(v67, v35);
    sub_2691E0E14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B60, &qword_2691E3C20);
    swift_allocObject();
    sub_2691DC1A8(&qword_2802F93C0, 255, type metadata accessor for SCSystemCommandsYesNoStrategy, &unk_2691E22A0);
    *(v0 + 96) = sub_2691E0AB4();
    sub_2691D6C00();

    sub_2691E0D24();

    goto LABEL_7;
  }

  if (*(v13 + 16))
  {
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2802F9378);
    }

    v43 = *(v0 + 184);
    v44 = *(v0 + 160);
    v45 = *(v0 + 168);
    v46 = __swift_project_value_buffer(v44, qword_2802FBA28);
    (*(v45 + 16))(v43, v46, v44);

    v47 = sub_2691E1384();
    v48 = sub_2691E1524();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v67[0] = v50;
      *v49 = 136315138;
      *(v0 + 224) = *(v13 + 16);
      v51 = sub_2691E13E4();
      v53 = sub_2691B98CC(v51, v52, v67);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_2691B1000, v47, v48, "SCRestartShutdownFlow execute | flow completed with state: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_42();
    }

    v54 = OUTLINED_FUNCTION_23_1();
    v55(v54);
LABEL_34:
    sub_2691E0D54();
    goto LABEL_35;
  }

  if (qword_2802F9378 != -1)
  {
    v2 = OUTLINED_FUNCTION_0(&qword_2802F9378);
  }

  v15 = OUTLINED_FUNCTION_1_6(v2, qword_2802FBA28);
  v16(v15);
  v17 = sub_2691E1384();
  v18 = sub_2691E1524();
  if (OUTLINED_FUNCTION_11_1(v18))
  {
    v19 = OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_32(v19);
    OUTLINED_FUNCTION_12_0(&dword_2691B1000, v20, v21, "SCRestartShutdownFlow execute | checking if device unlock is required");
    OUTLINED_FUNCTION_11_4();
  }

  v22 = OUTLINED_FUNCTION_35();
  v23(v22);
  v24 = swift_task_alloc();
  *(v0 + 216) = v24;
  *v24 = v0;
  v24[1] = sub_2691D8E98;

  return sub_2691DA7E4();
}

uint64_t sub_2691D8E98()
{
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2691D9060(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2691B7DC0;

  return sub_2691DB10C();
}

uint64_t SCRestartShutdownFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SCRestartShutdownFlow();
  sub_2691DC1A8(&qword_2802F9978, v2, type metadata accessor for SCRestartShutdownFlow, &protocol conformance descriptor for SCRestartShutdownFlow);
  return sub_2691E0B34();
}

uint64_t sub_2691D9184(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9BC0, &qword_2691E3DB0);
  v7 = OUTLINED_FUNCTION_37(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = sub_2691E1394();
  OUTLINED_FUNCTION_2();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_47();
  v16 = v15 - v14;
  sub_2691DBF20();
  v17 = sub_2691D94B8(0x6265722069726953, 0xEB00000000746F6FLL);
  [v17 setRebootType_];
  [v17 setSource_];
  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2802F9378);
  }

  v18 = __swift_project_value_buffer(v10, qword_2802FBA28);
  (*(v12 + 16))(v16, v18, v10);
  v19 = v17;
  v20 = sub_2691E1384();
  v21 = sub_2691E1524();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v35 = a1;
    v23 = v22;
    v24 = swift_slowAlloc();
    v36 = v3;
    v25 = a2;
    v26 = v24;
    *v23 = 138412290;
    *(v23 + 4) = v19;
    *v24 = v19;
    v27 = v19;
    _os_log_impl(&dword_2691B1000, v20, v21, "SCRestartShutdownFlow execute | submitting shutdown command with: %@", v23, 0xCu);
    sub_2691CAE08(v26, &qword_2802F9C80, &qword_2691E3DC8);
    a2 = v25;
    v3 = v36;
    OUTLINED_FUNCTION_42();
    a1 = v35;
    OUTLINED_FUNCTION_42();
  }

  (*(v12 + 8))(v16, v10);
  sub_2691E14C4();
  sub_2691E14E4();
  OUTLINED_FUNCTION_29_1();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = a1;
  v32[5] = a2;
  v32[6] = v3;
  v32[7] = v19;
  v33 = v19;

  sub_2691D9ADC(0, 0, v9, &unk_2691E3DC0, v32);

  return sub_2691CAE08(v9, &qword_2802F9BC0, &qword_2691E3DB0);
}

id sub_2691D94B8(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_2691E13C4();

  v4 = [v2 initWithReason_];

  return v4;
}

uint64_t sub_2691D952C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_2691E1394();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v9 = sub_2691E1614();
  v7[9] = v9;
  v7[10] = *(v9 - 8);
  v7[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2691D964C);
}

uint64_t sub_2691D964C()
{
  OUTLINED_FUNCTION_53();
  sub_2691E1784();
  if (sub_2691E1774())
  {
    sub_2691E1704();
    v1 = swift_task_alloc();
    v0[12] = v1;
    *v1 = v0;
    v1[1] = sub_2691D9830;
    v3 = v0[2];
    v2 = v0[3];

    return sub_2691DB86C(v3, v2, 0, 0, 1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v0[4] + 40), *(v0[4] + 64));
    v5 = OUTLINED_FUNCTION_19_1();
    v7 = v6(v5);
    if (qword_2802F9378 != -1)
    {
      v7 = OUTLINED_FUNCTION_0(&qword_2802F9378);
    }

    v8 = OUTLINED_FUNCTION_1_6(v7, qword_2802FBA28);
    v9(v8);
    v10 = sub_2691E1384();
    v11 = sub_2691E1524();
    if (OUTLINED_FUNCTION_11_1(v11))
    {
      v12 = OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_32(v12);
      OUTLINED_FUNCTION_12_0(&dword_2691B1000, v13, v14, "SCRestartShutdownFlow execute | submitted command");
      OUTLINED_FUNCTION_11_4();
    }

    v15 = OUTLINED_FUNCTION_23_1();
    v16(v15);

    OUTLINED_FUNCTION_31();

    return v17();
  }
}

uint64_t sub_2691D9830()
{
  OUTLINED_FUNCTION_53();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;

  if (v0)
  {
  }

  v4 = OUTLINED_FUNCTION_35();
  v5(v4);
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2691D99B0()
{
  OUTLINED_FUNCTION_53();
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 40), *(*(v0 + 32) + 64));
  v1 = OUTLINED_FUNCTION_19_1();
  v3 = v2(v1);
  if (qword_2802F9378 != -1)
  {
    v3 = OUTLINED_FUNCTION_0(&qword_2802F9378);
  }

  v4 = OUTLINED_FUNCTION_1_6(v3, qword_2802FBA28);
  v5(v4);
  v6 = sub_2691E1384();
  v7 = sub_2691E1524();
  if (OUTLINED_FUNCTION_11_1(v7))
  {
    v8 = OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_32(v8);
    OUTLINED_FUNCTION_12_0(&dword_2691B1000, v9, v10, "SCRestartShutdownFlow execute | submitted command");
    OUTLINED_FUNCTION_11_4();
  }

  v11 = OUTLINED_FUNCTION_23_1();
  v12(v11);

  OUTLINED_FUNCTION_31();

  return v13();
}

uint64_t sub_2691D9ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9BC0, &qword_2691E3DB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_2691DC078(a3, v24 - v10, &qword_2802F9BC0, &qword_2691E3DB0);
  v12 = sub_2691E14E4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_2691CAE08(v11, &qword_2802F9BC0, &qword_2691E3DB0);
  }

  else
  {
    sub_2691E14D4();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2691E14B4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2691E13F4() + 32;
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

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

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

uint64_t sub_2691D9D80(uint64_t a1)
{
  v118 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B48, &unk_2691E3588);
  v2 = OUTLINED_FUNCTION_37(v1);
  MEMORY[0x28223BE20](v2);
  v109 = &v101[-v3];
  sub_2691E0CB4();
  OUTLINED_FUNCTION_2();
  v106 = v5;
  v107 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_47();
  v108 = v7 - v6;
  v8 = sub_2691E0DF4();
  OUTLINED_FUNCTION_2();
  v116 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_47();
  v111 = v12 - v11;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B78, &qword_2691E39F8);
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6();
  v114 = v14;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v15);
  v17 = &v101[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9438, &qword_2691E3A00);
  v19 = OUTLINED_FUNCTION_37(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6();
  v110 = v20;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v21);
  v115 = &v101[-v22];
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v23);
  v113 = &v101[-v24];
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v25);
  v112 = &v101[-v26];
  OUTLINED_FUNCTION_13();
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v101[-v29];
  MEMORY[0x28223BE20](v28);
  v32 = &v101[-v31];
  v33 = sub_2691E0E84();
  OUTLINED_FUNCTION_2();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_47();
  v39 = v38 - v37;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B80, &qword_2691E3A08);
  OUTLINED_FUNCTION_2();
  v42 = v41;
  MEMORY[0x28223BE20](v43);
  v45 = &v101[-v44];
  (*(v42 + 16))(&v101[-v44], v118, v40);
  if ((*(v42 + 88))(v45, v40) != *MEMORY[0x277D5BC38])
  {
    *(v119 + 16) = 6;
    return (*(v42 + 8))(v45, v40);
  }

  (*(v42 + 96))(v45, v40);
  v105 = v35;
  v46 = *(v35 + 32);
  v118 = v33;
  v46(v39, v45, v33);
  sub_2691E0E74();
  v47 = *MEMORY[0x277D5BED8];
  v48 = v116;
  v104 = *(v116 + 104);
  v104(v30, v47, v8);
  OUTLINED_FUNCTION_29_1();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v8);
  v52 = *(v117 + 48);
  sub_2691DC078(v32, v17, &qword_2802F9438, &qword_2691E3A00);
  sub_2691DC078(v30, &v17[v52], &qword_2802F9438, &qword_2691E3A00);
  OUTLINED_FUNCTION_5_6(v17);
  if (v64)
  {
    OUTLINED_FUNCTION_24_1();
    sub_2691CAE08(v53, v54, v55);
    OUTLINED_FUNCTION_24_1();
    sub_2691CAE08(v56, v57, v58);
    OUTLINED_FUNCTION_5_6(&v17[v52]);
    if (v64)
    {
      sub_2691CAE08(v17, &qword_2802F9438, &qword_2691E3A00);
      v59 = v105;
LABEL_23:
      result = (*(v59 + 8))(v39, v118);
      *(v119 + 16) = 4;
      return result;
    }

    goto LABEL_11;
  }

  v103 = v32;
  v61 = v17;
  v62 = v17;
  v63 = v112;
  sub_2691DC078(v61, v112, &qword_2802F9438, &qword_2691E3A00);
  OUTLINED_FUNCTION_5_6(v62 + v52);
  if (v64)
  {
    sub_2691CAE08(v30, &qword_2802F9438, &qword_2691E3A00);
    sub_2691CAE08(v103, &qword_2802F9438, &qword_2691E3A00);
    (*(v48 + 8))(v63, v8);
    v17 = v62;
LABEL_11:
    sub_2691CAE08(v17, &qword_2802F9B78, &qword_2691E39F8);
    v59 = v105;
    goto LABEL_12;
  }

  v77 = v111;
  (*(v48 + 32))(v111, v62 + v52, v8);
  OUTLINED_FUNCTION_11_5();
  sub_2691DC1A8(v78, 255, v79, MEMORY[0x277D5BEE8]);
  v102 = sub_2691E13B4();
  v80 = *(v48 + 8);
  v80(v77, v8);
  sub_2691CAE08(v30, &qword_2802F9438, &qword_2691E3A00);
  sub_2691CAE08(v103, &qword_2802F9438, &qword_2691E3A00);
  v80(v63, v8);
  sub_2691CAE08(v62, &qword_2802F9438, &qword_2691E3A00);
  v59 = v105;
  if (v102)
  {
    goto LABEL_23;
  }

LABEL_12:
  v65 = v48;
  v66 = v113;
  v116 = v39;
  sub_2691E0E74();
  v67 = v115;
  v104(v115, *MEMORY[0x277D5BED0], v8);
  OUTLINED_FUNCTION_29_1();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v8);
  v71 = *(v117 + 48);
  v72 = v114;
  sub_2691DC078(v66, v114, &qword_2802F9438, &qword_2691E3A00);
  sub_2691DC078(v67, v72 + v71, &qword_2802F9438, &qword_2691E3A00);
  OUTLINED_FUNCTION_5_6(v72);
  v73 = v119;
  if (!v64)
  {
    v75 = v110;
    sub_2691DC078(v72, v110, &qword_2802F9438, &qword_2691E3A00);
    OUTLINED_FUNCTION_5_6(v72 + v71);
    if (!v76)
    {
      v81 = v72 + v71;
      v82 = v111;
      (*(v65 + 32))(v111, v81, v8);
      OUTLINED_FUNCTION_11_5();
      sub_2691DC1A8(v83, 255, v84, MEMORY[0x277D5BEE8]);
      LODWORD(v117) = sub_2691E13B4();
      v85 = *(v65 + 8);
      v85(v82, v8);
      OUTLINED_FUNCTION_24_1();
      sub_2691CAE08(v86, v87, v88);
      OUTLINED_FUNCTION_24_1();
      sub_2691CAE08(v89, v90, v91);
      v85(v75, v8);
      OUTLINED_FUNCTION_24_1();
      sub_2691CAE08(v92, v93, v94);
      v74 = v118;
      if (v117)
      {
        goto LABEL_25;
      }

      return (*(v59 + 8))(v116, v74);
    }

    OUTLINED_FUNCTION_22_1(v115);
    OUTLINED_FUNCTION_22_1(v66);
    (*(v65 + 8))(v75, v8);
    v74 = v118;
LABEL_20:
    sub_2691CAE08(v72, &qword_2802F9B78, &qword_2691E39F8);
    return (*(v59 + 8))(v116, v74);
  }

  OUTLINED_FUNCTION_22_1(v67);
  OUTLINED_FUNCTION_22_1(v66);
  OUTLINED_FUNCTION_5_6(v72 + v71);
  v74 = v118;
  if (!v64)
  {
    goto LABEL_20;
  }

  sub_2691CAE08(v72, &qword_2802F9438, &qword_2691E3A00);
LABEL_25:
  *(v73 + 16) = 5;
  sub_2691E0B94();
  __swift_project_boxed_opaque_existential_1(v120, v120[3]);
  sub_2691E0C04();
  (*(v106 + 104))(v108, *MEMORY[0x277D5BC08], v107);
  v95 = *MEMORY[0x277D5B8F8];
  v96 = sub_2691E0BB4();
  OUTLINED_FUNCTION_27();
  (*(v97 + 104))(v109, v95, v96);
  OUTLINED_FUNCTION_29_1();
  __swift_storeEnumTagSinglePayload(v98, v99, v100, v96);
  OUTLINED_FUNCTION_14_2();
  sub_2691E0BF4();
  sub_2691E0BA4();

  (*(v59 + 8))(v116, v74);
  return __swift_destroy_boxed_opaque_existential_0Tm(v120);
}

uint64_t sub_2691DA7E4()
{
  OUTLINED_FUNCTION_34();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_2691E1394();
  v1[5] = v3;
  OUTLINED_FUNCTION_1(v3);
  v1[6] = v4;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2691DA8A0()
{
  OUTLINED_FUNCTION_53();
  v1 = sub_2691DB014();
  if (v1)
  {
    if (qword_2802F9378 != -1)
    {
      v1 = OUTLINED_FUNCTION_0(&qword_2802F9378);
    }

    v2 = OUTLINED_FUNCTION_1_6(v1, qword_2802FBA28);
    v3(v2);
    v4 = sub_2691E1384();
    v5 = sub_2691E1524();
    if (OUTLINED_FUNCTION_11_1(v5))
    {
      v6 = OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_32(v6);
      OUTLINED_FUNCTION_12_0(&dword_2691B1000, v7, v8, "SCRestartShutdownFlow handleUnlockCheck | unlock is required, waiting for device to be unlocked");
      OUTLINED_FUNCTION_11_4();
    }

    v9 = v0[4];

    v10 = OUTLINED_FUNCTION_35();
    v12 = v11(v10);
    *(v9 + 16) = 1;
    v0[2] = (*(v9 + 24))(v12);
    sub_2691E0AC4();

    sub_2691E0D24();

    OUTLINED_FUNCTION_31();

    return v13();
  }

  else
  {
    if (qword_2802F9378 != -1)
    {
      v1 = OUTLINED_FUNCTION_0(&qword_2802F9378);
    }

    v15 = OUTLINED_FUNCTION_1_6(v1, qword_2802FBA28);
    v16(v15);
    v17 = sub_2691E1384();
    v18 = sub_2691E1524();
    if (OUTLINED_FUNCTION_11_1(v18))
    {
      v19 = OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_32(v19);
      OUTLINED_FUNCTION_12_0(&dword_2691B1000, v20, v21, "SCRestartShutdownFlow handleUnlockCheck | unlock is not required, proceeding to next flow");
      OUTLINED_FUNCTION_11_4();
    }

    v22 = v0[4];

    v23 = OUTLINED_FUNCTION_35();
    v24(v23);
    *(v22 + 16) = 2;
    v25 = swift_task_alloc();
    v0[9] = v25;
    *v25 = v0;
    v25[1] = sub_2691D5C44;

    return SCRestartShutdownFlow.execute()();
  }
}

uint64_t sub_2691DAB28(_BYTE *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B48, &unk_2691E3588);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33[-1] - v5;
  v7 = sub_2691E0CB4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2691E1394();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v33[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v33[-1] - v16;
  if (*a1 == 1)
  {
    if (qword_2802F9378 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v11, qword_2802FBA28);
    (*(v12 + 16))(v17, v18, v11);
    v19 = sub_2691E1384();
    v20 = sub_2691E1524();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v32 = a2;
      v22 = v7;
      v23 = v21;
      *v21 = 0;
      _os_log_impl(&dword_2691B1000, v19, v20, "SCRestartShutdownFlow processDeviceUnlockResult | unable to unlock device due to error", v21, 2u);
      v24 = v23;
      v7 = v22;
      a2 = v32;
      MEMORY[0x26D6335B0](v24, -1, -1);
    }

    (*(v12 + 8))(v17, v11);
    *(a2 + 16) = 7;
    sub_2691E0B94();
    __swift_project_boxed_opaque_existential_1(v33, v33[3]);
    sub_2691E0C04();
    (*(v8 + 104))(v10, *MEMORY[0x277D5BC00], v7);
    v25 = *MEMORY[0x277D5B8D0];
    v26 = sub_2691E0BB4();
    (*(*(v26 - 8) + 104))(v6, v25, v26);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v26);
    sub_2691E0BF4();
    sub_2691E0BA4();

    return __swift_destroy_boxed_opaque_existential_0Tm(v33);
  }

  else
  {
    if (qword_2802F9378 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v11, qword_2802FBA28);
    (*(v12 + 16))(v15, v28, v11);
    v29 = sub_2691E1384();
    v30 = sub_2691E1524();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2691B1000, v29, v30, "SCRestartShutdownFlow processDeviceUnlockResult | unlocked device, authenticated", v31, 2u);
      MEMORY[0x26D6335B0](v31, -1, -1);
    }

    result = (*(v12 + 8))(v15, v11);
    *(a2 + 16) = 2;
  }

  return result;
}

BOOL sub_2691DB014()
{
  v0 = sub_2691E0DE4();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_47();
  v6 = v5 - v4;
  sub_2691E0EF4();
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_2691E0DD4();
  v7 = sub_2691E0C24();
  (*(v2 + 8))(v6, v0);
  __swift_destroy_boxed_opaque_existential_0Tm(v9);
  return (v7 & 1) == 0;
}

uint64_t sub_2691DB10C()
{
  OUTLINED_FUNCTION_34();
  v0[22] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9468, &unk_2691E3650);
  OUTLINED_FUNCTION_37(v2);
  v0[23] = OUTLINED_FUNCTION_44();
  v3 = sub_2691E0DB4();
  v0[24] = v3;
  OUTLINED_FUNCTION_1(v3);
  v0[25] = v4;
  v0[26] = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2691DB1E0()
{
  OUTLINED_FUNCTION_34();
  sub_2691E0EF4();
  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  *v1 = v0;
  v1[1] = sub_2691DB280;
  v2 = *(v0 + 208);

  return MEMORY[0x2821BB3C8](v2, v0 + 16);
}

uint64_t sub_2691DB280()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v3 + 224) = v0;

  sub_2691CAE08(v3 + 16, &unk_2802F99D0, &qword_2691E2320);
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2691DB398()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 176);
  sub_2691E0EF4();
  sub_2691E0EF4();
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  sub_2691E0C34();
  v3 = sub_2691E0D84();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
  v4 = sub_2691E0F34();
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  v5 = MEMORY[0x277D5C1D8];
  v2[3] = v4;
  v2[4] = v5;
  __swift_allocate_boxed_opaque_existential_1(v2);
  sub_2691E0D14();
  sub_2691CAE08(v0 + 136, &unk_2802F99F0, &unk_2691E3010);
  sub_2691CAE08(v1, &qword_2802F9468, &unk_2691E3650);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  v6 = OUTLINED_FUNCTION_23_1();
  v7(v6);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));

  OUTLINED_FUNCTION_31();

  return v8();
}

uint64_t SCRestartShutdownFlow.deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));
  return v0;
}

uint64_t SCRestartShutdownFlow.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_2691DB5BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B7DC0;

  return SCRestartShutdownFlow.execute()();
}

uint64_t sub_2691DB658(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SCRestartShutdownFlow();

  return MEMORY[0x2821BA658](v3, a2);
}

uint64_t sub_2691DB690(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2691DB788;

  return v6(a1);
}

uint64_t sub_2691DB788()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_31();

  return v3();
}

uint64_t sub_2691DB86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_2691E1604();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_2691DB96C);
}

uint64_t sub_2691DB96C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_2691E1614();
  v5 = sub_2691DC1A8(&qword_2802F9BD0, 255, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  OUTLINED_FUNCTION_35();
  sub_2691E16E4();
  sub_2691DC1A8(&qword_2802F9BD8, 255, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_2691E1624();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_2691DBB00;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_2691DBB00()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_20();
  v3 = v2;
  v4 = *(v2 + 96);
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 120) = v0;

  v7 = OUTLINED_FUNCTION_23_1();
  v4(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v8);
  }

  else
  {

    OUTLINED_FUNCTION_31();

    return v9();
  }
}

uint64_t sub_2691DBCA0()
{
  OUTLINED_FUNCTION_34();

  OUTLINED_FUNCTION_31();

  return v0();
}

uint64_t sub_2691DBD08()
{
  OUTLINED_FUNCTION_34();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_7(v2);
  *v3 = v4;
  v3[1] = sub_2691B7DC0;

  return sub_2691D9060(v1);
}

_BYTE *storeEnumTagSinglePayload for SCRestartShutdownFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2691DBE88);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2691DBEC4()
{
  result = qword_2802F9BB8;
  if (!qword_2802F9BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9BB8);
  }

  return result;
}

unint64_t sub_2691DBF20()
{
  result = qword_2802F9BC8;
  if (!qword_2802F9BC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802F9BC8);
  }

  return result;
}

uint64_t sub_2691DBF64()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2691DBFAC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  v7 = v1[7];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_2_7(v9);
  *v10 = v11;
  v10[1] = sub_2691B7DC0;

  return sub_2691D952C(a1, v3, v4, v5, v6, v8, v7);
}

uint64_t sub_2691DC078(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_27();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2691DC0D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2691DC110()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_2(v1);

  return v4(v3);
}

uint64_t sub_2691DC1A8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2691DC344(uint64_t a1, void *a2, const char *a3, char a4, ...)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9C70, &qword_2691E3F48);
  OUTLINED_FUNCTION_2();
  v28 = v9;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_8();
  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2802F9378);
  }

  __swift_project_value_buffer(v11, qword_2802FBA28);
  v15 = OUTLINED_FUNCTION_11_6();
  v16(v15);
  v17 = a2;
  v18 = sub_2691E1384();
  v19 = sub_2691E1534();

  if (os_log_type_enabled(v18, v19))
  {
    v27 = v5;
    v20 = a3;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v17;
    *v22 = v17;
    v23 = v17;
    v24 = v20;
    v5 = v27;
    _os_log_impl(&dword_2691B1000, v18, v19, v24, v21, 0xCu);
    sub_2691DE2A4(v22, &qword_2802F9C80, &qword_2691E3DC8);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_42();
  }

  (*(v13 + 8))(v4, v11);
  v25 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9C78, &unk_2691E3F50);
  sub_2691E14F4();
  return (*(v28 + 8))(v5, v8);
}

void sub_2691DC75C(uint64_t a1, void *a2, void *a3)
{
  v60 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9C78, &unk_2691E3F50);
  OUTLINED_FUNCTION_2();
  v59 = v5;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  v8 = &v53 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9C70, &qword_2691E3F48);
  OUTLINED_FUNCTION_2();
  v11 = v10;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - v13;
  v15 = sub_2691E1394();
  OUTLINED_FUNCTION_2();
  v17 = v16;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v53 - v23;
  if (!a3)
  {
    v56 = v14;
    v57 = v11;
    v53 = v9;
    v54 = v8;
    v36 = v60;
    v55 = v4;
    if (qword_2802F9378 != -1)
    {
      v22 = OUTLINED_FUNCTION_0(&qword_2802F9378);
    }

    OUTLINED_FUNCTION_15_2(v22, qword_2802FBA28);
    v37 = v17;
    (*(v17 + 16))(v21);
    v38 = v36;
    v39 = v36;
    v40 = sub_2691E1384();
    v41 = sub_2691E1534();

    v42 = os_log_type_enabled(v40, v41);
    v43 = v56;
    v44 = v57;
    if (v42)
    {
      v58 = v15;
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      if (!v36)
      {
LABEL_16:
        __break(1u);
        return;
      }

      v47 = v46;
      *(v45 + 4) = v39;
      *v46 = v38;
      v48 = v39;
      _os_log_impl(&dword_2691B1000, v40, v41, "SCAppIntentConnectionDelegate finished with result: %@", v45, 0xCu);
      sub_2691DE2A4(v47, &qword_2802F9C80, &qword_2691E3DC8);
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_42();
      v15 = v58;
    }

    (*(v37 + 8))(v21, v15);
    v49 = v59;
    v50 = v54;
    v51 = v55;
    (*(v59 + 16))(v54, v61 + OBJC_IVAR____TtC25SiriSystemCommandsIntents29SCAppIntentConnectionDelegate_continuation, v55);
    if (v38)
    {
      v63 = v38;
      v64 = 5;
      v52 = v39;
      sub_2691E14F4();
      (*(v49 + 8))(v50, v51);
      (*(v44 + 8))(v43, v53);
      v63 = 0;
      sub_2691E1504();
      return;
    }

    __break(1u);
    goto LABEL_16;
  }

  v25 = MEMORY[0x26D633490](a3);
  if (qword_2802F9378 != -1)
  {
    v25 = OUTLINED_FUNCTION_0(&qword_2802F9378);
  }

  OUTLINED_FUNCTION_15_2(v25, qword_2802FBA28);
  v26 = v17;
  v27 = OUTLINED_FUNCTION_11_6();
  v28(v27);
  MEMORY[0x26D633490](a3);
  v29 = sub_2691E1384();
  v30 = sub_2691E1534();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v62 = a3;
    v63 = v32;
    *v31 = 136315138;
    MEMORY[0x26D633490](a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F97D0, qword_2691E2360);
    v33 = sub_2691E13E4();
    v58 = v15;
    v35 = sub_2691B98CC(v33, v34, &v63);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_2691B1000, v29, v30, "SCAppIntentConnectionDelegate finished with error: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_42();

    (*(v26 + 8))(v24, v58);
  }

  else
  {

    (*(v26 + 8))(v24, v15);
  }

  v63 = a3;
  MEMORY[0x26D633490](a3);
  sub_2691E1504();
}

uint64_t sub_2691DCD2C()
{
  OUTLINED_FUNCTION_34();
  v1 = sub_2691E1394();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2691DCDE4);
}

uint64_t sub_2691DCDE4()
{
  OUTLINED_FUNCTION_61();
  if (qword_2802F9378 != -1)
  {
    v1 = OUTLINED_FUNCTION_0(&qword_2802F9378);
  }

  v3 = v0[3];
  v2 = v0[4];
  OUTLINED_FUNCTION_15_2(v1, qword_2802FBA28);
  (*(v3 + 16))(v2);
  v4 = sub_2691E1384();
  v5 = sub_2691E1534();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2691B1000, v4, v5, "SCAppIntentConnectionDelegate executorEnvironmentForViewSnippet", v6, 2u);
    OUTLINED_FUNCTION_42();
  }

  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];

  (*(v8 + 8))(v7, v9);

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_2691DCFA4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_2691DD05C;

  return sub_2691DCD2C();
}

uint64_t sub_2691DD05C()
{
  OUTLINED_FUNCTION_61();
  v2 = v1;
  OUTLINED_FUNCTION_20();
  v4 = v3[4];
  v5 = v3[3];
  v6 = v3[2];
  v7 = *v0;
  OUTLINED_FUNCTION_8();
  *v8 = v7;

  (v4)[2](v4, v2);
  _Block_release(v4);

  OUTLINED_FUNCTION_31();

  return v9();
}

uint64_t sub_2691DD1AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9BC0, &qword_2691E3DB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_2691E14E4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_2691E3F80;
  v9[5] = v8;
  sub_2691DDC0C(0, 0, v6, &unk_2691E3F90, v9);
}

uint64_t sub_2691DD2BC()
{
  v1 = sub_2691E1394();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_8();
  if (qword_2802F9378 != -1)
  {
    v5 = OUTLINED_FUNCTION_0(&qword_2802F9378);
  }

  OUTLINED_FUNCTION_15_2(v5, qword_2802FBA28);
  v6 = OUTLINED_FUNCTION_11_6();
  v7(v6);
  v8 = sub_2691E1384();
  v9 = sub_2691E1534();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2691B1000, v8, v9, "SCAppIntentConnectionDelegate shouldRunShowOutputAction return false", v10, 2u);
    OUTLINED_FUNCTION_42();
  }

  (*(v3 + 8))(v0, v1);
  return 0;
}

uint64_t sub_2691DD464(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9C70, &qword_2691E3F48);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_8();
  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2802F9378);
  }

  __swift_project_value_buffer(v9, qword_2802FBA28);
  v13 = OUTLINED_FUNCTION_11_6();
  v14(v13);
  v15 = sub_2691E1384();
  v16 = sub_2691E1534();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2691B1000, v15, v16, "SCAppIntentConnectionDelegate needsContinueInAppWith request", v17, 2u);
    OUTLINED_FUNCTION_42();
  }

  (*(v11 + 8))(v2, v9);
  v18 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9C78, &unk_2691E3F50);
  sub_2691E14F4();
  return (*(v7 + 8))(v3, v5);
}

id sub_2691DD768()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SCAppIntentConnectionDelegate(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SCAppIntentConnectionDelegate(uint64_t a1)
{
  result = qword_2802F9C50;
  if (!qword_2802F9C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2691DD870(uint64_t a1)
{
  sub_2691DD90C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2691DD90C(uint64_t a1)
{
  if (!qword_2802F9C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802F97D0, qword_2691E2360);
    v1 = sub_2691E1514();
    if (!v2)
    {
      atomic_store(v1, &qword_2802F9C60);
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2691DD9A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 9))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2691DD9E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_2691DDA3C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2691B8324;

  return v6();
}

uint64_t sub_2691DDB24(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2691B7DC0;

  return v7();
}

uint64_t sub_2691DDC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9BC0, &qword_2691E3DB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  sub_2691DE234(a3, v22 - v10);
  v12 = sub_2691E14E4();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_2691DE2A4(v11, &qword_2802F9BC0, &qword_2691E3DB0);
  }

  else
  {
    sub_2691E14D4();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_2691E14B4();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_2691E13F4() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_2691DE2A4(a3, &qword_2802F9BC0, &qword_2691E3DB0);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2691DE2A4(a3, &qword_2802F9BC0, &qword_2691E3DB0);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

void sub_2691DDF00(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_2691DDF74()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2691DDFBC()
{
  OUTLINED_FUNCTION_61();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2691B7DC0;

  return sub_2691DCFA4(v2, v3, v4);
}

uint64_t sub_2691DE06C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2691B8324;

  return sub_2691DDA3C(v2, v3, v4);
}

uint64_t objectdestroy_8Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2691DE170(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_2_7(v6);
  *v7 = v8;
  v7[1] = sub_2691B8324;

  return sub_2691DDB24(a1, v3, v4, v5);
}

uint64_t sub_2691DE234(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9BC0, &qword_2691E3DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2691DE2A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_12_4();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2691DE2F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2691DE330()
{
  OUTLINED_FUNCTION_61();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_2(v1);

  return v4(v3);
}

uint64_t sub_2691DE3C4()
{
  OUTLINED_FUNCTION_61();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_2(v1);

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_14_3()
{

  return sub_2691E1394();
}

uint64_t SCStopScreenRecordingFlow.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t SCStopScreenRecordingFlow.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t SCStopScreenRecordingFlow.execute()()
{
  OUTLINED_FUNCTION_34();
  v1[32] = v2;
  v1[33] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9B48, &unk_2691E3588);
  OUTLINED_FUNCTION_37(v3);
  v1[34] = OUTLINED_FUNCTION_44();
  v4 = sub_2691E0CB4();
  v1[35] = v4;
  OUTLINED_FUNCTION_1(v4);
  v1[36] = v5;
  v1[37] = OUTLINED_FUNCTION_44();
  v6 = sub_2691E1394();
  v1[38] = v6;
  OUTLINED_FUNCTION_1(v6);
  v1[39] = v7;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2691DE664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_26_1();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  sub_2691E0EF4();
  __swift_project_boxed_opaque_existential_1((v28 + 16), *(v28 + 40));
  OUTLINED_FUNCTION_35();
  v31 = sub_2691E0C74();
  __swift_destroy_boxed_opaque_existential_0Tm((v28 + 16));
  if (v31)
  {
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2802F9378);
    }

    __swift_project_value_buffer(*(v28 + 304), qword_2802FBA28);
    v32 = OUTLINED_FUNCTION_9_1();
    v33(v32);
    v34 = sub_2691E1384();
    v35 = sub_2691E1524();
    if (os_log_type_enabled(v34, v35))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_12_0(&dword_2691B1000, v36, v37, "SCStopScreenRecordingFlow execute | cannot stop recording in Carplay");
      OUTLINED_FUNCTION_42();
    }

    v38 = *(v28 + 264);

    v39 = OUTLINED_FUNCTION_35();
    v40(v39);
    *(v38 + 16) = 2;

    sub_2691E0E14();
    v41 = sub_2691E0A74();
    v42 = OUTLINED_FUNCTION_23_2(v41);
    *(v28 + 248) = OUTLINED_FUNCTION_22_2(v42, v43, v44, v45);
LABEL_13:
    sub_2691E0D34();

LABEL_14:
    OUTLINED_FUNCTION_10_3();

    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_23_0();

    return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  sub_2691E0EF4();
  __swift_project_boxed_opaque_existential_1((v28 + 56), *(v28 + 80));
  OUTLINED_FUNCTION_35();
  v46 = sub_2691E0C64();
  __swift_destroy_boxed_opaque_existential_0Tm((v28 + 56));
  if (v46)
  {
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2802F9378);
    }

    __swift_project_value_buffer(*(v28 + 304), qword_2802FBA28);
    v47 = OUTLINED_FUNCTION_9_1();
    v48(v47);
    v49 = sub_2691E1384();
    v50 = sub_2691E1524();
    if (os_log_type_enabled(v49, v50))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_12_0(&dword_2691B1000, v51, v52, "SCStopScreenRecordingFlow execute | cannot stop recording on watchOS");
      OUTLINED_FUNCTION_42();
    }

    v53 = *(v28 + 264);

    v54 = OUTLINED_FUNCTION_35();
    v55(v54);
    *(v53 + 16) = 2;

    sub_2691E0E14();
    v56 = sub_2691E0A74();
    v57 = OUTLINED_FUNCTION_23_2(v56);
    *(v28 + 240) = OUTLINED_FUNCTION_22_2(v57, v58, v59, v60);
    goto LABEL_13;
  }

  v70 = *(v28 + 264);
  if (*(v70 + 16))
  {
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2802F9378);
    }

    v71 = *(v28 + 344);
    v72 = *(v28 + 304);
    v73 = *(v28 + 312);
    v74 = __swift_project_value_buffer(v72, qword_2802FBA28);
    (*(v73 + 16))(v71, v74, v72);

    v75 = sub_2691E1384();
    LOBYTE(v73) = sub_2691E1524();

    if (os_log_type_enabled(v75, v73))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      a13 = v77;
      *v76 = 136315138;
      *(v28 + 416) = *(v70 + 16);
      v78 = sub_2691E13E4();
      v80 = sub_2691B98CC(v78, v79, &a13);

      *(v76 + 4) = v80;
      OUTLINED_FUNCTION_11_3(&dword_2691B1000, v81, v82, "SCStopScreenRecordingFlow execute | flow completed with state: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v77);
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_42();
    }

    v83 = OUTLINED_FUNCTION_35();
    v84(v83);
    sub_2691E0D54();
    goto LABEL_14;
  }

  v85 = [objc_allocWithZone(MEMORY[0x277D47270]) init];
  *(v28 + 360) = v85;
  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2802F9378);
  }

  v86 = *(v28 + 352);
  v87 = *(v28 + 304);
  v88 = *(v28 + 312);
  v89 = __swift_project_value_buffer(v87, qword_2802FBA28);
  *(v28 + 368) = v89;
  v90 = *(v88 + 16);
  *(v28 + 376) = v90;
  *(v28 + 384) = (v88 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v90(v86, v89, v87);
  v91 = v85;
  v92 = sub_2691E1384();
  v93 = sub_2691E1524();

  v94 = os_log_type_enabled(v92, v93);
  v95 = *(v28 + 352);
  v97 = *(v28 + 304);
  v96 = *(v28 + 312);
  if (v94)
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    a13 = v99;
    *v98 = 136315138;
    v100 = v91;
    v101 = [v100 description];
    v113 = v97;
    v114 = v95;
    v102 = sub_2691E13D4();
    v104 = v103;

    v105 = sub_2691B98CC(v102, v104, &a13);

    *(v98 + 4) = v105;
    _os_log_impl(&dword_2691B1000, v92, v93, "SCStopScreenRecordingFlow execute | submitting command: %s", v98, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v99);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_42();

    v106 = *(v96 + 8);
    v106(v114, v113);
  }

  else
  {

    v106 = *(v96 + 8);
    v106(v95, v97);
  }

  *(v28 + 392) = v106;
  sub_2691E0C14();
  __swift_project_boxed_opaque_existential_1((v28 + 96), *(v28 + 120));
  v107 = swift_task_alloc();
  *(v28 + 400) = v107;
  sub_2691D102C();
  *v107 = v28;
  v107[1] = sub_2691DED40;
  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x2821BB6A0](v108, v109, v110, v111);
}

uint64_t sub_2691DED40()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_2_2();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v8 + 408) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2691DEE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_26_1();
  v29 = v28[36];
  v30 = v28[37];
  v31 = v28[34];
  v32 = v28[35];
  v46 = v28[33];
  v47 = v28[32];
  v48 = v28[45];
  __swift_destroy_boxed_opaque_existential_0Tm(v28 + 12);
  sub_2691E0B94();
  __swift_project_boxed_opaque_existential_1(v28 + 22, v28[25]);
  sub_2691E0C04();
  (*(v29 + 104))(v30, *MEMORY[0x277D5BC10], v32);
  v33 = *MEMORY[0x277D5B950];
  v34 = sub_2691E0BB4();
  OUTLINED_FUNCTION_27();
  (*(v35 + 104))(v31, v33, v34);
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v34);
  sub_2691E0BF4();
  sub_2691E0BA4();

  __swift_destroy_boxed_opaque_existential_0Tm(v28 + 22);

  sub_2691E0E14();
  v36 = sub_2691E0A74();
  OUTLINED_FUNCTION_23_2(v36);
  v28[29] = sub_2691E0A64();
  sub_2691E0D34();

  OUTLINED_FUNCTION_10_3();

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_23_0();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, v46, v47, v48, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2691DF070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_26_1();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  v31 = *(v28 + 408);
  v32 = *(v28 + 376);
  v33 = *(v28 + 368);
  v34 = *(v28 + 320);
  v35 = *(v28 + 304);

  __swift_destroy_boxed_opaque_existential_0Tm((v28 + 96));
  v32(v34, v33, v35);
  MEMORY[0x26D633490](v31);
  v36 = sub_2691E1384();
  LOBYTE(v35) = sub_2691E1544();

  if (os_log_type_enabled(v36, v35))
  {
    v37 = *(v28 + 408);
    v71 = *(v28 + 392);
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    a13 = v39;
    *v38 = 136315138;
    *(v28 + 224) = v37;
    MEMORY[0x26D633490](v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F97D0, qword_2691E2360);
    v40 = sub_2691E13E4();
    v42 = sub_2691B98CC(v40, v41, &a13);

    *(v38 + 4) = v42;
    OUTLINED_FUNCTION_11_3(&dword_2691B1000, v43, v44, "SCStopScreenRecordingFlow execute | unable to stop recording: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_42();

    v45 = OUTLINED_FUNCTION_35();
    v71(v45);
  }

  else
  {
    v46 = *(v28 + 392);

    v47 = OUTLINED_FUNCTION_35();
    v46(v47);
  }

  v48 = *(v28 + 408);
  v50 = *(v28 + 288);
  v49 = *(v28 + 296);
  v52 = *(v28 + 272);
  v51 = *(v28 + 280);
  v72 = *(v28 + 256);
  *(*(v28 + 264) + 16) = 2;
  sub_2691E0B94();
  v70 = *(v28 + 168);
  v69 = __swift_project_boxed_opaque_existential_1((v28 + 136), *(v28 + 160));
  sub_2691E0C04();
  (*(v50 + 104))(v49, *MEMORY[0x277D5BC00], v51);
  v53 = *MEMORY[0x277D5B8D0];
  v54 = sub_2691E0BB4();
  OUTLINED_FUNCTION_27();
  (*(v55 + 104))(v52, v53, v54);
  __swift_storeEnumTagSinglePayload(v52, 0, 1, v54);
  *(swift_allocObject() + 16) = v48;
  MEMORY[0x26D633490](v48);
  sub_2691E0BF4();
  sub_2691E0BA4();

  __swift_destroy_boxed_opaque_existential_0Tm((v28 + 136));

  sub_2691E0E14();
  sub_2691E0A74();
  v56 = swift_allocObject();
  *(v28 + 216) = OUTLINED_FUNCTION_22_2(v56, v57, v58, v59);
  sub_2691E0D34();

  OUTLINED_FUNCTION_10_3();

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_23_0();

  return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, v69, v70, v72, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2691DF41C(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2691B8324;

  return sub_2691DF6D8();
}

uint64_t sub_2691DF4B4(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2691B7DC0;

  return sub_2691DF6D8();
}

uint64_t sub_2691DF54C(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2691B8324;

  return sub_2691DFF00();
}

uint64_t sub_2691DF5E4(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2691B8324;

  return sub_2691DFABC();
}

uint64_t SCStopScreenRecordingFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SCStopScreenRecordingFlow();
  sub_2691E06C0();
  return sub_2691E0B34();
}

uint64_t sub_2691DF6D8()
{
  OUTLINED_FUNCTION_34();
  v0[22] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9468, &unk_2691E3650);
  OUTLINED_FUNCTION_37(v2);
  v0[23] = OUTLINED_FUNCTION_44();
  v3 = sub_2691E0DB4();
  v0[24] = v3;
  OUTLINED_FUNCTION_1(v3);
  v0[25] = v4;
  v0[26] = OUTLINED_FUNCTION_44();
  v5 = OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2691DF7A8()
{
  OUTLINED_FUNCTION_34();
  sub_2691E0EF4();
  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  *v1 = v0;
  v1[1] = sub_2691DF848;
  v2 = *(v0 + 208);

  return MEMORY[0x2821BB3C8](v2, v0 + 16);
}

uint64_t sub_2691DF848()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 224) = v0;

  sub_2691CAE08(v3 + 16, &unk_2802F99D0, &qword_2691E2320);
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2691DF95C()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = *(v0 + 176);
  sub_2691E0EF4();
  sub_2691E0EF4();
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  sub_2691E0C34();
  v6 = sub_2691E0D84();
  OUTLINED_FUNCTION_16_0(v6);
  *&v7 = OUTLINED_FUNCTION_17_1();
  *(v0 + 136) = v7;
  v8 = MEMORY[0x277D5C1D8];
  v5[3] = v9;
  v5[4] = v8;
  __swift_allocate_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_2_8();
  sub_2691E0D14();
  sub_2691CAE08(v0 + 136, &unk_2802F99F0, &unk_2691E3010);
  sub_2691CAE08(v3, &qword_2802F9468, &unk_2691E3650);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  (*(v2 + 8))(v1, v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));

  OUTLINED_FUNCTION_31();

  return v10();
}

uint64_t sub_2691DFABC()
{
  OUTLINED_FUNCTION_34();
  v0[22] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9468, &unk_2691E3650);
  OUTLINED_FUNCTION_37(v2);
  v0[23] = OUTLINED_FUNCTION_44();
  v3 = sub_2691E0DB4();
  v0[24] = v3;
  OUTLINED_FUNCTION_1(v3);
  v0[25] = v4;
  v0[26] = OUTLINED_FUNCTION_44();
  v5 = sub_2691E1374();
  OUTLINED_FUNCTION_37(v5);
  v0[27] = OUTLINED_FUNCTION_44();
  v6 = OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2691DFBAC()
{
  type metadata accessor for ScreenRecordingCATs(0);
  sub_2691E1364();
  sub_2691E1294();
  sub_2691E0EF4();
  sub_2691E1274();
  sub_2691CAE08(v0 + 16, &unk_2802F99D0, &qword_2691E2320);
  sub_2691E1284();

  *(v0 + 224) = sub_2691E12C4();
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_2691DFCC0;

  return sub_2691D8038();
}

uint64_t sub_2691DFCC0()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_2_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 240) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2691DFDBC()
{
  OUTLINED_FUNCTION_19_2();
  sub_2691E0EF4();
  OUTLINED_FUNCTION_24_2();
  v6 = sub_2691E0D84();
  OUTLINED_FUNCTION_16_0(v6);
  *&v7 = OUTLINED_FUNCTION_17_1();
  *(v2 + 136) = v7;
  v8 = MEMORY[0x277D5C1D8];
  v5[3] = v9;
  v5[4] = v8;
  __swift_allocate_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_2_8();
  sub_2691E0D14();

  sub_2691CAE08(v2 + 136, &unk_2802F99F0, &unk_2691E3010);
  sub_2691CAE08(v0, &qword_2802F9468, &unk_2691E3650);
  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));
  (*(v3 + 8))(v1, v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 96));

  OUTLINED_FUNCTION_31();

  return v10();
}

uint64_t sub_2691DFF00()
{
  OUTLINED_FUNCTION_34();
  v0[22] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9468, &unk_2691E3650);
  OUTLINED_FUNCTION_37(v2);
  v0[23] = OUTLINED_FUNCTION_44();
  v3 = sub_2691E0DB4();
  v0[24] = v3;
  OUTLINED_FUNCTION_1(v3);
  v0[25] = v4;
  v0[26] = OUTLINED_FUNCTION_44();
  v5 = sub_2691E1374();
  OUTLINED_FUNCTION_37(v5);
  v0[27] = OUTLINED_FUNCTION_44();
  v6 = OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2691DFFF0()
{
  type metadata accessor for ScreenRecordingCATs(0);
  sub_2691E1364();
  sub_2691E1294();
  sub_2691E0EF4();
  sub_2691E1274();
  sub_2691CAE08(v0 + 16, &unk_2802F99D0, &qword_2691E2320);
  sub_2691E1284();

  *(v0 + 224) = sub_2691E12C4();
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_2691E0104;

  return sub_2691D81D8();
}

uint64_t sub_2691E0104()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_2_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 240) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2691E0200()
{
  OUTLINED_FUNCTION_19_2();
  sub_2691E0EF4();
  OUTLINED_FUNCTION_24_2();
  v6 = sub_2691E0D84();
  OUTLINED_FUNCTION_16_0(v6);
  *&v7 = OUTLINED_FUNCTION_17_1();
  *(v2 + 136) = v7;
  v8 = MEMORY[0x277D5C1D8];
  v5[3] = v9;
  v5[4] = v8;
  __swift_allocate_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_2_8();
  sub_2691E0D04();

  sub_2691CAE08(v2 + 136, &unk_2802F99F0, &unk_2691E3010);
  sub_2691CAE08(v0, &qword_2802F9468, &unk_2691E3650);
  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));
  (*(v3 + 8))(v1, v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 96));

  OUTLINED_FUNCTION_31();

  return v10();
}

uint64_t sub_2691E0380()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B7DC0;

  return SCStopScreenRecordingFlow.execute()();
}

uint64_t sub_2691E041C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SCStopScreenRecordingFlow();

  return MEMORY[0x2821BA658](v3, a2);
}

uint64_t sub_2691E0454()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2691E048C()
{
  OUTLINED_FUNCTION_34();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_1(v1);

  return sub_2691DF5E4(v3);
}

uint64_t sub_2691E0510()
{
  OUTLINED_FUNCTION_34();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_1(v1);

  return sub_2691DF54C(v3);
}

uint64_t sub_2691E0594()
{
  OUTLINED_FUNCTION_34();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_1(v1);

  return sub_2691DF4B4(v3);
}

uint64_t sub_2691E0618()
{
  OUTLINED_FUNCTION_34();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_1(v1);

  return sub_2691DF41C(v3);
}

unint64_t sub_2691E06C0()
{
  result = qword_2802F9988;
  if (!qword_2802F9988)
  {
    type metadata accessor for SCStopScreenRecordingFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9988);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SCStopScreenRecordingFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2691E07E0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2691E081C()
{
  result = qword_2802F9C88;
  if (!qword_2802F9C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9C88);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_3()
{
}

double OUTLINED_FUNCTION_17_1()
{
  result = 0.0;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  return result;
}

void *OUTLINED_FUNCTION_19_2()
{

  return sub_2691E0EF4();
}

uint64_t OUTLINED_FUNCTION_22_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return sub_2691E0A64();
}

uint64_t OUTLINED_FUNCTION_23_2(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_24_2()
{
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));

  return sub_2691E0C34();
}
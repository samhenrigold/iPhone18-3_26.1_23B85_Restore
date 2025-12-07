uint64_t sub_2312ACA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 72) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return MEMORY[0x2822009F8](sub_2312ACAAC, 0, 0);
}

uint64_t sub_2312ACAAC()
{
  OUTLINED_FUNCTION_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43450, &qword_23136C980);
  v1 = OUTLINED_FUNCTION_24_0();
  v2 = type metadata accessor for SignalGenerator.NewSuggestionResult(v1);
  OUTLINED_FUNCTION_0(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v0 + 56) = v5;
  *(v5 + 16) = xmmword_23136B670;
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 64) = v6;
  *v6 = v7;
  v6[1] = sub_2312ACBD4;
  v8 = *(v0 + 72);
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  v11 = *(v0 + 32);
  v12 = *(v0 + 16);

  return sub_2312A92F0(v5 + v4, v12, v11, v9, v10, v8);
}

uint64_t sub_2312ACBD4()
{
  OUTLINED_FUNCTION_8();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_2();
  *v3 = v2;

  v4 = *(v2 + 8);
  v5 = *(v1 + 56);

  return v4(v5);
}

uint64_t sub_2312ACCD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2313698C0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_bridgeObjectRetain_n();
  sub_231369EE0();
  sub_231369170();
  v10 = sub_2313698A0();
  v11 = sub_23136A390();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = v6;
    v13 = v12;
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315394;
    v15 = sub_2312ACF1C(a1, a2, a3);
    v17 = sub_2311CFD58(v15, v16, &v23);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = sub_2312AD434(a1);
    v20 = sub_2311CFD58(v18, v19, &v23);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_2311CB000, v10, v11, "%s\n\n %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23192B930](v14, -1, -1);
    MEMORY[0x23192B930](v13, -1, -1);

    swift_bridgeObjectRelease_n();

    return (*(v7 + 8))(v9, v22);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_2312ACF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v45 = a3;
  v43 = sub_231367E50();
  v48 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for SignalGenerator.NewSuggestionResult(0);
  v6 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  v14 = 0;
  v15 = *(a1 + 16);
  v16 = MEMORY[0x277D84F90];
  while (v15 != v14)
  {
    v17 = v5;
    v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v19 = *(v6 + 72);
    sub_2312AFA7C(a1 + v18 + v19 * v14, v13);
    if (*(*v13 + 16))
    {
      sub_2312AFA18(v13, v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50[0] = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2311F5F8C();
        v16 = v50[0];
      }

      v21 = *(v16 + 16);
      v22 = v21 + 1;
      if (v21 >= *(v16 + 24) >> 1)
      {
        v41 = *(v16 + 16);
        v42 = v21 + 1;
        sub_2311F5F8C();
        v21 = v41;
        v22 = v42;
        v16 = v50[0];
      }

      ++v14;
      *(v16 + 16) = v22;
      sub_2312AFA18(v10, v16 + v18 + v21 * v19);
      v5 = v17;
    }

    else
    {
      sub_2312AFAD8(v13, type metadata accessor for SignalGenerator.NewSuggestionResult);
      ++v14;
      v5 = v17;
    }
  }

  v50[0] = v16;

  sub_2312A60DC(v50);

  v23 = v50[0];
  v50[0] = 0;
  v50[1] = 0xE000000000000000;
  sub_23136A650();
  MEMORY[0x23192A730](0x20736C616E676953, 0xE900000000000027);
  sub_2313692F0();
  v24 = sub_231367920();
  MEMORY[0x23192A730](v24);

  MEMORY[0x23192A730](0xD000000000000033, 0x800000023137F9C0);
  v49 = v45;
  v25 = sub_23136A8B0();
  MEMORY[0x23192A730](v25);

  MEMORY[0x23192A730](2618, 0xE200000000000000);
  v26 = *(v23 + 16);
  if (v26)
  {
    v49 = MEMORY[0x277D84F90];
    sub_2311F5F34(0, v26, 0);
    v27 = *(v6 + 80);
    v45 = v23;
    v28 = v23 + ((v27 + 32) & ~v27);
    v29 = *(v6 + 72);
    v30 = v49;
    v31 = (v48 + 16);
    v32 = v43;
    do
    {
      v33 = v46;
      sub_2312AFA7C(v28, v46);
      (*v31)(v5, v33 + *(v47 + 20), v32);
      sub_2312AFAD8(v33, type metadata accessor for SignalGenerator.NewSuggestionResult);
      v49 = v30;
      v34 = v5;
      v36 = *(v30 + 16);
      v35 = *(v30 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_2311F5F34(v35 > 1, v36 + 1, 1);
        v30 = v49;
      }

      *(v30 + 16) = v36 + 1;
      (*(v48 + 32))(v30 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v36, v34, v32);
      v28 += v29;
      --v26;
      v5 = v34;
    }

    while (v26);
  }

  v37 = sub_231367BB0();
  v39 = v38;

  MEMORY[0x23192A730](v37, v39);

  return v50[0];
}

uint64_t sub_2312AD434(uint64_t a1)
{
  v2 = sub_2313698C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v24 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SignalGenerator.NewSuggestionResult(0);
  v5 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = 0;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  while (v11 != v10)
  {
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = *(v5 + 72);
    sub_2312AFA7C(a1 + v13 + v14 * v10, v9);
    if (*(*v9 + 16))
    {
      sub_2312AFAD8(v9, type metadata accessor for SignalGenerator.NewSuggestionResult);
      ++v10;
    }

    else
    {
      sub_2312AFA18(v9, v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v12;
      v21 = v3;
      v22 = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2311F5F8C();
        v12 = v26;
      }

      v16 = *(v12 + 16);
      if (v16 >= *(v12 + 24) >> 1)
      {
        sub_2311F5F8C();
        v12 = v26;
      }

      ++v10;
      *(v12 + 16) = v16 + 1;
      sub_2312AFA18(v25, v12 + v13 + v16 * v14);
      v3 = v21;
      v2 = v22;
    }
  }

  v26 = v12;

  sub_2312A60DC(&v26);

  v17 = v24;
  sub_231369150();
  v18 = sub_231369870();

  (*(v3 + 8))(v17, v2);
  return v18;
}

uint64_t sub_2312AD760(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23136C1C0;
  v3 = type metadata accessor for SignalGenerator.NewSuggestionResult(0);
  v4 = *(v3 + 20);
  v5 = sub_231367E50();
  *(v2 + 56) = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 32));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, a1 + v4, v5);
  v7 = (a1 + *(v3 + 24));
  v8 = v7[1];
  if (v8)
  {
    v9 = *v7;
    v10 = MEMORY[0x277D837D0];
  }

  else
  {
    v9 = 0;
    v10 = 0;
    *(v2 + 80) = 0;
  }

  *(v2 + 64) = v9;
  *(v2 + 72) = v8;
  *(v2 + 88) = v10;
  sub_231369EE0();
  return v2;
}

void *sub_2312AD854()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  return v0;
}

uint64_t sub_2312AD88C()
{
  sub_2312AD854();

  return swift_deallocClassInstance();
}

uint64_t sub_2312AD8E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311DDECC;

  return sub_2312A639C();
}

uint64_t sub_2312ADA24(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23136A8A0();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E8, &qword_23136D380);
        v6 = sub_23136A230();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2312AE020(v7, v8, a1, v4);
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
    return sub_2312ADC54(0, v2, 1, a1);
  }

  return result;
}

void sub_2312ADB28(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_23136A8A0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for SignalGenerator.NewSuggestionResult(0);
        v6 = sub_23136A230();
        *(v6 + 16) = v5;
      }

      v7 = type metadata accessor for SignalGenerator.NewSuggestionResult(0);
      OUTLINED_FUNCTION_40_0(v7);
      v9[0] = v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v9[1] = v5;
      sub_2312AE7E4(v9, v10, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_2312ADDFC(0, v2, 1, a1);
  }
}

uint64_t sub_2312ADC54(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
    while (2)
    {
      v21 = a3;
      v7 = v6;
      v17 = v5;
      while (1)
      {
        sub_2311CF324(v5, &v19);
        sub_2311CF324(v5 - 40, v18);
        __swift_project_boxed_opaque_existential_1(&v19, v20);
        v8 = sub_231368320();
        v10 = v9;
        __swift_project_boxed_opaque_existential_1(v18, v18[3]);
        if (v8 == sub_231368320() && v10 == v11)
        {
          break;
        }

        v13 = sub_23136A900();

        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v19);
        if (v13)
        {
          if (!v4)
          {
            __break(1u);
            return result;
          }

          sub_2311D38A8(v5, &v19);
          v14 = *(v5 - 24);
          *v5 = *(v5 - 40);
          *(v5 + 16) = v14;
          *(v5 + 32) = *(v5 - 8);
          result = sub_2311D38A8(&v19, v5 - 40);
          v5 -= 40;
          if (!__CFADD__(v7++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v19);
LABEL_14:
      a3 = v21 + 1;
      v5 = v17 + 40;
      --v6;
      if (v21 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2312ADDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = type metadata accessor for SignalGenerator.NewSuggestionResult(0);
  MEMORY[0x28223BE20](v33);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v32 = v17;
    v26 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v30 = v19;
      v31 = a3;
      v28 = v22;
      v29 = v21;
      do
      {
        sub_2312AFA7C(v22, v16);
        sub_2312AFA7C(v19, v12);
        v23 = sub_231367E40();
        sub_2312AFAD8(v12, type metadata accessor for SignalGenerator.NewSuggestionResult);
        sub_2312AFAD8(v16, type metadata accessor for SignalGenerator.NewSuggestionResult);
        if ((v23 & 1) == 0)
        {
          break;
        }

        if (!v32)
        {
          __break(1u);
          return;
        }

        sub_2312AFA18(v22, v9);
        swift_arrayInitWithTakeFrontToBack();
        sub_2312AFA18(v9, v19);
        v19 += v20;
        v22 += v20;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v31 + 1;
      v19 = v30 + v26;
      v21 = v29 - 1;
      v22 = v28 + v26;
      if (v31 + 1 != v27)
      {
        continue;
      }

      break;
    }
  }
}

void sub_2312AE020(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    i = MEMORY[0x277D84F90];
LABEL_105:
    v109 = *a1;
    if (!*a1)
    {
      goto LABEL_147;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_107;
    }

    goto LABEL_141;
  }

  v5 = 0;
  i = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = v5;
    v8 = (v5 + 1);
    if ((v5 + 1) < v4)
    {
      v9 = *a3;
      sub_2311CF324(*a3 + 40 * v8, &v113);
      sub_2311CF324(v9 + 40 * v7, v111);
      v10 = v115;
      LODWORD(v109) = sub_2312A8654(&v113, v111);
      v115 = v10;
      if (v10)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v111);
        __swift_destroy_boxed_opaque_existential_1Tm(&v113);
LABEL_115:

        return;
      }

      v101 = i;
      __swift_destroy_boxed_opaque_existential_1Tm(v111);
      __swift_destroy_boxed_opaque_existential_1Tm(&v113);
      v11 = v9 + 40 * v7;
      v12 = v7;
      v13 = 40 * v7;
      v14 = v11 + 80;
      v103 = v12;
      v15 = v12 + 2;
      while (1)
      {
        v16 = v15;
        if (v8 + 1 >= v4)
        {
          break;
        }

        v17 = v4;
        sub_2311CF324(v14, &v113);
        sub_2311CF324(v14 - 40, v111);
        __swift_project_boxed_opaque_existential_1(&v113, v114);
        v18 = sub_231368320();
        v20 = v19;
        __swift_project_boxed_opaque_existential_1(v111, v112);
        if (v18 == sub_231368320() && v20 == v21)
        {
          v23 = 0;
        }

        else
        {
          v23 = sub_23136A900();
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v111);
        __swift_destroy_boxed_opaque_existential_1Tm(&v113);
        v14 += 40;
        ++v8;
        v15 = v16 + 1;
        v4 = v17;
        if ((v109 ^ v23))
        {
          goto LABEL_16;
        }
      }

      v8 = v4;
LABEL_16:
      if (v109)
      {
        i = v101;
        v24 = v103;
        if (v8 < v103)
        {
          goto LABEL_140;
        }

        if (v103 >= v8)
        {
          v7 = v103;
        }

        else
        {
          if (v4 >= v16)
          {
            v25 = v16;
          }

          else
          {
            v25 = v4;
          }

          v26 = 40 * v25 - 40;
          v27 = v8;
          do
          {
            if (v24 != --v27)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_145;
              }

              v29 = v8;
              v30 = v28 + v13;
              v31 = v28 + v26;
              sub_2311D38A8((v28 + v13), &v113);
              v32 = *(v31 + 32);
              v33 = *(v31 + 16);
              *v30 = *v31;
              *(v30 + 16) = v33;
              *(v30 + 32) = v32;
              sub_2311D38A8(&v113, v31);
              v8 = v29;
            }

            ++v24;
            v26 -= 40;
            v13 += 40;
          }

          while (v24 < v27);
          i = v101;
          v7 = v103;
        }
      }

      else
      {
        i = v101;
        v7 = v103;
      }
    }

    v34 = a3[1];
    if (v8 < v34)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_137;
      }

      if (v8 - v7 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v8 < v7)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23126DB78();
      i = v91;
    }

    v49 = *(i + 16);
    v50 = v49 + 1;
    v109 = v8;
    if (v49 >= *(i + 24) >> 1)
    {
      sub_23126DB78();
      i = v92;
    }

    *(i + 16) = v50;
    v51 = i + 32;
    v52 = (i + 32 + 16 * v49);
    *v52 = v7;
    v52[1] = v109;
    v108 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    if (v49)
    {
      while (1)
      {
        v53 = v50 - 1;
        v54 = (v51 + 16 * (v50 - 1));
        v55 = (i + 16 * v50);
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v56 = *(i + 32);
          v57 = *(i + 40);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_73:
          if (v59)
          {
            goto LABEL_123;
          }

          v71 = *v55;
          v70 = v55[1];
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_126;
          }

          v75 = v54[1];
          v76 = v75 - *v54;
          if (__OFSUB__(v75, *v54))
          {
            goto LABEL_129;
          }

          if (__OFADD__(v73, v76))
          {
            goto LABEL_131;
          }

          if (v73 + v76 >= v58)
          {
            if (v58 < v76)
            {
              v53 = v50 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        if (v50 < 2)
        {
          goto LABEL_125;
        }

        v78 = *v55;
        v77 = v55[1];
        v66 = __OFSUB__(v77, v78);
        v73 = v77 - v78;
        v74 = v66;
LABEL_88:
        if (v74)
        {
          goto LABEL_128;
        }

        v80 = *v54;
        v79 = v54[1];
        v66 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v66)
        {
          goto LABEL_130;
        }

        if (v81 < v73)
        {
          goto LABEL_102;
        }

LABEL_95:
        if (v53 - 1 >= v50)
        {
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*a3)
        {
          goto LABEL_143;
        }

        v85 = i;
        v86 = (v51 + 16 * (v53 - 1));
        i = *v86;
        v87 = v51 + 16 * v53;
        v88 = *(v87 + 8);
        v89 = v115;
        sub_2312AF064((*a3 + 40 * *v86), (*a3 + 40 * *v87), *a3 + 40 * v88, v108);
        v115 = v89;
        if (v89)
        {
          goto LABEL_115;
        }

        if (v88 < i)
        {
          goto LABEL_118;
        }

        v90 = *(v85 + 16);
        if (v53 > v90)
        {
          goto LABEL_119;
        }

        *v86 = i;
        v86[1] = v88;
        if (v53 >= v90)
        {
          goto LABEL_120;
        }

        v50 = v90 - 1;
        sub_2311E6448((v87 + 16), v90 - 1 - v53, (v51 + 16 * v53));
        i = v85;
        *(v85 + 16) = v90 - 1;
        if (v90 <= 2)
        {
          goto LABEL_102;
        }
      }

      v60 = v51 + 16 * v50;
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_121;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_122;
      }

      v67 = v55[1];
      v68 = v67 - *v55;
      if (__OFSUB__(v67, *v55))
      {
        goto LABEL_124;
      }

      v66 = __OFADD__(v58, v68);
      v69 = v58 + v68;
      if (v66)
      {
        goto LABEL_127;
      }

      if (v69 >= v63)
      {
        v83 = *v54;
        v82 = v54[1];
        v66 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v66)
        {
          goto LABEL_135;
        }

        if (v58 < v84)
        {
          v53 = v50 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_73;
    }

LABEL_102:
    v5 = v109;
    v4 = a3[1];
    if (v109 >= v4)
    {
      goto LABEL_105;
    }
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_138;
  }

  if (v7 + a4 >= v34)
  {
    v35 = a3[1];
  }

  else
  {
    v35 = v7 + a4;
  }

  if (v35 < v7)
  {
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    i = sub_2311E6430(i, a2, a3, a4);
LABEL_107:
    v93 = i;
    v94 = (i + 16);
    for (i = *(i + 16); i >= 2; *v94 = i)
    {
      if (!*a3)
      {
        goto LABEL_144;
      }

      v95 = (v93 + 16 * i);
      v96 = *v95;
      v97 = &v94[2 * i];
      v98 = *(v97 + 1);
      v99 = v115;
      sub_2312AF064((*a3 + 40 * *v95), (*a3 + 40 * *v97), *a3 + 40 * v98, v109);
      v115 = v99;
      if (v99)
      {
        break;
      }

      if (v98 < v96)
      {
        goto LABEL_132;
      }

      if (i - 2 >= *v94)
      {
        goto LABEL_133;
      }

      *v95 = v96;
      v95[1] = v98;
      a2 = *v94 - i;
      if (*v94 < i)
      {
        goto LABEL_134;
      }

      i = *v94 - 1;
      sub_2311E6448(v97 + 16, a2, v97);
    }

    goto LABEL_115;
  }

  if (v8 == v35)
  {
    goto LABEL_53;
  }

  v36 = v7;
  v37 = *a3;
  v38 = *a3 + 40 * v8;
  v102 = i;
  v104 = v36;
  v39 = v36 - v8;
  v106 = v35;
LABEL_40:
  v107 = v38;
  v109 = v8;
  v40 = v39;
  while (1)
  {
    sub_2311CF324(v38, &v113);
    sub_2311CF324(v38 - 40, v111);
    __swift_project_boxed_opaque_existential_1(&v113, v114);
    v41 = sub_231368320();
    v43 = v42;
    __swift_project_boxed_opaque_existential_1(v111, v112);
    if (v41 == sub_231368320() && v43 == v44)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v111);
      __swift_destroy_boxed_opaque_existential_1Tm(&v113);
LABEL_51:
      v8 = (v109 + 1);
      v38 = v107 + 40;
      --v39;
      if (v109 + 1 == v106)
      {
        v8 = v106;
        i = v102;
        v7 = v104;
        goto LABEL_53;
      }

      goto LABEL_40;
    }

    v46 = sub_23136A900();

    __swift_destroy_boxed_opaque_existential_1Tm(v111);
    __swift_destroy_boxed_opaque_existential_1Tm(&v113);
    if ((v46 & 1) == 0)
    {
      goto LABEL_51;
    }

    if (!v37)
    {
      break;
    }

    sub_2311D38A8(v38, &v113);
    v47 = *(v38 - 24);
    *v38 = *(v38 - 40);
    *(v38 + 16) = v47;
    *(v38 + 32) = *(v38 - 8);
    sub_2311D38A8(&v113, v38 - 40);
    v38 -= 40;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_51;
    }
  }

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
}

void sub_2312AE7E4(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v105 = a1;
  v9 = type metadata accessor for SignalGenerator.NewSuggestionResult(0);
  OUTLINED_FUNCTION_21();
  v114 = v10;
  MEMORY[0x28223BE20](v11);
  v109 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v118 = &v102 - v14;
  MEMORY[0x28223BE20](v15);
  v119 = &v102 - v16;
  MEMORY[0x28223BE20](v17);
  v22 = &v102 - v21;
  v116 = a3;
  v23 = a3[1];
  if (v23 < 1)
  {
    v25 = MEMORY[0x277D84F90];
LABEL_101:
    v5 = *v105;
    if (!*v105)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v97 = v25 + 16;
      v98 = *(v25 + 2);
      for (i = v25; v98 >= 2; v25 = i)
      {
        if (!*v116)
        {
          goto LABEL_139;
        }

        v99 = &v25[16 * v98];
        v100 = *v99;
        v25 = &v97[2 * v98];
        v101 = *(v25 + 1);
        sub_2312AF3C4(*v116 + *(v114 + 72) * *v99, *v116 + *(v114 + 72) * *v25, *v116 + *(v114 + 72) * v101, v5);
        if (v6)
        {
          break;
        }

        if (v101 < v100)
        {
          goto LABEL_127;
        }

        if (v98 - 2 >= *v97)
        {
          goto LABEL_128;
        }

        *v99 = v100;
        *(v99 + 1) = v101;
        v18 = *v97 - v98;
        if (*v97 < v98)
        {
          goto LABEL_129;
        }

        v98 = *v97 - 1;
        sub_2311E6448(v25 + 16, v18, v25);
        *v97 = v98;
      }

LABEL_111:

      return;
    }

LABEL_136:
    v25 = sub_2311E6430(v25, v18, v19, v20);
    goto LABEL_103;
  }

  v104 = a4;
  v24 = 0;
  v25 = MEMORY[0x277D84F90];
  v120 = v9;
  v110 = &v102 - v21;
  while (1)
  {
    v26 = v24++;
    i = v25;
    v106 = v26;
    if (v24 < v23)
    {
      v27 = *v116;
      v5 = *(v114 + 72);
      v28 = v26;
      v29 = *v116 + v5 * v24;
      v113 = v23;
      sub_2312AFA7C(v29, v22);
      sub_2312AFA7C(v27 + v5 * v28, v119);
      LODWORD(v112) = sub_231367E40();
      v30 = OUTLINED_FUNCTION_40_10();
      sub_2312AFAD8(v30, v31);
      sub_2312AFAD8(v22, type metadata accessor for SignalGenerator.NewSuggestionResult);
      v32 = v113;
      v33 = v106 + 2;
      v115 = v5;
      v25 = (v27 + v5 * (v106 + 2));
      while (1)
      {
        v34 = v33;
        if (++v24 >= v32)
        {
          break;
        }

        sub_2312AFA7C(v25, v22);
        v5 = v119;
        sub_2312AFA7C(v29, v119);
        v35 = sub_231367E40() & 1;
        sub_2312AFAD8(v5, type metadata accessor for SignalGenerator.NewSuggestionResult);
        sub_2312AFAD8(v22, type metadata accessor for SignalGenerator.NewSuggestionResult);
        v25 += v115;
        v29 += v115;
        v33 = v34 + 1;
        v32 = v113;
        if ((v112 & 1) != v35)
        {
          goto LABEL_9;
        }
      }

      v24 = v32;
LABEL_9:
      if (v112)
      {
        v26 = v106;
        if (v24 < v106)
        {
          goto LABEL_133;
        }

        if (v106 >= v24)
        {
          v25 = i;
          goto LABEL_32;
        }

        v103 = v6;
        if (v32 >= v34)
        {
          v36 = v34;
        }

        else
        {
          v36 = v32;
        }

        v37 = v115 * (v36 - 1);
        v38 = v106;
        v39 = v115 * v36;
        v40 = v106 * v115;
        v41 = v24;
        v25 = i;
        do
        {
          if (v38 != --v41)
          {
            v5 = *v116;
            if (!*v116)
            {
              goto LABEL_140;
            }

            sub_2312AFA18(v5 + v40, v109);
            v42 = v40 < v37 || v5 + v40 >= v5 + v39;
            if (v42)
            {
              OUTLINED_FUNCTION_45_5();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v40 != v37)
            {
              OUTLINED_FUNCTION_45_5();
              swift_arrayInitWithTakeBackToFront();
            }

            sub_2312AFA18(v109, v5 + v37);
            v25 = i;
          }

          ++v38;
          v37 -= v115;
          v39 -= v115;
          v40 += v115;
        }

        while (v38 < v41);
        v6 = v103;
      }

      else
      {
        v25 = i;
      }

      v26 = v106;
    }

LABEL_32:
    v43 = v116[1];
    if (v24 < v43)
    {
      if (__OFSUB__(v24, v26))
      {
        goto LABEL_132;
      }

      if (v24 - v26 < v104)
      {
        break;
      }
    }

LABEL_48:
    if (v24 < v26)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_18();
      sub_23126DB78();
      v25 = v95;
    }

    v53 = *(v25 + 2);
    v54 = v53 + 1;
    if (v53 >= *(v25 + 3) >> 1)
    {
      OUTLINED_FUNCTION_44_8();
      sub_23126DB78();
      v25 = v96;
    }

    *(v25 + 2) = v54;
    v55 = v25 + 32;
    v56 = &v25[16 * v53 + 32];
    *v56 = v106;
    *(v56 + 1) = v24;
    v115 = *v105;
    if (!v115)
    {
      goto LABEL_141;
    }

    v57 = v22;
    if (v53)
    {
      i = v25;
      while (1)
      {
        v58 = v54 - 1;
        v59 = &v55[16 * v54 - 16];
        v60 = &v25[16 * v54];
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v61 = *(v25 + 4);
          v62 = *(v25 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_69:
          if (v64)
          {
            goto LABEL_118;
          }

          v76 = *v60;
          v75 = *(v60 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_121;
          }

          v80 = *(v59 + 1);
          v81 = v80 - *v59;
          if (__OFSUB__(v80, *v59))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v78, v81))
          {
            goto LABEL_126;
          }

          if (v78 + v81 >= v63)
          {
            if (v63 < v81)
            {
              v58 = v54 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v54 < 2)
        {
          goto LABEL_120;
        }

        v83 = *v60;
        v82 = *(v60 + 1);
        v71 = __OFSUB__(v82, v83);
        v78 = v82 - v83;
        v79 = v71;
LABEL_84:
        if (v79)
        {
          goto LABEL_123;
        }

        v85 = *v59;
        v84 = *(v59 + 1);
        v71 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v71)
        {
          goto LABEL_125;
        }

        if (v86 < v78)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v58 - 1 >= v54)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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

        if (!*v116)
        {
          goto LABEL_138;
        }

        v90 = &v55[16 * v58 - 16];
        v91 = *v90;
        v92 = v55;
        v5 = v58;
        v25 = &v55[16 * v58];
        v93 = *(v25 + 1);
        sub_2312AF3C4(*v116 + *(v114 + 72) * *v90, *v116 + *(v114 + 72) * *v25, *v116 + *(v114 + 72) * v93, v115);
        if (v6)
        {
          goto LABEL_111;
        }

        if (v93 < v91)
        {
          goto LABEL_113;
        }

        v6 = *(i + 2);
        if (v5 > v6)
        {
          goto LABEL_114;
        }

        *v90 = v91;
        *(v90 + 1) = v93;
        if (v5 >= v6)
        {
          goto LABEL_115;
        }

        v54 = v6 - 1;
        sub_2311E6448(v25 + 16, v6 - 1 - v5, v25);
        v25 = i;
        *(i + 2) = v6 - 1;
        v94 = v6 > 2;
        v6 = 0;
        v57 = v110;
        v55 = v92;
        if (!v94)
        {
          goto LABEL_98;
        }
      }

      v65 = &v55[16 * v54];
      v66 = *(v65 - 8);
      v67 = *(v65 - 7);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_116;
      }

      v70 = *(v65 - 6);
      v69 = *(v65 - 5);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_117;
      }

      v72 = *(v60 + 1);
      v73 = v72 - *v60;
      if (__OFSUB__(v72, *v60))
      {
        goto LABEL_119;
      }

      v71 = __OFADD__(v63, v73);
      v74 = v63 + v73;
      if (v71)
      {
        goto LABEL_122;
      }

      if (v74 >= v68)
      {
        v88 = *v59;
        v87 = *(v59 + 1);
        v71 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v71)
        {
          goto LABEL_130;
        }

        if (v63 < v89)
        {
          v58 = v54 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v23 = v116[1];
    v22 = v57;
    if (v24 >= v23)
    {
      goto LABEL_101;
    }
  }

  v44 = v26 + v104;
  if (__OFADD__(v26, v104))
  {
    goto LABEL_134;
  }

  if (v44 >= v43)
  {
    v44 = v116[1];
  }

  if (v44 < v26)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v24 == v44)
  {
    goto LABEL_48;
  }

  v103 = v6;
  v45 = *v116;
  v46 = *(v114 + 72);
  v5 = *v116 + v46 * (v24 - 1);
  v47 = -v46;
  v48 = v26 - v24;
  v107 = v46;
  v108 = v44;
  v49 = v45 + v24 * v46;
LABEL_41:
  v115 = v24;
  v111 = v49;
  v112 = v48;
  v113 = v5;
  while (1)
  {
    sub_2312AFA7C(v49, v22);
    v50 = v119;
    sub_2312AFA7C(v5, v119);
    v51 = sub_231367E40();
    sub_2312AFAD8(v50, type metadata accessor for SignalGenerator.NewSuggestionResult);
    sub_2312AFAD8(v22, type metadata accessor for SignalGenerator.NewSuggestionResult);
    if ((v51 & 1) == 0)
    {
LABEL_46:
      v24 = v115 + 1;
      v5 = v113 + v107;
      v48 = v112 - 1;
      v49 = v111 + v107;
      if (v115 + 1 == v108)
      {
        v24 = v108;
        v6 = v103;
        v25 = i;
        v26 = v106;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v45)
    {
      break;
    }

    v52 = v118;
    sub_2312AFA18(v49, v118);
    swift_arrayInitWithTakeFrontToBack();
    sub_2312AFA18(v52, v5);
    v5 += v47;
    v49 += v47;
    v42 = __CFADD__(v48++, 1);
    if (v42)
    {
      goto LABEL_46;
    }
  }

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
}

uint64_t sub_2312AF064(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_231270E00(a1, (a2 - a1) / 40, a4);
    v10 = &v4[40 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_39;
      }

      sub_2311CF324(v6, v42);
      sub_2311CF324(v4, v40);
      __swift_project_boxed_opaque_existential_1(v42, v43);
      v12 = sub_231368320();
      v14 = v13;
      __swift_project_boxed_opaque_existential_1(v40, v41);
      v16 = v12 == sub_231368320() && v14 == v15;
      if (v16)
      {
        break;
      }

      v17 = sub_23136A900();

      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      if ((v17 & 1) == 0)
      {
        goto LABEL_16;
      }

      v18 = v6;
      v16 = v7 == v6;
      v6 += 40;
      if (!v16)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 40;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
LABEL_16:
    v18 = v4;
    v16 = v7 == v4;
    v4 += 40;
    if (v16)
    {
      goto LABEL_18;
    }

LABEL_17:
    v19 = *v18;
    v20 = *(v18 + 1);
    *(v7 + 4) = *(v18 + 4);
    *v7 = v19;
    *(v7 + 1) = v20;
    goto LABEL_18;
  }

  sub_231270E00(a2, (a3 - a2) / 40, a4);
  v21 = &v4[40 * v9];
  v44 = v4;
  v39 = v7;
LABEL_20:
  v22 = (v6 - 40);
  v5 -= 40;
  for (i = (v21 - 40); ; i -= 40)
  {
    v10 = (i + 40);
    if (i + 40 <= v4 || v6 <= v7)
    {
      break;
    }

    v25 = v6;
    sub_2311CF324(i, v42);
    sub_2311CF324(v22, v40);
    __swift_project_boxed_opaque_existential_1(v42, v43);
    v26 = sub_231368320();
    v28 = v27;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    if (v26 == sub_231368320() && v28 == v29)
    {
      v31 = 0;
    }

    else
    {
      v31 = sub_23136A900();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    if (v31)
    {
      v21 = (i + 40);
      v16 = v5 + 40 == v25;
      v6 = v22;
      v4 = v44;
      v7 = v39;
      if (!v16)
      {
        v34 = *v22;
        v35 = *(v22 + 16);
        *(v5 + 32) = *(v22 + 32);
        *v5 = v34;
        *(v5 + 16) = v35;
        v6 = v22;
      }

      goto LABEL_20;
    }

    v6 = v25;
    v7 = v39;
    if (v10 != (v5 + 40))
    {
      v32 = *i;
      v33 = *(i + 16);
      *(v5 + 32) = *(i + 32);
      *v5 = v32;
      *(v5 + 16) = v33;
    }

    v5 -= 40;
    v4 = v44;
  }

LABEL_39:
  v36 = (v10 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[40 * v36])
  {
    memmove(v6, v4, 40 * v36);
  }

  return 1;
}

void sub_2312AF3C4(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = OUTLINED_FUNCTION_24_0();
  v55 = type metadata accessor for SignalGenerator.NewSuggestionResult(v8);
  MEMORY[0x28223BE20](v55);
  v54 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v15 = a2 - v4;
  v16 = a2 - v4 == 0x8000000000000000 && v14 == -1;
  if (v16)
  {
    goto LABEL_60;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v19 = v15 / v14;
  v58 = v4;
  v57 = a4;
  v20 = v17 / v14;
  if (v15 / v14 >= v17 / v14)
  {
    sub_23126F92C(a2, v17 / v14, a4);
    v29 = a4 + v20 * v14;
    v30 = -v14;
    v31 = v29;
    v50 = v4;
    v51 = v30;
LABEL_36:
    v52 = a2 + v30;
    v53 = a2;
    v32 = a3;
    v33 = v31;
    v49 = v31;
    while (1)
    {
      if (v29 <= a4)
      {
        v58 = v53;
        v56 = v33;
        goto LABEL_58;
      }

      if (v53 <= v4)
      {
        break;
      }

      v48 = v33;
      v34 = a4;
      v35 = v32 + v30;
      v36 = v29 + v30;
      v37 = v32;
      sub_2312AFA7C(v29 + v30, v12);
      v38 = v12;
      v39 = v54;
      sub_2312AFA7C(v52, v54);
      v40 = sub_231367E40();
      v41 = v39;
      v12 = v38;
      sub_2312AFAD8(v41, type metadata accessor for SignalGenerator.NewSuggestionResult);
      sub_2312AFAD8(v38, type metadata accessor for SignalGenerator.NewSuggestionResult);
      if (v40)
      {
        v44 = v37 < v53 || v35 >= v53;
        a4 = v34;
        if (v44)
        {
          a2 = v52;
          OUTLINED_FUNCTION_25_12();
          swift_arrayInitWithTakeFrontToBack();
          a3 = v35;
          v31 = v48;
          v4 = v50;
          v30 = v51;
        }

        else
        {
          v16 = v37 == v53;
          v30 = v51;
          v45 = v52;
          a2 = v52;
          a3 = v35;
          v31 = v48;
          v4 = v50;
          if (!v16)
          {
            OUTLINED_FUNCTION_25_12();
            v31 = v46;
            swift_arrayInitWithTakeBackToFront();
            a2 = v45;
          }
        }

        goto LABEL_36;
      }

      v42 = v37 < v29 || v35 >= v29;
      a4 = v34;
      if (v42)
      {
        OUTLINED_FUNCTION_25_12();
        swift_arrayInitWithTakeFrontToBack();
        v32 = v35;
        v29 = v36;
        v33 = v36;
        v4 = v50;
        v30 = v51;
        v31 = v49;
      }

      else
      {
        v33 = v36;
        v16 = v29 == v37;
        v32 = v35;
        v29 = v36;
        v43 = v35;
        v4 = v50;
        v30 = v51;
        v31 = v49;
        if (!v16)
        {
          OUTLINED_FUNCTION_25_12();
          swift_arrayInitWithTakeBackToFront();
          v32 = v43;
          v29 = v36;
          v33 = v36;
        }
      }
    }

    v58 = v53;
    v56 = v31;
  }

  else
  {
    sub_23126F92C(v4, v15 / v14, a4);
    v53 = a4 + v19 * v14;
    v56 = v53;
    while (a4 < v53 && a2 < a3)
    {
      v22 = a3;
      sub_2312AFA7C(a2, v12);
      v23 = a2;
      v24 = v54;
      sub_2312AFA7C(a4, v54);
      v25 = sub_231367E40();
      sub_2312AFAD8(v24, type metadata accessor for SignalGenerator.NewSuggestionResult);
      sub_2312AFAD8(v12, type metadata accessor for SignalGenerator.NewSuggestionResult);
      if (v25)
      {
        a2 = v23 + v14;
        v26 = v4 < v23 || v4 >= a2;
        v27 = v23;
        if (v26)
        {
          OUTLINED_FUNCTION_25_12();
          swift_arrayInitWithTakeFrontToBack();
          a3 = v22;
        }

        else
        {
          a3 = v22;
          if (v4 != v27)
          {
            OUTLINED_FUNCTION_25_12();
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        a2 = v23;
        if (v4 < a4 || v4 >= a4 + v14)
        {
          OUTLINED_FUNCTION_67_0();
          OUTLINED_FUNCTION_25_12();
          swift_arrayInitWithTakeFrontToBack();
          a3 = v22;
        }

        else
        {
          a3 = v22;
          if (v4 != a4)
          {
            OUTLINED_FUNCTION_67_0();
            OUTLINED_FUNCTION_25_12();
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v57 = a4 + v14;
        a4 += v14;
      }

      v4 += v14;
      v58 = v4;
    }
  }

LABEL_58:
  sub_23120C4E4(&v58, &v57, &v56);
}

uint64_t sub_2312AF824@<X0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44518, &qword_231374430);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44548, &qword_231374470) + 48);
  result = sub_231361F28();
  *(a2 + v3) = result;
  return result;
}

uint64_t sub_2312AF8F8()
{
  OUTLINED_FUNCTION_16();
  v2 = *(v0 + 24);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_231204BD4;
  v6 = OUTLINED_FUNCTION_28_0();

  return sub_2312ACA80(v6, v7, v2, v8, v3, v4);
}

unint64_t sub_2312AF9B4()
{
  result = qword_27DD44558;
  if (!qword_27DD44558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD44550, &unk_231374478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44558);
  }

  return result;
}

uint64_t sub_2312AFA18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignalGenerator.NewSuggestionResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2312AFA7C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_24_0();
  v5(v4);
  OUTLINED_FUNCTION_11();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_2312AFAD8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_11();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2312AFB30()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v5 = v4;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_2311D44D4;

  return sub_2312AA33C(v5, v3, v6, v7, v8);
}

uint64_t sub_2312AFBEC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2312AFC34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_11();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2312AFCBC(uint64_t a1)
{
  result = sub_2313687E0();
  if (v2 <= 0x3F)
  {
    result = sub_2312AFD40();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2312AFD40()
{
  result = qword_280F7C960;
  if (!qword_280F7C960)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280F7C960);
  }

  return result;
}

void sub_2312AFDC4(uint64_t a1)
{
  sub_2312AFE60(319);
  if (v1 <= 0x3F)
  {
    sub_231367E50();
    if (v2 <= 0x3F)
    {
      sub_2312AFEC4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2312AFE60(uint64_t a1)
{
  if (!qword_280F7C838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD432E8, &qword_23136D380);
    v1 = sub_23136A250();
    if (!v2)
    {
      atomic_store(v1, &qword_280F7C838);
    }
  }
}

void sub_2312AFEC4()
{
  if (!qword_280F85A68)
  {
    v0 = sub_23136A4D0();
    if (!v1)
    {
      atomic_store(v0, &qword_280F85A68);
    }
  }
}

uint64_t OUTLINED_FUNCTION_50_6()
{
}

uint64_t OUTLINED_FUNCTION_51_7()
{
  *(v1 + 216) = v0;

  return sub_231367E50();
}

void sub_2312AFF9C(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  v6 = a3 + 32;
  if (v4)
  {
    while (1)
    {
      a1(&v16, v6, a2);
      if (v3)
      {

        return;
      }

      v7 = v16;
      v8 = *(v16 + 16);
      v9 = *(v5 + 16);
      if (__OFADD__(v9, v8))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v9 + v8 > *(v5 + 24) >> 1)
      {
        sub_23126E300(isUniquelyReferenced_nonNull_native);
        v5 = v11;
      }

      if (*(v7 + 16))
      {
        if ((*(v5 + 24) >> 1) - *(v5 + 16) < v8)
        {
          goto LABEL_19;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43600, &qword_23136CB40);
        swift_arrayInitWithCopy();

        if (v8)
        {
          v12 = *(v5 + 16);
          v13 = __OFADD__(v12, v8);
          v14 = v12 + v8;
          if (v13)
          {
            goto LABEL_20;
          }

          *(v5 + 16) = v14;
        }
      }

      else
      {

        if (v8)
        {
          goto LABEL_18;
        }
      }

      v6 += 40;
      if (!--v4)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }
}

uint64_t sub_2312B0108@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for OwnershipExtractorDelegate();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  a2[3] = v4;
  a2[4] = &protocol witness table for OwnershipExtractorDelegate;
  *a2 = v5;

  return sub_231369EE0();
}

void OwnershipExtractorDelegate.extract(interaction:environment:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4[2] = a1;
  v4[3] = a2;
  sub_2312AFF9C(sub_2312B024C, v4, v3);
}

uint64_t sub_2312B01D0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  result = (*(v8 + 8))(a2, a3, v7, v8);
  *a4 = result;
  return result;
}

uint64_t OwnershipExtractorDelegate.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t InteractionOwnershipExtractor.extract(interaction:environment:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435F8, &qword_231374530);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23136B670;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231367AD0();
  return v2;
}

uint64_t ValidOpenAppsOwnershipExtractor.extract(interaction:environment:)(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v2 = sub_2313683E0();
  v3 = *(v2 + 16);
  if (v3)
  {
    v14 = MEMORY[0x277D84F90];
    sub_2311F59B0(0, v3, 0);
    v4 = v14;
    v5 = sub_2313694A0();
    v6 = v2 + 40;
    do
    {
      swift_allocObject();
      sub_231369EE0();
      v7 = sub_231367790();
      v14 = v4;
      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_2311F59B0(v8 > 1, v9 + 1, 1);
        v4 = v14;
      }

      v12 = v5;
      v13 = sub_2312B0504();
      *&v11 = v7;
      *(v4 + 16) = v9 + 1;
      sub_2311E6A28(&v11, v4 + 40 * v9 + 32);
      v6 += 16;
      --v3;
    }

    while (v3);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v4;
}

unint64_t sub_2312B0504()
{
  result = qword_280F7C8D0;
  if (!qword_280F7C8D0)
  {
    sub_2313694A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7C8D0);
  }

  return result;
}

uint64_t EducationalChannelGenerator.channel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15SiriSuggestions27EducationalChannelGenerator_channel;
  sub_231369330();
  OUTLINED_FUNCTION_11();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t EducationalChannelGenerator.__allocating_init(firstUseSuggestionsEnabled:)(uint64_t a1)
{
  v1 = a1;
  v2 = swift_allocObject();
  EducationalChannelGenerator.init(firstUseSuggestionsEnabled:)(v1);
  return v2;
}

uint64_t EducationalChannelGenerator.init(firstUseSuggestionsEnabled:)(unsigned __int8 a1)
{
  v2 = a1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC15SiriSuggestions27EducationalChannelGenerator_channel;
  v5 = *MEMORY[0x277D612F8];
  sub_231369330();
  OUTLINED_FUNCTION_11();
  (*(v6 + 104))(v1 + v4, v5);
  if (v3 == 2)
  {
    v7 = sub_231367570();
    v10[3] = v7;
    v10[4] = sub_2312B281C(&qword_280F7CAC0, MEMORY[0x277D60980], MEMORY[0x277D60960]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
    (*(*(v7 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D60958], v7);
    v2 = sub_231366960();
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  *(v1 + OBJC_IVAR____TtC15SiriSuggestions27EducationalChannelGenerator_firstUseSuggestionsEnabled) = v2 & 1;
  return v1;
}

uint64_t EducationalChannelGenerator.generateCandidateSuggestions(interaction:environment:factory:)()
{
  OUTLINED_FUNCTION_8();
  v1[24] = v2;
  v1[25] = v0;
  v1[23] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  v1[26] = OUTLINED_FUNCTION_43();
  v4 = sub_2313694E0();
  v1[27] = v4;
  OUTLINED_FUNCTION_0(v4);
  v1[28] = v5;
  v1[29] = OUTLINED_FUNCTION_43();
  v6 = sub_231367E50();
  v1[30] = v6;
  OUTLINED_FUNCTION_0(v6);
  v1[31] = v7;
  v1[32] = OUTLINED_FUNCTION_43();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44560, &qword_231374670);
  v1[33] = OUTLINED_FUNCTION_43();
  v8 = sub_231367C70();
  v1[34] = v8;
  OUTLINED_FUNCTION_0(v8);
  v1[35] = v9;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v10 = sub_2313698C0();
  v1[39] = v10;
  OUTLINED_FUNCTION_0(v10);
  v1[40] = v11;
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312B0A88, 0, 0);
}

uint64_t sub_2312B0A88(uint64_t a1)
{
  v2 = MEMORY[0x277D60AC0];
  if (*(v1[25] + OBJC_IVAR____TtC15SiriSuggestions27EducationalChannelGenerator_firstUseSuggestionsEnabled) != 1)
  {
    sub_231369170();
    v34 = sub_2313698A0();
    v35 = sub_23136A3A0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2311CB000, v34, v35, "EducationalChannelGenerator: firstUseSuggestions feature flag disabled", v36, 2u);
      OUTLINED_FUNCTION_29();
    }

    v38 = v1[40];
    v37 = v1[41];
    v39 = v1[39];
    v41 = v1[35];
    v40 = v1[36];
    v42 = v1[34];
    v43 = v1[23];

    (*(v38 + 8))(v37, v39);
    __swift_project_boxed_opaque_existential_1(v43, v43[3]);
    sub_2313677D0();
    v44 = (*(v41 + 88))(v40, v42);
    v45 = v1[35];
    v46 = v1[36];
    v47 = v1[34];
    if (v44 == *v2)
    {
      (*(v45 + 96))(v1[36], v47);
      v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8) + 48);
      v49 = sub_2313681A0();
      v50 = *(v49 - 8);
      v51 = (*(v50 + 88))(v46, v49);
      v52 = *MEMORY[0x277D60DB8];
      sub_231368210();
      OUTLINED_FUNCTION_0_2();
      (*(v53 + 8))(v46 + v48);
      (*(v50 + 8))(v46, v49);
      if (v51 == v52)
      {
        v54 = v1[29];
        v56 = v1[27];
        v55 = v1[28];
        v57 = v1[26];
        OUTLINED_FUNCTION_8_19();
        *v58 = v59;
        v58[1] = 0xEB00000000706C65;
        (*(v60 + 104))();
        v1[49] = sub_231369EC0();
        (*(v55 + 104))(v54, *MEMORY[0x277D61380], v56);
        v61 = *MEMORY[0x277D60B78];
        v62 = sub_231367D80();
        OUTLINED_FUNCTION_11();
        (*(v63 + 104))(v57, v61, v62);
        OUTLINED_FUNCTION_12_16();
        v64 = swift_task_alloc();
        v1[50] = v64;
        *v64 = v1;
        v64[1] = sub_2312B1AC0;
        OUTLINED_FUNCTION_9_19(v1[32]);
        OUTLINED_FUNCTION_40();

        __asm { BR              X4 }
      }
    }

    else
    {
      (*(v45 + 8))(v1[36], v47);
    }

LABEL_33:

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_40();

    __asm { BRAA            X2, X16 }
  }

  v3 = v1[23];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v4 = sub_2313677F0();
  sub_231369170();
  v5 = sub_2313698A0();
  v6 = sub_23136A3A0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v4 & 1;
    _os_log_impl(&dword_2311CB000, v5, v6, "EducationalChannelGenerator: isFirstInvocation %{BOOL}d", v7, 8u);
    OUTLINED_FUNCTION_29();
  }

  v104 = v4;
  v8 = v1[43];
  v10 = v1[39];
  v9 = v1[40];
  v11 = v1[38];
  v12 = v1[34];
  v13 = v1[35];
  v14 = v1[23];

  v15 = *(v9 + 8);
  v1[44] = v15;
  v1[45] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v8, v10);
  __swift_project_boxed_opaque_existential_1(v14, v3[3]);
  sub_2313677D0();
  if ((*(v13 + 88))(v11, v12) != *MEMORY[0x277D60AC0])
  {
LABEL_32:
    (*(v1[35] + 8))(v1[38], v1[34]);
    goto LABEL_33;
  }

  v16 = v1[37];
  v17 = v1[34];
  v18 = v1[35];
  (*(v18 + 16))(v16, v1[38], v17);
  (*(v18 + 96))(v16, v17);
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8) + 48);
  v20 = sub_2313681A0();
  v21 = *(v20 - 8);
  v22 = (*(v21 + 88))(v16, v20);
  if (v22 != *MEMORY[0x277D60DC0])
  {
    if (v22 == *MEMORY[0x277D60DB8])
    {
      OUTLINED_FUNCTION_6_17();
      v68 = v67;
      v69 = *(v67 + 16);
      v70 = *(v67 + 24) >> 1;
      v71 = v69 + 1;
      if ((v104 & 1) == 0)
      {
        v72 = 0xEB00000000706C65;
        if (v70 > v69)
        {
LABEL_41:
          OUTLINED_FUNCTION_8_19();
          goto LABEL_42;
        }

LABEL_52:
        OUTLINED_FUNCTION_7_16();
        v68 = v101;
        goto LABEL_41;
      }

      v72 = 0xEB00000000697269;
      if (v70 <= v69)
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }

    v75 = v1[37];
    sub_231368210();
    OUTLINED_FUNCTION_0_2();
    (*(v76 + 8))(v16 + v19);
    (*(v21 + 8))(v75, v20);
    goto LABEL_32;
  }

  v23 = v1[37];
  (*(v21 + 96))(v23, v20);
  v24 = sub_231368270();
  v25 = *(v24 - 8);
  if ((*(v25 + 88))(v23, v24) != *MEMORY[0x277D60E60])
  {
    (*(v25 + 8))(v1[37], v24);
    sub_231368210();
    OUTLINED_FUNCTION_0_2();
    (*(v74 + 8))(v16 + v19);
    goto LABEL_32;
  }

  v26 = v3[3];
  v27 = v3[4];
  __swift_project_boxed_opaque_existential_1(v1[23], v26);
  MEMORY[0x231927EB0](v26, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43600, &qword_23136CB40);
  sub_231367780();
  v28 = swift_dynamicCast();
  v29 = v1[20];
  swift_allocObject();
  v30 = sub_231367790();
  if (v28 && v29)
  {
    v1[21] = v29;
    v1[22] = v30;
    sub_2312B281C(&qword_27DD44570, MEMORY[0x277D60A20], MEMORY[0x277D60A28]);
    v31 = sub_231369F60();

    if (v31)
    {
      __swift_project_boxed_opaque_existential_1(v1[23], v3[3]);
      sub_231367810();
      sub_231210B54();

      if (v1[5])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43300, &qword_23136BF00);
        if (swift_dynamicCast())
        {
          if (v1[18] == 0xD000000000000010 && 0x800000023137FB80 == v1[19])
          {

            goto LABEL_49;
          }

          v33 = sub_23136A900();

          if (v33)
          {
LABEL_49:
            OUTLINED_FUNCTION_6_17();
            v68 = v97;
            v98 = *(v97 + 16);
            v99 = *(v97 + 24) >> 1;
            v69 = v98 + 1;
            if (v99 <= v98)
            {
              sub_23126DC90();
              v68 = v102;
              v99 = *(v102 + 24) >> 1;
            }

            v72 = 0xEB00000000706C65;
            *(v68 + 16) = v69;
            v100 = v68 + 16 * v98;
            *(v100 + 32) = 0x4F6874695777656ELL;
            *(v100 + 40) = 0xE900000000000053;
            v71 = v98 + 2;
            if (v99 >= v71)
            {
              goto LABEL_41;
            }

            goto LABEL_52;
          }
        }
      }

      else
      {
        sub_2312777C0((v1 + 2), &qword_27DD432F8, &qword_23136DEE0);
      }
    }
  }

  else
  {
  }

  if (v104)
  {
    v72 = 0xEB00000000697269;
    OUTLINED_FUNCTION_6_17();
    v68 = v79;
    v69 = *(v79 + 16);
    v71 = v69 + 1;
    if (v69 >= *(v79 + 24) >> 1)
    {
LABEL_39:
      OUTLINED_FUNCTION_7_16();
      v68 = v80;
    }

LABEL_29:
    v73 = 0x536874695777656ELL;
LABEL_42:
    *(v68 + 16) = v71;
    v81 = v68 + 16 * v69;
    *(v81 + 32) = v73;
    *(v81 + 40) = v72;
    goto LABEL_44;
  }

  v68 = MEMORY[0x277D84F90];
LABEL_44:
  v1[46] = v68;
  v82 = v1[38];
  v83 = v1[34];
  v84 = v1[35];
  v85 = v1[33];
  sub_231368210();
  OUTLINED_FUNCTION_0_2();
  (*(v86 + 8))(v16 + v19);
  (*(v84 + 8))(v82, v83);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44568, &qword_231374678);
  __swift_storeEnumTagSinglePayload(v85, 1, 1, v87);

  v88 = swift_task_alloc();
  v1[47] = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E8, &qword_23136D380);
  *v88 = v1;
  v88[1] = sub_2312B1688;
  OUTLINED_FUNCTION_40();

  return MEMORY[0x2821C6B08](v89, v90, v91, v92, v93, v94, v95, v96);
}

void sub_2312B1688()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  *(v1 + 384) = v3;

  if (v0)
  {
  }

  else
  {
    sub_2312777C0(*(v2 + 264), &qword_27DD44560, &qword_231374670);

    MEMORY[0x2822009F8](sub_2312B17D8, 0, 0);
  }
}

uint64_t sub_2312B17D8(uint64_t a1)
{
  v34 = v1;
  sub_231369170();
  sub_231369EE0();
  v2 = sub_2313698A0();
  v3 = sub_23136A3A0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[48];
    v5 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    buf = v5;
    v32 = v29;
    *v5 = 136315138;
    v6 = *(v4 + 16);
    v7 = MEMORY[0x277D84F90];
    if (v6)
    {
      v28 = v3;
      v8 = v1[48];
      v33 = MEMORY[0x277D84F90];
      sub_2311F4E34(0);
      v7 = v33;
      v9 = v8 + 32;
      do
      {
        sub_2311CF324(v9, (v1 + 13));
        __swift_project_boxed_opaque_existential_1(v1 + 13, v1[16]);
        v10 = sub_231368320();
        v12 = v11;
        __swift_destroy_boxed_opaque_existential_1Tm(v1 + 13);
        v33 = v7;
        v14 = *(v7 + 16);
        v13 = *(v7 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_2311F4E34(v13 > 1);
          v7 = v33;
        }

        *(v7 + 16) = v14 + 1;
        v15 = v7 + 16 * v14;
        *(v15 + 32) = v10;
        *(v15 + 40) = v12;
        v9 += 40;
        --v6;
      }

      while (v6);
      v3 = v28;
    }

    v19 = v1[44];
    v20 = v1[42];
    v21 = v1[39];
    v22 = MEMORY[0x23192A860](v7, MEMORY[0x277D837D0]);
    v24 = v23;

    v25 = sub_2311CFD58(v22, v24, &v32);

    *(buf + 4) = v25;
    _os_log_impl(&dword_2311CB000, v2, v3, "EducationalChannelGenerator generated: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v19(v20, v21);
  }

  else
  {
    v16 = v1[44];
    v17 = v1[42];
    v18 = v1[39];

    v16(v17, v18);
  }

  bufa = v1[48];

  OUTLINED_FUNCTION_14();

  return v26(bufa);
}

uint64_t sub_2312B1AC0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v16 = v2[32];
  v5 = v2[31];
  v15 = v2[30];
  v6 = v2[29];
  v7 = v2[28];
  v8 = v2[27];
  v9 = v2[26];
  v10 = *v1;
  OUTLINED_FUNCTION_2();
  *v11 = v10;

  sub_2312777C0(v9, &qword_27DD42F18, &unk_23136B810);
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v16, v15);
  v12 = MEMORY[0x277D84F90];
  if (a1)
  {
    v12 = a1;
  }

  v18 = v12;

  v13 = v10[1];

  return v13(v18);
}

uint64_t sub_2312B1DC0(uint64_t *a1, uint64_t a2)
{
  v2[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  v2[3] = swift_task_alloc();
  v4 = sub_2313694E0();
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();
  v5 = sub_231367E50();
  v2[7] = v5;
  v2[8] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a1;
  v8 = a1[1];
  v2[9] = v6;
  v2[10] = v7;
  v2[11] = v8;

  return MEMORY[0x2822009F8](sub_2312B1F20, 0, 0);
}

uint64_t sub_2312B1F20()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];
  *v2 = v0[10];
  v2[1] = v1;
  (*(v3 + 104))();
  sub_231369EE0();
  v0[12] = sub_231369EC0();
  (*(v6 + 104))(v4, *MEMORY[0x277D61380], v5);
  v8 = *MEMORY[0x277D60B78];
  v9 = sub_231367D80();
  OUTLINED_FUNCTION_11();
  (*(v10 + 104))(v7, v8, v9);
  OUTLINED_FUNCTION_12_16();
  v14 = (*MEMORY[0x277D611F8] + MEMORY[0x277D611F8]);
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_2312B20B8;
  v12 = OUTLINED_FUNCTION_9_19(v0[9]);

  return v14(v12);
}

void sub_2312B20B8()
{
  OUTLINED_FUNCTION_12();
  v2 = v1[9];
  v3 = v1[8];
  v12 = v1[7];
  v4 = v1[6];
  v5 = v1[5];
  v6 = v1[4];
  v7 = v1[3];
  v8 = *v0;
  OUTLINED_FUNCTION_2();
  *v9 = v8;

  sub_2312777C0(v7, &qword_27DD42F18, &unk_23136B810);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v2, v12);

  OUTLINED_FUNCTION_40();

  __asm { BRAA            X2, X16 }
}

uint64_t EducationalChannelGenerator.deinit()
{
  v1 = OBJC_IVAR____TtC15SiriSuggestions27EducationalChannelGenerator_channel;
  sub_231369330();
  OUTLINED_FUNCTION_0_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t EducationalChannelGenerator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15SiriSuggestions27EducationalChannelGenerator_channel;
  sub_231369330();
  OUTLINED_FUNCTION_0_2();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t sub_2312B23E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311E6A24;

  return EducationalChannelGenerator.generateCandidateSuggestions(interaction:environment:factory:)();
}

uint64_t sub_2312B2490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = sub_2312B281C(&qword_280F7F638, type metadata accessor for EducationalChannelGenerator, &protocol conformance descriptor for EducationalChannelGenerator);
  *v9 = v4;
  v9[1] = sub_2311DDECC;

  return MEMORY[0x2821C6C08](a1, a2, a3, a4, v10);
}

uint64_t sub_2312B25E0()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_231204BD4;

  return sub_2312B1DC0(v3, v0);
}

uint64_t type metadata accessor for EducationalChannelGenerator(uint64_t a1)
{
  result = qword_280F7F620;
  if (!qword_280F7F620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2312B2758(uint64_t a1)
{
  result = sub_231369330();
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

uint64_t sub_2312B281C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_7_16()
{

  sub_23126DC90();
}

uint64_t sub_2312B2888(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_2313698C0();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312B2960, 0, 0);
}

uint64_t sub_2312B2960()
{
  v46 = v0;
  v1 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(*(v0 + 40), *(*(v0 + 40) + 24));
  v2 = sub_2313683D0();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = sub_231367820();
  if (v3[2])
  {
    v5 = v3[4];
    v4 = v3[5];
    sub_231369EE0();
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_231369150();
  sub_231369EE0();
  v6 = sub_2313698A0();
  v7 = sub_23136A3A0();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 80);
  v10 = *(v0 + 56);
  v42 = *(v0 + 48);
  v44 = v2;
  if (v8)
  {
    v11 = swift_slowAlloc();
    v41 = v9;
    v12 = swift_slowAlloc();
    v45 = v12;
    *v11 = 136315138;
    v13 = sub_231367B30();
    v14 = MEMORY[0x23192A860](v2, v13);
    v16 = sub_2311CFD58(v14, v15, &v45);

    *(v11 + 4) = v16;
    OUTLINED_FUNCTION_37_2(&dword_2311CB000, v17, v18, "Apps on-screen: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v19 = *(v10 + 8);
    v19(v41, v42);
  }

  else
  {

    v19 = *(v10 + 8);
    v19(v9, v42);
  }

  sub_231369150();
  sub_231369EE0();
  v20 = sub_2313698A0();
  v21 = sub_23136A3A0();

  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 72);
  v24 = *(v0 + 48);
  if (v22)
  {
    v43 = v19;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v45 = v26;
    *v25 = 136315138;
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    sub_231369EE0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44578, &unk_231374840);
    v27 = sub_23136A010();
    v29 = sub_2311CFD58(v27, v28, &v45);

    *(v25 + 4) = v29;
    OUTLINED_FUNCTION_37_2(&dword_2311CB000, v30, v31, "Apps Mentioned: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    OUTLINED_FUNCTION_29();
    v19 = v43;
    OUTLINED_FUNCTION_29();
  }

  v19(v23, v24);
  v32 = *(v44 + 16);

  if (v32 || v4)
  {

    v33 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_231369150();
    v36 = sub_2313698A0();
    v37 = sub_23136A390();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_2311CB000, v36, v37, "No apps are running or mentioned. Using homescreen signal", v38, 2u);
      OUTLINED_FUNCTION_29();
    }

    v39 = *(v0 + 64);
    v40 = *(v0 + 48);

    v19(v39, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D60, &qword_231370690);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_2313707C0;
    sub_2313692F0();
    *(v33 + 32) = sub_231369270();
  }

  v34 = *(v0 + 8);

  return v34(v33);
}

uint64_t sub_2312B2DC0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23120B320;

  return sub_2312B2888(a1, a2);
}

void sub_2312B2E5C()
{
  sub_2312B2EE8(qword_280F802A0, &unk_231374800);

  JUMPOUT(0x2319284B0);
}

uint64_t sub_2312B2EE8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HomeScreenSignalExtractor();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double UnionDataProvider.getRecord(key:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(v3 + 16);
  if (*(v5 + 16) && (v6 = sub_231215F6C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 32 * v6;

    sub_2311D1D6C(v8, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t UnionDataService.__allocating_init(dataServices:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t UnionDataService.createDataProvider(candidates:generationId:environment:)()
{
  OUTLINED_FUNCTION_8();
  v1[43] = v2;
  v1[44] = v0;
  v1[41] = v3;
  v1[42] = v4;
  v1[40] = v5;
  v6 = sub_2313667A0();
  v1[45] = v6;
  OUTLINED_FUNCTION_0(v6);
  v1[46] = v7;
  v1[47] = *(v8 + 64);
  v1[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44580, &qword_231374868);
  v1[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312B3118, 0, 0);
}

uint64_t sub_2312B3118()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);
  v3 = *(v0 + 368);
  v4 = *(v0 + 376);
  v5 = *(v0 + 352);
  v6 = *(v0 + 360);
  v8 = *(v0 + 336);
  v7 = *(v0 + 344);
  v9 = *(v0 + 328);
  *(v0 + 400) = sub_231369EC0();
  v10 = *(v5 + 16);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44588, &qword_231374870);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v11);
  (*(v3 + 16))(v1, v8, v6);
  sub_2311CF324(v7, v0 + 216);
  v12 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v0 + 408) = v13;
  *(v13 + 16) = v9;
  (*(v3 + 32))(v13 + v12, v1, v6);
  sub_2311D38A8((v0 + 216), v13 + ((v4 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_231369EE0();
  v14 = swift_task_alloc();
  *(v0 + 416) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F18, &qword_231370D38);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43580, &qword_23136CAC0);
  *v14 = v0;
  v14[1] = sub_2312B3324;
  v19 = *(v0 + 392);

  return MEMORY[0x2821C6B08](v10, v19, &unk_231374880, v13, v15, v16, v17, v18);
}

void sub_2312B3324()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  *(v1 + 424) = v3;

  if (v0)
  {
  }

  else
  {
    sub_2311D1F18(*(v2 + 392), &qword_27DD44580, &qword_231374868);

    MEMORY[0x2822009F8](sub_2312B347C, 0, 0);
  }
}

uint64_t sub_2312B384C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](sub_2312B3870, 0, 0);
}

uint64_t sub_2312B3870()
{
  v1 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43578, &qword_23136CAB8);
  v2 = swift_allocObject();
  v0[11] = v2;
  *(v2 + 16) = xmmword_23136B670;
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v10 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_2312B39D8;
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[8];

  return v10(v0 + 2, v8, v6, v7, v3, v4);
}

uint64_t sub_2312B39D8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_2312B3AC4, 0, 0);
}

uint64_t sub_2312B3AC4()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  *(v1 + 32) = (*(v3 + 16))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v4 = v0[1];
  v5 = v0[11];

  return v4(v5);
}

uint64_t UnionDataService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2312B3BC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311D44D4;

  return UnionDataService.createDataProvider(candidates:generationId:environment:)();
}

uint64_t sub_2312B3C88(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_231374850;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_2312B3CEC()
{
  OUTLINED_FUNCTION_24_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F40, &qword_23136B860);
  v3 = OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_57_9(v3, v4);
  OUTLINED_FUNCTION_71_4();
  if (!v5)
  {
LABEL_27:

    *v0 = v2;
    return;
  }

  v6 = 0;
  OUTLINED_FUNCTION_0_28();
  v9 = v8 & v7;
  OUTLINED_FUNCTION_41_12();
  if (!v9)
  {
LABEL_4:
    v10 = v6;
    while (1)
    {
      v6 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v0)
      {
        break;
      }

      ++v10;
      if (*(v1 + 64 + 8 * v6))
      {
        OUTLINED_FUNCTION_31_6();
        v9 = v12 & v11;
        goto LABEL_9;
      }
    }

    if (v2)
    {
      OUTLINED_FUNCTION_5_18();
      if (v21 != v22)
      {
        OUTLINED_FUNCTION_26_14(v20);
      }

      else
      {
        v23 = OUTLINED_FUNCTION_18_16();
        sub_2312B3C88(v23, v24, v1 + 64);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_34_10();
LABEL_9:
    OUTLINED_FUNCTION_49_8();
    v25 = *(v14 + 16 * v13);
    if ((v2 & 1) == 0)
    {
      sub_231369EE0();
      sub_231369EE0();
      sub_231369EE0();
    }

    sub_23136A9D0();
    sub_23136A060();
    sub_23136AA00();
    OUTLINED_FUNCTION_2_18();
    OUTLINED_FUNCTION_36_10();
    if (v15)
    {
      break;
    }

    OUTLINED_FUNCTION_52_4();
LABEL_19:
    OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_31_15(v17);
    *(v19 + 16 * v18) = v25;
    OUTLINED_FUNCTION_28_13();
    if (!v9)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v15)
    {
      if (v16)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_60_5();
    if (!v15)
    {
      OUTLINED_FUNCTION_50_0();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_2312B3EBC()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_18();
  sub_231367E10();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43270, &qword_23136BD18);
  v5 = OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_57_9(v5, v6);
  OUTLINED_FUNCTION_51_8();
  if (!v7)
  {
LABEL_28:

    OUTLINED_FUNCTION_54_8();
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v8 = 0;
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_13_16();
  if (!v3)
  {
LABEL_4:
    v9 = v8;
    while (1)
    {
      v8 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v2)
      {
        break;
      }

      OUTLINED_FUNCTION_63_6();
      if (v10)
      {
        OUTLINED_FUNCTION_31_6();
        v3 = v12 & v11;
        goto LABEL_9;
      }
    }

    if (v1)
    {
      OUTLINED_FUNCTION_5_18();
      if (v23 != v24)
      {
        OUTLINED_FUNCTION_27_12(v22);
      }

      else
      {
        v25 = OUTLINED_FUNCTION_18_16();
        sub_2312B3C88(v25, v26, v0 + 64);
      }

      *(v0 + 16) = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_14_12();
LABEL_9:
    OUTLINED_FUNCTION_21_17();
    if (v13)
    {
      v14 = OUTLINED_FUNCTION_10_20();
      v15(v14);
      OUTLINED_FUNCTION_47_7();
    }

    else
    {
      v16 = OUTLINED_FUNCTION_10_20();
      v17(v16);
      OUTLINED_FUNCTION_58_6();
    }

    v18 = sub_2312B71EC(&qword_280F7CA28, MEMORY[0x277D60C78], MEMORY[0x277D60C80]);
    OUTLINED_FUNCTION_33_11(v18);
    OUTLINED_FUNCTION_2_18();
    OUTLINED_FUNCTION_36_10();
    if (v19)
    {
      break;
    }

    OUTLINED_FUNCTION_12_17();
LABEL_20:
    OUTLINED_FUNCTION_3_24();
    OUTLINED_FUNCTION_48_7();
    v21();
    OUTLINED_FUNCTION_19_16();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v19)
    {
      if (v20)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_38_8();
    if (!v19)
    {
      OUTLINED_FUNCTION_11_19();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_2312B40EC()
{
  OUTLINED_FUNCTION_25_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44328, &qword_231374950);
  v4 = OUTLINED_FUNCTION_45_6();
  v36 = v1;
  OUTLINED_FUNCTION_81_2(v4, v5);
  OUTLINED_FUNCTION_70_5();
  if (!v6)
  {
LABEL_29:

LABEL_30:
    *v0 = v2;
    return;
  }

  v34 = v0;
  v35 = v3;
  v7 = 0;
  v8 = (v3 + 8);
  OUTLINED_FUNCTION_0_28();
  v12 = (v11 + 63) >> 6;
  v13 = v2 + 64;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      ++v16;
      if (*(v8 + 8 * v7))
      {
        OUTLINED_FUNCTION_31_6();
        v37 = v18 & v17;
        goto LABEL_9;
      }
    }

    if ((v36 & 1) == 0)
    {

      v0 = v34;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_17_12();
    v0 = v34;
    if (v30 != v31)
    {
      OUTLINED_FUNCTION_26_14(v29);
    }

    else
    {
      v32 = OUTLINED_FUNCTION_18_16();
      sub_2312B3C88(v32, v33, v8);
    }

    v3[2] = 0;
    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_53_0();
    v37 = v15;
LABEL_9:
    v19 = v14 | (v7 << 6);
    v20 = *(v3[6] + 8 * v19);
    v21 = *(v3[7] + 8 * v19);
    if ((v36 & 1) == 0)
    {

      sub_231369EE0();
    }

    sub_2313692F0();
    sub_2312B71EC(&unk_280F7C910, MEMORY[0x277D612D0], MEMORY[0x277D612D8]);
    sub_231369F30();
    OUTLINED_FUNCTION_2_18();
    OUTLINED_FUNCTION_36_10();
    if (v22)
    {
      break;
    }

    OUTLINED_FUNCTION_52_4();
LABEL_21:
    OUTLINED_FUNCTION_7_9();
    *(v13 + v26) |= v27;
    *(*(v2 + 48) + 8 * v28) = v20;
    *(*(v2 + 56) + 8 * v28) = v21;
    OUTLINED_FUNCTION_28_13();
    v3 = v35;
    if (!v37)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v22)
    {
      if (v24)
      {
        break;
      }
    }

    if (v23 == v25)
    {
      v23 = 0;
    }

    if (*(v13 + 8 * v23) != -1)
    {
      OUTLINED_FUNCTION_50_0();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_2312B43B8()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v52 = v8(0);
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v51 = &v44 - v12;
  v13 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
  v49 = v7;
  v14 = sub_23136A780();
  if (!v13[2])
  {
LABEL_30:

LABEL_31:
    *v5 = v14;
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v15 = 0;
  v16 = (v13 + 8);
  OUTLINED_FUNCTION_0_28();
  v19 = v18 & v17;
  v21 = (v20 + 63) >> 6;
  v45 = v0;
  v46 = (v10 + 16);
  v47 = v13;
  v48 = v10;
  v50 = (v10 + 32);
  if ((v18 & v17) == 0)
  {
LABEL_4:
    v23 = v15;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v15 >= v21)
      {
        break;
      }

      ++v23;
      if (*(v16 + 8 * v15))
      {
        OUTLINED_FUNCTION_31_6();
        v19 = v25 & v24;
        goto LABEL_9;
      }
    }

    if ((v49 & 1) == 0)
    {

      v5 = v45;
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_17_12();
    v5 = v45;
    if (v40 != v41)
    {
      OUTLINED_FUNCTION_27_12(v39);
    }

    else
    {
      v42 = OUTLINED_FUNCTION_18_16();
      sub_2312B3C88(v42, v43, v16);
    }

    v13[2] = 0;
    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_46_11();
LABEL_9:
    v26 = v22 | (v15 << 6);
    v27 = v13[7];
    v28 = (v13[6] + 16 * v26);
    v30 = *v28;
    v29 = v28[1];
    v31 = *(v48 + 72);
    v32 = v27 + v31 * v26;
    if (v49)
    {
      (*v50)(v51, v32, v52);
    }

    else
    {
      (*v46)(v51, v32, v52);
      sub_231369EE0();
    }

    sub_23136A9D0();
    sub_23136A060();
    sub_23136AA00();
    OUTLINED_FUNCTION_2_18();
    OUTLINED_FUNCTION_36_10();
    if (v33)
    {
      break;
    }

    OUTLINED_FUNCTION_52_4();
LABEL_22:
    OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_62_7();
    *v37 = v30;
    v37[1] = v29;
    (*v50)((*(v14 + 56) + v31 * v38), v51, v52);
    OUTLINED_FUNCTION_28_13();
    v13 = v47;
    if (!v19)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v33)
    {
      if (v35)
      {
        break;
      }
    }

    if (v34 == v36)
    {
      v34 = 0;
    }

    if (*(v14 + 64 + 8 * v34) != -1)
    {
      OUTLINED_FUNCTION_50_0();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_2312B4680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_11_0();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v27 = v26;
  v28 = sub_231369D50();
  OUTLINED_FUNCTION_0_0();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_4();
  v79 = v33 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437B8, &qword_23136FA60);
  v35 = OUTLINED_FUNCTION_0(v34);
  v84 = v36;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1_1();
  v83 = v37;
  MEMORY[0x28223BE20](v38);
  v80 = &v76 - v39;
  v40 = *v23;
  if (*(*v23 + 24) > v27)
  {
    v27 = *(*v23 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44598, &qword_231374948);
  v85 = v25;
  v41 = OUTLINED_FUNCTION_57_9(v40, v27);
  v42 = v41;
  if (!*(v40 + 16))
  {
LABEL_36:

LABEL_37:
    *v23 = v42;
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v82 = v28;
  v76 = v23;
  v43 = 0;
  v44 = v40 + 64;
  v45 = 1 << *(v40 + 32);
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  else
  {
    v46 = -1;
  }

  v47 = v46 & *(v40 + 64);
  v48 = (v45 + 63) >> 6;
  v78 = (v30 + 32);
  v77 = (v30 + 8);
  v49 = v41 + 64;
  v81 = v40;
  v50 = v80;
  v89 = v41;
  if (!v47)
  {
LABEL_9:
    v53 = v43;
    while (1)
    {
      v43 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v43 >= v48)
      {
        break;
      }

      ++v53;
      if (*(v44 + 8 * v43))
      {
        OUTLINED_FUNCTION_31_6();
        v52 = v55 & v54;
        goto LABEL_14;
      }
    }

    if ((v85 & 1) == 0)
    {

      v23 = v76;
      goto LABEL_37;
    }

    OUTLINED_FUNCTION_17_12();
    v23 = v76;
    if (v72 != v73)
    {
      OUTLINED_FUNCTION_26_14(v71);
    }

    else
    {
      v74 = OUTLINED_FUNCTION_18_16();
      sub_2312B3C88(v74, v75, v44);
    }

    *(v40 + 16) = 0;
    goto LABEL_36;
  }

  while (1)
  {
    OUTLINED_FUNCTION_53_0();
LABEL_14:
    v56 = v51 | (v43 << 6);
    v87 = *(v84 + 72);
    v88 = v52;
    if (v85)
    {
      OUTLINED_FUNCTION_72_5();
      sub_2311F0440(v57, v58, v59, &qword_23136FA60);
      v86 = *(*(v40 + 56) + 8 * v56);
    }

    else
    {
      OUTLINED_FUNCTION_72_5();
      sub_2311F03B0(v60, v61, v62, &qword_23136FA60);
      v86 = *(*(v40 + 56) + 8 * v56);
      sub_231369EE0();
    }

    sub_23136A9D0();
    v63 = v83;
    sub_2311F03B0(v50, v83, &qword_27DD437B8, &qword_23136FA60);
    v64 = v82;
    if (__swift_getEnumTagSinglePayload(v63, 1, v82) == 1)
    {
      sub_23136A9F0();
    }

    else
    {
      v65 = v79;
      (*v78)(v79, v63, v64);
      sub_23136A9F0();
      OUTLINED_FUNCTION_40_11();
      sub_2312B71EC(&qword_280F7C888, v66, MEMORY[0x277D72D68]);
      sub_231369F40();
      v50 = v80;
      (*v77)(v65, v64);
    }

    sub_23136AA00();
    OUTLINED_FUNCTION_2_18();
    OUTLINED_FUNCTION_36_10();
    v40 = v81;
    if (v67)
    {
      break;
    }

    OUTLINED_FUNCTION_12_17();
LABEL_28:
    *(v49 + ((v90 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (&a19 + 96);
    sub_2311F0440(v50, *(v68 + 48) + v87 * v90, &qword_27DD437B8, &qword_23136FA60);
    v70 = v88;
    v42 = v89;
    *(*(v89 + 56) + 8 * v90) = v86;
    ++*(v42 + 16);
    if (!v70)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v67)
    {
      if (v69)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_37_13();
    if (!v67)
    {
      OUTLINED_FUNCTION_11_19();
      goto LABEL_28;
    }
  }

LABEL_39:
  __break(1u);
}

void sub_2312B4AF8()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_18();
  sub_231367E50();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445A0, &qword_231374958);
  v5 = OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_57_9(v5, v6);
  OUTLINED_FUNCTION_51_8();
  if (!v7)
  {
LABEL_28:

    OUTLINED_FUNCTION_54_8();
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v8 = 0;
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_13_16();
  if (!v3)
  {
LABEL_4:
    v9 = v8;
    while (1)
    {
      v8 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v2)
      {
        break;
      }

      OUTLINED_FUNCTION_63_6();
      if (v10)
      {
        OUTLINED_FUNCTION_31_6();
        v3 = v12 & v11;
        goto LABEL_9;
      }
    }

    if (v1)
    {
      OUTLINED_FUNCTION_5_18();
      if (v23 != v24)
      {
        OUTLINED_FUNCTION_27_12(v22);
      }

      else
      {
        v25 = OUTLINED_FUNCTION_18_16();
        sub_2312B3C88(v25, v26, v0 + 64);
      }

      *(v0 + 16) = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_14_12();
LABEL_9:
    OUTLINED_FUNCTION_21_17();
    if (v13)
    {
      v14 = OUTLINED_FUNCTION_10_20();
      v15(v14);
      OUTLINED_FUNCTION_47_7();
    }

    else
    {
      v16 = OUTLINED_FUNCTION_10_20();
      v17(v16);
      OUTLINED_FUNCTION_58_6();
    }

    v18 = sub_2312B71EC(&qword_280F7CA10, MEMORY[0x277D60CC0], MEMORY[0x277D60CC8]);
    OUTLINED_FUNCTION_33_11(v18);
    OUTLINED_FUNCTION_2_18();
    OUTLINED_FUNCTION_36_10();
    if (v19)
    {
      break;
    }

    OUTLINED_FUNCTION_12_17();
LABEL_20:
    OUTLINED_FUNCTION_3_24();
    OUTLINED_FUNCTION_48_7();
    v21();
    OUTLINED_FUNCTION_19_16();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v19)
    {
      if (v20)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_38_8();
    if (!v19)
    {
      OUTLINED_FUNCTION_11_19();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_2312B4D28()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_18();
  sub_231368260();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445E0, &qword_2313749C0);
  v5 = OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_57_9(v5, v6);
  OUTLINED_FUNCTION_51_8();
  if (!v7)
  {
LABEL_28:

    OUTLINED_FUNCTION_54_8();
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v8 = 0;
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_13_16();
  if (!v3)
  {
LABEL_4:
    v9 = v8;
    while (1)
    {
      v8 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v2)
      {
        break;
      }

      OUTLINED_FUNCTION_63_6();
      if (v10)
      {
        OUTLINED_FUNCTION_31_6();
        v3 = v12 & v11;
        goto LABEL_9;
      }
    }

    if (v1)
    {
      OUTLINED_FUNCTION_5_18();
      if (v24 != v25)
      {
        OUTLINED_FUNCTION_27_12(v23);
      }

      else
      {
        v26 = OUTLINED_FUNCTION_18_16();
        sub_2312B3C88(v26, v27, v0 + 64);
      }

      *(v0 + 16) = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_14_12();
LABEL_9:
    OUTLINED_FUNCTION_21_17();
    if (v13)
    {
      v14 = OUTLINED_FUNCTION_10_20();
      v15(v14);
      OUTLINED_FUNCTION_47_7();
    }

    else
    {
      v16 = OUTLINED_FUNCTION_10_20();
      v17(v16);
      OUTLINED_FUNCTION_58_6();
    }

    OUTLINED_FUNCTION_39_10();
    v19 = sub_2312B71EC(&qword_280F7C9A0, v18, MEMORY[0x277D60E48]);
    OUTLINED_FUNCTION_33_11(v19);
    OUTLINED_FUNCTION_2_18();
    OUTLINED_FUNCTION_36_10();
    if (v20)
    {
      break;
    }

    OUTLINED_FUNCTION_12_17();
LABEL_20:
    OUTLINED_FUNCTION_3_24();
    OUTLINED_FUNCTION_48_7();
    v22();
    OUTLINED_FUNCTION_19_16();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v20)
    {
      if (v21)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_38_8();
    if (!v20)
    {
      OUTLINED_FUNCTION_11_19();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_2312B4F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  OUTLINED_FUNCTION_76_4();
  a34 = v38;
  a35 = v39;
  OUTLINED_FUNCTION_24_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445F0, &unk_2313749D0);
  v40 = OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_57_9(v40, v41);
  OUTLINED_FUNCTION_71_4();
  if (!v42)
  {
LABEL_28:

    *v35 = v37;
    OUTLINED_FUNCTION_75_4();
    return;
  }

  v43 = 0;
  OUTLINED_FUNCTION_0_28();
  v46 = v45 & v44;
  OUTLINED_FUNCTION_41_12();
  if (!v46)
  {
LABEL_4:
    v47 = v43;
    while (1)
    {
      v43 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v43 >= v35)
      {
        break;
      }

      ++v47;
      if (*(v36 + 64 + 8 * v43))
      {
        OUTLINED_FUNCTION_31_6();
        v46 = v49 & v48;
        goto LABEL_9;
      }
    }

    if (v37)
    {
      OUTLINED_FUNCTION_5_18();
      if (v62 != v63)
      {
        OUTLINED_FUNCTION_26_14(v61);
      }

      else
      {
        v64 = OUTLINED_FUNCTION_18_16();
        sub_2312B3C88(v64, v65, v36 + 64);
      }

      *(v36 + 16) = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_34_10();
LABEL_9:
    OUTLINED_FUNCTION_49_8();
    v52 = (v51 + 32 * v50);
    if (v37)
    {
      v53 = sub_2312250F8(v52, &a21);
    }

    else
    {
      sub_2311D1D6C(v52, &a21);
      v53 = sub_231369EE0();
    }

    OUTLINED_FUNCTION_80_3(v53, v54, v55);
    sub_23136A060();
    sub_23136AA00();
    OUTLINED_FUNCTION_2_18();
    OUTLINED_FUNCTION_36_10();
    if (v56)
    {
      break;
    }

    OUTLINED_FUNCTION_52_4();
LABEL_20:
    OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_31_15(v58);
    sub_2312250F8(&a21, (v60 + 32 * v59));
    OUTLINED_FUNCTION_28_13();
    if (!v46)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v56)
    {
      if (v57)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_60_5();
    if (!v56)
    {
      OUTLINED_FUNCTION_50_0();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_2312B50F4()
{
  OUTLINED_FUNCTION_11_0();
  v3 = OUTLINED_FUNCTION_15_18();
  v4 = type metadata accessor for GenerationService.DedupData(v3);
  v5 = OUTLINED_FUNCTION_0(v4);
  v42 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  v43 = v8 - v7;
  OUTLINED_FUNCTION_14_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44050, &qword_231370F18);
  v9 = OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_57_9(v9, v10);
  OUTLINED_FUNCTION_51_8();
  if (!v11)
  {
LABEL_28:

    OUTLINED_FUNCTION_54_8();
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v41 = v0;
  v12 = 0;
  v13 = v0 + 8;
  OUTLINED_FUNCTION_0_28();
  v16 = v15 & v14;
  v18 = (v17 + 63) >> 6;
  if ((v15 & v14) == 0)
  {
LABEL_4:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v12 >= v18)
      {
        break;
      }

      ++v20;
      if (v13[v12])
      {
        OUTLINED_FUNCTION_31_6();
        v16 = v22 & v21;
        goto LABEL_9;
      }
    }

    if (v1)
    {
      OUTLINED_FUNCTION_5_18();
      if (v37 != v38)
      {
        *v13 = -1 << v36;
      }

      else
      {
        v39 = OUTLINED_FUNCTION_18_16();
        sub_2312B3C88(v39, v40, v13);
      }

      v0[2] = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_9:
    v23 = v19 | (v12 << 6);
    v24 = v0[7];
    v25 = (v0[6] + 16 * v23);
    v26 = *v25;
    v27 = v25[1];
    v28 = *(v42 + 72);
    v29 = v24 + v28 * v23;
    if (v1)
    {
      sub_231270D3C(v29, v43);
    }

    else
    {
      sub_231270BA8(v29, v43);
      sub_231369EE0();
    }

    sub_23136A9D0();
    OUTLINED_FUNCTION_72_5();
    sub_23136A060();
    sub_23136AA00();
    OUTLINED_FUNCTION_2_18();
    OUTLINED_FUNCTION_36_10();
    if (v30)
    {
      break;
    }

    OUTLINED_FUNCTION_52_4();
LABEL_20:
    OUTLINED_FUNCTION_7_9();
    *(v2 + 64 + v32) |= v33;
    v35 = (*(v2 + 48) + 16 * v34);
    *v35 = v26;
    v35[1] = v27;
    sub_231270D3C(v43, *(v2 + 56) + v28 * v34);
    OUTLINED_FUNCTION_29_12();
    v0 = v41;
    if (!v16)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v30)
    {
      if (v31)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_37_13();
    if (!v30)
    {
      OUTLINED_FUNCTION_50_0();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_2312B537C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_25_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C88, &qword_231370B00);
  v36 = OUTLINED_FUNCTION_45_6();
  v64 = v33;
  OUTLINED_FUNCTION_81_2(v36, v37);
  OUTLINED_FUNCTION_70_5();
  if (!v38)
  {
LABEL_27:

    *v32 = v34;
    OUTLINED_FUNCTION_77_2();
    return;
  }

  v63 = v35;
  v39 = 0;
  v40 = v35 + 64;
  OUTLINED_FUNCTION_0_28();
  v43 = v42 & v41;
  OUTLINED_FUNCTION_41_12();
  if (!v43)
  {
LABEL_4:
    v44 = v39;
    while (1)
    {
      v39 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v39 >= v32)
      {
        break;
      }

      ++v44;
      if (*(v40 + 8 * v39))
      {
        OUTLINED_FUNCTION_31_6();
        v43 = v46 & v45;
        goto LABEL_9;
      }
    }

    if (v64)
    {
      OUTLINED_FUNCTION_17_12();
      if (v59 != v60)
      {
        OUTLINED_FUNCTION_26_14(v58);
      }

      else
      {
        v61 = OUTLINED_FUNCTION_18_16();
        sub_2312B3C88(v61, v62, v40);
      }

      *(v35 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_43_10();
LABEL_9:
    OUTLINED_FUNCTION_52_8();
    v52 = *(v51 + 8 * v50);
    if ((v64 & 1) == 0)
    {
      sub_231369EE0();
    }

    OUTLINED_FUNCTION_80_3(v47, v48, v49);
    sub_23136A060();
    sub_23136AA00();
    OUTLINED_FUNCTION_2_18();
    OUTLINED_FUNCTION_36_10();
    if (v53)
    {
      break;
    }

    OUTLINED_FUNCTION_52_4();
LABEL_19:
    OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_32_11(v55);
    *(v57 + 8 * v56) = v52;
    OUTLINED_FUNCTION_28_13();
    v35 = v63;
    if (!v43)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v53)
    {
      if (v54)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_61_5();
    if (!v53)
    {
      OUTLINED_FUNCTION_50_0();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_2312B551C()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_18();
  sub_231369330();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44348, &qword_231374990);
  v6 = OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_57_9(v6, v7);
  OUTLINED_FUNCTION_51_8();
  if (!v8)
  {
LABEL_27:

    OUTLINED_FUNCTION_54_8();
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v9 = 0;
  v10 = v0 + 64;
  OUTLINED_FUNCTION_0_28();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  v36 = v0;
  if ((v12 & v11) == 0)
  {
LABEL_4:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v9 >= v15)
      {
        break;
      }

      OUTLINED_FUNCTION_63_6();
      if (v18)
      {
        OUTLINED_FUNCTION_31_6();
        v13 = v20 & v19;
        goto LABEL_9;
      }
    }

    if (v1)
    {
      OUTLINED_FUNCTION_5_18();
      if (v32 != v33)
      {
        OUTLINED_FUNCTION_27_12(v31);
      }

      else
      {
        v34 = OUTLINED_FUNCTION_18_16();
        sub_2312B3C88(v34, v35, v10);
      }

      *(v0 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_14_12();
LABEL_9:
    v21 = v16 | (v9 << 6);
    v22 = OUTLINED_FUNCTION_10_20();
    v23(v22);
    v24 = (*(v0 + 56) + 16 * v21);
    v37 = v24[1];
    v38 = *v24;
    if ((v1 & 1) == 0)
    {
      sub_231369EE0();
    }

    v25 = *(v2 + 40);
    v26 = sub_2312B71EC(&qword_280F7C8F0, MEMORY[0x277D61310], MEMORY[0x277D61318]);
    OUTLINED_FUNCTION_33_11(v26);
    OUTLINED_FUNCTION_2_18();
    OUTLINED_FUNCTION_36_10();
    if (v27)
    {
      break;
    }

    OUTLINED_FUNCTION_12_17();
LABEL_19:
    v29 = OUTLINED_FUNCTION_3_24();
    (*(v4 + 32))(v29);
    v30 = (*(v2 + 56) + 16 * v25);
    *v30 = v38;
    v30[1] = v37;
    OUTLINED_FUNCTION_29_12();
    v0 = v36;
    if (!v13)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v27)
    {
      if (v28)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_38_8();
    if (!v27)
    {
      OUTLINED_FUNCTION_11_19();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_2312B57C0()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_18();
  v5 = sub_2313694E0();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_64_6();
  OUTLINED_FUNCTION_14_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445F8, qword_2313749E0);
  v9 = OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_57_9(v9, v10);
  OUTLINED_FUNCTION_51_8();
  if (!v11)
  {
LABEL_28:

    OUTLINED_FUNCTION_54_8();
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v37 = v4;
  v12 = 0;
  v13 = v1 + 64;
  OUTLINED_FUNCTION_0_28();
  v16 = v15 & v14;
  OUTLINED_FUNCTION_41_12();
  v33 = v7;
  v35 = (v7 + 32);
  v34 = v1;
  if (!v16)
  {
LABEL_4:
    v17 = v12;
    while (1)
    {
      v12 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v12 >= v0)
      {
        break;
      }

      ++v17;
      if (*(v13 + 8 * v12))
      {
        OUTLINED_FUNCTION_31_6();
        v16 = v19 & v18;
        goto LABEL_9;
      }
    }

    if (v2)
    {
      OUTLINED_FUNCTION_5_18();
      if (v29 != v30)
      {
        OUTLINED_FUNCTION_27_12(v28);
      }

      else
      {
        v31 = OUTLINED_FUNCTION_18_16();
        sub_2312B3C88(v31, v32, v13);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_46_11();
LABEL_9:
    v36 = *(v7 + 72);
    v20 = OUTLINED_FUNCTION_68_4();
    v21(v20);
    v22 = OUTLINED_FUNCTION_65_5();
    if (v2)
    {
      sub_2311D38A8(v22, v23);
    }

    else
    {
      sub_2311CF324(v22, v23);
    }

    sub_2312B71EC(&qword_280F7C8C8, MEMORY[0x277D61388], MEMORY[0x277D61390]);
    sub_231369F30();
    OUTLINED_FUNCTION_2_18();
    OUTLINED_FUNCTION_36_10();
    if (v24)
    {
      break;
    }

    OUTLINED_FUNCTION_12_17();
    v7 = v33;
    v1 = v34;
LABEL_20:
    OUTLINED_FUNCTION_20_19();
    OUTLINED_FUNCTION_42_11(v26);
    (*v35)(v27 + v36 * v5, v37, v5);
    sub_2311D38A8(&v38, *(v3 + 56) + 40 * v5);
    OUTLINED_FUNCTION_29_12();
    if (!v16)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  v7 = v33;
  v1 = v34;
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v24)
    {
      if (v25)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_37_13();
    if (!v24)
    {
      OUTLINED_FUNCTION_11_19();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_2312B5A70()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_18();
  sub_2313673A0();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445E8, &qword_2313749C8);
  v5 = OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_57_9(v5, v6);
  OUTLINED_FUNCTION_51_8();
  if (!v7)
  {
LABEL_28:

    OUTLINED_FUNCTION_54_8();
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v8 = 0;
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_13_16();
  if (!v3)
  {
LABEL_4:
    v9 = v8;
    while (1)
    {
      v8 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v2)
      {
        break;
      }

      OUTLINED_FUNCTION_63_6();
      if (v10)
      {
        OUTLINED_FUNCTION_31_6();
        v3 = v12 & v11;
        goto LABEL_9;
      }
    }

    if (v1)
    {
      OUTLINED_FUNCTION_5_18();
      if (v23 != v24)
      {
        OUTLINED_FUNCTION_27_12(v22);
      }

      else
      {
        v25 = OUTLINED_FUNCTION_18_16();
        sub_2312B3C88(v25, v26, v0 + 64);
      }

      *(v0 + 16) = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_14_12();
LABEL_9:
    OUTLINED_FUNCTION_21_17();
    if (v13)
    {
      v14 = OUTLINED_FUNCTION_10_20();
      v15(v14);
      OUTLINED_FUNCTION_47_7();
    }

    else
    {
      v16 = OUTLINED_FUNCTION_10_20();
      v17(v16);
      OUTLINED_FUNCTION_58_6();
    }

    v18 = sub_2312B71EC(&qword_280F7CAF0, MEMORY[0x277D60890], MEMORY[0x277D60898]);
    OUTLINED_FUNCTION_33_11(v18);
    OUTLINED_FUNCTION_2_18();
    OUTLINED_FUNCTION_36_10();
    if (v19)
    {
      break;
    }

    OUTLINED_FUNCTION_12_17();
LABEL_20:
    OUTLINED_FUNCTION_3_24();
    OUTLINED_FUNCTION_48_7();
    v21();
    OUTLINED_FUNCTION_19_16();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v19)
    {
      if (v20)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_38_8();
    if (!v19)
    {
      OUTLINED_FUNCTION_11_19();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_2312B5CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_25_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(v36, v37);
  v38 = OUTLINED_FUNCTION_45_6();
  v66 = v33;
  OUTLINED_FUNCTION_81_2(v38, v39);
  OUTLINED_FUNCTION_70_5();
  if (!v40)
  {
LABEL_27:

    *v32 = v34;
    OUTLINED_FUNCTION_77_2();
    return;
  }

  v65 = v35;
  v41 = 0;
  v42 = v35 + 64;
  OUTLINED_FUNCTION_0_28();
  v45 = v44 & v43;
  OUTLINED_FUNCTION_41_12();
  if (!v45)
  {
LABEL_4:
    v46 = v41;
    while (1)
    {
      v41 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v41 >= v32)
      {
        break;
      }

      ++v46;
      if (*(v42 + 8 * v41))
      {
        OUTLINED_FUNCTION_31_6();
        v45 = v48 & v47;
        goto LABEL_9;
      }
    }

    if (v66)
    {
      OUTLINED_FUNCTION_17_12();
      if (v61 != v62)
      {
        OUTLINED_FUNCTION_26_14(v60);
      }

      else
      {
        v63 = OUTLINED_FUNCTION_18_16();
        sub_2312B3C88(v63, v64, v42);
      }

      *(v35 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_43_10();
LABEL_9:
    OUTLINED_FUNCTION_52_8();
    v54 = *(v53 + 8 * v52);
    if ((v66 & 1) == 0)
    {
      sub_231369EE0();
      v49 = sub_231369EE0();
    }

    OUTLINED_FUNCTION_80_3(v49, v50, v51);
    sub_23136A060();
    sub_23136AA00();
    OUTLINED_FUNCTION_2_18();
    OUTLINED_FUNCTION_36_10();
    if (v55)
    {
      break;
    }

    OUTLINED_FUNCTION_52_4();
LABEL_19:
    OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_32_11(v57);
    *(v59 + 8 * v58) = v54;
    OUTLINED_FUNCTION_28_13();
    v35 = v65;
    if (!v45)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v55)
    {
      if (v56)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_61_5();
    if (!v55)
    {
      OUTLINED_FUNCTION_50_0();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_2312B5E4C()
{
  OUTLINED_FUNCTION_15_18();
  v6 = sub_231368260();
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_64_6();
  OUTLINED_FUNCTION_14_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44370, &qword_231373030);
  v10 = OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_57_9(v10, v11);
  OUTLINED_FUNCTION_51_8();
  if (!v12)
  {
LABEL_25:

    *v0 = v4;
    return;
  }

  v37 = v5;
  v38 = v6;
  v13 = 0;
  OUTLINED_FUNCTION_0_28();
  v16 = v15 & v14;
  OUTLINED_FUNCTION_41_12();
  if (!v16)
  {
LABEL_4:
    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v13 >= v0)
      {
        break;
      }

      ++v19;
      if (*(v2 + 64 + 8 * v13))
      {
        OUTLINED_FUNCTION_31_6();
        v16 = v21 & v20;
        goto LABEL_9;
      }
    }

    if (v3)
    {
      OUTLINED_FUNCTION_5_18();
      if (v32 != v33)
      {
        OUTLINED_FUNCTION_27_12(v31);
      }

      else
      {
        v34 = OUTLINED_FUNCTION_18_16();
        sub_2312B3C88(v34, v35, v2 + 64);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_25;
  }

  while (1)
  {
    OUTLINED_FUNCTION_46_11();
LABEL_9:
    v22 = v17 | (v13 << 6);
    v36 = *(v18 + 72);
    v23 = OUTLINED_FUNCTION_67_5();
    v24(v23);
    v25 = *(*(v2 + 56) + 8 * v22);
    OUTLINED_FUNCTION_39_10();
    sub_2312B71EC(&qword_280F7C9A0, v26, MEMORY[0x277D60E48]);
    sub_231369F30();
    OUTLINED_FUNCTION_2_18();
    OUTLINED_FUNCTION_36_10();
    if (v27)
    {
      break;
    }

    OUTLINED_FUNCTION_12_17();
LABEL_17:
    OUTLINED_FUNCTION_20_19();
    OUTLINED_FUNCTION_42_11(v29);
    (*(v8 + 32))(v30 + v36 * v1, v37, v38);
    *(*(v4 + 56) + 8 * v1) = v25;
    OUTLINED_FUNCTION_29_12();
    if (!v16)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v27)
    {
      if (v28)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_37_13();
    if (!v27)
    {
      OUTLINED_FUNCTION_11_19();
      goto LABEL_17;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_2312B60F8()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_18();
  v6 = sub_231367C70();
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_64_6();
  OUTLINED_FUNCTION_14_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44360, &qword_231373020);
  v10 = OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_57_9(v10, v11);
  OUTLINED_FUNCTION_51_8();
  if (!v12)
  {
LABEL_25:

    OUTLINED_FUNCTION_54_8();
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v39 = v5;
  v13 = 0;
  v14 = v2 + 64;
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_41_12();
  v35 = v8;
  v37 = (v8 + 32);
  v36 = v2;
  if (!v15)
  {
LABEL_4:
    v18 = v13;
    while (1)
    {
      v13 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v13 >= v0)
      {
        break;
      }

      ++v18;
      if (*(v14 + 8 * v13))
      {
        OUTLINED_FUNCTION_31_6();
        v17 = v20 & v19;
        goto LABEL_9;
      }
    }

    if (v3)
    {
      OUTLINED_FUNCTION_5_18();
      if (v31 != v32)
      {
        OUTLINED_FUNCTION_27_12(v30);
      }

      else
      {
        v33 = OUTLINED_FUNCTION_18_16();
        sub_2312B3C88(v33, v34, v14);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_25;
  }

  while (1)
  {
    OUTLINED_FUNCTION_53_0();
LABEL_9:
    v21 = v16 | (v13 << 6);
    v38 = v17;
    v22 = *(v8 + 72);
    v23 = OUTLINED_FUNCTION_66_4();
    v24(v23);
    v25 = *(*(v2 + 56) + 8 * v21);
    sub_2312B71EC(&qword_280F7CA80, MEMORY[0x277D60AE8], MEMORY[0x277D60AF8]);
    sub_231369F30();
    OUTLINED_FUNCTION_2_18();
    OUTLINED_FUNCTION_36_10();
    if (v26)
    {
      break;
    }

    OUTLINED_FUNCTION_12_17();
LABEL_17:
    OUTLINED_FUNCTION_20_19();
    OUTLINED_FUNCTION_42_11(v28);
    (*v37)(v29 + v22 * v1, v39, v6);
    *(*(v4 + 56) + 8 * v1) = v25;
    OUTLINED_FUNCTION_29_12();
    v8 = v35;
    v2 = v36;
    if (!v38)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v26)
    {
      if (v27)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_37_13();
    if (!v26)
    {
      OUTLINED_FUNCTION_11_19();
      goto LABEL_17;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_2312B639C()
{
  OUTLINED_FUNCTION_25_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445B8, &qword_231374970);
  v4 = OUTLINED_FUNCTION_45_6();
  v31 = v1;
  OUTLINED_FUNCTION_81_2(v4, v5);
  OUTLINED_FUNCTION_70_5();
  if (!v6)
  {
LABEL_27:

    *v0 = v2;
    return;
  }

  v30 = v3;
  v7 = 0;
  v8 = v3 + 64;
  OUTLINED_FUNCTION_0_28();
  v11 = v10 & v9;
  OUTLINED_FUNCTION_41_12();
  if (!v11)
  {
LABEL_4:
    v12 = v7;
    while (1)
    {
      v7 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v0)
      {
        break;
      }

      ++v12;
      if (*(v8 + 8 * v7))
      {
        OUTLINED_FUNCTION_31_6();
        v11 = v14 & v13;
        goto LABEL_9;
      }
    }

    if (v31)
    {
      OUTLINED_FUNCTION_17_12();
      if (v26 != v27)
      {
        OUTLINED_FUNCTION_26_14(v25);
      }

      else
      {
        v28 = OUTLINED_FUNCTION_18_16();
        sub_2312B3C88(v28, v29, v8);
      }

      *(v3 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_43_10();
LABEL_9:
    OUTLINED_FUNCTION_52_8();
    v17 = (v16 + 16 * v15);
    v18 = v17[1];
    v32 = *v17;
    if ((v31 & 1) == 0)
    {
      sub_231369EE0();
      sub_231369EE0();
    }

    sub_23136A9D0();
    sub_23136A060();
    sub_23136AA00();
    OUTLINED_FUNCTION_2_18();
    OUTLINED_FUNCTION_36_10();
    if (v19)
    {
      break;
    }

    OUTLINED_FUNCTION_52_4();
LABEL_19:
    OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_32_11(v21);
    v24 = (v23 + 16 * v22);
    *v24 = v32;
    v24[1] = v18;
    OUTLINED_FUNCTION_28_13();
    v3 = v30;
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v19)
    {
      if (v20)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_61_5();
    if (!v19)
    {
      OUTLINED_FUNCTION_50_0();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_2312B656C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_76_4();
  a33 = v37;
  a34 = v38;
  OUTLINED_FUNCTION_24_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44380, &unk_231373040);
  v39 = OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_57_9(v39, v40);
  OUTLINED_FUNCTION_71_4();
  if (!v41)
  {
LABEL_30:

    *v34 = v36;
    OUTLINED_FUNCTION_75_4();
    return;
  }

  v42 = 0;
  OUTLINED_FUNCTION_0_28();
  v45 = v44 & v43;
  OUTLINED_FUNCTION_41_12();
  if (!v45)
  {
LABEL_4:
    v49 = v42;
    while (1)
    {
      v42 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v42 >= v34)
      {
        break;
      }

      ++v49;
      if (v35[v42 + 8])
      {
        OUTLINED_FUNCTION_31_6();
        v45 = v51 & v50;
        goto LABEL_9;
      }
    }

    if (v36)
    {
      OUTLINED_FUNCTION_5_18();
      if (v67 != v68)
      {
        OUTLINED_FUNCTION_26_14(v66);
      }

      else
      {
        v69 = OUTLINED_FUNCTION_18_16();
        sub_2312B3C88(v69, v70, (v35 + 8));
      }

      v35[2] = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_34_10();
LABEL_9:
    v52 = v48 | (v42 << 6);
    v53 = (v35[6] + 16 * v52);
    v54 = *v53;
    v55 = v53[1];
    v56 = (v35[7] + 32 * v52);
    if (v36)
    {
      v57 = v56[1];
      a21 = *v56;
      a22 = v57;
    }

    else
    {
      sub_2311F03B0(v56, &a21, &qword_27DD443C0, &unk_23136E000);
      v56 = sub_231369EE0();
    }

    OUTLINED_FUNCTION_80_3(v56, v46, v47);
    OUTLINED_FUNCTION_72_5();
    sub_23136A060();
    sub_23136AA00();
    OUTLINED_FUNCTION_2_18();
    OUTLINED_FUNCTION_36_10();
    if (v58)
    {
      break;
    }

    OUTLINED_FUNCTION_52_4();
LABEL_22:
    OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_62_7();
    *v62 = v54;
    v62[1] = v55;
    v64 = (*(v36 + 56) + 32 * v63);
    v65 = a22;
    *v64 = a21;
    v64[1] = v65;
    OUTLINED_FUNCTION_28_13();
    if (!v45)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v58)
    {
      if (v60)
      {
        break;
      }
    }

    if (v59 == v61)
    {
      v59 = 0;
    }

    if (*(v36 + 64 + 8 * v59) != -1)
    {
      OUTLINED_FUNCTION_50_0();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_2312B6740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  OUTLINED_FUNCTION_76_4();
  a34 = v38;
  a35 = v39;
  OUTLINED_FUNCTION_24_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445D8, &qword_2313749B8);
  v40 = OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_57_9(v40, v41);
  OUTLINED_FUNCTION_71_4();
  if (!v42)
  {
LABEL_28:

    *v35 = v37;
    OUTLINED_FUNCTION_75_4();
    return;
  }

  v43 = 0;
  OUTLINED_FUNCTION_0_28();
  v46 = v45 & v44;
  OUTLINED_FUNCTION_41_12();
  if (!v46)
  {
LABEL_4:
    v47 = v43;
    while (1)
    {
      v43 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v43 >= v35)
      {
        break;
      }

      ++v47;
      if (*(v36 + 64 + 8 * v43))
      {
        OUTLINED_FUNCTION_31_6();
        v46 = v49 & v48;
        goto LABEL_9;
      }
    }

    if (v37)
    {
      OUTLINED_FUNCTION_5_18();
      if (v59 != v60)
      {
        OUTLINED_FUNCTION_26_14(v58);
      }

      else
      {
        v61 = OUTLINED_FUNCTION_18_16();
        sub_2312B3C88(v61, v62, v36 + 64);
      }

      *(v36 + 16) = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_34_10();
LABEL_9:
    OUTLINED_FUNCTION_49_8();
    v52 = (v51 + 40 * v50);
    if (v37)
    {
      sub_2311D38A8(v52, &a20);
    }

    else
    {
      sub_2311CF324(v52, &a20);
      sub_231369EE0();
    }

    sub_23136A9D0();
    sub_23136A060();
    sub_23136AA00();
    OUTLINED_FUNCTION_2_18();
    OUTLINED_FUNCTION_36_10();
    if (v53)
    {
      break;
    }

    OUTLINED_FUNCTION_52_4();
LABEL_20:
    OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_31_15(v55);
    sub_2311D38A8(&a20, v57 + 40 * v56);
    OUTLINED_FUNCTION_28_13();
    if (!v46)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (1)
  {
    OUTLINED_FUNCTION_35_11();
    if (v53)
    {
      if (v54)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_60_5();
    if (!v53)
    {
      OUTLINED_FUNCTION_50_0();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_2312B6900@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_231361F98((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2312B6938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void sub_2312B6974()
{
  OUTLINED_FUNCTION_11_0();
  v3 = v2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43908, &unk_23136EBA0);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_64_6();
  v5 = sub_231367890();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_4();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445D0, &qword_2313749A8);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_1_1();
  v44 = v13;
  v16 = MEMORY[0x28223BE20](v14);
  v17 = &v39 - v15;
  v18 = *v0;
  v19 = v0[1];
  v20 = v0[2];
  v21 = v0[3];
  v22 = v0[4];
  v39 = v1;
  v43 = v20;
  if (v22)
  {
    v41 = v3;
    v23 = v21;
LABEL_7:
    v40 = (v22 - 1) & v22;
    v24 = __clz(__rbit64(v22)) | (v23 << 6);
    v25 = (*(v18 + 48) + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    (*(v7 + 16))(v11, *(v18 + 56) + *(v7 + 72) * v24, v5, v16);
    v28 = v42;
    v29 = *(v42 + 48);
    *v17 = v26;
    *(v17 + 1) = v27;
    v30 = v11;
    v31 = v28;
    (*(v7 + 32))(&v17[v29], v30, v5);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v31);
    sub_231369EE0();
    v32 = v40;
    v3 = v41;
LABEL_8:
    *v0 = v18;
    v0[1] = v19;
    v33 = v44;
    v0[2] = v43;
    v0[3] = v21;
    v0[4] = v32;
    v34 = v0[5];
    sub_2311F0440(v17, v33, &qword_27DD445D0, &qword_2313749A8);
    v35 = 1;
    if (__swift_getEnumTagSinglePayload(v33, 1, v31) != 1)
    {
      v36 = v33;
      v37 = v39;
      sub_2311F0440(v36, v39, &qword_27DD43908, &unk_23136EBA0);
      v34(v37);
      sub_2311D1F18(v37, &qword_27DD43908, &unk_23136EBA0);
      v35 = 0;
    }

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43910, &qword_2313749B0);
    __swift_storeEnumTagSinglePayload(v3, v35, 1, v38);
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= ((v20 + 64) >> 6))
      {
        v31 = v42;
        __swift_storeEnumTagSinglePayload(&v39 - v15, 1, 1, v42);
        v32 = 0;
        goto LABEL_8;
      }

      v22 = *(v19 + 8 * v23);
      ++v21;
      if (v22)
      {
        v41 = v3;
        v21 = v23;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_2312B6C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_78_3();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  v31 = *v26;
  v32 = v26[1];
  v33 = v26[2];
  v34 = v26[3];
  v35 = v26[4];
  if (v35)
  {
    v36 = v26[3];
LABEL_7:
    v37 = (v35 - 1) & v35;
    v38 = __clz(__rbit64(v35)) | (v36 << 6);
    v39 = (*(v31 + 48) + 16 * v38);
    v41 = *v39;
    v40 = v39[1];
    sub_2311D1D6C(*(v31 + 56) + 32 * v38, &a9);
    *&a12 = v41;
    *(&a12 + 1) = v40;
    sub_2312250F8(&a9, &a13);
    sub_231369EE0();
    v42 = *(&a12 + 1);
    v43 = a12;
LABEL_8:
    *v26 = v31;
    v26[1] = v32;
    v26[2] = v33;
    v26[3] = v34;
    v26[4] = v37;
    if (v42)
    {
      v44 = v26[5];
      *&a9 = v43;
      *(&a9 + 1) = v42;
      a10 = a13;
      a11 = a14;
      v44(&a9);
      sub_2311D1F18(&a9, &qword_27DD43558, &qword_231374890);
    }

    else
    {
      v30[1] = 0u;
      v30[2] = 0u;
      *v30 = 0u;
    }

    OUTLINED_FUNCTION_77_2();
  }

  else
  {
    while (1)
    {
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v36 >= ((v33 + 64) >> 6))
      {
        v42 = 0;
        v43 = 0;
        v37 = 0;
        a13 = 0u;
        a14 = 0u;
        a12 = 0u;
        goto LABEL_8;
      }

      v35 = *(v32 + 8 * v36);
      ++v34;
      if (v35)
      {
        v34 = v36;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2312B6DC0(uint64_t a1)
{
  v4 = sub_2313667A0();
  OUTLINED_FUNCTION_0(v4);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2312B6ECC;

  return sub_2312B384C(a1, v9, v1 + v6, v1 + v8);
}

uint64_t sub_2312B6ECC()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_2312B7044(uint64_t a1)
{
  v2 = sub_231369D50();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437B8, &qword_23136FA60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - v10;
  sub_2311F03B0(v1, &v15 - v10, &qword_27DD437B8, &qword_23136FA60);
  if (__swift_getEnumTagSinglePayload(v11, 1, v2) == 1)
  {
    return sub_23136A9F0();
  }

  (*(v4 + 32))(v8, v11, v2);
  sub_23136A9F0();
  OUTLINED_FUNCTION_40_11();
  sub_2312B71EC(v13, v14, MEMORY[0x277D72D68]);
  sub_231369F40();
  return (*(v4 + 8))(v8, v2);
}

uint64_t sub_2312B71EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_13_16()
{
  *(v2 - 144) = v1 + 16;
  *(v2 - 136) = v0;
  *(v2 - 128) = v1;
  *(v2 - 112) = v1 + 32;
}

uint64_t OUTLINED_FUNCTION_57_9(uint64_t a1, uint64_t a2)
{

  return sub_23136A780();
}

uint64_t OUTLINED_FUNCTION_58_6()
{
  *(v2 - 104) = *(*(v1 + 56) + 8 * v0);

  return sub_231369EE0();
}

void *OUTLINED_FUNCTION_80_3(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_23136A9D0();
}

uint64_t OUTLINED_FUNCTION_81_2(uint64_t a1, uint64_t a2)
{

  return sub_23136A780();
}

uint64_t sub_2312B7470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3_3();
  v16 = (v13 + *v13);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_2311E6A24;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2312B75B4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2311E6634(v2, v3, v4, v5);
    v2 = v6;
  }

  v7 = *(v2 + 16);
  v9[0] = v2 + 32;
  v9[1] = v7;
  result = sub_2312B8A14(v9);
  *a1 = v2;
  return result;
}

uint64_t sub_2312B7620()
{
  OUTLINED_FUNCTION_8();
  v1[39] = v2;
  v1[40] = v0;
  v1[37] = v3;
  v1[38] = v4;
  v1[36] = v5;
  v1[41] = sub_231367290();
  OUTLINED_FUNCTION_3_3();
  v1[42] = v6;
  v1[43] = swift_task_alloc();
  v1[44] = type metadata accessor for RankedCandidateSuggestion(0);
  OUTLINED_FUNCTION_3_3();
  v1[45] = v7;
  v1[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44600, &qword_231374A50);
  v1[47] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2312B7768()
{
  v1 = *(v0 + 376);
  v3 = *(v0 + 312);
  v2 = *(v0 + 320);
  v5 = *(v0 + 296);
  v4 = *(v0 + 304);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44608, &qword_231374A58);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v6);
  sub_2311CF324(v3, v0 + 168);
  sub_2311CF324(v5, v0 + 208);
  sub_2311CF324(v4, v0 + 248);
  v7 = swift_allocObject();
  *(v0 + 384) = v7;
  *(v7 + 16) = v2;
  sub_2311D38A8((v0 + 168), v7 + 24);
  sub_2311D38A8((v0 + 208), v7 + 64);
  sub_2311D38A8((v0 + 248), v7 + 104);

  v8 = swift_task_alloc();
  *(v0 + 392) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E8, &qword_23136D380);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438B8, &qword_23136EA38);
  *v8 = v0;
  v8[1] = sub_2312B7908;
  v11 = *(v0 + 376);
  v12 = *(v0 + 288);

  return MEMORY[0x2821C6B00](v12, v11, &unk_231374A68, v7, v9, v10);
}

uint64_t sub_2312B7908()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 376);
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v8 + 400) = v7;

  sub_231228E9C(v4, &qword_27DD44600, &qword_231374A50);
  v9 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2312B7A34()
{
  v1 = v0[50];
  v2 = v0[40];
  v3 = v2[6];
  v4 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v3);
  v5 = sub_23121D8D8(v1);
  v0[51] = v5;

  OUTLINED_FUNCTION_3_3();
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  v0[52] = v7;
  *v7 = v0;
  v7[1] = sub_2312B7B88;
  v8 = v0[37];
  v9 = v0[38];

  return v11(v5, v8, v9, v3, v4);
}

uint64_t sub_2312B7B88()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 424) = v5;

  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2312B7C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = sub_2312B87D0(*(v18 + 424));
  *(v18 + 432) = v19;

  v27 = *(v19 + 16);
  *(v18 + 480) = *MEMORY[0x277D60728];
  v28 = MEMORY[0x277D84F90];
  *(v18 + 448) = 0;
  *(v18 + 456) = v28;
  *(v18 + 440) = v27;
  v29 = *(v18 + 432);
  if (v27)
  {
    if (*(v29 + 16))
    {
      *(v18 + 16) = 0;
      sub_231247A14(v29 + 32, v18 + 24, &qword_27DD434E8, &unk_23136E480);
      OUTLINED_FUNCTION_8_20();
      OUTLINED_FUNCTION_9_20();
      v30 = swift_task_alloc();
      *(v18 + 472) = v30;
      *v30 = v18;
      v29 = OUTLINED_FUNCTION_0_29(v30);
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2821C6E60](v29, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {

    OUTLINED_FUNCTION_14();
    v32 = MEMORY[0x277D84F90];

    return v31(v32);
  }
}

uint64_t sub_2312B7E04()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312B7EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = *(v18 + 480);
  v20 = *(v18 + 368);
  v22 = *(v18 + 344);
  v21 = *(v18 + 352);
  v24 = *(v18 + 328);
  v23 = *(v18 + 336);
  __swift_project_boxed_opaque_existential_1(*(v18 + 304), *(*(v18 + 304) + 24));
  sub_231368380();
  (*(v23 + 104))(v22, v19, v24);
  sub_2313672B0();
  sub_231247A14(v18 + 72, v18 + 120, &qword_27DD434E8, &unk_23136E480);
  v25 = *(v21 + 24);
  v26 = sub_231366E80();
  __swift_storeEnumTagSinglePayload(v20 + v25, 1, 1, v26);
  sub_2311D38A8((v18 + 120), v20 + *(v21 + 20));
  sub_231228E9C(v18 + 72, &qword_27DD434E8, &unk_23136E480);
  sub_231228E9C(v18 + 16, &qword_27DD43540, &qword_23136CA80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v18 + 456);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_23126DA48(0, *(v28 + 16) + 1, 1, *(v18 + 456));
    v28 = v46;
  }

  v30 = *(v28 + 16);
  v29 = *(v28 + 24);
  if (v30 >= v29 >> 1)
  {
    sub_23126DA48(v29 > 1, v30 + 1, 1, v28);
    v28 = v47;
  }

  v32 = *(v18 + 360);
  v31 = *(v18 + 368);
  *(v28 + 16) = v30 + 1;
  sub_2311E18C4(v31, v28 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v30);
  v40 = *(v18 + 440);
  v41 = *(v18 + 448) + 1;
  *(v18 + 448) = v41;
  *(v18 + 456) = v28;
  v42 = *(v18 + 432);
  if (v41 == v40)
  {

    OUTLINED_FUNCTION_14();

    return v43(v28);
  }

  else
  {
    if (v41 >= *(v42 + 16))
    {
      __break(1u);
    }

    else
    {
      *(v18 + 16) = v41;
      sub_231247A14(v42 + 48 * v41 + 32, v18 + 24, &qword_27DD434E8, &unk_23136E480);
      OUTLINED_FUNCTION_8_20();
      OUTLINED_FUNCTION_9_20();
      v45 = swift_task_alloc();
      *(v18 + 472) = v45;
      *v45 = v18;
      v42 = OUTLINED_FUNCTION_0_29(v45);
    }

    return MEMORY[0x2821C6E60](v42, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_2312B81C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  v6 = sub_2313694E0();
  v5[22] = v6;
  v5[23] = *(v6 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312B829C, 0, 0);
}

uint64_t sub_2312B829C()
{
  v29 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(*(v0 + 144) + 16);
  __swift_project_boxed_opaque_existential_1(*(v0 + 136), *(*(v0 + 136) + 24));
  sub_231368310();
  v5 = sub_231210EEC(v1, v4);
  (*(v3 + 8))(v1, v2, v5);
  if (*(v0 + 80))
  {
    sub_2311D38A8((v0 + 56), v0 + 16);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
    OUTLINED_FUNCTION_3_3();
    v27 = (v8 + *v8);
    v9 = swift_task_alloc();
    *(v0 + 208) = v9;
    *v9 = v0;
    v9[1] = sub_2312B8630;
    v10 = *(v0 + 160);
    v11 = *(v0 + 168);
    v12 = *(v0 + 152);
    v13 = *(v0 + 136);

    return v27(v13, v12, v10, v11, v6, v7);
  }

  else
  {
    sub_231228E9C(v0 + 56, &qword_27DD44610, &qword_231374A78);
    if (qword_280F7C8A0 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 136);
    v16 = sub_2313698C0();
    __swift_project_value_buffer(v16, qword_280F8E510);
    sub_2311CF324(v15, v0 + 96);
    v17 = sub_2313698A0();
    v18 = sub_23136A3B0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315138;
      __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
      sub_231368310();
      v21 = sub_23136A010();
      v23 = v22;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
      v24 = sub_2311CFD58(v21, v23, &v28);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_2311CB000, v17, v18, "Unable to find a scorer configured for %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x23192B930](v20, -1, -1);
      MEMORY[0x23192B930](v19, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    }

    OUTLINED_FUNCTION_14();
    v26 = MEMORY[0x277D84F90];

    return v25(v26);
  }
}

uint64_t sub_2312B8630()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v5 + 216) = v6;

  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2312B8710()
{
  v1 = v0[27];
  v2 = v0[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44618, qword_231374A80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23136B670;
  sub_2311CF324(v2, v3 + 32);
  *(v3 + 72) = v1;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_14();

  return v4(v3);
}

uint64_t sub_2312B87D0(void *a1)
{
  v12 = sub_2312B97B4(a1);
  sub_2312B75B4(&v12);
  v3 = v12;
  if (!v2)
  {
    v4 = v12[2];
    if (!v4)
    {

      return MEMORY[0x277D84F90];
    }

    v19 = MEMORY[0x277D84F90];
    sub_2311F5B70(0, v4, 0);
    v1 = v19;
    v5 = (v3 + 4);
    do
    {
      sub_231247A14(v5, &v12, &qword_27DD43540, &qword_23136CA80);
      v16 = v13;
      v17 = v14;
      v18 = v15;
      v19 = v1;
      v7 = *(v1 + 16);
      v6 = *(v1 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_2311F5B70((v6 > 1), v7 + 1, 1);
        v1 = v19;
      }

      *(v1 + 16) = v7 + 1;
      v8 = (v1 + 48 * v7);
      v9 = v16;
      v10 = v18;
      v8[3] = v17;
      v8[4] = v10;
      v8[2] = v9;
      v5 += 56;
      --v4;
    }

    while (v4);
  }

  return v1;
}

uint64_t sub_2312B8964(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2311DDECC;

  return sub_2312B81C8(a1, v4, v1 + 24, v1 + 64, v1 + 104);
}

uint64_t sub_2312B8A14(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23136A8A0();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43540, &qword_23136CA80);
        v6 = sub_23136A230();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2312B8CB0(v7, v8, a1, v4);
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
    return sub_2312B8B18(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2312B8B18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v23 = a2;
  if (a3 == a2)
  {
    return result;
  }

  v4 = a3;
  v5 = *a4;
  v6 = *a4 + 56 * a3;
  v7 = result - a3;
  while (2)
  {
    v8 = v7;
    v9 = v6;
    while (1)
    {
      sub_231247A14(v9, v21, &qword_27DD43540, &qword_23136CA80);
      v10 = v9 - 56;
      sub_231247A14(v9 - 56, v19, &qword_27DD43540, &qword_23136CA80);
      v11 = v22;
      v12 = v20;
      if (v20 >= v22)
      {
        break;
      }

      sub_231228E9C(v19, &qword_27DD43540, &qword_23136CA80);
      result = sub_231228E9C(v21, &qword_27DD43540, &qword_23136CA80);
LABEL_8:
      if (!v5)
      {
        __break(1u);
        return result;
      }

      v13 = *(v9 + 48);
      v15 = *(v9 + 16);
      v14 = *(v9 + 32);
      v16 = *v9;
      v17 = *(v9 - 40);
      *v9 = *v10;
      *(v9 + 16) = v17;
      *(v9 + 32) = *(v9 - 24);
      *(v9 + 48) = *(v9 - 8);
      *v10 = v16;
      *(v9 - 40) = v15;
      *(v9 - 24) = v14;
      v9 -= 56;
      *(v10 + 48) = v13;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_13;
      }
    }

    if (v21[0] < v19[0])
    {
      sub_231228E9C(v19, &qword_27DD43540, &qword_23136CA80);
      result = sub_231228E9C(v21, &qword_27DD43540, &qword_23136CA80);
      if (v11 < v12)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    sub_231228E9C(v19, &qword_27DD43540, &qword_23136CA80);
    result = sub_231228E9C(v21, &qword_27DD43540, &qword_23136CA80);
LABEL_13:
    ++v4;
    v6 += 56;
    --v7;
    if (v4 != v23)
    {
      continue;
    }

    return result;
  }
}

void sub_2312B8CB0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_108:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_150;
    }

    v4 = v96;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_110:
      v89 = v7 + 16;
      v90 = *(v7 + 2);
      for (i = v7; v90 >= 2; v7 = i)
      {
        if (!*a3)
        {
          goto LABEL_147;
        }

        v91 = &v7[16 * v90];
        v92 = *v91;
        v7 = &v89[2 * v90];
        v93 = *(v7 + 1);
        sub_2312B9488((*a3 + 56 * *v91), (*a3 + 56 * *v7), *a3 + 56 * v93, v8);
        if (v4)
        {
          break;
        }

        if (v93 < v92)
        {
          goto LABEL_135;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_136;
        }

        *v91 = v92;
        *(v91 + 1) = v93;
        a2 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_137;
        }

        v90 = *v89 - 1;
        sub_2311E6448(v7 + 16, a2, v7);
        *v89 = v90;
      }

LABEL_118:

      return;
    }

LABEL_144:
    v7 = sub_2311E6430(v7, a2, a3, a4);
    goto LABEL_110;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6;
    v9 = (v6 + 1);
    if ((v6 + 1) >= v5)
    {
      goto LABEL_33;
    }

    v10 = *a3;
    sub_231247A14(*a3 + 56 * v9, v105, &qword_27DD43540, &qword_23136CA80);
    sub_231247A14(v10 + 56 * v8, v103, &qword_27DD43540, &qword_23136CA80);
    if (v104 >= v106)
    {
      v12 = v106 >= v104 && v105[0] < v103[0];
      v11 = v12;
    }

    else
    {
      v11 = 1;
    }

    v99 = v11;
    i = v7;
    sub_231228E9C(v103, &qword_27DD43540, &qword_23136CA80);
    sub_231228E9C(v105, &qword_27DD43540, &qword_23136CA80);
    v13 = (v8 + 2);
    v14 = 56 * v8;
    v15 = v10 + 56 * v8 + 112;
    v16 = 56 * v8 + 56;
    v17 = v9;
    do
    {
      v9 = v13;
      v4 = v17;
      v7 = v16;
      if (v13 >= v5)
      {
        break;
      }

      sub_231247A14(v15, v105, &qword_27DD43540, &qword_23136CA80);
      sub_231247A14(v15 - 56, v103, &qword_27DD43540, &qword_23136CA80);
      if (v104 >= v106)
      {
        v19 = v106 >= v104 && v105[0] < v103[0];
        v18 = v19;
      }

      else
      {
        v18 = 1;
      }

      sub_231228E9C(v103, &qword_27DD43540, &qword_23136CA80);
      sub_231228E9C(v105, &qword_27DD43540, &qword_23136CA80);
      v13 = (v9 + 1);
      v15 += 56;
      v17 = (v4 + 1);
      v16 = (v7 + 56);
    }

    while (v99 == v18);
    if (!v99)
    {
      v7 = i;
LABEL_33:
      v20 = v96;
      goto LABEL_34;
    }

    v20 = v96;
    if (v9 < v8)
    {
      goto LABEL_141;
    }

    if (v8 < v9)
    {
      v21 = v8;
      do
      {
        if (v21 != v4)
        {
          v22 = *a3;
          if (!*a3)
          {
            goto LABEL_148;
          }

          v23 = (v22 + v14);
          v24 = *(v22 + v14 + 48);
          v25 = &v7[v22];
          v27 = v23[1];
          v26 = v23[2];
          v28 = *v23;
          v30 = *(v25 + 1);
          v29 = *(v25 + 2);
          v31 = *v25;
          *(v23 + 6) = *(v25 + 6);
          v23[1] = v30;
          v23[2] = v29;
          *v23 = v31;
          *v25 = v28;
          *(v25 + 1) = v27;
          *(v25 + 2) = v26;
          *(v25 + 6) = v24;
        }

        v21 = (v21 + 1);
        v7 -= 56;
        v14 += 56;
        v12 = v21 < v4;
        v4 = (v4 - 1);
      }

      while (v12);
    }

    v7 = i;
LABEL_34:
    v32 = a3[1];
    if (v9 < v32)
    {
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_140;
      }

      if (v9 - v8 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v9 < v8)
    {
      goto LABEL_139;
    }

    v98 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23126DB78();
      v7 = v87;
    }

    v48 = *(v7 + 2);
    v49 = v48 + 1;
    if (v48 >= *(v7 + 3) >> 1)
    {
      sub_23126DB78();
      v7 = v88;
    }

    *(v7 + 2) = v49;
    v50 = v7 + 32;
    v51 = &v7[16 * v48 + 32];
    *v51 = v8;
    *(v51 + 1) = v98;
    v101 = *a1;
    if (!*a1)
    {
      goto LABEL_149;
    }

    if (v48)
    {
      i = v7;
      while (1)
      {
        v52 = v49 - 1;
        v53 = &v50[16 * v49 - 16];
        v54 = &v7[16 * v49];
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v55 = *(v7 + 4);
          v56 = *(v7 + 5);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_76:
          if (v58)
          {
            goto LABEL_126;
          }

          v70 = *v54;
          v69 = *(v54 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_129;
          }

          v74 = *(v53 + 1);
          v75 = v74 - *v53;
          if (__OFSUB__(v74, *v53))
          {
            goto LABEL_132;
          }

          if (__OFADD__(v72, v75))
          {
            goto LABEL_134;
          }

          if (v72 + v75 >= v57)
          {
            if (v57 < v75)
            {
              v52 = v49 - 2;
            }

            goto LABEL_98;
          }

          goto LABEL_91;
        }

        if (v49 < 2)
        {
          goto LABEL_128;
        }

        v77 = *v54;
        v76 = *(v54 + 1);
        v65 = __OFSUB__(v76, v77);
        v72 = v76 - v77;
        v73 = v65;
LABEL_91:
        if (v73)
        {
          goto LABEL_131;
        }

        v79 = *v53;
        v78 = *(v53 + 1);
        v65 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v65)
        {
          goto LABEL_133;
        }

        if (v80 < v72)
        {
          goto LABEL_105;
        }

LABEL_98:
        if (v52 - 1 >= v49)
        {
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
          goto LABEL_143;
        }

        if (!*a3)
        {
          goto LABEL_146;
        }

        v4 = &v50[16 * v52 - 16];
        v84 = *v4;
        v8 = v52;
        v7 = &v50[16 * v52];
        v85 = *(v7 + 1);
        sub_2312B9488((*a3 + 56 * *v4), (*a3 + 56 * *v7), *a3 + 56 * v85, v101);
        if (v20)
        {
          goto LABEL_118;
        }

        if (v85 < v84)
        {
          goto LABEL_121;
        }

        v86 = *(i + 2);
        if (v8 > v86)
        {
          goto LABEL_122;
        }

        *v4 = v84;
        v4[1] = v85;
        if (v8 >= v86)
        {
          goto LABEL_123;
        }

        v49 = v86 - 1;
        sub_2311E6448(v7 + 16, v86 - 1 - v8, v7);
        v7 = i;
        *(i + 2) = v86 - 1;
        v12 = v86 > 2;
        v20 = 0;
        if (!v12)
        {
          goto LABEL_105;
        }
      }

      v59 = &v50[16 * v49];
      v60 = *(v59 - 8);
      v61 = *(v59 - 7);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_124;
      }

      v64 = *(v59 - 6);
      v63 = *(v59 - 5);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_125;
      }

      v66 = *(v54 + 1);
      v67 = v66 - *v54;
      if (__OFSUB__(v66, *v54))
      {
        goto LABEL_127;
      }

      v65 = __OFADD__(v57, v67);
      v68 = v57 + v67;
      if (v65)
      {
        goto LABEL_130;
      }

      if (v68 >= v62)
      {
        v82 = *v53;
        v81 = *(v53 + 1);
        v65 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v65)
        {
          goto LABEL_138;
        }

        if (v57 < v83)
        {
          v52 = v49 - 2;
        }

        goto LABEL_98;
      }

      goto LABEL_76;
    }

LABEL_105:
    v96 = v20;
    v5 = a3[1];
    v6 = v98;
    if (v98 >= v5)
    {
      goto LABEL_108;
    }
  }

  v33 = v8 + a4;
  if (__OFADD__(v8, a4))
  {
    goto LABEL_142;
  }

  if (v33 >= v32)
  {
    v33 = a3[1];
  }

  if (v33 < v8)
  {
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  if (v9 == v33)
  {
    goto LABEL_55;
  }

  v97 = v20;
  i = v7;
  v34 = *a3;
  v35 = *a3 + 56 * v9;
  v100 = v33;
  v36 = (v8 - v9);
LABEL_43:
  v37 = v9;
  v4 = v36;
  v38 = v35;
  while (1)
  {
    sub_231247A14(v38, v105, &qword_27DD43540, &qword_23136CA80);
    v39 = v38 - 56;
    sub_231247A14(v38 - 56, v103, &qword_27DD43540, &qword_23136CA80);
    v40 = v106;
    v41 = v104;
    if (v104 >= v106)
    {
      if (v105[0] >= v103[0])
      {
        v4 = &qword_27DD43540;
        sub_231228E9C(v103, &qword_27DD43540, &qword_23136CA80);
        sub_231228E9C(v105, &qword_27DD43540, &qword_23136CA80);
LABEL_53:
        v9 = v37 + 1;
        v35 += 56;
        v36 = (v36 - 1);
        if (v37 + 1 == v100)
        {
          v9 = v100;
          v7 = i;
          v20 = v97;
          goto LABEL_55;
        }

        goto LABEL_43;
      }

      sub_231228E9C(v103, &qword_27DD43540, &qword_23136CA80);
      sub_231228E9C(v105, &qword_27DD43540, &qword_23136CA80);
      if (v40 < v41)
      {
        goto LABEL_53;
      }
    }

    else
    {
      sub_231228E9C(v103, &qword_27DD43540, &qword_23136CA80);
      sub_231228E9C(v105, &qword_27DD43540, &qword_23136CA80);
    }

    if (!v34)
    {
      break;
    }

    v42 = *(v38 + 48);
    v44 = *(v38 + 16);
    v43 = *(v38 + 32);
    v45 = *v38;
    v46 = *(v38 - 40);
    *v38 = *v39;
    *(v38 + 16) = v46;
    *(v38 + 32) = *(v38 - 24);
    *(v38 + 48) = *(v38 - 8);
    *v39 = v45;
    *(v38 - 40) = v44;
    *(v38 - 24) = v43;
    v38 -= 56;
    *(v39 + 48) = v42;
    v47 = __CFADD__(v4, 1);
    v4 = (v4 + 1);
    if (v47)
    {
      goto LABEL_53;
    }
  }

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
}

uint64_t sub_2312B9488(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 56;
  v9 = (a3 - a2) / 56;
  if (v8 < v9)
  {
    sub_23126F804(a1, (a2 - a1) / 56, a4);
    v10 = &v4[56 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_41;
      }

      sub_231247A14(v6, v37, &qword_27DD43540, &qword_23136CA80);
      sub_231247A14(v4, v35, &qword_27DD43540, &qword_23136CA80);
      v12 = v38;
      v13 = v36;
      if (v36 < v38)
      {
        break;
      }

      if (v37[0] >= v35[0])
      {
        sub_231228E9C(v35, &qword_27DD43540, &qword_23136CA80);
        sub_231228E9C(v37, &qword_27DD43540, &qword_23136CA80);
      }

      else
      {
        sub_231228E9C(v35, &qword_27DD43540, &qword_23136CA80);
        sub_231228E9C(v37, &qword_27DD43540, &qword_23136CA80);
        if (v12 >= v13)
        {
          goto LABEL_9;
        }
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 56;
      if (!v15)
      {
        goto LABEL_10;
      }

LABEL_11:
      v7 += 56;
    }

    sub_231228E9C(v35, &qword_27DD43540, &qword_23136CA80);
    sub_231228E9C(v37, &qword_27DD43540, &qword_23136CA80);
LABEL_9:
    v14 = v6;
    v15 = v7 == v6;
    v6 += 56;
    if (v15)
    {
      goto LABEL_11;
    }

LABEL_10:
    v16 = *v14;
    v17 = *(v14 + 1);
    v18 = *(v14 + 2);
    *(v7 + 6) = *(v14 + 6);
    *(v7 + 1) = v17;
    *(v7 + 2) = v18;
    *v7 = v16;
    goto LABEL_11;
  }

  sub_23126F804(a2, (a3 - a2) / 56, a4);
  v19 = &v4[56 * v9];
LABEL_20:
  v20 = (v6 - 56);
  v5 -= 56;
  v21 = (v19 - 56);
  for (i = v6; ; v6 = i)
  {
    v10 = (v21 + 56);
    if (v21 + 56 <= v4 || v6 <= v7)
    {
      break;
    }

    sub_231247A14(v21, v37, &qword_27DD43540, &qword_23136CA80);
    v23 = v20;
    sub_231247A14(v20, v35, &qword_27DD43540, &qword_23136CA80);
    v24 = v36 < v38 || v38 >= v36 && v37[0] < v35[0];
    sub_231228E9C(v35, &qword_27DD43540, &qword_23136CA80);
    sub_231228E9C(v37, &qword_27DD43540, &qword_23136CA80);
    if (v24)
    {
      v19 = (v21 + 56);
      v6 = v23;
      if ((v5 + 56) != i)
      {
        v29 = *v23;
        v30 = *(v23 + 16);
        v31 = *(v23 + 32);
        *(v5 + 48) = *(v23 + 48);
        *(v5 + 16) = v30;
        *(v5 + 32) = v31;
        *v5 = v29;
        v6 = v23;
      }

      goto LABEL_20;
    }

    if (v10 != (v5 + 56))
    {
      v26 = *v21;
      v27 = *(v21 + 16);
      v28 = *(v21 + 32);
      *(v5 + 48) = *(v21 + 48);
      *(v5 + 16) = v27;
      *(v5 + 32) = v28;
      *v5 = v26;
    }

    v5 -= 56;
    v21 -= 56;
    v20 = v23;
  }

LABEL_41:
  v32 = (v10 - v4) / 56;
  if (v6 != v4 || v6 >= &v4[56 * v32])
  {
    memmove(v6, v4, 56 * v32);
  }

  return 1;
}

void *sub_2312B97B4(void *result)
{
  v1 = 0;
  v2 = 0;
  v3 = result[2];
  v4 = (result + 4);
  v5 = MEMORY[0x277D84F90];
  v6 = MEMORY[0x277D84F90] + 32;
  v7 = &qword_27DD434E8;
  v25 = v3;
  while (1)
  {
    if (v3 == v2)
    {
      v22 = v5[3];
      if (v22 >= 2)
      {
        v23 = v22 >> 1;
        v18 = __OFSUB__(v23, v1);
        v24 = v23 - v1;
        if (v18)
        {
          goto LABEL_25;
        }

        v5[2] = v24;
      }

      return v5;
    }

    *&v26[0] = v2;
    result = sub_231247A14(v4, v26 + 8, v7, &unk_23136E480);
    v28 = v26[0];
    v29 = v26[1];
    v30 = v26[2];
    v31 = v27;
    if (!v1)
    {
      v8 = v5[3];
      if (((v8 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_24;
      }

      v9 = v7;
      v10 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if (v10 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43538, &qword_231374A70);
      v12 = swift_allocObject();
      v13 = (_swift_stdlib_malloc_size(v12) - 32) / 56;
      v12[2] = v11;
      v12[3] = 2 * v13;
      v14 = (v12 + 4);
      v15 = v5[3];
      v16 = v15 >> 1;
      if (v5[2])
      {
        if (v12 != v5 || v14 >= &v5[7 * v16 + 4])
        {
          memmove(v12 + 4, v5 + 4, 56 * v16);
        }

        v5[2] = 0;
      }

      v6 = v14 + 56 * v16;
      v1 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - (v15 >> 1);

      v5 = v12;
      v7 = v9;
      v3 = v25;
    }

    v18 = __OFSUB__(v1--, 1);
    if (v18)
    {
      break;
    }

    v19 = v28;
    v20 = v29;
    v21 = v30;
    *(v6 + 48) = v31;
    *(v6 + 16) = v20;
    *(v6 + 32) = v21;
    *v6 = v19;
    v6 += 56;
    v4 += 48;
    ++v2;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_2312B9A18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = a1;
  v42 = a2;
  v4 = sub_2313698C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v41 = &v38 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  sub_231343BB8(v45);
  sub_231369100();
  v12 = sub_2313698A0();
  v13 = sub_23136A3A0();
  if (os_log_type_enabled(v12, v13))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_11_8(&dword_2311CB000, v14, v15, "fetching ECDF data from trial");
    OUTLINED_FUNCTION_29();
  }

  v16 = *(v5 + 8);
  v16(v11, v4);
  v17 = v46;
  v18 = v47;
  __swift_project_boxed_opaque_existential_1(v45, v46);
  v19 = (*(v18 + 48))(0x6174614466646365, 0xE800000000000000, 0xD000000000000019, 0x800000023137A580, v17, v18);
  v20 = static TrialUtils.getDirectoryPath(triLevel:)(v19);
  if (!v3)
  {
    v38 = v16;
    v39 = v4;
    if (v21)
    {
      v43 = v20;
      v44 = v21;
      MEMORY[0x23192A730](0x746144666463652FLL, 0xEA00000000002F61);
      v22 = v43;
      v23 = v44;
      v24 = v41;
      sub_231369100();
      sub_231369EE0();
      v25 = sub_2313698A0();
      v26 = sub_23136A3A0();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v40 = v22;
        v28 = v27;
        v29 = swift_slowAlloc();
        v43 = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_2311CFD58(v40, v23, &v43);
        _os_log_impl(&dword_2311CB000, v25, v26, "found ecdfLocation as %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v29);
        OUTLINED_FUNCTION_29();
        v22 = v40;
        OUTLINED_FUNCTION_29();
      }

      v38(v24, v39);
      sub_23134EDB8(v48, v22, v23, v42);
    }

    else
    {
      v30 = v40;
      sub_231369100();
      v31 = sub_2313698A0();
      v32 = sub_23136A3A0();
      if (os_log_type_enabled(v31, v32))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_11_8(&dword_2311CB000, v33, v34, "User did not set ECDF data in trial rollout/experiment, falling back to using default normalizer");
        OUTLINED_FUNCTION_29();
      }

      v38(v30, v39);
      v35 = v2[10];
      v36 = v2[11];
      __swift_project_boxed_opaque_existential_1(v2 + 7, v35);
      (*(v36 + 8))(v48, v35, v36);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v45);
}

uint64_t sub_2312B9E74()
{
  v1[17] = v0;
  v2 = sub_231367C70();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312B9F2C()
{
  if (*(*(v0 + 136) + 368) == 1)
  {
    v3 = type metadata accessor for DefaultCategoryService();
    v4 = &off_2845F3230;
  }

  else
  {
    v3 = type metadata accessor for NoOpCategoryService();
    v4 = &off_2845F3220;
  }

  v5 = OUTLINED_FUNCTION_15_16(v3);
  *(v0 + 40) = v3;
  *(v0 + 48) = v4;
  *(v0 + 16) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43290, &qword_23136BD40);
  swift_allocObject();
  *(v0 + 168) = sub_2311E98BC();
  v6 = sub_2312BA9EC(v0 + 16);
  *(v0 + 176) = v6;
  v7 = *(v6 + 16);
  *(v0 + 184) = v7;
  if (v7)
  {
    *(v0 + 296) = *MEMORY[0x277D60AE0];
    *(v0 + 192) = 0;
    sub_2311CF324(v6 + 32, v0 + 56);
    v8 = OUTLINED_FUNCTION_16_20();
    v9(v8);
    v10 = OUTLINED_FUNCTION_2_19();
LABEL_16:
    v12 = 0;

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  v10 = sub_2312BAE0C(v0 + 16);
  *(v0 + 200) = v10;
  v13 = *(v10 + 16);
  *(v0 + 208) = v13;
  if (!v13)
  {
    v19 = *(v0 + 168);

LABEL_15:
    *(v0 + 272) = v19;
    sub_231367C40();
    v28 = type metadata accessor for WritingToolSignalExtractor();
    v29 = OUTLINED_FUNCTION_15_16(v28);
    v10 = OUTLINED_FUNCTION_0_30(v29);
    v11 = v19;
    goto LABEL_16;
  }

  v14 = 0;
  *(v0 + 300) = *MEMORY[0x277D60DB8];
  *(v0 + 304) = *MEMORY[0x277D60AC0];
  while (1)
  {
    *(v0 + 216) = v14;
    if (v14 >= *(v10 + 16))
    {
      break;
    }

    sub_2311CF324(v10 + 40 * v14 + 32, v0 + 96);
    v15 = sub_231368200();
    OUTLINED_FUNCTION_11_20(v15);
    if (v16)
    {
      v20 = sub_231368210();
      OUTLINED_FUNCTION_10_21(v20);
      *(v0 + 248) = v21;
      OUTLINED_FUNCTION_9_21();
      OUTLINED_FUNCTION_8_21(*(v22 + 72));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8);
      sub_2313681A0();
      OUTLINED_FUNCTION_7_0();
      (*(v23 + 104))(v2, v1);
      v24 = OUTLINED_FUNCTION_14_21();
      v25(v24);
      v26 = OUTLINED_FUNCTION_15_19();
      v27(v26);
      v10 = OUTLINED_FUNCTION_1_28();
      v11 = v31;
      goto LABEL_16;
    }

    v17 = *(v0 + 208);
    v18 = *(v0 + 216) + 1;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    if (v18 == v17)
    {

      v19 = *(v0 + 168);
      goto LABEL_15;
    }

    v14 = *(v0 + 216) + 1;
    v10 = *(v0 + 200);
  }

  __break(1u);
  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2312BA204()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[19];
  v4 = __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  OUTLINED_FUNCTION_13_17(v4);

  (*(v3 + 8))(v1, v2);
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312BA2A4()
{
  v3 = *(v0 + 184);
  v4 = *(v0 + 192) + 1;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  if (v4 != v3)
  {
    v14 = *(v0 + 192);
    *(v0 + 192) = v14 + 1;
    sub_2311CF324(*(v0 + 176) + 40 * v14 + 72, v0 + 56);
    v15 = OUTLINED_FUNCTION_16_20();
    v16(v15);
    v5 = OUTLINED_FUNCTION_2_19();
LABEL_13:
    v7 = 0;

    return MEMORY[0x2822009F8](v5, v6, v7);
  }

  v5 = sub_2312BAE0C(v0 + 16);
  *(v0 + 200) = v5;
  v8 = *(v5 + 16);
  *(v0 + 208) = v8;
  if (!v8)
  {
    v17 = *(v0 + 168);

LABEL_12:
    *(v0 + 272) = v17;
    sub_231367C40();
    v26 = type metadata accessor for WritingToolSignalExtractor();
    v27 = OUTLINED_FUNCTION_15_16(v26);
    v5 = OUTLINED_FUNCTION_0_30(v27);
    v6 = v17;
    goto LABEL_13;
  }

  v9 = 0;
  *(v0 + 300) = *MEMORY[0x277D60DB8];
  *(v0 + 304) = *MEMORY[0x277D60AC0];
  while (1)
  {
    *(v0 + 216) = v9;
    if (v9 >= *(v5 + 16))
    {
      break;
    }

    sub_2311CF324(v5 + 40 * v9 + 32, v0 + 96);
    v10 = sub_231368200();
    OUTLINED_FUNCTION_11_20(v10);
    if (v11)
    {
      v18 = sub_231368210();
      OUTLINED_FUNCTION_10_21(v18);
      *(v0 + 248) = v19;
      OUTLINED_FUNCTION_9_21();
      OUTLINED_FUNCTION_8_21(*(v20 + 72));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8);
      sub_2313681A0();
      OUTLINED_FUNCTION_7_0();
      (*(v21 + 104))(v2, v1);
      v22 = OUTLINED_FUNCTION_14_21();
      v23(v22);
      v24 = OUTLINED_FUNCTION_15_19();
      v25(v24);
      v5 = OUTLINED_FUNCTION_1_28();
      v6 = v29;
      goto LABEL_13;
    }

    v12 = *(v0 + 208);
    v13 = *(v0 + 216) + 1;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    if (v13 == v12)
    {

      v17 = *(v0 + 168);
      goto LABEL_12;
    }

    v9 = *(v0 + 216) + 1;
    v5 = *(v0 + 200);
  }

  __break(1u);
  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312BA510()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[19];
  v4 = __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  OUTLINED_FUNCTION_13_17(v4);

  (*(v3 + 8))(v1, v2);
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312BA5B0()
{
  v1 = *(v0 + 264) + 1;
  if (v1 == *(v0 + 232))
  {
    while (1)
    {

      v2 = *(v0 + 208);
      v3 = *(v0 + 216) + 1;
      v4 = __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
      if (v3 == v2)
      {

        v14 = *(v0 + 168);
        *(v0 + 272) = v14;
        sub_231367C40();
        v15 = type metadata accessor for WritingToolSignalExtractor();
        v16 = OUTLINED_FUNCTION_15_16(v15);
        v4 = OUTLINED_FUNCTION_0_30(v16);
        v5 = v14;
        goto LABEL_10;
      }

      v7 = *(v0 + 216) + 1;
      *(v0 + 216) = v7;
      v8 = *(v0 + 200);
      if (v7 >= *(v8 + 16))
      {
        break;
      }

      sub_2311CF324(v8 + 40 * v7 + 32, v0 + 96);
      v9 = sub_231368200();
      OUTLINED_FUNCTION_11_20(v9);
      if (v10)
      {
        v17 = sub_231368210();
        v1 = 0;
        *(v0 + 240) = v17;
        v29 = v17;
        v18 = *(v17 - 8);
        v12 = v18;
        *(v0 + 248) = v18;
        v13 = *(v18 + 80);
        *(v0 + 308) = v13;
        v11 = *(v18 + 72);
        *(v0 + 256) = v11;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = *(v0 + 248);
    v11 = *(v0 + 256);
    LOBYTE(v13) = *(v0 + 308);
    v29 = *(v0 + 240);
    v9 = *(v0 + 224);
LABEL_9:
    *(v0 + 264) = v1;
    v19 = *(v0 + 304);
    v20 = *(v0 + 300);
    v22 = *(v0 + 160);
    v21 = *(v0 + 168);
    v23 = *(v0 + 144);
    v24 = *(v0 + 152);
    v25 = v9 + ((v13 + 32) & ~v13) + v11 * v1;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8) + 48);
    sub_2313681A0();
    OUTLINED_FUNCTION_7_0();
    (*(v27 + 104))(v22, v20);
    (*(v12 + 16))(v22 + v26, v25, v29);
    (*(v24 + 104))(v22, v19, v23);
    v4 = OUTLINED_FUNCTION_1_28();
    v5 = v21;
LABEL_10:
    v6 = 0;
  }

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312BA7FC()
{
  v1 = v0[35];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43010, qword_231374B70);
  v6 = swift_allocBox();
  (*(v5 + 16))(v7, v3, v4);
  sub_2312BB0D8(v1, v6, v2);

  (*(v5 + 8))(v3, v4);
  v8 = v0[34];

  return MEMORY[0x2822009F8](sub_2312BA8EC, v8, 0);
}

uint64_t sub_2312BA8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 288) = sub_2311E9B44(a1, a2, a3, a4, a5);
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312BA950()
{
  v1 = v0[36];

  type metadata accessor for PipelineConfigurationSignalExtractorProvider();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_2312BA9EC(uint64_t a1)
{
  sub_2311CF324(a1, &v39);
  v2 = type metadata accessor for MentionedAppSignalExtractor();
  v3 = swift_allocObject();
  sub_2311D38A8(&v39, v3 + 16);
  v36 = type metadata accessor for HomeScreenSignalExtractor();
  v37 = OUTLINED_FUNCTION_15_16(v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F30, &unk_231370D70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23136C1C0;
  *(v4 + 56) = v2;
  *(v4 + 64) = sub_2312BB604(qword_280F7F4C8, type metadata accessor for MentionedAppSignalExtractor, &unk_231370840);
  *(v4 + 32) = v3;
  sub_2311CF324(a1, &v39);
  v5 = type metadata accessor for OpenAppSignalExtractor();
  v6 = swift_allocObject();
  sub_2311D38A8(&v39, v6 + 16);
  *(v6 + 56) = 1;
  *(v4 + 96) = v5;
  OUTLINED_FUNCTION_3_25();
  *(v4 + 104) = sub_2312BB604(v7, v8, &unk_231376348);
  *(v4 + 72) = v6;
  v38 = v3;

  sub_231367F60();

  v9 = v40;
  v35 = v41;
  v10 = __swift_project_boxed_opaque_existential_1(&v39, v40);
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = *(v11 + 16);
  v15(&v35 - v14, v13);
  sub_23126DE08(0);
  v17 = v16;
  v42 = v16;
  v19 = *(v16 + 16);
  v18 = *(v16 + 24);
  if (v19 >= v18 >> 1)
  {
    sub_23126DE08(v18 > 1);
    v17 = v16;
    v42 = v16;
  }

  v20 = MEMORY[0x28223BE20](v16);
  (v15)(&v35 - v14, &v35 - v14, v9, v20);
  sub_23120FF64(v19, &v35 - v14, &v42, v9, *(v35 + 8));
  (*(v11 + 8))(&v35 - v14, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(&v39);
  v22 = *(v17 + 16);
  v21 = *(v17 + 24);
  v23 = v22 + 1;
  v24 = v37;

  if (v22 >= v21 >> 1)
  {
    sub_23126DE08(v21 > 1);
    v17 = v32;
  }

  v40 = v36;
  OUTLINED_FUNCTION_4_20();
  v41 = sub_2312BB604(v25, v26, &unk_231374800);
  *&v39 = v24;
  *(v17 + 16) = v23;
  sub_2311D38A8(&v39, v17 + 40 * v22 + 32);
  v27 = type metadata accessor for ConversationalContinuerSignalExtractor();
  v28 = OUTLINED_FUNCTION_15_16(v27);
  v29 = *(v17 + 24);
  v30 = v22 + 2;
  if (v30 > (v29 >> 1))
  {
    v33 = OUTLINED_FUNCTION_7_17(v29);
    sub_23126DE08(v33);
    v17 = v34;
  }

  v40 = v27;
  v41 = sub_2312BB604(qword_280F7D130, type metadata accessor for ConversationalContinuerSignalExtractor, &unk_231376C88);
  *&v39 = v28;
  *(v17 + 16) = v30;
  sub_2311D38A8(&v39, v17 + 40 * v23 + 32);
  return v17;
}

uint64_t sub_2312BAE0C(uint64_t a1)
{
  v2 = type metadata accessor for HomeScreenSignalExtractor();
  v3 = OUTLINED_FUNCTION_15_16(v2);
  v4 = type metadata accessor for AppEntityCountBasedSignalExtractor();
  v5 = swift_allocObject();
  type metadata accessor for AppEntityTypeTransformers();
  swift_allocObject();
  *(v5 + 16) = sub_23123E6EC();
  sub_23126DE08(0);
  v7 = v6;
  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    v21 = OUTLINED_FUNCTION_7_17(v8);
    sub_23126DE08(v21);
    v7 = v22;
  }

  v27 = v4;
  v28 = sub_2312BB604(qword_280F7D7E8, type metadata accessor for AppEntityCountBasedSignalExtractor, &unk_23136FA20);
  *&v26 = v5;
  *(v7 + 16) = v10;
  sub_2311D38A8(&v26, v7 + 40 * v9 + 32);
  v11 = *(v7 + 24);
  v12 = v9 + 2;

  if ((v9 + 2) > (v11 >> 1))
  {
    sub_23126DE08(v11 > 1);
    v7 = v23;
  }

  v27 = v2;
  OUTLINED_FUNCTION_4_20();
  v28 = sub_2312BB604(v13, v14, &unk_231374800);
  *&v26 = v3;
  *(v7 + 16) = v12;
  sub_2311D38A8(&v26, v7 + 40 * v10 + 32);
  sub_2311CF324(a1, &v26);
  v15 = type metadata accessor for OpenAppSignalExtractor();
  v16 = swift_allocObject();
  sub_2311D38A8(&v26, v16 + 16);
  *(v16 + 56) = 1;
  v17 = *(v7 + 24);
  if ((v9 + 3) > (v17 >> 1))
  {
    v24 = OUTLINED_FUNCTION_7_17(v17);
    sub_23126DE08(v24);
    v7 = v25;
  }

  v27 = v15;
  OUTLINED_FUNCTION_3_25();
  v28 = sub_2312BB604(v18, v19, &unk_231376348);
  *&v26 = v16;
  *(v7 + 16) = v9 + 3;
  sub_2311D38A8(&v26, v7 + 40 * v12 + 32);
  return v7;
}

uint64_t sub_2312BB068()
{
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  sub_2311F07B0(__dst);
  return swift_deallocClassInstance();
}

uint64_t sub_2312BB0D8(uint64_t a1, unint64_t a2, void *a3)
{
  v36 = sub_2313698C0();
  v6 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for WritingToolSignalExtractor();
  v47[3] = v38;
  v37 = sub_2312BB604(qword_280F7F7B0, type metadata accessor for WritingToolSignalExtractor, &unk_231374BE0);
  v47[4] = v37;
  v47[0] = a1;

  sub_2313690F0();
  sub_2311CF324(v47, &v44);

  v9 = sub_2313698A0();
  v10 = sub_23136A3A0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35 = a1;
    v34[0] = v12;
    *&v39 = v12;
    *v11 = 136315650;
    sub_2311CF324(&v44, &v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43028, &qword_23136B920);
    v13 = sub_23136A010();
    v34[1] = a2 & 0x1FFFFFFFFFFFFFFFLL;
    v14 = v13;
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1Tm(&v44);
    v17 = sub_2311CFD58(v14, v16, &v39);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2080;
    sub_23120EB78();
    v20 = sub_2311CFD58(v18, v19, &v39);

    *(v11 + 14) = v20;
    *(v11 + 22) = 2080;
    *(v11 + 24) = sub_2311CFD58(a3[16], a3[17], &v39);
    _os_log_impl(&dword_2311CB000, v9, v10, "adding %s against %s for provider of type %s", v11, 0x20u);
    v21 = v34[0];
    swift_arrayDestroy();
    a1 = v35;
    MEMORY[0x23192B930](v21, -1, -1);
    MEMORY[0x23192B930](v11, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v44);
  }

  (*(v6 + 8))(v8, v36);
  swift_beginAccess();
  v22 = a3[14];
  sub_231369EE0();
  v23 = sub_2312177D0(a2, v22);

  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_23126DE08(0);
    v24 = v32;
  }

  v26 = *(v24 + 16);
  v25 = *(v24 + 24);
  if (v26 >= v25 >> 1)
  {
    sub_23126DE08(v25 > 1);
    v24 = v33;
  }

  *(&v45 + 1) = v38;
  v46 = v37;
  *&v44 = a1;
  *(v24 + 16) = v26 + 1;
  sub_2311D38A8(&v44, v24 + 40 * v26 + 32);
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  *&v41 = a3[14];
  sub_231259C20();
  a3[14] = v41;
  swift_endAccess();
  sub_231210ACC();
  if (a2 >> 61 == 6)
  {
    sub_231210ACC();
    v27 = type metadata accessor for JointProviderKeyExtractor();
    v28 = swift_allocObject();
    v29 = v45;
    *(v28 + 16) = v44;
    *(v28 + 32) = v29;
    v30 = v42;
    *(v28 + 56) = v41;
    *(v28 + 48) = v46;
    *(v28 + 72) = v30;
    *(v28 + 88) = v43;
    *(&v45 + 1) = v27;
    v46 = &off_2845F5A70;
    *&v44 = v28;
  }

  sub_2312108A0(&v44, &v39);
  if (v40)
  {
    sub_2311D38A8(&v39, &v41);
    __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
    sub_23120E294();
    sub_231210910(&v44);
    __swift_destroy_boxed_opaque_existential_1Tm(&v41);
  }

  else
  {
    sub_231210910(&v44);
    sub_231210910(&v39);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v47);
}

uint64_t sub_2312BB604(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_13_17(uint64_t a1)
{

  sub_231210180(v1, a1, v2, v3, v4);
}

uint64_t sub_2312BB684(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_231367C70();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312BB750, 0, 0);
}

uint64_t sub_2312BB750()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  sub_2313677D0();
  sub_231367C40();
  v5 = sub_231367C60();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D60, &qword_231370690);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2313707C0;
    sub_2313692F0();
    *(v7 + 32) = sub_231369290();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_2312BB8BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23120B320;

  return sub_2312BB684(a1);
}

void sub_2312BB950()
{
  sub_2312BB9DC(qword_280F7F7B0, &unk_231374BE0);

  JUMPOUT(0x2319284B0);
}

uint64_t sub_2312BB9DC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WritingToolSignalExtractor();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2312BBA1C()
{
  OUTLINED_FUNCTION_11_0();
  v88 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_4();
  v5 = v4 - v3;
  v6 = sub_231369D60();
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_22();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v84 = v78 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44628, &qword_231374C20);
  v16 = OUTLINED_FUNCTION_40_0(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_22();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v96 = (v78 - v21);
  v22 = sub_2313699D0();
  v24 = 0;
  v26 = v22 + 64;
  v25 = *(v22 + 64);
  v85 = v8;
  v86 = v22;
  v27 = 1 << *(v22 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v25;
  v30 = (v27 + 63) >> 6;
  v82 = v8 + 16;
  v95 = (v8 + 32);
  v91 = v8 + 8;
  v87 = (v1 + 8);
  v80 = MEMORY[0x277D84F98];
  *&v23 = 136315138;
  v81 = v23;
  v93 = v6;
  v94 = v5;
  v83 = v19;
  v89 = v30;
  v90 = v22 + 64;
  v92 = v12;
  while (2)
  {
    v31 = v96;
    if (!v29)
    {
      goto LABEL_6;
    }

    while (1)
    {
      v32 = v24;
LABEL_10:
      v33 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      v34 = v33 | (v32 << 6);
      v35 = v85;
      v36 = (*(v86 + 48) + 16 * v34);
      v38 = *v36;
      v37 = v36[1];
      v39 = v84;
      (*(v85 + 16))(v84, *(v86 + 56) + *(v85 + 72) * v34, v6);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44630, qword_231374C28);
      v41 = *(v40 + 48);
      v42 = v83;
      *v83 = v38;
      *(v42 + 1) = v37;
      v43 = v39;
      v19 = v42;
      (*(v35 + 32))(&v42[v41], v43, v6);
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v40);
      sub_231369EE0();
      v5 = v94;
      v31 = v96;
LABEL_11:
      sub_2312BD46C(v19, v31);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44630, qword_231374C28);
      if (__swift_getEnumTagSinglePayload(v31, 1, v44) == 1)
      {

        OUTLINED_FUNCTION_9_0();
        return;
      }

      v45 = v31;
      v47 = *v31;
      v46 = v31[1];
      (*v95)(v12, v45 + *(v44 + 48), v6);
      sub_2312BC08C();
      if (!v49)
      {
        goto LABEL_17;
      }

      v6 = v48;
      v12 = v49;
      v50 = HIBYTE(v49) & 0xF;
      if ((v49 & 0x2000000000000000) == 0)
      {
        v50 = v48 & 0xFFFFFFFFFFFFLL;
      }

      if (v50)
      {
        break;
      }

LABEL_17:
      sub_231369130();
      sub_231369EE0();
      v51 = sub_2313698A0();
      v6 = sub_23136A3A0();

      if (os_log_type_enabled(v51, v6))
      {
        v12 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v97 = v52;
        *v12 = v81;
        v53 = sub_2311CFD58(v47, v46, &v97);

        *(v12 + 4) = v53;
        _os_log_impl(&dword_2311CB000, v51, v6, "toolInvocationParametersDisplayStrings(): Cannot get display string for parameterKey %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v52);
        v5 = v94;
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_29();
      }

      else
      {
      }

      (*v87)(v5, v88);
      v54 = OUTLINED_FUNCTION_3_26();
      v55(v54);
      v31 = v96;
      v30 = v89;
      v26 = v90;
      if (!v29)
      {
LABEL_6:
        while (1)
        {
          v32 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v32 >= v30)
          {
            v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44630, qword_231374C28);
            __swift_storeEnumTagSinglePayload(v19, 1, 1, v56);
            v29 = 0;
            goto LABEL_11;
          }

          v29 = *(v26 + 8 * v32);
          ++v24;
          if (v29)
          {
            v24 = v32;
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_34;
      }
    }

    v57 = v80;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v97 = v57;
    v58 = sub_231215F6C(v47, v46);
    v60 = *(v57 + 16);
    v61 = (v59 & 1) == 0;
    v62 = __OFADD__(v60, v61);
    v63 = v60 + v61;
    if (v62)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      break;
    }

    v64 = v58;
    LODWORD(v80) = v59;
    v78[1] = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43700, &qword_23136D528);
    if ((sub_23136A700() & 1) == 0)
    {
      if (v80)
      {
        goto LABEL_30;
      }

LABEL_27:
      v67 = v97;
      v97[(v64 >> 6) + 8] |= 1 << v64;
      v68 = (*(v67 + 48) + 16 * v64);
      *v68 = v47;
      v68[1] = v46;
      v69 = v67;
      v70 = (*(v67 + 56) + 16 * v64);
      *v70 = v6;
      v70[1] = v12;
      v71 = OUTLINED_FUNCTION_3_26();
      v72(v71);
      v73 = *(v69 + 16);
      v62 = __OFADD__(v73, 1);
      v74 = v73 + 1;
      if (!v62)
      {
        v80 = v69;
        *(v69 + 16) = v74;
        goto LABEL_31;
      }

      goto LABEL_35;
    }

    v65 = sub_231215F6C(v47, v46);
    if ((v80 & 1) == (v66 & 1))
    {
      v64 = v65;
      if ((v80 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_30:

      v80 = v97;
      v75 = (v97[7] + 16 * v64);
      *v75 = v6;
      v75[1] = v12;

      v76 = OUTLINED_FUNCTION_3_26();
      v77(v76);
LABEL_31:
      v30 = v89;
      v26 = v90;
      continue;
    }

    break;
  }

  sub_23136A970();
  __break(1u);
}

void sub_2312BC08C()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v1;
  v3 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_6_18();
  v7 = sub_231369D00();
  OUTLINED_FUNCTION_0_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_4();
  v13 = v12 - v11;
  v14 = sub_231369D60();
  OUTLINED_FUNCTION_0_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_4();
  v20 = v19 - v18;
  (*(v16 + 16))(v19 - v18, v2, v14);
  if ((*(v16 + 88))(v20, v14) == *MEMORY[0x277D72E38])
  {
    (*(v16 + 96))(v20, v14);
    v21 = OUTLINED_FUNCTION_9_22();
    v22(v21);
    sub_2312BC3E0();
    (*(v9 + 8))(v13, v7);
  }

  else
  {
    sub_231369130();
    v23 = sub_2313698A0();
    v24 = sub_23136A3A0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v25 = 136315138;
      v31 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44620, &qword_231374C18);
      v26 = sub_23136A010();
      v28 = v5;
      v29 = sub_2311CFD58(v26, v27, &v31);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_2311CB000, v23, v24, "displayStringForConcreteResolvable(): not handling for case: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(v28 + 8))(v0, v3);
    }

    else
    {

      (*(v5 + 8))(v0, v3);
    }

    (*(v16 + 8))(v20, v14);
  }

  OUTLINED_FUNCTION_9_0();
}

void sub_2312BC3E0()
{
  OUTLINED_FUNCTION_11_0();
  v102 = v1;
  sub_231369BE0();
  OUTLINED_FUNCTION_0_0();
  v92 = v3;
  v93 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_4();
  v91 = v5 - v4;
  OUTLINED_FUNCTION_18();
  sub_231369C00();
  OUTLINED_FUNCTION_0_0();
  v98 = v7;
  v99 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  v97 = v9 - v8;
  OUTLINED_FUNCTION_18();
  v10 = sub_231369CA0();
  OUTLINED_FUNCTION_0_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_4();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C40, &qword_231378460);
  v18 = OUTLINED_FUNCTION_40_0(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_22();
  v90 = v19 - v20;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v21);
  v96 = &v89 - v22;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v23);
  v25 = &v89 - v24;
  sub_231369B90();
  OUTLINED_FUNCTION_0_0();
  v100 = v27;
  v101 = v26;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_4();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  v32 = OUTLINED_FUNCTION_40_0(v31);
  MEMORY[0x28223BE20](v32);
  v89 = &v89 - v33;
  OUTLINED_FUNCTION_18();
  sub_231369B70();
  OUTLINED_FUNCTION_0_0();
  v94 = v35;
  v95 = v34;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_6_18();
  v36 = sub_231369D00();
  OUTLINED_FUNCTION_0_0();
  v38 = v37;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_22();
  v42 = v40 - v41;
  v44 = MEMORY[0x28223BE20](v43);
  v46 = &v89 - v45;
  (*(v38 + 16))(&v89 - v45, v102, v36, v44);
  v47 = (*(v38 + 88))(v46, v36);
  if (v47 == *MEMORY[0x277D72A58])
  {
    v48 = OUTLINED_FUNCTION_5_19();
    v49(v48);
    v50 = swift_projectBox();
    (*(v12 + 16))(v16, v50, v10);
    sub_2312BCC10();
    (*(v12 + 8))(v16, v10);
LABEL_17:

    goto LABEL_18;
  }

  if (v47 == *MEMORY[0x277D729E8])
  {
    v51 = OUTLINED_FUNCTION_5_19();
    v52(v51);
    v53 = OUTLINED_FUNCTION_18_17();
    v55 = v100;
    v54 = v101;
    (*(v100 + 16))(v30, v53, v101);
    sub_231369B80();
    v56 = sub_231369E00();
    if (__swift_getEnumTagSinglePayload(v25, 1, v56) != 1)
    {
      sub_231369DE0();
      (*(v55 + 8))(v30, v54);
      OUTLINED_FUNCTION_26_0();
      (*(v67 + 8))(v25, v56);
      goto LABEL_17;
    }

    (*(v55 + 8))(v30, v54);
    v57 = &qword_27DD43C40;
    v58 = &qword_231378460;
    v59 = v25;
    goto LABEL_10;
  }

  if (v47 == *MEMORY[0x277D72A38])
  {
    v60 = OUTLINED_FUNCTION_5_19();
    v61(v60);
    v62 = OUTLINED_FUNCTION_18_17();
    (*(v98 + 16))(v97, v62, v99);
    v63 = v96;
    sub_231369BF0();
LABEL_8:
    v64 = sub_231369E00();
    if (__swift_getEnumTagSinglePayload(v63, 1, v64) != 1)
    {
      sub_231369DE0();
      v74 = OUTLINED_FUNCTION_9_22();
      v75(v74);
      OUTLINED_FUNCTION_26_0();
      (*(v76 + 8))(v63, v64);
      goto LABEL_17;
    }

    v65 = OUTLINED_FUNCTION_9_22();
    v66(v65);
    v57 = &qword_27DD43C40;
    v58 = &qword_231378460;
    v59 = v63;
    goto LABEL_10;
  }

  if (v47 != *MEMORY[0x277D729E0])
  {
    if (v47 != *MEMORY[0x277D729F8])
    {
      (*(v38 + 8))(v46, v36);
      goto LABEL_18;
    }

    v77 = OUTLINED_FUNCTION_5_19();
    v78(v77);
    v79 = OUTLINED_FUNCTION_18_17();
    (*(v92 + 16))(v91, v79, v93);
    v63 = v90;
    sub_231369BB0();
    goto LABEL_8;
  }

  (*(v38 + 96))(v46, v36);
  v68 = OUTLINED_FUNCTION_18_17();
  (*(v94 + 16))(v0, v68, v95);
  v69 = *(sub_231369B60() + 16);

  if (v69 != 1)
  {
    v80 = OUTLINED_FUNCTION_7_18();
    v81(v80);
    goto LABEL_17;
  }

  v70 = sub_231369B60();
  v71 = v89;
  sub_231217DDC(v70, v89);

  if (__swift_getEnumTagSinglePayload(v71, 1, v36) == 1)
  {
    v72 = OUTLINED_FUNCTION_7_18();
    v73(v72);
    v57 = &qword_27DD43358;
    v58 = &qword_23136FA90;
    v59 = v71;
LABEL_10:
    sub_2311EB450(v59, v57, v58);
    goto LABEL_17;
  }

  (*(v38 + 32))(v42, v71, v36);
  sub_2312BC3E0();
  v83 = v82;
  v85 = v84;
  (*(v38 + 8))(v42, v36);
  v86 = OUTLINED_FUNCTION_7_18();
  v87(v86);
  if (!v85)
  {
    goto LABEL_17;
  }

  if ((v85 & 0x2000000000000000) != 0)
  {
    v88 = HIBYTE(v85) & 0xF;
  }

  else
  {
    v88 = v83 & 0xFFFFFFFFFFFFLL;
  }

  if (!v88)
  {
  }

LABEL_18:
  OUTLINED_FUNCTION_9_0();
}

void sub_2312BCC10()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v1;
  sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v91 = v4;
  v92 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  v90 = v6 - v5;
  OUTLINED_FUNCTION_18();
  sub_231369C20();
  OUTLINED_FUNCTION_0_0();
  v88 = v8;
  v89 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  v87 = v10 - v9;
  OUTLINED_FUNCTION_18();
  sub_231369C40();
  OUTLINED_FUNCTION_0_0();
  v95 = v12;
  v96 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v94 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C40, &qword_231378460);
  v16 = OUTLINED_FUNCTION_40_0(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_22();
  v86 = v17 - v18;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v19);
  v93 = &v86 - v20;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v21);
  v23 = &v86 - v22;
  v24 = sub_231369C70();
  OUTLINED_FUNCTION_0_0();
  v97 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_4();
  v29 = v28 - v27;
  v30 = sub_231366860();
  v31 = OUTLINED_FUNCTION_40_0(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_4();
  v32 = sub_23136A4B0();
  OUTLINED_FUNCTION_0_0();
  v98 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_6_18();
  v35 = sub_231369CA0();
  OUTLINED_FUNCTION_0_0();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1_4();
  v41 = (v40 - v39);
  (*(v37 + 16))(v40 - v39, v2, v35);
  v42 = (*(v37 + 88))(v41, v35);
  if (v42 == *MEMORY[0x277D72988])
  {
    v43 = OUTLINED_FUNCTION_2_20();
    v44(v43);
    goto LABEL_8;
  }

  if (v42 == *MEMORY[0x277D72978])
  {
    v45 = OUTLINED_FUNCTION_2_20();
    v46(v45);
    v99[0] = *v41;
    sub_23136A8B0();
LABEL_7:
    OUTLINED_FUNCTION_15_20();
    goto LABEL_8;
  }

  if (v42 == *MEMORY[0x277D729A8])
  {
    v47 = OUTLINED_FUNCTION_2_20();
    v48(v47);
    sub_23136A2F0();
    goto LABEL_7;
  }

  if (v42 == *MEMORY[0x277D729C0])
  {
    v49 = OUTLINED_FUNCTION_2_20();
    v50(v49);
    sub_231366800();
    sub_23136A4A0();
    sub_23136A490();
    OUTLINED_FUNCTION_15_20();
    v51 = *(v98 + 8);
    v52 = v0;
LABEL_11:
    v51(v52, v32);
    goto LABEL_8;
  }

  if (v42 == *MEMORY[0x277D729B8])
  {
    v53 = OUTLINED_FUNCTION_2_20();
    v54(v53);
    v55 = v41[1];
    v99[0] = *v41;
    v99[1] = v55;
    sub_23136A0E0();
    goto LABEL_7;
  }

  if (v42 == *MEMORY[0x277D729B0])
  {
    v56 = OUTLINED_FUNCTION_2_20();
    v57(v56);
    (*(v97 + 32))(v29, v41, v24);
    sub_231369C30();
    v32 = sub_231369E00();
    if (__swift_getEnumTagSinglePayload(v23, 1, v32) != 1)
    {
      sub_231369DE0();
      OUTLINED_FUNCTION_15_20();
      v69 = OUTLINED_FUNCTION_9_22();
      v70(v69);
      OUTLINED_FUNCTION_26_0();
      v51 = *(v71 + 8);
      v52 = v23;
      goto LABEL_11;
    }

    v58 = OUTLINED_FUNCTION_9_22();
    v59(v58);
    v60 = v23;
LABEL_24:
    sub_2311EB450(v60, &qword_27DD43C40, &qword_231378460);
    goto LABEL_8;
  }

  if (v42 == *MEMORY[0x277D72998])
  {
    v61 = OUTLINED_FUNCTION_2_20();
    v62(v61);
    v64 = v94;
    v63 = v95;
    v65 = OUTLINED_FUNCTION_14_22();
    v66 = v96;
    v67(v65);
    v68 = v93;
    sub_231369C30();
LABEL_22:
    v76 = sub_231369E00();
    if (__swift_getEnumTagSinglePayload(v68, 1, v76) != 1)
    {
      sub_231369DE0();
      OUTLINED_FUNCTION_15_20();
      (*(v63 + 8))(v64, v66);
      OUTLINED_FUNCTION_26_0();
      (*(v77 + 8))(v68, v76);
      goto LABEL_8;
    }

    (*(v63 + 8))(v64, v66);
    v60 = v68;
    goto LABEL_24;
  }

  if (v42 == *MEMORY[0x277D72970])
  {
    v72 = OUTLINED_FUNCTION_2_20();
    v73(v72);
    v64 = v87;
    v63 = v88;
    v74 = OUTLINED_FUNCTION_14_22();
    v66 = v89;
    v75(v74);
    v68 = v86;
    sub_231369C10();
    goto LABEL_22;
  }

  v78 = v90;
  sub_231369130();
  v79 = sub_2313698A0();
  v80 = sub_23136A3A0();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v99[0] = v82;
    *v81 = 136315138;
    v99[2] = &type metadata for ToolKitUtils;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44620, &qword_231374C18);
    v83 = sub_23136A010();
    v85 = sub_2311CFD58(v83, v84, v99);

    *(v81 + 4) = v85;
    _os_log_impl(&dword_2311CB000, v79, v80, "displayStringForTypedValuePrimitive(): not handling for PrimitiveValue case %s", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v82);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();
  }

  (*(v91 + 8))(v78, v92);
  (*(v37 + 8))(v41, v35);
LABEL_8:
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_2312BD46C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44628, &qword_231374C20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_18_17()
{

  return swift_projectBox();
}

uint64_t sub_2312BD524(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445A8, &qword_231374960);
    v3 = sub_23136A790();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_2312C2274(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_2312BD5BC(uint64_t a1)
{
  v2 = sub_2312698AC(a1);
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_2312BD618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for StaticDefinedPipelineFactory();
  sub_2311CF324(a1, v34);
  sub_2311CF324(a2, v33);
  sub_2311CF324(a3, v30);
  sub_2311CF324(a4, v27);
  v12 = v31;
  v11 = v32;
  __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_4();
  v16 = v15 - v14;
  (*(v17 + 16))(v15 - v14);
  v18 = v28;
  v19 = v29;
  __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_4();
  v23 = v22 - v21;
  (*(v24 + 16))(v22 - v21);
  v25 = sub_2312C2474(v34, v33, v16, v23, v10, v12, v18, v11, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v30);
  a5[3] = v10;
  a5[4] = &off_2845F5DC0;
  *a5 = v25;
  return result;
}

uint64_t sub_2312BD800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[32] = a4;
  v5[33] = v4;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  return MEMORY[0x2822009F8](sub_2312BD828, 0, 0);
}

uint64_t sub_2312BD828()
{
  OUTLINED_FUNCTION_26();
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  sub_2312BDC98(*(v0 + 256), (v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44650, &qword_231374D90);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23136C1C0;
  sub_2311CF324(v2, v3 + 32);
  sub_2311CF324(v0 + 112, v3 + 72);
  v4 = type metadata accessor for UnionResolverProvider();
  OUTLINED_FUNCTION_54();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  sub_2311CF324(v1, v0 + 152);
  *(v0 + 216) = v4;
  *(v0 + 224) = &off_2845F6E40;
  *(v0 + 192) = v5;
  type metadata accessor for OwnerWrappedResolverProvider();
  inited = swift_initStackObject();
  *(v0 + 272) = inited;
  sub_2311D38A8((v0 + 192), inited + 16);
  sub_2311D38A8((v0 + 152), inited + 56);
  v7 = swift_task_alloc();
  *(v0 + 280) = v7;
  *v7 = v0;
  v7[1] = sub_2312BD980;

  return sub_23121CDC4();
}

uint64_t sub_2312BD980()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 288) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312BDA6C()
{
  OUTLINED_FUNCTION_8();
  v1 = sub_23132F684(v0[36]);
  v0[37] = v1;

  v2 = swift_task_alloc();
  v0[38] = v2;
  *v2 = v0;
  v2[1] = sub_2312BDB1C;
  v3 = v0[31];

  return sub_2312BDF14(v1, v3);
}
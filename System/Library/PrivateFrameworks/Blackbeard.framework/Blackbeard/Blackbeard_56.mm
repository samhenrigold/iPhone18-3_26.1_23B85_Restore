uint64_t sub_1E652E304(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E652E258(a1, a2);
}

uint64_t sub_1E652E3B0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E652B7D4(a1, a2);
}

uint64_t sub_1E652E45C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E652E3B0(a1, a2);
}

uint64_t sub_1E652E528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD38, &qword_1E6609848);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD40, &qword_1E6609850);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E65310D4;
  *(v34 + 24) = v32;

  v33(sub_1E5E20BC8, v34);
}

uint64_t sub_1E652E904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD20, &unk_1E6609820);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD18, &qword_1E660AB50);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E6530FA8;
  *(v34 + 24) = v32;

  v33(sub_1E6531034, v34);
}

uint64_t sub_1E652ECE0(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v31 = a7;
  v30 = a6;
  v29 = a5;
  LODWORD(v10) = a2;
  v12 = sub_1E65E3B68();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v16 = sub_1E65E3B48();
  v17 = sub_1E65E6338();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28 = a8;
    v19 = v18;
    v20 = swift_slowAlloc();
    HIDWORD(v27) = v10;
    v10 = v20;
    v32 = v20;
    *v19 = 134218498;
    *(v19 + 4) = a3;
    *(v19 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v23 = sub_1E5DFD4B0(v21, v22, &v32);

    *(v19 + 14) = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v31;
    _os_log_impl(&dword_1E5DE9000, v16, v17, "Finished P->A conversion: %ld:%s:%lu", v19, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    v24 = v10;
    LOBYTE(v10) = BYTE4(v27);
    MEMORY[0x1E694F1C0](v24, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  v32 = a1;
  if (v10)
  {
    v25 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD38, &qword_1E6609848);
    return sub_1E65E5FE8();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD38, &qword_1E6609848);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E652EF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_1E65D9658();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD28, &qword_1E6609830);
  MEMORY[0x1EEE9AC00](v44);
  v15 = (&v34 - v14);
  v16 = sub_1E65E3B68();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v19 = sub_1E65E3B48();
  v20 = sub_1E65E6338();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_1E65E68B8();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_1E5DFD4B0(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_1E5DE9000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1E694F1C0](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x1E694F1C0](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_1E6531064(a1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD20, &unk_1E6609820);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD20, &unk_1E6609820);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E652F2A0(uint64_t *a1)
{
  v2 = *(sub_1E65D96F8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1E6530C04(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1E652F444(v6);
  *a1 = v3;
  return result;
}

void *sub_1E652F348(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD10, &unk_1E6609810);
  v4 = *(sub_1E65D96F8() - 8);
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

uint64_t sub_1E652F444(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E65E6BA8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1E65D96F8();
        v6 = sub_1E65E5F98();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1E65D96F8() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1E652F834(v8, v9, a1, v4);
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
    return sub_1E652F570(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E652F570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1E65D96F8();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v41 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v45 = &v31 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v14 + 16);
    v43 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v39 = (v14 + 32);
    v40 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8);
      v25 = v45;
      v24(v45, v22, v8);
      sub_1E6530EF4(&qword_1ED07A728, MEMORY[0x1E69CC278], MEMORY[0x1E69CC288]);
      v26 = sub_1E65E5B78();
      v27 = *v18;
      (*v18)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = v36 + v32;
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E652F834(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_1E65D96F8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v127 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v134 = &v119 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v140 = &v119 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_1E636AC44(v20);
      v20 = result;
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_1E653025C(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1E636AC44(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        result = sub_1E636ABB8(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = MEMORY[0x1E69E7CC0];
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      v27(v140, v29, v26);
      v130 = sub_1E6530EF4(&qword_1ED07A728, MEMORY[0x1E69CC278], MEMORY[0x1E69CC288]);
      LODWORD(v133) = sub_1E65E5B78();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      result = (v31)(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_1E65E5B78() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        result = v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v133)(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E636ADD0(0, *(v20 + 2) + 1, 1, v20);
      v20 = result;
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      result = sub_1E636ADD0((v53 > 1), v54 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_1E653025C(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1E636AC44(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        result = sub_1E636ABB8(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_1E6530EF4(&qword_1ED07A728, MEMORY[0x1E69CC278], MEMORY[0x1E69CC288]);
    v109 = sub_1E65E5B78();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    result = v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_1E653025C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = sub_1E65D96F8();
  v8 = *(v52 - 8);
  v9 = MEMORY[0x1EEE9AC00](v52);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v49 = &v40 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v51 = a3;
  v16 = (a2 - a1) / v14;
  v55 = a1;
  v54 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v18;
    if (v18 >= 1)
    {
      v28 = -v14;
      v43 = a4;
      v44 = (v8 + 16);
      v41 = (v8 + 8);
      v42 = a1;
      v29 = a4 + v18;
      v30 = v51;
      v45 = v28;
      do
      {
        v40 = v27;
        v31 = a2 + v28;
        v47 = a2 + v28;
        v48 = v27;
        v46 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v55 = a2;
            v27 = v40;
            goto LABEL_59;
          }

          v33 = v30;
          v51 = v30 + v28;
          v34 = v29 + v28;
          v35 = *v44;
          v36 = v49;
          v37 = v52;
          (*v44)(v49, v29 + v28, v52);
          v38 = v50;
          v35(v50, v31, v37);
          sub_1E6530EF4(&qword_1ED07A728, MEMORY[0x1E69CC278], MEMORY[0x1E69CC288]);
          LOBYTE(v35) = sub_1E65E5B78();
          v39 = *v41;
          (*v41)(v38, v37);
          v39(v36, v37);
          if (v35)
          {
            break;
          }

          v30 = v51;
          if (v33 < v29 || v51 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v47;
            a1 = v42;
          }

          else
          {
            v31 = v47;
            a1 = v42;
            if (v33 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = v34;
          v29 = v34;
          v32 = v34 > v43;
          v28 = v45;
          a2 = v46;
          if (!v32)
          {
            v27 = v48;
            goto LABEL_58;
          }
        }

        v30 = v51;
        if (v33 < v46 || v51 >= v46)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v42;
        }

        else
        {
          a2 = v47;
          a1 = v42;
          if (v33 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v48;
        v28 = v45;
      }

      while (v29 > v43);
    }

LABEL_58:
    v55 = a2;
LABEL_59:
    v53 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v17;
    v53 = a4 + v17;
    if (v17 >= 1 && a2 < v51)
    {
      v46 = *(v8 + 16);
      v47 = v8 + 16;
      v44 = v14;
      v45 = (v8 + 8);
      do
      {
        v20 = v49;
        v21 = v52;
        v22 = v46;
        (v46)(v49, a2, v52);
        v23 = v50;
        v22(v50, a4, v21);
        sub_1E6530EF4(&qword_1ED07A728, MEMORY[0x1E69CC278], MEMORY[0x1E69CC288]);
        LOBYTE(v22) = sub_1E65E5B78();
        v24 = *v45;
        (*v45)(v23, v21);
        v24(v20, v21);
        if (v22)
        {
          v25 = v44;
          if (a1 < a2 || a1 >= &v44[a2])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v25;
        }

        else
        {
          v25 = v44;
          v26 = &v44[a4];
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v54 = v26;
          a4 += v25;
        }

        a1 += v25;
        v55 = a1;
      }

      while (a4 < v48 && a2 < v51);
    }
  }

  sub_1E653087C(&v55, &v54, &v53, MEMORY[0x1E69CC278]);
  return 1;
}

uint64_t sub_1E653087C(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_1E65309DC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1E6530C50(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1E65D96F8();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x1EEE9AC00](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1E6530EF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6530F4C(uint64_t a1)
{
  v2 = type metadata accessor for SwappableWorkout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6530FA8(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD20, &unk_1E6609820) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 40);
  v9 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_1E652EF3C(a1, v4, v5, v6, v8, v7, v9);
}

uint64_t sub_1E6531034()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1E6531064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD28, &qword_1E6609830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E65310D4(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD38, &qword_1E6609848) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(v1 + 40);
  v11 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_1E652ECE0(v8, v9, v4, v5, v6, v10, v7, v11);
}

uint64_t sub_1E65311F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1E65D76D8() & 1) == 0 || (MEMORY[0x1E69410E0](a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_1E65E6C18();
}

unint64_t sub_1E6531294()
{
  result = qword_1ED07AD50;
  if (!qword_1ED07AD50)
  {
    type metadata accessor for SwappableWorkout(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07AD50);
  }

  return result;
}

uint64_t type metadata accessor for SwappableWorkout(uint64_t a1)
{
  result = qword_1ED07AD58;
  if (!qword_1ED07AD58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E6531360(uint64_t a1)
{
  result = sub_1E65D76F8();
  if (v2 <= 0x3F)
  {
    result = sub_1E65D96F8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t WorkoutPlanService.queryActiveWorkoutPlan.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WorkoutPlanService.queryAllWorkoutPlanTemplateReferences.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WorkoutPlanService.queryWorkoutPlanTemplateMetadata.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t WorkoutPlanService.queryAllWorkoutPlanTemplateMetadata.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t WorkoutPlanService.queryAllWorkoutPlanTemplatesCount.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t WorkoutPlanService.queryNextIncompleteWorkoutReference.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t WorkoutPlanService.queryIncompleteMatchingWorkoutReferences.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t WorkoutPlanService.queryFutureDuplicatedWorkoutDate.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t WorkoutPlanService.queryPendingWorkoutPlanSummary.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t WorkoutPlanService.fetchSwappablePlannedWorkoutDetail.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t WorkoutPlanService.requestWorkoutPlanSwap.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t WorkoutPlanService.makeActiveWorkoutPlanUpdatedStream.getter()
{
  v1 = *(v0 + 176);

  return v1;
}

uint64_t WorkoutPlanService.makeWorkoutPlansUpdatedStream.getter()
{
  v1 = *(v0 + 192);

  return v1;
}

uint64_t WorkoutPlanService.endWorkoutPlan.getter()
{
  v1 = *(v0 + 208);

  return v1;
}

uint64_t WorkoutPlanService.repeatWorkoutPlan.getter()
{
  v1 = *(v0 + 224);

  return v1;
}

uint64_t WorkoutPlanService.evaluateActiveWorkoutPlanCompletion.getter()
{
  v1 = *(v0 + 240);

  return v1;
}

uint64_t WorkoutPlanService.validateSchedule.getter()
{
  v1 = *(v0 + 256);

  return v1;
}

uint64_t WorkoutPlanService.makeWorkoutPlanSchedule.getter()
{
  v1 = *(v0 + 272);

  return v1;
}

uint64_t WorkoutPlanService.createWorkoutPlan.getter()
{
  v1 = *(v0 + 288);

  return v1;
}

uint64_t WorkoutPlanService.replaceWorkoutPlan.getter()
{
  v1 = *(v0 + 304);

  return v1;
}

uint64_t sub_1E65317B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 320))
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

uint64_t sub_1E65317FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E6531890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v6 = sub_1E65D9A28();
  v5[24] = v6;
  v5[25] = *(v6 - 8);
  v5[26] = swift_task_alloc();
  v7 = sub_1E65DA3F8();
  v5[27] = v7;
  v5[28] = *(v7 - 8);
  v5[29] = swift_task_alloc();
  v8 = type metadata accessor for SwappableWorkout(0);
  v5[30] = v8;
  v5[31] = *(v8 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v9 = sub_1E65D78F8();
  v5[38] = v9;
  v5[39] = *(v9 - 8);
  v5[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD68, &qword_1E66099F0);
  v5[41] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD40, &qword_1E6609850);
  v5[42] = v10;
  v5[43] = *(v10 - 8);
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v11 = sub_1E65D9B08();
  v5[46] = v11;
  v5[47] = *(v11 - 8);
  v5[48] = swift_task_alloc();
  v12 = sub_1E65D76A8();
  v5[49] = v12;
  v5[50] = *(v12 - 8);
  v5[51] = swift_task_alloc();
  v13 = sub_1E65D7EB8();
  v5[52] = v13;
  v5[53] = *(v13 - 8);
  v5[54] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6531C9C, v4, 0);
}

uint64_t sub_1E6531C9C()
{
  v1 = v0;
  v2 = *(v0 + 184);
  v3 = v2[24];
  v4 = v2[25];
  __swift_project_boxed_opaque_existential_1(v2 + 21, v3);
  v5 = swift_task_alloc();
  *(v1 + 440) = v5;
  *v5 = v1;
  v5[1] = sub_1E6531D90;
  v6 = *(v1 + 432);

  return MEMORY[0x1EEE33FA8](v6, v3, v4);
}

uint64_t sub_1E6531D90()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  v3 = *(v2 + 184);
  if (v0)
  {
    v4 = sub_1E6533ED4;
  }

  else
  {
    v4 = sub_1E6531EE8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E6531EE8(uint64_t a1)
{
  v3 = v1[50];
  v2 = v1[51];
  v4 = v1[49];
  sub_1E65D7688();
  v5 = sub_1E65D7DB8();
  (*(v3 + 8))(v2, v4);
  v6 = *(v5 + 16);

  if (v6)
  {
    v8 = v1[53];
    v7 = v1[54];
    v9 = v1[52];
    v10 = sub_1E65D8B88();
    sub_1E6538198(&qword_1ED078840, MEMORY[0x1E69CB928], MEMORY[0x1E69CB930]);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x1E69CB8E8], v10);
    swift_willThrow();
    (*(v8 + 8))(v7, v9);

    v12 = v1[1];

    return v12();
  }

  else
  {
    v15 = v1[20];
    v14 = v1[21];
    __swift_project_boxed_opaque_existential_1((v1[23] + 128), *(v1[23] + 152));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B20, &qword_1E6609840);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E65EA670;
    *(inited + 32) = v15;
    *(inited + 40) = v14;

    sub_1E5F9B6E4(inited);
    swift_setDeallocating();
    sub_1E6065BF0(inited + 32);
    sub_1E65DD938();

    return MEMORY[0x1EEE6DFA0](sub_1E6532248, 0, 0);
  }
}

uint64_t sub_1E6532248()
{
  v1 = v0[45];
  v2 = swift_task_alloc();
  v0[57] = v2;
  *(v2 + 16) = "FitnessWorkoutPlanService/SwappableWorkoutFetching.swift";
  *(v2 + 24) = 56;
  *(v2 + 32) = 2;
  *(v2 + 40) = 29;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[58] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD70, &unk_1E660EF30);
  v0[59] = v4;
  *v3 = v0;
  v3[1] = sub_1E653239C;

  return MEMORY[0x1EEE6DE38](v0 + 17, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6537E54, v2, v4);
}

uint64_t sub_1E653239C()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {

    v3 = sub_1E6532C30;
    v4 = 0;
  }

  else
  {
    v5 = v2[45];
    v6 = v2[42];
    v7 = v2[43];
    v8 = v2[23];
    v2[61] = v2[17];

    v9 = *(v7 + 8);
    v2[62] = v9;
    v2[63] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v6);
    v3 = sub_1E6532564;
    v4 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E6532564()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);
  v3 = *(v0 + 328);
  sub_1E65341B4(*(v0 + 488), MEMORY[0x1E69CC6C0], MEMORY[0x1E69CC6C0], v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 424);
    v4 = *(v0 + 432);
    v6 = *(v0 + 416);
    sub_1E5DFE50C(*(v0 + 328), &qword_1ED07AD68, &qword_1E66099F0);
    v7 = sub_1E65D7EC8();
    sub_1E6538198(&qword_1ED078850, MEMORY[0x1E69CB148], MEMORY[0x1E69CB150]);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x1E69CB138], v7);
    swift_willThrow();
    (*(v5 + 8))(v4, v6);
LABEL_27:

    v50 = *(v0 + 8);

    return v50();
  }

  v9 = *(v0 + 432);
  v10 = *(v0 + 320);
  v11 = *(v0 + 304);
  v12 = *(v0 + 312);
  (*(*(v0 + 376) + 32))(*(v0 + 384), *(v0 + 328), *(v0 + 368));
  (*(v12 + 104))(v10, *MEMORY[0x1E6969A48], v11);
  v13 = sub_1E65D7DF8();
  (*(v12 + 8))(v10, v11);
  v14 = swift_task_alloc();
  *(v14 + 16) = v9;
  v15 = sub_1E6534288(sub_1E6537E58, v14, v13);

  v16 = MEMORY[0x1E69E7CC0];
  v53 = *(v15 + 16);
  if (v53)
  {
    v17 = 0;
    v18 = *(v0 + 248);
    v52 = *(v0 + 240);
    do
    {
      if (v17 >= *(v15 + 16))
      {
        __break(1u);
      }

      v19 = *(v0 + 296);
      v21 = *(v0 + 160);
      v20 = *(v0 + 168);
      v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v23 = *(v18 + 72);
      sub_1E6537E78(v15 + v22 + v23 * v17, v19);
      v24 = (v19 + *(v52 + 24));
      v25 = *v24 == v21 && v24[1] == v20;
      if (v25 || (sub_1E65E6C18() & 1) != 0)
      {
        sub_1E6530F4C(*(v0 + 296));
      }

      else
      {
        sub_1E6537EDC(*(v0 + 296), *(v0 + 288));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1E6537D30(0, *(v16 + 16) + 1, 1);
        }

        v27 = *(v16 + 16);
        v26 = *(v16 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1E6537D30((v26 > 1), v27 + 1, 1);
        }

        v28 = *(v0 + 288);
        *(v16 + 16) = v27 + 1;
        sub_1E6537EDC(v28, v16 + v22 + v27 * v23);
      }

      ++v17;
    }

    while (v53 != v17);
  }

  *(v0 + 512) = v16;

  v29 = *(v16 + 16);
  if (!v29)
  {
    v42 = *(v0 + 424);
    v43 = *(v0 + 432);
    v44 = *(v0 + 416);
    v46 = *(v0 + 376);
    v45 = *(v0 + 384);
    v47 = *(v0 + 368);

    v48 = sub_1E65D8B88();
    sub_1E6538198(&qword_1ED078840, MEMORY[0x1E69CB928], MEMORY[0x1E69CB930]);
    swift_allocError();
    (*(*(v48 - 8) + 104))(v49, *MEMORY[0x1E69CB8E8], v48);
    swift_willThrow();
    (*(v46 + 8))(v45, v47);
    (*(v42 + 8))(v43, v44);
    goto LABEL_27;
  }

  v31 = *(v0 + 240);
  v30 = *(v0 + 248);
  sub_1E5DF650C(*(v0 + 184) + 128, v0 + 64);
  __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
  v54 = MEMORY[0x1E69E7CC0];
  sub_1E601C0B8(0, v29, 0);
  v32 = *(v30 + 80);
  *(v0 + 592) = v32;
  v33 = v16 + ((v32 + 32) & ~v32);
  v34 = *(v30 + 72);
  *(v0 + 520) = v34;
  do
  {
    v35 = *(v0 + 280);
    sub_1E6537E78(v33, v35);
    v36 = (v35 + *(v31 + 24));
    v37 = *v36;
    v38 = v36[1];

    sub_1E6530F4C(v35);
    v40 = *(v54 + 16);
    v39 = *(v54 + 24);
    if (v40 >= v39 >> 1)
    {
      sub_1E601C0B8((v39 > 1), v40 + 1, 1);
    }

    *(v54 + 16) = v40 + 1;
    v41 = v54 + 16 * v40;
    *(v41 + 32) = v37;
    *(v41 + 40) = v38;
    v33 += v34;
    --v29;
  }

  while (v29);
  sub_1E600AA08(v54);

  sub_1E65DD938();

  return MEMORY[0x1EEE6DFA0](sub_1E6532E44, 0, 0);
}

uint64_t sub_1E6532C30()
{
  v1 = v0[23];
  (*(v0[43] + 8))(v0[45], v0[42]);

  return MEMORY[0x1EEE6DFA0](sub_1E6532CD8, v1, 0);
}

uint64_t sub_1E6532CD8()
{
  (*(v0[53] + 8))(v0[54], v0[52]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E6532E44()
{
  v1 = v0[44];
  v2 = swift_task_alloc();
  v0[66] = v2;
  *(v2 + 16) = "FitnessWorkoutPlanService/SwappableWorkoutFetching.swift";
  *(v2 + 24) = 56;
  *(v2 + 32) = 2;
  *(v2 + 40) = 52;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[67] = v3;
  *v3 = v0;
  v3[1] = sub_1E6532F80;
  v4 = v0[59];

  return MEMORY[0x1EEE6DE38](v0 + 18, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65381E0, v2, v4);
}

uint64_t sub_1E6532F80()
{
  v2 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {

    v3 = sub_1E653340C;
    v4 = 0;
  }

  else
  {
    v5 = v2[62];
    v6 = v2[44];
    v7 = v2[42];
    v8 = v2[23];
    v2[69] = v2[18];

    v5(v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v2 + 8);
    v3 = sub_1E6533140;
    v4 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E6533140()
{
  v1 = v0[69];
  v2 = v0[48];
  v3 = v0[23];
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v5 = sub_1E65367F4(sub_1E6537F50, v4, v1);

  v0[70] = sub_1E6534710(v5);

  v6 = v3[24];
  v7 = v3[25];
  __swift_project_boxed_opaque_existential_1(v3 + 21, v6);
  v8 = swift_task_alloc();
  v0[71] = v8;
  *v8 = v0;
  v8[1] = sub_1E6533288;

  return MEMORY[0x1EEE33FB0](v6, v7);
}

uint64_t sub_1E6533288(uint64_t a1)
{
  v3 = *v2;
  v3[72] = a1;
  v3[73] = v1;

  if (v1)
  {
    v4 = v3[23];

    v5 = sub_1E6534028;
    v6 = v4;
  }

  else
  {
    v6 = v3[23];
    v5 = sub_1E6533648;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1E653340C()
{
  v1 = *(v0 + 184);
  (*(v0 + 496))(*(v0 + 352), *(v0 + 336));

  return MEMORY[0x1EEE6DFA0](sub_1E65334AC, v1, 0);
}

uint64_t sub_1E65334AC()
{
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[52];
  v5 = v0[47];
  v4 = v0[48];
  v6 = v0[46];
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E6533648(uint64_t a1)
{
  v89 = v1;
  v88[2] = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 576);
  v3 = *(v2 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  v5 = v2;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  while (1)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v5 = *(v1 + 576);
LABEL_2:
    v77 = &v76;
    v78 = v4;
    v6 = *(v1 + 224);
    v7 = *(v1 + 200);
    MEMORY[0x1EEE9AC00](a1);
    v79 = &v76 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v79, v8);
    v9 = 0;
    v84 = v6;
    v85 = v5;
    v12 = *(v5 + 56);
    v11 = v5 + 56;
    v10 = v12;
    v13 = 1 << *(v2 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & v10;
    v16 = (v13 + 63) >> 6;
    v82 = (v7 + 8);
    v83 = v6 + 16;
    v80 = 0;
    v81 = v6 + 8;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v87 = (v15 - 1) & v15;
LABEL_12:
      v20 = *(v1 + 232);
      v22 = *(v1 + 208);
      v21 = *(v1 + 216);
      v86 = *(v1 + 192);
      v4 = v84;
      v23 = v17 | (v9 << 6);
      (*(v84 + 16))(v20, *(v85 + 48) + *(v84 + 72) * v23, v21);
      sub_1E65DA3E8();
      v2 = sub_1E65D9A18();
      (*v82)(v22, v86);
      (*(v4 + 8))(v20, v21);
      v15 = v87;
      if (v2)
      {
        *&v79[(v23 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v23;
        if (__OFADD__(v80++, 1))
        {
          __break(1u);
LABEL_16:
          v25 = sub_1E6536EC4(v79, v78, v80, *(v1 + 576));
          v26 = *(v1 + 584);
          goto LABEL_17;
        }
      }
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        goto LABEL_16;
      }

      v19 = *(v11 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v87 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
  }

  v73 = *(v1 + 584);
  v74 = *(v1 + 576);
  v75 = swift_slowAlloc();
  v26 = v73;
  v25 = sub_1E6536E1C(v75, v4, v74, sub_1E6535018, 0, MEMORY[0x1E69CCD78], sub_1E6536EC4);

  result = MEMORY[0x1E694F1C0](v75, -1, -1);
  if (v26)
  {
    return result;
  }

LABEL_17:
  v4 = *(v1 + 512);
  v87 = sub_1E6534A18(v25);

  v27 = *(v4 + 16);
  if (v27)
  {
    v28 = 0;
    v86 = v1 + 120;
    v2 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v29 = *(v1 + 512);
      if (v28 >= *(v29 + 16))
      {
        goto LABEL_40;
      }

      v30 = *(v1 + 560);
      v31 = *(v1 + 272);
      v32 = *(v1 + 240);
      sub_1E6537E78(v29 + ((*(v1 + 592) + 32) & ~*(v1 + 592)) + *(v1 + 520) * v28, v31);
      v33 = (v31 + *(v32 + 24));
      v34 = *v33;
      v4 = v33[1];
      *(v1 + 104) = *v33;
      *(v1 + 112) = v4;
      v35 = swift_task_alloc();
      *(v35 + 16) = v1 + 104;
      LOBYTE(v30) = sub_1E5F95F4C(sub_1E6537F70, v35, v30);

      if (v30 & 1) == 0 || (*(v1 + 120) = v34, *(v1 + 128) = v4, v36 = swift_task_alloc(), v37 = v87, *(v36 + 16) = v86, v38 = sub_1E5F95F4C(sub_1E65381E4, v36, v37), , (v38))
      {
        sub_1E6530F4C(*(v1 + 272));
      }

      else
      {
        sub_1E6537EDC(*(v1 + 272), *(v1 + 264));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v88[0] = v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E6537D30(0, *(v2 + 16) + 1, 1);
          v2 = v88[0];
        }

        v4 = *(v2 + 16);
        v40 = *(v2 + 24);
        if (v4 >= v40 >> 1)
        {
          sub_1E6537D30((v40 > 1), v4 + 1, 1);
          v2 = v88[0];
        }

        v41 = *(v1 + 520);
        v42 = *(v1 + 592);
        v43 = *(v1 + 264);
        *(v2 + 16) = v4 + 1;
        sub_1E6537EDC(v43, v2 + ((v42 + 32) & ~v42) + v41 * v4);
      }

      if (v27 == ++v28)
      {
        goto LABEL_30;
      }
    }
  }

  v2 = MEMORY[0x1E69E7CC0];
LABEL_30:

  v88[0] = v2;

  sub_1E65353DC(v88);
  if (v26)
  {
  }

  else
  {

    if (*(v88[0] + 16))
    {
      v45 = *(v1 + 592);
      v46 = *(v1 + 424);
      v47 = *(v1 + 432);
      v48 = *(v1 + 416);
      v49 = *(v1 + 376);
      v50 = *(v1 + 384);
      v51 = *(v1 + 360);
      v52 = *(v1 + 368);
      v76 = *(v1 + 408);
      v77 = v51;
      v53 = *(v1 + 320);
      v54 = *(v1 + 328);
      v78 = *(v1 + 352);
      v79 = v54;
      v80 = v53;
      v55 = *(v1 + 288);
      v81 = *(v1 + 296);
      v82 = v55;
      v56 = *(v1 + 272);
      v83 = *(v1 + 280);
      v84 = v56;
      v57 = *(v1 + 256);
      v58 = *(v1 + 232);
      v85 = *(v1 + 264);
      v86 = v58;
      v87 = *(v1 + 208);
      v59 = *(v1 + 152);
      sub_1E6537E78(v88[0] + ((v45 + 32) & ~v45), v57);

      sub_1E6537EDC(v57, v59);
      (*(v49 + 8))(v50, v52);
      (*(v46 + 8))(v47, v48);
    }

    else
    {
      v62 = *(v1 + 424);
      v61 = *(v1 + 432);
      v63 = *(v1 + 416);
      v65 = *(v1 + 376);
      v64 = *(v1 + 384);
      v66 = *(v1 + 368);

      v67 = sub_1E65D8B88();
      sub_1E6538198(&qword_1ED078840, MEMORY[0x1E69CB928], MEMORY[0x1E69CB930]);
      v68 = swift_allocError();
      (*(*(v67 - 8) + 104))(v69, *MEMORY[0x1E69CB8E8], v67);
      v82 = v68;
      swift_willThrow();
      (*(v65 + 8))(v64, v66);
      (*(v62 + 8))(v61, v63);
      v71 = *(v1 + 256);
      v70 = *(v1 + 264);
      v83 = *(v1 + 272);
      v84 = v70;
      v72 = *(v1 + 232);
      v85 = v71;
      v86 = v72;
      v87 = *(v1 + 208);
    }

    v60 = *(v1 + 8);

    return v60();
  }
}

uint64_t sub_1E6533ED4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6534028()
{
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[52];
  (*(v0[47] + 8))(v0[48], v0[46]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E65341B4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1E65E6748();
  v9 = 1;
  if (v8 != 1 << *(a1 + 32))
  {
    sub_1E6537D90(v8, *(a1 + 36), a1, a2, a4);
    v9 = 0;
  }

  v10 = a3(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a4, v9, 1, v10);
}

uint64_t sub_1E6534288(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v50 = a1;
  v51 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD88, &qword_1E6609A00);
  v6 = MEMORY[0x1EEE9AC00](v49);
  v48 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v42 - v8;
  v9 = type metadata accessor for SwappableWorkout(0);
  v46 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (!v12)
  {
    return v13;
  }

  v58 = MEMORY[0x1E69E7CC0];
  sub_1E6537D30(0, v12, 0);
  v13 = v58;
  v14 = a3 + 64;
  v15 = sub_1E65E6748();
  v16 = 0;
  v17 = *(a3 + 36);
  v43 = a3 + 72;
  v44 = v12;
  v52 = a3;
  v45 = v17;
  while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a3 + 32))
  {
    if ((*(v14 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
    {
      goto LABEL_24;
    }

    if (v17 != *(a3 + 36))
    {
      goto LABEL_25;
    }

    v54 = 1 << v15;
    v55 = v15 >> 6;
    v53 = v16;
    v20 = v14;
    v57 = v13;
    v21 = *(a3 + 48);
    v22 = sub_1E65D96F8();
    v23 = *(v22 - 8);
    v56 = v4;
    v24 = v23;
    v25 = v11;
    v26 = v47;
    (*(v23 + 16))(v47, v21 + *(v23 + 72) * v15, v22);
    v27 = (*(a3 + 56) + 16 * v15);
    v29 = *v27;
    v28 = v27[1];
    v12 = v48;
    v30 = v26;
    v11 = v25;
    (*(v24 + 32))(v48, v30, v22);
    v31 = (v12 + *(v49 + 48));
    *v31 = v29;
    v31[1] = v28;

    v32 = v56;
    v50(v12);
    if (v32)
    {
      goto LABEL_29;
    }

    v4 = 0;
    sub_1E5DFE50C(v12, &qword_1ED07AD88, &qword_1E6609A00);
    v13 = v57;
    v58 = v57;
    v12 = *(v57 + 16);
    v33 = *(v57 + 24);
    v14 = v20;
    if (v12 >= v33 >> 1)
    {
      sub_1E6537D30((v33 > 1), v12 + 1, 1);
      v13 = v58;
    }

    *(v13 + 16) = v12 + 1;
    sub_1E6537EDC(v11, v13 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v12);
    a3 = v52;
    v18 = 1 << *(v52 + 32);
    LODWORD(v17) = v45;
    if (v15 >= v18)
    {
      goto LABEL_26;
    }

    v34 = *(v14 + 8 * v55);
    if ((v34 & v54) == 0)
    {
      goto LABEL_27;
    }

    if (v45 != *(v52 + 36))
    {
      goto LABEL_28;
    }

    v35 = v34 & (-2 << (v15 & 0x3F));
    if (v35)
    {
      v18 = __clz(__rbit64(v35)) | v15 & 0x7FFFFFFFFFFFFFC0;
      v19 = v53;
    }

    else
    {
      v36 = v55 << 6;
      v37 = v55 + 1;
      v38 = (v43 + 8 * v55);
      while (v37 < (v18 + 63) >> 6)
      {
        v40 = *v38++;
        v39 = v40;
        v36 += 64;
        ++v37;
        if (v40)
        {
          sub_1E5F87098(v15, v45, 0);
          v18 = __clz(__rbit64(v39)) + v36;
          goto LABEL_21;
        }
      }

      sub_1E5F87098(v15, v45, 0);
LABEL_21:
      a3 = v52;
      v19 = v53;
    }

    v16 = v19 + 1;
    v15 = v18;
    v12 = v44;
    if (v16 == v44)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  sub_1E5DFE50C(v12, &qword_1ED07AD88, &qword_1E6609A00);

  __break(1u);
  return result;
}

uint64_t sub_1E6534710(uint64_t a1)
{
  v35 = sub_1E65D9B08();
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v27 = v1;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1E601C0B8(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = sub_1E65E6748();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = sub_1E65D9AD8();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = *(v38 + 16);
      v17 = *(v38 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_1E601C0B8((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = v37;
      *(v19 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1E5F87098(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
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
  }

  return result;
}

uint64_t sub_1E6534A18(uint64_t a1)
{
  v48 = sub_1E65D9A28();
  v3 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E65DA3F8();
  v5 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v37 = v1;
  v53 = MEMORY[0x1E69E7CC0];
  sub_1E601C0B8(0, v7, 0);
  v8 = v53;
  v9 = a1 + 56;
  result = sub_1E65E6748();
  v11 = result;
  v12 = 0;
  v42 = (v3 + 8);
  v43 = v5 + 16;
  v44 = v5;
  v40 = a1 + 56;
  v41 = v5 + 8;
  v38 = a1 + 64;
  v39 = v7;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v15 = v11 >> 6;
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_21;
    }

    v16 = *(a1 + 36);
    v49 = v12;
    v50 = v16;
    v17 = v44;
    v18 = *(a1 + 48) + *(v44 + 72) * v11;
    v19 = *(v44 + 16);
    v52 = v8;
    v21 = v45;
    v20 = v46;
    v19(v45, v18, v46);
    v22 = v47;
    sub_1E65DA3E8();
    v23 = sub_1E65D9A08();
    v51 = v24;
    (*v42)(v22, v48);
    v25 = v21;
    v8 = v52;
    result = (*(v17 + 8))(v25, v20);
    v53 = v8;
    v27 = *(v8 + 16);
    v26 = *(v8 + 24);
    if (v27 >= v26 >> 1)
    {
      result = sub_1E601C0B8((v26 > 1), v27 + 1, 1);
      v8 = v53;
    }

    *(v8 + 16) = v27 + 1;
    v28 = v8 + 16 * v27;
    v29 = v51;
    *(v28 + 32) = v23;
    *(v28 + 40) = v29;
    v13 = 1 << *(a1 + 32);
    if (v11 >= v13)
    {
      goto LABEL_22;
    }

    v9 = v40;
    v30 = *(v40 + 8 * v15);
    if ((v30 & (1 << v11)) == 0)
    {
      goto LABEL_23;
    }

    if (v50 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v31 = v30 & (-2 << (v11 & 0x3F));
    if (v31)
    {
      v13 = __clz(__rbit64(v31)) | v11 & 0x7FFFFFFFFFFFFFC0;
      v14 = v39;
    }

    else
    {
      v32 = v15 << 6;
      v33 = v15 + 1;
      v14 = v39;
      v34 = (v38 + 8 * v15);
      while (v33 < (v13 + 63) >> 6)
      {
        v36 = *v34++;
        v35 = v36;
        v32 += 64;
        ++v33;
        if (v36)
        {
          result = sub_1E5F87098(v11, v50, 0);
          v13 = __clz(__rbit64(v35)) + v32;
          goto LABEL_4;
        }
      }

      result = sub_1E5F87098(v11, v50, 0);
    }

LABEL_4:
    v12 = v49 + 1;
    v11 = v13;
    if (v49 + 1 == v14)
    {
      return v8;
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

uint64_t sub_1E6534DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD88, &qword_1E6609A00);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  sub_1E65D7DC8();
  sub_1E6537F8C(a1, v9);

  sub_1E6537F8C(a1, v7);
  v10 = sub_1E65D9EE8();
  v12 = v11;

  v13 = type metadata accessor for SwappableWorkout(0);
  v14 = *(v13 + 20);
  v15 = sub_1E65D96F8();
  v16 = *(v15 - 8);
  (*(v16 + 32))(a2 + v14, v9, v15);
  v17 = (a2 + *(v13 + 24));
  *v17 = v10;
  v17[1] = v12;
  return (*(v16 + 8))(v7, v15);
}

uint64_t sub_1E6534F7C()
{
  v0 = sub_1E65D9AE8();
  v2 = v1;
  if (v0 == sub_1E65D9AE8() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E65E6C18();
  }

  return v4 & 1;
}

uint64_t sub_1E6535018()
{
  v0 = sub_1E65D9A28();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DA3E8();
  v4 = sub_1E65D9A18();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_1E65350FC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1E65DA598();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1E6538198(&qword_1ED07AD90, MEMORY[0x1E69CCEA0], MEMORY[0x1E69CCEA8]);
  v33 = a2;
  v11 = sub_1E65E5B38();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1E6538198(&qword_1ED07AD98, MEMORY[0x1E69CCEA0], MEMORY[0x1E69CCEB0]);
      v21 = sub_1E65E5B98();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1E6537514(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1E65353DC(void *a1)
{
  v2 = *(type metadata accessor for SwappableWorkout(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1E6530BB8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1E6535484(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1E6535484(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E65E6BA8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for SwappableWorkout(0);
        v6 = sub_1E65E5F98();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for SwappableWorkout(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1E65357B0(v8, v9, a1, v4);
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
    return sub_1E65355B0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E65355B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for SwappableWorkout(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v27 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = &v27 - v17;
  v29 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v34 = v19;
    v28 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v32 = v21;
    v33 = a3;
    v30 = v24;
    v31 = v23;
    while (1)
    {
      sub_1E6537E78(v24, v18);
      sub_1E6537E78(v21, v14);
      v25 = MEMORY[0x1E69410D0](&v18[*(v8 + 20)], &v14[*(v8 + 20)]);
      sub_1E6530F4C(v14);
      result = sub_1E6530F4C(v18);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v21 = v32 + v28;
        v23 = v31 - 1;
        v24 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      sub_1E6537EDC(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1E6537EDC(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E65357B0(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v102 = a1;
  v9 = type metadata accessor for SwappableWorkout(0);
  v110 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v104 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v113 = &v99 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v99 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v19 = &v99 - v18;
  v112 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x1E69E7CC0];
LABEL_97:
    v5 = *v102;
    if (!*v102)
    {
      goto LABEL_136;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_100:
      v115 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        while (*v112)
        {
          v95 = *(result + 16 * a4);
          v96 = result;
          v97 = *(result + 16 * (a4 - 1) + 40);
          sub_1E6536010(*v112 + *(v110 + 72) * v95, *v112 + *(v110 + 72) * *(result + 16 * (a4 - 1) + 32), *v112 + *(v110 + 72) * v97, v5);
          if (v6)
          {
          }

          if (v97 < v95)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v96 = sub_1E636AC44(v96);
          }

          if (a4 - 2 >= *(v96 + 2))
          {
            goto LABEL_124;
          }

          v98 = &v96[16 * a4];
          *v98 = v95;
          *(v98 + 1) = v97;
          v115 = v96;
          sub_1E636ABB8(a4 - 1);
          result = v115;
          a4 = *(v115 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_134;
      }
    }

LABEL_130:
    result = sub_1E636AC44(a4);
    goto LABEL_100;
  }

  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  v101 = a4;
  v114 = v9;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v105 = v22;
    if (v24 >= v20)
    {
      v20 = v24;
    }

    else
    {
      v25 = *v112;
      v26 = v23;
      v27 = *(v110 + 72);
      v5 = *v112 + v27 * v24;
      sub_1E6537E78(v5, v19);
      sub_1E6537E78(v25 + v27 * v26, v16);
      LODWORD(v109) = MEMORY[0x1E69410D0](&v19[*(v9 + 20)], &v16[*(v9 + 20)]);
      sub_1E6530F4C(v16);
      result = sub_1E6530F4C(v19);
      v100 = v26;
      v28 = v26 + 2;
      v111 = v27;
      v29 = v25 + v27 * v28;
      v30 = v109;
      while (v20 != v28)
      {
        sub_1E6537E78(v29, v19);
        sub_1E6537E78(v5, v16);
        v31 = MEMORY[0x1E69410D0](&v19[*(v114 + 20)], &v16[*(v114 + 20)]) & 1;
        sub_1E6530F4C(v16);
        result = sub_1E6530F4C(v19);
        ++v28;
        v29 += v111;
        v5 += v111;
        if ((v30 & 1) != v31)
        {
          v32 = v30;
          v20 = v28 - 1;
          goto LABEL_11;
        }
      }

      v32 = v30;
LABEL_11:
      v23 = v100;
      a4 = v101;
      v9 = v114;
      if (v32)
      {
        if (v20 < v100)
        {
          goto LABEL_127;
        }

        if (v100 < v20)
        {
          v99 = v6;
          v33 = v111 * (v20 - 1);
          v34 = v20 * v111;
          v109 = v20;
          v35 = v20;
          v36 = v100;
          v37 = v100 * v111;
          do
          {
            if (v36 != --v35)
            {
              v38 = *v112;
              if (!*v112)
              {
                goto LABEL_133;
              }

              v5 = v38 + v37;
              sub_1E6537EDC(v38 + v37, v104);
              if (v37 < v33 || v5 >= v38 + v34)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v37 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1E6537EDC(v104, v38 + v33);
            }

            ++v36;
            v33 -= v111;
            v34 -= v111;
            v37 += v111;
          }

          while (v36 < v35);
          v6 = v99;
          v23 = v100;
          a4 = v101;
          v9 = v114;
          v20 = v109;
        }
      }
    }

    v39 = v112[1];
    if (v20 >= v39)
    {
      goto LABEL_34;
    }

    if (__OFSUB__(v20, v23))
    {
      goto LABEL_126;
    }

    if (v20 - v23 >= a4)
    {
LABEL_34:
      v41 = v20;
      if (v20 < v23)
      {
        goto LABEL_125;
      }

      goto LABEL_35;
    }

    if (__OFADD__(v23, a4))
    {
      goto LABEL_128;
    }

    if ((v23 + a4) >= v39)
    {
      v40 = v112[1];
    }

    else
    {
      v40 = v23 + a4;
    }

    if (v40 < v23)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v20 == v40)
    {
      goto LABEL_34;
    }

    v99 = v6;
    v100 = v23;
    a4 = *v112;
    v86 = *(v110 + 72);
    v87 = *v112 + v86 * (v20 - 1);
    v88 = v20;
    v89 = -v86;
    v90 = v23 - v88;
    v109 = v88;
    v103 = v86;
    v5 = a4 + v88 * v86;
    v106 = v40;
LABEL_87:
    v107 = v5;
    v108 = v90;
    v111 = v87;
    v91 = v87;
LABEL_88:
    sub_1E6537E78(v5, v19);
    sub_1E6537E78(v91, v16);
    v92 = MEMORY[0x1E69410D0](&v19[*(v9 + 20)], &v16[*(v9 + 20)]);
    sub_1E6530F4C(v16);
    result = sub_1E6530F4C(v19);
    if (v92)
    {
      break;
    }

    v9 = v114;
LABEL_86:
    v87 = v111 + v103;
    v90 = v108 - 1;
    v41 = v106;
    v5 = v107 + v103;
    if (++v109 != v106)
    {
      goto LABEL_87;
    }

    v6 = v99;
    v23 = v100;
    if (v106 < v100)
    {
      goto LABEL_125;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v105;
    }

    else
    {
      result = sub_1E636ADD0(0, *(v105 + 2) + 1, 1, v105);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v42 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v42 >> 1)
    {
      result = sub_1E636ADD0((v42 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v43 = &v22[16 * a4];
    *(v43 + 4) = v23;
    *(v43 + 5) = v41;
    v44 = *v102;
    if (!*v102)
    {
      goto LABEL_135;
    }

    v106 = v41;
    if (a4)
    {
      while (2)
      {
        v45 = v5 - 1;
        if (v5 >= 4)
        {
          v50 = &v22[16 * v5 + 32];
          v51 = *(v50 - 64);
          v52 = *(v50 - 56);
          v56 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          if (v56)
          {
            goto LABEL_112;
          }

          v55 = *(v50 - 48);
          v54 = *(v50 - 40);
          v56 = __OFSUB__(v54, v55);
          v48 = v54 - v55;
          v49 = v56;
          if (v56)
          {
            goto LABEL_113;
          }

          v57 = &v22[16 * v5];
          v59 = *v57;
          v58 = *(v57 + 1);
          v56 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v56)
          {
            goto LABEL_115;
          }

          v56 = __OFADD__(v48, v60);
          v61 = v48 + v60;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v61 >= v53)
          {
            v79 = &v22[16 * v45 + 32];
            v81 = *v79;
            v80 = *(v79 + 1);
            v56 = __OFSUB__(v80, v81);
            v82 = v80 - v81;
            if (v56)
            {
              goto LABEL_122;
            }

            if (v48 < v82)
            {
              v45 = v5 - 2;
            }
          }

          else
          {
LABEL_54:
            if (v49)
            {
              goto LABEL_114;
            }

            v62 = &v22[16 * v5];
            v64 = *v62;
            v63 = *(v62 + 1);
            v65 = __OFSUB__(v63, v64);
            v66 = v63 - v64;
            v67 = v65;
            if (v65)
            {
              goto LABEL_117;
            }

            v68 = &v22[16 * v45 + 32];
            v70 = *v68;
            v69 = *(v68 + 1);
            v56 = __OFSUB__(v69, v70);
            v71 = v69 - v70;
            if (v56)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v66, v71))
            {
              goto LABEL_121;
            }

            if (v66 + v71 < v48)
            {
              goto LABEL_68;
            }

            if (v48 < v71)
            {
              v45 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v46 = *(v22 + 4);
            v47 = *(v22 + 5);
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
            goto LABEL_54;
          }

          v72 = &v22[16 * v5];
          v74 = *v72;
          v73 = *(v72 + 1);
          v56 = __OFSUB__(v73, v74);
          v66 = v73 - v74;
          v67 = v56;
LABEL_68:
          if (v67)
          {
            goto LABEL_116;
          }

          v75 = &v22[16 * v45];
          v77 = *(v75 + 4);
          v76 = *(v75 + 5);
          v56 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v56)
          {
            goto LABEL_119;
          }

          if (v78 < v66)
          {
            break;
          }
        }

        a4 = v45 - 1;
        if (v45 - 1 >= v5)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
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
          goto LABEL_129;
        }

        if (!*v112)
        {
          goto LABEL_132;
        }

        v83 = v22;
        v84 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v45 + 40];
        sub_1E6536010(*v112 + *(v110 + 72) * v84, *v112 + *(v110 + 72) * *&v22[16 * v45 + 32], *v112 + *(v110 + 72) * v5, v44);
        if (v6)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_1E636AC44(v83);
        }

        if (a4 >= *(v83 + 2))
        {
          goto LABEL_111;
        }

        v85 = &v83[16 * a4];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        v115 = v83;
        result = sub_1E636ABB8(v45);
        v22 = v115;
        v5 = *(v115 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v20 = v112[1];
    v21 = v106;
    a4 = v101;
    v9 = v114;
    if (v106 >= v20)
    {
      goto LABEL_97;
    }
  }

  if (a4)
  {
    v93 = v113;
    sub_1E6537EDC(v5, v113);
    v9 = v114;
    swift_arrayInitWithTakeFrontToBack();
    sub_1E6537EDC(v93, v91);
    v91 += v89;
    v5 += v89;
    if (__CFADD__(v90++, 1))
    {
      goto LABEL_86;
    }

    goto LABEL_88;
  }

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
  return result;
}

uint64_t sub_1E6536010(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = a3;
  v43 = type metadata accessor for SwappableWorkout(0);
  v8 = MEMORY[0x1EEE9AC00](v43);
  v42 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = v38 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = v44 - a2;
  if (v44 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v47 = a1;
  v46 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38[1] = v4;
    v23 = a4 + v18;
    if (v18 < 1)
    {
      v26 = a4 + v18;
    }

    else
    {
      v24 = -v14;
      v25 = a4 + v18;
      v26 = v23;
      v40 = v24;
      v41 = a4;
      do
      {
        v38[0] = v26;
        v27 = a2;
        v28 = a2 + v24;
        while (1)
        {
          v30 = v44;
          if (v27 <= a1)
          {
            v47 = v27;
            v45 = v38[0];
            goto LABEL_59;
          }

          v39 = v26;
          v44 += v24;
          v31 = v25 + v24;
          sub_1E6537E78(v31, v12);
          v32 = v28;
          v33 = v28;
          v34 = v12;
          v35 = v42;
          sub_1E6537E78(v33, v42);
          v36 = MEMORY[0x1E69410D0](v34 + *(v43 + 20), v35 + *(v43 + 20));
          v37 = v35;
          v12 = v34;
          sub_1E6530F4C(v37);
          sub_1E6530F4C(v34);
          if (v36)
          {
            break;
          }

          v26 = v31;
          if (v30 < v25 || v44 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v32;
          }

          else
          {
            v28 = v32;
            if (v30 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v31;
          v29 = v31 > v41;
          v24 = v40;
          if (!v29)
          {
            a2 = v27;
            goto LABEL_58;
          }
        }

        if (v30 < v27 || v44 >= v27)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v39;
          v24 = v40;
        }

        else
        {
          v26 = v39;
          v24 = v40;
          a2 = v32;
          if (v30 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v41);
    }

LABEL_58:
    v47 = a2;
    v45 = v26;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v45 = a4 + v17;
    if (v17 >= 1 && a2 < v44)
    {
      do
      {
        sub_1E6537E78(a2, v12);
        v21 = v42;
        sub_1E6537E78(a4, v42);
        v22 = MEMORY[0x1E69410D0](&v12[*(v43 + 20)], v21 + *(v43 + 20));
        sub_1E6530F4C(v21);
        sub_1E6530F4C(v12);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v46 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v47 = a1;
      }

      while (a4 < v19 && a2 < v44);
    }
  }

LABEL_59:
  sub_1E6530864(&v47, &v46, &v45);
  return 1;
}

uint64_t sub_1E6536498(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1E65DA598();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADA0, &qword_1E6609A08);
  result = sub_1E65E6868();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1E6538198(&qword_1ED07AD90, MEMORY[0x1E69CCEA0], MEMORY[0x1E69CCEA8]);
      result = sub_1E65E5B38();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

void *sub_1E65367F4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v44 = a1;
  v48 = *MEMORY[0x1E69E9840];
  v7 = sub_1E65D9B08();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v10) = *(a3 + 32);
  v12 = ((1 << v10) + 63) >> 6;
  if ((v10 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v42 = v11;
    v43 = v9;
    v36 = v12;
    v47 = v4;
    v38 = &v35;
    MEMORY[0x1EEE9AC00](v9);
    v37 = &v35 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v13);
    v14 = 0;
    v45 = a3;
    v16 = *(a3 + 56);
    a3 += 56;
    v15 = v16;
    v17 = 1 << *(a3 - 24);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v15;
    v11 = ((v17 + 63) >> 6);
    v39 = 0;
    v40 = v8 + 16;
    v41 = (v8 + 8);
    while (v19)
    {
      v20 = __clz(__rbit64(v19));
      v46 = (v19 - 1) & v19;
LABEL_12:
      v12 = v20 | (v14 << 6);
      v23 = *(v45 + 48) + *(v8 + 72) * v12;
      v4 = v8;
      v24 = *(v8 + 16);
      v25 = v42;
      v26 = v43;
      v24(v42, v23, v43);
      v27 = v47;
      v28 = v44(v25);
      v47 = v27;
      if (v27)
      {
        (*v41)(v25, v26);

        return swift_willThrow();
      }

      v29 = v28;
      v9 = (*v41)(v25, v26);
      v8 = v4;
      v19 = v46;
      if (v29)
      {
        *&v37[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
        if (__OFADD__(v39++, 1))
        {
          __break(1u);
          return sub_1E65371EC(v37, v36, v39, v45);
        }
      }
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        return sub_1E65371EC(v37, v36, v39, v45);
      }

      v22 = *(a3 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v46 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v32 = v9;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v9 = v32;
  }

  v33 = swift_slowAlloc();
  v34 = sub_1E6536E1C(v33, v12, a3, v44, a2, MEMORY[0x1E69CC6C0], sub_1E65371EC);

  result = MEMORY[0x1E694F1C0](v33, -1, -1);
  if (!v4)
  {
    return v34;
  }

  return result;
}

uint64_t sub_1E6536BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, __n128))
{
  v31 = a2;
  v32 = a7;
  v38 = a4;
  v33 = a1;
  v41 = a6(0);
  result = MEMORY[0x1EEE9AC00](v41);
  v39 = a3;
  v40 = &v31 - v11;
  v12 = 0;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v36 = v10 + 16;
  v37 = v10;
  v34 = 0;
  v35 = (v10 + 8);
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v21 = v20 | (v12 << 6);
    v22 = v41;
    v23 = v40;
LABEL_11:
    (*(v37 + 16))(v23, *(v39 + 48) + *(v37 + 72) * v21, v22);
    v26 = v38(v23);
    v27 = v23;
    if (v7)
    {
      return (*v35)(v23, v22);
    }

    v28 = v26;
    result = (*v35)(v27, v22);
    if (v28)
    {
      *(v33 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
LABEL_16:
        v30 = v39;

        return (v32)(v33, v31, v34, v30);
      }
    }
  }

  v24 = v12;
  v22 = v41;
  v23 = v40;
  while (1)
  {
    v12 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_16;
    }

    v25 = *(v14 + 8 * v12);
    ++v24;
    if (v25)
    {
      v18 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v12 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1E6536E1C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, __n128))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a7;
      v11 = a6;
      v12 = a5;
      v13 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v13;
      a5 = v12;
      a6 = v11;
      a7 = v10;
    }

    v14 = sub_1E6536BB4(result, a2, a3, a4, a5, a6, a7);

    return v14;
  }

  return result;
}

uint64_t sub_1E6536EC4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1E65DA3F8();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD78, &qword_1E66099F8);
  result = sub_1E65E6888();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1E6538198(&qword_1ED07AD80, MEMORY[0x1E69CCD78], MEMORY[0x1E69CCD88]);
    result = sub_1E65E5B38();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1E65371EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1E65D9B08();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075390, &qword_1E65F1A18);
  result = sub_1E65E6888();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1E6538198(&qword_1EE2D7040, MEMORY[0x1E69CC6C0], MEMORY[0x1E69CC6C8]);
    result = sub_1E65E5B38();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1E6537514(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1E65DA598();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1E6536498(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1E65377DC(MEMORY[0x1E69CCEA0], &qword_1ED07ADA0, &qword_1E6609A08);
      goto LABEL_12;
    }

    sub_1E6537A14(v10 + 1);
  }

  v12 = *v3;
  sub_1E6538198(&qword_1ED07AD90, MEMORY[0x1E69CCEA0], MEMORY[0x1E69CCEA8]);
  v13 = sub_1E65E5B38();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1E6538198(&qword_1ED07AD98, MEMORY[0x1E69CCEA0], MEMORY[0x1E69CCEB0]);
      v21 = sub_1E65E5B98();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1E65E6C58();
  __break(1u);
  return result;
}

void *sub_1E65377DC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_1E65E6858();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

uint64_t sub_1E6537A14(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1E65DA598();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADA0, &qword_1E6609A08);
  v7 = sub_1E65E6868();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1E6538198(&qword_1ED07AD90, MEMORY[0x1E69CCEA0], MEMORY[0x1E69CCEA8]);
      result = sub_1E65E5B38();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

void *sub_1E6537D30(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E6530964(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E6537D50(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E653098C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E6537D70(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E65309B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1E6537D90@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  if (result < 0 || (v5 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = *(a3 + 48);
  v8 = a4(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = v7 + *(v9 + 72) * v5;

  return v10(a5, v11, v8);
}

uint64_t sub_1E6537E78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SwappableWorkout(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6537EDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SwappableWorkout(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6537F8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD88, &qword_1E6609A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6537FFC(uint64_t a1)
{
  v2 = sub_1E65DA598();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E6538198(&qword_1ED07AD90, MEMORY[0x1E69CCEA0], MEMORY[0x1E69CCEA8]);
  result = MEMORY[0x1E694DC60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1E65350FC(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1E6538198(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6538200(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADC8, &qword_1E6609BC8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v48 = v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADD0, &unk_1E6609BD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = v34 - v6;
  v7 = sub_1E65D76F8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1E65DA488();
  v9 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1E65DA598();
  v11 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v34[1] = v1;
    v54 = MEMORY[0x1E69E7CC0];
    sub_1E6537D70(0, v14, 0);
    v53 = v54;
    v16 = a1 + 56;
    result = sub_1E65E6748();
    v17 = result;
    v18 = 0;
    v39 = v9 + 8;
    v40 = v9 + 16;
    v37 = v13;
    v38 = v11 + 32;
    v35 = a1 + 64;
    v36 = v14;
    v41 = a1 + 56;
    v42 = v11;
    while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(a1 + 32))
    {
      if ((*(v16 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
      {
        goto LABEL_22;
      }

      v51 = v17 >> 6;
      v52 = 1 << v17;
      v20 = *(a1 + 36);
      v49 = v18;
      v50 = v20;
      v22 = v44;
      v21 = v45;
      (*(v9 + 16))(v44, *(a1 + 48) + *(v9 + 72) * v17, v45);
      sub_1E65DA418();
      sub_1E65DA438();
      sub_1E65DA448();
      sub_1E65DA588();
      (*(v9 + 8))(v22, v21);
      v23 = v53;
      v54 = v53;
      v25 = *(v53 + 16);
      v24 = *(v53 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1E6537D70((v24 > 1), v25 + 1, 1);
        v23 = v54;
      }

      *(v23 + 16) = v25 + 1;
      v26 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v53 = v23;
      result = (*(v42 + 32))(v23 + v26 + *(v42 + 72) * v25, v37, v43);
      v19 = 1 << *(a1 + 32);
      v16 = v41;
      if (v17 >= v19)
      {
        goto LABEL_23;
      }

      v27 = *(v41 + 8 * v51);
      if ((v27 & v52) == 0)
      {
        goto LABEL_24;
      }

      if (v50 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v28 = v27 & (-2 << (v17 & 0x3F));
      if (v28)
      {
        v19 = __clz(__rbit64(v28)) | v17 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = v51 << 6;
        v30 = v51 + 1;
        v31 = (v35 + 8 * v51);
        while (v30 < (v19 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_1E5F87098(v17, v50, 0);
            v19 = __clz(__rbit64(v32)) + v29;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v17, v50, 0);
      }

LABEL_4:
      v18 = v49 + 1;
      v17 = v19;
      if (v49 + 1 == v36)
      {
        return v53;
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
  }

  return result;
}

uint64_t sub_1E65386D8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A720, &qword_1E6607338);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v41 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADD0, &unk_1E6609BD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v41 - v14;
  v16 = sub_1E65D7EB8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072968, &unk_1E6609800);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v45 = &v41 - v21;
  swift_defaultActor_initialize();
  v46 = v17;
  v42 = *(v17 + 56);
  v43 = OBJC_IVAR____TtC25FitnessWorkoutPlanService27SimulatorWorkoutPlanService_activeWorkoutPlan;
  v48 = v16;
  v42(v1 + OBJC_IVAR____TtC25FitnessWorkoutPlanService27SimulatorWorkoutPlanService_activeWorkoutPlan, 1, 1, v16);
  v22 = OBJC_IVAR____TtC25FitnessWorkoutPlanService27SimulatorWorkoutPlanService_workoutPlanTemplateMetadata;
  v23 = sub_1E65DA488();
  sub_1E653B364(&qword_1ED074170, MEMORY[0x1E69CCDC8], MEMORY[0x1E69CCDD8]);
  *(v1 + v22) = sub_1E65E6218();
  v44 = v19;
  sub_1E65D7E88();
  v24 = sub_1E65D76A8();
  v25 = *(*(v24 - 8) + 56);
  v47 = v15;
  v25(v15, 1, 1, v24);
  v26 = sub_1E65D76F8();
  v27 = *(*(v26 - 8) + 56);
  v49 = v12;
  v27(v12, 1, 1, v26);
  v28 = sub_1E65D7BC8();
  v29 = v41;
  (*(*(v28 - 8) + 56))();

  sub_1E6059E80(v30, v4);

  v31 = *(v23 - 8);
  if ((*(v31 + 48))(v4, 1, v23) == 1)
  {
    sub_1E5DFE50C(v4, &qword_1ED07A720, &qword_1E6607338);
    v32 = 1;
  }

  else
  {
    sub_1E65DA418();
    (*(v31 + 8))(v4, v23);
    v32 = 0;
  }

  v27(v10, v32, 1, v26);
  v33 = v45;
  v34 = v47;
  v35 = v49;
  v36 = v29;
  v37 = v44;
  sub_1E65D7E78();
  sub_1E5DFE50C(v10, &unk_1ED077760, &unk_1E66011D0);
  sub_1E5DFE50C(v36, &qword_1ED07ADD0, &unk_1E6609BD0);
  sub_1E5DFE50C(v35, &unk_1ED077760, &unk_1E66011D0);
  sub_1E5DFE50C(v34, &qword_1ED0752D8, &qword_1E660CC30);
  v38 = v48;
  (*(v46 + 8))(v37, v48);
  v42(v33, 0, 1, v38);
  v39 = v43;
  swift_beginAccess();
  sub_1E653B3AC(v33, v1 + v39);
  swift_endAccess();
  return v1;
}

uint64_t sub_1E6538CA0()
{
  sub_1E5DFE50C(v0 + OBJC_IVAR____TtC25FitnessWorkoutPlanService27SimulatorWorkoutPlanService_activeWorkoutPlan, &qword_1ED072968, &unk_1E6609800);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t static WorkoutPlanService.simulator()@<X0>(void *a1@<X8>)
{
  type metadata accessor for SimulatorWorkoutPlanService(0);
  v2 = swift_allocObject();
  sub_1E65386D8();
  *a1 = &unk_1E6609A18;
  a1[1] = v2;
  a1[2] = &unk_1E6609A28;
  a1[3] = v2;
  a1[4] = &unk_1E6609A38;
  a1[5] = v2;
  a1[6] = &unk_1E6609A48;
  a1[7] = v2;
  a1[8] = &unk_1E6609A58;
  a1[9] = v2;
  a1[10] = &unk_1E6609A68;
  a1[11] = v2;
  a1[12] = &unk_1E6609A78;
  a1[13] = v2;
  a1[14] = &unk_1E6609A88;
  a1[15] = v2;
  a1[16] = &unk_1E6609A98;
  a1[17] = v2;
  a1[18] = &unk_1E6609AA8;
  a1[19] = v2;
  a1[20] = &unk_1E6609AB8;
  a1[21] = v2;
  a1[22] = &unk_1E6609AC8;
  a1[23] = v2;
  a1[24] = &unk_1E6609AD8;
  a1[25] = v2;
  a1[26] = &unk_1E6609AE8;
  a1[27] = v2;
  a1[28] = &unk_1E6609AF8;
  a1[29] = v2;
  a1[30] = &unk_1E6609B08;
  a1[31] = v2;
  a1[32] = &unk_1E6609B18;
  a1[33] = v2;
  a1[34] = &unk_1E6609B28;
  a1[35] = v2;
  a1[36] = &unk_1E6609B38;
  a1[37] = v2;
  a1[38] = &unk_1E6609B48;
  a1[39] = v2;
  return swift_retain_n();
}

uint64_t type metadata accessor for SimulatorWorkoutPlanService(uint64_t a1)
{
  result = qword_1ED07ADA8;
  if (!qword_1ED07ADA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E6538F24(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072968, &unk_1E6609800);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6538FC4, a2, 0);
}

uint64_t sub_1E6538FC4()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = OBJC_IVAR____TtC25FitnessWorkoutPlanService27SimulatorWorkoutPlanService_activeWorkoutPlan;
  swift_beginAccess();
  sub_1E61A8DB4(v1 + v3, v2);
  v4 = sub_1E65D7EB8();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_1E5DFE50C(v0[7], &qword_1ED072968, &unk_1E6609800);
    v6 = sub_1E65D8B88();
    sub_1E653B364(&qword_1ED078840, MEMORY[0x1E69CB928], MEMORY[0x1E69CB930]);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E69CB8F8], v6);
    swift_willThrow();
  }

  else
  {
    (*(v5 + 32))(v0[5], v0[7], v4);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E65391AC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6538F24(a1, v1);
}

uint64_t sub_1E6539268()
{

  v2 = sub_1E6538200(v1);

  v3 = sub_1E6537FFC(v2);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1E6539310()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E6539248(v0);
}

uint64_t sub_1E65393A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65393BC, a2, 0);
}

uint64_t sub_1E65393BC()
{
  v1 = *(v0 + 16);

  v3 = sub_1E653AD84(v2, v1);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1E653945C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FE99E8;

  return sub_1E65393A0(a1, v1);
}

uint64_t sub_1E6539514()
{
  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_1E653958C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E65394F4(v0);
}

uint64_t sub_1E6539668()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E653961C(v0);
}

uint64_t sub_1E6539718()
{
  sub_1E65D96E8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E653977C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E65396F8(a1, a2, v2);
}

uint64_t sub_1E6539848()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E6539828();
}

uint64_t sub_1E6539918(uint64_t a1)
{
  sub_1E65D7688();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1E653997C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1E5DFA78C;

  return sub_1E65398F8(a1, a2, a3, v3);
}

uint64_t sub_1E6539A4C()
{
  sub_1E65D9038();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6539AB0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6539A30(a1, v1);
}

uint64_t sub_1E6539B6C()
{
  sub_1E65D9638();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6539BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E6539B4C(a1, a2, a3, a4, v4);
}

uint64_t sub_1E6539C94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E6539D44(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DA0, &qword_1E6609BC0);
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6539E14, a2, 0);
}

uint64_t sub_1E6539E14()
{
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E69E8650], v0[3]);
  sub_1E65E6128();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E6539ED0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6539D44(a1, v1);
}

uint64_t sub_1E6539F6C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADC0, &qword_1E6609BB8);
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E653A03C, a2, 0);
}

uint64_t sub_1E653A03C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_1E65DDF18();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E653A110(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E6539F6C(a1, v1);
}

uint64_t sub_1E653A1AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E653A25C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E653A23C(a1, a2, v2);
}

uint64_t sub_1E653A308()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E653A398()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E653A450()
{
  sub_1E65D9378();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E653A4B4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E653A430(a1, a2, v2);
}

uint64_t sub_1E653A580()
{
  sub_1E65D7E88();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E653A5E4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E653A560(a1, a2, v2);
}

uint64_t sub_1E653A690(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E653A23C(a1, a2, v2);
}

void sub_1E653A744(uint64_t a1)
{
  sub_1E653A7EC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E653A7EC(uint64_t a1)
{
  if (!qword_1ED07ADB8)
  {
    sub_1E65D7EB8();
    v1 = sub_1E65E6668();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED07ADB8);
    }
  }
}

unint64_t *sub_1E653A844(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1E653A8E0(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1E653A8E0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v41 = a2;
  v43 = a1;
  v6 = sub_1E65D76F8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v40 - v11;
  v12 = sub_1E65DA488();
  result = MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v53 = a3;
  v18 = *(a3 + 56);
  v44 = a3 + 56;
  v45 = 0;
  v19 = 1 << *(a3 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v56 = a4 + 7;
  v55 = v7 + 16;
  v42 = v7;
  v57 = (v7 + 8);
  v58 = a4;
  v51 = v14;
  v52 = result;
  v47 = (v14 + 8);
  v48 = v14 + 16;
  v49 = v22;
  v50 = v16;
  while (v21)
  {
    v23 = __clz(__rbit64(v21));
    v54 = (v21 - 1) & v21;
LABEL_13:
    v26 = v23 | (v17 << 6);
    v27 = *(v53 + 48);
    v28 = *(v51 + 72);
    v46 = v26;
    (*(v51 + 16))(v16, v27 + v28 * v26, v12);
    sub_1E65DA418();
    if (v58[2] && (v29 = v58, sub_1E653B364(&qword_1EE2D71A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), v30 = sub_1E65E5B38(), v31 = -1 << *(v29 + 32), v32 = v30 & ~v31, ((*(v56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
    {
      v33 = ~v31;
      v34 = *(v42 + 72);
      v35 = *(v42 + 16);
      while (1)
      {
        v35(v10, v58[6] + v34 * v32, v6);
        sub_1E653B364(&qword_1EE2D71A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v36 = sub_1E65E5B98();
        v37 = *v57;
        (*v57)(v10, v6);
        if (v36)
        {
          break;
        }

        v32 = (v32 + 1) & v33;
        if (((*(v56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v37(v59, v6);
      v16 = v50;
      v12 = v52;
      result = (*v47)(v50, v52);
      *(v43 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      v38 = __OFADD__(v45++, 1);
      v22 = v49;
      v21 = v54;
      if (v38)
      {
        __break(1u);
LABEL_22:
        v39 = v53;

        return sub_1E6089D18(v43, v41, v45, v39);
      }
    }

    else
    {
LABEL_5:
      (*v57)(v59, v6);
      v16 = v50;
      v12 = v52;
      result = (*v47)(v50, v52);
      v22 = v49;
      v21 = v54;
    }
  }

  v24 = v17;
  while (1)
  {
    v17 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v17 >= v22)
    {
      goto LABEL_22;
    }

    v25 = *(v44 + 8 * v17);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v54 = (v25 - 1) & v25;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E653AD84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v62 = *MEMORY[0x1E69E9840];
  v60 = sub_1E65D76F8();
  v6 = *(v60 - 8);
  v7 = MEMORY[0x1EEE9AC00](v60);
  v57 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v61 = v40 - v9;
  v10 = sub_1E65DA488();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v12) = *(a1 + 32);
  v14 = v12 & 0x3F;
  v41 = ((1 << v12) + 63) >> 6;
  v15 = 8 * v41;

  if (v14 > 0xD)
  {
LABEL_27:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v39 = swift_slowAlloc();

      v37 = sub_1E653A844(v39, v41, a1, a2);

      MEMORY[0x1E694F1C0](v39, -1, -1);

      return v37;
    }
  }

  v40[2] = v3;
  v40[1] = v40;
  MEMORY[0x1EEE9AC00](v16);
  v43 = v40 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v43, v15);
  v17 = 0;
  v3 = 0;
  v53 = a1;
  v19 = *(a1 + 56);
  a1 += 56;
  v18 = v19;
  v44 = a1;
  v20 = 1 << *(a1 - 24);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v18;
  v23 = (v20 + 63) >> 6;
  v58 = a2 + 56;
  v56 = v6 + 16;
  v42 = v6;
  v59 = (v6 + 8);
  v51 = v10;
  v52 = v11;
  v47 = v11 + 16;
  v48 = (v11 + 8);
  v49 = v23;
  v50 = v13;
  while (2)
  {
    v45 = v17;
    while (1)
    {
      v24 = v53;
      if (!v22)
      {
        v26 = v3;
        while (1)
        {
          v3 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v3 >= v23)
          {
            goto LABEL_24;
          }

          v27 = *(v44 + 8 * v3);
          ++v26;
          if (v27)
          {
            v25 = __clz(__rbit64(v27));
            v54 = (v27 - 1) & v27;
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_27;
      }

      v25 = __clz(__rbit64(v22));
      v54 = (v22 - 1) & v22;
LABEL_15:
      v28 = v25 | (v3 << 6);
      v29 = *(v53 + 48);
      v30 = *(v52 + 72);
      v46 = v28;
      (*(v52 + 16))(v13, v29 + v30 * v28, v10);
      v15 = v13;
      sub_1E65DA418();
      if (*(a2 + 16))
      {
        sub_1E653B364(&qword_1EE2D71A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        v15 = v61;
        v31 = sub_1E65E5B38();
        v32 = -1 << *(a2 + 32);
        v6 = v31 & ~v32;
        if ((*(v58 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          break;
        }
      }

LABEL_7:
      (*v59)(v61, v60);
      v13 = v50;
      v10 = v51;
      (*v48)(v50, v51);
      v23 = v49;
      v22 = v54;
    }

    v55 = ~v32;
    v11 = *(v42 + 72);
    v33 = *(v42 + 16);
    while (1)
    {
      v34 = a2;
      v35 = v57;
      v15 = v60;
      v33(v57, *(a2 + 48) + v11 * v6, v60);
      sub_1E653B364(&qword_1EE2D71A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      a1 = sub_1E65E5B98();
      v36 = *v59;
      (*v59)(v35, v15);
      if (a1)
      {
        break;
      }

      v6 = (v6 + 1) & v55;
      a2 = v34;
      if (((*(v58 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v36(v61, v60);
    v13 = v50;
    v10 = v51;
    (*v48)(v50, v51);
    *&v43[(v46 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v46;
    v17 = v45 + 1;
    a2 = v34;
    v23 = v49;
    v22 = v54;
    if (!__OFADD__(v45, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_24:
  v37 = sub_1E6089D18(v43, v41, v45, v24);

  return v37;
}

uint64_t sub_1E653B364(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E653B3AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072968, &unk_1E6609800);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E653B420(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE00, &qword_1E6609D00);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E653B4F0, v2, 0);
}

uint64_t sub_1E653B4F0()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 112), *(*(v0 + 32) + 136));
  sub_1E65DD798();

  return MEMORY[0x1EEE6DFA0](sub_1E653B58C, 0, 0);
}

uint64_t sub_1E653B58C()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "FitnessSyncService/LiveSyncService.swift";
  *(v2 + 24) = 40;
  *(v2 + 32) = 2;
  *(v2 + 40) = 20;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = sub_1E65D8738();
  *v3 = v0;
  v3[1] = sub_1E653B6A4;
  v5 = v0[2];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E653E56C, v2, v4);
}

uint64_t sub_1E653B6A4()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6523658, 0, 0);
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_1E653B828(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 72) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E653B8F8, v1, 0);
}

uint64_t sub_1E653B8F8()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 112), *(*(v0 + 16) + 136));
  sub_1E65DD778();

  return MEMORY[0x1EEE6DFA0](sub_1E653B998, 0, 0);
}

uint64_t sub_1E653B998()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = "FitnessSyncService/LiveSyncService.swift";
  *(v2 + 24) = 40;
  *(v2 + 32) = 2;
  *(v2 + 40) = 24;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E6523A50;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E653E680, v2, v4);
}

uint64_t sub_1E653BAA8()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADF0, &qword_1E6609CF0);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E653BB74, v0, 0);
}

uint64_t sub_1E653BB74()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 112), *(*(v0 + 16) + 136));
  sub_1E65DD748();

  return MEMORY[0x1EEE6DFA0](sub_1E653BC08, 0, 0);
}

uint64_t sub_1E653BC08()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = "FitnessSyncService/LiveSyncService.swift";
  *(v2 + 24) = 40;
  *(v2 + 32) = 2;
  *(v2 + 40) = 28;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E653BD1C;
  v4 = MEMORY[0x1E69CB948];

  return MEMORY[0x1EEE6DE38](v0 + 9, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E653E490, v2, v4);
}

uint64_t sub_1E653BD1C()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6523C0C, 0, 0);
  }

  else
  {
    v5 = *(v2 + 32);
    v4 = *(v2 + 40);
    v6 = *(v2 + 24);
    v7 = *(v2 + 72);

    (*(v5 + 8))(v4, v6);

    v8 = *(v3 + 8);

    return v8(v7);
  }
}

uint64_t sub_1E653BEB0()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADE0, &qword_1E6609CE0);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E653BF7C, v0, 0);
}

uint64_t sub_1E653BF7C()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 112), *(*(v0 + 16) + 136));
  sub_1E65DD768();

  return MEMORY[0x1EEE6DFA0](sub_1E653C010, 0, 0);
}

uint64_t sub_1E653C010()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = "FitnessSyncService/LiveSyncService.swift";
  *(v2 + 24) = 40;
  *(v2 + 32) = 2;
  *(v2 + 40) = 32;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E653C124;
  v4 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 9, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E653E3E4, v2, v4);
}

uint64_t sub_1E653C124()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {

    v3 = sub_1E653C338;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 40);
    v6 = *(v2 + 24);
    v7 = *(v2 + 32);
    v8 = *(v2 + 16);
    *(v2 + 73) = *(v2 + 72);

    (*(v7 + 8))(v5, v6);
    v3 = sub_1E653C288;
    v4 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E653C288()
{
  if ((*(v0 + 73) & 1) == 0)
  {
    sub_1E653E414();
    swift_allocError();
    swift_willThrow();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E653C338()
{
  v1 = v0[2];
  (*(v0[4] + 8))(v0[5], v0[3]);

  return MEMORY[0x1EEE6DFA0](sub_1E653C3B0, v1, 0);
}

uint64_t sub_1E653C3B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E653C414(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E653C4E0, v1, 0);
}

uint64_t sub_1E653C4E0()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 112), *(*(v0 + 24) + 136));
  sub_1E65DD788();

  return MEMORY[0x1EEE6DFA0](sub_1E653C57C, 0, 0);
}

uint64_t sub_1E653C57C()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessSyncService/LiveSyncService.swift";
  *(v2 + 24) = 40;
  *(v2 + 32) = 2;
  *(v2 + 40) = 39;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1E653C68C;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E653D3FC, v2, v4);
}

uint64_t sub_1E653C68C()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1E6522D30;
    v4 = 0;
  }

  else
  {
    v5 = v2[3];
    (*(v2[5] + 8))(v2[6], v2[4]);
    v3 = sub_1E653C7E4;
    v4 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E653C7E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E653C848(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFA78C;

  return sub_1E653B420(a1, a2);
}

uint64_t sub_1E653C8F4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFA78C;

  return sub_1E653C848(a1, a2);
}

uint64_t sub_1E653C9A0(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E653B828(a1);
}

uint64_t sub_1E653CA38(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E653C9A0(a1);
}

uint64_t sub_1E653CAD0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60ABB70;

  return sub_1E653BAA8();
}

uint64_t sub_1E653CB60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FE99E8;

  return sub_1E653CAD0();
}

uint64_t sub_1E653CBF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E653BEB0();
}

uint64_t sub_1E653CC80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E653CBF0();
}

uint64_t sub_1E653CD10(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E653C414(a1);
}

uint64_t sub_1E653CDA8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E653CD10(a1);
}

uint64_t sub_1E653CE60()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 112), *(*(v0 + 16) + 136));
  sub_1E65DD758();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E653CEE4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFA78C;

  return sub_1E653CE40(v0);
}

uint64_t sub_1E653CF74()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6519EB0(v2);
}

uint64_t sub_1E653D020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE08, &qword_1E6609D08);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE00, &qword_1E6609D00);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E653E584;
  *(v34 + 24) = v32;

  v33(sub_1E6531034, v34);
}

uint64_t sub_1E653D414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADF8, &qword_1E6609CF8);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADF0, &qword_1E6609CF0);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E653E4A8;
  *(v34 + 24) = v32;

  v33(sub_1E5E20B18, v34);
}

uint64_t sub_1E653D7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADE8, &qword_1E6609CE8);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADE0, &qword_1E6609CE0);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E653E468;
  *(v34 + 24) = v32;

  v33(sub_1E5E20B0C, v34);
}

uint64_t sub_1E653DBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_1E65D8738();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE10, &unk_1E6609D10);
  MEMORY[0x1EEE9AC00](v44);
  v15 = (&v34 - v14);
  v16 = sub_1E65E3B68();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v19 = sub_1E65E3B48();
  v20 = sub_1E65E6338();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_1E65E68B8();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_1E5DFD4B0(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_1E5DE9000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1E694F1C0](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x1E694F1C0](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_1E653E610(a1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE08, &qword_1E6609D08);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE08, &qword_1E6609D08);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E653DF30(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v29 = a7;
  v28 = a6;
  v30 = a2;
  v11 = sub_1E65E3B68();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v15 = sub_1E65E3B48();
  v16 = sub_1E65E6338();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27[0] = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v27[1] = a8;
    v20 = v19;
    v31 = v19;
    *v18 = 134218498;
    *(v18 + 4) = a3;
    *(v18 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v23 = sub_1E5DFD4B0(v21, v22, &v31);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v29;
    _os_log_impl(&dword_1E5DE9000, v15, v16, "Finished P->A conversion: %ld:%s:%lu", v18, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1E694F1C0](v20, -1, -1);
    v24 = v18;
    a1 = v27[0];
    MEMORY[0x1E694F1C0](v24, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  if (v30)
  {
    v31 = a1;
    v25 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADF8, &qword_1E6609CF8);
    return sub_1E65E5FE8();
  }

  else
  {
    LOBYTE(v31) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADF8, &qword_1E6609CF8);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E653E188(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v29 = a7;
  v28 = a6;
  v30 = a2;
  v11 = sub_1E65E3B68();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v15 = sub_1E65E3B48();
  v16 = sub_1E65E6338();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27[0] = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v27[1] = a8;
    v20 = v19;
    v31 = v19;
    *v18 = 134218498;
    *(v18 + 4) = a3;
    *(v18 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v23 = sub_1E5DFD4B0(v21, v22, &v31);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v29;
    _os_log_impl(&dword_1E5DE9000, v15, v16, "Finished P->A conversion: %ld:%s:%lu", v18, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1E694F1C0](v20, -1, -1);
    v24 = v18;
    a1 = v27[0];
    MEMORY[0x1E694F1C0](v24, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  if (v30)
  {
    v31 = a1;
    v25 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADE8, &qword_1E6609CE8);
    return sub_1E65E5FE8();
  }

  else
  {
    LOBYTE(v31) = a1 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADE8, &qword_1E6609CE8);
    return sub_1E65E5FF8();
  }
}

unint64_t sub_1E653E414()
{
  result = qword_1EE2D62E8[0];
  if (!qword_1EE2D62E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2D62E8);
  }

  return result;
}

uint64_t sub_1E653E4D0(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(v4 + 40);
  v14 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(v11, v12, v7, v8, v9, v13, v10, v14);
}

uint64_t sub_1E653E584(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE08, &qword_1E6609D08) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 40);
  v9 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_1E653DBCC(a1, v4, v5, v6, v8, v7, v9);
}

uint64_t sub_1E653E610(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE10, &unk_1E6609D10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static SyncService.simulator()@<X0>(void *a1@<X8>)
{
  type metadata accessor for SimulatorSyncService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_1E6609D78;
  *(v3 + 24) = v2;
  *a1 = &unk_1E6609D28;
  a1[1] = v2;
  a1[2] = &unk_1E6609D38;
  a1[3] = v2;
  a1[4] = &unk_1E6609D48;
  a1[5] = v2;
  a1[6] = &unk_1E6609D58;
  a1[7] = v2;
  a1[8] = &unk_1E6609D68;
  a1[9] = v2;
  a1[10] = &unk_1E6609C50;
  a1[11] = v3;
  return swift_retain_n();
}

uint64_t sub_1E653E7AC()
{
  sub_1E653EE9C(MEMORY[0x1E69E7CC0]);
  sub_1E65D8728();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E653E820(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFA78C;

  return sub_1E653E78C(a1, a2, v2);
}

uint64_t sub_1E653E8CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E653E980()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FE99E8;

  return sub_1E653E964();
}

uint64_t sub_1E653EA2C()
{
  sub_1E653E414();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E653EAB4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFE6BC;

  return sub_1E653EA10(v0);
}

uint64_t sub_1E653EB44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E653EBDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFA78C;

  return sub_1E5F87068();
}

unint64_t sub_1E653EC6C(uint64_t a1)
{
  sub_1E65DAEC8();
  sub_1E653F0E0(&qword_1EE2D6FA0, MEMORY[0x1E69CD3C8]);
  v2 = sub_1E65E5B38();

  return sub_1E653ECF0(a1, v2);
}

unint64_t sub_1E653ECF0(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1E65DAEC8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
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
      sub_1E653F0E0(&qword_1EE2D6F98, MEMORY[0x1E69CD3D0]);
      v15 = sub_1E65E5B98();
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

unint64_t sub_1E653EE9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE18, &qword_1E6609DC0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE20, &qword_1E6609DC8);
    v7 = sub_1E65E6A28();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E653F070(v9, v5);
      result = sub_1E653EC6C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1E65DAEC8();
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1E653F070(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE18, &qword_1E6609DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E653F0E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1E65DAEC8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SyncServiceError.hashValue.getter()
{
  sub_1E65E6D28();
  MEMORY[0x1E694E740](0);
  return sub_1E65E6D78();
}

unint64_t sub_1E653F19C()
{
  result = qword_1ED07AE28;
  if (!qword_1ED07AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07AE28);
  }

  return result;
}

uint64_t SyncService.fetchRemoteSyncableCounts.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SyncService.fetchRemoteSyncables.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SyncService.queryAccountSyncStatus.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SyncService.requireAccountUpgrade.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SyncService.requireChangeWindows.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t SyncService.startSync.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1E653F33C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1E653F384(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1E653F3DC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1E65DB748();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_1E65DB468();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE68, &unk_1E660C5E0);
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E653F560, v1, 0);
}

uint64_t sub_1E653F560()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v9 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  __swift_project_boxed_opaque_existential_1((v0[4] + 112), *(v0[4] + 136));
  v7 = type metadata accessor for ImageAssetRequest(0);
  (*(v4 + 16))(v3, v6 + *(v7 + 40), v5);

  sub_1E65DB458();
  sub_1E65DB4B8();
  (*(v2 + 8))(v1, v9);

  return MEMORY[0x1EEE6DFA0](sub_1E653F6C8, 0, 0);
}

uint64_t sub_1E653F6C8()
{
  v1 = v0[13];
  v2 = swift_task_alloc();
  v0[14] = v2;
  *(v2 + 16) = "AssetService/LiveAssetService.swift";
  *(v2 + 24) = 35;
  *(v2 + 32) = 2;
  *(v2 + 40) = 42;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[15] = v3;
  v4 = sub_1E6544114();
  *v3 = v0;
  v3[1] = sub_1E653F7E0;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65440FC, v2, v4);
}

uint64_t sub_1E653F7E0()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E653F994, 0, 0);
  }

  else
  {
    v5 = v2[12];
    v4 = v2[13];
    v6 = v2[11];
    v7 = v2[2];

    (*(v5 + 8))(v4, v6);

    v8 = v3[1];

    return v8(v7);
  }
}

uint64_t sub_1E653F994()
{
  v1 = v0[4];
  (*(v0[12] + 8))(v0[13], v0[11]);

  return MEMORY[0x1EEE6DFA0](sub_1E653FA10, v1, 0);
}

uint64_t sub_1E653FA10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E653FA8C(uint64_t *a1)
{
  v2[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE50, &qword_1E660A0F0);
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();
  v5 = sub_1E65DAAF8();
  v2[7] = v5;
  v2[8] = *(v5 - 8);
  v6 = swift_task_alloc();
  v8 = *a1;
  v7 = a1[1];
  v2[9] = v6;
  v2[10] = v8;
  v2[18] = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v2[11] = v7;
  v2[12] = v9;
  v2[13] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1E653FBEC, v1, 0);
}

uint64_t sub_1E653FBEC()
{
  v1 = *(v0 + 24);
  sub_1E65DAAE8();
  __swift_project_boxed_opaque_existential_1((v1 + 152), *(v1 + 176));
  sub_1E65DD848();

  return MEMORY[0x1EEE6DFA0](sub_1E653FCA8, 0, 0);
}

uint64_t sub_1E653FCA8()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[14] = v2;
  *(v2 + 16) = "AssetService/LiveAssetService.swift";
  *(v2 + 24) = 35;
  *(v2 + 32) = 2;
  *(v2 + 40) = 52;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[15] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE58, &qword_1E660A0F8);
  *v3 = v0;
  v3[1] = sub_1E653FDCC;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6544038, v2, v4);
}

uint64_t sub_1E653FDCC()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {

    v3 = sub_1E653FFCC;
    v4 = 0;
  }

  else
  {
    v6 = v2[5];
    v5 = v2[6];
    v8 = v2[3];
    v7 = v2[4];
    v2[17] = v2[2];

    (*(v6 + 8))(v5, v7);
    v3 = sub_1E653FF40;
    v4 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E653FF40()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];
  v2 = v0[17];

  return v1(v2);
}

uint64_t sub_1E653FFCC()
{
  v1 = v0[3];
  (*(v0[5] + 8))(v0[6], v0[4]);

  return MEMORY[0x1EEE6DFA0](sub_1E6540044, v1, 0);
}

uint64_t sub_1E6540044()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E65400CC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6540198, v1, 0);
}

uint64_t sub_1E6540198()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 152), *(*(v0 + 24) + 176));
  sub_1E65DD7C8();

  return MEMORY[0x1EEE6DFA0](sub_1E6540234, 0, 0);
}

uint64_t sub_1E6540234()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "AssetService/LiveAssetService.swift";
  *(v2 + 24) = 35;
  *(v2 + 32) = 2;
  *(v2 + 40) = 56;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1E653C68C;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E654422C, v2, v4);
}

uint64_t sub_1E6540344(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE38, &qword_1E660A0C0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6540410, v1, 0);
}

uint64_t sub_1E6540410()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 152), *(*(v0 + 32) + 176));
  sub_1E65DD7D8();

  return MEMORY[0x1EEE6DFA0](sub_1E65404AC, 0, 0);
}

uint64_t sub_1E65404AC()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "AssetService/LiveAssetService.swift";
  *(v2 + 24) = 35;
  *(v2 + 32) = 2;
  *(v2 + 40) = 60;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE40, &qword_1E660A0C8);
  *v3 = v0;
  v3[1] = sub_1E65234C4;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6544228, v2, v4);
}

uint64_t sub_1E65405D0()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE38, &qword_1E660A0C0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E654069C, v0, 0);
}

uint64_t sub_1E654069C()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 152), *(*(v0 + 24) + 176));
  sub_1E65DD7A8();

  return MEMORY[0x1EEE6DFA0](sub_1E6540730, 0, 0);
}

uint64_t sub_1E6540730()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "AssetService/LiveAssetService.swift";
  *(v2 + 24) = 35;
  *(v2 + 32) = 2;
  *(v2 + 40) = 64;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE40, &qword_1E660A0C8);
  *v3 = v0;
  v3[1] = sub_1E6522B9C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6544228, v2, v4);
}

uint64_t sub_1E6540854()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC80, &unk_1E660A0E0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6540920, v0, 0);
}

uint64_t sub_1E6540920()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 152), *(*(v0 + 24) + 176));
  sub_1E65DD7B8();

  return MEMORY[0x1EEE6DFA0](sub_1E65409B4, 0, 0);
}

uint64_t sub_1E65409B4()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "AssetService/LiveAssetService.swift";
  *(v2 + 24) = 35;
  *(v2 + 32) = 2;
  *(v2 + 40) = 68;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1E652302C;
  v4 = MEMORY[0x1E69E6530];

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6544020, v2, v4);
}

uint64_t sub_1E6540AC8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6540AE8, 0, 0);
}

uint64_t sub_1E6540AE8()
{
  sub_1E65DDEC8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6540B4C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6540C1C, v2, 0);
}

uint64_t sub_1E6540C1C()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 152), *(*(v0 + 32) + 176));
  sub_1E65DD818();

  return MEMORY[0x1EEE6DFA0](sub_1E6540CC8, 0, 0);
}

uint64_t sub_1E6540CC8()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "AssetService/LiveAssetService.swift";
  *(v2 + 24) = 35;
  *(v2 + 32) = 2;
  *(v2 + 40) = 78;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1E6540DD8;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E654422C, v2, v4);
}

uint64_t sub_1E6540DD8()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1E6540F30;
    v4 = 0;
  }

  else
  {
    v5 = v2[4];
    (*(v2[6] + 8))(v2[7], v2[5]);
    v3 = sub_1E6544224;
    v4 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E6540F30()
{
  v1 = v0[4];
  (*(v0[6] + 8))(v0[7], v0[5]);

  return MEMORY[0x1EEE6DFA0](sub_1E6235FE4, v1, 0);
}

uint64_t sub_1E6540FA8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6541078, v2, 0);
}

uint64_t sub_1E6541078()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 152), *(*(v0 + 32) + 176));
  sub_1E65DD7E8();

  return MEMORY[0x1EEE6DFA0](sub_1E6541124, 0, 0);
}

uint64_t sub_1E6541124()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "AssetService/LiveAssetService.swift";
  *(v2 + 24) = 35;
  *(v2 + 32) = 2;
  *(v2 + 40) = 82;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1E6541234;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E654422C, v2, v4);
}

uint64_t sub_1E6541234()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1E6523658;
    v4 = 0;
  }

  else
  {
    v5 = v2[4];
    (*(v2[6] + 8))(v2[7], v2[5]);
    v3 = sub_1E654138C;
    v4 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E654138C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E65413F0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65414C0, v2, 0);
}

uint64_t sub_1E65414C0()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 152), *(*(v0 + 32) + 176));
  sub_1E65DD7F8();

  return MEMORY[0x1EEE6DFA0](sub_1E654156C, 0, 0);
}

uint64_t sub_1E654156C()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "AssetService/LiveAssetService.swift";
  *(v2 + 24) = 35;
  *(v2 + 32) = 2;
  *(v2 + 40) = 86;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1E6540DD8;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6544008, v2, v4);
}

uint64_t sub_1E654167C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E654169C, 0, 0);
}

uint64_t sub_1E654169C()
{
  sub_1E65DE078();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6541700()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE38, &qword_1E660A0C0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65417CC, v0, 0);
}

uint64_t sub_1E65417CC()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 152), *(*(v0 + 24) + 176));
  sub_1E65DD828();

  return MEMORY[0x1EEE6DFA0](sub_1E6541860, 0, 0);
}

uint64_t sub_1E6541860()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "AssetService/LiveAssetService.swift";
  *(v2 + 24) = 35;
  *(v2 + 32) = 2;
  *(v2 + 40) = 96;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE40, &qword_1E660A0C8);
  *v3 = v0;
  v3[1] = sub_1E652302C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6544228, v2, v4);
}

uint64_t sub_1E6541984(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE38, &qword_1E660A0C0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6541A50, v1, 0);
}

uint64_t sub_1E6541A50()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 152), *(*(v0 + 32) + 176));
  sub_1E65DD808();

  return MEMORY[0x1EEE6DFA0](sub_1E6541AEC, 0, 0);
}

uint64_t sub_1E6541AEC()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "AssetService/LiveAssetService.swift";
  *(v2 + 24) = 35;
  *(v2 + 32) = 2;
  *(v2 + 40) = 100;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE40, &qword_1E660A0C8);
  *v3 = v0;
  v3[1] = sub_1E6541C10;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6543B14, v2, v4);
}

uint64_t sub_1E6541C10()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6540F30, 0, 0);
  }

  else
  {
    v5 = v2[6];
    v4 = v2[7];
    v6 = v2[5];
    v7 = v2[2];

    (*(v5 + 8))(v4, v6);

    v8 = v3[1];

    return v8(v7);
  }
}

uint64_t sub_1E6541DA4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60C34A4;

  return sub_1E653F3DC(a1);
}

uint64_t sub_1E6541E3C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E6541DA4(a1);
}

uint64_t sub_1E6541ED4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = a1[3];
  v4 = a1[4];
  v1[2] = *a1;
  v1[3] = v2;
  v1[4] = a1[2];
  v1[5] = v3;
  v1[6] = v4;
  v5 = swift_task_alloc();
  v1[7] = v5;
  *v5 = v1;
  v5[1] = sub_1E6541F88;

  return sub_1E653FA8C(v1 + 2);
}

uint64_t sub_1E6541F88(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E65420C4, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1E65420DC(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FE99E8;

  return sub_1E6541ED4(a1);
}

uint64_t sub_1E6542174(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E65400CC(a1);
}

uint64_t sub_1E654220C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6542174(a1);
}

uint64_t sub_1E65422A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60C34A4;

  return sub_1E6541700();
}

uint64_t sub_1E6542334()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E65422A4();
}

uint64_t sub_1E65423C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60C34A4;

  return sub_1E6540344(a1);
}

uint64_t sub_1E654245C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E65423C4(a1);
}

uint64_t sub_1E65424F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60C34A4;

  return sub_1E65405D0();
}

uint64_t sub_1E6542584()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E65424F4();
}

uint64_t sub_1E6542614()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60C34A4;

  return sub_1E6540854();
}

uint64_t sub_1E65426A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E6542614();
}

uint64_t sub_1E6542734(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60ABB70;

  return sub_1E6541984(a1);
}

uint64_t sub_1E65427CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E6542734(a1);
}

uint64_t sub_1E6542864(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6542880, a2, 0);
}

uint64_t sub_1E6542880()
{
  swift_getObjectType();
  sub_1E65DDED8();
  sub_1E65D7B58();
  sub_1E65DDE28();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6542954(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6542864(a1, v1);
}

uint64_t sub_1E65429F0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E6540B4C(a1, a2);
}

uint64_t sub_1E6542A98(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E65429F0(a1, a2);
}

uint64_t sub_1E6542B40(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E6540FA8(a1, a2);
}

uint64_t sub_1E6542BE8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E6542B40(a1, a2);
}

uint64_t sub_1E6542C90(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E65413F0(a1, a2);
}

uint64_t sub_1E6542D38(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E6542C90(a1, a2);
}

uint64_t sub_1E6542DE0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6542DFC, a2, 0);
}

uint64_t sub_1E6542DFC()
{
  swift_getObjectType();
  sub_1E65DE088();
  sub_1E65D9098();
  sub_1E65DDE28();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6542ED0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E6542DE0(a1, v1);
}

uint64_t sub_1E6542F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE70, &qword_1E660A110);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE68, &unk_1E660C5E0);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E6544160;
  *(v34 + 24) = v32;

  v33(sub_1E5E20B0C, v34);
}

uint64_t sub_1E654335C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE60, &unk_1E660A100);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE50, &qword_1E660A0F0);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E6544050;
  *(v34 + 24) = v32;

  v33(sub_1E5E20B18, v34);
}

uint64_t sub_1E6543738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE48, &unk_1E660A0D0);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE38, &qword_1E660A0C0);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E6543FDC;
  *(v34 + 24) = v32;

  v33(sub_1E5E20B0C, v34);
}

uint64_t sub_1E6543B2C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v31 = a7;
  v30 = a6;
  v29 = a5;
  LODWORD(v10) = a2;
  v12 = sub_1E65E3B68();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v16 = sub_1E65E3B48();
  v17 = sub_1E65E6338();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28 = a8;
    v19 = v18;
    v20 = swift_slowAlloc();
    HIDWORD(v27) = v10;
    v10 = v20;
    v32 = v20;
    *v19 = 134218498;
    *(v19 + 4) = a3;
    *(v19 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v23 = sub_1E5DFD4B0(v21, v22, &v32);

    *(v19 + 14) = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v31;
    _os_log_impl(&dword_1E5DE9000, v16, v17, "Finished P->A conversion: %ld:%s:%lu", v19, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    v24 = v10;
    LOBYTE(v10) = BYTE4(v27);
    MEMORY[0x1E694F1C0](v24, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  v32 = a1;
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE70, &qword_1E660A110);
  if (v10)
  {
    return sub_1E65E5FE8();
  }

  else
  {
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E6543D84(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10)
{
  v32 = a7;
  v31 = a6;
  v30[2] = a5;
  v33 = a2;
  v13 = a10;
  v34 = a9;
  v14 = sub_1E65E3B68();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v19 = sub_1E65E6338();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v30[1] = a8;
    v21 = v20;
    v22 = swift_slowAlloc();
    v30[0] = a10;
    v23 = v22;
    v35 = v22;
    *v21 = 134218498;
    *(v21 + 4) = a3;
    *(v21 + 12) = 2080;
    v24 = sub_1E65E68B8();
    v26 = sub_1E5DFD4B0(v24, v25, &v35);

    *(v21 + 14) = v26;
    *(v21 + 22) = 2048;
    *(v21 + 24) = v32;
    _os_log_impl(&dword_1E5DE9000, v18, v19, "Finished P->A conversion: %ld:%s:%lu", v21, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v27 = v23;
    v13 = v30[0];
    MEMORY[0x1E694F1C0](v27, -1, -1);
    MEMORY[0x1E694F1C0](v21, -1, -1);
  }

  (*(v15 + 8))(v17, v14);
  v35 = a1;
  if (v33)
  {
    v28 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(v34, v13);
    return sub_1E65E5FE8();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(v34, v13);
    return sub_1E65E5FF8();
  }
}

unint64_t sub_1E6544114()
{
  result = qword_1EE2D4508;
  if (!qword_1EE2D4508)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2D4508);
  }

  return result;
}

uint64_t sub_1E6544188(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(v4 + 40);
  v14 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(v11, v12, v7, v8, v9, v13, v10, v14);
}

uint64_t ImageAssetBestMatchRequest.init(templateURLString:pixelWidth:pixelHeight:cropCode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 20) = a4;
  *(a7 + 24) = a5;
  *(a7 + 32) = a6;
  return result;
}

unint64_t sub_1E6544240()
{
  v1 = 0x6469576C65786970;
  v2 = 0x6965486C65786970;
  if (*v0 != 2)
  {
    v2 = 0x65646F43706F7263;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_1E65442CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E6544AD8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E65442F4(uint64_t a1)
{
  v2 = sub_1E6544558();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6544330(uint64_t a1)
{
  v2 = sub_1E6544558();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageAssetBestMatchRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE78, &qword_1E660A130);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  LODWORD(v5) = *(v1 + 20);
  v13 = *(v1 + 16);
  v11 = v5;
  v7 = *(v1 + 24);
  v10[0] = *(v1 + 32);
  v10[1] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6544558();
  sub_1E65E6DA8();
  v17 = 0;
  v8 = v12;
  sub_1E65E6B48();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v16 = 1;
  sub_1E65E6B88();
  v15 = 2;
  sub_1E65E6B88();
  v14 = 3;
  sub_1E65E6B48();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E6544558()
{
  result = qword_1ED07AE80;
  if (!qword_1ED07AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07AE80);
  }

  return result;
}

uint64_t ImageAssetBestMatchRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE88, &qword_1E660A138);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6544558();
  sub_1E65E6D98();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_1E65E6AA8();
  v11 = v10;
  v12 = v9;
  v24 = 1;
  v21 = sub_1E65E6AE8();
  v23 = 2;
  v20 = sub_1E65E6AE8();
  v22 = 3;
  v13 = sub_1E65E6AA8();
  v16 = v15;
  v17 = *(v6 + 8);
  v19 = v13;
  v17(v8, v5);
  *a2 = v12;
  *(a2 + 8) = v11;
  v18 = v20;
  *(a2 + 16) = v21;
  *(a2 + 20) = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ImageAssetBestMatchRequest.hash(into:)(uint64_t a1)
{
  sub_1E65E5D78();
  sub_1E65E6D58();
  sub_1E65E6D58();

  return sub_1E65E5D78();
}

uint64_t ImageAssetBestMatchRequest.hashValue.getter()
{
  sub_1E65E6D28();
  sub_1E65E5D78();
  sub_1E65E6D58();
  sub_1E65E6D58();
  sub_1E65E5D78();
  return sub_1E65E6D78();
}

uint64_t sub_1E6544940()
{
  sub_1E65E6D28();
  sub_1E65E5D78();
  sub_1E65E6D58();
  sub_1E65E6D58();
  sub_1E65E5D78();
  return sub_1E65E6D78();
}

uint64_t sub_1E65449D4(uint64_t a1)
{
  sub_1E65E5D78();
  sub_1E65E6D58();
  sub_1E65E6D58();

  return sub_1E65E5D78();
}

uint64_t sub_1E6544A44(uint64_t a1)
{
  sub_1E65E6D28();
  sub_1E65E5D78();
  sub_1E65E6D58();
  sub_1E65E6D58();
  sub_1E65E5D78();
  return sub_1E65E6D78();
}

uint64_t sub_1E6544AD8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E66191C0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6469576C65786970 && a2 == 0xEA00000000006874 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6965486C65786970 && a2 == 0xEB00000000746867 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65646F43706F7263 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_1E65E6C18();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t _s12AssetService05ImageA16BestMatchRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *(a1 + 4);
  v2 = *(a1 + 5);
  v4 = a1[3];
  v5 = a1[4];
  v7 = *(a2 + 16);
  v6 = *(a2 + 20);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    result = 0;
  }

  else
  {
    v11 = sub_1E65E6C18();
    result = 0;
    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  if (v3 == v7 && v2 == v6)
  {
    if (v4 == v8 && v5 == v9)
    {
      return 1;
    }

    else
    {

      return sub_1E65E6C18();
    }
  }

  return result;
}

unint64_t sub_1E6544D3C()
{
  result = qword_1ED07AE90;
  if (!qword_1ED07AE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07AE90);
  }

  return result;
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

uint64_t sub_1E6544DA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1E6544DEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E6544E58()
{
  result = qword_1ED07AE98;
  if (!qword_1ED07AE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07AE98);
  }

  return result;
}

unint64_t sub_1E6544EB0()
{
  result = qword_1ED07AEA0;
  if (!qword_1ED07AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07AEA0);
  }

  return result;
}

unint64_t sub_1E6544F08()
{
  result = qword_1ED07AEA8;
  if (!qword_1ED07AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07AEA8);
  }

  return result;
}

uint64_t sub_1E6544F5C()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t static AssetService.simulator()@<X0>(void *a1@<X8>)
{
  type metadata accessor for SimulatorAssetService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1E65D7B58();
  *(v2 + 112) = sub_1E65E5F28();
  *a1 = &unk_1E660A368;
  a1[1] = v2;
  a1[2] = &unk_1E660A378;
  a1[3] = v2;
  a1[4] = &unk_1E660A388;
  a1[5] = v2;
  a1[6] = &unk_1E660A398;
  a1[7] = v2;
  a1[8] = &unk_1E660A3A8;
  a1[9] = v2;
  a1[10] = &unk_1E660A3B8;
  a1[11] = v2;
  a1[12] = &unk_1E660A3C8;
  a1[13] = v2;
  a1[14] = &unk_1E660A3D8;
  a1[15] = v2;
  a1[16] = &unk_1E660A3E8;
  a1[17] = v2;
  a1[18] = &unk_1E660A3F8;
  a1[19] = v2;
  a1[20] = &unk_1E660A408;
  a1[21] = v2;
  a1[22] = &unk_1E660A418;
  a1[23] = v2;
  a1[24] = &unk_1E660A428;
  a1[25] = v2;
  return swift_retain_n();
}

uint64_t sub_1E6545138()
{
  v1 = sub_1E65E5C48();
  v2 = [objc_opt_self() systemImageNamed_];

  if (v2)
  {
    v3 = *(v0 + 8);

    return v3(v2);
  }

  else
  {
    v5 = sub_1E65D79F8();
    sub_1E6546ED0(&qword_1ED07AEC8, MEMORY[0x1E69CAF10], MEMORY[0x1E69CAF18]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x1E69CAF08], v5);
    swift_willThrow();
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1E65452BC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E6545120(a1, v1);
}

uint64_t sub_1E6545354()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FE99E8;

  return sub_1E6539828();
}

uint64_t sub_1E65453EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E6545484()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E6539828();
}

uint64_t sub_1E6545530(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E6545514(a1, v1);
}

uint64_t sub_1E65455E8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E65455C8(v0);
}

uint64_t sub_1E65456BC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E6545678(v0);
}

uint64_t sub_1E6545768()
{

  v2 = sub_1E6546D34(v1);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1E65457E8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E654574C(a1, v1);
}

uint64_t sub_1E6545880(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AEB8, &qword_1E660A488);
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6545950, a2, 0);
}

uint64_t sub_1E6545950()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_1E65D7B58();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6545A28(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6545880(a1, v1);
}

uint64_t sub_1E6545AC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E6545B6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E6545C14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E6545CBC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AEB0, &qword_1E660A480);
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6545D8C, a2, 0);
}

uint64_t sub_1E6545D8C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_1E65D9098();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6545E64(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E6545CBC(a1, v1);
}

uint64_t sub_1E6545F00(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1E65D7B58();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1E6546ED0(&qword_1ED074160, MEMORY[0x1E69CB020], MEMORY[0x1E69CB028]);
  v33 = a2;
  v11 = sub_1E65E5B38();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1E6546ED0(&qword_1ED07AEC0, MEMORY[0x1E69CB020], MEMORY[0x1E69CB030]);
      v21 = sub_1E65E5B98();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1E654653C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1E65461E0(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1E65D7B58();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074158, &unk_1E660A490);
  result = sub_1E65E6868();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1E6546ED0(&qword_1ED074160, MEMORY[0x1E69CB020], MEMORY[0x1E69CB028]);
      result = sub_1E65E5B38();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_1E654653C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1E65D7B58();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1E65461E0(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1E65467E0();
      goto LABEL_12;
    }

    sub_1E6546A18(v10 + 1);
  }

  v12 = *v3;
  sub_1E6546ED0(&qword_1ED074160, MEMORY[0x1E69CB020], MEMORY[0x1E69CB028]);
  v13 = sub_1E65E5B38();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1E6546ED0(&qword_1ED07AEC0, MEMORY[0x1E69CB020], MEMORY[0x1E69CB030]);
      v21 = sub_1E65E5B98();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1E65E6C58();
  __break(1u);
  return result;
}
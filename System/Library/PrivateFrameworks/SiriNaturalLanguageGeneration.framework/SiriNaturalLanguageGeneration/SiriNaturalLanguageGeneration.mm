uint64_t sub_2680BD870(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v85 = a1;
  v84 = sub_2680E1B0C();
  v5 = *(v84 - 8);
  v6 = MEMORY[0x28223BE20](v84);
  v82 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v90 = v79 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = (v79 - v10);
  if (qword_280249E70 != -1)
  {
LABEL_39:
    swift_once();
  }

  v12 = sub_2680E1B3C();
  v13 = __swift_project_value_buffer(v12, qword_28024C7A8);

  v14 = sub_2680E1B1C();
  v15 = sub_2680E1DAC();

  v16 = os_log_type_enabled(v14, v15);
  v79[2] = v13;
  v80 = v4;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v94[0] = v18;
    *v17 = 134218242;
    *(v17 + 4) = *(v85 + 16);

    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_2680DF818(v3[2], v3[3], v94);
    _os_log_impl(&dword_2680BC000, v14, v15, "%ld documents, query is '%s'", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x26D611870](v18, -1, -1);
    MEMORY[0x26D611870](v17, -1, -1);
  }

  else
  {
  }

  v94[0] = MEMORY[0x277D84F98];
  v93 = MEMORY[0x277D84F90];
  if (qword_280249E78 != -1)
  {
    swift_once();
  }

  v19 = qword_28024C7C0;
  sub_2680E1AFC();
  v20 = sub_2680E1DDC();
  OUTLINED_FUNCTION_2(v20);
  __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
  v21 = v3[4];
  v86 = sub_2680DD538(v3[2], v3[3], v21);
  v22 = sub_2680E1DCC();
  OUTLINED_FUNCTION_2(v22);
  v83 = *(v5 + 8);
  v83(v11, v84);
  v23 = v19;
  sub_2680E1AFC();
  sub_2680E1DDC();
  sub_2680E1AEC();
  v24 = *(v85 + 16);
  v25 = MEMORY[0x277D84F90];
  v91 = v3;
  v81 = v5 + 8;
  v89 = v24;
  if (v24)
  {
    v92 = MEMORY[0x277D84F90];
    sub_2680D7A24(0, v24, 0);
    v25 = v92;
    v26 = (v85 + 40);
    v27 = v24;
    do
    {
      v29 = *(v26 - 1);
      v28 = *v26;
      __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);

      v30 = sub_2680DD538(v29, v28, v21);

      v92 = v25;
      v32 = *(v25 + 16);
      v31 = *(v25 + 24);
      if (v32 >= v31 >> 1)
      {
        v33 = OUTLINED_FUNCTION_4(v31);
        sub_2680D7A24(v33, v32 + 1, 1);
        v25 = v92;
      }

      *(v25 + 16) = v32 + 1;
      *(v25 + 8 * v32 + 32) = v30;
      v26 += 2;
      --v27;
      v3 = v91;
    }

    while (v27);
  }

  sub_2680E1DCC();
  v34 = v90;
  sub_2680E1AEC();
  v35 = v83;
  v36 = v84;
  v83(v34, v84);
  v37 = v23;
  sub_2680E1AFC();
  v38 = sub_2680E1DDC();
  OUTLINED_FUNCTION_0(v38, &dword_2680BC000, v37, "DocumentTF");
  sub_2680BE18C(v25, v3, &v93, v94);
  v39 = sub_2680E1DCC();
  OUTLINED_FUNCTION_0(v39, &dword_2680BC000, v37, "DocumentTF");
  v35(v11, v36);
  v40 = v85;

  v41 = v37;
  sub_2680E1AFC();
  sub_2680E1DDC();
  sub_2680E1AEC();
  v42 = v94[0];

  sub_2680BF158(v43, v40);
  v45 = v44;
  v79[1] = v42;

  sub_2680E1DCC();
  sub_2680E1AEC();
  v35(v11, v36);

  v46 = v41;
  sub_2680E1AFC();
  v47 = sub_2680E1DDC();
  OUTLINED_FUNCTION_0(v47, &dword_2680BC000, v46, "QueryTFIDF");
  v48 = v86;
  v49 = sub_2680BE6A8(v86);
  v88 = v45;
  v87 = sub_2680BE86C(v49, v45);

  v50 = sub_2680E1DCC();
  OUTLINED_FUNCTION_0(v50, &dword_2680BC000, v46, "QueryTFIDF");
  v83(v11, v36);
  v51 = v80;
  v11 = sub_2680BE4E0(v48, v25, v80 & 1);

  v52 = sub_2680BE49C(v11);
  if (v53)
  {
    v54 = 0;
  }

  else
  {
    v54 = v52;
  }

  v55 = v46;
  sub_2680E1AFC();
  sub_2680E1DDC();
  v79[0] = v55;
  sub_2680E1AEC();
  v3 = v93;
  v56 = v93[2];
  v86 = v54;
  LODWORD(v90) = v51 & (v54 > 0);
  v57 = (v85 + 40);
  v58 = -v56;
  v59 = MEMORY[0x277D84F90];
  v4 = 4;
  v60 = v11;
  while (v58 + v4 != 4)
  {
    v5 = v4 - 4;
    if ((v4 - 4) >= v3[2])
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if ((v90 & 1) == 0)
    {
      goto LABEL_25;
    }

    if (v5 >= v11[2])
    {
      goto LABEL_37;
    }

    if (v11[v4] == v86)
    {
      if (v5 >= v89)
      {
        goto LABEL_38;
      }

      v62 = *(v57 - 1);
      v61 = *v57;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_3();
        v59 = v73;
      }

      v64 = *(v59 + 16);
      v63 = *(v59 + 24);
      v65 = v64 + 1;
      v66 = 1.0;
    }

    else
    {
LABEL_25:

      v68 = sub_2680BE86C(v67, v88);

      __swift_project_boxed_opaque_existential_1(v91 + 10, v91[13]);
      sub_2680BEB64(v68, v87);
      v66 = v69;

      if (v5 >= v89)
      {
        goto LABEL_36;
      }

      v62 = *(v57 - 1);
      v61 = *v57;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_3();
        v59 = v72;
      }

      v64 = *(v59 + 16);
      v63 = *(v59 + 24);
      v65 = v64 + 1;
    }

    if (v64 >= v63 >> 1)
    {
      OUTLINED_FUNCTION_4(v63);
      sub_2680D42A8();
      v59 = v71;
    }

    *(v59 + 16) = v65;
    v70 = v59 + 24 * v64;
    *(v70 + 32) = v62;
    *(v70 + 40) = v61;
    *(v70 + 48) = v66;
    ++v4;
    v57 += 2;
    v11 = v60;
  }

  sub_2680E1DCC();
  v74 = v82;
  sub_2680E1AEC();
  v83(v74, v84);
  v75 = sub_2680E1B1C();
  v76 = sub_2680E1DAC();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 134217984;
    *(v77 + 4) = *(v59 + 16);
    _os_log_impl(&dword_2680BC000, v75, v76, "%ld documents scored", v77, 0xCu);
    MEMORY[0x26D611870](v77, -1, -1);
  }

  return v59;
}

uint64_t sub_2680BE18C(uint64_t result, uint64_t a2, uint64_t *a3, void *a4)
{
  v36 = *(result + 16);
  if (v36)
  {
    v5 = 0;
    v6 = 0;
    while (2)
    {
      v38 = v6 + 1;

      v8 = sub_2680BE6A8(v7);

      sub_2680D99E8();
      v9 = *(*a3 + 16);
      sub_2680D9A5C(v9);
      v10 = 0;
      v11 = *a3;
      *(v11 + 16) = v9 + 1;
      *(v11 + 8 * v9 + 32) = v8;
      v12 = v8 + 8;
      v40 = v8 + 8;
      v41 = v8;
      v13 = 1 << *(v8 + 32);
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      else
      {
        v14 = -1;
      }

      v15 = v14 & v8[8];
      v16 = (v13 + 63) >> 6;
      v39 = v16;
      if (v15)
      {
        while (1)
        {
          v17 = v10;
LABEL_11:
          v18 = (v41[6] + ((v17 << 10) | (16 * __clz(__rbit64(v15)))));
          v20 = *v18;
          v19 = v18[1];

          sub_2680C0440(v5, 0);
          swift_isUniquelyReferenced_nonNull_native();
          v21 = *a4;
          v42 = *a4;
          *a4 = 0x8000000000000000;
          v22 = sub_2680D83B8(v20, v19);
          if (__OFADD__(v21[2], (v23 & 1) == 0))
          {
            break;
          }

          v24 = v22;
          v25 = v23;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249F20, &qword_2680E2750);
          if (sub_2680E1E9C())
          {
            v26 = sub_2680D83B8(v20, v19);
            if ((v25 & 1) != (v27 & 1))
            {
              goto LABEL_31;
            }

            v24 = v26;
          }

          *a4 = v42;

          v28 = *a4;
          if (v25)
          {
          }

          else
          {
            v28[(v24 >> 6) + 8] |= 1 << v24;
            v29 = (v28[6] + 16 * v24);
            *v29 = v20;
            v29[1] = v19;
            *(v28[7] + 8 * v24) = 0;
            v30 = v28[2];
            v31 = __OFADD__(v30, 1);
            v32 = v30 + 1;
            if (v31)
            {
              goto LABEL_30;
            }

            v28[2] = v32;
          }

          v33 = v28[7];
          v34 = *(v33 + 8 * v24);
          v31 = __OFADD__(v34, 1);
          v35 = v34 + 1;
          if (v31)
          {
            goto LABEL_29;
          }

          v15 &= v15 - 1;
          *(v33 + 8 * v24) = v35;
          v5 = sub_2680BE494;
          v10 = v17;
          v16 = v39;
          v12 = v40;
          if (!v15)
          {
            goto LABEL_8;
          }
        }

LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        result = sub_2680E1F9C();
        __break(1u);
      }

      else
      {
        while (1)
        {
LABEL_8:
          v17 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
            goto LABEL_28;
          }

          if (v17 >= v16)
          {
            break;
          }

          v15 = v12[v17];
          ++v10;
          if (v15)
          {
            goto LABEL_11;
          }
        }

        v6 = v38;
        if (v38 != v36)
        {
          continue;
        }

        return sub_2680C0440(v5, 0);
      }

      break;
    }
  }

  return result;
}

uint64_t sub_2680BE49C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result <= v7)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_2680BE4E0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = sub_2680E1D4C();
    *(v5 + 16) = v4;
    bzero((v5 + 32), 8 * v4);
    if ((a3 & 1) == 0)
    {
      return v5;
    }
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
    if ((a3 & 1) == 0)
    {
      return v5;
    }
  }

  v7 = sub_2680BE5E8(v6);
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      return v5;
    }

    v10 = sub_2680BE5E8(v9);

    v11 = sub_2680BF6A0(v10, v7);

    v12 = v11[2];

    if (i >= *(v5 + 16))
    {
      break;
    }

    *(v5 + 32 + 8 * i) = v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_2680BE5E8(uint64_t a1)
{
  result = MEMORY[0x26D6110E0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_2680BF2F8(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

void *sub_2680BE6A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = 1.0 / v1;
    v4 = MEMORY[0x277D84F98];
    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *(i - 1);
      v6 = *i;

      sub_2680C0440(v2, 0);
      swift_isUniquelyReferenced_nonNull_native();
      v8 = sub_2680D83B8(v7, v6);
      if (__OFADD__(v4[2], (v9 & 1) == 0))
      {
        break;
      }

      v10 = v8;
      v11 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249F08, &qword_2680E2738);
      if (sub_2680E1E9C())
      {
        v12 = sub_2680D83B8(v7, v6);
        if ((v11 & 1) != (v13 & 1))
        {
          goto LABEL_17;
        }

        v10 = v12;
      }

      if (v11)
      {
      }

      else
      {
        v4[(v10 >> 6) + 8] |= 1 << v10;
        v14 = (v4[6] + 16 * v10);
        *v14 = v7;
        v14[1] = v6;
        *(v4[7] + 4 * v10) = 0;
        v15 = v4[2];
        v16 = __OFADD__(v15, 1);
        v17 = v15 + 1;
        if (v16)
        {
          goto LABEL_16;
        }

        v4[2] = v17;
      }

      *(v4[7] + 4 * v10) = v3 + *(v4[7] + 4 * v10);
      v2 = sub_2680BE864;
      if (!--v1)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_2680E1F9C();
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_2680BE86C(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v33 = MEMORY[0x277D84F98];
  while (v7)
  {
    v10 = v7;
LABEL_10:
    v7 = (v10 - 1) & v10;
    if (*(a2 + 16))
    {
      v12 = __clz(__rbit64(v10)) | (v9 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *(*(a1 + 56) + 4 * v12);
      v16 = *v13;
      v15 = v13[1];
      swift_bridgeObjectRetain_n();
      v17 = sub_2680D83B8(v16, v15);
      v19 = v18;

      if (v19)
      {
        v20 = *(*(a2 + 56) + 4 * v17);
        swift_isUniquelyReferenced_nonNull_native();
        v35 = v33;
        v32 = sub_2680D83B8(v16, v15);
        v34 = v21;
        if (__OFADD__(v35[2], (v21 & 1) == 0))
        {
          goto LABEL_24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249F08, &qword_2680E2738);
        if (sub_2680E1E9C())
        {
          v22 = sub_2680D83B8(v16, v15);
          v24 = v34;
          if ((v34 & 1) != (v23 & 1))
          {
            goto LABEL_26;
          }

          v25 = v22;
        }

        else
        {
          v25 = v32;
          v24 = v34;
        }

        v26 = v14 * v20;
        if (v24)
        {

          v33 = v35;
          *(v35[7] + 4 * v25) = v26;
        }

        else
        {
          v35[(v25 >> 6) + 8] |= 1 << v25;
          v27 = (v35[6] + 16 * v25);
          *v27 = v16;
          v27[1] = v15;
          *(v35[7] + 4 * v25) = v26;
          v28 = v35[2];
          v29 = __OFADD__(v28, 1);
          v30 = v28 + 1;
          if (v29)
          {
            goto LABEL_25;
          }

          v33 = v35;
          v35[2] = v30;
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return v33;
    }

    v10 = *(v4 + 8 * v11);
    ++v9;
    if (v10)
    {
      v9 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_2680E1F9C();
  __break(1u);
  return result;
}

uint64_t sub_2680BEAD4()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 80));
  return v0;
}

uint64_t sub_2680BEB0C()
{
  sub_2680BEAD4();

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

void sub_2680BEB64(uint64_t a1, uint64_t a2)
{
  sub_2680BEE84(a1);
  v5 = v4;
  sub_2680BEE84(a2);
  if ((v5 * v6) != 0.0)
  {
    sub_2680BEBC0(a1, a2);
  }
}

uint64_t sub_2680BEBC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v44 = MEMORY[0x277D84F90];
    sub_2680D7A64(0, v2, 0);
    v3 = v44;
    result = sub_2680C03AC(a1);
    v7 = result;
    v8 = a1;
    v10 = v9;
    v11 = 0;
    v12 = a1 + 64;
    v40 = v9;
    v41 = v2;
    v42 = a2;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v8 + 32))
    {
      v13 = v7 >> 6;
      if ((*(v12 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_30;
      }

      if (*(v8 + 36) != v10)
      {
        goto LABEL_31;
      }

      v14 = *(*(v8 + 56) + 4 * v7);
      if (*(a2 + 16))
      {
        v15 = v6;
        v16 = (*(v8 + 48) + 16 * v7);
        v17 = *v16;
        v18 = v16[1];

        v19 = sub_2680D83B8(v17, v18);
        v20 = 0.0;
        if (v21)
        {
          v20 = *(*(a2 + 56) + 4 * v19);
        }

        v12 = a1 + 64;
        v8 = a1;
        v6 = v15;
      }

      else
      {
        v20 = 0.0;
      }

      v23 = *(v44 + 16);
      v22 = *(v44 + 24);
      if (v23 >= v22 >> 1)
      {
        v33 = OUTLINED_FUNCTION_4(v22);
        v35 = v34;
        result = sub_2680D7A64(v33, v23 + 1, 1);
        v12 = a1 + 64;
        v8 = a1;
        v6 = v35;
      }

      *(v44 + 16) = v23 + 1;
      *(v44 + 4 * v23 + 32) = v14 * v20;
      v24 = 1 << *(v8 + 32);
      if (v7 >= v24)
      {
        goto LABEL_32;
      }

      v25 = *(v12 + 8 * v13);
      if ((v25 & (1 << v7)) == 0)
      {
        goto LABEL_33;
      }

      if (*(v8 + 36) != v10)
      {
        goto LABEL_34;
      }

      v26 = v25 & (-2 << (v7 & 0x3F));
      if (v26)
      {
        v24 = __clz(__rbit64(v26)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v27 = v41;
        a2 = v42;
      }

      else
      {
        v28 = v13 << 6;
        v29 = v13 + 1;
        v30 = (a1 + 72 + 8 * v13);
        v27 = v41;
        a2 = v42;
        while (v29 < (v24 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_2680C03EC(v7, v10, v6 & 1);
            v12 = a1 + 64;
            v8 = a1;
            v24 = __clz(__rbit64(v31)) + v28;
            goto LABEL_24;
          }
        }

        result = sub_2680C03EC(v7, v10, v6 & 1);
        v12 = a1 + 64;
        v8 = a1;
      }

LABEL_24:
      v6 = 0;
      ++v11;
      v7 = v24;
      v10 = v40;
      if (v11 == v27)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
LABEL_25:
    v36 = *(v3 + 16);
    if (v36)
    {
      v37 = (v3 + 32);
      v38 = 0.0;
      do
      {
        v39 = *v37++;
        v38 = v38 + v39;
        --v36;
      }

      while (v36);
    }
  }

  return result;
}

void sub_2680BEE84(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v31 = *(a1 + 16);
    v32 = MEMORY[0x277D84F90];
    sub_2680D7A64(0, v1, 0);
    v2 = v32;
    v5 = sub_2680C03AC(a1);
    v7 = v6;
    v8 = v31;
    v9 = 0;
    v10 = a1 + 64;
    v11 = 1;
    v12 = -2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < v11 << *(a1 + 32))
      {
        v13 = v5 >> 6;
        v14 = v11 << v5;
        if ((*(v10 + 8 * (v5 >> 6)) & (v11 << v5)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v7)
        {
          goto LABEL_27;
        }

        v15 = *(*(a1 + 56) + 4 * v5);
        v17 = *(v32 + 16);
        v16 = *(v32 + 24);
        if (v17 >= v16 >> 1)
        {
          v26 = OUTLINED_FUNCTION_4(v16);
          sub_2680D7A64(v26, v17 + 1, 1);
          OUTLINED_FUNCTION_1();
        }

        *(v32 + 16) = v17 + 1;
        *(v32 + 4 * v17 + 32) = v15 * v15;
        v18 = v11 << *(a1 + 32);
        if (v5 >= v18)
        {
          goto LABEL_28;
        }

        v19 = *(v10 + 8 * v13);
        if ((v19 & v14) == 0)
        {
          goto LABEL_29;
        }

        if (*(a1 + 36) != v7)
        {
          goto LABEL_30;
        }

        v20 = v19 & (v12 << (v5 & 0x3F));
        if (v20)
        {
          v18 = __clz(__rbit64(v20)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v21 = v13 << 6;
          v22 = v13 + 1;
          v23 = (a1 + 72 + 8 * v13);
          while (v22 < (v18 + 63) >> 6)
          {
            v25 = *v23++;
            v24 = v25;
            v21 += 64;
            ++v22;
            if (v25)
            {
              sub_2680C03EC(v5, v7, v4 & 1);
              OUTLINED_FUNCTION_1();
              v18 = __clz(__rbit64(v24)) + v21;
              goto LABEL_18;
            }
          }

          sub_2680C03EC(v5, v7, v4 & 1);
          OUTLINED_FUNCTION_1();
        }

LABEL_18:
        if (++v9 == v8)
        {
          goto LABEL_21;
        }

        v4 = 0;
        v7 = *(a1 + 36);
        v5 = v18;
        if (v18 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_26:
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

  else
  {
LABEL_21:
    v27 = *(v2 + 16);
    if (v27)
    {
      v28 = (v2 + 32);
      v29 = 0.0;
      do
      {
        v30 = *v28++;
        v29 = v29 + v30;
        --v27;
      }

      while (v27);
    }
  }
}

void type metadata accessor for SISchemaComponentName()
{
  if (!qword_280249F00)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280249F00);
    }
  }
}

void sub_2680BF158(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249F18, &qword_2680E2748);
  v3 = sub_2680E1ECC();
  v4 = v3;
  v5 = 0;
  v26 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v13 = v3 + 64;
  if ((v10 & v6) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v17 = v14 | (v5 << 6);
      v18 = (*(v26 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      v21 = log2f((*(a2 + 16) + 1.0) / (*(*(v26 + 56) + 8 * v17) + 1.0));
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v22 = (v4[6] + 16 * v17);
      *v22 = v19;
      v22[1] = v20;
      *(v4[7] + 4 * v17) = v21 + 1.0;
      v23 = v4[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v4[2] = v25;

      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v12)
      {

        return;
      }

      v16 = *(v7 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

BOOL sub_2680BF2F8(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_2680E1FEC();
  sub_2680E1C6C();
  v8 = sub_2680E200C();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_2680E1F5C() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_2680BFEB8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_2680BF444(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249F10, &qword_2680E2740);
  result = sub_2680E1E4C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_2680C2FE0(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_2680E1FEC();
    sub_2680E1C6C();
    result = sub_2680E200C();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t *sub_2680BF6A0(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = (v12 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_2680C2FE0(0, v6, v8);
    v9 = sub_2680BF8F8(v8, v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_2680BF868(v11, v6, a2, a1);

    MEMORY[0x26D611870](v11, -1, -1);
  }

  return v9;
}

unint64_t *sub_2680BF868(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_2680BF8F8(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_2680BF8F8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v28 = 0;
    v29 = 1 << *(a3 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(a3 + 56);
    v32 = (v29 + 63) >> 6;
    v33 = a4 + 56;
LABEL_28:
    while (v31)
    {
      v34 = __clz(__rbit64(v31));
      v51 = (v31 - 1) & v31;
LABEL_35:
      v49 = v34 | (v28 << 6);
      v37 = (*(v5 + 48) + 16 * v49);
      v39 = *v37;
      v38 = v37[1];
      sub_2680E1FEC();

      sub_2680E1C6C();
      v40 = sub_2680E200C();
      v41 = ~(-1 << *(v4 + 32));
      do
      {
        v42 = v40 & v41;
        if (((*(v33 + (((v40 & v41) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v40 & v41)) & 1) == 0)
        {

          v4 = a4;
          v31 = v51;
          goto LABEL_28;
        }

        v43 = (*(a4 + 48) + 16 * v42);
        if (*v43 == v39 && v43[1] == v38)
        {
          break;
        }

        v45 = sub_2680E1F5C();
        v40 = v42 + 1;
      }

      while ((v45 & 1) == 0);

      *(v52 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v27 = __OFADD__(v53++, 1);
      v4 = a4;
      v31 = v51;
      if (v27)
      {
        goto LABEL_50;
      }
    }

    v35 = v28;
    while (1)
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v28 >= v32)
      {
LABEL_46:

        return sub_2680BFC9C(v52, a2, v53, v5);
      }

      v36 = *(v5 + 56 + 8 * v28);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v51 = (v36 - 1) & v36;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v46 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v48 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v50 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      sub_2680E1FEC();

      sub_2680E1C6C();
      v18 = sub_2680E200C();
      v19 = v5;
      v20 = ~(-1 << *(v5 + 32));
      do
      {
        v21 = v18 & v20;
        v22 = (v18 & v20) >> 6;
        v23 = 1 << (v18 & v20);
        if ((v23 & *(v11 + 8 * v22)) == 0)
        {

          v5 = v19;
          v4 = a4;
          v10 = v48;
          v9 = v50;
          goto LABEL_6;
        }

        v24 = (*(v19 + 48) + 16 * v21);
        if (*v24 == v17 && v24[1] == v16)
        {
          break;
        }

        v26 = sub_2680E1F5C();
        v18 = v21 + 1;
      }

      while ((v26 & 1) == 0);

      v9 = v50;
      v52[v22] |= v23;
      v27 = __OFADD__(v53++, 1);
      v5 = v19;
      v4 = a4;
      v10 = v48;
      if (v27)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v46 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v50 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_2680BFC9C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249F10, &qword_2680E2740);
  result = sub_2680E1E5C();
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
    sub_2680E1FEC();

    sub_2680E1C6C();
    result = sub_2680E200C();
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
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_2680BFEB8(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2680BF444(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_2680C0178(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_2680E1FEC();
      sub_2680E1C6C();
      result = sub_2680E200C();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_2680E1F5C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_2680C0020();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_2680E1F8C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_2680C0020()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249F10, &qword_2680E2740);
  v2 = *v0;
  v3 = sub_2680E1E3C();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

uint64_t sub_2680C0178(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249F10, &qword_2680E2740);
  result = sub_2680E1E4C();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_2680E1FEC();

        sub_2680E1C6C();
        result = sub_2680E200C();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2680C03EC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
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

uint64_t sub_2680C0440(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
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

uint64_t OUTLINED_FUNCTION_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_2680E1AEC();
}

uint64_t OUTLINED_FUNCTION_2(uint64_t a1)
{

  return sub_2680E1AEC();
}

void OUTLINED_FUNCTION_3()
{

  sub_2680D42A8();
}

uint64_t sub_2680C059C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_2680C5758(a1 + 32, v32);
    v7 = a1 + 72;
    v8 = v4 - 1;
    if (v4 != 1)
    {
      do
      {
        sub_2680C5758(v7, &v30);
        __swift_project_boxed_opaque_existential_1(v32, v33);
        v9 = OUTLINED_FUNCTION_1_0();
        v11 = v10(v9);
        __swift_project_boxed_opaque_existential_1(&v30, v31);
        v12 = OUTLINED_FUNCTION_1_0();
        if (v11 >= v13(v12))
        {
          __swift_destroy_boxed_opaque_existential_0Tm(&v30);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0Tm(v32);
          sub_2680C2CD8(&v30, v32);
        }

        v7 += 40;
        --v8;
      }

      while (v8);
    }

    sub_2680C2CD8(v32, v34);
    sub_2680C2CD8(v34, v37);
    sub_2680C57BC(v3 + 16, v32, &qword_280249F68, &qword_2680E2990);
    if (v33)
    {
      v14 = sub_2680C2CD8(v32, v34);
      MEMORY[0x28223BE20](v14);
      v29[2] = v37;

      v15 = sub_2680C0944(sub_2680C5884, v29, a1);
      if (*(v15 + 2) < 2uLL)
      {
        sub_2680C5758(v37, a2);
      }

      else
      {
        v16 = v35;
        v17 = v36;
        __swift_project_boxed_opaque_existential_1(v34, v35);
        (*(v17 + 8))(v15, v16, v17);
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v34);
    }

    else
    {
      sub_2680C5824(v32, &qword_280249F68, &qword_2680E2990);
      sub_2680C5758(v37, a2);
    }

    return __swift_destroy_boxed_opaque_existential_0Tm(v37);
  }

  else
  {
    if (qword_280249E70 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v18 = sub_2680E1B3C();
    __swift_project_value_buffer(v18, qword_28024C7A8);
    v19 = sub_2680E1B1C();
    v20 = sub_2680E1DBC();
    if (OUTLINED_FUNCTION_5(v20))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_3_0();
      _os_log_impl(v21, v22, v23, v24, v25, 2u);
      OUTLINED_FUNCTION_4_0();
    }

    v26 = sub_2680C2CF0();
    v27 = OUTLINED_FUNCTION_8(&type metadata for NLGDialogSelectorError, v26);
    return OUTLINED_FUNCTION_9(v27);
  }
}

BOOL sub_2680C089C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  return v5 == (*(v7 + 16))(v6, v7);
}

uint64_t (*sub_2680C0944(uint64_t (*result)(void *), uint64_t a2, uint64_t a3))(void *)
{
  v4 = a3;
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = a3 + 32;
  v9 = MEMORY[0x277D84F90];
  v22 = result;
  v23 = a3;
  v21 = v7;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_14;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    sub_2680C5758(v8, v27);
    v10 = v5(v27);
    if (v3)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v27);

LABEL_14:

      return v9;
    }

    if (v10)
    {
      sub_2680C2CD8(v27, v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2680D7AE4(0, *(v9 + 16) + 1, 1);
        v9 = v28;
      }

      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2680D7AE4((v12 > 1), v13 + 1, 1);
      }

      v14 = v25;
      v15 = v26;
      v16 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
      MEMORY[0x28223BE20](v16);
      v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v19 + 16))(v18);
      sub_2680C560C(v13, v18, &v28, v14, v15);
      result = __swift_destroy_boxed_opaque_existential_0Tm(v24);
      v9 = v28;
      v5 = v22;
      v4 = v23;
      v7 = v21;
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_0Tm(v27);
    }

    v8 += 40;
    ++v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_2680C0B64()
{
  sub_2680C5824(v0 + 16, &qword_280249F68, &qword_2680E2990);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_2680C0BF4(__int128 *a1, __int128 *a2)
{
  v3 = v2;
  sub_2680C2CD8(a1, v3 + 16);
  sub_2680C2CD8(a2, v3 + 56);
  v5 = swift_allocObject();
  *(v5 + 16) = 36;
  type metadata accessor for SELFLogger();
  swift_allocObject();
  *(v3 + 96) = sub_2680D9F38(&unk_2680E4200, 0, sub_2680D9E08, 0, 36, sub_2680C58B4, v5);
  return v3;
}

uint64_t sub_2680C0CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2680C0D54(a1, a2);
  if (!v3)
  {
    v7 = v2[10];
    v8 = v2[11];
    __swift_project_boxed_opaque_existential_1(v2 + 7, v7);
    (*(v8 + 16))(a2, v7, v8);
    return sub_2680DA58C(a1, a2);
  }

  return result;
}

uint64_t sub_2680C0D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_280249E70 != -1)
  {
LABEL_35:
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v4 = sub_2680E1B3C();
  __swift_project_value_buffer(v4, qword_28024C7A8);

  v5 = sub_2680E1B1C();
  v6 = sub_2680E1DAC();
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(a1 + 16);

    OUTLINED_FUNCTION_3_0();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    OUTLINED_FUNCTION_4_0();
  }

  else
  {
  }

  v13 = *(a1 + 16);
  if (!v13)
  {
    v40 = sub_2680C2CF0();
    OUTLINED_FUNCTION_8(&type metadata for NLGDialogSelectorError, v40);
    return swift_willThrow();
  }

  __swift_project_boxed_opaque_existential_1((v51 + 56), *(v51 + 80));
  v14 = OUTLINED_FUNCTION_2_0();
  v16 = v15(v14);
  v17 = *(v16 + 16);
  if (!v17)
  {

LABEL_28:
    sub_2680C1434(a1, a2);
  }

  v49 = a2;
  v50 = a1;
  OUTLINED_FUNCTION_7(MEMORY[0x277D84F90]);
  v18 = 0;
  a2 = v63;
  a1 = v16 + 32;
  v54 = v13;
  v55 = *(v16 + 16);
  v52 = v17;
  v53 = v16;
  do
  {
    if (v55 == v18)
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v18 >= *(v16 + 16))
    {
      goto LABEL_34;
    }

    sub_2680C5758(a1, &v61 + 8);
    *&v58[0] = v18;
    sub_2680C2CD8((&v61 + 8), v58 + 8);
    v19 = v59;
    v20 = v60;
    __swift_project_boxed_opaque_existential_1(v58 + 1, v59);
    v21 = (*(v20 + 16))(v19, v20);
    v23 = v22;
    sub_2680C57BC(v58, &v56, &qword_280249F40, &qword_2680E2960);
    v24 = v56;
    __swift_destroy_boxed_opaque_existential_0Tm(v57);
    sub_2680C5824(v58, &qword_280249F40, &qword_2680E2960);
    v63 = a2;
    v26 = *(a2 + 16);
    v25 = *(a2 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_2680D7AC4((v25 > 1), v26 + 1, 1);
      a2 = v63;
    }

    *(a2 + 16) = v26 + 1;
    v27 = (a2 + 24 * v26);
    v27[4] = v21;
    v27[5] = v23;
    v27[6] = v24;
    ++v18;
    a1 += 40;
    v16 = v53;
    v28 = v54;
  }

  while (v52 != v18);

  v29 = sub_2680C11F4(a2);
  v30 = v50 + 32;
  a1 = MEMORY[0x277D84F90];
  do
  {
    sub_2680C5758(v30, &v61);
    __swift_project_boxed_opaque_existential_1(&v61, v62);
    v31 = OUTLINED_FUNCTION_2_0();
    v33 = v32(v31);
    if (*(v29 + 16))
    {
      sub_2680D83B8(v33, v34);
      v36 = v35;

      if (v36)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(&v61);
        goto LABEL_23;
      }
    }

    else
    {
    }

    sub_2680C2CD8(&v61, v58);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2680D7B24(0, *(a1 + 16) + 1, 1);
      a1 = v56;
    }

    v39 = *(a1 + 16);
    v38 = *(a1 + 24);
    if (v39 >= v38 >> 1)
    {
      sub_2680D7B24((v38 > 1), v39 + 1, 1);
      a1 = v56;
    }

    *(a1 + 16) = v39 + 1;
    sub_2680C2CD8(v58, a1 + 40 * v39 + 32);
LABEL_23:
    v30 += 40;
    --v28;
  }

  while (v28);
  if (*(a1 + 16))
  {

    a2 = v49;
    goto LABEL_28;
  }

  v42 = sub_2680E1B1C();
  v43 = sub_2680E1DAC();
  if (OUTLINED_FUNCTION_5(v43))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_3_0();
    _os_log_impl(v44, v45, v46, v47, v48, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  sub_2680C128C(v50, v29, v49);
}

uint64_t sub_2680C11F4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249F60, &unk_2680E2980);
    v3 = sub_2680E1EEC();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_2680C3044(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_2680C128C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_2680C5758(a1 + 32, &v29);
    v7 = a1 + 72;
    v8 = v3 - 1;
    if (v3 != 1)
    {
      do
      {
        sub_2680C5758(v7, &v27);
        __swift_project_boxed_opaque_existential_1(&v27, v28);
        v9 = OUTLINED_FUNCTION_6();
        v11 = v10(v9);
        if (*(a2 + 16))
        {
          v13 = sub_2680D83B8(v11, v12);
          v15 = v14;

          if (v15)
          {
            v16 = *(*(a2 + 56) + 8 * v13);
            goto LABEL_8;
          }
        }

        else
        {
        }

        v16 = -1;
LABEL_8:
        __swift_project_boxed_opaque_existential_1(&v29, v30);
        v17 = OUTLINED_FUNCTION_6();
        v19 = v18(v17);
        if (*(a2 + 16))
        {
          v21 = sub_2680D83B8(v19, v20);
          v23 = v22;

          if (v23)
          {
            if (v16 < *(*(a2 + 56) + 8 * v21))
            {
              goto LABEL_14;
            }

            goto LABEL_11;
          }
        }

        else
        {
        }

        if (v16 < -1)
        {
LABEL_14:
          __swift_destroy_boxed_opaque_existential_0Tm(&v29);
          sub_2680C2CD8(&v27, &v29);
          goto LABEL_15;
        }

LABEL_11:
        __swift_destroy_boxed_opaque_existential_0Tm(&v27);
LABEL_15:
        v7 += 40;
        --v8;
      }

      while (v8);
    }

    return sub_2680C2CD8(&v29, a3);
  }

  else
  {
    v25 = sub_2680C2CF0();
    v26 = OUTLINED_FUNCTION_8(&type metadata for NLGDialogSelectorError, v25);
    return OUTLINED_FUNCTION_9(v26);
  }
}

uint64_t sub_2680C1434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v2 + 16, *(v2 + 40));
  v5 = sub_2680E1B8C();
  result = swift_endAccess();
  v7 = *(a1 + 16);
  if (v7)
  {
    if (qword_280249E70 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v8 = v5 % v7;
    v9 = sub_2680E1B3C();
    __swift_project_value_buffer(v9, qword_28024C7A8);

    v10 = sub_2680E1B1C();
    v11 = sub_2680E1DAC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134218240;
      *(v12 + 4) = v8;
      *(v12 + 12) = 2048;
      *(v12 + 14) = v7;

      _os_log_impl(&dword_2680BC000, v10, v11, "Selected index %ld out of %ld", v12, 0x16u);
      MEMORY[0x26D611870](v12, -1, -1);
    }

    else
    {
    }

    return sub_2680C5758(a1 + 40 * v8 + 32, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2680C15C0()
{
  sub_2680C2820();

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_2680C1674(char a1)
{
  sub_2680E1FEC();
  MEMORY[0x26D611340](a1 & 1);
  return sub_2680E200C();
}

uint64_t sub_2680C16D8(uint64_t a1)
{
  v2 = *v1;
  sub_2680E1FEC();
  MEMORY[0x26D611340](v2);
  return sub_2680E200C();
}

uint64_t sub_2680C171C@<X0>(void *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_2680C17D8(a2, a1);
  if (!v3)
  {
    v6 = v2[5];
    v7 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v6);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v8 = OUTLINED_FUNCTION_1_0();
    v9(v8);
    (*(v7 + 16))(v10, v6, v7);
    return __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  return result;
}

uint64_t sub_2680C17D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  if (qword_280249E70 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v7 = sub_2680E1B3C();
    __swift_project_value_buffer(v7, qword_28024C7A8);

    v8 = sub_2680E1B1C();
    v9 = sub_2680E1DAC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = *(a1 + 16);

      _os_log_impl(&dword_2680BC000, v8, v9, "Selecting from %ld dialogs", v10, 0xCu);
      MEMORY[0x26D611870](v10, -1, -1);
    }

    else
    {
    }

    *&v64 = a1;

    sub_2680C31F8(&v64);
    v11 = v4;
    if (v4)
    {
      goto LABEL_39;
    }

    v12 = v64;
    if ((*(v5 + 56) & 1) == 0)
    {
      break;
    }

LABEL_18:

    v28 = sub_2680E1B1C();
    v29 = sub_2680E1DAC();
    if (OUTLINED_FUNCTION_5(v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      *(v30 + 4) = *(v12 + 16);

      OUTLINED_FUNCTION_3_0();
      _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
      OUTLINED_FUNCTION_4_0();
    }

    else
    {
    }

    v54 = v12;
    __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
    v36 = OUTLINED_FUNCTION_2_0();
    a1 = v37(v36);
    v4 = *(a1 + 16);
    if (!v4)
    {

      v38 = MEMORY[0x277D84F90];
LABEL_30:
      v49 = sub_2680C11F4(v38);
      *&v64 = v54;

      sub_2680C3264(&v64, v49);

      sub_2680C2608(v64, &v64);

      if (v65)
      {
        return sub_2680C2CD8(&v64, a2);
      }

      sub_2680C5824(&v64, &qword_280249F30, &qword_2680E41B0);
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_7(MEMORY[0x277D84F90]);
    v5 = 0;
    v38 = v67;
    v39 = a1 + 32;
    v56 = a1;
    v57 = *(a1 + 16);
    v55 = v4;
    while (v57 != v5)
    {
      if (v5 >= *(a1 + 16))
      {
        goto LABEL_35;
      }

      sub_2680C5758(v39, &v64 + 8);
      v60 = v5;
      sub_2680C2CD8((&v64 + 8), v61);
      v40 = v62;
      v41 = v63;
      __swift_project_boxed_opaque_existential_1(v61, v62);
      v42 = (*(v41 + 16))(v40, v41);
      v44 = v43;
      sub_2680C57BC(&v60, &v58, &qword_280249F40, &qword_2680E2960);
      v45 = v58;
      __swift_destroy_boxed_opaque_existential_0Tm(v59);
      sub_2680C5824(&v60, &qword_280249F40, &qword_2680E2960);
      v67 = v38;
      v47 = *(v38 + 16);
      v46 = *(v38 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_2680D7AC4((v46 > 1), v47 + 1, 1);
        v38 = v67;
      }

      *(v38 + 16) = v47 + 1;
      v48 = (v38 + 24 * v47);
      v48[4] = v42;
      v48[5] = v44;
      v48[6] = v45;
      ++v5;
      v39 += 40;
      v4 = v55;
      a1 = v56;
      if (v55 == v5)
      {

        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v13 = sub_2680D88E4(1, v12);
  v66[0] = v12;
  v66[1] = v13;
  v66[2] = v14;
  v66[3] = v15;
  v66[4] = v16;

  v17 = sub_2680C1CDC(v66);
  swift_unknownObjectRelease();

  v18 = *(v17 + 16);
  if (!v18)
  {

LABEL_33:
    v51 = sub_2680C2CF0();
    v52 = OUTLINED_FUNCTION_8(&type metadata for NLGDialogSelectorError, v51);
    return OUTLINED_FUNCTION_9(v52);
  }

  if (v18 == 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = 0;
    v20 = *(v17 + 32);
    v21 = (v17 + 36);
    for (i = 1; i != v18; ++i)
    {
      v23 = *v21++;
      v24 = v23;
      if (v20 < v23)
      {
        v19 = i;
        v20 = v24;
      }
    }
  }

  v25 = *(v12 + 16);
  v26 = __OFSUB__(v25, v19);
  v27 = v25 - v19;
  if (!v26)
  {
    if (__OFSUB__(v27, 1))
    {
      goto LABEL_38;
    }

    v12 = sub_2680C209C(v27 - 1, v12);
    goto LABEL_18;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:

  __break(1u);
  return result;
}

uint64_t sub_2680C1CDC(void *a1)
{
  v1 = a1[4] >> 1;
  v36 = a1[3];
  v2 = v1 - v36;
  if (__OFSUB__(v1, v36))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v38 = a1[4] >> 1;
  v3 = *a1;
  v4 = a1[2];
  v37 = *(*a1 + 16);
  if (v2 >= v37)
  {
    v5 = *(*a1 + 16);
  }

  else
  {
    v5 = v1 - v36;
  }

  v42 = MEMORY[0x277D84F90];
  sub_2680D7A64(0, v5 & ~(v5 >> 63), 0);
  if (v2 < 0)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    result = __swift_destroy_boxed_opaque_existential_0Tm(__src);
LABEL_38:
    __break(1u);
    return result;
  }

  v6 = v42;
  v34 = v5;
  v35 = v3;
  v33 = v4;
  if (v5)
  {
    v7 = v3 + 32;

    result = swift_unknownObjectRetain();
    v9 = v36;
    v10 = v37;
    v11 = v4 + 40 * v36;
    while (v10)
    {
      sub_2680C5758(v7, __src);
      if (v38 == v9)
      {
        goto LABEL_37;
      }

      if (v9 >= v38)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      sub_2680C2CD8(__src, __dst);
      sub_2680C5758(v11, &__dst[5]);
      v12 = __dst[3];
      v13 = __dst[4];
      __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
      v14 = (*(v13 + 16))(v12, v13);
      v15 = __dst[8];
      v16 = __dst[9];
      __swift_project_boxed_opaque_existential_1(&__dst[5], __dst[8]);
      v17 = (*(v16 + 16))(v15, v16);
      result = sub_2680C5824(__dst, &qword_280249F48, &qword_2680E2968);
      v42 = v6;
      v19 = *(v6 + 16);
      v18 = *(v6 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_2680D7A64((v18 > 1), v19 + 1, 1);
        v6 = v42;
      }

      v7 += 40;
      *(v6 + 16) = v19 + 1;
      *(v6 + 4 * v19 + 32) = v14 - v17;
      --v10;
      v11 += 40;
      ++v9;
      if (!--v5)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_38;
  }

  swift_unknownObjectRetain();
  v9 = v36;
LABEL_16:
  v20 = v34;
  v21 = v33 + 40 * v9;
  v22 = v35 + 40 * v34 + 32;
  v23 = v9;
  while (v37 != v20)
  {
    if (v20 >= v37)
    {
      goto LABEL_32;
    }

    sub_2680C5758(v22, v39);
    if (__OFADD__(v20, 1))
    {
      goto LABEL_33;
    }

    if (v38 == v23)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      break;
    }

    if (v9 < v36 || v23 >= v38)
    {
      goto LABEL_34;
    }

    sub_2680C2CD8(v39, __src);
    sub_2680C5758(v21, &__src[2] + 8);
    memcpy(__dst, __src, 0x50uLL);
    v25 = __dst[3];
    v26 = __dst[4];
    __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
    v27 = (*(v26 + 16))(v25, v26);
    v28 = __dst[8];
    v29 = __dst[9];
    __swift_project_boxed_opaque_existential_1(&__dst[5], __dst[8]);
    v30 = (*(v29 + 16))(v28, v29);
    sub_2680C5824(__dst, &qword_280249F48, &qword_2680E2968);
    v42 = v6;
    v32 = *(v6 + 16);
    v31 = *(v6 + 24);
    if (v32 >= v31 >> 1)
    {
      sub_2680D7A64((v31 > 1), v32 + 1, 1);
      v6 = v42;
    }

    *(v6 + 16) = v32 + 1;
    *(v6 + 4 * v32 + 32) = v27 - v30;
    v21 += 40;
    ++v20;
    v22 += 40;
    ++v23;
  }

  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_2680C209C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    goto LABEL_31;
  }

  v2 = result;
  if (!result)
  {
    return a2;
  }

  v3 = *(a2 + 16);
  if (!v3)
  {

    v7 = MEMORY[0x277D84F90];
LABEL_27:

    return v7;
  }

  v4 = 0;
  v29[1] = a2;
  v5 = a2 + 32;
  v6 = v3 - 1;
  v7 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    result = sub_2680C5758(v5, v33);
    v9 = v8[2];
    if (v9 < v2)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2680D7AE4(0, v9 + 1, 1);
        v8 = v36;
      }

      v12 = v8[2];
      v11 = v8[3];
      if (v12 >= v11 >> 1)
      {
        sub_2680D7AE4((v11 > 1), v12 + 1, 1);
      }

      v13 = v34;
      v14 = v35;
      v15 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
      MEMORY[0x28223BE20](v15);
      v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v17);
      sub_2680C560C(v12, v17, &v36, v13, v14);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      v8 = v36;
LABEL_20:
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if (v4 >= v9)
    {
      break;
    }

    sub_2680C5758(&v8[5 * v4 + 4], v30);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v37 = v7;
    if ((v19 & 1) == 0)
    {
      sub_2680D7AE4(0, *(v7 + 16) + 1, 1);
      v7 = v37;
    }

    v21 = *(v7 + 16);
    v20 = *(v7 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_2680D7AE4((v20 > 1), v21 + 1, 1);
    }

    v22 = v31;
    v23 = v32;
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
    MEMORY[0x28223BE20](v24);
    v26 = v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v27 + 16))(v26);
    sub_2680C560C(v21, v26, &v37, v22, v23);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    v7 = v37;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2680C3300(v8);
      v8 = result;
    }

    if (v4 >= v8[2])
    {
      goto LABEL_30;
    }

    v28 = &v8[5 * v4];
    __swift_destroy_boxed_opaque_existential_0Tm(v28 + 4);
    sub_2680C2CD8(v33, (v28 + 4));
    if (++v4 < v2)
    {
      goto LABEL_20;
    }

    if (!v6)
    {
LABEL_25:

      goto LABEL_27;
    }

    v4 = 0;
LABEL_24:
    --v6;
    v5 += 40;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

BOOL sub_2680C2418(void *a1, void *a2, uint64_t a3)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 8))(v30, v6, v7);
  v8 = v31;
  v9 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  v10 = (*(v9 + 8))(v8, v9);
  v12 = sub_2680D33C8(v10, v11, a3);
  LOBYTE(v9) = v13;

  if (v9)
  {
    v14 = -1;
  }

  else
  {
    v14 = v12;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  v15 = a2[3];
  v16 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v15);
  (*(v16 + 8))(v30, v15, v16);
  v17 = v31;
  v18 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  v19 = (*(v18 + 8))(v17, v18);
  v21 = sub_2680D33C8(v19, v20, a3);
  LOBYTE(v17) = v22;

  if (v17)
  {
    v23 = -1;
  }

  else
  {
    v23 = v21;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  if (v14 != v23)
  {
    return v14 < v23;
  }

  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = (*(v25 + 16))(v24, v25);
  v27 = a2[3];
  v28 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v27);
  return (*(v28 + 16))(v27, v28) < v26;
}

double sub_2680C2608@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_2680C5758(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2680C2640()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 57, 7);
}

uint64_t sub_2680C26C0(uint64_t a1)
{
  v3 = v1;
  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  __swift_project_boxed_opaque_existential_1((v3 + 16), v5);
  v7 = (*(v6 + 8))(a1, v5, v6);
  v8 = *(v3 + 80);
  v9 = *(v3 + 88);
  __swift_project_boxed_opaque_existential_1((v3 + 56), v8);
  (*(v9 + 8))(v14, v7, v8, v9);
  if (v2)
  {
  }

  v17 = *(v3 + 104);
  sub_2680C5758(v14, v13);
  sub_2680D9F50(&v17, v7, v13);

  sub_2680C5824(v13, &qword_280249F30, &qword_2680E41B0);
  v11 = v15;
  v12 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  (*(v12 + 8))(v11, v12);
  return __swift_destroy_boxed_opaque_existential_0Tm(v14);
}

void *sub_2680C2820()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return v0;
}

uint64_t sub_2680C2850()
{
  sub_2680C2820();

  return MEMORY[0x2821FE8D8](v0, 105, 7);
}

uint64_t sub_2680C28CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a1 + 32;
  if (v5)
  {
    while (1)
    {
      sub_2680C5758(v6, &v18);
      __swift_project_boxed_opaque_existential_1(&v18, v19);
      v7 = OUTLINED_FUNCTION_1_0();
      v8(v7);
      __swift_project_boxed_opaque_existential_1(v17, v17[3]);
      v9 = OUTLINED_FUNCTION_1_0();
      if (v10(v9) == *(v2 + 16) && v11 == *(v2 + 24))
      {
        break;
      }

      v13 = sub_2680E1F5C();

      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      if (v13)
      {
        goto LABEL_11;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v18);
      v6 += 40;
      if (!--v5)
      {
        goto LABEL_8;
      }
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v17);
LABEL_11:
    sub_2680C2CD8(&v18, &v20);
  }

  else
  {
LABEL_8:
    sub_2680C2608(a1, &v20);
    if (!v21)
    {
      sub_2680C5824(&v20, &qword_280249F30, &qword_2680E41B0);
      v14 = sub_2680C2CF0();
      v15 = OUTLINED_FUNCTION_8(&type metadata for NLGDialogSelectorError, v14);
      return OUTLINED_FUNCTION_9(v15);
    }
  }

  return sub_2680C2CD8(&v20, a2);
}

uint64_t sub_2680C2A4C()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t getEnumTagSinglePayload for HighestScoringOriginalDialogSelector.ThresholdMethod(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HighestScoringOriginalDialogSelector.ThresholdMethod(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2680C2C0CLL);
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

unint64_t sub_2680C2C60()
{
  result = qword_280249F28;
  if (!qword_280249F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280249F28);
  }

  return result;
}

uint64_t sub_2680C2CD8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_2680C2CF0()
{
  result = qword_280249F38;
  if (!qword_280249F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280249F38);
  }

  return result;
}

uint64_t sub_2680C2D44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249F60, &unk_2680E2980);
  v34 = v4;
  result = sub_2680E1EDC();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_2680C2FE0(0, (v32 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v34 & 1) == 0)
    {
    }

    sub_2680E1FEC();
    sub_2680E1C6C();
    result = sub_2680E200C();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + 8 * v26) = v22;
    ++*(v7 + 16);
    v5 = v33;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_2680C2FE0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2680E2760;
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

uint64_t sub_2680C3044(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v24 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v24 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_2680D83B8(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_17;
    }

    v15 = v10;
    if (v9[3] >= v14)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249F20, &qword_2680E2750);
        sub_2680E1EAC();
      }
    }

    else
    {
      sub_2680C2D44(v14, a2 & 1);
      v16 = sub_2680D83B8(v7, v6);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_19;
      }

      v11 = v16;
    }

    v18 = *a3;
    if (v15)
    {

      *(v18[7] + 8 * v11) = v8;
    }

    else
    {
      v18[(v11 >> 6) + 8] |= 1 << v11;
      v19 = (v18[6] + 16 * v11);
      *v19 = v7;
      v19[1] = v6;
      *(v18[7] + 8 * v11) = v8;
      v20 = v18[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_18;
      }

      v18[2] = v22;
    }

    ++v4;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_2680E1F9C();
  __break(1u);
  return result;
}

uint64_t sub_2680C31F8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2680C3300(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_2680C345C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2680C3264(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_2680C3300(v4);
  }

  v5 = v4[2];
  v7[0] = (v4 + 4);
  v7[1] = v5;

  sub_2680C3314(v7, a2);
  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_2680C3314(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_2680E1F3C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249F50, &unk_2680E2970);
        v8 = sub_2680E1D4C();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_2680C39A8(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_2680C3560(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_2680C345C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2680E1F3C();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249F50, &unk_2680E2970);
        v6 = sub_2680E1D4C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2680C44C0(v7, v8, a1, v4);
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
    return sub_2680C383C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2680C3560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 == a2)
  {
  }

  v7 = *a4;
  v8 = *a4 + 40 * a3;
  v9 = a1 - a3;
  while (2)
  {
    v38 = v8;
    v39 = a3;
    v37 = v9;
    do
    {
      sub_2680C5758(v8, &v46);
      sub_2680C5758(v8 - 40, v43);
      v10 = v47;
      v11 = v48;
      __swift_project_boxed_opaque_existential_1(&v46, v47);
      (*(v11 + 8))(v40, v10, v11);
      v12 = v41;
      v13 = v42;
      __swift_project_boxed_opaque_existential_1(v40, v41);
      v14 = (*(v13 + 8))(v12, v13);
      if (*(a5 + 16) && (v16 = sub_2680D83B8(v14, v15), (v17 & 1) != 0))
      {
        v18 = *(*(a5 + 56) + 8 * v16);
      }

      else
      {
        v18 = -1;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      v19 = v44;
      v20 = v45;
      __swift_project_boxed_opaque_existential_1(v43, v44);
      (*(v20 + 8))(v40, v19, v20);
      v21 = v41;
      v22 = v42;
      __swift_project_boxed_opaque_existential_1(v40, v41);
      v23 = (*(v22 + 8))(v21, v22);
      if (*(a5 + 16) && (v25 = sub_2680D83B8(v23, v24), (v26 & 1) != 0))
      {
        v27 = *(*(a5 + 56) + 8 * v25);
      }

      else
      {
        v27 = -1;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      if (v18 == v27)
      {
        v28 = v47;
        v29 = v48;
        __swift_project_boxed_opaque_existential_1(&v46, v47);
        v30 = (*(v29 + 16))(v28, v29);
        v31 = v44;
        v32 = v45;
        __swift_project_boxed_opaque_existential_1(v43, v44);
        v33 = (*(v32 + 16))(v31, v32) < v30;
      }

      else
      {
        v33 = v18 < v27;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      result = __swift_destroy_boxed_opaque_existential_0Tm(&v46);
      if (!v33)
      {
        break;
      }

      if (!v7)
      {
        __break(1u);
        return result;
      }

      sub_2680C2CD8(v8, &v46);
      v34 = *(v8 - 24);
      *v8 = *(v8 - 40);
      *(v8 + 16) = v34;
      *(v8 + 32) = *(v8 - 8);
      sub_2680C2CD8(&v46, v8 - 40);
      v8 -= 40;
    }

    while (!__CFADD__(v9++, 1));
    a3 = v39 + 1;
    v8 = v38 + 40;
    v9 = v37 - 1;
    if (v39 + 1 != a2)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_2680C383C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
    while (2)
    {
      v24 = a3;
      v7 = v6;
      v8 = v5;
      do
      {
        sub_2680C5758(v8, &v21);
        sub_2680C5758(v8 - 40, v18);
        v9 = v22;
        v10 = v23;
        __swift_project_boxed_opaque_existential_1(&v21, v22);
        v11 = (*(v10 + 16))(v9, v10);
        v12 = v19;
        v13 = v20;
        __swift_project_boxed_opaque_existential_1(v18, v19);
        v14 = (*(v13 + 16))(v12, v13);
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
        result = __swift_destroy_boxed_opaque_existential_0Tm(&v21);
        if (v14 >= v11)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        sub_2680C2CD8(v8, &v21);
        v15 = *(v8 - 24);
        *v8 = *(v8 - 40);
        *(v8 + 16) = v15;
        *(v8 + 32) = *(v8 - 8);
        result = sub_2680C2CD8(&v21, v8 - 40);
        v8 -= 40;
      }

      while (!__CFADD__(v7++, 1));
      a3 = v24 + 1;
      v5 += 40;
      --v6;
      if (v24 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_2680C39A8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    swift_bridgeObjectRetain_n();
    v8 = MEMORY[0x277D84F90];
LABEL_117:
    v151 = *a1;
    if (!*a1)
    {
      goto LABEL_161;
    }

    swift_bridgeObjectRetain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_119;
    }

    goto LABEL_155;
  }

  swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v152 = a5;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v11 = *a3;
      sub_2680C5758(*a3 + 40 * v10, &v165);
      sub_2680C5758(v11 + 40 * v9, v162);
      LODWORD(v151) = sub_2680C2418(&v165, v162, a5);
      if (v154)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v162);
        __swift_destroy_boxed_opaque_existential_0Tm(&v165);
        swift_bridgeObjectRelease_n();
LABEL_115:
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v162);
      __swift_destroy_boxed_opaque_existential_0Tm(&v165);
      v12 = 40 * v9;
      v13 = v11 + 40 * v9 + 80;
      v142 = v9;
      v14 = v9 + 2;
      v148 = v6;
      while (1)
      {
        v15 = v14;
        if (v10 + 1 >= v6)
        {
          break;
        }

        v155 = v10;
        v16 = v8;
        sub_2680C5758(v13, &v165);
        sub_2680C5758(v13 - 40, v162);
        v18 = v166;
        v17 = v167;
        __swift_project_boxed_opaque_existential_1(&v165, v166);
        (*(v17 + 8))(v159, v18, v17);
        v19 = v160;
        v20 = v161;
        __swift_project_boxed_opaque_existential_1(v159, v160);
        v21 = (*(v20 + 8))(v19, v20);
        if (*(a5 + 16) && (v23 = sub_2680D83B8(v21, v22), (v24 & 1) != 0))
        {
          v25 = *(*(a5 + 56) + 8 * v23);
        }

        else
        {
          v25 = -1;
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v159);
        v26 = v163;
        v27 = v164;
        __swift_project_boxed_opaque_existential_1(v162, v163);
        (*(v27 + 8))(v159, v26, v27);
        v28 = v160;
        v29 = v161;
        __swift_project_boxed_opaque_existential_1(v159, v160);
        v30 = (*(v29 + 8))(v28, v29);
        if (*(a5 + 16) && (v32 = sub_2680D83B8(v30, v31), (v33 & 1) != 0))
        {
          v34 = *(*(a5 + 56) + 8 * v32);
        }

        else
        {
          v34 = -1;
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v159);
        if (v25 == v34)
        {
          v35 = v166;
          v36 = v167;
          __swift_project_boxed_opaque_existential_1(&v165, v166);
          v37 = (*(v36 + 16))(v35, v36);
          v38 = v163;
          v39 = v164;
          __swift_project_boxed_opaque_existential_1(v162, v163);
          v40 = (*(v39 + 16))(v38, v39) < v37;
        }

        else
        {
          v40 = v25 < v34;
        }

        v8 = v16;
        v6 = v148;
        __swift_destroy_boxed_opaque_existential_0Tm(v162);
        __swift_destroy_boxed_opaque_existential_0Tm(&v165);
        v13 += 40;
        v10 = v155 + 1;
        v14 = v15 + 1;
        if ((v151 & 1) != v40)
        {
          goto LABEL_21;
        }
      }

      v10 = v6;
LABEL_21:
      if ((v151 & 1) == 0)
      {
        goto LABEL_33;
      }

      v9 = v142;
      if (v10 < v142)
      {
        goto LABEL_154;
      }

      if (v142 < v10)
      {
        if (v6 >= v15)
        {
          v41 = v15;
        }

        else
        {
          v41 = v6;
        }

        v42 = 40 * v41 - 40;
        v43 = v10;
        do
        {
          if (v9 != --v10)
          {
            v44 = *a3;
            if (!*a3)
            {
              goto LABEL_159;
            }

            v45 = v44 + v12;
            v46 = v44 + v42;
            sub_2680C2CD8((v44 + v12), &v165);
            v47 = *(v46 + 32);
            v48 = *(v46 + 16);
            *v45 = *v46;
            *(v45 + 16) = v48;
            *(v45 + 32) = v47;
            sub_2680C2CD8(&v165, v46);
          }

          ++v9;
          v42 -= 40;
          v12 += 40;
        }

        while (v9 < v10);
        v10 = v43;
LABEL_33:
        v9 = v142;
      }
    }

    v49 = a3[1];
    if (v10 < v49)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_151;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_62:
    if (v10 < v9)
    {
      goto LABEL_150;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2680D4ACC();
      v8 = v127;
    }

    v81 = *(v8 + 2);
    v82 = v81 + 1;
    if (v81 >= *(v8 + 3) >> 1)
    {
      sub_2680D4ACC();
      v8 = v128;
    }

    *(v8 + 2) = v82;
    v83 = v8 + 32;
    v84 = &v8[16 * v81 + 32];
    *v84 = v9;
    *(v84 + 1) = v10;
    v151 = *a1;
    if (!*a1)
    {
      goto LABEL_160;
    }

    v157 = v10;
    if (v81)
    {
      v150 = v8 + 32;
      while (1)
      {
        v85 = v82 - 1;
        v86 = &v83[16 * v82 - 16];
        v87 = &v8[16 * v82];
        if (v82 >= 4)
        {
          break;
        }

        if (v82 == 3)
        {
          v88 = *(v8 + 4);
          v89 = *(v8 + 5);
          v98 = __OFSUB__(v89, v88);
          v90 = v89 - v88;
          v91 = v98;
LABEL_83:
          if (v91)
          {
            goto LABEL_137;
          }

          v103 = *v87;
          v102 = *(v87 + 1);
          v104 = __OFSUB__(v102, v103);
          v105 = v102 - v103;
          v106 = v104;
          if (v104)
          {
            goto LABEL_140;
          }

          v107 = *(v86 + 1);
          v108 = v107 - *v86;
          if (__OFSUB__(v107, *v86))
          {
            goto LABEL_143;
          }

          if (__OFADD__(v105, v108))
          {
            goto LABEL_145;
          }

          if (v105 + v108 >= v90)
          {
            if (v90 < v108)
            {
              v85 = v82 - 2;
            }

            goto LABEL_105;
          }

          goto LABEL_98;
        }

        if (v82 < 2)
        {
          goto LABEL_139;
        }

        v110 = *v87;
        v109 = *(v87 + 1);
        v98 = __OFSUB__(v109, v110);
        v105 = v109 - v110;
        v106 = v98;
LABEL_98:
        if (v106)
        {
          goto LABEL_142;
        }

        v112 = *v86;
        v111 = *(v86 + 1);
        v98 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v98)
        {
          goto LABEL_144;
        }

        if (v113 < v105)
        {
          goto LABEL_112;
        }

LABEL_105:
        if (v85 - 1 >= v82)
        {
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
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }

        v117 = *a3;
        if (!*a3)
        {
          goto LABEL_157;
        }

        v118 = v8;
        v119 = &v83[16 * v85 - 16];
        v120 = *v119;
        v121 = v85;
        v122 = &v83[16 * v85];
        v123 = *(v122 + 1);
        v124 = (v117 + 40 * *v119);
        v125 = (v117 + 40 * *v122);
        v8 = (v117 + 40 * v123);
        a5 = v152;

        sub_2680C4C5C(v124, v125, v8, v151, v152);
        if (v154)
        {
          swift_bridgeObjectRelease_n();
          goto LABEL_115;
        }

        if (v123 < v120)
        {
          goto LABEL_132;
        }

        v8 = v118;
        v126 = *(v118 + 2);
        if (v121 > v126)
        {
          goto LABEL_133;
        }

        *v119 = v120;
        *(v119 + 1) = v123;
        if (v121 >= v126)
        {
          goto LABEL_134;
        }

        v82 = v126 - 1;
        memmove(v122, v122 + 16, 16 * (v126 - 1 - v121));
        *(v118 + 2) = v126 - 1;
        v83 = v150;
        a5 = v152;
        if (v126 <= 2)
        {
          goto LABEL_112;
        }
      }

      v92 = &v83[16 * v82];
      v93 = *(v92 - 8);
      v94 = *(v92 - 7);
      v98 = __OFSUB__(v94, v93);
      v95 = v94 - v93;
      if (v98)
      {
        goto LABEL_135;
      }

      v97 = *(v92 - 6);
      v96 = *(v92 - 5);
      v98 = __OFSUB__(v96, v97);
      v90 = v96 - v97;
      v91 = v98;
      if (v98)
      {
        goto LABEL_136;
      }

      v99 = *(v87 + 1);
      v100 = v99 - *v87;
      if (__OFSUB__(v99, *v87))
      {
        goto LABEL_138;
      }

      v98 = __OFADD__(v90, v100);
      v101 = v90 + v100;
      if (v98)
      {
        goto LABEL_141;
      }

      if (v101 >= v95)
      {
        v115 = *v86;
        v114 = *(v86 + 1);
        v98 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v98)
        {
          goto LABEL_149;
        }

        if (v90 < v116)
        {
          v85 = v82 - 2;
        }

        goto LABEL_105;
      }

      goto LABEL_83;
    }

LABEL_112:
    v6 = a3[1];
    v7 = v157;
    if (v157 >= v6)
    {
      goto LABEL_117;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_152;
  }

  if (v9 + a4 >= v49)
  {
    v50 = a3[1];
  }

  else
  {
    v50 = v9 + a4;
  }

  if (v50 < v9)
  {
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    v8 = sub_2680C54F8(v8);
LABEL_119:
    v130 = v8 + 16;
    v129 = *(v8 + 2);
    for (i = v8; ; v8 = i)
    {
      v131 = v129 - 2;
      if (v129 < 2)
      {

        return swift_bridgeObjectRelease_n();
      }

      v132 = *a3;
      if (!*a3)
      {
        goto LABEL_158;
      }

      v133 = &v8[16 * v129];
      v134 = *v133;
      v135 = v130;
      v158 = v129;
      v136 = &v130[16 * v129];
      v137 = *(v136 + 1);
      v138 = (v132 + 40 * *v133);
      v8 = (v132 + 40 * *v136);
      v139 = v132 + 40 * v137;

      sub_2680C4C5C(v138, v8, v139, v151, a5);
      if (v154)
      {
        break;
      }

      if (v137 < v134)
      {
        goto LABEL_146;
      }

      if (v131 >= *v135)
      {
        goto LABEL_147;
      }

      v130 = v135;
      *v133 = v134;
      *(v133 + 1) = v137;
      if (*v135 < v158)
      {
        goto LABEL_148;
      }

      v129 = *v135 - 1;
      memmove(v136, v136 + 16, 16 * (*v135 - v158));
      *v135 = v129;
    }

    swift_bridgeObjectRelease_n();
  }

  if (v10 == v50)
  {
    goto LABEL_62;
  }

  v145 = v8;
  v147 = v50;
  v51 = v10;
  v52 = *a3;
  v53 = *a3 + 40 * v51;
  v156 = v51;
  v143 = v9;
  v54 = v9 - v51;
LABEL_44:
  v149 = v54;
  v151 = v53;
  while (1)
  {
    sub_2680C5758(v53, &v165);
    sub_2680C5758(v53 - 40, v162);
    v55 = v166;
    v56 = v167;
    __swift_project_boxed_opaque_existential_1(&v165, v166);
    (*(v56 + 8))(v159, v55, v56);
    v57 = v160;
    v58 = v161;
    __swift_project_boxed_opaque_existential_1(v159, v160);
    v59 = (*(v58 + 8))(v57, v58);
    if (*(a5 + 16) && (v61 = sub_2680D83B8(v59, v60), (v62 & 1) != 0))
    {
      v63 = *(*(a5 + 56) + 8 * v61);
    }

    else
    {
      v63 = -1;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v159);
    v64 = v163;
    v65 = v164;
    __swift_project_boxed_opaque_existential_1(v162, v163);
    (*(v65 + 8))(v159, v64, v65);
    v66 = v160;
    v67 = v161;
    __swift_project_boxed_opaque_existential_1(v159, v160);
    v68 = (*(v67 + 8))(v66, v67);
    if (*(a5 + 16) && (v70 = sub_2680D83B8(v68, v69), (v71 & 1) != 0))
    {
      v72 = *(*(a5 + 56) + 8 * v70);
    }

    else
    {
      v72 = -1;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v159);
    if (v63 == v72)
    {
      v73 = v166;
      v74 = v167;
      __swift_project_boxed_opaque_existential_1(&v165, v166);
      v75 = (*(v74 + 16))(v73, v74);
      v76 = v163;
      v77 = v164;
      __swift_project_boxed_opaque_existential_1(v162, v163);
      v78 = (*(v77 + 16))(v76, v77) < v75;
    }

    else
    {
      v78 = v63 < v72;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v162);
    __swift_destroy_boxed_opaque_existential_0Tm(&v165);
    if (!v78)
    {
LABEL_60:
      v53 = (v151 + 40);
      v54 = v149 - 1;
      if (++v156 == v147)
      {
        v10 = v147;
        v8 = v145;
        v9 = v143;
        goto LABEL_62;
      }

      goto LABEL_44;
    }

    if (!v52)
    {
      break;
    }

    sub_2680C2CD8(v53, &v165);
    v79 = *(v53 - 24);
    *v53 = *(v53 - 40);
    *(v53 + 16) = v79;
    *(v53 + 32) = *(v53 - 8);
    sub_2680C2CD8(&v165, v53 - 40);
    v53 -= 40;
    if (__CFADD__(v54++, 1))
    {
      goto LABEL_60;
    }
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_157:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_158:

  __break(1u);
LABEL_159:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_160:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_161:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

void sub_2680C44C0(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_91:
    v110 = *result;
    if (!*result)
    {
      goto LABEL_132;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_93:
      v95 = (v6 + 16);
      v96 = *(v6 + 16);
      while (v96 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_129;
        }

        v97 = v6;
        v98 = (v6 + 16 * v96);
        v99 = *v98;
        v6 = &v95[2 * v96];
        v100 = *(v6 + 8);
        v101 = v118;
        sub_2680C51F8((*a3 + 40 * *v98), (*a3 + 40 * *v6), *a3 + 40 * v100, v110);
        v118 = v101;
        if (v101)
        {
          break;
        }

        if (v100 < v99)
        {
          goto LABEL_117;
        }

        if (v96 - 2 >= *v95)
        {
          goto LABEL_118;
        }

        *v98 = v99;
        v98[1] = v100;
        v102 = *v95 - v96;
        if (*v95 < v96)
        {
          goto LABEL_119;
        }

        v96 = *v95 - 1;
        memmove(v6, (v6 + 16), 16 * v102);
        *v95 = v96;
        v6 = v97;
      }

LABEL_101:

      return;
    }

LABEL_126:
    v6 = sub_2680C54F8(v6);
    goto LABEL_93;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = (v5 + 1);
    v107 = v5;
    if ((v5 + 1) < v4)
    {
      v8 = v5;
      v104 = v6;
      v9 = *a3;
      v6 = (v5 + 1);
      sub_2680C5758(*a3 + 40 * v7, &v115);
      v10 = 40 * v8;
      sub_2680C5758(v9 + 40 * v8, v112);
      v11 = v116;
      v12 = v117;
      __swift_project_boxed_opaque_existential_1(&v115, v116);
      v13 = (*(v12 + 16))(v11, v12);
      v14 = v113;
      v15 = v114;
      __swift_project_boxed_opaque_existential_1(v112, v113);
      v16 = (*(v15 + 16))(v14, v15);
      __swift_destroy_boxed_opaque_existential_0Tm(v112);
      __swift_destroy_boxed_opaque_existential_0Tm(&v115);
      v17 = v9 + 40 * v8 + 80;
      v18 = (v8 + 2);
      while (1)
      {
        v19 = v18;
        if (v6 + 1 >= v4)
        {
          break;
        }

        ++v6;
        sub_2680C5758(v17, &v115);
        sub_2680C5758(v17 - 40, v112);
        v20 = v116;
        v21 = v117;
        __swift_project_boxed_opaque_existential_1(&v115, v116);
        v22 = (*(v21 + 16))(v20, v21);
        v23 = v113;
        v24 = v114;
        __swift_project_boxed_opaque_existential_1(v112, v113);
        v25 = (*(v24 + 16))(v23, v24);
        __swift_destroy_boxed_opaque_existential_0Tm(v112);
        __swift_destroy_boxed_opaque_existential_0Tm(&v115);
        v17 += 40;
        v18 = v19 + 1;
        if (v16 < v13 == v25 >= v22)
        {
          goto LABEL_9;
        }
      }

      v6 = v4;
LABEL_9:
      if (v16 < v13)
      {
        v26 = v107;
        if (v6 < v107)
        {
          goto LABEL_123;
        }

        v7 = v6;
        if (v107 >= v6)
        {
          goto LABEL_21;
        }

        if (v4 >= v19)
        {
          v27 = v19;
        }

        else
        {
          v27 = v4;
        }

        v28 = 40 * v27 - 40;
        v29 = v6;
        do
        {
          if (v26 != --v29)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_130;
            }

            v31 = v30 + v10;
            v32 = v30 + v28;
            sub_2680C2CD8((v30 + v10), &v115);
            v33 = *(v32 + 32);
            v34 = *(v32 + 16);
            *v31 = *v32;
            *(v31 + 16) = v34;
            *(v31 + 32) = v33;
            sub_2680C2CD8(&v115, v32);
          }

          ++v26;
          v28 -= 40;
          v10 += 40;
        }

        while (v26 < v29);
      }

      v7 = v6;
LABEL_21:
      v6 = v104;
    }

    v35 = a3[1];
    v36 = v107;
    if (v7 < v35)
    {
      if (__OFSUB__(v7, v107))
      {
        goto LABEL_122;
      }

      if (v7 - v107 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v7 < v36)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2680D4ACC();
      v6 = v93;
    }

    v51 = *(v6 + 16);
    v52 = v51 + 1;
    v110 = v7;
    if (v51 >= *(v6 + 24) >> 1)
    {
      sub_2680D4ACC();
      v6 = v94;
    }

    *(v6 + 16) = v52;
    v53 = v6 + 32;
    v54 = (v6 + 32 + 16 * v51);
    *v54 = v36;
    v54[1] = v7;
    v109 = *result;
    if (!*result)
    {
      goto LABEL_131;
    }

    if (v51)
    {
      while (1)
      {
        v55 = v52 - 1;
        v56 = (v53 + 16 * (v52 - 1));
        v57 = (v6 + 16 * v52);
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v58 = *(v6 + 32);
          v59 = *(v6 + 40);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_59:
          if (v61)
          {
            goto LABEL_108;
          }

          v73 = *v57;
          v72 = v57[1];
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_111;
          }

          v77 = v56[1];
          v78 = v77 - *v56;
          if (__OFSUB__(v77, *v56))
          {
            goto LABEL_114;
          }

          if (__OFADD__(v75, v78))
          {
            goto LABEL_116;
          }

          if (v75 + v78 >= v60)
          {
            if (v60 < v78)
            {
              v55 = v52 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v52 < 2)
        {
          goto LABEL_110;
        }

        v80 = *v57;
        v79 = v57[1];
        v68 = __OFSUB__(v79, v80);
        v75 = v79 - v80;
        v76 = v68;
LABEL_74:
        if (v76)
        {
          goto LABEL_113;
        }

        v82 = *v56;
        v81 = v56[1];
        v68 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v83 < v75)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v55 - 1 >= v52)
        {
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
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

        v87 = v6;
        v88 = (v53 + 16 * (v55 - 1));
        v89 = *v88;
        v90 = (v53 + 16 * v55);
        v6 = v90[1];
        v91 = v118;
        sub_2680C51F8((*a3 + 40 * *v88), (*a3 + 40 * *v90), *a3 + 40 * v6, v109);
        v118 = v91;
        if (v91)
        {
          goto LABEL_101;
        }

        if (v6 < v89)
        {
          goto LABEL_103;
        }

        v92 = *(v87 + 16);
        if (v55 > v92)
        {
          goto LABEL_104;
        }

        *v88 = v89;
        v88[1] = v6;
        if (v55 >= v92)
        {
          goto LABEL_105;
        }

        v52 = v92 - 1;
        memmove((v53 + 16 * v55), v90 + 2, 16 * (v92 - 1 - v55));
        v6 = v87;
        *(v87 + 16) = v92 - 1;
        if (v92 <= 2)
        {
          goto LABEL_88;
        }
      }

      v62 = v53 + 16 * v52;
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_106;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_107;
      }

      v69 = v57[1];
      v70 = v69 - *v57;
      if (__OFSUB__(v69, *v57))
      {
        goto LABEL_109;
      }

      v68 = __OFADD__(v60, v70);
      v71 = v60 + v70;
      if (v68)
      {
        goto LABEL_112;
      }

      if (v71 >= v65)
      {
        v85 = *v56;
        v84 = v56[1];
        v68 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v68)
        {
          goto LABEL_120;
        }

        if (v60 < v86)
        {
          v55 = v52 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v5 = v110;
    v4 = a3[1];
    if (v110 >= v4)
    {
      goto LABEL_91;
    }
  }

  if (__OFADD__(v107, a4))
  {
    goto LABEL_124;
  }

  if (v107 + a4 >= v35)
  {
    v37 = a3[1];
  }

  else
  {
    v37 = v107 + a4;
  }

  if (v37 < v107)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if (v7 == v37)
  {
    goto LABEL_39;
  }

  v105 = v6;
  v38 = *a3;
  v39 = *a3 + 40 * v7;
  v40 = v107 - v7;
  v108 = v37;
LABEL_32:
  v110 = v7;
  v41 = v40;
  v42 = v39;
  while (1)
  {
    sub_2680C5758(v42, &v115);
    sub_2680C5758(v42 - 40, v112);
    v44 = v116;
    v43 = v117;
    __swift_project_boxed_opaque_existential_1(&v115, v116);
    v45 = (*(v43 + 16))(v44, v43);
    v46 = v113;
    v47 = v114;
    __swift_project_boxed_opaque_existential_1(v112, v113);
    v48 = (*(v47 + 16))(v46, v47);
    __swift_destroy_boxed_opaque_existential_0Tm(v112);
    __swift_destroy_boxed_opaque_existential_0Tm(&v115);
    if (v48 >= v45)
    {
LABEL_37:
      ++v7;
      v39 += 40;
      --v40;
      if (v110 + 1 == v108)
      {
        v7 = v108;
        v6 = v105;
        v36 = v107;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v38)
    {
      break;
    }

    sub_2680C2CD8(v42, &v115);
    v49 = *(v42 - 24);
    *v42 = *(v42 - 40);
    *(v42 + 16) = v49;
    *(v42 + 32) = *(v42 - 8);
    sub_2680C2CD8(&v115, v42 - 40);
    v42 -= 40;
    if (__CFADD__(v41++, 1))
    {
      goto LABEL_37;
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
}

uint64_t sub_2680C4C5C(char *a1, char *a2, unint64_t a3, char *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = (a2 - a1) / 40;
  v11 = (a3 - a2) / 40;
  if (v10 < v11)
  {
    sub_2680D889C(a1, (a2 - a1) / 40, a4);
    v12 = &v6[40 * v10];
    while (1)
    {
      if (v6 >= v12 || v8 >= v7)
      {
        v8 = v9;
        goto LABEL_49;
      }

      v79 = v8;
      sub_2680C5758(v8, v87);
      sub_2680C5758(v6, v84);
      v14 = v88;
      v15 = v89;
      __swift_project_boxed_opaque_existential_1(v87, v88);
      (*(v15 + 8))(v81, v14, v15);
      v16 = v82;
      v17 = v83;
      __swift_project_boxed_opaque_existential_1(v81, v82);
      v18 = (*(v17 + 8))(v16, v17);
      if (*(a5 + 16) && (v20 = sub_2680D83B8(v18, v19), (v21 & 1) != 0))
      {
        v22 = *(*(a5 + 56) + 8 * v20);
      }

      else
      {
        v22 = -1;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v81);
      v23 = v85;
      v24 = v86;
      __swift_project_boxed_opaque_existential_1(v84, v85);
      (*(v24 + 8))(v81, v23, v24);
      v25 = v82;
      v26 = v83;
      __swift_project_boxed_opaque_existential_1(v81, v82);
      v27 = (*(v26 + 8))(v25, v26);
      if (*(a5 + 16) && (v29 = sub_2680D83B8(v27, v28), (v30 & 1) != 0))
      {
        v31 = *(*(a5 + 56) + 8 * v29);
      }

      else
      {
        v31 = -1;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v81);
      if (v22 == v31)
      {
        v32 = v88;
        v33 = v89;
        __swift_project_boxed_opaque_existential_1(v87, v88);
        v34 = (*(v33 + 16))(v32, v33);
        v35 = v85;
        v36 = v86;
        __swift_project_boxed_opaque_existential_1(v84, v85);
        v37 = (*(v36 + 16))(v35, v36) < v34;
      }

      else
      {
        v37 = v22 < v31;
      }

      v8 = v79;
      __swift_destroy_boxed_opaque_existential_0Tm(v84);
      __swift_destroy_boxed_opaque_existential_0Tm(v87);
      if (!v37)
      {
        break;
      }

      v38 = v79;
      v8 = v79 + 40;
      if (v9 != v79)
      {
        goto LABEL_22;
      }

LABEL_23:
      v9 += 40;
    }

    v38 = v6;
    v39 = v9 == v6;
    v6 += 40;
    if (v39)
    {
      goto LABEL_23;
    }

LABEL_22:
    v40 = *v38;
    v41 = *(v38 + 1);
    *(v9 + 4) = *(v38 + 4);
    *v9 = v40;
    *(v9 + 1) = v41;
    goto LABEL_23;
  }

  sub_2680D889C(a2, (a3 - a2) / 40, a4);
  v42 = &v6[40 * v11];
  v77 = v6;
LABEL_25:
  v43 = (v8 - 40);
  v7 -= 40;
  v44 = (v42 - 40);
  v78 = v8 - 40;
  v80 = v8;
  while (1)
  {
    v12 = (v44 + 40);
    if (v44 + 40 <= v6 || v8 <= v9)
    {
      break;
    }

    sub_2680C5758(v44, v87);
    sub_2680C5758(v43, v84);
    v46 = v88;
    v47 = v89;
    __swift_project_boxed_opaque_existential_1(v87, v88);
    (*(v47 + 8))(v81, v46, v47);
    v48 = v82;
    v49 = v83;
    __swift_project_boxed_opaque_existential_1(v81, v82);
    v50 = (*(v49 + 8))(v48, v49);
    if (*(a5 + 16) && (v52 = sub_2680D83B8(v50, v51), (v53 & 1) != 0))
    {
      v54 = *(*(a5 + 56) + 8 * v52);
    }

    else
    {
      v54 = -1;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v81);
    v55 = v85;
    v56 = v86;
    __swift_project_boxed_opaque_existential_1(v84, v85);
    (*(v56 + 8))(v81, v55, v56);
    v57 = v82;
    v58 = v83;
    __swift_project_boxed_opaque_existential_1(v81, v82);
    v59 = (*(v58 + 8))(v57, v58);
    if (*(a5 + 16) && (v61 = sub_2680D83B8(v59, v60), (v62 & 1) != 0))
    {
      v63 = *(*(a5 + 56) + 8 * v61);
    }

    else
    {
      v63 = -1;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v81);
    if (v54 == v63)
    {
      v64 = v88;
      v65 = v89;
      __swift_project_boxed_opaque_existential_1(v87, v88);
      v66 = (*(v65 + 16))(v64, v65);
      v67 = v85;
      v68 = v86;
      __swift_project_boxed_opaque_existential_1(v84, v85);
      v69 = (*(v68 + 16))(v67, v68) < v66;
    }

    else
    {
      v69 = v54 < v63;
    }

    v6 = v77;
    v43 = v78;
    v8 = v80;
    __swift_destroy_boxed_opaque_existential_0Tm(v84);
    __swift_destroy_boxed_opaque_existential_0Tm(v87);
    if (v69)
    {
      v42 = (v44 + 40);
      v8 = v78;
      if ((v7 + 40) != v80)
      {
        v72 = *v78;
        v73 = *(v78 + 1);
        *(v7 + 32) = *(v78 + 4);
        *v7 = v72;
        *(v7 + 16) = v73;
        v8 = v78;
      }

      goto LABEL_25;
    }

    if (v12 != (v7 + 40))
    {
      v70 = *v44;
      v71 = *(v44 + 16);
      *(v7 + 32) = *(v44 + 32);
      *v7 = v70;
      *(v7 + 16) = v71;
    }

    v7 -= 40;
    v44 -= 40;
  }

LABEL_49:
  v74 = (v12 - v6) / 40;
  if (v8 != v6 || v8 >= &v6[40 * v74])
  {
    memmove(v8, v6, 40 * v74);
  }

  return 1;
}

uint64_t sub_2680C51F8(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_2680D889C(a1, (a2 - a1) / 40, a4);
    v10 = &v4[40 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      sub_2680C5758(v6, v46);
      sub_2680C5758(v4, v43);
      v12 = v47;
      v13 = v48;
      __swift_project_boxed_opaque_existential_1(v46, v47);
      v14 = (*(v13 + 16))(v12, v13);
      v15 = v44;
      v16 = v45;
      __swift_project_boxed_opaque_existential_1(v43, v44);
      v17 = (*(v16 + 16))(v15, v16);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      if (v17 >= v14)
      {
        break;
      }

      v18 = v6;
      v19 = v7 == v6;
      v6 += 40;
      if (!v19)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 40;
    }

    v18 = v4;
    v19 = v7 == v4;
    v4 += 40;
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    v20 = *v18;
    v21 = *(v18 + 1);
    *(v7 + 4) = *(v18 + 4);
    *v7 = v20;
    *(v7 + 1) = v21;
    goto LABEL_13;
  }

  sub_2680D889C(a2, (a3 - a2) / 40, a4);
  v22 = &v4[40 * v9];
  v49 = v7;
LABEL_15:
  v23 = (v6 - 40);
  v24 = v5 - 40;
  v25 = (v22 - 40);
  while (1)
  {
    v10 = (v25 + 40);
    if (v25 + 40 <= v4 || v6 <= v7)
    {
      break;
    }

    v27 = v24;
    v28 = v6;
    v29 = v4;
    sub_2680C5758(v25, v46);
    v6 = v23;
    sub_2680C5758(v23, v43);
    v31 = v47;
    v30 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    v32 = (*(v30 + 16))(v31, v30);
    v33 = v44;
    v34 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    v35 = (*(v34 + 16))(v33, v34);
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    v5 = v27;
    if (v35 < v32)
    {
      v22 = (v25 + 40);
      v19 = v27 + 40 == v28;
      v4 = v29;
      v7 = v49;
      if (!v19)
      {
        v38 = *v23;
        v39 = *(v23 + 16);
        *(v27 + 32) = *(v23 + 32);
        *v27 = v38;
        *(v27 + 16) = v39;
      }

      goto LABEL_15;
    }

    if (v10 != (v27 + 40))
    {
      v36 = *v25;
      v37 = *(v25 + 16);
      *(v27 + 32) = *(v25 + 32);
      *v27 = v36;
      *(v27 + 16) = v37;
    }

    v24 = v27 - 40;
    v25 -= 40;
    v4 = v29;
    v6 = v28;
    v7 = v49;
  }

LABEL_28:
  v40 = (v10 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[40 * v40])
  {
    memmove(v6, v4, 40 * v40);
  }

  return 1;
}

char *sub_2680C550C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249F58, &qword_2680E3EC0);
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

uint64_t sub_2680C560C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_2680C2CD8(&v12, v10 + 40 * a1 + 32);
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_2680C5758(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2680C57BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2680C5824(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void OUTLINED_FUNCTION_4_0()
{

  JUMPOUT(0x26D611870);
}

BOOL OUTLINED_FUNCTION_5(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void *OUTLINED_FUNCTION_7@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 72) = a1;

  return sub_2680D7AC4(0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_8(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_9(uint64_t a1)
{

  return swift_willThrow();
}

unint64_t sub_2680C59B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2680E191C();
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_1_1();
  v5 = OUTLINED_FUNCTION_10();
  type metadata accessor for Siri_Nlg_Model(v5);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_1();
  v9 = v8 - v7;
  v10 = sub_2680E167C();
  OUTLINED_FUNCTION_0_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_1();
  v16 = v15 - v14;
  if (qword_280249E70 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280249E70);
  }

  v17 = sub_2680E1B3C();
  __swift_project_value_buffer(v17, qword_28024C7A8);
  (*(v12 + 16))(v16, a1, v10);
  v18 = sub_2680E1B1C();
  v19 = sub_2680E1DAC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35 = v33;
    *v20 = 136315138;
    OUTLINED_FUNCTION_2_1();
    sub_2680C6CDC(v21, v22, MEMORY[0x277CC9290]);
    v23 = sub_2680E1F4C();
    v9 = v2;
    v2 = v24;
    v25 = v16;
    v26 = *(v12 + 8);
    v26(v25, v10);
    sub_2680DF818(v23, v2, &v35);
    OUTLINED_FUNCTION_11();
    *(v20 + 4) = v23;
    _os_log_impl(&dword_2680BC000, v18, v19, "Loading JSON file from %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  else
  {

    v27 = v16;
    v26 = *(v12 + 8);
    v26(v27, v10);
  }

  sub_2680E168C();
  if (v34)
  {
    v30 = OUTLINED_FUNCTION_9_0();
    (v26)(v30);
    type metadata accessor for SerializedDialogSelectionModel(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_2680E190C();
    OUTLINED_FUNCTION_3_1();
    sub_2680C6CDC(v28, v29, &unk_2680E3688);
    sub_2680E19FC();
    v32 = OUTLINED_FUNCTION_9_0();
    (v26)(v32);
    sub_2680C6C78(v9, v2 + OBJC_IVAR____TtC29SiriNaturalLanguageGeneration30SerializedDialogSelectionModel_model);
  }

  return v2;
}

unint64_t sub_2680C5D70(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2680E193C();
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_1_1();
  type metadata accessor for Siri_Nlg_Model(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_1();
  v31 = v7 - v6;
  OUTLINED_FUNCTION_10();
  v8 = sub_2680E167C();
  OUTLINED_FUNCTION_0_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_1();
  v14 = v13 - v12;
  if (qword_280249E70 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280249E70);
  }

  v15 = sub_2680E1B3C();
  __swift_project_value_buffer(v15, qword_28024C7A8);
  (*(v10 + 16))(v14, a1, v8);
  v16 = v10;
  v17 = sub_2680E1B1C();
  v18 = sub_2680E1DAC();
  v35 = v8;
  if (os_log_type_enabled(v17, v18))
  {
    v30 = a1;
    v19 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v33[0] = v29;
    *v19 = 136315138;
    OUTLINED_FUNCTION_2_1();
    sub_2680C6CDC(v20, v21, MEMORY[0x277CC9290]);
    v22 = v16;
    v23 = sub_2680E1F4C();
    v2 = v24;
    v25 = *(v22 + 8);
    v25(v14, v8);
    sub_2680DF818(v23, v2, v33);
    OUTLINED_FUNCTION_11();
    *(v19 + 4) = v23;
    _os_log_impl(&dword_2680BC000, v17, v18, "Loading binary file from %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    OUTLINED_FUNCTION_12();
    a1 = v30;
    OUTLINED_FUNCTION_12();
  }

  else
  {

    v25 = *(v16 + 8);
    v25(v14, v8);
  }

  sub_2680E168C();
  if (v32)
  {
    v25(a1, v35);
    type metadata accessor for SerializedDialogSelectionModel(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    sub_2680E192C();
    OUTLINED_FUNCTION_3_1();
    sub_2680C6CDC(v26, v27, &unk_2680E3688);
    sub_2680E1A1C();
    v25(a1, v35);
    sub_2680C6C78(v31, v2 + OBJC_IVAR____TtC29SiriNaturalLanguageGeneration30SerializedDialogSelectionModel_model);
  }

  return v2;
}

uint64_t sub_2680C6160()
{
  v99 = type metadata accessor for Siri_Nlg_Content(0);
  OUTLINED_FUNCTION_0_1();
  v102 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_1();
  v5 = v4 - v3;
  type metadata accessor for Siri_Nlg_Dialog(0);
  OUTLINED_FUNCTION_0_1();
  v93 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_1();
  v96 = v9 - v8;
  v10 = OUTLINED_FUNCTION_10();
  type metadata accessor for Siri_Nlg_DialogSwitch(v10);
  OUTLINED_FUNCTION_0_1();
  v82 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_1();
  v83 = v14 - v13;
  v15 = OUTLINED_FUNCTION_10();
  v79 = type metadata accessor for Siri_Nlg_CATFile(v15);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_1();
  v20 = v19 - v18;
  v98 = v0 + OBJC_IVAR____TtC29SiriNaturalLanguageGeneration30SerializedDialogSelectionModel_model;
  v21 = *(v0 + OBJC_IVAR____TtC29SiriNaturalLanguageGeneration30SerializedDialogSelectionModel_model);
  v22 = MEMORY[0x277D84F90];
  v76 = *(v21 + 16);
  if (v76)
  {
    v23 = 0;
    v24 = v21 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v95 = MEMORY[0x277D84F90];
    v97 = v5;
    v73 = v17;
    v81 = v20;
    v72 = *(v0 + OBJC_IVAR____TtC29SiriNaturalLanguageGeneration30SerializedDialogSelectionModel_model);
    v71 = v24;
    while (1)
    {
      if (v23 >= *(v21 + 16))
      {
        goto LABEL_61;
      }

      v77 = v23;
      sub_2680C6D24(v24 + *(v17 + 72) * v23, v20, type metadata accessor for Siri_Nlg_CATFile);
      v25 = v81;
      v26 = *v81;
      v78 = *(*v81 + 16);
      if (v78)
      {
        break;
      }

LABEL_53:
      sub_2680C6E30(v25, type metadata accessor for Siri_Nlg_CATFile);
      v23 = v77 + 1;
      v20 = v81;
      v17 = v73;
      v21 = v72;
      v24 = v71;
      if (v77 + 1 == v76)
      {
        return v95;
      }
    }

    v27 = 0;
    v28 = (v81 + *(v79 + 24));
    v29 = (v81 + *(v79 + 28));
    v30 = *v28;
    v31 = v28[1];
    v32 = *v29;
    v33 = v29[1];
    v34 = v26 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
    if (v31)
    {
      v35 = v30;
    }

    else
    {
      v35 = 0;
    }

    v87 = v35;
    if (v31)
    {
      v36 = v31;
    }

    else
    {
      v36 = 0xE000000000000000;
    }

    v91 = v36;
    if (!v33)
    {
      v32 = 0;
    }

    v86 = v32;
    if (v33)
    {
      v37 = v33;
    }

    else
    {
      v37 = 0xE000000000000000;
    }

    v90 = v37;
    v75 = *v81;
    v74 = v26 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
    while (1)
    {
      if (v27 >= *(v26 + 16))
      {
        goto LABEL_60;
      }

      v80 = v27;
      sub_2680C6D24(v34 + *(v82 + 72) * v27, v83, type metadata accessor for Siri_Nlg_DialogSwitch);
      v38 = OUTLINED_FUNCTION_8_0(&v108);
      if (v38)
      {
        v89 = *v39;
        v92 = v38;
      }

      else
      {
        v89 = 0;
        v92 = 0xE000000000000000;
      }

      v40 = *v83;
      v85 = *(*v83 + 16);
      if (v85)
      {
        break;
      }

LABEL_52:

      sub_2680C6E30(v83, type metadata accessor for Siri_Nlg_DialogSwitch);
      v27 = v80 + 1;
      v25 = v81;
      v26 = v75;
      v34 = v74;
      if (v80 + 1 == v78)
      {
        goto LABEL_53;
      }
    }

    OUTLINED_FUNCTION_7_0();
    v88 = v40 + v41;

    v42 = 0;
    v84 = v40;
    while (1)
    {
      if (v42 >= *(v40 + 16))
      {
        goto LABEL_59;
      }

      v94 = v42;
      sub_2680C6D24(v88 + *(v93 + 72) * v42, v96, type metadata accessor for Siri_Nlg_Dialog);
      type metadata accessor for NLGDialogBuilder();
      swift_initStackObject();
      NLGDialogBuilder.init()();
      v43 = OUTLINED_FUNCTION_8_0(&v109);
      if (v43)
      {
        v45 = *v44;
        v46 = v43;
      }

      else
      {
        v45 = 0;
        v46 = 0xE000000000000000;
      }

      sub_2680D3AB8(v45, v46);

      *&v104 = v87;
      *(&v104 + 1) = v91;
      v105 = v86;
      v106 = v90;
      v107 = v89;
      v108 = v92;
      sub_2680D3BD8(&v104);

      v103 = *v96;
      v101 = *(*v96 + 16);
      if (v101)
      {
        break;
      }

LABEL_45:
      sub_2680D3C80(&v104);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2680D4C40();
        v95 = v68;
      }

      v67 = *(v95 + 16);
      if (v67 >= *(v95 + 24) >> 1)
      {
        sub_2680D4C40();
        v95 = v69;
      }

      sub_2680C6E30(v96, type metadata accessor for Siri_Nlg_Dialog);
      *(v95 + 16) = v67 + 1;
      v42 = v94 + 1;
      sub_2680C2CD8(&v104, v95 + 40 * v67 + 32);
      v40 = v84;
      if (v94 + 1 == v85)
      {
        goto LABEL_52;
      }
    }

    v47 = 0;
    OUTLINED_FUNCTION_7_0();
    v100 = v103 + v48;
LABEL_29:
    if (v47 >= *(v103 + 16))
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      JUMPOUT(0x2680C6B08);
    }

    sub_2680C6D24(v100 + *(v102 + 72) * v47, v5, type metadata accessor for Siri_Nlg_Content);
    v49 = *v5;
    v50 = *(*v5 + 16);
    if (!v50)
    {
      v51 = v22;
      goto LABEL_38;
    }

    *&v104 = v22;
    sub_2680D7A44(0, v50, 0);
    v51 = v104;
    v52 = *(v98 + 8);
    v53 = (v49 + 32);
    while (1)
    {
      v55 = *v53++;
      v54 = v55;
      if (*(v52 + 16) <= v55)
      {
        break;
      }

      v56 = (v52 + 32 + 16 * v54);
      v22 = *v56;
      v57 = v56[1];
      *&v104 = v51;
      v59 = *(v51 + 16);
      v58 = *(v51 + 24);

      if (v59 >= v58 >> 1)
      {
        sub_2680D7A44((v58 > 1), v59 + 1, 1);
        v51 = v104;
      }

      *(v51 + 16) = v59 + 1;
      v60 = v51 + 16 * v59;
      *(v60 + 32) = v22;
      *(v60 + 40) = v57;
      if (!--v50)
      {
        v5 = v97;
        v22 = MEMORY[0x277D84F90];
LABEL_38:
        ++v47;
        *&v104 = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249F90, &unk_2680E29E0);
        sub_2680C6D84();
        sub_2680E1BAC();

        switch(*(v5 + *(v99 + 24)))
        {
          case 1:
            v61 = OUTLINED_FUNCTION_5_0();
            sub_2680D3B00(v61, v62);

            goto LABEL_44;
          case 2:
            v65 = OUTLINED_FUNCTION_5_0();
            sub_2680D3B48(v65, v66);
            goto LABEL_42;
          case 3:
            v63 = OUTLINED_FUNCTION_5_0();
            sub_2680D3B90(v63, v64);
LABEL_42:

            goto LABEL_43;
          default:
LABEL_43:

LABEL_44:
            sub_2680C6E30(v5, type metadata accessor for Siri_Nlg_Content);
            if (v47 == v101)
            {
              goto LABEL_45;
            }

            goto LABEL_29;
        }
      }
    }

    __break(1u);
  }

  return v22;
}

uint64_t sub_2680C6B1C()
{
  sub_2680C6E30(v0 + OBJC_IVAR____TtC29SiriNaturalLanguageGeneration30SerializedDialogSelectionModel_model, type metadata accessor for Siri_Nlg_Model);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SerializedDialogSelectionModel(uint64_t a1)
{
  result = qword_280249F70;
  if (!qword_280249F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2680C6BE8(uint64_t a1)
{
  result = type metadata accessor for Siri_Nlg_Model(319);
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

uint64_t sub_2680C6C78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlg_Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2680C6CDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2680C6D24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_2680C6D84()
{
  result = qword_280249F98;
  if (!qword_280249F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280249F90, &unk_2680E29E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280249F98);
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

uint64_t sub_2680C6E30(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_6_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11()
{
}

void OUTLINED_FUNCTION_12()
{

  JUMPOUT(0x26D611870);
}

uint64_t sub_2680C6FA0()
{
  v0 = sub_2680E1B3C();
  __swift_allocate_value_buffer(v0, qword_28024C7A8);
  __swift_project_value_buffer(v0, qword_28024C7A8);
  OUTLINED_FUNCTION_0_2();
  return sub_2680E1B2C();
}

uint64_t sub_2680C7000()
{
  sub_2680C7048();
  OUTLINED_FUNCTION_0_2();
  result = sub_2680E1DEC();
  qword_28024C7C0 = result;
  return result;
}

unint64_t sub_2680C7048()
{
  result = qword_280249FA0;
  if (!qword_280249FA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280249FA0);
  }

  return result;
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

uint64_t sub_2680C7118@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2680E17BC();
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v44 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v44 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v44 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v44 - v18;
  sub_2680E188C();
  if (sub_2680E187C())
  {
    sub_2680E186C();

    sub_2680E189C();

    v20 = *(v4 + 32);
    v20(v19, v17, v2);
    if (qword_280249E70 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v21 = sub_2680E1B3C();
    __swift_project_value_buffer(v21, qword_28024C7A8);
    (*(v4 + 16))(v14, v19, v2);
    v22 = sub_2680E1B1C();
    v23 = sub_2680E1DAC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v45 = v20;
      v25 = v24;
      v26 = swift_slowAlloc();
      v46 = a1;
      v47 = v26;
      v44 = v26;
      *v25 = 136315138;
      sub_2680C9138();
      v27 = sub_2680E1F4C();
      v28 = v2;
      v30 = v29;
      (*(v4 + 8))(v14, v28);
      v31 = sub_2680DF818(v27, v30, &v47);
      v2 = v28;

      *(v25 + 4) = v31;
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      a1 = v46;
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x26D611870]();
      v20 = v45;
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x26D611870]();
    }

    else
    {

      (*(v4 + 8))(v14, v2);
    }

    return (v20)(a1, v19, v2);
  }

  else
  {
    sub_2680E177C();
    if (qword_280249E70 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v32 = sub_2680E1B3C();
    __swift_project_value_buffer(v32, qword_28024C7A8);
    (*(v4 + 16))(v8, v11, v2);
    v33 = sub_2680E1B1C();
    v34 = sub_2680E1DBC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v46 = a1;
      v47 = v36;
      v37 = v36;
      *v35 = 136315138;
      sub_2680C9138();
      v38 = sub_2680E1F4C();
      v39 = v2;
      v41 = v40;
      (*(v4 + 8))(v8, v39);
      v42 = sub_2680DF818(v38, v41, &v47);
      v2 = v39;

      *(v35 + 4) = v42;
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      a1 = v46;
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x26D611870]();
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x26D611870]();
    }

    else
    {

      (*(v4 + 8))(v8, v2);
    }

    return (*(v4 + 32))(a1, v11, v2);
  }
}

uint64_t *sub_2680C75E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *v11;
  v14 = *a1;
  v13 = a1[1];
  v16 = a1[2];
  v15 = a1[3];
  v11[2] = *a1;
  v11[3] = v13;
  v11[4] = v16;
  v11[5] = v15;
  v11[6] = a2;
  v11[7] = a3;
  v11[8] = a4;
  v11[9] = a5;
  v11[10] = a6;
  v11[11] = a7;
  v11[12] = a8;
  v11[13] = a9;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = objc_opt_self();

  v19 = [v18 bundleForClass_];
  v20 = swift_allocObject();
  if (a10)
  {
    v20[2] = a10;
    v20[3] = a11;

    v21 = sub_2680C8F64;
  }

  else
  {
    v20[2] = v19;
    v20[3] = v14;
    v20[4] = v13;
    v20[5] = v16;
    v20[6] = v15;
    v20[7] = v12;
    v21 = sub_2680C8F14;
  }

  v22 = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = v20;
  v11[14] = sub_2680C8F5C;
  v11[15] = v23;
  return v11;
}

id sub_2680C776C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v10 = *a1;
  v11 = *a2;
  v13[0] = a4;
  v13[1] = a5;
  v13[2] = a6;
  v13[3] = a7;
  result = sub_2680C77C0(a3, v13, v10, v11);
  *a8 = result;
  return result;
}

id sub_2680C77C0(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v42 = a4;
  v6 = sub_2680E160C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A080, &unk_2680E2B00);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v38 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v38 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v38 - v20;
  v22 = *a2;
  v23 = a2[1];
  v24 = a2[3];
  v40 = a2[2];
  v38 = v22;
  v39 = v24;
  v43 = a1;
  v25 = [a1 resourceURL];
  if (v25)
  {
    v26 = v25;
    sub_2680E163C();

    v27 = sub_2680E167C();
    v28 = 0;
  }

  else
  {
    v27 = sub_2680E167C();
    v28 = 1;
  }

  __swift_storeEnumTagSinglePayload(v16, v28, 1, v27);
  sub_2680C8F9C(v16, v19);
  sub_2680E167C();
  if (__swift_getEnumTagSinglePayload(v19, 1, v27) == 1)
  {
    sub_2680C900C(v19);
    v29 = 1;
  }

  else
  {
    v44 = 0x6574616C706D6554;
    v45 = 0xE900000000000073;
    (*(v7 + 104))(v9, *MEMORY[0x277CC91D8], v6);
    sub_2680C90E4();
    sub_2680E166C();
    (*(v7 + 8))(v9, v6);
    (*(*(v27 - 8) + 8))(v19, v27);
    v29 = 0;
  }

  __swift_storeEnumTagSinglePayload(v21, v29, 1, v27);
  sub_2680C9074(v21, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v27) == 1)
  {
    v30 = 0;
  }

  else
  {
    v30 = sub_2680E161C();
    (*(*(v27 - 8) + 8))(v13, v27);
  }

  v31 = objc_opt_self();
  v44 = v38;
  v45 = v23;

  MEMORY[0x26D610FD0](35, 0xE100000000000000);
  MEMORY[0x26D610FD0](v40, v39);
  v32 = sub_2680E1BCC();

  sub_2680D5FA8(v41);
  v33 = sub_2680E1B4C();

  v34 = sub_2680E1B4C();
  LODWORD(v37) = 0;
  v35 = [v31 execute:v43 templateDir:v30 catId:v32 parameters:v33 globals:v34 callback:0 options:v37];

  sub_2680C900C(v21);
  return v35;
}

uint64_t sub_2680C7C0C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *, uint64_t *))
{
  v5 = a2;
  v6 = a1;
  a3(&v4, &v6, &v5);
  return v4;
}

uint64_t sub_2680C7C50@<X0>(void *x8_0@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A068, &qword_2680E2AF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2680E29F0;
  v5 = v2[6];
  v6 = v2[7];
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  v7 = v2[9];
  *(inited + 48) = v2[8];
  *(inited + 56) = v7;
  v9 = v2[10];
  v8 = v2[11];
  *(inited + 64) = v9;
  *(inited + 72) = v8;
  v10 = v2[13];
  *(inited + 80) = v2[12];
  *(inited + 88) = v10;

  v11 = sub_2680E1B7C();
  v12 = sub_2680D3420(v5, v6, v11);
  v14 = v13;
  v15 = sub_2680D3420(v9, v8, v11);
  if (!v14)
  {
    if (!v16)
    {
      goto LABEL_13;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!v16)
  {
    goto LABEL_10;
  }

  if (v12 != v15 || v14 != v16)
  {
    v18 = sub_2680E1F5C();

    if (v18)
    {
      goto LABEL_13;
    }

LABEL_11:
    v19 = sub_2680D626C(v11);

    sub_2680C7F80(v19, x8_0);
  }

LABEL_13:
  if (qword_280249E70 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v21 = sub_2680E1B3C();
  __swift_project_value_buffer(v21, qword_28024C7A8);

  v22 = sub_2680E1B1C();
  v23 = sub_2680E1DBC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v31 = v25;
    *v24 = 136315138;
    v26 = sub_2680E1B6C();
    v28 = v27;

    v29 = sub_2680DF818(v26, v28, &v31);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_2680BC000, v22, v23, "Unable to generate unambiguous dialog using %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x26D611870]();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x26D611870]();
  }

  else
  {
  }

  sub_2680C8E78();
  swift_allocError();
  *v30 = 0xD000000000000016;
  *(v30 + 8) = 0x80000002680E4C60;
  *(v30 + 16) = 0;
  return swift_willThrow();
}

void sub_2680C7F80(uint64_t a1@<X1>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A068, &qword_2680E2AF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2680E2A00;
  *(inited + 32) = 0x656C61636F6CLL;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = sub_2680E171C();
  *(inited + 56) = v6;
  v7 = sub_2680E1B7C();
  v8 = *(v2 + 112);
  v9 = sub_2680D626C(v7);

  v10 = v8(a1, v9);

  type metadata accessor for NLGDialogBuilder();
  swift_initStackObject();
  v11 = [v10 dialog];
  sub_2680C8E10();
  v12 = sub_2680E1D3C();

  if (!sub_2680C8E54(v12))
  {

    sub_2680C8E78();
    swift_allocError();
    *v23 = 0xD000000000000019;
    *(v23 + 8) = 0x80000002680E4C40;
    *(v23 + 16) = 1;
    swift_willThrow();
    goto LABEL_7;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x26D6111C0](0, v12);
    goto LABEL_5;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v12 + 32);
LABEL_5:
    v14 = v13;

    v15 = [v14 id];
    v16 = sub_2680E1BDC();
    v18 = v17;

    sub_2680D3AB8(v16, v18);

    v19 = [v14 fullPrint];
    v20 = sub_2680E1BDC();
    v22 = v21;

    sub_2680D3B00(v20, v22);

    sub_2680D3C80(a2);

LABEL_7:

    return;
  }

  __break(1u);
}

void *sub_2680C8224()
{

  return v0;
}

uint64_t sub_2680C8288()
{
  sub_2680C8224();

  return MEMORY[0x2821FE8D8](v0, 128, 7);
}

void sub_2680C82E0()
{
  qword_280249FA8 = 0x6D61736944474C4ELL;
  unk_280249FB0 = 0xEF65746175676962;
  qword_280249FB8 = 0xD000000000000021;
  unk_280249FC0 = 0x80000002680E4D10;
}

uint64_t sub_2680C8330(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 16))(v28, v10, v11);
  v12 = v29;
  v13 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v14 = (*(v13 + 8))(v12, v13);
  v26 = v15;
  v27 = v14;
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  v16 = a2[3];
  v17 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v16);
  (*(v17 + 16))(v28, v16, v17);
  v18 = v29;
  v19 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v20 = (*(v19 + 8))(v18, v19);
  v22 = v21;
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  v23 = qword_280249E80;

  if (v23 != -1)
  {
    swift_once();
  }

  v28[0] = qword_280249FA8;
  v28[1] = unk_280249FB0;
  v28[2] = qword_280249FB8;
  v29 = unk_280249FC0;
  type metadata accessor for AlternativeQuestionGenerator();
  v24 = swift_allocObject();

  sub_2680C75E4(v28, 0x7265567473726966, 0xEF65736172685062, v27, v26, 0xD000000000000010, 0x80000002680E4CF0, v20, v22, 0, 0);

  sub_2680C9190(a2);
  sub_2680C9190(a1);
  *(v5 + 32) = v24;
  return v5;
}

uint64_t sub_2680C8568()
{
  sub_2680C88D0();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void sub_2680C85E4()
{
  qword_280249FC8 = 0x6D61736944474C4ELL;
  unk_280249FD0 = 0xEF65746175676962;
  qword_280249FD8 = 0xD00000000000002BLL;
  unk_280249FE0 = 0x80000002680E4CC0;
}

void *sub_2680C8630(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = 0xE400000000000000;
  v7 = 1701670760;
  if (v5 != 1)
  {
    v7 = 0x656E6F6870;
    v6 = 0xE500000000000000;
  }

  v8 = v5 == 0;
  if (*a1)
  {
    v9 = v7;
  }

  else
  {
    v9 = 7496035;
  }

  v18 = v9;
  if (v8)
  {
    v10 = 0xE300000000000000;
  }

  else
  {
    v10 = v6;
  }

  v11 = 0xE400000000000000;
  v12 = 1701670760;
  if (*a2 != 1)
  {
    v12 = 0x656E6F6870;
    v11 = 0xE500000000000000;
  }

  if (*a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 7496035;
  }

  if (*a2)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0xE300000000000000;
  }

  v4[2] = a3;
  v4[3] = a4;
  v15 = qword_280249E88;

  if (v15 != -1)
  {
    swift_once();
  }

  v19[0] = qword_280249FC8;
  v19[1] = unk_280249FD0;
  v19[2] = qword_280249FD8;
  v19[3] = unk_280249FE0;
  type metadata accessor for AlternativeQuestionGenerator();
  v16 = swift_allocObject();

  sub_2680C75E4(v19, 0xD000000000000019, 0x80000002680E4C80, v18, v10, 0xD00000000000001ALL, 0x80000002680E4CA0, v13, v14, 0, 0);

  v4[4] = v16;
  return v4;
}

uint64_t sub_2680C87DC@<X0>(void *a1@<X8>)
{
  v3 = sub_2680E17BC();
  OUTLINED_FUNCTION_0_1();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 16))(v7);
  sub_2680C7C50(a1);
  return (*(v5 + 8))(v9, v3);
}

uint64_t sub_2680C88D0()
{

  return v0;
}

uint64_t sub_2680C8924(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2680C89A4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 16) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_2680C8B5C(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 16) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 < a2)
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        return;
      case 2:
        *&a1[v11] = v17;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        return;
      default:
        return;
    }
  }

  switch(v15)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x2680C8DA8);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if ((v8 & 0x80000000) != 0)
        {
          v21 = &a1[v10 + 16] & ~v10;

          __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *a1 = a2 & 0x7FFFFFFF;
          *(a1 + 1) = 0;
        }

        else
        {
          *(a1 + 1) = (a2 - 1);
        }
      }

      return;
  }
}

unint64_t sub_2680C8E10()
{
  result = qword_28024A070;
  if (!qword_28024A070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28024A070);
  }

  return result;
}

uint64_t sub_2680C8E54(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

unint64_t sub_2680C8E78()
{
  result = qword_28024A078;
  if (!qword_28024A078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024A078);
  }

  return result;
}

uint64_t sub_2680C8ECC()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2680C8F24()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2680C8F64@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(v3 + 16))(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_2680C8F9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A080, &unk_2680E2B00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2680C900C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A080, &unk_2680E2B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2680C9074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A080, &unk_2680E2B00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2680C90E4()
{
  result = qword_28024A088;
  if (!qword_28024A088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024A088);
  }

  return result;
}

unint64_t sub_2680C9138()
{
  result = qword_28024A090;
  if (!qword_28024A090)
  {
    sub_2680E17BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024A090);
  }

  return result;
}

unint64_t sub_2680C925C(uint64_t a1, unint64_t a2)
{
  v49[0] = 46;
  v48 = v49;

  v6 = sub_2680D1F00(0x7FFFFFFFFFFFFFFFLL, 1, sub_2680CA7CC, v47, a1, a2);
  v7 = v6;
  if (v6[2] != 3 || !((v6[5] ^ v6[4]) >> 14))
  {
    goto LABEL_13;
  }

  v8 = OUTLINED_FUNCTION_1_3();
  v13 = sub_2680CA2B4(v8, v9, v10, v11, v12);
  if ((v14 & 0x100) != 0)
  {

    v15 = OUTLINED_FUNCTION_1_3();
    v3 = sub_2680C9894(v15, v16, v17, v18, v19);
    v21 = v20;

    if (v21)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v14)
    {
      goto LABEL_13;
    }

    v3 = v13;
  }

  if (v7[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (!((v7[9] ^ v7[8]) >> 14))
  {
LABEL_13:

    goto LABEL_14;
  }

  v22 = OUTLINED_FUNCTION_0_3();
  v27 = sub_2680CA2B4(v22, v23, v24, v25, v26);
  v49[3] = v2;
  if ((v28 & 0x100) == 0)
  {
    if ((v28 & 1) == 0)
    {
      v29 = v27;
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v30 = OUTLINED_FUNCTION_0_3();
  v29 = sub_2680C9894(v30, v31, v32, v33, v34);
  v36 = v35;

  if (v36)
  {
    goto LABEL_13;
  }

LABEL_16:
  if (v7[2] < 3uLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_13;
  }

  v39 = v7[12];
  v40 = v7[13];
  v42 = v7[14];
  v41 = v7[15];

  if (!((v40 ^ v39) >> 14))
  {
    goto LABEL_13;
  }

  v43 = sub_2680CA2B4(v39, v40, v42, v41, 10);
  if ((v44 & 0x100) != 0)
  {
    v43 = sub_2680C9894(v39, v40, v42, v41, 10);
  }

  v45 = v43;
  v46 = v44;

  if ((v46 & 1) == 0 && (v3 & 0x8000000000000000) == 0 && (v29 & 0x8000000000000000) == 0 && (v45 & 0x8000000000000000) == 0)
  {

    return v3;
  }

LABEL_14:
  sub_2680CA7EC();
  swift_allocError();
  *v37 = a1;
  v37[1] = a2;
  swift_willThrow();
  return v3;
}

uint64_t sub_2680C94A4()
{
  v3 = OUTLINED_FUNCTION_2_2();
  MEMORY[0x26D610FD0](46, 0xE100000000000000);
  v0 = OUTLINED_FUNCTION_2_2();
  MEMORY[0x26D610FD0](v0);

  MEMORY[0x26D610FD0](46, 0xE100000000000000);
  v1 = OUTLINED_FUNCTION_2_2();
  MEMORY[0x26D610FD0](v1);

  return v3;
}

uint64_t sub_2680C9564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 < a4)
  {
    return OUTLINED_FUNCTION_4_2();
  }

  if (a1 == a4 && (a2 < a5 || (a2 == a5 ? (v8 = __OFSUB__(a3, a6), v7 = a3 - a6 < 0) : (v8 = 0, v7 = 0), v7 ^ v8)))
  {
    return OUTLINED_FUNCTION_4_2();
  }

  else
  {
    return OUTLINED_FUNCTION_3_2();
  }
}

BOOL sub_2680C95CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = 0;
  if (a4 >= a1)
  {
    if (a4 != a1)
    {
      return 1;
    }

    if (a5 >= a2 && (a5 != a2 || a6 >= a3))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2680C9610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 < a4)
  {
    return OUTLINED_FUNCTION_3_2();
  }

  if (a1 == a4 && (a2 < a5 || (a2 == a5 ? (v8 = __OFSUB__(a3, a6), v7 = a3 - a6 < 0) : (v8 = 0, v7 = 0), v7 ^ v8)))
  {
    return OUTLINED_FUNCTION_3_2();
  }

  else
  {
    return OUTLINED_FUNCTION_4_2();
  }
}

uint64_t sub_2680C964C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 < a1)
  {
    return OUTLINED_FUNCTION_4_2();
  }

  if (a4 == a1 && (a5 < a2 || (a5 == a2 ? (v8 = __OFSUB__(a6, a3), v7 = a6 - a3 < 0) : (v8 = 0, v7 = 0), v7 ^ v8)))
  {
    return OUTLINED_FUNCTION_4_2();
  }

  else
  {
    return OUTLINED_FUNCTION_3_2();
  }
}

unint64_t sub_2680C96AC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_5_1();
  sub_2680E201C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    OUTLINED_FUNCTION_5_1();
    v4 = sub_2680E1F6C();
    v6 = v5;
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    v1 = sub_2680C925C(v4, v6);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

unint64_t sub_2680C978C@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_2680C96AC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_2680C97C0()
{
  result = qword_28024A098;
  if (!qword_28024A098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024A098);
  }

  return result;
}

void *sub_2680C9824(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A0B0, &qword_2680E4350);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unsigned __int8 *sub_2680C9894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_2680CA840();

  result = sub_2680E1D0C();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_2680C9E28(result, v7);
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2680E1E8C();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v22 = v10 - 1;
        if (v10 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v16 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v16 * a5;
              if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v16 = v29 + (v27 + v28);
              if (__OFADD__(v29, (v27 + v28)))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v20 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v33 = 0;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 != (v33 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if (__OFADD__(v36, (v34 + v35)))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36 + (v34 + v35);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v16 * a5;
            if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v16 = v21 - (v18 + v19);
            if (__OFSUB__(v21, (v18 + v19)))
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_127:

        return v20;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v9) & 0xF;
  v64 = v8;
  v65 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v64;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if (__OFADD__(v63, (v61 + v62)))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v64 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if (__OFSUB__(v48, (v46 + v47)))
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v41 = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v64 + 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if (__OFADD__(v56, (v54 + v55)))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_2680C9E28(uint64_t a1, unint64_t a2)
{
  v2 = sub_2680C9E94(sub_2680C9E90, 0, a1, a2);
  v6 = sub_2680C9EC8(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_2680C9EC8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_2680E1DFC();
    if (!v9 || (v10 = v9, v11 = sub_2680C9824(v9, 0), v12 = sub_2680CA028(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_2680E1C5C();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2680E1C5C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_2680E1E8C();
LABEL_4:

  return sub_2680E1C5C();
}

unint64_t sub_2680CA028(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_2680CA238(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2680E1CDC();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2680E1E8C();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_2680CA238(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_2680E1CAC();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_2680CA238(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2680E1CEC();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26D611000](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_2680CA2B4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = sub_2680E1E8C();
  }

  result = sub_2680CA390(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_2680CA390(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_2680CA238(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = sub_2680E1CCC();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_2680CA238(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_2680CA238(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_2680E1CCC();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

unint64_t sub_2680CA7EC()
{
  result = qword_28024A0A0;
  if (!qword_28024A0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024A0A0);
  }

  return result;
}

unint64_t sub_2680CA840()
{
  result = qword_28024A0A8;
  if (!qword_28024A0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024A0A8);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2680CA8A0(uint64_t a1, int a2)
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

uint64_t sub_2680CA8E0(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SemanticVersion(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SemanticVersion(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_2()
{

  return sub_2680E1F4C();
}

uint64_t static NLGUtteranceProvider.currentUtterance.getter()
{
  sub_2680E188C();
  if (!sub_2680E187C())
  {
    if (qword_280249E70 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280249E70);
    }

    v7 = sub_2680E1B3C();
    __swift_project_value_buffer(v7, qword_28024C7A8);
    v8 = sub_2680E1B1C();
    v9 = sub_2680E1DBC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_2_3();
      *v10 = 0;
      _os_log_impl(&dword_2680BC000, v8, v9, "No current request", v10, 2u);
      OUTLINED_FUNCTION_12();
    }

    return 0;
  }

  sub_2680E185C();

  v0 = sub_2680E18CC();
  if (!v1)
  {
    v11 = sub_2680E18BC();
    if (v11)
    {
      v12 = v11;
      v13 = [v11 recognition];
      if (v13)
      {
        v14 = v13;
        v15 = sub_2680CAD9C(v13);
        if (v16)
        {
          v2 = v15;
          if (qword_280249E70 != -1)
          {
            OUTLINED_FUNCTION_6_0(&qword_280249E70);
          }

          v17 = sub_2680E1B3C();
          __swift_project_value_buffer(v17, qword_28024C7A8);
          v18 = sub_2680E1B1C();
          v19 = sub_2680E1DAC();
          if (OUTLINED_FUNCTION_4_3(v19))
          {
            v20 = OUTLINED_FUNCTION_2_3();
            *v20 = 0;
            _os_log_impl(&dword_2680BC000, v18, v19, "Returning speech transcript from current request", v20, 2u);
            OUTLINED_FUNCTION_12();
          }

          goto LABEL_8;
        }
      }

      if (qword_280249E70 != -1)
      {
        OUTLINED_FUNCTION_6_0(&qword_280249E70);
      }

      v26 = sub_2680E1B3C();
      __swift_project_value_buffer(v26, qword_28024C7A8);
      v27 = sub_2680E1B1C();
      v28 = sub_2680E1DBC();
      if (OUTLINED_FUNCTION_4_3(v28))
      {
        *OUTLINED_FUNCTION_2_3() = 0;
        OUTLINED_FUNCTION_3_3(&dword_2680BC000, v29, v30, "No speech recognition transcript");
        OUTLINED_FUNCTION_12();
      }
    }

    else
    {
      if (qword_280249E70 != -1)
      {
        OUTLINED_FUNCTION_6_0(&qword_280249E70);
      }

      v21 = sub_2680E1B3C();
      __swift_project_value_buffer(v21, qword_28024C7A8);
      v22 = sub_2680E1B1C();
      v23 = sub_2680E1DBC();
      if (OUTLINED_FUNCTION_4_3(v23))
      {
        *OUTLINED_FUNCTION_2_3() = 0;
        OUTLINED_FUNCTION_3_3(&dword_2680BC000, v24, v25, "No speech package");
        OUTLINED_FUNCTION_12();
      }
    }

    return 0;
  }

  v2 = v0;
  if (qword_280249E70 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280249E70);
  }

  v3 = sub_2680E1B3C();
  __swift_project_value_buffer(v3, qword_28024C7A8);
  v4 = sub_2680E1B1C();
  v5 = sub_2680E1DAC();
  if (OUTLINED_FUNCTION_4_3(v5))
  {
    v6 = OUTLINED_FUNCTION_2_3();
    *v6 = 0;
    _os_log_impl(&dword_2680BC000, v4, v5, "Returning utterance from current request", v6, 2u);
    OUTLINED_FUNCTION_12();
  }

LABEL_8:

  return v2;
}

uint64_t sub_2680CAD9C(void *a1)
{
  v1 = [a1 oneBestTranscript];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2680E1BDC();

  return v3;
}

uint64_t getEnumTagSinglePayload for NLGUtteranceProvider(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for NLGUtteranceProvider(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x2680CAEF0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_3()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_3_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL OUTLINED_FUNCTION_4_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_2680CAF8C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_16();
  }

  sub_2680E18FC();
  OUTLINED_FUNCTION_22();
  if (*(v6 + 84) == a2)
  {
    v7 = *(a3 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A0B8, qword_2680E2CD0);
    v7 = *(a3 + 28);
  }

  v8 = OUTLINED_FUNCTION_20(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_2680CB060()
{
  OUTLINED_FUNCTION_23();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    sub_2680E18FC();
    OUTLINED_FUNCTION_22();
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A0B8, qword_2680E2CD0);
      v8 = *(v5 + 28);
    }

    v9 = OUTLINED_FUNCTION_20(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

void sub_2680CB140(uint64_t a1)
{
  sub_2680CB298(319, &qword_28024A0D0, type metadata accessor for Siri_Nlg_CATFile, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2680CBBFC(319, &qword_28024A0D8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_2680E18FC();
      if (v3 <= 0x3F)
      {
        sub_2680CB298(319, &qword_28024A0E0, type metadata accessor for Siri_Nlg_Capabilities, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2680CB298(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2680CB344(uint64_t a1)
{
  sub_2680CB298(319, &qword_28024A0F8, type metadata accessor for Siri_Nlg_DialogSwitch, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2680E18FC();
    if (v2 <= 0x3F)
    {
      sub_2680CBBFC(319, &qword_28024A100, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2680CB4A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_2680CB298(319, a4, a5, MEMORY[0x277D83940]);
  if (v5 <= 0x3F)
  {
    sub_2680E18FC();
    if (v6 <= 0x3F)
    {
      sub_2680CBBFC(319, &qword_28024A100, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2680CB608(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_16();
  }

  sub_2680E18FC();
  v5 = OUTLINED_FUNCTION_20(*(a3 + 20));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void __swift_store_extra_inhabitant_index_9Tm()
{
  OUTLINED_FUNCTION_23();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_2680E18FC();
    v5 = OUTLINED_FUNCTION_20(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

void sub_2680CB74C(uint64_t a1)
{
  sub_2680CBBFC(319, &qword_28024A148, MEMORY[0x277D84CC0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2680E18FC();
    if (v2 <= 0x3F)
    {
      sub_2680CBBFC(319, &qword_28024A150, &type metadata for Siri_Nlg_ContentType, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for Siri_Nlg_ContentType(unsigned __int8 *a1, unsigned int a2)
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
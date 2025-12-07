uint64_t sub_2279EF59C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_227A724BC();

  *a2 = v3;
  return result;
}

uint64_t sub_2279EF5E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2279EF610(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2279EF614(uint64_t a1)
{
  v2 = sub_2279F2038(&qword_27D7DC740, type metadata accessor for NLLanguage, &unk_227AA095C);
  v3 = sub_2279F2038(&qword_27D7DC748, type metadata accessor for NLLanguage, &unk_227AA08FC);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2279EF6D0(uint64_t a1)
{
  v1 = sub_227A724EC();
  v2 = MEMORY[0x22AA9FEA0](v1);

  return v2;
}

uint64_t sub_2279EF708(uint64_t a1, uint64_t a2)
{
  sub_227A724EC();
  sub_227A7255C();
}

uint64_t sub_2279EF75C(uint64_t a1, uint64_t a2)
{
  sub_227A724EC();
  sub_227A72F2C();
  sub_227A7255C();
  v2 = sub_227A72F4C();

  return v2;
}

uint64_t sub_2279EF7F4()
{
  sub_227A720EC();
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_2279EF86C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_227A72F2C();
  sub_227A7255C();
  v6 = sub_227A72F4C();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_227A72E5C() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_227A22A38();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_2279EFBDC(v8);
  *v2 = v15;
  return v13;
}

uint64_t sub_2279EF994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_227A720EC();
  OUTLINED_FUNCTION_92();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v2;
  v10 = *v2;
  OUTLINED_FUNCTION_2_1();
  sub_2279F2038(v11, v12, MEMORY[0x277CCB250]);
  v30 = a1;
  v13 = sub_227A7244C();
  v29 = v10;
  v14 = ~(-1 << *(v10 + 32));
  while (1)
  {
    v15 = v13 & v14;
    if (((*(v10 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
    {
      v19 = 1;
      v20 = v28;
      return __swift_storeEnumTagSinglePayload(v20, v19, 1, v4);
    }

    v16 = *(v6 + 72) * v15;
    (*(v6 + 16))(v9, *(v29 + 48) + v16, v4);
    OUTLINED_FUNCTION_2_1();
    sub_2279F2038(&qword_27D7DC5C8, v17, MEMORY[0x277CCB258]);
    v18 = sub_227A7248C();
    (*(v6 + 8))(v9, v4);
    if (v18)
    {
      break;
    }

    v13 = v15 + 1;
  }

  v21 = v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v21;
  v31 = *v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_227A22F70();
    v23 = v31;
  }

  v24 = *(v23 + 48) + v16;
  v20 = v28;
  (*(v6 + 32))(v28, v24, v4);
  sub_2279EFD94(v15);
  v19 = 0;
  *v21 = v31;
  return __swift_storeEnumTagSinglePayload(v20, v19, 1, v4);
}

unint64_t sub_2279EFBDC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_227A72A1C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_227A72F2C();

        sub_227A7255C();
        v10 = sub_227A72F4C();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

void sub_2279EFD94(int64_t a1)
{
  v3 = sub_227A720EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_227A72A1C();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v36 = (v12 + 1) & v11;
      v14 = *(v4 + 16);
      v13 = v4 + 16;
      v35 = v14;
      v15 = *(v13 + 56);
      v37 = v13;
      v38 = v15;
      v16 = v11;
      v17 = (v13 - 8);
      v18 = v7;
      while (1)
      {
        v19 = v8;
        v20 = v38 * v10;
        v21 = v16;
        v35(v6, *(v18 + 48) + v38 * v10, v3);
        v22 = v18;
        sub_2279F2038(&qword_27D7DC560, MEMORY[0x277CCB248], MEMORY[0x277CCB250]);
        v23 = sub_227A7244C();
        (*v17)(v6, v3);
        v16 = v21;
        v24 = v23 & v21;
        if (a1 >= v36)
        {
          if (v24 < v36 || a1 < v24)
          {
LABEL_20:
            v18 = v22;
            goto LABEL_24;
          }
        }

        else if (v24 < v36 && a1 < v24)
        {
          goto LABEL_20;
        }

        v18 = v22;
        v26 = *(v22 + 48);
        v27 = v38 * a1;
        v28 = v26 + v38 * a1;
        v29 = v26 + v20 + v38;
        if (v38 * a1 < v20 || v28 >= v29)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v16 = v21;
          a1 = v10;
          goto LABEL_24;
        }

        a1 = v10;
        if (v27 != v20)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v10 = (v10 + 1) & v16;
        v8 = v19;
        if (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v18 = v7;
LABEL_28:
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v18 = v7;
  }

  v32 = *(v18 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v34;
    ++*(v18 + 36);
  }
}

uint64_t sub_2279F00A0(uint64_t a1, uint64_t a2)
{
  v56[2] = *MEMORY[0x277D85DE8];
  v40 = 0;
  v4 = sub_227A720EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v51 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  MEMORY[0x28223BE20](v10);
  v48 = &v39 - v11;
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v56[0] = a1;
  v12 = *(a1 + 16);
  v50 = (a2 + 56);
  v54 = (v5 + 8);
  v55 = v5 + 16;

  v13 = 0;
  v42 = v12;
  v43 = v5;
LABEL_3:
  if (v13 == v12)
  {
LABEL_24:

    return a2;
  }

  v14 = *(v5 + 72);
  v46 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v49 = v13 + 1;
  v56[1] = v13 + 1;
  v52 = *(v5 + 16);
  v53 = v14;
  v52(v48, v46 + v14 * v13, v4);
  v45 = sub_2279F2038(&qword_27D7DC560, MEMORY[0x277CCB248], MEMORY[0x277CCB250]);
  v15 = sub_227A7244C();
  v47 = ~(-1 << *(a2 + 32));
  while (1)
  {
    v16 = v15 & v47;
    v17 = (v15 & v47) >> 6;
    v18 = 1 << (v15 & v47);
    if ((v18 & v50[v17]) == 0)
    {
      (*v54)(v48, v4);
      v13 = v49;
      v12 = v42;
      v5 = v43;
      goto LABEL_3;
    }

    v52(v9, *(a2 + 48) + v16 * v53, v4);
    sub_2279F2038(&qword_27D7DC5C8, MEMORY[0x277CCB248], MEMORY[0x277CCB258]);
    v19 = sub_227A7248C();
    v20 = *v54;
    (*v54)(v9, v4);
    if (v19)
    {
      break;
    }

    v15 = v16 + 1;
  }

  v21 = (v20)(v48, v4);
  v22 = *(a2 + 32);
  v41 = ((1 << v22) + 63) >> 6;
  v23 = 8 * v41;
  if ((v22 & 0x3Fu) > 0xD)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v42 = &v39;
    MEMORY[0x28223BE20](v21);
    v16 = &v39 - ((v23 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v16, v50, v23);
    v24 = *(a2 + 16);
    *(v16 + 8 * v17) &= ~v18;
    v25 = v24 - 1;
    v26 = *(a1 + 16);
    v47 = v16;
    v48 = v26;
    v27 = v49;
    v44 = a1;
    while (1)
    {
      v43 = v25;
      v28 = v27;
LABEL_12:
      if (v28 == v48)
      {
        sub_227A58C8C(v47, v41);
        a2 = v33;
        goto LABEL_24;
      }

      if (v28 >= *(a1 + 16))
      {
        break;
      }

      v49 = v28 + 1;
      v23 = v51;
      v52(v51, v46 + v28 * v53, v4);
      v29 = sub_227A7244C();
      v30 = a2;
      v18 = ~(-1 << *(a2 + 32));
      do
      {
        v31 = v29 & v18;
        v17 = (v29 & v18) >> 6;
        v16 = 1 << (v29 & v18);
        if ((v16 & v50[v17]) == 0)
        {
          v20(v51, v4);
          v28 = v49;
          a2 = v30;
          a1 = v44;
          goto LABEL_12;
        }

        v52(v9, *(v30 + 48) + v31 * v53, v4);
        v23 = sub_227A7248C();
        v20(v9, v4);
        v29 = v31 + 1;
      }

      while ((v23 & 1) == 0);
      v20(v51, v4);
      v32 = *(v47 + 8 * v17);
      *(v47 + 8 * v17) = v32 & ~v16;
      v27 = v49;
      v28 = v49;
      a2 = v30;
      a1 = v44;
      if ((v32 & v16) == 0)
      {
        goto LABEL_12;
      }

      v25 = v43 - 1;
      if (__OFSUB__(v43, 1))
      {
        __break(1u);
      }

      if (v43 == 1)
      {

        a2 = MEMORY[0x277D84FA0];
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v35 = swift_slowAlloc();
  v36 = v40;
  v37 = sub_2279F16D0(v35, v41, v50, v41, a2, v16, v56);
  if (!v36)
  {
    v38 = v37;

    MEMORY[0x22AAA1930](v35, -1, -1);
    a2 = v38;
    goto LABEL_24;
  }

  result = MEMORY[0x22AAA1930](v35, -1, -1);
  __break(1u);
  return result;
}

void sub_2279F06B8(unint64_t a1, char *a2)
{
  v96 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5C0, &qword_227AA0538);
  v5 = OUTLINED_FUNCTION_149(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v72 - v9;
  v11 = sub_227A720EC();
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v12);
  v91 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v72 - v15;
  MEMORY[0x28223BE20](v17);
  v88 = &v72 - v19;
  if (*(a2 + 2))
  {
    v78 = v7;
    v73 = 0;
    v21 = a1 + 56;
    v20 = *(a1 + 56);
    v22 = -1 << *(a1 + 32);
    v82 = ~v22;
    if (-v22 < 64)
    {
      v23 = ~(-1 << -v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & v20;
    v79 = (63 - v22) >> 6;
    v81 = (v18 + 32);
    v89 = a2 + 56;
    v86 = v18;
    v92 = v18 + 16;
    v93 = (v18 + 8);
    v83 = a1;

    v25 = 0;
    v80 = a1 + 56;
    v75 = v10;
LABEL_6:
    v26 = v24;
    v27 = v25;
    v90 = v25;
    if (v24)
    {
LABEL_12:
      a1 = (v26 - 1) & v26;
      v30 = v83;
      (*(v86 + 16))(v10, *(v83 + 48) + *(v86 + 72) * (__clz(__rbit64(v26)) | (v27 << 6)), v11);
      v31 = 0;
      v28 = v10;
      v29 = v27;
LABEL_13:
      __swift_storeEnumTagSinglePayload(v28, v31, 1, v11);
      v94 = v30;
      v95 = v21;
      OUTLINED_FUNCTION_169();
      if (v32)
      {
        goto LABEL_46;
      }

      v77 = *v81;
      v77(v88, v28, v11);
      OUTLINED_FUNCTION_2_1();
      v76 = sub_2279F2038(&qword_27D7DC560, v33, MEMORY[0x277CCB250]);
      v34 = sub_227A7244C();
      v87 = ~(-1 << a2[32]);
      while (1)
      {
        v21 = v34 & v87;
        if (((1 << (v34 & v87)) & v89[(v34 & v87) >> 6]) == 0)
        {
          (*v93)(v88, v11);
          v25 = v29;
          v24 = a1;
          v21 = v80;
          v10 = v75;
          goto LABEL_6;
        }

        v84 = 1 << v21;
        v85 = v21 >> 6;
        v27 = a2;
        v35 = *(a2 + 6);
        v36 = v86;
        v90 = *(v86 + 72);
        v37 = *(v86 + 16);
        v37(v16, v35 + v90 * v21, v11);
        OUTLINED_FUNCTION_2_1();
        v39 = sub_2279F2038(&qword_27D7DC5C8, v38, MEMORY[0x277CCB258]);
        v40 = sub_227A7248C();
        a2 = *(v36 + 8);
        (a2)(v16, v11);
        if (v40)
        {
          break;
        }

        v34 = v21 + 1;
        a2 = v27;
      }

      v86 = v37;
      v87 = v39;
      v41 = (a2)(v88, v11);
      v42 = *(v27 + 32);
      v74 = ((1 << v42) + 63) >> 6;
      v24 = 8 * v74;
      if ((v42 & 0x3Fu) <= 0xD)
      {
LABEL_21:
        v88 = a2;
        v75 = &v72;
        MEMORY[0x28223BE20](v41);
        v43 = &v72 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
        memcpy(v43, v89, v24);
        v44 = *&v43[8 * v85] & ~v84;
        v45 = *(v27 + 16);
        v84 = v43;
        *&v43[8 * v85] = v44;
        v46 = v45 - 1;
        v28 = v78;
        v47 = v80;
        v48 = v79;
        v49 = v83;
        v50 = v27;
        v51 = v86;
        while (1)
        {
          v85 = v46;
LABEL_23:
          if (!a1)
          {
            break;
          }

          v52 = v29;
LABEL_29:
          v53 = __clz(__rbit64(a1));
          v54 = (a1 - 1) & a1;
          v51(v28, *(v49 + 48) + (v53 | (v52 << 6)) * v90, v11);
          v55 = 0;
LABEL_30:
          __swift_storeEnumTagSinglePayload(v28, v55, 1, v11);
          v94 = v49;
          v95 = v47;
          OUTLINED_FUNCTION_169();
          if (v32)
          {
            sub_2279F3774(v28, &qword_27D7DC5C0, &qword_227AA0538);
            sub_227A58C8C(v84, v74);
            goto LABEL_42;
          }

          v86 = v54;
          v56 = v51;
          v57 = OUTLINED_FUNCTION_115();
          (v77)(v57);
          v58 = sub_227A7244C();
          v59 = v50;
          v60 = ~(-1 << *(v50 + 32));
          do
          {
            v61 = v58 & v60;
            v62 = (v58 & v60) >> 6;
            v63 = 1 << (v58 & v60);
            if ((v63 & v89[v62]) == 0)
            {
              OUTLINED_FUNCTION_140();
              v68();
              v50 = v59;
              v49 = v83;
              v28 = v78;
              v47 = v80;
              v48 = v79;
              v51 = v56;
              a1 = v86;
              goto LABEL_23;
            }

            v56(v16, *(v59 + 48) + v61 * v90, v11);
            v64 = sub_227A7248C();
            OUTLINED_FUNCTION_140();
            v65();
            v58 = v61 + 1;
          }

          while ((v64 & 1) == 0);
          OUTLINED_FUNCTION_140();
          v66();
          v67 = *(v84 + 8 * v62);
          *(v84 + 8 * v62) = v67 & ~v63;
          v32 = (v67 & v63) == 0;
          v50 = v59;
          v49 = v83;
          v28 = v78;
          v47 = v80;
          v48 = v79;
          v51 = v56;
          a1 = v86;
          if (v32)
          {
            goto LABEL_23;
          }

          v46 = v85 - 1;
          if (__OFSUB__(v85, 1))
          {
            __break(1u);
          }

          if (v85 == 1)
          {

            goto LABEL_42;
          }
        }

        while (1)
        {
          v52 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            break;
          }

          if (v52 >= v48)
          {
            v54 = 0;
            v55 = 1;
            goto LABEL_30;
          }

          a1 = *(v47 + 8 * v52);
          ++v29;
          if (a1)
          {
            v29 = v52;
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_46:
        sub_2279F3774(v28, &qword_27D7DC5C0, &qword_227AA0538);
        v69 = v83;
LABEL_43:
        sub_2279F34F8(v69);
        return;
      }
    }

    else
    {
      v28 = v10;
      v29 = v25;
      while (1)
      {
        v27 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v27 >= v79)
        {
          a1 = 0;
          v31 = 1;
          v30 = v83;
          goto LABEL_13;
        }

        v26 = *(v21 + 8 * v27);
        ++v29;
        if (v26)
        {
          v10 = v28;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    if (swift_stdlib_isStackAllocationSafe())
    {

      goto LABEL_21;
    }

    v70 = swift_slowAlloc();
    v71 = v73;
    sub_2279F1758(v70, v74, v89, v74, v27, v21, &v94);
    if (!v71)
    {

      OUTLINED_FUNCTION_103();
LABEL_42:
      v69 = v94;
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_103();
    __break(1u);
  }

  else
  {
  }
}

void sub_2279F0F38(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v35 = a2;
  v9 = sub_227A720EC();
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v45 = &v34 - v14;
  v15 = *(a3 + 16);
  v16 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v17 = *(a1 + v16) & ((-1 << a4) - 1);
  v37 = a1;
  v38 = v18;
  *(a1 + v16) = v17;
  v19 = v15 - 1;
  v43 = v18 + 16;
  v44 = a3;
  v39 = a5;
  v40 = a3 + 56;
  v20 = (v18 + 8);
  while (1)
  {
    v36 = v19;
LABEL_3:
    v21 = *a5;
    v22 = a5[1];
    v23 = *(*a5 + 16);
    if (v22 == v23)
    {

      sub_227A58C8C(v37, v35);
      return;
    }

    if (v22 >= v23)
    {
      break;
    }

    v24 = *(v38 + 80);
    v42 = *(v38 + 72);
    v41 = *(v38 + 16);
    v41(v45, v21 + ((v24 + 32) & ~v24) + v42 * v22, v9, v13);
    a5[1] = v22 + 1;
    v25 = v44;
    sub_2279F2038(&qword_27D7DC560, MEMORY[0x277CCB248], MEMORY[0x277CCB250]);
    v26 = sub_227A7244C();
    v27 = ~(-1 << *(v25 + 32));
    do
    {
      v28 = v26 & v27;
      v29 = (v26 & v27) >> 6;
      v30 = 1 << (v26 & v27);
      if ((v30 & *(v40 + 8 * v29)) == 0)
      {
        (*v20)(v45, v9);
        a5 = v39;
        goto LABEL_3;
      }

      (v41)(v11, *(v44 + 48) + v28 * v42, v9);
      sub_2279F2038(&qword_27D7DC5C8, MEMORY[0x277CCB248], MEMORY[0x277CCB258]);
      v31 = sub_227A7248C();
      v32 = *v20;
      (*v20)(v11, v9);
      v26 = v28 + 1;
    }

    while ((v31 & 1) == 0);
    v32(v45, v9);
    v33 = *(v37 + 8 * v29);
    *(v37 + 8 * v29) = v33 & ~v30;
    a5 = v39;
    if ((v33 & v30) == 0)
    {
      goto LABEL_3;
    }

    v19 = v36 - 1;
    if (__OFSUB__(v36, 1))
    {
      goto LABEL_16;
    }

    if (v36 == 1)
    {
      return;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_2279F1280(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v38 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5C0, &qword_227AA0538);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38 - v10;
  v12 = sub_227A720EC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v49 = &v38 - v18;
  v19 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v20 = v19 - 1;
  v40 = a1;
  v41 = (v13 + 32);
  v45 = a3 + 56;
  v46 = v13 + 16;
  v47 = (v13 + 8);
  v48 = a3;
  v42 = v11;
  v43 = a5;
  while (1)
  {
    v39 = v20;
LABEL_3:
    v22 = *a5;
    v21 = a5[1];
    v23 = a5[2];
    v24 = a5[3];
    v25 = a5[4];
    v44 = v23;
    if (!v25)
    {
      break;
    }

    v26 = v24;
LABEL_9:
    v27 = (v25 - 1) & v25;
    (*(v13 + 16))(v11, *(v22 + 48) + *(v13 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v12, v17);
    v28 = 0;
LABEL_10:
    __swift_storeEnumTagSinglePayload(v11, v28, 1, v12);
    *a5 = v22;
    a5[1] = v21;
    a5[2] = v44;
    a5[3] = v24;
    a5[4] = v27;
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      sub_2279F3774(v11, &qword_27D7DC5C0, &qword_227AA0538);

      sub_227A58C8C(v40, v38);
      return;
    }

    (*v41)(v49, v11, v12);
    v29 = v48;
    sub_2279F2038(&qword_27D7DC560, MEMORY[0x277CCB248], MEMORY[0x277CCB250]);
    v30 = sub_227A7244C();
    v31 = ~(-1 << *(v29 + 32));
    do
    {
      v32 = v30 & v31;
      v33 = (v30 & v31) >> 6;
      v34 = 1 << (v30 & v31);
      if ((v34 & *(v45 + 8 * v33)) == 0)
      {
        (*v47)(v49, v12);
        v11 = v42;
        a5 = v43;
        goto LABEL_3;
      }

      (*(v13 + 16))(v15, *(v48 + 48) + *(v13 + 72) * v32, v12);
      sub_2279F2038(&qword_27D7DC5C8, MEMORY[0x277CCB248], MEMORY[0x277CCB258]);
      v35 = sub_227A7248C();
      v36 = *(v13 + 8);
      v36(v15, v12);
      v30 = v32 + 1;
    }

    while ((v35 & 1) == 0);
    v36(v49, v12);
    v37 = *(v40 + 8 * v33);
    *(v40 + 8 * v33) = v37 & ~v34;
    v11 = v42;
    a5 = v43;
    if ((v37 & v34) == 0)
    {
      goto LABEL_3;
    }

    v20 = v39 - 1;
    if (__OFSUB__(v39, 1))
    {
      goto LABEL_23;
    }

    if (v39 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= ((v23 + 64) >> 6))
    {
      v27 = 0;
      v28 = 1;
      goto LABEL_10;
    }

    v25 = *(v21 + 8 * v26);
    ++v24;
    if (v25)
    {
      v24 = v26;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_2279F16D0(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_2279F0F38(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_2279F1758(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_2279F1280(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

void sub_2279F17E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_227A7240C();

  [a4 postNotificationName:a1 object:a2 userInfo:v7];
}

uint64_t sub_2279F187C(void *a1)
{
  v2 = [a1 icons];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_227A7241C();

  return v3;
}

id sub_2279F18F4(uint64_t a1, uint64_t a2, char a3, _BYTE *a4)
{
  v22 = type metadata accessor for DefaultGKGroupActivityManagerSupport();
  v23 = &off_283AF9AB0;
  v21[0] = a1;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_groupSession + a4;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v8 = OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_messenger + a4;
  *(v8 + 4) = 0;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *&a4[OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_previousMatchRequest] = 0;
  *&a4[OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_groupSessionStateAndMessagesObserver] = 0;
  *&a4[OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_cachedDevicePushToken] = xmmword_227AA0100;
  a4[OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_hasRequestedToJoin] = 0;
  sub_2279F4B58(v21, &a4[OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_managerSupport]);
  swift_unknownObjectWeakAssign();
  type metadata accessor for GroupActivityInviteesManager();
  v9 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v9 + 112) = MEMORY[0x277D84FA0];
  *&a4[OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_inviteesManager] = v9;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  *&a4[OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_groupSessionEligibilityObserver] = sub_2279E35B0();
  v20.receiver = a4;
  v20.super_class = type metadata accessor for GKGroupActivityManager();
  v10 = objc_msgSendSuper2(&v20, sel_init);
  if (a3)
  {
    v11 = [objc_opt_self() defaultCenter];
    v12 = [objc_opt_self() willTerminate];
    v13 = [objc_opt_self() mainQueue];
    v14 = swift_allocObject();
    *(v14 + 16) = v10;
    aBlock[4] = sub_2279F4BBC;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2279E42A0;
    aBlock[3] = &block_descriptor_214;
    v15 = _Block_copy(aBlock);
    v16 = v10;

    v17 = [v11 addObserverForName:v12 object:0 queue:v13 usingBlock:v15];
    swift_unknownObjectRelease();
    _Block_release(v15);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v21);
  return v10;
}

id sub_2279F1BC0(uint64_t a1, uint64_t a2, char a3)
{
  v16 = type metadata accessor for DefaultGKGroupActivityManagerSupport();
  v17 = &off_283AF9AB0;
  v15[0] = a1;
  v6 = objc_allocWithZone(type metadata accessor for GKGroupActivityManager());
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (&v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10, v8);
  v12 = sub_2279F18F4(*v10, a2, a3, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(v15);
  return v12;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2279F1D24(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_2279F1D74()
{
  result = qword_280B550A8;
  if (!qword_280B550A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B550A8);
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

uint64_t sub_2279F1E10()
{
  OUTLINED_FUNCTION_31();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_52(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_76_0(v1);
  v3 = OUTLINED_FUNCTION_86();

  return sub_2279E59B0(v3, v4);
}

uint64_t sub_2279F1E9C(uint64_t a1)
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_91_0();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_24(v1);
  *v2 = v3;
  v2[1] = sub_2279F50E8;
  OUTLINED_FUNCTION_161();

  return v8(v4, v5, v6, v7, v8, v9, v10, v11);
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

uint64_t sub_2279F1FEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_177(a1, a2, a3, a4);
  OUTLINED_FUNCTION_51();
  v5 = OUTLINED_FUNCTION_86();
  v6(v5);
  return v4;
}

uint64_t sub_2279F2038(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2279F20A4(uint64_t a1)
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_60();
  v14 = v1 + 8;
  v15 = *(v1 + 8) + **(v1 + 8);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_52(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_76_0(v3);
  OUTLINED_FUNCTION_105();

  return v10(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15);
}

uint64_t sub_2279F22E0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_91_0();
  v6 = (*(v0 + 24) + **(v0 + 24));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_52(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_53(v2);

  return v6(v4);
}

uint64_t sub_2279F23E0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_86();

  return v4(v3);
}

uint64_t sub_2279F24D0(uint64_t a1)
{
  OUTLINED_FUNCTION_60();
  v7 = (*(v1 + 32) + **(v1 + 32));
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_52(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_76_0(v3);
  v5 = OUTLINED_FUNCTION_82();

  return v7(v5);
}

uint64_t sub_2279F25F0()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  OUTLINED_FUNCTION_36();
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t dispatch thunk of GKGroupActivityManager.activate(game:)()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x160);
  v8 = (v3 + *v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_52(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_76_0(v5);

  return v8(v2);
}

uint64_t dispatch thunk of GKGroupActivityManager.end()()
{
  OUTLINED_FUNCTION_42();
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x180);
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_52(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_76_0(v3);

  return v6();
}

uint64_t dispatch thunk of GKGroupActivityManager.leave()()
{
  OUTLINED_FUNCTION_42();
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x188);
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_52(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_76_0(v3);

  return v6();
}

uint64_t dispatch thunk of GKGroupActivityManager.reset()()
{
  OUTLINED_FUNCTION_42();
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x190);
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_52(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_76_0(v3);

  return v6();
}

uint64_t dispatch thunk of GKGroupActivityManager.playerDisconnect(player:)()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x1A0);
  v8 = (v3 + *v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_52(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_76_0(v5);

  return v8(v2);
}

uint64_t sub_2279F3044(uint64_t a1)
{
  result = sub_2279F2038(&qword_27D7DC5B0, type metadata accessor for DefaultGKGroupActivitySession, &unk_227AA047C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2279F30C4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_111();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_24(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5(v3);

  return sub_2279E45A0(v5, v6, v7, v1);
}

uint64_t sub_2279F3158()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_52(v0);
  *v1 = v2;
  v1[1] = sub_2279F50E8;
  v3 = OUTLINED_FUNCTION_87();

  return v4(v3);
}

uint64_t sub_2279F3200()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_52(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_49(v1);

  return v4(v3);
}

uint64_t sub_2279F3290()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_52(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_49(v1);

  return v4(v3);
}

uint64_t objectdestroy_99Tm()
{
  _Block_release(*(v0 + 16));

  v1 = OUTLINED_FUNCTION_135();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_2279F3358()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_52(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_49(v1);

  return v4(v3);
}

uint64_t objectdestroy_94Tm()
{
  _Block_release(*(v0 + 24));

  v1 = OUTLINED_FUNCTION_95();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_2279F3428()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_52(v0);
  *v1 = v2;
  v1[1] = sub_2279F50E8;
  v3 = OUTLINED_FUNCTION_87();

  return v4(v3);
}

uint64_t sub_2279F3500(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_177(a1, a2, a3, a4);
  OUTLINED_FUNCTION_51();
  v5 = OUTLINED_FUNCTION_86();
  v6(v5);
  return v4;
}

uint64_t sub_2279F354C(uint64_t a1)
{
  v2 = type metadata accessor for GKGroupActivityMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2279F35A8()
{
  result = qword_27D7DC5D0;
  if (!qword_27D7DC5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DC5D0);
  }

  return result;
}

uint64_t sub_2279F35FC()
{
  OUTLINED_FUNCTION_91_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5F0, &qword_227AA0568);
  OUTLINED_FUNCTION_149(v0);
  v1 = OUTLINED_FUNCTION_75();

  return sub_2279E1CD0(v1, v2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2279F3694(uint64_t a1)
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_111();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_24(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_5(v2);
  OUTLINED_FUNCTION_161();

  return sub_2279E2B78(v4, v5, v6, v7, v8);
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

uint64_t sub_2279F3774(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_51();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2279F37CC(uint64_t a1, uint64_t a2)
{
  v2[35] = a2;
  v4 = sub_227A71C6C();
  v2[36] = v4;
  v2[37] = *(v4 - 8);
  v2[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  v2[39] = swift_task_alloc();
  v5 = type metadata accessor for DefaultGKGroupActivitySession();
  v2[40] = v5;
  v2[12] = v5;
  v2[13] = sub_2279F2038(&qword_27D7DC608, type metadata accessor for DefaultGKGroupActivitySession, &unk_227AA04A4);
  v2[9] = a1;

  return MEMORY[0x2822009F8](sub_2279F3920, 0, 0);
}

uint64_t sub_2279F3920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_90();
  v15 = *(v14 + 320);
  sub_227A7289C();
  OUTLINED_FUNCTION_16_0();
  sub_227A72B1C();

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_19((v14 + 72), v15);
  v16 = sub_227A71F9C();
  MEMORY[0x22AA9FE40](v16);

  if (qword_280B54DB0 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_280B54DB0);
  }

  v17 = sub_227A7227C();
  v18 = __swift_project_value_buffer(v17, qword_280B54DB8);

  sub_227A7226C();
  OUTLINED_FUNCTION_129();
  if (OUTLINED_FUNCTION_143())
  {
    v19 = OUTLINED_FUNCTION_106();
    OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_173();
    *v19 = 136315138;
    v20 = OUTLINED_FUNCTION_82();
    sub_227A46730(v20, v21, v22);
    OUTLINED_FUNCTION_133();
    *(v19 + 4) = 0xD000000000000029;
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_180(v23, v24, v25, v26);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_37();
  }

  else
  {
  }

  v27 = *(v14 + 280);
  sub_2279F4B58(v14 + 72, v14 + 112);
  v28 = OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_groupSession;
  OUTLINED_FUNCTION_125(OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_groupSession + v27, v14 + 232);
  sub_2279F1FEC(v14 + 112, v28 + v27, &qword_27D7DC540, &unk_227AA0158);
  swift_endAccess();
  OUTLINED_FUNCTION_134((v14 + 72), *(v14 + 96));
  sub_2279E05F0((v14 + 152));
  sub_2279F4B58(v14 + 152, v14 + 192);
  v29 = OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_messenger;
  OUTLINED_FUNCTION_125(OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_messenger + v27, v14 + 256);
  sub_2279F1FEC(v14 + 192, v29 + v27, &qword_27D7DC550, &qword_227AA0170);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC618, &qword_227AA05A0);
  v30 = swift_allocObject();
  *(v30 + 1) = xmmword_227AA00E0;
  OUTLINED_FUNCTION_168((v14 + 72), *(v14 + 96));
  OUTLINED_FUNCTION_110();
  v31 = swift_allocObject();
  *(v31 + 16) = v27;
  v32 = v27;
  v33 = sub_2279E0E5C(&unk_227AA05B0, v31, &unk_283AF9E50, &unk_227AA06B0);

  *(v30 + 4) = v33;
  OUTLINED_FUNCTION_168((v14 + 72), *(v14 + 96));
  OUTLINED_FUNCTION_110();
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  v35 = v32;
  v36 = sub_2279E0E5C(&unk_227AA05C0, v34, &unk_283AF9E28, &unk_227AA0680);

  *(v30 + 5) = v36;
  OUTLINED_FUNCTION_168((v14 + 152), *(v14 + 176));
  OUTLINED_FUNCTION_110();
  v37 = swift_allocObject();
  *(v37 + 16) = v35;
  v38 = v35;
  v39 = sub_2279DECC0(&unk_227AA05D0, v37);

  sub_227A36E5C(v39);
  sub_227A7276C();
  v40 = OUTLINED_FUNCTION_171();
  __swift_storeEnumTagSinglePayload(v40, v41, 1, v42);
  v43 = swift_allocObject();
  v43[2] = 0;
  v43[3] = 0;
  v43[4] = v30;
  v44 = OUTLINED_FUNCTION_170();
  *&v38[OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_groupSessionStateAndMessagesObserver] = sub_227A2EC1C(v44, v45, v46, v47, v48);

  v49 = sub_227A7289C();
  v50 = OUTLINED_FUNCTION_151(v49);
  if (OUTLINED_FUNCTION_127(v50))
  {
    OUTLINED_FUNCTION_94();
    v97 = OUTLINED_FUNCTION_100();
    *v30 = 136315138;
    OUTLINED_FUNCTION_167();
    *(v30 + 4) = sub_227A46730(v51, v52, v53);
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_154(v54, v55, v56, v57);
    __swift_destroy_boxed_opaque_existential_0Tm(v97);
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_38();
  }

  OUTLINED_FUNCTION_134((v14 + 72), *(v14 + 96));
  sub_2279DFD8C(v14 + 16);
  sub_2279F1F98(v14 + 16);
  v58 = *(v14 + 48);
  sub_227A7289C();
  switch(v58)
  {
    case 1:
      v81 = sub_227A7226C();
      if (OUTLINED_FUNCTION_127(v81))
      {
        OUTLINED_FUNCTION_45();
        OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_101();
        *v18 = 136315138;
        *(v18 + 1) = OUTLINED_FUNCTION_156(0xD00000000000003ELL, v82);
        OUTLINED_FUNCTION_35(&dword_227904000, v83, v84, "SharePlay - %s");
        OUTLINED_FUNCTION_11_0();
        OUTLINED_FUNCTION_78();
      }

      v85 = swift_task_alloc();
      *(v14 + 328) = v85;
      *v85 = v14;
      OUTLINED_FUNCTION_137(v85);
      goto LABEL_20;
    case 2:
      v71 = sub_227A7226C();
      if (OUTLINED_FUNCTION_127(v71))
      {
        OUTLINED_FUNCTION_45();
        OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_101();
        *v18 = 136315138;
        *(v18 + 1) = OUTLINED_FUNCTION_156(0xD000000000000042, v72);
        OUTLINED_FUNCTION_35(&dword_227904000, v73, v74, "SharePlay - %s");
        OUTLINED_FUNCTION_11_0();
        OUTLINED_FUNCTION_78();
      }

      v75 = swift_task_alloc();
      *(v14 + 336) = v75;
      *v75 = v14;
      OUTLINED_FUNCTION_137(v75);
      goto LABEL_20;
    case 3:
      v76 = sub_227A7226C();
      if (OUTLINED_FUNCTION_127(v76))
      {
        OUTLINED_FUNCTION_45();
        OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_101();
        *v18 = 136315138;
        *(v18 + 1) = OUTLINED_FUNCTION_156(0xD000000000000043, v77);
        OUTLINED_FUNCTION_35(&dword_227904000, v78, v79, "SharePlay - %s");
        OUTLINED_FUNCTION_11_0();
        OUTLINED_FUNCTION_78();
      }

      v80 = swift_task_alloc();
      *(v14 + 344) = v80;
      *v80 = v14;
      OUTLINED_FUNCTION_137(v80);
LABEL_20:
      OUTLINED_FUNCTION_65_0();

      result = sub_2279EC590(v86);
      break;
    default:
      OUTLINED_FUNCTION_16_0();
      sub_227A72B1C();

      OUTLINED_FUNCTION_85();
      v98 = v59;
      OUTLINED_FUNCTION_19((v14 + 72), *(v14 + 96));
      sub_227A71FDC();
      OUTLINED_FUNCTION_0_12();
      v62 = sub_2279F2038(v60, v61, MEMORY[0x277CC9628]);
      v63 = OUTLINED_FUNCTION_112(v62);
      MEMORY[0x22AA9FE40](v63);

      v64 = OUTLINED_FUNCTION_93();
      v65(v64);

      sub_227A7226C();
      OUTLINED_FUNCTION_129();
      if (OUTLINED_FUNCTION_143())
      {
        OUTLINED_FUNCTION_106();
        OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_114();
        *v18 = 136315138;
        v66 = OUTLINED_FUNCTION_82();
        sub_227A46730(v66, v67, v68);
        OUTLINED_FUNCTION_133();
        *(v18 + 1) = 0xD000000000000021;
        OUTLINED_FUNCTION_35(&dword_227904000, v69, v70, "SharePlay - %s");
        OUTLINED_FUNCTION_10_0();
        OUTLINED_FUNCTION_78();
      }

      else
      {
      }

      OUTLINED_FUNCTION_134((v14 + 72), *(v14 + 96));
      sub_2279E00A8();
      OUTLINED_FUNCTION_182();

      OUTLINED_FUNCTION_41();
      OUTLINED_FUNCTION_65_0();

      result = v90(v89, v90, v91, v92, v93, v94, v95, v96, a9, 0xD000000000000021, v98, a12, a13, a14);
      break;
  }

  return result;
}

uint64_t sub_2279F40FC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_47();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2279F41E0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_182();

  OUTLINED_FUNCTION_41();

  return v0();
}

uint64_t sub_2279F423C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_47();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2279F4320()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_47();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2279F4404()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_91_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_52(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_53(v1);

  return sub_2279EA40C(v3, v4);
}

uint64_t sub_2279F4498()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_91_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_52(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_53(v1);

  return sub_2279EAD04(v3, v4);
}

uint64_t sub_2279F452C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_91_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_52(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_53(v1);

  return sub_2279EB3BC(v3, v4);
}

uint64_t sub_2279F45C0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_111();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_24(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5(v3);

  return sub_2279EBECC(v5, v6, v7, v1);
}

uint64_t sub_2279F4654()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_24(v4);
  *v5 = v6;
  v5[1] = sub_2279F50E8;

  return sub_2279EC11C(v2, v3);
}

uint64_t sub_2279F46F0(uint64_t a1)
{
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_54();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_24(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_5(v2);
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_175();

  return sub_2279DEE74(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2279F4780(uint64_t a1)
{
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_54();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_24(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_5(v2);
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_175();

  return sub_2279DF598(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2279F4810(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GKGroupActivityMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2279F487C(uint64_t a1)
{
  OUTLINED_FUNCTION_91_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC650, &unk_227AA0660);
  OUTLINED_FUNCTION_149(v1);
  v2 = OUTLINED_FUNCTION_75();

  return sub_2279E2480(v2, v3, v4, v5);
}

uint64_t sub_2279F4900(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2279F495C()
{
  result = qword_27D7DC660;
  if (!qword_27D7DC660)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7DC660);
  }

  return result;
}

uint64_t sub_2279F49A0(uint64_t a1)
{
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_54();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_24(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_5(v2);
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_175();

  return sub_2279E0658(v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_164Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2279F4A78(uint64_t a1)
{
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_54();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_24(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_5(v2);
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_175();

  return sub_2279E0F48(v4, v5, v6, v7, v8, v9);
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

uint64_t sub_2279F4B58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroy_153Tm(uint64_t (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));
  v3 = OUTLINED_FUNCTION_95();

  return MEMORY[0x2821FE8E8](v3);
}

uint64_t sub_2279F4C28()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_111();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_24(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5(v3);

  return sub_2279E3690(v5, v6, v7, v1);
}

uint64_t sub_2279F4CBC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t getEnumTagSinglePayload for GKGroupActivityMessengerErrors(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for GKGroupActivityMessengerErrors(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_2279F4E1C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2279F4E3C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

unint64_t sub_2279F4FEC()
{
  result = qword_27D7DC730;
  if (!qword_27D7DC730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DC730);
  }

  return result;
}

uint64_t sub_2279F5088(uint64_t a1)
{
  sub_227A724EC();
  v1 = sub_227A724BC();

  return v1;
}

void OUTLINED_FUNCTION_10_0()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x22AAA1930);
}

void OUTLINED_FUNCTION_11_0()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x22AAA1930);
}

uint64_t OUTLINED_FUNCTION_14_0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CCB198];

  return sub_2279F4CBC(a1, a2, a3, v4);
}

void OUTLINED_FUNCTION_21(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_25(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_26()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x22AAA1930);
}

uint64_t OUTLINED_FUNCTION_27(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CBCEC8];

  return sub_2279F4CBC(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_28(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CCB218];

  return sub_2279F4CBC(a1, a2, a3, v4);
}

unint64_t OUTLINED_FUNCTION_30(float a1, ...)
{
  va_start(va, a1);
  *v3 = a1;

  return sub_227A46730(v2, v1, va);
}

uint64_t OUTLINED_FUNCTION_33()
{
  *(v1 + 536) = *(v2 + 8);
  *(v1 + 544) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

void OUTLINED_FUNCTION_35(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

void OUTLINED_FUNCTION_37()
{

  JUMPOUT(0x22AAA1930);
}

void OUTLINED_FUNCTION_38()
{

  JUMPOUT(0x22AAA1930);
}

void OUTLINED_FUNCTION_39()
{

  JUMPOUT(0x22AAA1930);
}

void OUTLINED_FUNCTION_40(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_43()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_44()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_45()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_46()
{

  JUMPOUT(0x22AAA1930);
}

void OUTLINED_FUNCTION_61()
{

  JUMPOUT(0x22AA9FE40);
}

uint64_t OUTLINED_FUNCTION_69(uint64_t a1)
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_71()
{
  *(v0 + 208) = 0;
  result = 0.0;
  *(v0 + 192) = 0u;
  *(v0 + 176) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_77()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_78()
{

  JUMPOUT(0x22AAA1930);
}

uint64_t OUTLINED_FUNCTION_83()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_94()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_96()
{

  JUMPOUT(0x22AA9FE40);
}

uint64_t OUTLINED_FUNCTION_97()
{
}

uint64_t OUTLINED_FUNCTION_100()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_103()
{

  JUMPOUT(0x22AAA1930);
}

uint64_t OUTLINED_FUNCTION_112(uint64_t a1)
{

  return sub_227A72E1C();
}

uint64_t OUTLINED_FUNCTION_113()
{
  *(v0 + 168) = 0;
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;

  return swift_beginAccess();
}

BOOL OUTLINED_FUNCTION_116()
{

  return os_log_type_enabled(v1, v0);
}

unint64_t OUTLINED_FUNCTION_118(float a1, ...)
{
  va_start(va, a1);
  *v2 = a1;

  return sub_227A46730(v3, v1, va);
}

unint64_t OUTLINED_FUNCTION_119(float a1, ...)
{
  va_start(va, a1);
  *v1 = a1;

  return sub_227A46730(v3 + 67, v2 | 0x8000000000000000, va);
}

void OUTLINED_FUNCTION_120()
{

  JUMPOUT(0x22AA9FE40);
}

uint64_t OUTLINED_FUNCTION_121()
{
  *(v0 + 320) = 0;
  *(v0 + 328) = 0;
  *(v0 + 336) = 1;

  return MEMORY[0x2822008D8]();
}

uint64_t OUTLINED_FUNCTION_122()
{

  return MEMORY[0x282200630]();
}

void OUTLINED_FUNCTION_123()
{

  JUMPOUT(0x22AA9FBC0);
}

uint64_t OUTLINED_FUNCTION_125(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_126(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

BOOL OUTLINED_FUNCTION_127(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

BOOL OUTLINED_FUNCTION_128(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

uint64_t OUTLINED_FUNCTION_129()
{
}

uint64_t OUTLINED_FUNCTION_130()
{
}

uint64_t OUTLINED_FUNCTION_131()
{
}

uint64_t OUTLINED_FUNCTION_133()
{
}

uint64_t OUTLINED_FUNCTION_142()
{
  v4 = (v2 + *(v0 + 28));
  v6 = *v4;
  v5 = v4[1];

  return sub_2279EDF10(v6, v5, v1);
}

BOOL OUTLINED_FUNCTION_143()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_151(uint64_t a1)
{

  return sub_227A7226C();
}

uint64_t OUTLINED_FUNCTION_152(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_154(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_155(uint64_t a1)
{

  return sub_227A72E5C();
}

unint64_t OUTLINED_FUNCTION_156(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_227A46730(a1, v2 | 0x8000000000000000, va);
}

uint64_t OUTLINED_FUNCTION_157(uint64_t a1)
{

  return sub_227A7283C();
}

uint64_t OUTLINED_FUNCTION_158()
{

  return sub_227A722CC();
}

uint64_t OUTLINED_FUNCTION_159(uint64_t a1)
{

  return MEMORY[0x28211FCC8](v1, v1, v2, a1);
}

uint64_t OUTLINED_FUNCTION_160(uint64_t a1)
{

  return sub_227A72E1C();
}

uint64_t OUTLINED_FUNCTION_164()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_169()
{
  *(v4 - 120) = *(v4 - 240);
  *(v4 - 112) = v3;
  *(v4 - 104) = v1;
  return __swift_getEnumTagSinglePayload(v0, 1, v2);
}

void OUTLINED_FUNCTION_176(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_177(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void OUTLINED_FUNCTION_180(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_181(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2279F1FEC(v5, v4 + v6, a3, a4);
}

uint64_t OUTLINED_FUNCTION_182()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 152));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 72));
}

uint64_t sub_2279F6194()
{
  sub_227A71D0C();
  type metadata accessor for GKTextModerator();
  sub_2279F8C54(&qword_27D7DC7C8, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  v0 = sub_227A7243C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC7D0, &qword_227AA0B68);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_27D7DC758 = result;
  return result;
}

char *sub_2279F6244()
{
  result = sub_2279F6264();
  qword_27D7DC760 = result;
  return result;
}

char *sub_2279F6264()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC778, &qword_227AA0B00);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v20 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC788, &qword_227AA0B38);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for LexiconTextModerator(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v12 = sub_227A71D0C();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v12);
  sub_2279F6574(v2, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2279F3774(v5, &qword_27D7DC788, &qword_227AA0B38);
    if (qword_280B551E0 != -1)
    {
      swift_once();
    }

    v13 = sub_227A7227C();
    __swift_project_value_buffer(v13, qword_280B551E8);
    v14 = sub_227A7226C();
    v15 = sub_227A728BC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_227904000, v14, v15, "Locale-agnostic text moderation is unavailable.", v16, 2u);
      MEMORY[0x22AAA1930](v16, -1, -1);
    }

    if (qword_27D7DBFF8 != -1)
    {
      swift_once();
    }

    v17 = qword_27D7DC768;

    return v17;
  }

  else
  {
    sub_2279F8D54(v5, v11, type metadata accessor for LexiconTextModerator);
    sub_2279F8C9C(v11, v8, type metadata accessor for LexiconTextModerator);
    v19 = sub_2279F8A7C(v8, type metadata accessor for LexiconTextModerator, &off_283AFA130, type metadata accessor for LexiconTextModerator);
    sub_2279F8CFC(v11, type metadata accessor for LexiconTextModerator);
    return v19;
  }
}

uint64_t sub_2279F6574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC790, &unk_227AA0B40);
  OUTLINED_FUNCTION_149(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = &v49 - v5;
  sub_227A71CEC();
  OUTLINED_FUNCTION_92();
  v53 = v8;
  v54 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_2();
  v11 = v10 - v9;
  v55 = sub_227A71C9C();
  OUTLINED_FUNCTION_92();
  v50 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_2();
  v49 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC778, &qword_227AA0B00);
  v17 = OUTLINED_FUNCTION_149(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_2();
  v52 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v49 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v49 - v23;
  v25 = sub_227A71D0C();
  OUTLINED_FUNCTION_92();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_2();
  v51 = v29;
  MEMORY[0x28223BE20](v30);
  v56 = &v49 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v49 - v33;
  v60 = type metadata accessor for LexiconTextModerator(0);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1_2();
  v59 = v37 - v36;
  sub_2279F8B40(a1, v37 - v36, &qword_27D7DC778, &qword_227AA0B00);
  v58 = a1;
  sub_2279F8B40(a1, v24, &qword_27D7DC778, &qword_227AA0B00);
  if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
  {
    sub_2279F3774(v24, &qword_27D7DC778, &qword_227AA0B00);
    v38 = 0;
    v40 = v59;
    v39 = v60;
  }

  else
  {
    (*(v27 + 32))(v34, v24, v25);
    sub_227A71CFC();
    sub_227A71CDC();
    (*(v53 + 8))(v11, v54);
    v41 = v55;
    v42 = v27;
    if (__swift_getEnumTagSinglePayload(v6, 1, v55) == 1)
    {
      sub_2279F3774(v58, &qword_27D7DC778, &qword_227AA0B00);
      (*(v27 + 8))(v34, v25);
      sub_2279F3774(v6, &qword_27D7DC790, &unk_227AA0B40);
      sub_2279F3774(v59, &qword_27D7DC778, &qword_227AA0B00);
      return __swift_storeEnumTagSinglePayload(v57, 1, 1, v60);
    }

    v44 = v49;
    v43 = v50;
    (*(v50 + 32))(v49, v6, v41);
    sub_227A71C8C();
    v38 = sub_227A724BC();

    (*(v43 + 8))(v44, v41);
    (*(v42 + 8))(v34, v25);
    v40 = v59;
    v39 = v60;
  }

  *(v40 + *(v39 + 24)) = v38;
  v45 = v58;
  sub_2279F8B40(v58, v21, &qword_27D7DC778, &qword_227AA0B00);
  v46 = sub_2279F7FF4(v21);
  sub_2279F3774(v45, &qword_27D7DC778, &qword_227AA0B00);
  *(v40 + *(v39 + 20)) = v46;
  v47 = v57;
  sub_2279F8C9C(v40, v57, type metadata accessor for LexiconTextModerator);
  __swift_storeEnumTagSinglePayload(v47, 0, 1, v39);
  return sub_2279F8CFC(v40, type metadata accessor for LexiconTextModerator);
}

uint64_t sub_2279F6EF0()
{
  v0 = type metadata accessor for NullTextModerator(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v9 - v4;
  v6 = sub_227A71D0C();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  sub_2279F8C9C(v5, v2, type metadata accessor for NullTextModerator);
  v7 = sub_2279F8A7C(v2, type metadata accessor for NullTextModerator, &off_283AFA148, type metadata accessor for NullTextModerator);
  result = sub_2279F8CFC(v5, type metadata accessor for NullTextModerator);
  qword_27D7DC768 = v7;
  return result;
}

id sub_2279F6FFC()
{
  v1 = &v0[OBJC_IVAR___GKTextModerator_implementation];
  v1[3] = type metadata accessor for NullTextModerator(0);
  v1[4] = &off_283AFA148;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v3 = sub_227A71D0C();
  __swift_storeEnumTagSinglePayload(boxed_opaque_existential_1, 1, 1, v3);
  v5.receiver = v0;
  v5.super_class = GKTextModerator;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t GKTextModerator.locale.getter()
{
  v1 = (v0 + OBJC_IVAR___GKTextModerator_implementation);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9_1();
  (*(v4 + 16))(v1);
  (*(v3 + 8))(v2, v3);
  return (*(v4 + 8))(v1, v2);
}

Swift::Bool __swiftcall GKTextModerator.shouldFilter(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = OBJC_IVAR___GKTextModerator_implementation;
  swift_beginAccess();
  sub_2279F4B58(v1 + v4, v8);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  LOBYTE(object) = (*(v6 + 16))(countAndFlagsBits, object, v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return object & 1;
}

id static GKTextModerator.localeAgnostic.getter()
{
  if (qword_27D7DBFF0 != -1)
  {
    swift_once();
  }

  v1 = qword_27D7DC760;

  return v1;
}

id static GKTextModerator.default.getter()
{
  v1 = sub_227A71D0C();
  OUTLINED_FUNCTION_92();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_9_1();
  v5 = objc_opt_self();
  sub_227A71CCC();
  v6 = sub_227A71CAC();
  (*(v3 + 8))(v0, v1);
  v7 = [v5 forLocale_];

  return v7;
}

BOOL static GKTextModerator.isAvailable()()
{
  v1 = sub_227A71D0C();
  OUTLINED_FUNCTION_92();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_2();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC778, &qword_227AA0B00);
  OUTLINED_FUNCTION_149(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_1();
  v10 = [objc_opt_self() defaultTextModerator];
  v11 = [v10 locale];

  if (v11)
  {
    sub_227A71CBC();

    (*(v3 + 32))(v0, v7, v1);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v0, v12, 1, v1);
  sub_2279F3774(v0, &qword_27D7DC778, &qword_227AA0B00);
  return v11 != 0;
}

BOOL static GKTextModerator.isAvailable(locale:)()
{
  v0 = sub_227A71D0C();
  OUTLINED_FUNCTION_92();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_2();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC778, &qword_227AA0B00);
  OUTLINED_FUNCTION_149(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  v11 = objc_opt_self();
  v12 = sub_227A71CAC();
  v13 = [v11 forLocale_];

  v14 = [v13 locale];
  if (v14)
  {
    sub_227A71CBC();

    (*(v2 + 32))(v10, v6, v0);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  __swift_storeEnumTagSinglePayload(v10, v15, 1, v0);
  sub_2279F3774(v10, &qword_27D7DC778, &qword_227AA0B00);
  return v14 != 0;
}

char *static GKTextModerator.for (locale:)(uint64_t a1)
{
  if (qword_27D7DBFE8 != -1)
  {
    a1 = swift_once();
  }

  v1 = qword_27D7DC758;
  MEMORY[0x28223BE20](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_2279F7D88((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

void sub_2279F7A48(void *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v28 = a3;
  v5 = type metadata accessor for LexiconTextModerator(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC778, &qword_227AA0B00);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC788, &qword_227AA0B38);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - v18;
  v20 = *a1;
  if (*(*a1 + 16) && (v21 = sub_2279FDB38(), (v22 & 1) != 0))
  {
    v23 = *(*(v20 + 56) + 8 * v21);
    *v28 = v23;
    v24 = v23;
  }

  else
  {
    v25 = sub_227A71D0C();
    (*(*(v25 - 8) + 16))(v13, a2, v25);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v25);
    sub_2279F6574(v13, v19);
    sub_2279F8B40(v19, v16, &qword_27D7DC788, &qword_227AA0B38);
    if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
    {
      sub_2279F3774(v19, &qword_27D7DC788, &qword_227AA0B38);
      v26 = [objc_opt_self() localeAgnosticTextModerator];
    }

    else
    {
      sub_2279F8D54(v16, v10, type metadata accessor for LexiconTextModerator);
      sub_2279F8C9C(v10, v7, type metadata accessor for LexiconTextModerator);
      v26 = sub_2279F8A7C(v7, type metadata accessor for LexiconTextModerator, &off_283AFA130, type metadata accessor for LexiconTextModerator);
      sub_2279F8CFC(v10, type metadata accessor for LexiconTextModerator);
      sub_2279F3774(v19, &qword_27D7DC788, &qword_227AA0B38);
    }

    v27 = v26;
    swift_isUniquelyReferenced_nonNull_native();
    v29 = *a1;
    sub_227A62254(v27);
    *a1 = v29;
    *v28 = v27;
  }
}

unint64_t type metadata accessor for GKTextModerator()
{
  result = qword_27D7DC780;
  if (!qword_27D7DC780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7DC780);
  }

  return result;
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

uint64_t sub_2279F7FBC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_DWORD *sub_2279F7FF4(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC778, &qword_227AA0B00);
  OUTLINED_FUNCTION_149(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  v7 = sub_227A71D0C();
  OUTLINED_FUNCTION_92();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_9_1();
  v23 = 0;
  sub_2279F8B40(a1, v6, &qword_27D7DC778, &qword_227AA0B00);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_2279F3774(v6, &qword_27D7DC778, &qword_227AA0B00);
    sub_227A7243C();
    v11 = sub_227A7240C();
  }

  else
  {
    (*(v9 + 32))(v1, v6, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC7B0, &qword_227AA0B58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227AA00F0;
    v22 = a1;
    v13 = *MEMORY[0x277D23168];
    *(inited + 32) = *MEMORY[0x277D23168];
    sub_227A71C7C();
    v14 = v13;
    v15 = sub_227A724BC();

    *(inited + 40) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC7B8, &qword_227AA0B60);
    type metadata accessor for CFString(0);
    sub_2279F8BA0();
    sub_227A7243C();
    a1 = v22;
    v11 = sub_227A7240C();

    (*(v9 + 8))(v1, v7);
  }

  result = LXLexiconCreate();
  if (result)
  {
    v17 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC7A8, &qword_227AA0B50);
    v18 = swift_allocObject();
    v18[6] = 0;
    *(v18 + 2) = v17;

    sub_2279F3774(a1, &qword_27D7DC778, &qword_227AA0B00);
    return v18;
  }

  v18 = v23;
  if (v23)
  {
    type metadata accessor for CFError(0);
    sub_2279F8C54(&qword_27D7DC7A0, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
    swift_allocError();
    *v19 = v18;
    swift_willThrow();
    v20 = v18;

    sub_2279F3774(a1, &qword_27D7DC778, &qword_227AA0B00);
    return v18;
  }

  __break(1u);
  return result;
}

BOOL sub_2279F83CC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for LexiconTextModerator(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = swift_allocObject();
  *(v8 + 16) = 1;
  sub_2279F8C9C(v2, &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LexiconTextModerator);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_2279F8D54(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for LexiconTextModerator);
  *(v10 + ((v7 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;

  sub_2279F86B0(a1, a2);

  swift_beginAccess();
  LOBYTE(a2) = *(v8 + 16);

  return (a2 & 1) == 0;
}

uint64_t sub_2279F8570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 + *(type metadata accessor for LexiconTextModerator(0) + 20));
  MEMORY[0x22AA9FE00](a1, a2, a3, a4);

  os_unfair_lock_lock((v11 + 24));
  sub_2279F908C((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));

  swift_beginAccess();
  return *(a6 + 16);
}

BOOL sub_2279F8660(uint64_t a1, uint64_t a2)
{
  v3 = (LXEntryGetMetaFlags() & 0x1800000) == 0;
  swift_beginAccess();
  *(a2 + 16) = v3;
  return v3;
}

void sub_2279F86B0(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CD89E0]) initWithUnit_];
  if (*(v2 + *(type metadata accessor for LexiconTextModerator(0) + 24)))
  {
    [v5 setLanguage_];
  }

  sub_2279F8A24(a1, a2, v5);
  MEMORY[0x28223BE20](v6);
  sub_227A7287C();
}

uint64_t sub_2279F87BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = sub_227A7260C();
  LOBYTE(a4) = a4(v8);

  return a4 & 1;
}

void sub_2279F8814(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_227A724BC();
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v10[4] = sub_2279F90AC;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_2279F89A0;
  v10[3] = &block_descriptor_0;
  v9 = _Block_copy(v10);

  LXLexiconEnumerateEntriesForString();
  _Block_release(v9);
}

void sub_2279F8918(void *a1, _BYTE *a2, uint64_t (*a3)(void))
{
  if (a1)
  {
    v5 = a1;
    if ((a3() & 1) == 0)
    {
      if (!a2)
      {
        __break(1u);
        return;
      }

      *a2 = 1;
    }
  }
}

void sub_2279F89A0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

void sub_2279F8A24(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_227A724BC();
  [a3 setString_];
}

char *sub_2279F8A7C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(void))
{
  v13 = a2(0);
  v14 = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  sub_2279F8D54(a1, boxed_opaque_existential_1, a4);
  v8 = [objc_allocWithZone(GKTextModerator) init];
  v9 = OBJC_IVAR___GKTextModerator_implementation;
  swift_beginAccess();
  v10 = v8;
  __swift_destroy_boxed_opaque_existential_0Tm(&v8[v9]);
  sub_22790B104(&v12, &v8[v9]);
  swift_endAccess();

  return v10;
}

uint64_t sub_2279F8B40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_51();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_2279F8BA0()
{
  result = qword_27D7DC7C0;
  if (!qword_27D7DC7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7DC7B8, &qword_227AA0B60);
    sub_2279F8C54(&qword_27D7DC710, type metadata accessor for CFString, &unk_227AA0A94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DC7C0);
  }

  return result;
}

uint64_t sub_2279F8C54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2279F8C9C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_51();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2279F8CFC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_51();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2279F8D54(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_51();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_2279F8DDC(uint64_t a1)
{
  sub_2279F8EA0(319, &qword_27D7DC7E8, MEMORY[0x277CC9788]);
  if (v1 <= 0x3F)
  {
    sub_2279F8EA0(319, &qword_27D7DC7F0, type metadata accessor for NLLanguage);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2279F8EA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_227A729BC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2279F8F2C(uint64_t a1)
{
  sub_2279F8EA0(319, &qword_27D7DC7E8, MEMORY[0x277CC9788]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_2279F8FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for LexiconTextModerator(0) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2279F8570(a1, a2, a3, a4, v4 + v10, v11);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_2279F9104@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  if (*(a1 + 16) && (v6 = sub_2279FDBCC(a3, a4), (v7 & 1) != 0))
  {
    v8 = *(a1 + 56) + 32 * v6;

    sub_2279F4900(v8, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_2279F9168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_2279FDBCC(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

double sub_2279F91B8@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_2279FDAF8(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_2279F4900(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

GameCenterFoundation::MultiplayerActivityReporter::LogEventLevel_optional __swiftcall MultiplayerActivityReporter.LogEventLevel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_227A72CFC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MultiplayerActivityReporter.LogEventLevel.rawValue.getter()
{
  v1 = 0x6972637365446F6ELL;
  if (*v0 != 1)
  {
    v1 = 6710895;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1819047270;
  }
}

unint64_t sub_2279F9300(char a1)
{
  result = 0x65746F5674736F68;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x657469766E69;
      break;
    case 3:
      result = 6778732;
      break;
    case 4:
      result = 0x6E6F6973736573;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_2279F93A0@<X0>(uint64_t *a1@<X8>)
{
  result = MultiplayerActivityReporter.LogEventLevel.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2279F93D8()
{

  return v0;
}

uint64_t sub_2279F9410()
{
  v0 = sub_2279F93D8();

  return MEMORY[0x2821FE8D8](v0);
}

id MultiplayerActivityReporter.init(localPlayerID:matchDataDelegate:apiReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_227A7291C();
  v19 = *(v8 - 8);
  v20 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_2();
  v11 = v10 - v9;
  sub_227A728FC();
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_2();
  v13 = sub_227A7237C();
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_1_2();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v14 = &v4[OBJC_IVAR___GKMultiplayerActivityReporter_localPlayerID];
  *v14 = a1;
  *(v14 + 1) = a2;
  *&v4[OBJC_IVAR___GKMultiplayerActivityReporter_apiReporter] = a4;
  type metadata accessor for MultiplayerActivityReporter.MutableState();
  v15 = swift_allocObject();
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0u;
  *(v15 + 64) = 0u;
  *(v15 + 80) = 0;
  *&v4[OBJC_IVAR___GKMultiplayerActivityReporter_mutableState] = v15;
  sub_2279FF044(0, &qword_27D7DC828, 0x277D85C78);
  v18 = a4;
  sub_227A7234C();
  v23 = MEMORY[0x277D84F90];
  sub_2279FF27C(&qword_27D7DC830, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC838, &unk_227AA0C10);
  sub_2279FED64(&qword_27D7DC840, &qword_27D7DC838, &unk_227AA0C10);
  sub_227A729FC();
  (*(v19 + 104))(v11, *MEMORY[0x277D85260], v20);
  *&v4[OBJC_IVAR___GKMultiplayerActivityReporter_stateQueue] = sub_227A7294C();
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v22, sel_init);
  swift_unknownObjectRelease();

  return v16;
}

uint64_t MultiplayerActivityReporter.instrument(clientDelegate:transportContext:)(uint64_t a1, void *a2)
{
  type metadata accessor for InstrumentedTransportClientDelegate();
  swift_allocObject();
  swift_unknownObjectRetain();
  return sub_2279FCCB8(a1, v2, a2);
}

void (*MultiplayerActivityReporter.instrument(errorHandler:transportContext:)(uint64_t a1, uint64_t a2, void *a3))(void *a1)
{
  OUTLINED_FUNCTION_12_1();
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a3;
  v7[4] = a1;
  v7[5] = a2;
  v8 = v3;
  v9 = a3;
  sub_2279FCD50(a1, a2);
  return sub_2279FCD44;
}

void sub_2279F99D4(void *a1, uint64_t a2, void *a3, void (*a4)(void *), uint64_t a5)
{
  if (a1)
  {
    MEMORY[0x28223BE20](a1);
    v12[2] = v9;
    v12[3] = a1;
    v12[4] = v10;
    v11 = a1;
    sub_2279FA2E8(a3, 0, 0, sub_2279FF2D8, v12);
  }

  if (a4)
  {

    a4(a1);
    sub_22790D4C0(a4, a5);
  }
}

void *MultiplayerActivityReporter.onTransportError(error:transportContext:)()
{
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_124();
  return sub_2279FA2E8(v0, v1, v2, v3, v4);
}

void sub_2279F9C14(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_227A71A4C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_2279F9C78(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t (*MultiplayerActivityReporter.instrument(bestHostHandler:transportContext:)(uint64_t a1, uint64_t a2, void *a3))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_12_1();
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a3;
  v7[4] = a1;
  v7[5] = a2;
  v8 = v3;
  v9 = a3;

  return sub_2279FCD6C;
}

uint64_t sub_2279F9D64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, void *))
{
  if (a2)
  {
    sub_2279F9DCC(a1, a2, a4);
  }

  return a5(a1, a2, a3, a4);
}

void *sub_2279F9DCC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = v3;
  v7 = a1;
  v8 = a2;
  v9 = a3;
  ObjectType = swift_getObjectType();
  return sub_2279FA2E8(v9, 0, 0, sub_2279FF25C, &v5);
}

void sub_2279F9F48(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    a2 = sub_227A724BC();
  }

  v4 = a2;
  (*(a3 + 16))(a3);
}

Swift::Void __swiftcall MultiplayerActivityReporter.onDisconnect(transportContext:)(GKTransportContext *transportContext)
{
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_124();
  sub_2279FA2E8(v1, v2, v3, v4, v5);
}

uint64_t sub_2279F9FE0(uint64_t result, uint64_t a2, void *a3)
{
  v4 = a3[6];
  if (v4)
  {
    v6 = result;
    v7 = a3[5] == result && v4 == a2;
    if (v7 || (result = sub_227A72E5C(), (result & 1) != 0))
    {
      v8 = a3[8];
      if (!v8 || ((result = a3[7], result == v6) ? (v9 = v8 == a2) : (v9 = 0), !v9 && (result = sub_227A72E5C(), (result & 1) == 0)))
      {
        a3[7] = v6;
        a3[8] = a2;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC668, &qword_227AA0670);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_227AA00F0;
        *(inited + 32) = 0xD000000000000015;
        *(inited + 40) = 0x8000000227A98610;
        v11 = a3[2];
        *(inited + 72) = MEMORY[0x277D83B88];
        *(inited + 48) = v11;

        v12 = sub_227A7243C();
        v13 = sub_2279FA168(0);
        v14 = sub_2279FA1C4(v6, a2, 4, 6581861, 0xE300000000000000, v12, v13);

        sub_2279FA25C(v14);
      }
    }
  }

  return result;
}

uint64_t sub_2279FA168(char a1)
{
  if (a1)
  {
    return -1;
  }

  v3 = [v1 selectedTransport];
  v4 = [v3 version];

  return v4;
}

uint64_t sub_2279FA1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a3;
  swift_getObjectType();
  return sub_2279FB754(*(v7 + OBJC_IVAR___GKMultiplayerActivityReporter_localPlayerID), *(v7 + OBJC_IVAR___GKMultiplayerActivityReporter_localPlayerID + 8), a1, a2, v12, a4, a5, a6, a7);
}

void sub_2279FA25C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___GKMultiplayerActivityReporter_apiReporter);
  sub_227A25094(a1);
  v3 = sub_227A7240C();

  [v2 recordMultiplayerActivityMetrics_];
}

void *sub_2279FA2E8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = result;
  v9 = a3;
  if (a3)
  {
    goto LABEL_5;
  }

  result = sub_227A23D8C(result);
  if (v10 || (result = sub_2279FEC00(v8), v10))
  {
    v9 = v10;
LABEL_5:
    MEMORY[0x28223BE20](result);
    v12[2] = v11;
    v12[3] = v9;
    v12[4] = v5;
    v12[5] = v8;
    v12[6] = a4;
    v12[7] = a5;

    sub_2279FBA5C(sub_2279FF26C, v12);
  }

  return result;
}

Swift::Void __swiftcall MultiplayerActivityReporter.onGameplayStarted(transportContext:)(GKTransportContext *transportContext)
{
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_124();
  sub_2279FA2E8(v1, v2, v3, v4, v5);
}

uint64_t sub_2279FA460(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_2279FA500(a1, a2, a5, a3);
  v7 = sub_2279FA168(0);
  v8 = sub_2279FA1C4(a1, a2, 0, 0x7472617473, 0xE500000000000000, 0, v7);
  sub_2279FA25C(v8);
}

uint64_t sub_2279FA500(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_getObjectType();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = [result currentPlayerCountIncludingLocalPlayer];
    result = swift_unknownObjectRelease();
    v10 = a4[6];
    if (!v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC668, &qword_227AA0670);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_227AA00F0;
      *(inited + 32) = 0xD000000000000013;
      *(inited + 40) = 0x8000000227A987A0;
      *(inited + 72) = MEMORY[0x277D83B88];
      *(inited + 48) = v9;
      v18 = sub_227A7243C();
      v19 = sub_2279FA168(0);
      v16 = sub_2279FB754(*(v4 + OBJC_IVAR___GKMultiplayerActivityReporter_localPlayerID), *(v4 + OBJC_IVAR___GKMultiplayerActivityReporter_localPlayerID + 8), a1, a2, 4, 0x7472617473, 0xE500000000000000, v18, v19);
      goto LABEL_10;
    }

    v11 = a4[5];
    if (v11 != a1 || v10 != a2)
    {
      result = sub_227A72E5C();
      if ((result & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC668, &qword_227AA0670);
        v13 = swift_initStackObject();
        *(v13 + 16) = xmmword_227AA00F0;
        *(v13 + 32) = 0x6553657461647075;
        *(v13 + 40) = 0xEF64496E6F697373;
        *(v13 + 72) = MEMORY[0x277D837D0];
        *(v13 + 48) = v11;
        *(v13 + 56) = v10;

        v14 = sub_227A7243C();
        v15 = sub_2279FA168(0);
        v16 = sub_2279FB754(*(v4 + OBJC_IVAR___GKMultiplayerActivityReporter_localPlayerID), *(v4 + OBJC_IVAR___GKMultiplayerActivityReporter_localPlayerID + 8), a1, a2, 4, 0x657461647075, 0xE600000000000000, v14, v15);
LABEL_10:
        v20 = v16;

        a4[5] = a1;
        a4[6] = a2;

        a4[3] = a1;
        a4[4] = a2;

        sub_2279FA25C(v20);
      }
    }
  }

  return result;
}

void *MultiplayerActivityReporter.onGameplayEnded(reason:error:transportContext:)()
{
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_124();
  return sub_2279FA2E8(v0, v1, v2, v3, v4);
}

void sub_2279FA850(uint64_t a1, uint64_t a2, uint64_t a3, id a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    v12 = a4;
    v13 = sub_2279FA168(0);
    sub_2279FAB6C(a1, a2, a4, v13);
  }

  v14 = *(a3 + 80);
  if (!v14 || (*(a3 + 72) == a1 ? (v15 = v14 == a2) : (v15 = 0), !v15 && (sub_227A72E5C() & 1) == 0))
  {
    *(a3 + 72) = a1;
    *(a3 + 80) = a2;

    if (!a4 || a7 == 3)
    {
      if ((a7 - 1) < 2)
      {
        a7 = 0;
        v24 = 0;
        v17 = 0xE900000000000065;
        v18 = 0x6D6147664F646E65;
        v16 = 1;
      }

      else if (a7)
      {
        if (a7 == 3)
        {
          v16 = 0;
          v17 = 0xE700000000000000;
          v18 = 0x6572756C696166;
          v24 = 0xEC000000726F7272;
          a7 = 0x456B726F7774656ELL;
        }

        else
        {
          a7 = 0;
          v24 = 0;
          v17 = 0xE700000000000000;
          v18 = 0x6E776F6E6B6E75;
          v16 = 1;
        }
      }

      else
      {
        v17 = 0xE400000000000000;
        v16 = 1;
        v18 = 1953069157;
        v24 = 0;
      }
    }

    else
    {
      v16 = 0;
      v24 = 0xEA0000000000726FLL;
      v17 = 0xE700000000000000;
      v18 = 0x6572756C696166;
      a7 = 0x727245726568746FLL;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC668, &qword_227AA0670);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227AA00F0;
    *(inited + 32) = 0x73616552706F7473;
    *(inited + 40) = 0xEA00000000006E6FLL;
    v20 = MEMORY[0x277D837D0];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v18;
    *(inited + 56) = v17;

    v21 = sub_227A7243C();
    if ((v16 & 1) == 0)
    {
      v27 = v20;
      *&v26 = a7;
      *(&v26 + 1) = v24;
      sub_2279FF11C(&v26, v25);
      swift_isUniquelyReferenced_nonNull_native();
      sub_227A623E4(v25, 0x73616552706F7473, 0xEE00657079546E6FLL);
    }

    v22 = sub_2279FA168(0);
    v23 = sub_2279FA1C4(a1, a2, 0, 6581861, 0xE300000000000000, v21, v22);

    sub_2279FA25C(v23);
  }
}

uint64_t sub_2279FAB6C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC668, &qword_227AA0670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227AA00F0;
  *(inited + 32) = 0x73616552706F7473;
  *(inited + 40) = 0xEA00000000006E6FLL;
  v10 = static MultiplayerActivityReporter.makeLogStopReason(error:)(a3);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v10;
  *(inited + 56) = v11;
  v12 = sub_227A7243C();
  v13 = sub_2279FB754(*(v4 + OBJC_IVAR___GKMultiplayerActivityReporter_localPlayerID), *(v4 + OBJC_IVAR___GKMultiplayerActivityReporter_localPlayerID + 8), a1, a2, 3, 0, 0, v12, a4);

  sub_2279FA25C(v13);
}

uint64_t MultiplayerActivityReporter.onInviteSent(approach:isHosted:recipients:transportContext:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_getObjectType();
  sub_2279FEC00(a4);
  v6 = v5;
  OUTLINED_FUNCTION_7_3();
  sub_2279FA2E8(a4, v7, v6, v8, v9);
}

void sub_2279FADC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  v12 = sub_227A06998();
  for (i = 0; v12 != i; ++i)
  {
    if ((a4 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x22AAA03F0](i, a4);
    }

    else
    {
      if (i >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v14 = *(a4 + 8 * i + 32);
    }

    v15 = v14;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v20 = v14;
    sub_2279FAEB8(&v20, a5, a1, a2, a6, a7, a8 & 1);
  }
}

uint64_t sub_2279FAEB8(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v10 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC668, &qword_227AA0670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227AA00E0;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x8000000227A98820;
  v12 = [v10 playerID];
  v13 = sub_227A724EC();
  v15 = v14;

  v16 = sub_2279FB06C(v13, v15, a3, a4);
  v18 = v17;

  v19 = MEMORY[0x277D837D0];
  *(inited + 48) = v16;
  *(inited + 56) = v18;
  *(inited + 72) = v19;
  *(inited + 80) = 0x7954657469766E69;
  *(inited + 88) = 0xEA00000000006570;
  v20 = sub_2279FB338(a5);
  *(inited + 120) = v19;
  *(inited + 96) = v20;
  *(inited + 104) = v21;
  v22 = sub_227A7243C();
  v23 = sub_2279FA168(a7);
  v24 = sub_2279FA1C4(a3, a4, 2, 1684956531, 0xE400000000000000, v22, v23);

  sub_2279FA25C(v24);
}

uint64_t sub_2279FB06C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_227A723FC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = sub_227A723EC();
  v12 = *(v22[0] - 8);
  MEMORY[0x28223BE20](v22[0]);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  v24 = a2;

  MEMORY[0x22AA9FE40](64, 0xE100000000000000);
  MEMORY[0x22AA9FE40](a3, a4);
  v15 = sub_2279FC314(v23, v24);
  v17 = v16;
  sub_2279FF27C(&qword_27D7DC8B8, MEMORY[0x277CC5540]);
  sub_227A723DC();
  sub_2279E3EE4(v15, v17);
  sub_2279FE5E8(v15, v17, v11);
  sub_2279E3FA4(v15, v17);
  sub_227A723CC();
  (*(v9 + 8))(v11, v8);
  sub_2279E3FA4(v15, v17);
  sub_2279FC81C(v14);
  v19 = v18;
  (*(v12 + 8))(v14, v22[0]);
  v23 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC850, &qword_227AA0C20);
  sub_2279FED64(&qword_27D7DC858, &qword_27D7DC850, &qword_227AA0C20);
  v20 = sub_227A7246C();

  return v20;
}

unint64_t sub_2279FB338(uint64_t a1)
{
  result = 0x6567617373656DLL;
  switch(a1)
  {
    case 0:
      result = 0x6E776F6E6B6E75;
      break;
    case 1:
      result = 0x6374614D6F747561;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x616C506572616873;
      break;
    default:
      strcpy(v4, "unsupported-");
      v3 = sub_227A72E1C();
      MEMORY[0x22AA9FE40](v3);

      result = v4[0];
      break;
  }

  return result;
}

uint64_t static MultiplayerActivityReporter.makeInviteReceivedFields(approach:isHosted:localPlayerID:senderPlayerID:sessionID:transportVersion:)(uint64_t a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC668, &qword_227AA0670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227AA00E0;
  strcpy((inited + 32), "senderPlayerId");
  *(inited + 47) = -18;
  v17 = sub_2279FB06C(a5, a6, a7, a8);
  v18 = MEMORY[0x277D837D0];
  *(inited + 48) = v17;
  *(inited + 56) = v19;
  *(inited + 72) = v18;
  *(inited + 80) = 0x7954657469766E69;
  *(inited + 88) = 0xEA00000000006570;
  v20 = sub_2279FB338(a1);
  *(inited + 120) = v18;
  *(inited + 96) = v20;
  *(inited + 104) = v21;
  v22 = sub_227A7243C();
  if (a10)
  {
    v23 = 0;
  }

  else
  {
    v23 = a9;
  }

  if (a2)
  {
    v23 = -1;
  }

  v24 = sub_2279FB754(a3, a4, a7, a8, 2, 0x65766965636572, 0xE700000000000000, v22, v23);

  return v24;
}

uint64_t sub_2279FB754(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC668, &qword_227AA0670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227AA0BF0;
  *(inited + 32) = 0x707954746E657665;
  *(inited + 40) = 0xE900000000000065;
  v16 = sub_2279F9300(a5);
  v17 = MEMORY[0x277D837D0];
  *(inited + 48) = v16;
  *(inited + 56) = v18;
  *(inited + 72) = v17;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x8000000227A98450;
  *(inited + 96) = a3;
  *(inited + 104) = a4;
  *(inited + 120) = v17;
  *(inited + 128) = 0x6449726579616C70;
  *(inited + 136) = 0xE800000000000000;

  *(inited + 144) = sub_2279FB06C(a1, a2, a3, a4);
  *(inited + 152) = v19;
  *(inited + 168) = v17;
  *(inited + 176) = 0xD000000000000010;
  *(inited + 216) = MEMORY[0x277D83B88];
  *(inited + 184) = 0x8000000227A987C0;
  *(inited + 192) = a9;
  v20 = sub_227A7243C();
  if (a7)
  {
    v27 = v17;
    *&v26 = a6;
    *(&v26 + 1) = a7;
    sub_2279FF11C(&v26, v25);

    swift_isUniquelyReferenced_nonNull_native();
    sub_227A623E4(v25, 0x79546E6F69746361, 0xEA00000000006570);
  }

  if (a8)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v26 = v20;
    sub_2279FE81C(a8, sub_2279FE7E4, 0, isUniquelyReferenced_nonNull_native, &v26);
    return v26;
  }

  return v20;
}

uint64_t static MultiplayerActivityReporter.extractSessionID(fields:)(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_2279FDBCC(0xD000000000000014, 0x8000000227A98450);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_2279F4900(*(a1 + 56) + 32 * v2, v6);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

Swift::Void __swiftcall MultiplayerActivityReporter.onConnect(multiplayerSessionID:transportContext:)(Swift::String multiplayerSessionID, GKTransportContext *transportContext)
{
  v3 = multiplayerSessionID;
  v4 = transportContext;
  sub_2279FBA5C(sub_2279FEC98, &v2);
}

uint64_t sub_2279FBA5C(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR___GKMultiplayerActivityReporter_stateQueue];
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2279FF0D8;
  *(v7 + 24) = v6;
  v12[4] = sub_2279FF114;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2279FF6D4;
  v12[3] = &block_descriptor_44;
  v8 = _Block_copy(v12);
  v9 = v2;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t static MultiplayerActivityReporter.makeLogStopReason(error:)(void *a1)
{
  v1 = sub_2279FBDD0(a1);
  v3 = v2;
  sub_2279FD74C();
  v5 = v4;
  v6 = *(v4 + 16);
  if (v6 >= *(v4 + 24) >> 1)
  {
    sub_2279FD74C();
    v5 = v23;
  }

  *(v5 + 16) = v6 + 1;
  v7 = v5 + 16 * v6;
  *(v7 + 32) = v1;
  *(v7 + 40) = v3;
  swift_getErrorValue();
  v8 = sub_227A138F8(v24, v25);
  v9 = *(v8 + 16);
  for (i = 32; v9; --v9)
  {
    v11 = *(v8 + i);
    v12 = v11;
    v13 = sub_2279FBDD0(v11);
    v15 = v14;
    v16 = *(v5 + 16);
    if (v16 >= *(v5 + 24) >> 1)
    {
      sub_2279FD74C();
      v5 = v18;
    }

    *(v5 + 16) = v16 + 1;
    v17 = v5 + 16 * v16;
    *(v17 + 32) = v13;
    *(v17 + 40) = v15;

    i += 8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC850, &qword_227AA0C20);
  sub_2279FED64(&qword_27D7DC858, &qword_27D7DC850, &qword_227AA0C20);
  v19 = sub_227A7246C();
  v21 = v20;

  MEMORY[0x22AA9FE40](v19, v21);

  MEMORY[0x22AA9FE40](93, 0xE100000000000000);

  return 91;
}

uint64_t sub_2279FBDD0(void *a1)
{
  v2 = sub_227A71A4C();
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC898, &qword_227AA0E30);
  if (swift_dynamicCast())
  {
    sub_22790B104(v18, &v20);
    v4 = v22;
    v5 = v23;
    __swift_project_boxed_opaque_existential_1(&v20, v22);
    v6 = sub_227A13BC4(v4, v5);
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_0Tm(&v20);
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_2279F3774(v18, &qword_27D7DC8A0, &qword_227AA0E38);
    v9 = [v2 domain];
    v6 = sub_227A724EC();
    v8 = v10;
  }

  v20 = 0;
  v21 = 0xE000000000000000;
  sub_227A72B1C();

  v20 = 0x6E69616D6F64277BLL;
  v21 = 0xEB00000000273A27;
  *&v18[0] = v6;
  *(&v18[0] + 1) = v8;
  v17 = sub_2279FF084();
  v16 = MEMORY[0x277D837D0];
  v11 = sub_227A729DC();
  v13 = v12;

  MEMORY[0x22AA9FE40](v11, v13);

  MEMORY[0x22AA9FE40](0x2765646F63272C27, 0xE90000000000003ALL);
  *&v18[0] = [v2 code];
  v14 = sub_227A72E1C();
  MEMORY[0x22AA9FE40](v14);

  MEMORY[0x22AA9FE40](125, 0xE100000000000000);

  return v20;
}

uint64_t sub_2279FC020(uint64_t result)
{
  v1 = *(result + 16);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(result + 16) = v3;
  }

  return result;
}

uint64_t sub_2279FC038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC668, &qword_227AA0670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227AA00F0;
  strcpy((inited + 32), "votedPlayerId");
  *(inited + 46) = -4864;
  v11 = sub_2279FB06C(a5, a6, a1, a2);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v11;
  *(inited + 56) = v12;
  v13 = sub_227A7243C();
  v14 = sub_2279FA168(0);
  v15 = sub_2279FA1C4(a1, a2, 1, 0, 0, v13, v14);

  sub_2279FA25C(v15);
}

uint64_t sub_2279FC174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(a1 + 24);
    v12 = v11 == a2 && v10 == a3;
    if (!v12 && (sub_227A72E5C() & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC668, &qword_227AA0670);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_227AA00F0;
      *(inited + 32) = 0x6553657461647075;
      *(inited + 40) = 0xEF64496E6F697373;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v11;
      *(inited + 56) = v10;

      v14 = sub_227A7243C();
      v15 = sub_2279FA168(0);
      v16 = sub_2279FA1C4(a2, a3, 4, 0x657461647075, 0xE600000000000000, v14, v15);

      sub_2279FA25C(v16);
    }
  }

  *(a1 + 24) = a2;
  *(a1 + 32) = a3;

  return a6(a2, a3, a1);
}

uint64_t sub_2279FC314(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC8D0, &qword_227AA0E50);
  if (swift_dynamicCast())
  {
    sub_22790B104(v40, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_227A71A3C();
    v40[0] = v42;
    __swift_destroy_boxed_opaque_existential_0Tm(&v43);
    goto LABEL_59;
  }

  v41 = 0;
  memset(v40, 0, sizeof(v40));
  sub_2279F3774(v40, &qword_27D7DC8D8, &qword_227AA0E58);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v40[0] = a1;
    *(&v40[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v5 = v40;
    v6 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = sub_227A72B6C();
  }

  sub_2279FE090(v5, v6, &v43);
  v7 = *(&v43 + 1);
  v8 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    v40[0] = v43;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v40[0] = MEMORY[0x22AA9F410](v9);
  *(&v40[0] + 1) = v10;
  MEMORY[0x28223BE20](*&v40[0]);
  v34[2] = v39;
  v11 = sub_2279FE1AC(sub_2279FF220, v34);
  v13 = *(&v40[0] + 1) >> 62;
  v14 = v11;
  v16 = v15;
  v18 = v17;
  v19 = BYTE14(v40[0]);
  switch(*(&v40[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v20) = DWORD1(v40[0]) - LODWORD(v40[0]);
      if (__OFSUB__(DWORD1(v40[0]), v40[0]))
      {
        goto LABEL_66;
      }

      v20 = v20;
LABEL_22:
      if (v12 == v20)
      {
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        v19 = *(*&v40[0] + 24);
      }

      else if (v13 == 1)
      {
        v19 = *&v40[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v22 = *(*&v40[0] + 16);
      v21 = *(*&v40[0] + 24);
      v23 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (!v23)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v12)
      {
        v19 = 0;
LABEL_56:
        if (v19 < v12)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_227A71B4C();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v34[4] = v4;
      v35 = v8;
      v36 = v7;
      LOBYTE(v24) = 0;
      if ((v16 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v16) & 0xF;
      }

      else
      {
        v25 = v11 & 0xFFFFFFFFFFFFLL;
      }

      v26 = (v11 >> 59) & 1;
      if ((v16 & 0x1000000000000000) == 0)
      {
        LOBYTE(v26) = 1;
      }

      v27 = 4 << v26;
      v37 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v38 = v16 & 0xFFFFFFFFFFFFFFLL;
      *(&v42 + 7) = 0;
      *&v42 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v20 = BYTE14(v40[0]);
      goto LABEL_22;
  }

  while (4 * v25 != v18 >> 14)
  {
    v4 = v18 & 0xC;
    v28 = v18;
    if (v4 == v27)
    {
      v28 = sub_2279FF164(v18, v14, v16);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v25)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v9 = sub_227A7259C();
      v8 = 0;
      v7 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      v31 = sub_227A725CC();
    }

    else if ((v16 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_227A72B6C();
      }

      v31 = *(v30 + v29);
    }

    if (v4 == v27)
    {
      v18 = sub_2279FF164(v18, v14, v16);
      if ((v16 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v18 = (v18 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v25 <= v18 >> 16)
    {
      goto LABEL_62;
    }

    v18 = sub_227A725AC();
LABEL_46:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_61;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_227A71B6C();
      LOBYTE(v24) = 0;
    }
  }

  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_227A71B6C();
    sub_2279E3F90(v35, v36);
    goto LABEL_58;
  }

  sub_2279E3F90(v35, v36);
LABEL_59:
  v32 = v40[0];
  sub_2279E3EE4(*&v40[0], *(&v40[0] + 1));

  sub_2279E3FA4(v32, *(&v32 + 1));
  return v32;
}

void sub_2279FC81C(uint64_t a1)
{
  v2 = sub_227A723EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2279FF27C(&qword_27D7DC8C0, MEMORY[0x277CC5290]);
  v6 = sub_227A7262C();
  v36 = MEMORY[0x277D84F90];
  sub_227A20388(0, v6 & ~(v6 >> 63), 0);
  v7 = v36;
  (*(v3 + 16))(v5, a1, v2);
  sub_227A7261C();
  if ((v6 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v8 = v35;
      v9 = *(v34 + 16);
      v32 = v34;
      *&v33 = v9;
      v31 = v34 + 32;
      v30 = xmmword_227AA00F0;
      v10 = v35;
      while (v33 != v8)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        if (v8 >= *(v32 + 16))
        {
          goto LABEL_21;
        }

        v11 = *(v31 + v8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC8C8, &qword_227AA0E48);
        v12 = swift_allocObject();
        *(v12 + 16) = v30;
        *(v12 + 56) = MEMORY[0x277D84B78];
        *(v12 + 64) = MEMORY[0x277D84BC0];
        *(v12 + 32) = v11;
        v13 = sub_227A724FC();
        v15 = v14;
        v36 = v7;
        v17 = *(v7 + 16);
        v16 = *(v7 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_227A20388(v16 > 1, v17 + 1, 1);
          v7 = v36;
        }

        *(v7 + 16) = v17 + 1;
        v18 = v7 + 16 * v17;
        *(v18 + 32) = v13;
        *(v18 + 40) = v15;
        ++v8;
        if (!--v6)
        {
          v35 = v8;
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v19 = v34;
      v33 = xmmword_227AA00F0;
      while (1)
      {
        v20 = *(v19 + 16);
        if (v35 == v20)
        {

          return;
        }

        if (v35 >= v20)
        {
          break;
        }

        v21 = *(v19 + 32 + v35++);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC8C8, &qword_227AA0E48);
        v22 = swift_allocObject();
        *(v22 + 16) = v33;
        *(v22 + 56) = MEMORY[0x277D84B78];
        *(v22 + 64) = MEMORY[0x277D84BC0];
        *(v22 + 32) = v21;
        v23 = sub_227A724FC();
        v25 = v24;
        v36 = v7;
        v27 = *(v7 + 16);
        v26 = *(v7 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_227A20388(v26 > 1, v27 + 1, 1);
          v7 = v36;
        }

        *(v7 + 16) = v27 + 1;
        v28 = v7 + 16 * v27;
        *(v28 + 32) = v23;
        *(v28 + 40) = v25;
      }

      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

id MultiplayerActivityReporter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MultiplayerActivityReporter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2279FCCB8(uint64_t a1, void *a2, void *a3)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakAssign();
  return v3;
}

uint64_t sub_2279FCD50(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void *sub_2279FCD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_2279FBA5C(sub_2279FC020, 0);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_227A724BC();
    [v7 connectionDidChangeWithState:a1 playerID:v8];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2279FCEF4(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong respondsToSelector_];
    _Block_copy(a3);
    if (v7)
    {
      v8 = sub_227A7240C();
      v10[4] = sub_2279FF01C;
      v10[5] = v4;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 1107296256;
      v10[2] = sub_2279FF2E8;
      v10[3] = &block_descriptor_1;
      v9 = _Block_copy(v10);

      [v6 relayDidReceivePushData:v8 completionHandler:v9];
      _Block_release(v9);

      swift_unknownObjectRelease();

      _Block_release(a3);
      return;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    _Block_copy(a3);
  }

  a3[2](a3, 0);

  _Block_release(a3);
}

uint64_t sub_2279FD0B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_227A724EC();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2(v3, v5);
}

void *sub_2279FD1D8(uint64_t a1, uint64_t a2, SEL *a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      MEMORY[0x28223BE20](v7);
      OUTLINED_FUNCTION_124();
      sub_2279FA2E8(v9, v10, v11, a2, v12);
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = sub_227A71A4C();
    [v14 *a3];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2279FD2EC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  v7 = a3;

  sub_2279FD1D8(v7, a4, a5);
}

void *sub_2279FD360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_227A724BC();
    if (a5)
    {
      a5 = sub_227A724BC();
    }

    [v8 transportDidReceivePacket:a1 fromPlayerID:v9 remoteRecipientID:a5];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_2279FD4E0(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = sub_227A7240C();
    [v2 transportDidUpdateWithInfo_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2279FD5F4()
{
  sub_22790D450(v0 + 16);
  MEMORY[0x22AAA19E0](v0 + 24);
  MEMORY[0x22AAA19E0](v0 + 32);
  return v0;
}

uint64_t sub_2279FD624()
{
  v0 = sub_2279FD5F4();

  return MEMORY[0x2821FE8D8](v0);
}

void sub_2279FD654()
{
  OUTLINED_FUNCTION_14_1();
  if (v4)
  {
    OUTLINED_FUNCTION_2_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_11_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_8();
    }
  }

  OUTLINED_FUNCTION_3_2();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC618, &qword_227AA05A0);
    v7 = OUTLINED_FUNCTION_15_2();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_6_2(v8 - 32);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[8 * v2 + 32] <= v7 + 32)
    {
      v10 = OUTLINED_FUNCTION_109();
      memmove(v10, v11, v12);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC8E8, &qword_227AA3620);
    OUTLINED_FUNCTION_109();
    swift_arrayInitWithCopy();
  }
}

void sub_2279FD74C()
{
  OUTLINED_FUNCTION_14_1();
  if (v4)
  {
    OUTLINED_FUNCTION_2_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_11_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_8();
    }
  }

  OUTLINED_FUNCTION_3_2();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC658, &qword_227AA4120);
    v7 = OUTLINED_FUNCTION_15_2();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_6_2(v8 - 32);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2279FD824()
{
  OUTLINED_FUNCTION_14_1();
  if (v4)
  {
    OUTLINED_FUNCTION_2_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_11_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_8();
    }
  }

  OUTLINED_FUNCTION_3_2();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC878, &unk_227AA0E10);
    v7 = OUTLINED_FUNCTION_15_2();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_6_2(v8 - 32);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[8 * v2 + 32] <= v7 + 32)
    {
      v10 = OUTLINED_FUNCTION_109();
      memmove(v10, v11, v12);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
    OUTLINED_FUNCTION_109();
    swift_arrayInitWithCopy();
  }
}

void sub_2279FD91C()
{
  OUTLINED_FUNCTION_14_1();
  if (v3)
  {
    OUTLINED_FUNCTION_2_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_11_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_8();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC880, &unk_227AA0E20);
    v9 = OUTLINED_FUNCTION_15_2();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = 2 * ((v10 - 32) / 16);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

char *sub_2279FD9FC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

void sub_2279FDA1C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (sub_227A7212C(), OUTLINED_FUNCTION_51(), a1 + *(v6 + 72) * a2 <= a3))
  {
    sub_227A7212C();
    OUTLINED_FUNCTION_10_1();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_10_1();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_2279FDAD0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

unint64_t sub_2279FDAF8()
{
  sub_227A72A9C();
  v0 = OUTLINED_FUNCTION_8_3();

  return sub_2279FDC84(v0, v1);
}

unint64_t sub_2279FDB38()
{
  sub_227A71D0C();
  sub_2279FF27C(&qword_27D7DC7C8, MEMORY[0x277CC9788]);
  sub_227A7244C();
  v0 = OUTLINED_FUNCTION_8_3();

  return sub_2279FDD48(v0, v1);
}

unint64_t sub_2279FDBCC(uint64_t a1, uint64_t a2)
{
  sub_227A72F2C();
  sub_227A7255C();
  v4 = sub_227A72F4C();

  return sub_2279FDF04(a1, a2, v4);
}

unint64_t sub_2279FDC44()
{
  sub_227A7298C();
  v0 = OUTLINED_FUNCTION_8_3();

  return sub_2279FDFB8(v0, v1);
}

unint64_t sub_2279FDC84(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_2279FEF6C(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x22AAA0360](v8, a1);
    sub_2279FEFC8(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2279FDD48(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_227A71D0C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4, v6);
    sub_2279FF27C(&qword_27D7DC8E0, MEMORY[0x277CC9788]);
    v10 = sub_227A7248C();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2279FDF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_227A72E5C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2279FDFB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_2279FF044(0, &qword_27D7DC890, 0x277D82BB8);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_227A7299C();

    if (v8)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2279FE090@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_227A71AEC();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_227A71A2C();
      swift_allocObject();
      v8 = sub_227A719EC();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_227A71B3C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_2279FE158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_2279FE6CC(sub_2279FF23C, v5, a1, a2);
}

uint64_t sub_2279FE1AC(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v5 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_2279E3FA4(v7, v6);
      *v5 = xmmword_227AA0C00;
      sub_2279E3FA4(0, 0xC000000000000000);
      v13 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v13 < v7)
      {
        goto LABEL_23;
      }

      if (sub_227A719FC() && __OFSUB__(v7, sub_227A71A1C()))
      {
        goto LABEL_24;
      }

      sub_227A71A2C();
      swift_allocObject();
      v14 = sub_227A719DC();

      v12 = v14;
LABEL_16:
      if (v13 < v7)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v4 = sub_2279FE730(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_2279E3FA4(v7, v6);
      v17 = v7;
      v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_227AA0C00;
      sub_2279E3FA4(0, 0xC000000000000000);
      sub_227A71AFC();
      v7 = v17;
      v10 = sub_2279FE730(*(v17 + 16), *(v17 + 24), a1);
      if (v3)
      {
        v11 = v18 | 0x8000000000000000;
LABEL_18:
        *v5 = v7;
        v5[1] = v11;
      }

      else
      {
        v4 = v10;
        v11 = v18 | 0x8000000000000000;
LABEL_20:
        *v5 = v7;
        v5[1] = v11;
      }

      return v4;
    case 3uLL:
      memset(v19, 0, 15);
      a1(&v17, v19, v19);
      if (!v3)
      {
        return v17;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      sub_2279E3FA4(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        v4 = v17;
      }

      v9 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v5 = v19[0];
      v5[1] = v9;
      return v4;
  }
}

uint64_t sub_2279FE570@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_227A71AEC();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x22AA9F3C0]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x22AA9F3D0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

void sub_2279FE5E8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v7 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v6 = v7;
      goto LABEL_9;
    case 2uLL:
      v5 = *(a1 + 24);
      a1 = *(a1 + 16);
      v6 = v5;
LABEL_9:
      sub_2279FEB20(a1, v6);
      if (v3)
      {
        goto LABEL_10;
      }

      return;
    case 3uLL:
      a1 = 0;
      v4 = 0;
      goto LABEL_5;
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      sub_2279FEA4C(a1, v4);
      if (v3)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
      }

      return;
  }
}

uint64_t sub_2279FE684(uint64_t result)
{
  if (result)
  {
    result = sub_227A72B2C();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2279FE6CC(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_2279FE730(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_227A719FC();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_227A71A1C();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_227A71A0C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_2279FE7E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_227A386D0((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2279FE81C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_227A389B4(v34);
  v30 = v34[0];
  v31 = v34[1];
  v32 = v34[2];
  v33 = v35;

  while (1)
  {
    sub_227A389F4(&v28);
    v7 = *(&v28 + 1);
    if (!*(&v28 + 1))
    {
      sub_2279F34F8(v30);
    }

    v8 = v28;
    sub_2279FF11C(&v29, v27);
    v9 = *a5;
    v11 = sub_2279FDBCC(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (v9[3] >= v14)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC8B0, &qword_227AA0E40);
        sub_227A72C3C();
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_227A3FD10(v14, a4 & 1);
      v16 = sub_2279FDBCC(v8, v7);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_18;
      }

      v11 = v16;
      if (v15)
      {
LABEL_10:
        v18 = *a5;
        sub_2279F4900(v27, v26);
        __swift_destroy_boxed_opaque_existential_0Tm(v27);

        v19 = (v18[7] + 32 * v11);
        __swift_destroy_boxed_opaque_existential_0Tm(v19);
        sub_2279FF11C(v26, v19);
        goto LABEL_14;
      }
    }

    v20 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v21 = (v20[6] + 16 * v11);
    *v21 = v8;
    v21[1] = v7;
    sub_2279FF11C(v27, (v20[7] + 32 * v11));
    v22 = v20[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_17;
    }

    v20[2] = v24;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_227A72EAC();
  __break(1u);
  return result;
}

uint64_t sub_2279FEA4C(uint64_t a1, uint64_t a2)
{
  sub_227A723FC();
  sub_2279FF27C(&qword_27D7DC8B8, MEMORY[0x277CC5540]);
  return sub_227A723BC();
}

uint64_t sub_2279FEB20(uint64_t a1, uint64_t a2)
{
  result = sub_227A719FC();
  if (!result || (result = sub_227A71A1C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_227A71A0C();
      sub_227A723FC();
      sub_2279FF27C(&qword_27D7DC8B8, MEMORY[0x277CC5540]);
      return sub_227A723BC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2279FEC00(void *a1)
{
  v1 = [a1 sessionID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_227A724EC();

  return v3;
}

unint64_t sub_2279FECCC()
{
  result = qword_27D7DC860;
  if (!qword_27D7DC860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DC860);
  }

  return result;
}

uint64_t sub_2279FED64(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_8_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MultiplayerActivityReporter.LogEventLevel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MultiplayerActivityReporter.LogEventLevel(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2279FF044(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_2279FF084()
{
  result = qword_27D7DC8A8;
  if (!qword_27D7DC8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DC8A8);
  }

  return result;
}

_OWORD *sub_2279FF11C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_2279FF12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_2279FE158(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

unint64_t sub_2279FF164(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_227A725DC();
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
    v5 = MEMORY[0x22AA9FE70](15, a1 >> 16);
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

uint64_t sub_2279FF1E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2279FE684(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_2279FF27C(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_8_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_2()
{

  return swift_allocObject();
}

id static GKDispatchGroup.namedGroup(with:line:function:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2279FF460();

  MEMORY[0x22AA9FE40](58, 0xE100000000000000);
  v9 = sub_227A72E1C();
  MEMORY[0x22AA9FE40](v9);

  MEMORY[0x22AA9FE40](32, 0xE100000000000000);
  MEMORY[0x22AA9FE40](a4, a5);
  return sub_2279FF4A4(a1, a2);
}

unint64_t sub_2279FF460()
{
  result = qword_27D7DC8F0;
  if (!qword_27D7DC8F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7DC8F0);
  }

  return result;
}

id sub_2279FF4A4(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_227A724BC();

  v4 = [v2 initWithName_];

  return v4;
}

uint64_t sub_2279FF518(uint64_t a1, uint64_t *a2)
{
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
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_8:
        v10 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v8 << 6)));
        v12 = *v10;
        v11 = v10[1];
        v13 = *a2;
        swift_bridgeObjectRetain_n();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2279FD74C();
          v13 = v17;
          *a2 = v17;
        }

        v15 = *(v13 + 16);
        if (v15 >= *(v13 + 24) >> 1)
        {
          sub_2279FD74C();
          v13 = v18;
          *a2 = v18;
        }

        v5 &= v5 - 1;
        *(v13 + 16) = v15 + 1;
        v16 = v13 + 16 * v15;
        *(v16 + 32) = v12;
        *(v16 + 40) = v11;
      }

      while (v5);
    }
  }

  __break(1u);
  return result;
}

void __swiftcall TransportMonitorConfiguration.init(maxIteration:pingInterval:pingTimeout:reportFrequency:)(GameCenterFoundation::TransportMonitorConfiguration *__return_ptr retstr, Swift::Int_optional maxIteration, Swift::Int pingInterval, Swift::Int pingTimeout, Swift::Int reportFrequency)
{
  value = 10;
  if (maxIteration.value > 10)
  {
    value = maxIteration.value;
  }

  if (maxIteration.is_nil)
  {
    value = maxIteration.value;
  }

  v6 = 500;
  if (pingInterval > 500)
  {
    v6 = pingInterval;
  }

  v7.i64[0] = pingTimeout;
  v7.i64[1] = reportFrequency;
  v8 = vbslq_s8(vcgtq_s64(xmmword_227AA0E70, v7), v7, xmmword_227AA0E70);
  retstr->maxIteration.value = value;
  retstr->maxIteration.is_nil = maxIteration.is_nil;
  retstr->pingInterval = v6;
  *&retstr->pingTimeout = vbslq_s8(vcgtq_s64(v8, xmmword_227AA0E80), v8, xmmword_227AA0E80);
}

void __swiftcall TransportMonitorConfiguration.init(testOverrideMaxIteration:testOverridePingInterval:testOverridePingTimeout:testOverrideReportFrequency:)(GameCenterFoundation::TransportMonitorConfiguration *__return_ptr retstr, Swift::Int_optional testOverrideMaxIteration, Swift::Int testOverridePingInterval, Swift::Int testOverridePingTimeout, Swift::Int testOverrideReportFrequency)
{
  retstr->maxIteration.value = testOverrideMaxIteration.value;
  retstr->maxIteration.is_nil = testOverrideMaxIteration.is_nil;
  retstr->pingInterval = testOverridePingInterval;
  retstr->pingTimeout = testOverridePingTimeout;
  retstr->reportFrequency = testOverrideReportFrequency;
}

uint64_t TransportPeerMonitorState.hashValue.getter()
{
  v1 = *v0;
  sub_227A72F2C();
  MEMORY[0x22AAA07F0](v1);
  return sub_227A72F4C();
}

uint64_t sub_2279FF870(uint64_t a1)
{
  v2 = *v1;
  sub_227A72F2C();
  MEMORY[0x22AAA07F0](v2);
  return sub_227A72F4C();
}

__n128 TransportPeerMonitor.configuration.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[3].n128_u8[8];
  v3 = v1[5].n128_u64[0];
  a1->n128_u64[0] = v1[3].n128_u64[0];
  a1->n128_u8[8] = v2;
  result = v1[4];
  a1[1] = result;
  a1[2].n128_u64[0] = v3;
  return result;
}

void *sub_2279FF8D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2279FF94C(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_2279FF94C@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_9_2();
  result = swift_beginAccess();
  *a1 = *(v1 + 153);
  return result;
}

uint64_t sub_2279FF98C(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = OUTLINED_FUNCTION_11_2(v2 + 153, a2);
  *(v2 + 153) = v3;
  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_2279FFA44()
{
  if (*(v0 + 40))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
    sub_227A727DC();
  }

  *(v0 + 40) = 0;
}

void sub_2279FFACC()
{
  v1 = *(v0 + 120);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 120) = v3;
  }
}

uint64_t sub_2279FFAE4()
{
  v1 = v0;
  v2 = sub_227A71C2C();
  OUTLINED_FUNCTION_92();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_2();
  v8 = v7 - v6;
  sub_227A71C1C();
  sub_227A71BFC();
  v10 = v9;
  result = (*(v4 + 8))(v8, v2);
  *(v1 + 144) = v10;
  *(v1 + 152) = 0;
  v12 = *(v1 + 104);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 104) = v14;
  }

  return result;
}

uint64_t sub_2279FFBC0()
{
  v1 = OUTLINED_FUNCTION_87();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  sub_227A7274C();
  v6 = sub_227A7276C();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  OUTLINED_FUNCTION_110();
  v7 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_19_0();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  v9 = sub_227A005B8(0, 0, v5, &unk_227AA10A8, v8);
  sub_227A04918(v5, &qword_27D7DC5B8, &qword_227AA04D0);
  *(v0 + 40) = v9;
}

uint64_t sub_2279FFCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_227A72BFC();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2279FFDB0, 0, 0);
}

uint64_t sub_2279FFDB0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_9_2();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    sub_227A00584(*(Strong + 72));
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_18_1(qword_227AA40D0);
    v7 = v2;
    v3 = swift_task_alloc();
    *(v0 + 112) = v3;
    *v3 = v0;
    v3[1] = sub_2279FFEC8;
    v4 = OUTLINED_FUNCTION_5_0();

    return v7(v4);
  }

  else
  {

    OUTLINED_FUNCTION_23();

    return v6();
  }
}

uint64_t sub_2279FFEC8()
{
  OUTLINED_FUNCTION_36();
  v3 = v2;
  v4 = v2[12];
  v5 = v2[10];
  v6 = v2[9];
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  v3[15] = v0;

  v9 = *(v5 + 8);
  v3[16] = v9;
  v3[17] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v4, v6);
  if (v0)
  {
    v10 = sub_227A002B0;
  }

  else
  {
    v10 = sub_227A00040;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_227A00040()
{
  v23 = v0;
  if (sub_227A727FC())
  {

    OUTLINED_FUNCTION_23();

    return v1();
  }

  else
  {
    if (qword_280B54DB0 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_280B54DB0);
    }

    v3 = sub_227A7227C();
    __swift_project_value_buffer(v3, qword_280B54DB8);

    v4 = sub_227A7226C();
    v5 = sub_227A7289C();
    v6 = OUTLINED_FUNCTION_27_0(v5);
    v7 = *(v0 + 104);
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = OUTLINED_FUNCTION_107();
      v22 = v9;
      *v8 = 136315394;
      v10 = v7[11];
      v11 = v7[12];

      v12 = sub_227A46730(v10, v11, &v22);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2048;
      *(v8 + 14) = v7[15];

      _os_log_impl(&dword_227904000, v4, v5, "Ping monitor[%s] ping timeout SEQ:%ld", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_103();
    }

    else
    {
    }

    v13 = *(v0 + 104);
    result = swift_beginAccess();
    *(v13 + 153) = 3;
    v14 = *(v13 + 120);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      v17 = *(v0 + 104);
      *(v13 + 120) = v16;
      sub_227A00584(*(v17 + 72));
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_18_1(qword_227AA40D0);
      v21 = v18;
      v19 = swift_task_alloc();
      *(v0 + 144) = v19;
      *v19 = v0;
      v19[1] = sub_227A00328;
      v20 = OUTLINED_FUNCTION_5_0();

      return v21(v20);
    }
  }

  return result;
}

uint64_t sub_227A002B0()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_41();

  return v0();
}

uint64_t sub_227A00328()
{
  OUTLINED_FUNCTION_36();
  v3 = *(v2 + 128);
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 152) = v0;

  v7 = OUTLINED_FUNCTION_87();
  v3(v7);
  if (v0)
  {
    v8 = sub_227A0050C;
  }

  else
  {
    v8 = sub_227A00498;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_227A00498()
{
  sub_227A007F8();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_227A0050C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_41();

  return v0();
}

uint64_t sub_227A005B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  sub_227A046CC(a3, v21 - v9);
  v11 = sub_227A7276C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_227A04918(v10, &qword_27D7DC5B8, &qword_227AA04D0);
  }

  else
  {
    sub_227A7275C();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_227A726EC();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_227A7253C() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_227A007F8()
{
  v1 = v0;
  if ((*(v0 + 56) & 1) != 0 || *(v0 + 104) < *(v0 + 48))
  {
    sub_2279FFA44();
    OUTLINED_FUNCTION_11_2(v0 + 153, v2);
    *(v0 + 153) = 2;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = sub_227A724BC();
      [v4 sendPingTo:v5 sequence:*(v1 + 120)];

      swift_unknownObjectRelease();
    }

    *(v1 + 144) = 0;
    *(v1 + 152) = 1;
    sub_2279FFAE4();
    return sub_2279FFBC0();
  }

  else
  {
    if (qword_280B54DB0 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_280B54DB0);
    }

    v7 = sub_227A7227C();
    __swift_project_value_buffer(v7, qword_280B54DB8);
    OUTLINED_FUNCTION_13();

    v8 = sub_227A7226C();
    v9 = sub_227A7289C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = OUTLINED_FUNCTION_107();
      v16[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_227A46730(*(v1 + 88), *(v1 + 96), v16);
      _os_log_impl(&dword_227904000, v8, v9, "Ping monitor[%s] stopping due to max iteration reached.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_103();
    }

    sub_227A00AC0(v12, v13);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v14 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      (*(v14 + 8))(*(v1 + 88), *(v1 + 96), ObjectType, v14);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_227A00A00(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v11 = *(a1 + 1);
  v9 = a1[4];
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = 0u;
  *(v4 + 120) = 0u;
  *(v4 + 136) = 0u;
  *(v4 + 152) = 1;
  *(v4 + 40) = 0;
  *(v4 + 48) = v7;
  *(v4 + 56) = v8;
  *(v4 + 64) = v11;
  *(v4 + 80) = v9;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v4 + 88) = a3;
  *(v4 + 96) = a4;
  return v4;
}

uint64_t sub_227A00AC0(uint64_t a1, uint64_t a2)
{
  *(v2 + 136) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 152) = 1;
  result = OUTLINED_FUNCTION_11_2(v2 + 153, a2);
  *(v2 + 153) = 4;
  return result;
}

uint64_t sub_227A00B04()
{
  sub_2279FFA44();
  OUTLINED_FUNCTION_11_2(v0 + 153, v1);
  *(v0 + 153) = 1;
  return sub_227A007F8();
}

void sub_227A00B40(uint64_t a1)
{
  v2 = v1;
  v4 = sub_227A7232C();
  OUTLINED_FUNCTION_92();
  v81 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_2();
  v79 = v8 - v7;
  OUTLINED_FUNCTION_24_0();
  v80 = sub_227A7237C();
  OUTLINED_FUNCTION_92();
  v78 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_2();
  v77 = v12 - v11;
  OUTLINED_FUNCTION_24_0();
  v13 = sub_227A7231C();
  OUTLINED_FUNCTION_92();
  v73 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_2();
  v18 = (v17 - v16);
  sub_227A7239C();
  OUTLINED_FUNCTION_92();
  v75 = v20;
  v76 = v19;
  MEMORY[0x28223BE20](v19);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v74 = &v69 - v24;
  OUTLINED_FUNCTION_24_0();
  v25 = sub_227A7233C();
  OUTLINED_FUNCTION_92();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_2();
  v31 = v30 - v29;
  if (*(v2 + 152))
  {
    if (qword_280B54DB0 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_280B54DB0);
    }

    v32 = sub_227A7227C();
    __swift_project_value_buffer(v32, qword_280B54DB8);
    OUTLINED_FUNCTION_13();

    v81 = sub_227A7226C();
    v33 = sub_227A728BC();

    if (os_log_type_enabled(v81, v33))
    {
      v34 = swift_slowAlloc();
      v35 = OUTLINED_FUNCTION_107();
      aBlock[0] = v35;
      *v34 = 136315394;
      *(v34 + 4) = sub_227A46730(*(v2 + 88), *(v2 + 96), aBlock);
      *(v34 + 12) = 2048;
      *(v34 + 14) = a1;
      _os_log_impl(&dword_227904000, v81, v33, "Ping monitor[%s] error: lastSentTime is nil, discard pong packet for sequence number %ld", v34, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_103();

LABEL_23:
      OUTLINED_FUNCTION_25_0();
      return;
    }

    OUTLINED_FUNCTION_25_0();

    return;
  }

  v36 = *(v2 + 120);
  v72 = a1;
  if (v36 == a1)
  {
    v71 = v4;
    v37 = *(v2 + 144);
    swift_beginAccess();
    *(v2 + 153) = 1;
    sub_2279FFA44();
    sub_227A71BFC();
    v39 = v38 - v37;
    *(v2 + 136) = v39;
    v40 = *(v2 + 112);
    v41 = v40 + 1;
    if (!__OFADD__(v40, 1))
    {
      v42 = v39 + *(v2 + 128) * v40;
      *(v2 + 112) = v41;
      *(v2 + 128) = v42 / v41;
      if (qword_280B54DB0 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_280B54DB0);
      }

      v43 = sub_227A7227C();
      __swift_project_value_buffer(v43, qword_280B54DB8);
      OUTLINED_FUNCTION_13();

      v44 = sub_227A7226C();
      v45 = sub_227A728AC();
      if (OUTLINED_FUNCTION_27_0(v45))
      {
        v46 = swift_slowAlloc();
        v70 = OUTLINED_FUNCTION_107();
        aBlock[0] = v70;
        *v46 = 136316418;
        v47 = sub_227A46730(*(v2 + 88), *(v2 + 96), aBlock);
        v48 = *(v2 + 128);
        *(v46 + 24) = *(v2 + 136);
        *(v46 + 4) = v47;
        *(v46 + 14) = v72;
        v49 = *(v2 + 104);
        *(v46 + 44) = *(v2 + 112);
        *(v46 + 12) = 2048;
        *(v46 + 22) = 2048;
        *(v46 + 32) = 2048;
        *(v46 + 34) = v48;
        *(v46 + 42) = 2048;
        *(v46 + 52) = 2048;
        *(v46 + 54) = v49;

        _os_log_impl(&dword_227904000, v44, v45, "Ping monitor[%s] received pong[%ld], RTT: %f, aRTT: %f, c: %ld/%ld", v46, 0x3Eu);
        __swift_destroy_boxed_opaque_existential_0Tm(v70);
        OUTLINED_FUNCTION_103();
        OUTLINED_FUNCTION_103();
      }

      else
      {
      }

      sub_227A045E4();
      (*(v27 + 104))(v31, *MEMORY[0x277D851C0], v25);
      v72 = sub_227A7295C();
      (*(v27 + 8))(v31, v25);
      sub_227A7238C();
      *v18 = *(v2 + 64);
      v58 = v73;
      (*(v73 + 104))(v18, *MEMORY[0x277D85178], v13);
      v59 = v74;
      MEMORY[0x22AA9FC60](v22, v18);
      (*(v58 + 8))(v18, v13);
      v60 = v76;
      v75 = *(v75 + 8);
      (v75)(v22, v76);
      aBlock[4] = sub_227A04628;
      aBlock[5] = v2;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      OUTLINED_FUNCTION_3_3();
      aBlock[2] = v61;
      aBlock[3] = &block_descriptor_75;
      v62 = _Block_copy(aBlock);

      v63 = v77;
      sub_227A7235C();
      v82 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_2_3();
      sub_227A04980(v64, v65, MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC918, &qword_227AA0EA0);
      sub_227A049C8(&qword_27D7DC920, &qword_27D7DC918, &qword_227AA0EA0);
      v66 = v79;
      v67 = v71;
      sub_227A729FC();
      v68 = v72;
      MEMORY[0x22AAA01C0](v59, v63, v66, v62);
      _Block_release(v62);

      (v81[1].isa)(v66, v67);
      (*(v78 + 8))(v63, v80);
      (v75)(v59, v60);

      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (qword_280B54DB0 != -1)
  {
LABEL_25:
    OUTLINED_FUNCTION_1_1(&qword_280B54DB0);
  }

  v52 = sub_227A7227C();
  __swift_project_value_buffer(v52, qword_280B54DB8);
  OUTLINED_FUNCTION_13();

  v53 = sub_227A7226C();
  v54 = sub_227A728BC();
  if (OUTLINED_FUNCTION_27_0(v54))
  {
    v55 = OUTLINED_FUNCTION_107();
    v56 = OUTLINED_FUNCTION_107();
    aBlock[0] = v56;
    *v55 = 136315650;
    *(v55 + 4) = sub_227A46730(*(v2 + 88), *(v2 + 96), aBlock);
    *(v55 + 12) = 2048;
    *(v55 + 14) = v72;
    *(v55 + 22) = 2048;
    *(v55 + 24) = *(v2 + 120);

    _os_log_impl(&dword_227904000, v53, v54, "Ping monitor[%s] error: sequence number mismatch. %ld != %ld", v55, 0x20u);
    __swift_destroy_boxed_opaque_existential_0Tm(v56);
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_103();

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_227A013FC(uint64_t result)
{
  v1 = *(result + 120);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(result + 120) = v3;
    return sub_227A007F8();
  }

  return result;
}

uint64_t sub_227A01434(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_227A01478()
{
  v0 = objc_allocWithZone(type metadata accessor for TransportMonitorPlayerStat());

  OUTLINED_FUNCTION_87();
  return TransportMonitorPlayerStat.init(monitoring:latency:averageLatency:sentCount:receivedCount:)();
}

uint64_t TransportPeerMonitor.deinit()
{
  sub_22790D450(v0 + 16);
  sub_22790D450(v0 + 32);

  return v0;
}

uint64_t TransportPeerMonitor.__deallocating_deinit()
{
  TransportPeerMonitor.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t TransportMonitor.monitors.getter()
{
  OUTLINED_FUNCTION_9_2();
  swift_beginAccess();
}

uint64_t TransportMonitor.monitors.setter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR___GKTransportMonitor_monitors;
  OUTLINED_FUNCTION_11_2(v2 + OBJC_IVAR___GKTransportMonitor_monitors, a2);
  *(v2 + v4) = a1;
}

uint64_t TransportMonitor.clientDelegate.getter()
{
  OUTLINED_FUNCTION_9_2();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t TransportMonitor.clientDelegate.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11_2(v2 + OBJC_IVAR___GKTransportMonitor_clientDelegate, a2);
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_227A01784@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void (*TransportMonitor.clientDelegate.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___GKTransportMonitor_clientDelegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_227A018C0;
}

void sub_227A018C0(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id sub_227A01940(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_227A7291C();
  v17 = *(v3 - 8);
  v18 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227A728FC();
  MEMORY[0x28223BE20](v6);
  v7 = sub_227A7237C();
  MEMORY[0x28223BE20](v7 - 8);
  v16 = *a1;
  v15 = *(a1 + 8);
  v14 = *(a1 + 1);
  v8 = a1[4];
  v12 = OBJC_IVAR___GKTransportMonitor_serialQueue;
  v13 = v8;
  v11[1] = sub_227A045E4();
  sub_227A7236C();
  v21 = MEMORY[0x277D84F90];
  sub_227A04980(&qword_27D7DC830, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC838, &unk_227AA0C10);
  sub_227A049C8(&qword_27D7DC840, &qword_27D7DC838, &unk_227AA0C10);
  sub_227A729FC();
  (*(v17 + 104))(v5, *MEMORY[0x277D85260], v18);
  *&v1[v12] = sub_227A7294C();
  *&v1[OBJC_IVAR___GKTransportMonitor_reportTask] = 0;
  *&v1[OBJC_IVAR___GKTransportMonitor_monitors] = MEMORY[0x277D84F98];
  swift_unknownObjectWeakInit();
  v9 = &v1[OBJC_IVAR___GKTransportMonitor_configuration];
  *v9 = v16;
  v9[8] = v15;
  *(v9 + 1) = v14;
  *(v9 + 4) = v13;
  v20.receiver = v1;
  v20.super_class = ObjectType;
  return objc_msgSendSuper2(&v20, sel_init);
}

id sub_227A01C40()
{
  v14 = MEMORY[0x277D84F90];
  v1 = *&v0[OBJC_IVAR___GKTransportMonitor_serialQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v14;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_227A04978;
  *(v3 + 24) = v2;
  aBlock[4] = sub_227A04A34;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2279FF6D4;
  aBlock[3] = &block_descriptor_106;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v14;
    v9 = type metadata accessor for TransportMonitorStat();
    v10 = objc_allocWithZone(v9);
    *&v10[OBJC_IVAR___GKTransportMonitorStat_playerStats] = v8;
    v12.receiver = v10;
    v12.super_class = v9;

    v11 = objc_msgSendSuper2(&v12, sel_init);

    return v11;
  }

  return result;
}

uint64_t sub_227A01DFC(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR___GKTransportMonitor_monitors;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v8 = *(v5 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      do
      {
LABEL_8:

        sub_227A01478();
        MEMORY[0x22AA9FF30]();
        if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_227A726BC();
        }

        v8 &= v8 - 1;
        sub_227A726DC();
      }

      while (v8);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227A01F60()
{
  v1 = sub_227A7232C();
  v12 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227A7237C();
  v4 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR___GKTransportMonitor_serialQueue);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_227A0473C;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_227A01434;
  aBlock[3] = &block_descriptor_89;
  v8 = _Block_copy(aBlock);

  sub_227A7235C();
  v13 = MEMORY[0x277D84F90];
  sub_227A04980(&qword_27D7DC910, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC918, &qword_227AA0EA0);
  sub_227A049C8(&qword_27D7DC920, &qword_27D7DC918, &qword_227AA0EA0);
  sub_227A729FC();
  MEMORY[0x22AAA01F0](0, v6, v3, v8);
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

char *sub_227A0223C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = OBJC_IVAR___GKTransportMonitor_reportTask;
    if (*&result[OBJC_IVAR___GKTransportMonitor_reportTask])
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
      sub_227A727DC();
    }

    v7 = sub_227A7276C();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v8;
    v10 = sub_227A005B8(0, 0, v3, &unk_227AA10C0, v9);
    sub_227A04918(v3, &qword_27D7DC5B8, &qword_227AA04D0);
    *&v5[v6] = v10;
  }

  return result;
}

uint64_t sub_227A023E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_227A72BFC();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227A024A4, 0, 0);
}

uint64_t sub_227A024A4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_9_2();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    sub_227A46FBC(*(Strong + OBJC_IVAR___GKTransportMonitor_configuration + 32));
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_18_1(qword_227AA40D0);
    v7 = v2;
    v3 = swift_task_alloc();
    *(v0 + 104) = v3;
    *v3 = v0;
    v3[1] = sub_227A025BC;
    v4 = OUTLINED_FUNCTION_5_0();

    return v7(v4);
  }

  else
  {

    OUTLINED_FUNCTION_23();

    return v6();
  }
}

uint64_t sub_227A025BC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_36();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  *(v4 + 112) = v0;

  v5 = OUTLINED_FUNCTION_87();
  v6(v5);
  if (v0)
  {
    v7 = sub_227A028DC;
  }

  else
  {
    v7 = sub_227A02718;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_227A02718()
{
  if (sub_227A727FC())
  {
    v1 = *(v0 + 96);
  }

  else
  {
    v2 = sub_227A01C40();
    OUTLINED_FUNCTION_9_2();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong monitorStatsUpdated_];
      swift_unknownObjectRelease();
    }

    if (qword_280B54DB0 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_280B54DB0);
    }

    v4 = sub_227A7227C();
    __swift_project_value_buffer(v4, qword_280B54DB8);
    v5 = v2;
    v6 = sub_227A7226C();
    v7 = sub_227A728AC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&dword_227904000, v6, v7, "Monitor reported stats: %@", v8, 0xCu);
      sub_227A04918(v9, &unk_27D7DD270, &qword_227AA10E0);
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_103();
    }

    v1 = *(v0 + 96);

    sub_227A01F60();
  }

  OUTLINED_FUNCTION_23();

  return v11();
}

uint64_t sub_227A028DC()
{

  OUTLINED_FUNCTION_41();

  return v1();
}

id TransportMonitor.init(maxIteration:pingInterval:pingTimeout:reportFrequency:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v9 = 10;
  if (a1 > 10)
  {
    v9 = a1;
  }

  v10 = 500;
  if (a2 > 500)
  {
    v10 = a2;
  }

  v11.i64[0] = a3;
  v11.i64[1] = a4;
  v12 = vbslq_s8(vcgtq_s64(xmmword_227AA0E70, v11), v11, xmmword_227AA0E70);
  v16 = v9;
  v17 = 0;
  v18 = v10;
  v19 = vbslq_s8(vcgtq_s64(v12, xmmword_227AA0E80), v12, xmmword_227AA0E80);
  v13 = objc_allocWithZone(ObjectType);
  sub_227A01940(&v16);
  OUTLINED_FUNCTION_13();
  v14 = swift_getObjectType();
  OUTLINED_FUNCTION_26_0(v14);
  return v13;
}

id TransportMonitor.init(pingInterval:pingTimeout:reportFrequency:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = 500;
  if (a1 > 500)
  {
    v7 = a1;
  }

  v8.i64[0] = a2;
  v8.i64[1] = a3;
  v9 = vbslq_s8(vcgtq_s64(xmmword_227AA0E70, v8), v8, xmmword_227AA0E70);
  v13 = 0;
  v14 = 1;
  v15 = v7;
  v16 = vbslq_s8(vcgtq_s64(v9, xmmword_227AA0E80), v9, xmmword_227AA0E80);
  v10 = objc_allocWithZone(ObjectType);
  sub_227A01940(&v13);
  OUTLINED_FUNCTION_13();
  v11 = swift_getObjectType();
  OUTLINED_FUNCTION_26_0(v11);
  return v10;
}

id TransportMonitor.__allocating_init(testConfiguration:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 32);
  v6 = *a1;
  v7 = v2;
  v8 = *(a1 + 16);
  v9 = v3;
  v4 = objc_allocWithZone(v1);
  return sub_227A01940(&v6);
}

Swift::Void __swiftcall TransportMonitor.startMonitor(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *&v1[OBJC_IVAR___GKTransportMonitor_serialQueue];
  OUTLINED_FUNCTION_19_0();
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = countAndFlagsBits;
  v5[4] = object;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_227A030D0;
  *(v6 + 24) = v5;
  v10[4] = sub_227A030DC;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  OUTLINED_FUNCTION_8_4();
  v10[2] = v7;
  v10[3] = &block_descriptor_2;
  v8 = _Block_copy(v10);
  v9 = v1;

  dispatch_sync(v4, v8);
  _Block_release(v8);
  LOBYTE(object) = swift_isEscapingClosureAtFileLocation();

  if (object)
  {
    __break(1u);
  }

  else
  {
    sub_227A01F60();
  }
}

void sub_227A02D7C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = OBJC_IVAR___GKTransportMonitor_monitors;
  swift_beginAccess();
  v7 = sub_2279F9168(a2, a3, *(a1 + v6));
  swift_endAccess();
  if (v7)
  {

    if (qword_280B54DB0 != -1)
    {
      swift_once();
    }

    v8 = sub_227A7227C();
    __swift_project_value_buffer(v8, qword_280B54DB8);
    v9 = sub_227A7226C();
    v10 = sub_227A728BC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_227904000, v9, v10, "Monitor[monitoring] already started. Return.", v11, 2u);
      MEMORY[0x22AAA1930](v11, -1, -1);
    }
  }

  else
  {
    if (qword_280B54DB0 != -1)
    {
      swift_once();
    }

    v12 = sub_227A7227C();
    __swift_project_value_buffer(v12, qword_280B54DB8);

    v13 = sub_227A7226C();
    v14 = sub_227A7289C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_227A46730(a2, a3, &v22);
      _os_log_impl(&dword_227904000, v13, v14, "Starting monitor for %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x22AAA1930](v16, -1, -1);
      MEMORY[0x22AAA1930](v15, -1, -1);
    }

    v17 = *(a1 + OBJC_IVAR___GKTransportMonitor_configuration + 8);
    v18 = *(a1 + OBJC_IVAR___GKTransportMonitor_configuration + 32);
    v22 = *(a1 + OBJC_IVAR___GKTransportMonitor_configuration);
    v23 = v17;
    v24 = *(a1 + OBJC_IVAR___GKTransportMonitor_configuration + 16);
    v25 = v18;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    type metadata accessor for TransportPeerMonitor();
    v20 = swift_allocObject();

    sub_227A00A00(&v22, Strong, a2, a3);
    *(v20 + 24) = &protocol witness table for TransportMonitor;
    swift_unknownObjectWeakAssign();
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v21 = *(a1 + v6);
    sub_227A62510(v20, a2, a3);
    *(a1 + v6) = v21;
    swift_endAccess();
    sub_227A00B04();
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall TransportMonitor.stopMonitor(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_227A7232C();
  OUTLINED_FUNCTION_92();
  v22 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_2();
  v8 = v7 - v6;
  v21 = sub_227A7237C();
  OUTLINED_FUNCTION_92();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_2();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_110();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_19_0();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = countAndFlagsBits;
  v16[4] = object;
  v27 = sub_227A0365C;
  v28 = v16;
  OUTLINED_FUNCTION_7_4();
  v24 = 1107296256;
  OUTLINED_FUNCTION_3_3();
  v25 = v17;
  v26 = &block_descriptor_12;
  v18 = _Block_copy(aBlock);

  sub_227A7235C();
  OUTLINED_FUNCTION_2_3();
  sub_227A04980(v19, v20, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC918, &qword_227AA0EA0);
  sub_227A049C8(&qword_27D7DC920, &qword_27D7DC918, &qword_227AA0EA0);
  sub_227A729FC();
  MEMORY[0x22AAA01F0](0, v14, v8, v18);
  _Block_release(v18);
  (*(v22 + 8))(v8, v3);
  (*(v10 + 8))(v14, v21);
}

void sub_227A033DC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_280B54DB0 != -1)
    {
      swift_once();
    }

    v7 = sub_227A7227C();
    __swift_project_value_buffer(v7, qword_280B54DB8);

    v8 = sub_227A7226C();
    v9 = sub_227A7289C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_227A46730(a2, a3, v16);
      _os_log_impl(&dword_227904000, v8, v9, "Stopping monitor for %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x22AAA1930](v11, -1, -1);
      MEMORY[0x22AAA1930](v10, -1, -1);
    }

    v12 = OBJC_IVAR___GKTransportMonitor_monitors;
    swift_beginAccess();
    if (sub_2279F9168(a2, a3, *&v6[v12]))
    {
      v13 = swift_endAccess();
      sub_227A00AC0(v13, v14);
    }

    else
    {
      swift_endAccess();
    }

    swift_beginAccess();
    sub_227A3F780(a2, a3);
    swift_endAccess();

    if (*(*&v6[v12] + 16))
    {
    }

    else
    {
      v15 = OBJC_IVAR___GKTransportMonitor_reportTask;
      if (*&v6[OBJC_IVAR___GKTransportMonitor_reportTask])
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
        sub_227A727DC();
      }

      *&v6[v15] = 0;
    }
  }
}

Swift::Void __swiftcall TransportMonitor.stopMonitoringAll()()
{
  v1 = v0;
  if (qword_280B54DB0 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = sub_227A7227C();
    __swift_project_value_buffer(v2, qword_280B54DB8);
    v3 = sub_227A7226C();
    v4 = sub_227A7289C();
    if (OUTLINED_FUNCTION_27_0(v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_227904000, v3, v4, "Stopping monitoring all", v5, 2u);
      OUTLINED_FUNCTION_103();
    }

    v20 = MEMORY[0x277D84F90];
    v6 = *(v1 + OBJC_IVAR___GKTransportMonitor_serialQueue);
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    *(v7 + 24) = &v20;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_227A04230;
    *(v8 + 24) = v7;
    aBlock[4] = sub_227A04A34;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_8_4();
    aBlock[2] = v9;
    aBlock[3] = &block_descriptor_22;
    v10 = _Block_copy(aBlock);
    v11 = v1;

    dispatch_sync(v6, v10);
    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      break;
    }

    v1 = v20;
    v13 = v20[2];

    v14 = 0;
    for (i = v1 + 5; ; i += 2)
    {
      if (v13 == v14)
      {

        return;
      }

      if (v14 >= v1[2])
      {
        break;
      }

      ++v14;
      v17 = *(i - 1);
      v16 = *i;

      v18._countAndFlagsBits = v17;
      v18._object = v16;
      TransportMonitor.stopMonitor(_:)(v18);
    }

    __break(1u);
LABEL_11:
    OUTLINED_FUNCTION_1_1(&qword_280B54DB0);
  }

  __break(1u);
}

uint64_t sub_227A038EC(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();

  sub_2279FF518(v3, a2);
}

Swift::Void __swiftcall TransportMonitor.receivedPing(_:sequenceNumber:)(Swift::String _, Swift::Int sequenceNumber)
{
  OUTLINED_FUNCTION_9_2();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_227A724BC();
    [v4 sendPongTo:v5 sequence:sequenceNumber];

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall TransportMonitor.receivedPong(_:sequenceNumber:)(Swift::String _, Swift::Int sequenceNumber)
{
  countAndFlagsBits = _._countAndFlagsBits;
  v36 = sequenceNumber;
  object = _._object;
  v40 = sub_227A7232C();
  OUTLINED_FUNCTION_92();
  v42 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_2();
  v38 = v7 - v6;
  OUTLINED_FUNCTION_24_0();
  v41 = sub_227A7237C();
  OUTLINED_FUNCTION_92();
  v39 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_2();
  v12 = v11 - v10;
  v13 = sub_227A71C2C();
  OUTLINED_FUNCTION_92();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  v19 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v34 - v21;
  sub_227A71C1C();
  v37 = *(v2 + OBJC_IVAR___GKTransportMonitor_serialQueue);
  OUTLINED_FUNCTION_110();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v15 + 16))(v19, v22, v13);
  v24 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v25 = swift_allocObject();
  v27 = countAndFlagsBits;
  v26 = v36;
  *(v25 + 2) = v23;
  *(v25 + 3) = v27;
  *(v25 + 4) = object;
  *(v25 + 5) = v26;
  (*(v15 + 32))(&v25[v24], v19, v13);
  v48 = sub_227A04238;
  v49 = v25;
  OUTLINED_FUNCTION_7_4();
  v45 = 1107296256;
  OUTLINED_FUNCTION_3_3();
  v46 = v28;
  v47 = &block_descriptor_29_0;
  v29 = _Block_copy(aBlock);

  sub_227A7235C();
  v43 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_2_3();
  sub_227A04980(v30, v31, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC918, &qword_227AA0EA0);
  sub_227A049C8(&qword_27D7DC920, &qword_27D7DC918, &qword_227AA0EA0);
  v32 = v38;
  v33 = v40;
  sub_227A729FC();
  MEMORY[0x22AAA01F0](0, v12, v32, v29);
  _Block_release(v29);
  (*(v42 + 8))(v32, v33);
  (*(v39 + 8))(v12, v41);
  (*(v15 + 8))(v22, v13);
}

void sub_227A03E0C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = OBJC_IVAR___GKTransportMonitor_monitors;
    swift_beginAccess();
    if (sub_2279F9168(a2, a3, *&v8[v9]))
    {
      swift_endAccess();
      sub_227A00B40(a4);
    }

    else
    {
      swift_endAccess();
      if (qword_280B54DB0 != -1)
      {
        swift_once();
      }

      v10 = sub_227A7227C();
      __swift_project_value_buffer(v10, qword_280B54DB8);

      v11 = sub_227A7226C();
      v12 = sub_227A728BC();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v15[0] = v14;
        *v13 = 136315138;
        *(v13 + 4) = sub_227A46730(a2, a3, v15);
        _os_log_impl(&dword_227904000, v11, v12, "Monitor received pong from unknown player %s. Return.", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v14);
        MEMORY[0x22AAA1930](v14, -1, -1);
        MEMORY[0x22AAA1930](v13, -1, -1);
      }
    }
  }
}

uint64_t sub_227A0400C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = sub_227A724EC();
  v10 = v9;
  v11 = a1;
  a5(v8, v10, a4);
}

id TransportMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TransportMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_227A041C0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_227A724EC();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

void sub_227A04238()
{
  sub_227A71C2C();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];

  sub_227A03E0C(v1, v2, v3, v4);
}

unint64_t sub_227A042A4()
{
  result = qword_27D7DC928;
  if (!qword_27D7DC928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DC928);
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

uint64_t sub_227A0430C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227A0432C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TransportPeerMonitorState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TransportPeerMonitorState(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        break;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_227A045E4()
{
  result = qword_27D7DC828;
  if (!qword_27D7DC828)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7DC828);
  }

  return result;
}

uint64_t sub_227A04630()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_16_1(v1);

  return sub_2279FFCE4(v2, v3, v4, v5);
}

uint64_t sub_227A046CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_8Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x2821FE8E8](v4);
}

uint64_t sub_227A04798()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_16_1(v1);

  return sub_227A023E4(v2, v3, v4, v5);
}

uint64_t sub_227A04834()
{
  OUTLINED_FUNCTION_36();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return v3();
}

uint64_t sub_227A04918(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_227A04980(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227A049C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t OUTLINED_FUNCTION_11_2(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_21_0()
{

  return MEMORY[0x2822008D8]();
}

uint64_t OUTLINED_FUNCTION_26_0(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

BOOL OUTLINED_FUNCTION_27_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t static InviteMessageSupport.makeInviteMessageDone(properties:)(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v32 = xmmword_227AA0C00;
  sub_227A04F34(4);
  if (a1)
  {
    v2 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC940, &qword_227AA10D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227AA00F0;
    *(inited + 32) = 0x69747265706F7270;
    *(inited + 40) = 0xEA00000000007365;
    *(inited + 48) = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC948, &qword_227AA10D8);
    sub_227A7243C();
    v4 = sub_227A7240C();

    v31 = 0;
    v5 = [v2 dataWithPropertyList:v4 format:200 options:0 error:&v31];

    v6 = v31;
    if (v5)
    {
      v7 = sub_227A71B9C();
      v9 = v8;

      sub_227A71BAC();
      sub_2279E3FA4(v7, v9);
    }

    else
    {
      v14 = v6;
      v15 = sub_227A71A5C();

      swift_willThrow();
      if (qword_280B551E0 != -1)
      {
        OUTLINED_FUNCTION_3_1(&qword_280B551E0);
      }

      v16 = sub_227A7227C();
      __swift_project_value_buffer(v16, qword_280B551E8);
      v17 = v15;
      v18 = sub_227A7226C();
      v19 = sub_227A728BC();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        v22 = v15;
        v23 = _swift_stdlib_bridgeErrorToNSError();
        *(v20 + 4) = v23;
        *v21 = v23;
        OUTLINED_FUNCTION_3_4(&dword_227904000, v24, v25, "Failed to serialize match properties when making GKInviteMessageDone, error: %@");
        sub_227A04918(v21, &unk_27D7DD270, &qword_227AA10E0);
        OUTLINED_FUNCTION_103();
        OUTLINED_FUNCTION_103();
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_280B54DB0 != -1)
    {
      swift_once();
    }

    v10 = sub_227A7227C();
    __swift_project_value_buffer(v10, qword_280B54DB8);
    v11 = sub_227A728DC();
    v12 = sub_227A7226C();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_227904000, v12, v11, "No match provided when making GKInviteMessageDone, skipping properties.", v13, 2u);
      OUTLINED_FUNCTION_103();
    }
  }

  v26 = OUTLINED_FUNCTION_115();
  sub_2279E3EE4(v26, v27);
  v28 = OUTLINED_FUNCTION_115();
  sub_2279E3FA4(v28, v29);
  return OUTLINED_FUNCTION_115();
}

uint64_t sub_227A04F34(int a1)
{
  v3[5] = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3[3] = MEMORY[0x277D838B0];
  v3[4] = MEMORY[0x277CC9C18];
  v3[0] = &v2;
  v3[1] = v3;
  __swift_project_boxed_opaque_existential_1(v3, MEMORY[0x277D838B0]);
  sub_227A71B6C();
  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

uint64_t static InviteMessageSupport.extractProperties(data:)(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  v4 = a1;
  v5 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v6) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v6 = v6;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_32;
    case 2uLL:
      v8 = *(a1 + 16);
      v7 = *(a1 + 24);
      v9 = __OFSUB__(v7, v8);
      v6 = v7 - v8;
      if (!v9)
      {
        goto LABEL_6;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    case 3uLL:
      return v5;
    default:
      v6 = BYTE6(a2);
LABEL_6:
      if (v6 < 5)
      {
        return 0;
      }

      if (v2 == 2)
      {
        a1 = *(a1 + 16);
      }

      else
      {
        if (v2 != 1)
        {
          goto LABEL_13;
        }

        if (a1 >> 32 < a1)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          OUTLINED_FUNCTION_3_1(&qword_280B551E0);
LABEL_26:
          v37 = sub_227A7227C();
          __swift_project_value_buffer(v37, qword_280B551E8);
          v38 = sub_227A7226C();
          v39 = sub_227A728BC();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            *v40 = 0;
            _os_log_impl(&dword_227904000, v38, v39, "Failed to cast match properties when reading GKInviteMessageDone", v40, 2u);
            OUTLINED_FUNCTION_103();
          }

          return 0;
        }

        a1 = a1;
      }

      LODWORD(a1) = sub_227A05960(a1);
LABEL_13:
      if (a1 != 4)
      {
        return 0;
      }

      v10 = objc_opt_self();
      v11 = OUTLINED_FUNCTION_115();
      sub_2279E3EE4(v11, v12);
      sub_227A05574(4uLL, v4, a2, &v43);
      v13 = v43;
      v14 = sub_227A71B8C();
      sub_2279E3FA4(v13, *(&v13 + 1));
      *&v43 = 0;
      v15 = [v10 propertyListWithData:v14 options:0 format:0 error:&v43];

      if (v15)
      {
        v16 = v43;
        sub_227A729EC();
        swift_unknownObjectRelease();
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC950, qword_227AA10E8);
        if (OUTLINED_FUNCTION_4_2(v17, v18, v19, v17, v20))
        {
          sub_2279F9104(v42, &v43, 0x69747265706F7270, 0xEA00000000007365);

          if (v44)
          {
            v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC948, &qword_227AA10D8);
            if (OUTLINED_FUNCTION_4_2(v21, v22, v23, v21, v24))
            {
              return v42;
            }
          }

          else
          {
            sub_227A04918(&v43, &qword_27D7DC610, &qword_227AA0590);
          }
        }

        if (qword_280B551E0 == -1)
        {
          goto LABEL_26;
        }

        goto LABEL_34;
      }

      v25 = v43;
      v26 = sub_227A71A5C();

      swift_willThrow();
      if (qword_280B551E0 != -1)
      {
        OUTLINED_FUNCTION_3_1(&qword_280B551E0);
      }

      v27 = sub_227A7227C();
      __swift_project_value_buffer(v27, qword_280B551E8);
      v28 = v26;
      v29 = sub_227A7226C();
      v30 = sub_227A728BC();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v31 = 138412290;
        v33 = v26;
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v31 + 4) = v34;
        *v32 = v34;
        OUTLINED_FUNCTION_3_4(&dword_227904000, v35, v36, "Failed to deserialize match properties when reading GKInviteMessageDone, error: %@");
        sub_227A04918(v32, &unk_27D7DD270, &qword_227AA10E0);
        OUTLINED_FUNCTION_103();
        OUTLINED_FUNCTION_103();
      }

      else
      {
      }

      return 0;
  }
}

unint64_t sub_227A054A0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_227A7256C();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_227A7260C();

      return v7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_227A05574@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a3 >> 62;
    v7 = result;
    v9 = 0;
    v10 = BYTE6(a3);
    v11 = 0;
    switch(a3 >> 62)
    {
      case 1uLL:
        v11 = a2;
        v9 = a2 >> 32;
        break;
      case 2uLL:
        v11 = *(a2 + 16);
        v9 = *(a2 + 24);
        break;
      case 3uLL:
        break;
      default:
        v11 = 0;
        v9 = BYTE6(a3);
        break;
    }

    v12 = sub_227A05A58(v11, v9, a2, a3);
    if (!v7 || v12 >= v7)
    {
      v13 = sub_227A059F0(v11, v7, a2, a3);
      v14 = 0;
      switch(v5)
      {
        case 1:
          v14 = a2 >> 32;
          break;
        case 2:
          v14 = *(a2 + 24);
          break;
        case 3:
          break;
        default:
          v14 = v10;
          break;
      }

      if (v14 < v13)
      {
        __break(1u);
      }
    }

    v15 = sub_227A71B7C();
    v17 = v16;
    result = sub_2279E3FA4(a2, a3);
    *a4 = v15;
    a4[1] = v17;
  }

  return result;
}

id InviteMessageSupport.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InviteMessageSupport.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id InviteMessageSupport.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_227A0588C(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_227A058EC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_227A05960(uint64_t a1)
{
  v2 = sub_227A719FC();
  if (v2)
  {
    v3 = v2;
    result = sub_227A71A1C();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = (a1 - result + v3);
  }

  else
  {
    v5 = 0;
  }

  result = sub_227A71A0C();
  if (v5)
  {
    return *v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_227A059F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v8)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v5 = 0;
  v6 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v6 = a3;
      v5 = a3 >> 32;
      break;
    case 2uLL:
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v6 = 0;
      v5 = BYTE6(a4);
      break;
  }

  if (v5 >= result)
  {
    v8 = __OFSUB__(result, v6);
    v7 = result - v6 < 0;
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  if (v7 != v8)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_227A05A58(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = 0;
  v5 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v4 = a3 >> 32;
      v5 = a3;
      break;
    case 2uLL:
      v5 = *(a3 + 16);
      v4 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v5 = 0;
      v4 = BYTE6(a4);
      break;
  }

  if (v4 < result || v5 > result)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = 0;
  v8 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v7 = a3 >> 32;
      v8 = a3;
      break;
    case 2uLL:
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v8 = 0;
      v7 = BYTE6(a4);
      break;
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_21;
  }

  v10 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v10)
  {
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t ACAccount.GKConstants.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_227A72CFC();

  v6 = 12;
  if (v4 < 0xC)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t ACAccount.GKConstants.rawValue.getter()
{
  result = 0x7361696C61;
  switch(*v0)
  {
    case 1:
      result = 0x6D614E7473726966;
      break;
    case 2:
      result = 0x656D614E7473616CLL;
      break;
    case 3:
      result = 0x64692D656C707061;
      break;
    case 4:
      result = 7761509;
      break;
    case 5:
      result = 1684632420;
      break;
    case 6:
      result = 0x44495344746C61;
      break;
    case 7:
      result = 0x74616E7265746C61;
      break;
    case 8:
      result = 0x692D726579616C70;
      break;
    case 9:
      v2 = 0x742D68747561;
      goto LABEL_6;
    case 0xA:
      result = 0xD000000000000011;
      break;
    case 0xB:
      v2 = 0x54766E454B47;
LABEL_6:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6B6F000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227A05CF8@<X0>(uint64_t *a1@<X8>)
{
  result = ACAccount.GKConstants.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t ACAccount.gkScope(for:)(uint64_t a1)
{
  if (sub_227A065F0(0xD000000000000011, 0x8000000227A96BA0, a1, v1))
  {
    sub_227A729EC();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    sub_22790AB88(v9);
    goto LABEL_8;
  }

  sub_227A0665C();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v4 = 0;
    v3 = 1;
    return v4 | (v3 << 32);
  }

  v2 = [v6 unsignedIntValue];

  v3 = 0;
  v4 = v2;
  return v4 | (v3 << 32);
}

void Array<A>.gkExistingAccount(matchingAltDSID:matchingDSID:matchingUserName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v11 = sub_227A065CC(a7);
  for (i = 0; v11 != i; ++i)
  {
    if ((a7 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x22AAA03F0](i, a7);
    }

    else
    {
      if (i >= *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v13 = *(a7 + 8 * i + 32);
    }

    v14 = v13;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v19 = v13;
    sub_227A05F04(&v19, a5, a6, a1, a2, a3, a4);
    if (v15)
    {
      return;
    }
  }
}

void sub_227A05F04(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a1;
  v14 = sub_227A066A0(*a1);
  if (v15)
  {
    if (v14 == a2 && v15 == a3)
    {
    }

    else
    {
      v17 = sub_227A72E5C();

      if ((v17 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    if (qword_27D7DC4C0 != -1)
    {
      swift_once();
    }

    v18 = sub_227A7227C();
    __swift_project_value_buffer(v18, qword_27D7DE1B0);
    v19 = v13;
    v20 = sub_227A7226C();
    v21 = sub_227A728DC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v47 = v23;
      *v22 = 136315138;
      v24 = sub_227A066A0(v19);
      v26 = v25;

      if (v26)
      {
        v27 = sub_227A46730(v24, v26, &v47);

        *(v22 + 4) = v27;
        v28 = "Found existing account '%s' with production token";
LABEL_16:
        _os_log_impl(&dword_227904000, v20, v21, v28, v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v23);
        MEMORY[0x22AAA1930](v23, -1, -1);
        MEMORY[0x22AAA1930](v22, -1, -1);
LABEL_54:

        return;
      }

      __break(1u);
      goto LABEL_56;
    }

LABEL_53:

    goto LABEL_54;
  }

LABEL_7:
  if (a5)
  {
    if (sub_227A06704(0x44495344746C61, 0xE700000000000000, v13))
    {
      sub_227A729EC();
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = 0u;
      v46 = 0u;
    }

    v47 = v45;
    v48 = v46;
    if (*(&v46 + 1))
    {
      if (swift_dynamicCast())
      {
        if (v43 == a4 && v44 == a5)
        {

          goto LABEL_42;
        }

        v30 = sub_227A72E5C();

        if (v30)
        {
LABEL_42:
          if (qword_27D7DC4C0 != -1)
          {
            swift_once();
          }

          v33 = sub_227A7227C();
          __swift_project_value_buffer(v33, qword_27D7DE1B0);
          v19 = v13;
          v20 = sub_227A7226C();
          v21 = sub_227A728DC();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            *&v47 = v23;
            *v22 = 136315138;
            v34 = sub_227A066A0(v19);
            v36 = v35;

            if (v36)
            {
              v37 = sub_227A46730(v34, v36, &v47);

              *(v22 + 4) = v37;
              v28 = "Found a gamecenter ACAccount (%s) with same altDSID as incoming account.";
              goto LABEL_16;
            }

LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            return;
          }

          goto LABEL_53;
        }
      }
    }

    else
    {
      sub_22790AB88(&v47);
    }
  }

  if (a7)
  {
    if (sub_227A06704(1684632420, 0xE400000000000000, v13))
    {
      sub_227A729EC();
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = 0u;
      v46 = 0u;
    }

    v47 = v45;
    v48 = v46;
    if (*(&v46 + 1))
    {
      if (swift_dynamicCast())
      {
        if (v43 == a6 && v44 == a7)
        {

          goto LABEL_48;
        }

        v32 = sub_227A72E5C();

        if (v32)
        {
LABEL_48:
          if (qword_27D7DC4C0 != -1)
          {
            swift_once();
          }

          v38 = sub_227A7227C();
          __swift_project_value_buffer(v38, qword_27D7DE1B0);
          v19 = v13;
          v20 = sub_227A7226C();
          v21 = sub_227A728DC();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            *&v47 = v23;
            *v22 = 136315138;
            v39 = sub_227A066A0(v19);
            v41 = v40;

            if (v41)
            {
              v42 = sub_227A46730(v39, v41, &v47);

              *(v22 + 4) = v42;
              v28 = "Found a gamecenter ACAccount (%s) with same dsid as incoming account.";
              goto LABEL_16;
            }

            goto LABEL_57;
          }

          goto LABEL_53;
        }
      }
    }

    else
    {
      sub_22790AB88(&v47);
    }
  }
}

void Array<A>.gkHasPrimaryAccount(in:)(uint64_t a1, unint64_t a2)
{
  v3 = sub_227A065CC(a2);
  for (i = 0; v3 != i; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x22AAA03F0](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v5 = *(a2 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    v7 = [v5 credential];
    if (!v7)
    {
      goto LABEL_23;
    }

    v8 = sub_227A06768(v7);
    if (!v9)
    {
LABEL_14:

      continue;
    }

    if (v8 == 0x3E656E6F673CLL && v9 == 0xE600000000000000)
    {
    }

    else
    {
      v11 = sub_227A72E5C();

      if (v11)
      {
        goto LABEL_14;
      }

      v12 = ACAccount.gkScope(for:)(a1);

      if ((v12 & 0x100000004) == 4)
      {
        return;
      }
    }
  }
}

uint64_t sub_227A065CC(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_227A72A4C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

id sub_227A065F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_227A724BC();

  v7 = [a4 _gkPropertyForKey_environment_];

  return v7;
}

unint64_t sub_227A0665C()
{
  result = qword_27D7DC958;
  if (!qword_27D7DC958)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7DC958);
  }

  return result;
}

uint64_t sub_227A066A0(void *a1)
{
  v1 = [a1 username];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_227A724EC();

  return v3;
}

id sub_227A06704(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_227A724BC();

  v5 = [a3 accountPropertyForKey_];

  return v5;
}

uint64_t sub_227A06768(void *a1)
{
  v2 = [a1 token];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_227A724EC();

  return v3;
}

unint64_t sub_227A067DC()
{
  result = qword_27D7DC960;
  if (!qword_27D7DC960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DC960);
  }

  return result;
}

uint64_t _s11GKConstantsOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s11GKConstantsOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
        break;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}
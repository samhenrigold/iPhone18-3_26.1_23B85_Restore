id sub_1CA368890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1CA94C368();

  if (a4)
  {
    sub_1CA25B3D0(0, &unk_1EC444CA0, off_1E836F4B8);
    v8 = sub_1CA94C648();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithName:v7 variableProvider:a3 aggrandizements:v8];

  swift_unknownObjectRelease();
  return v9;
}

BOOL sub_1CA368948(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1CA94D918();
  sub_1CA94C458();
  sub_1CA94D968();
  OUTLINED_FUNCTION_60_0();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(v7 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_1CA94D7F8() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;
      sub_1CA94C218();
      return v12 == 0;
    }

    v8 = v11 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v3;
  sub_1CA94C218();
  sub_1CA369F28(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v19;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

void sub_1CA368A90()
{
  OUTLINED_FUNCTION_37_0();
  v3 = v2;
  v24 = v4;
  v5 = sub_1CA94ADC8();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_62();
  v23 = v0;
  v9 = *v0;
  OUTLINED_FUNCTION_9_10();
  sub_1CA36DABC(v10, v11);
  sub_1CA94C288();
  v25 = v9;
  v26 = v9 + 56;
  OUTLINED_FUNCTION_60_0();
  v14 = ~v13;
  while (1)
  {
    v15 = v12 & v14;
    if (((1 << (v12 & v14)) & *(v26 + (((v12 & v14) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      (*(v7 + 16))(v1, v3, v5);
      v27 = *v23;
      sub_1CA36A090(v1, v15, isUniquelyReferenced_nonNull_native);
      *v23 = v27;
      (*(v7 + 32))(v24, v3, v5);
      goto LABEL_7;
    }

    v16 = *(v7 + 72) * v15;
    v17 = *(v7 + 16);
    v17(v1, *(v25 + 48) + v16, v5);
    OUTLINED_FUNCTION_9_10();
    sub_1CA36DABC(&qword_1EC443AB0, v18);
    v19 = sub_1CA94C358();
    v20 = *(v7 + 8);
    v21 = OUTLINED_FUNCTION_68_3();
    v20(v21);
    if (v19)
    {
      break;
    }

    v12 = v15 + 1;
  }

  (v20)(v3, v5);
  v17(v24, *(v25 + 48) + v16, v5);
LABEL_7:
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA368E60(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  OUTLINED_FUNCTION_44_4();
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    sub_1CA94C218();
    OUTLINED_FUNCTION_116();
    v8 = sub_1CA94D338();

    if (v8)
    {

      v75 = v8;
      type metadata accessor for ActionOutput();
      swift_dynamicCast();
      result = 0;
      *v4 = v66;
      return result;
    }

    result = sub_1CA94D328();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    sub_1CA6ACC80(v7, result + 1, v33, v34, v35, v36, v37, v38, v50, v52, v55, v58, v60, v63, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
    v47 = v46;
    v66 = v46;
    v48 = *(v46 + 16);
    if (*(v46 + 24) <= v48)
    {
      sub_1CA6AD608(v48 + 1, v39, v40, v41, v42, v43, v44, v45, v51, v54, v57, v59, v62, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
      v47 = v66;
    }

    sub_1CA6AE398(v49, v47);

    *v5 = v47;
    *v4 = v3;
    return 1;
  }

  v53 = v2;
  v56 = v4;
  sub_1CA94D918();
  sub_1CA36417C(&v66, *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40));
  sub_1CA94D968();
  OUTLINED_FUNCTION_60_0();
  v13 = v12 & ~v10;
  if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_35:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = *v53;

    sub_1CA36A474(v27, v13, isUniquelyReferenced_nonNull_native, v28, v29, v30, v31, v32);
    *v53 = v66;
    *v56 = v3;
    return 1;
  }

  v14 = ~v10;
  v61 = ~v10;
  v64 = v11;
  while (2)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = *(v15 + 24);
    v17 = *(v15 + 32);
    v18 = *(v3 + 24);
    v19 = *(v3 + 32);
    v20 = *(v3 + 40);
    switch(*(v15 + 40))
    {
      case 1:
        if (v20 != 1)
        {
          goto LABEL_34;
        }

        sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);

        OUTLINED_FUNCTION_119();
        v22 = sub_1CA94CFD8();
        goto LABEL_31;
      case 2:
        if (v20 != 2)
        {
          goto LABEL_34;
        }

        goto LABEL_26;
      case 3:
        if (v20 != 3)
        {
          goto LABEL_34;
        }

LABEL_26:
        sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);

        OUTLINED_FUNCTION_119();
        v24 = sub_1CA94CFD8();

        v14 = v61;
        v11 = v64;
        if ((v24 & 1) != 0 && v16 == v18)
        {
          goto LABEL_41;
        }

        goto LABEL_34;
      case 4:
        if (v20 != 4 || (v18 | *(v3 + 16) | v19) != 0)
        {
          goto LABEL_34;
        }

        goto LABEL_41;
      default:
        if (*(v3 + 40))
        {
          goto LABEL_34;
        }

        sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);

        OUTLINED_FUNCTION_119();
        if ((sub_1CA94CFD8() & 1) == 0)
        {

          v14 = v61;
          v11 = v64;
          goto LABEL_34;
        }

        if (v16 != v18 || v17 != v19)
        {
          v22 = sub_1CA94D7F8();
LABEL_31:
          v25 = v22;

          v14 = v61;
          v11 = v64;
          if (v25)
          {
            goto LABEL_41;
          }

LABEL_34:
          v13 = (v13 + 1) & v14;
          if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            goto LABEL_35;
          }

          continue;
        }

LABEL_41:

        *v56 = *(*(v6 + 48) + 8 * v13);

        return 0;
    }
  }
}

BOOL sub_1CA369200(void *a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  sub_1CA94D908();
  OUTLINED_FUNCTION_54_1();
  do
  {
    OUTLINED_FUNCTION_41_4();
    v10 = v9 & v8;
    if ((v9 & v8) == 0)
    {
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_66_1();
      sub_1CA36A794(a2, v3, v11);
      *v4 = v13;
      goto LABEL_7;
    }
  }

  while (*(*(v7 + 48) + 8 * v3) != a2);
  a2 = *(*(v7 + 48) + 8 * v3);
LABEL_7:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_1CA3692B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](a2);
  sub_1CA94C458();
  v9 = sub_1CA94D968();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v8 + 48);
    while (1)
    {
      v14 = (v13 + 24 * v11);
      if (*v14 == a2)
      {
        v15 = v14[1] == a3 && v14[2] == a4;
        if (v15 || (sub_1CA94D7F8() & 1) != 0)
        {
          break;
        }
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v18 = (*(v8 + 48) + 24 * v11);
    v19 = v18[1];
    v20 = v18[2];
    *a1 = *v18;
    a1[1] = v19;
    a1[2] = v20;
    sub_1CA94C218();
    return 0;
  }

  else
  {
LABEL_10:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v4;
    sub_1CA94C218();
    sub_1CA36A898(a2, a3, a4, v11, isUniquelyReferenced_nonNull_native);
    *v4 = v22;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    return 1;
  }
}

uint64_t sub_1CA369440(void *a1, double *a2)
{
  v4 = *v2;
  sub_1CA94D918();
  sub_1CA368780();
  sub_1CA94D968();
  v5 = v4 + 56;
  OUTLINED_FUNCTION_60_0();
  v8 = v7 & ~v6;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_39:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39[0] = *v34;
    sub_1CA2BDFE4(a2, v40, &qword_1EC4440C0, &qword_1CA983470);
    sub_1CA36AA48(a2, v8, isUniquelyReferenced_nonNull_native);
    *v34 = v39[0];
    memcpy(a1, a2, 0x70uLL);
    return 1;
  }

  v9 = ~v6;
  v10 = *a2;
  v33 = v4;
  v11 = *(v4 + 48);
  while (1)
  {
    v12 = (v11 + 112 * v8);
    if (*v12 != v10)
    {
      goto LABEL_38;
    }

    v14 = *(v12 + 5);
    v13 = *(v12 + 6);
    v15 = *(v12 + 7);
    v16 = *(v12 + 8);
    v18 = *(v12 + 9);
    v17 = *(v12 + 10);
    v37 = *(v12 + 11);
    v38 = *(v12 + 12);
    v19 = *(v12 + 3) == *(a2 + 3) && *(v12 + 4) == *(a2 + 4);
    v20 = v19 && *(v12 + 1) >> 16 == *(a2 + 1) >> 16;
    v21 = v20 && *(v12 + 2) >> 16 == *(a2 + 2) >> 16;
    v36 = *(v12 + 13);
    if (!v21 && (sub_1CA94D788() & 1) == 0)
    {
      goto LABEL_38;
    }

    v22 = v15 == *(a2 + 7) && v16 == *(a2 + 8);
    v23 = v22 && v14 >> 16 == *(a2 + 5) >> 16;
    v24 = v23 && v13 >> 16 == *(a2 + 6) >> 16;
    if (!v24 && (sub_1CA94D788() & 1) == 0 || v18 != a2[9] || v17 != a2[10])
    {
      goto LABEL_38;
    }

    v25 = *(a2 + 12);
    if (v38)
    {
      break;
    }

    if (!v25)
    {
      goto LABEL_40;
    }

LABEL_38:
    v8 = (v8 + 1) & v9;
    if (((*(v5 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  if (!v25)
  {
    goto LABEL_38;
  }

  v26 = *(a2 + 13);
  v27 = v37 == *(a2 + 11) && v38 == v25;
  if (!v27 && (sub_1CA94D7F8() & 1) == 0 || v36 != v26)
  {
    goto LABEL_38;
  }

LABEL_40:
  v30 = OUTLINED_FUNCTION_134();
  sub_1CA27080C(v30, v31, &qword_1CA983470);
  v32 = (*(v33 + 48) + 112 * v8);
  memcpy(v40, v32, 0x70uLL);
  memcpy(a1, v32, 0x70uLL);
  sub_1CA2BDFE4(v40, v39, &qword_1EC4440C0, &qword_1CA983470);
  return 0;
}

uint64_t sub_1CA3696E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  v10 = *v5;
  sub_1CA94D918();
  sub_1CA94C458();
  v34 = v7;
  sub_1CA94D948();
  sub_1CA2BBC0C(v35, a5);
  sub_1CA94D968();
  v11 = v10 + 56;
  OUTLINED_FUNCTION_60_0();
  v14 = v13 & ~v12;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v12;
    v31 = v10;
    v16 = *(v10 + 48);
    while (1)
    {
      v17 = v16 + 32 * v14;
      result = *v17;
      v19 = *(v17 + 16);
      v20 = *(v17 + 24);
      v21 = *v17 == a2 && *(v17 + 8) == a3;
      if (v21 || (result = sub_1CA94D7F8(), (result & 1) != 0))
      {
        if (v19 == v34)
        {
          v22 = *(v20 + 16);
          if (v22 == *(a5 + 16))
          {
            break;
          }
        }
      }

LABEL_19:
      v14 = (v14 + 1) & v15;
      if (((*(v11 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v22)
    {
      v23 = v20 == a5;
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
LABEL_21:

      v27 = *(v31 + 48) + 32 * v14;
      v28 = *(v27 + 8);
      v29 = *(v27 + 16);
      v30 = *(v27 + 24);
      *a1 = *v27;
      *(a1 + 8) = v28;
      *(a1 + 16) = v29;
      *(a1 + 24) = v30;
      sub_1CA94C218();
      sub_1CA94C218();
      return 0;
    }

    else
    {
      v24 = (v20 + 32);
      v25 = (a5 + 32);
      while (v22)
      {
        if (*v24 != *v25)
        {
          goto LABEL_19;
        }

        ++v24;
        ++v25;
        if (!--v22)
        {
          sub_1CA94C218();

          goto LABEL_21;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_20:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35[0] = *v32;
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA36ACCC(a2, a3, v34, a5, v14, isUniquelyReferenced_nonNull_native);
    *v32 = v35[0];
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v34;
    *(a1 + 24) = a5;
    return 1;
  }

  return result;
}

BOOL sub_1CA369928(_WORD *a1, uint64_t a2)
{
  v6 = *v2;
  sub_1CA94D918();
  sub_1CA94D948();
  sub_1CA94D968();
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_41_4();
    v9 = v8 & v7;
    if ((v8 & v7) == 0)
    {
      break;
    }

    if (*(*(v6 + 48) + 2 * v3) == a2)
    {
      goto LABEL_6;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_66_1();
  sub_1CA36AEDC(a2, v3, v10);
  *v2 = v12;
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_1CA36A090(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_1CA94ADC8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1CA6AD350();
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_1CA36B700(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_1CA36DABC(&qword_1EC441D00, MEMORY[0x1E69DB0B8]);
      v13 = sub_1CA94C288();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_1CA36DABC(&qword_1EC443AB0, MEMORY[0x1E69DB0B8]);
        v15 = sub_1CA94C358();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_1CA6AE604();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_1CA94D868();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

void sub_1CA36A31C(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1CA6AD5F4(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1CA36CAE4();
LABEL_10:
      v12 = *v3;
      v13 = sub_1CA94CFC8();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for WFUserVisibleString();
        v15 = *(*(v12 + 48) + 8 * a2);
        v16 = sub_1CA94CFD8();

        if (v16)
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    sub_1CA6AE62C();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = result;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_1CA94D868();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_1CA36A474(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v11 = *(*v8 + 16);
  v12 = *(*v8 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1CA6AD608(v11 + 1, a2, a3, a4, a5, a6, a7, a8, v34, v35, v36, v38, v40, *v42, *&v42[8], *&v42[16], *&v42[24], *&v42[32], *&v42[40], *&v42[48], *&v42[56], *&v42[64], v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
    }

    else
    {
      if (v12 > v11)
      {
        sub_1CA6AE640();
        goto LABEL_36;
      }

      sub_1CA36BA18(v11 + 1);
    }

    v13 = *v8;
    sub_1CA94D918();
    sub_1CA36417C(v42, *(result + 16), *(result + 24), *(result + 32), *(result + 40));
    v14 = sub_1CA94D968();
    v15 = -1 << *(v13 + 32);
    v9 = v14 & ~v15;
    if ((*(v13 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
    {
      v16 = ~v15;
      v41 = v13 + 56;
      type metadata accessor for ActionOutput();
      v17 = v16;
      v18 = v13 + 56;
      v37 = v16;
      v39 = v13;
      while (1)
      {
        v19 = *(*(v13 + 48) + 8 * v9);
        v20 = *(v19 + 24);
        v21 = *(v19 + 32);
        v22 = *(result + 24);
        v23 = *(result + 32);
        v24 = *(result + 40);
        switch(*(v19 + 40))
        {
          case 1:
            if (v24 == 1)
            {
              sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);

              v13 = v39;
              v29 = sub_1CA94CFD8();

              v17 = v37;
              v18 = v41;
              if (v29)
              {
                goto LABEL_40;
              }
            }

            goto LABEL_35;
          case 2:
            if (v24 != 2)
            {
              goto LABEL_35;
            }

            goto LABEL_28;
          case 3:
            if (v24 != 3)
            {
              goto LABEL_35;
            }

LABEL_28:
            sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);

            v13 = v39;
            v28 = sub_1CA94CFD8();

            v17 = v37;
            v18 = v41;
            if ((v28 & 1) != 0 && v20 == v22)
            {
              goto LABEL_40;
            }

            goto LABEL_35;
          case 4:
            if (v24 == 4 && (v22 | *(result + 16) | v23) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_35;
          default:
            if (*(result + 40))
            {
              goto LABEL_35;
            }

            sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);

            if (sub_1CA94CFD8())
            {
              if (v20 == v22 && v21 == v23)
              {
                goto LABEL_39;
              }

              v26 = sub_1CA94D7F8();

              v13 = v39;
              v18 = v41;
              v17 = v37;
              if (v26)
              {
                goto LABEL_40;
              }
            }

            else
            {

              v13 = v39;
              v18 = v41;
              v17 = v37;
            }

LABEL_35:
            v9 = (v9 + 1) & v17;
            if (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
            {
              goto LABEL_36;
            }

            break;
        }
      }
    }
  }

LABEL_36:
  v30 = *v35;
  *(*v35 + 8 * (v9 >> 6) + 56) |= 1 << v9;
  *(*(v30 + 48) + 8 * v9) = result;
  v31 = *(v30 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
LABEL_39:

LABEL_40:
    sub_1CA94D868();
    __break(1u);
  }

  else
  {
    *(v30 + 16) = v33;
  }
}

void sub_1CA36A794(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1CA6AD804();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1CA36BD08(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = sub_1CA94D908();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == result)
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    sub_1CA6AE654();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = result;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_1CA94D868();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void *sub_1CA36AA48(double *__src, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1CA6ADB50();
    }

    else
    {
      if (v7 > v6)
      {
        sub_1CA6AE7E4();
        goto LABEL_46;
      }

      sub_1CA36C148(v6 + 1);
    }

    v8 = *v3;
    sub_1CA94D918();
    sub_1CA368780();
    v9 = sub_1CA94D968();
    v10 = v8 + 56;
    v11 = -1 << *(v8 + 32);
    a2 = v9 & ~v11;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      v13 = *__src;
      v14 = *(v8 + 48);
      do
      {
        v15 = (v14 + 112 * a2);
        if (*v15 == v13)
        {
          v17 = *(v15 + 5);
          v16 = *(v15 + 6);
          v18 = *(v15 + 7);
          v19 = *(v15 + 8);
          v21 = *(v15 + 9);
          v20 = *(v15 + 10);
          v38 = *(v15 + 11);
          v39 = *(v15 + 12);
          v22 = *(v15 + 3) == *(__src + 3) && *(v15 + 4) == *(__src + 4);
          v23 = v22 && *(v15 + 1) >> 16 == *(__src + 1) >> 16;
          v24 = v23 && *(v15 + 2) >> 16 == *(__src + 2) >> 16;
          v37 = *(v15 + 13);
          if (v24 || (sub_1CA94D788() & 1) != 0)
          {
            v25 = v18 == *(__src + 7) && v19 == *(__src + 8);
            v26 = v25 && v17 >> 16 == *(__src + 5) >> 16;
            v27 = v26 && v16 >> 16 == *(__src + 6) >> 16;
            if (v27 || (sub_1CA94D788()) && v21 == __src[9] && v20 == __src[10])
            {
              v28 = *(__src + 12);
              if (v39)
              {
                if (v28)
                {
                  v29 = *(__src + 13);
                  v30 = v38 == *(__src + 11) && v39 == v28;
                  if (v30 || (sub_1CA94D7F8()) && v37 == v29)
                  {
                    goto LABEL_49;
                  }
                }
              }

              else if (!v28)
              {
                goto LABEL_49;
              }
            }
          }
        }

        a2 = (a2 + 1) & v12;
      }

      while (((*(v10 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_46:
  v31 = *v36;
  *(*v36 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v31 + 48) + 112 * a2), __src, 0x70uLL);
  v33 = *(v31 + 16);
  v34 = __OFADD__(v33, 1);
  v35 = v33 + 1;
  if (v34)
  {
    __break(1u);
LABEL_49:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4440C0, &qword_1CA983470);
    result = sub_1CA94D868();
    __break(1u);
  }

  else
  {
    *(v31 + 16) = v35;
  }

  return result;
}

void sub_1CA36ACCC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v9 = a3;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_27;
  }

  if (a6)
  {
    sub_1CA6ADCF8();
  }

  else
  {
    if (v13 > v12)
    {
      sub_1CA6AE930();
      goto LABEL_27;
    }

    sub_1CA36C39C(v12 + 1);
  }

  v14 = *v6;
  sub_1CA94D918();
  sub_1CA94C458();
  sub_1CA94D948();
  sub_1CA2BBC0C(v34, a4);
  v15 = sub_1CA94D968();
  v16 = v14 + 56;
  v17 = -1 << *(v14 + 32);
  a5 = v15 & ~v17;
  if (((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
  {
LABEL_27:
    v28 = *v33;
    *(*v33 + 8 * (a5 >> 6) + 56) |= 1 << a5;
    v29 = *(v28 + 48) + 32 * a5;
    *v29 = result;
    *(v29 + 8) = a2;
    *(v29 + 16) = v9;
    *(v29 + 24) = a4;
    v30 = *(v28 + 16);
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (!v31)
    {
      *(v28 + 16) = v32;
      return;
    }

    goto LABEL_30;
  }

  v18 = ~v17;
  v19 = *(v14 + 48);
  while (1)
  {
    v20 = v19 + 32 * a5;
    v21 = *(v20 + 16);
    v22 = *(v20 + 24);
    v23 = *v20 == result && *(v20 + 8) == a2;
    if (v23 || (sub_1CA94D7F8()) && v21 == v9)
    {
      v24 = *(v22 + 16);
      if (v24 == *(a4 + 16))
      {
        break;
      }
    }

LABEL_26:
    a5 = (a5 + 1) & v18;
    if (((*(v16 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (v24)
  {
    v25 = v22 == a4;
  }

  else
  {
    v25 = 1;
  }

  if (v25)
  {
    goto LABEL_31;
  }

  v26 = (v22 + 32);
  v27 = (a4 + 32);
  while (v24)
  {
    if (*v26 != *v27)
    {
      goto LABEL_26;
    }

    ++v26;
    ++v27;
    if (!--v24)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  sub_1CA94D868();
  __break(1u);
}

void sub_1CA36AEDC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1CA6ADEF0();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1CA36C654(v6 + 1);
LABEL_10:
      v12 = *v3;
      sub_1CA94D918();
      sub_1CA94D948();
      v13 = sub_1CA94D968();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for WFGlyphCharacter(0);
        if (*(*(v12 + 48) + 2 * a2) == v5)
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    sub_1CA6AEA28();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 2 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_1CA94D868();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_1CA36B014(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1CA6AE07C();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1CA36C870(v6 + 1);
LABEL_10:
      v12 = *v3;
      sub_1CA949FB8();
      sub_1CA36DABC(&unk_1EC4448B0, MEMORY[0x1E695BF10]);
      v13 = sub_1CA94C288();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_1CA36DABC(&unk_1EC443E70, MEMORY[0x1E695BF10]);
        if (sub_1CA94C358())
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    sub_1CA6AEADC();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = result;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_1CA94D868();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_1CA36B1E4(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1CA6AE218(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_1CA36CAE4();
LABEL_8:
      v8 = *v3;
      v9 = sub_1CA94CFC8();
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = v9 & v10;
        if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
        v11 = *(*(v8 + 48) + 8 * a2);
        v12 = sub_1CA94CFD8();

        if (v12)
        {
          goto LABEL_15;
        }

        v9 = a2 + 1;
      }
    }

    sub_1CA6AEBA8();
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    sub_1CA94D868();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }
}

void sub_1CA36B358(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1CA6AE22C(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_1CA36CAE4();
LABEL_8:
      v8 = *v3;
      v9 = sub_1CA94CFC8();
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = v9 & v10;
        if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_1CA25B3D0(0, &qword_1EC4417C0, 0x1E69E0A68);
        v11 = *(*(v8 + 48) + 8 * a2);
        v12 = sub_1CA94CFD8();

        if (v12)
        {
          goto LABEL_15;
        }

        v9 = a2 + 1;
      }
    }

    sub_1CA6AEBBC();
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    sub_1CA94D868();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }
}

uint64_t sub_1CA36B4CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444910, &qword_1CA982708);
  result = sub_1CA94D3C8();
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
        sub_1CA94D918();
        sub_1CA94C218();
        sub_1CA94C458();
        result = sub_1CA94D968();
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

uint64_t sub_1CA36B700(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1CA94ADC8();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444168, &qword_1CA982790);
  v7 = sub_1CA94D3C8();
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
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_1CA36DABC(&qword_1EC441D00, MEMORY[0x1E69DB0B8]);
        result = sub_1CA94C288();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1CA36BA18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4448E0, &unk_1CA982760);
  result = sub_1CA94D3C8();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v3;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
        sub_1CA94D918();
        v17 = *(v16 + 24);
        switch(*(v16 + 40))
        {
          case 1:
            MEMORY[0x1CCAA2780](1);

            sub_1CA94CFE8();
            break;
          case 2:
            v18 = 2;
            goto LABEL_17;
          case 3:
            v18 = 3;
LABEL_17:
            MEMORY[0x1CCAA2780](v18);

            sub_1CA94CFE8();
            MEMORY[0x1CCAA2780](v17);
            break;
          case 4:
            MEMORY[0x1CCAA2780](4);

            break;
          default:
            MEMORY[0x1CCAA2780](0);

            sub_1CA94CFE8();
            sub_1CA94C458();
            break;
        }

        result = sub_1CA94D968();
        v19 = -1 << *(v5 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
        *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        *(*(v5 + 48) + 8 * v22) = v16;
        ++*(v5 + 16);
        v3 = v27;
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
          goto LABEL_28;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_32;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_32:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1CA36BD08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444898, &unk_1CA984350);
  result = sub_1CA94D3C8();
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
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = sub_1CA94D908();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
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
          goto LABEL_23;
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
LABEL_23:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1CA36BEF4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444860, &unk_1CA984330);
  result = sub_1CA94D3C8();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = (*(v3 + 48) + 24 * (v13 | (v6 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = v16[2];
        sub_1CA94D918();
        MEMORY[0x1CCAA2780](v17);
        sub_1CA94C218();
        sub_1CA94C458();
        result = sub_1CA94D968();
        v20 = -1 << *(v5 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v5 + 48) + 24 * v23);
        *v28 = v17;
        v28[1] = v18;
        v28[2] = v19;
        ++*(v5 + 16);
        v3 = v29;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
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

uint64_t sub_1CA36C148(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4481D0, &unk_1CA984390);
  result = sub_1CA94D3C8();
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
        memcpy(__dst, (*(v3 + 48) + 112 * (v12 | (v6 << 6))), 0x70uLL);
        sub_1CA94D918();
        sub_1CA2BDFE4(__dst, v23, &qword_1EC4440C0, &qword_1CA983470);
        sub_1CA368780();
        result = sub_1CA94D968();
        v15 = -1 << *(v5 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v11 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v11 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        result = memcpy((*(v5 + 48) + 112 * v18), __dst, 0x70uLL);
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v11 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
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

uint64_t sub_1CA36C39C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4448D0, &unk_1CA992050);
  result = sub_1CA94D3C8();
  v5 = result;
  if (*(v3 + 16))
  {
    v34 = v1;
    v35 = v3;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v37 = (v10 - 1) & v10;
LABEL_12:
        v16 = *(v3 + 48) + 32 * (v13 | (v6 << 6));
        v17 = *v16;
        v18 = *(v16 + 8);
        v19 = *(v16 + 16);
        v20 = *(v16 + 24);
        sub_1CA94D918();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C458();
        v36 = v19;
        sub_1CA94D948();
        MEMORY[0x1CCAA2780](*(v20 + 16));
        v21 = *(v20 + 16);
        if (v21)
        {
          v22 = (v20 + 32);
          do
          {
            v23 = *v22++;
            v24 = v23;
            if (v23 == 0.0)
            {
              v24 = 0.0;
            }

            MEMORY[0x1CCAA27B0](*&v24);
            --v21;
          }

          while (v21);
        }

        result = sub_1CA94D968();
        v25 = -1 << *(v5 + 32);
        v26 = result & ~v25;
        v27 = v26 >> 6;
        if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
        {
          break;
        }

        v28 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        v3 = v35;
        *(v12 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
        v33 = *(v5 + 48) + 32 * v28;
        v10 = v37;
        *v33 = v17;
        *(v33 + 8) = v18;
        *(v33 + 16) = v36;
        *(v33 + 24) = v20;
        ++*(v5 + 16);
        if (!v37)
        {
          goto LABEL_7;
        }
      }

      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v12 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v34;
          goto LABEL_30;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v37 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1CA36C654(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4448C8, &unk_1CA984370);
  result = sub_1CA94D3C8();
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
        v15 = *(*(v3 + 48) + 2 * (v12 | (v6 << 6)));
        sub_1CA94D918();
        sub_1CA94D948();
        result = sub_1CA94D968();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 2 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
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

uint64_t sub_1CA36C870(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443E60, &qword_1CA9824D0);
  result = sub_1CA94D3C8();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v3;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v26 = (v10 - 1) & v10;
LABEL_12:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
        sub_1CA949FB8();
        sub_1CA36DABC(&unk_1EC4448B0, MEMORY[0x1E695BF10]);

        result = sub_1CA94C288();
        v17 = -1 << *(v5 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v16;
        ++*(v5 + 16);
        v3 = v25;
        v10 = v26;
        if (!v26)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v26 = (v15 - 1) & v15;
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

void sub_1CA36CAE4()
{
  OUTLINED_FUNCTION_72();
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_134();
  v5 = sub_1CA94D3C8();
  v6 = v5;
  if (*(v2 + 16))
  {
    v26 = v0;
    v7 = 0;
    v8 = 1 << *(v2 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v2 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = *(*(v2 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = sub_1CA94CFC8();
        v18 = -1 << *(v6 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v16;
        ++*(v6 + 16);
        if (!v10)
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
        v25 = *(v12 + 8 * v20);
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
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v1 = v26;
          goto LABEL_25;
        }

        v15 = *(v2 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
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
    *v1 = v6;
    OUTLINED_FUNCTION_70_2();
  }
}

void (*sub_1CA36CCD0(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_1CA36D290(v6);
  v6[9] = sub_1CA36CDC8(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1CA36CD68;
}

void sub_1CA36CD68(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1CA36CDC8(void *a1, uint64_t a2, uint64_t a3, char a4))()
{
  v5 = v4;
  v9 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v9;
  v9[1] = a3;
  v9[2] = v4;
  *v9 = a2;
  v10 = *v4;
  v11 = sub_1CA271BF8(a2, a3);
  *(v9 + 48) = v12 & 1;
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444828, &qword_1CA9842F8);
  if (sub_1CA94D588())
  {
    v15 = sub_1CA271BF8(a2, a3);
    if ((v14 & 1) == (v16 & 1))
    {
      v13 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1CA94D878();
    __break(1u);
    return result;
  }

LABEL_5:
  v9[3] = v13;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444840, &qword_1CA984310) - 8) + 64);
  v9[4] = v17;
  v18 = __swift_coroFrameAllocStub(v17);
  v9[5] = v18;
  if (v14)
  {
    v19 = *(*v5 + 56);
    v20 = sub_1CA9491F8();
    (*(*(v20 - 8) + 32))(v18, v19 + *(*(v20 - 8) + 72) * v13, v20);
    v21 = v18;
    v22 = 0;
    v23 = v20;
  }

  else
  {
    v23 = sub_1CA9491F8();
    v21 = v18;
    v22 = 1;
  }

  __swift_storeEnumTagSinglePayload(v21, v22, 1, v23);
  return sub_1CA36CFA8;
}

void sub_1CA36CFA8()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = *v2;
  v4 = *(*v2 + 32);
  v5 = *(*v2 + 40);
  v6 = sub_1CA9491F8();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA2BDFE4(v5, v13, &unk_1EC444840, &qword_1CA984310);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v6);
  v15 = *(v3 + 48);
  if (v1)
  {
    if (EnumTagSinglePayload != 1)
    {
      v39 = &v38;
      v38 = *(v8 + 4);
      v16 = (v38)(&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v6);
      if (v15)
      {
        OUTLINED_FUNCTION_30_5();
        v38();
        goto LABEL_14;
      }

      v19 = MEMORY[0x1EEE9AC00](v16);
      v27 = OUTLINED_FUNCTION_18_12(v19, v20, v21, v22, v23, v24, v25, v26, v38);
      (v38)(v27);
      OUTLINED_FUNCTION_50_1();
LABEL_13:
      sub_1CA94C218();
      goto LABEL_14;
    }
  }

  else if (EnumTagSinglePayload != 1)
  {
    v38 = v8;
    v39 = &v38;
    v17 = *(v8 + 4);
    v18 = (v17)(&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v6);
    if (v15)
    {
      OUTLINED_FUNCTION_30_5();
      v17();
      goto LABEL_14;
    }

    v38 = &v38;
    v28 = MEMORY[0x1EEE9AC00](v18);
    v36 = OUTLINED_FUNCTION_18_12(v28, v29, v30, v31, v32, v33, v34, v35, v38);
    (v17)(v36);
    OUTLINED_FUNCTION_50_1();
    goto LABEL_13;
  }

  sub_1CA27080C(v13, &unk_1EC444840, &qword_1CA984310);
  if (v15)
  {
    sub_1CA36D8A0(*(**(v3 + 16) + 48) + 16 * *(v3 + 24));
    sub_1CA94D5A8();
  }

LABEL_14:
  v37 = *(v3 + 40);
  sub_1CA27080C(v37, &unk_1EC444840, &qword_1CA984310);
  free(v37);
  free(v3);
  OUTLINED_FUNCTION_36();
}

uint64_t (*sub_1CA36D290(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1CA36D2B8;
}

uint64_t sub_1CA36D2C4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1CA94C3A8();

  return v4;
}

void sub_1CA36D324(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1CA94C368();
  [a4 variableProvider:a1 variableNameDidChangeTo:v6];
}

id sub_1CA36D3B8(id a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 3u)
  {
    v4 = a4;
    if (a4 > 3uLL)
    {
      v4 = 0;
    }

    return ((&loc_1CA36D3DC + funcs_1CA36D3E4[v4]))(a1);
  }

  return a1;
}

id sub_1CA36D3E8(id a1)
{

  return a1;
}

uint64_t sub_1CA36D3F8(void *a1)
{
  v1 = a1;

  return sub_1CA94C218();
}

void sub_1CA36D434(id a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 3u)
  {
    v4 = a4;
    if (a4 > 3uLL)
    {
      v4 = 0;
    }

    ((&loc_1CA36D458 + funcs_1CA36D460[v4]))(a1);
  }
}

void sub_1CA36D464(id a1)
{
}

uint64_t sub_1CA36D474(void *a1)
{
}

uint64_t sub_1CA36D4B0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1CA36D4F0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_11WorkflowKit12ActionOutput33_92494141B4D875F190D9BB85FDDC289CLLC7ContentO(uint64_t a1)
{
  if ((*(a1 + 24) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 24) & 7;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1CA36D570(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 25))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 4)
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

uint64_t sub_1CA36D5B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1CA36D5F8(uint64_t result, unsigned int a2)
{
  v2 = a2 - 4;
  if (a2 >= 4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

unint64_t sub_1CA36D628()
{
  result = qword_1EC444808;
  if (!qword_1EC444808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444808);
  }

  return result;
}

unint64_t sub_1CA36D680()
{
  result = qword_1EC444810;
  if (!qword_1EC444810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444810);
  }

  return result;
}

uint64_t sub_1CA36D71C(uint64_t a1, uint64_t a2)
{
  v4 = _s17ControlFlowBranchVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1CA36D780(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  if (a5)
  {

    a1 = a4;
    v5 = vars8;
  }
}

unint64_t sub_1CA36D7CC()
{
  result = qword_1EC441B00;
  if (!qword_1EC441B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC444838, &unk_1CA984300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441B00);
  }

  return result;
}

uint64_t sub_1CA36D830(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444840, &qword_1CA984310);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA36D8F4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_52();
  (*(v3 + 8))(a1);
  return a1;
}

id sub_1CA36D94C(id result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 - 1 < 2)
  {
    sub_1CA94C218();
    sub_1CA94C218();
    result = a4;

    return result;
  }

  if (!a6)
  {

    return result;
  }

  return result;
}

void sub_1CA36D9BC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 - 1 < 2)
  {

    a1 = a4;

LABEL_4:

    return;
  }

  if (!a6)
  {

    goto LABEL_4;
  }
}

id sub_1CA36DA2C(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  if (a5)
  {
    sub_1CA94C218();
    sub_1CA94C218();
    a1 = a4;
    v5 = vars8;
  }

  return a1;
}

uint64_t sub_1CA36DA78(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_5_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA36DABC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_5_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_47_3()
{
  v5 = *(v4 - 184);
  *(v5 + 16) = v1;
  v6 = v5 + 16 * v3;
  *(v6 + 32) = v0;
  *(v6 + 40) = v2;
}

id sub_1CA36DB74()
{
  v159 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9AA120;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("song|identification|shazam|music", 32);
  v6 = v5;
  v7 = sub_1CA94C438("song|identification|shazam|music", 32);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v168 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  *&v169 = v11;
  v12 = &v146 - v168;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v164 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v166 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v167 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v146 - v167;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v163 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  *&v162 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  v158 = xmmword_1CA97EDF0;
  *(v20 + 16) = xmmword_1CA97EDF0;
  *(v20 + 32) = @"DescriptionAttribution";
  v21 = @"Description";
  v22 = @"DescriptionAttribution";
  v160 = sub_1CA94C438("Recognize Music - Attribution", 29);
  v157 = v23;
  v24 = sub_1CA94C438("Media identification provided by [Shazam](https://www.shazam.com).", 66);
  v26 = v25;
  v161 = &v146;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v146 - v168;
  sub_1CA948D98();
  v28 = v164;
  v29 = [v164 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v165 = inited;
  v30 = v167;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 40) = sub_1CA2F9F14(v160, v157, v24, v26, 0, 0, v27, &v146 - v30);
  v32 = v163;
  *(v20 + 64) = v163;
  *(v20 + 72) = @"DescriptionSummary";
  v33 = @"DescriptionSummary";
  v160 = sub_1CA94C438("Uses the microphone to listen to and identify nearby media.", 59);
  v157 = v34;
  v35 = sub_1CA94C438("Uses the microphone to listen to and identify nearby media.", 59);
  v37 = v36;
  v161 = &v146;
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v146 - v168;
  sub_1CA948D98();
  v39 = [v28 bundleURL];
  MEMORY[0x1EEE9AC00](v39);
  sub_1CA948B68();

  v40 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v41 = sub_1CA2F9F14(v160, v157, v35, v37, 0, 0, v38, &v146 - v30);
  *(v20 + 104) = v32;
  *(v20 + 80) = v41;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v42 = sub_1CA94C1E8();
  v43 = v162;
  v44 = sub_1CA6B3784(v42);
  v45 = v165;
  v165[15] = v44;
  v45[18] = v43;
  v45[19] = @"IconName";
  v45[20] = 0x6D617A616853;
  v45[21] = 0xE600000000000000;
  v45[23] = MEMORY[0x1E69E6158];
  v45[24] = @"InputPassthrough";
  v46 = MEMORY[0x1E69E6370];
  *(v45 + 200) = 0;
  v45[28] = v46;
  v45[29] = @"Name";
  v47 = @"IconName";
  v48 = @"InputPassthrough";
  v49 = @"Name";
  v50 = sub_1CA94C438("Recognize Music (Action Name)", 29);
  v52 = v51;
  v53 = sub_1CA94C438("Recognize Music", 15);
  v55 = v54;
  *&v162 = &v146;
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v146 - v168;
  sub_1CA948D98();
  v57 = [v164 bundleURL];
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v146 - v167;
  sub_1CA948B68();

  v59 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v60 = sub_1CA2F9F14(v50, v52, v53, v55, 0, 0, v56, v58);
  v61 = v165;
  v165[30] = v60;
  v61[33] = v163;
  v61[34] = @"Output";
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v62 = swift_initStackObject();
  v162 = xmmword_1CA981350;
  *(v62 + 16) = xmmword_1CA981350;
  *(v62 + 32) = 0x75736F6C63736944;
  *(v62 + 40) = 0xEF6C6576654C6572;
  *(v62 + 48) = 0x63696C627550;
  *(v62 + 56) = 0xE600000000000000;
  *(v62 + 72) = MEMORY[0x1E69E6158];
  *(v62 + 80) = 0x656C7069746C754DLL;
  *(v62 + 88) = 0xE800000000000000;
  *(v62 + 96) = 0;
  *(v62 + 120) = MEMORY[0x1E69E6370];
  *(v62 + 128) = 0x614E74757074754FLL;
  *(v62 + 136) = 0xEA0000000000656DLL;
  v63 = @"Output";
  v64 = sub_1CA94C438("Shazam Media (Default Output Name)", 34);
  v160 = v65;
  v66 = sub_1CA94C438("Shazam Media", 12);
  v68 = v67;
  v161 = &v146;
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v146 - v168;
  sub_1CA948D98();
  v70 = [v164 bundleURL];
  MEMORY[0x1EEE9AC00](v70);
  v71 = &v146 - v167;
  sub_1CA948B68();

  v72 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v62 + 144) = sub_1CA2F9F14(v64, v160, v66, v68, 0, 0, v69, v71);
  *(v62 + 168) = v163;
  *(v62 + 176) = 0x7365707954;
  *(v62 + 184) = 0xE500000000000000;
  *(v62 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v62 + 192) = &unk_1F49F64B8;
  v73 = MEMORY[0x1E69E6158];
  v74 = sub_1CA94C1E8();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v156 = v75;
  v76 = v165;
  v165[35] = v74;
  v76[38] = v75;
  v76[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v161 = swift_allocObject();
  *(v161 + 1) = xmmword_1CA981360;
  v160 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v77 = swift_initStackObject();
  *(v77 + 16) = v162;
  v152 = 0x80000001CA99E620;
  *(v77 + 32) = @"Class";
  *(v77 + 40) = 0xD000000000000011;
  *(v77 + 48) = 0x80000001CA99E620;
  *(v77 + 64) = v73;
  *(v77 + 72) = @"DefaultValue";
  *(v77 + 80) = 1;
  *(v77 + 104) = MEMORY[0x1E69E6370];
  *(v77 + 112) = @"Key";
  v154 = 0xD00000000000001ELL;
  v155 = 0x80000001CA99E640;
  *(v77 + 120) = 0xD00000000000001ELL;
  *(v77 + 128) = 0x80000001CA99E640;
  *(v77 + 144) = v73;
  *(v77 + 152) = @"Label";
  v78 = @"Class";
  v79 = @"DefaultValue";
  v80 = @"Key";
  v81 = @"Label";
  v150 = v78;
  v149 = v79;
  v148 = v80;
  v151 = v81;
  v82 = @"Parameters";
  v83 = sub_1CA94C438("Show When Run (WFShazamMediaActionShowWhenRun)", 46);
  v146 = v84;
  v85 = sub_1CA94C438("Show When Run", 13);
  v87 = v86;
  v147 = &v146;
  MEMORY[0x1EEE9AC00](v85);
  v88 = v168;
  sub_1CA948D98();
  v89 = [v164 bundleURL];
  MEMORY[0x1EEE9AC00](v89);
  v90 = &v146 - v167;
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v92 = sub_1CA2F9F14(v83, v146, v85, v87, 0, 0, &v146 - v88, v90);
  *(v77 + 184) = v163;
  *(v77 + 160) = v92;
  _s3__C3KeyVMa_0(0);
  v147 = v93;
  v146 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v94 = sub_1CA94C1E8();
  v95 = sub_1CA2F864C(v94);
  v161[4] = v95;
  v96 = swift_allocObject();
  *(v96 + 16) = v162;
  *(v96 + 32) = v150;
  *(v96 + 40) = 0xD000000000000011;
  *(v96 + 48) = v152;
  v97 = MEMORY[0x1E69E6158];
  v98 = v149;
  *(v96 + 64) = MEMORY[0x1E69E6158];
  *(v96 + 72) = v98;
  *(v96 + 80) = 1;
  v99 = v148;
  *(v96 + 104) = MEMORY[0x1E69E6370];
  *(v96 + 112) = v99;
  *(v96 + 120) = 0xD000000000000027;
  *(v96 + 128) = 0x80000001CA99E690;
  v100 = v151;
  *(v96 + 144) = v97;
  *(v96 + 152) = v100;
  v101 = sub_1CA94C438("Error If Not Recognized (WFShazamMediaActionErrorIfNotRecognized)", 65);
  v153 = v102;
  v103 = sub_1CA94C438("Error If Not Recognized", 23);
  v105 = v104;
  *&v162 = &v146;
  MEMORY[0x1EEE9AC00](v103);
  v106 = &v146 - v88;
  sub_1CA948D98();
  v107 = v164;
  v108 = [v164 bundleURL];
  MEMORY[0x1EEE9AC00](v108);
  v109 = &v146 - v167;
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v111 = sub_1CA2F9F14(v101, v153, v103, v105, 0, 0, v106, v109);
  *(v96 + 184) = v163;
  *(v96 + 160) = v111;
  v112 = sub_1CA94C1E8();
  v113 = sub_1CA2F864C(v112);
  v114 = v161;
  v161[5] = v113;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v116 = v165;
  v165[40] = v114;
  v116[43] = v115;
  v116[44] = @"ParameterSummary";
  v117 = @"ParameterSummary";
  v118 = sub_1CA94C438("Recognize Music (Parameter Summary)", 35);
  v120 = v119;
  v121 = sub_1CA94C438("Recognize Music", 15);
  v123 = v122;
  v163 = &v146;
  MEMORY[0x1EEE9AC00](v121);
  v124 = &v146 - v168;
  sub_1CA948D98();
  v125 = [v107 bundleURL];
  MEMORY[0x1EEE9AC00](v125);
  v126 = &v146 - v167;
  sub_1CA948B68();

  v127 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v128 = sub_1CA2F9F14(v118, v120, v121, v123, 0, 0, v124, v126);
  v129 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v130 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v131 = v165;
  v165[45] = v129;
  v131[48] = v130;
  v131[49] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v132 = swift_allocObject();
  v169 = xmmword_1CA9813C0;
  *(v132 + 16) = xmmword_1CA9813C0;
  *(v132 + 32) = 0xD00000000000001ALL;
  *(v132 + 40) = 0x80000001CA993FA0;
  v133 = MEMORY[0x1E69E6158];
  *(v132 + 88) = MEMORY[0x1E69E6158];
  *(v132 + 56) = v133;
  *(v132 + 64) = 0xD00000000000001CLL;
  *(v132 + 72) = 0x80000001CA993620;
  v134 = swift_allocObject();
  *(v134 + 16) = v158;
  *(v134 + 32) = 0xD000000000000011;
  *(v134 + 40) = 0x80000001CA99B240;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v135 = swift_allocObject();
  *(v135 + 16) = xmmword_1CA981310;
  v136 = swift_allocObject();
  *(v136 + 16) = v169;
  strcpy((v136 + 32), "WFParameterKey");
  *(v136 + 47) = -18;
  v137 = v155;
  *(v136 + 48) = v154;
  *(v136 + 56) = v137;
  *(v136 + 72) = v133;
  *(v136 + 80) = 0xD000000000000010;
  *(v136 + 88) = 0x80000001CA993570;
  *(v136 + 96) = 1;
  *(v136 + 120) = MEMORY[0x1E69E6370];
  *(v136 + 128) = 0x72756F7365524657;
  *(v136 + 168) = v133;
  *(v136 + 136) = 0xEF7373616C436563;
  *(v136 + 144) = 0xD00000000000001BLL;
  *(v136 + 152) = 0x80000001CA993590;
  v138 = @"RequiredResources";
  *(v135 + 32) = sub_1CA94C1E8();
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v134 + 48) = v135;
  *(v134 + 72) = v139;
  *(v134 + 80) = 0x72756F7365524657;
  *(v134 + 120) = v133;
  *(v134 + 88) = 0xEF7373616C436563;
  *(v134 + 96) = 0xD000000000000019;
  *(v134 + 104) = 0x80000001CA9932D0;
  v140 = sub_1CA94C1E8();
  *(v132 + 120) = v156;
  *(v132 + 96) = v140;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v142 = v165;
  v165[50] = v132;
  v142[53] = v141;
  v142[54] = @"UserInterfaceClasses";
  v143 = @"UserInterfaceClasses";
  v144 = sub_1CA94C1E8();
  v142[58] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v142[55] = v144;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA36EE1C()
{
  v69 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9AA1B0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v71 = sub_1CA94C438("wait", 4);
  v5 = v4;
  v6 = sub_1CA94C438("wait", 4);
  v8 = v7;
  v9 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v74 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v75 = v10;
  v11 = &v65 - v74;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v72 = qword_1EDB9F690;
  v12 = [qword_1EDB9F690 bundleURL];
  v13 = sub_1CA948BA8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v70 = v14;
  v73 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v65 - v73;
  sub_1CA948B68();

  v16 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v17 = sub_1CA2F9F14(v71, v5, v6, v8, 0, 0, v11, v15);
  v18 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v71 = v18;
  *(inited + 80) = v17;
  *(inited + 104) = v18;
  *(inited + 112) = @"Description";
  v68 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1CA981310;
  *(v19 + 32) = @"DescriptionSummary";
  v20 = @"Description";
  v21 = @"DescriptionSummary";
  v22 = sub_1CA94C438("Wait To Return (Description Summary)", 36);
  v66 = v23;
  v24 = sub_1CA94C438("Pauses execution until you leave the Shortcuts app and return to it.\n\nThis action might be useful after an action that switches apps, to pause execution until you return to the Shortcuts app.\n\nThis action will only take effect when running shortcuts in the Shortcuts app.", 271);
  v26 = v25;
  v67 = &v65;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v65 - v74;
  sub_1CA948D98();
  v28 = [v72 bundleURL];
  MEMORY[0x1EEE9AC00](v28);
  v29 = &v65 - v73;
  sub_1CA948B68();

  v30 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v31 = sub_1CA2F9F14(v22, v66, v24, v26, 0, 0, v27, v29);
  *(v19 + 64) = v71;
  *(v19 + 40) = v31;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v32 = sub_1CA94C1E8();
  v33 = v68;
  *(inited + 120) = sub_1CA6B3784(v32);
  *(inited + 144) = v33;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 2036429383;
  *(inited + 168) = 0xE400000000000000;
  v34 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD00000000000001BLL;
  *(inited + 208) = 0x80000001CA9AA310;
  *(inited + 224) = v34;
  *(inited + 232) = @"InputPassthrough";
  v35 = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  *(inited + 264) = v35;
  *(inited + 272) = @"Name";
  v36 = @"IconColor";
  v37 = @"IconSymbol";
  v38 = @"InputPassthrough";
  v39 = @"Name";
  v40 = sub_1CA94C438("Wait to Return (Action Name)", 28);
  v67 = v41;
  v42 = sub_1CA94C438("Wait to Return", 14);
  v44 = v43;
  v68 = &v65;
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v65 - v74;
  sub_1CA948D98();
  v46 = v72;
  v47 = [v72 bundleURL];
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v65 - v73;
  sub_1CA948B68();

  v49 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v40, v67, v42, v44, 0, 0, v45, v48);
  *(inited + 304) = v71;
  *(inited + 312) = @"ParameterSummary";
  v50 = @"ParameterSummary";
  v51 = sub_1CA94C438("Wait to return (Parameter Summary)", 34);
  v68 = v52;
  v53 = sub_1CA94C438("Wait to return", 14);
  v55 = v54;
  v71 = &v65;
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v65 - v74;
  sub_1CA948D98();
  v57 = [v46 bundleURL];
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v65 - v73;
  sub_1CA948B68();

  v59 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v60 = sub_1CA2F9F14(v51, v68, v53, v55, 0, 0, v56, v58);
  v61 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v62 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 320) = v61;
  *(inited + 344) = v62;
  *(inited + 352) = @"RequiredResources";
  *(inited + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 360) = &unk_1F49F6568;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v63 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA36F65C()
{
  v213 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9AA3B0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("play|song|ipod|track|music|itunes|library", 41);
  v6 = v5;
  v7 = sub_1CA94C438("play|song|ipod|track|music|itunes|library", 41);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v228 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v229 = v11;
  v12 = &v202 - v228;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v226 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v230 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v227 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v202 - v227;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v225 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v212 = v22;
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v223 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA97EDF0;
  *(v23 + 32) = @"DescriptionInput";
  v24 = @"Description";
  v25 = @"DescriptionInput";
  v26 = sub_1CA94C438("The music to be played", 22);
  v220 = v27;
  v221 = v26;
  v28 = sub_1CA94C438("The music to be played", 22);
  v30 = v29;
  v222 = &v202;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v202 - v228;
  sub_1CA948D98();
  v32 = v226;
  v33 = [v226 bundleURL];
  v224 = inited;
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v227;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v221, v220, v28, v30, 0, 0, v31, &v202 - v35);
  v37 = v225;
  *(v23 + 64) = v225;
  *(v23 + 72) = @"DescriptionSummary";
  v38 = @"DescriptionSummary";
  v39 = sub_1CA94C438("Plays music using the Music app.", 32);
  v220 = v40;
  v221 = v39;
  v41 = sub_1CA94C438("Plays music using the Music app.", 32);
  v43 = v42;
  v222 = &v202;
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v202 - v228;
  sub_1CA948D98();
  v45 = [v32 bundleURL];
  MEMORY[0x1EEE9AC00](v45);
  sub_1CA948B68();

  v46 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v47 = sub_1CA2F9F14(v221, v220, v41, v43, 0, 0, v44, &v202 - v35);
  *(v23 + 104) = v37;
  *(v23 + 80) = v47;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v48 = sub_1CA94C1E8();
  v49 = v223;
  v50 = sub_1CA6B3784(v48);
  v51 = v224;
  v224[20] = v50;
  v51[23] = v49;
  v51[24] = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v52 = swift_initStackObject();
  *(v52 + 16) = xmmword_1CA9813C0;
  *(v52 + 32) = 0x656C7069746C754DLL;
  *(v52 + 40) = 0xE800000000000000;
  v53 = MEMORY[0x1E69E6370];
  *(v52 + 48) = 1;
  *(v52 + 72) = v53;
  strcpy((v52 + 80), "ParameterKey");
  v54 = v53;
  *(v52 + 93) = 0;
  *(v52 + 94) = -5120;
  strcpy((v52 + 96), "WFMediaItems");
  *(v52 + 109) = 0;
  *(v52 + 110) = -5120;
  *(v52 + 120) = MEMORY[0x1E69E6158];
  *(v52 + 128) = 0x7365707954;
  *(v52 + 136) = 0xE500000000000000;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v52 + 168) = v211;
  *(v52 + 144) = &unk_1F49F65D8;
  v55 = @"Input";
  v56 = sub_1CA94C1E8();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v51[25] = v56;
  v51[28] = v57;
  v51[29] = @"InputPassthrough";
  *(v51 + 240) = 1;
  v51[33] = v54;
  v51[34] = @"Name";
  v58 = @"InputPassthrough";
  v59 = @"Name";
  v60 = sub_1CA94C438("Play Music (Action Name)", 24);
  v62 = v61;
  v63 = sub_1CA94C438("Play Music", 10);
  v65 = v64;
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v202 - v228;
  sub_1CA948D98();
  v67 = [v226 bundleURL];
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v202 - v227;
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v70 = sub_1CA2F9F14(v60, v62, v63, v65, 0, 0, v66, v68);
  v71 = v224;
  v224[35] = v70;
  v71[38] = v225;
  v71[39] = @"Parameters";
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v223 = swift_allocObject();
  v210 = xmmword_1CA981470;
  *(v223 + 16) = xmmword_1CA981470;
  v222 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v72 = swift_initStackObject();
  *(v72 + 16) = xmmword_1CA981370;
  *(v72 + 32) = @"AlwaysShowsButton";
  *(v72 + 40) = 1;
  *(v72 + 64) = MEMORY[0x1E69E6370];
  *(v72 + 72) = @"Class";
  *(v72 + 80) = 0xD000000000000016;
  *(v72 + 88) = 0x80000001CA9AA480;
  *(v72 + 104) = MEMORY[0x1E69E6158];
  *(v72 + 112) = @"Description";
  v215 = @"Class";
  v73 = @"Parameters";
  v74 = @"AlwaysShowsButton";
  v75 = @"Description";
  v76 = sub_1CA94C438("Selects music to start playing. (WFMediaItems)", 46);
  v78 = v77;
  v79 = sub_1CA94C438("Selects music to start playing.", 31);
  v81 = v80;
  v220 = &v202;
  MEMORY[0x1EEE9AC00](v79);
  v82 = &v202 - v228;
  sub_1CA948D98();
  v83 = [v226 bundleURL];
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v202 - v227;
  sub_1CA948B68();

  v85 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v72 + 120) = sub_1CA2F9F14(v76, v78, v79, v81, 0, 0, v82, v84);
  v86 = v225;
  *(v72 + 144) = v225;
  *(v72 + 152) = @"Key";
  strcpy((v72 + 160), "WFMediaItems");
  *(v72 + 173) = 0;
  *(v72 + 174) = -5120;
  *(v72 + 184) = MEMORY[0x1E69E6158];
  *(v72 + 192) = @"Label";
  v87 = @"Key";
  v88 = @"Label";
  v89 = v87;
  v90 = v88;
  v219 = v89;
  v220 = v90;
  v217 = sub_1CA94C438("Music (WFMediaItems)", 20);
  v92 = v91;
  v93 = sub_1CA94C438("Music", 5);
  v95 = v94;
  v218 = &v202;
  MEMORY[0x1EEE9AC00](v93);
  v96 = &v202 - v228;
  sub_1CA948D98();
  v97 = [v226 bundleURL];
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v202 - v227;
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v100 = sub_1CA2F9F14(v217, v92, v93, v95, 0, 0, v96, v98);
  *(v72 + 224) = v86;
  *(v72 + 200) = v100;
  _s3__C3KeyVMa_0(0);
  v218 = v101;
  v217 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v102 = sub_1CA94C1E8();
  v103 = sub_1CA2F864C(v102);
  *(v223 + 32) = v103;
  v104 = swift_allocObject();
  v208 = xmmword_1CA981350;
  *(v104 + 16) = xmmword_1CA981350;
  v207 = 0x80000001CA99C4A0;
  *(v104 + 32) = v215;
  *(v104 + 40) = 0xD000000000000016;
  *(v104 + 48) = 0x80000001CA99C4A0;
  *(v104 + 64) = MEMORY[0x1E69E6158];
  *(v104 + 72) = @"Items";
  v214 = swift_allocObject();
  *(v214 + 1) = xmmword_1CA981360;
  v206 = @"Items";
  v105 = sub_1CA94C438("Off (WFPlayMusicActionShuffle)", 30);
  v204 = v106;
  v205 = v105;
  v107 = sub_1CA94C438("Off", 3);
  v203 = v108;
  v209 = &v202;
  MEMORY[0x1EEE9AC00](v107);
  v109 = &v202 - v228;
  sub_1CA948D98();
  v110 = v226;
  v111 = [v226 bundleURL];
  MEMORY[0x1EEE9AC00](v111);
  v112 = &v202 - v227;
  sub_1CA948B68();

  v113 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v114 = sub_1CA2F9F14(v205, v204, v107, v203, 0, 0, v109, v112);
  v214[4] = v114;
  v115 = sub_1CA94C438("Songs (WFPlayMusicActionShuffle)", 32);
  v204 = v116;
  v205 = v115;
  v203 = sub_1CA94C438("Songs", 5);
  v118 = v117;
  v209 = &v202;
  MEMORY[0x1EEE9AC00](v203);
  v119 = v228;
  sub_1CA948D98();
  v120 = [v110 bundleURL];
  MEMORY[0x1EEE9AC00](v120);
  v121 = v227;
  sub_1CA948B68();

  v122 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v123 = sub_1CA2F9F14(v205, v204, v203, v118, 0, 0, &v202 - v119, &v202 - v121);
  v124 = v214;
  v214[5] = v123;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v209 = v125;
  *(v104 + 80) = v124;
  v126 = v219;
  *(v104 + 104) = v125;
  *(v104 + 112) = v126;
  *(v104 + 120) = 0xD000000000000018;
  *(v104 + 128) = 0x80000001CA9AA570;
  v127 = v220;
  *(v104 + 144) = MEMORY[0x1E69E6158];
  *(v104 + 152) = v127;
  v128 = sub_1CA94C438("Shuffle (WFPlayMusicActionShuffle)", 34);
  v204 = v129;
  v205 = v128;
  v130 = sub_1CA94C438("Shuffle", 7);
  v132 = v131;
  v214 = &v202;
  MEMORY[0x1EEE9AC00](v130);
  sub_1CA948D98();
  v133 = v226;
  v134 = [v226 bundleURL];
  MEMORY[0x1EEE9AC00](v134);
  sub_1CA948B68();

  v135 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v136 = sub_1CA2F9F14(v205, v204, v130, v132, 0, 0, &v202 - v119, &v202 - v121);
  *(v104 + 184) = v225;
  *(v104 + 160) = v136;
  v137 = sub_1CA94C1E8();
  v138 = sub_1CA2F864C(v137);
  *(v223 + 40) = v138;
  v139 = swift_allocObject();
  *(v139 + 16) = v208;
  *(v139 + 32) = v215;
  *(v139 + 40) = 0xD000000000000016;
  *(v139 + 48) = v207;
  v140 = v206;
  *(v139 + 64) = MEMORY[0x1E69E6158];
  *(v139 + 72) = v140;
  v221 = swift_allocObject();
  *(v221 + 1) = v210;
  v141 = sub_1CA94C438("None (WFPlayMusicActionRepeat)", 30);
  v214 = v142;
  v215 = v141;
  v143 = sub_1CA94C438("None", 4);
  *&v210 = v144;
  v216 = &v202;
  MEMORY[0x1EEE9AC00](v143);
  v145 = v228;
  sub_1CA948D98();
  v146 = [v133 bundleURL];
  *&v208 = &v202;
  MEMORY[0x1EEE9AC00](v146);
  v147 = v227;
  sub_1CA948B68();

  v148 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v149 = sub_1CA2F9F14(v215, v214, v143, v210, 0, 0, &v202 - v145, &v202 - v147);
  v221[4] = v149;
  v150 = sub_1CA94C438("One (WFPlayMusicActionRepeat)", 29);
  v214 = v151;
  v215 = v150;
  v152 = sub_1CA94C438("One", 3);
  *&v210 = v153;
  v216 = &v202;
  MEMORY[0x1EEE9AC00](v152);
  v154 = &v202 - v145;
  sub_1CA948D98();
  v155 = v226;
  v156 = [v226 bundleURL];
  MEMORY[0x1EEE9AC00](v156);
  sub_1CA948B68();

  v157 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v158 = sub_1CA2F9F14(v215, v214, v152, v210, 0, 0, v154, &v202 - v147);
  v221[5] = v158;
  v159 = sub_1CA94C438("All (WFPlayMusicActionRepeat)", 29);
  v214 = v160;
  v215 = v159;
  v161 = sub_1CA94C438("All", 3);
  *&v210 = v162;
  v216 = &v202;
  MEMORY[0x1EEE9AC00](v161);
  v163 = v228;
  sub_1CA948D98();
  v164 = [v155 bundleURL];
  MEMORY[0x1EEE9AC00](v164);
  v165 = v227;
  sub_1CA948B68();

  v166 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v167 = sub_1CA2F9F14(v215, v214, v161, v210, 0, 0, &v202 - v163, &v202 - v165);
  v168 = v221;
  v221[6] = v167;
  *(v139 + 80) = v168;
  v169 = v219;
  *(v139 + 104) = v209;
  *(v139 + 112) = v169;
  *(v139 + 120) = 0xD000000000000017;
  *(v139 + 128) = 0x80000001CA9AA640;
  v170 = v220;
  *(v139 + 144) = MEMORY[0x1E69E6158];
  *(v139 + 152) = v170;
  v171 = sub_1CA94C438("Repeat (WFPlayMusicActionRepeat)", 32);
  v219 = v172;
  v220 = v171;
  v173 = sub_1CA94C438("Repeat", 6);
  v175 = v174;
  v221 = &v202;
  MEMORY[0x1EEE9AC00](v173);
  sub_1CA948D98();
  v176 = [v226 bundleURL];
  MEMORY[0x1EEE9AC00](v176);
  sub_1CA948B68();

  v177 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v178 = sub_1CA2F9F14(v220, v219, v173, v175, 0, 0, &v202 - v163, &v202 - v165);
  *(v139 + 184) = v225;
  *(v139 + 160) = v178;
  v179 = sub_1CA94C1E8();
  v180 = sub_1CA2F864C(v179);
  v181 = v223;
  *(v223 + 48) = v180;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v183 = v224;
  v224[40] = v181;
  v183[43] = v182;
  v183[44] = @"ParameterSummary";
  v184 = @"ParameterSummary";
  v185 = sub_1CA94C438("Play ${WFMediaItems} (Parameter Summary)", 40);
  v187 = v186;
  v188 = sub_1CA94C438("Play ${WFMediaItems}", 20);
  v190 = v189;
  MEMORY[0x1EEE9AC00](v188);
  sub_1CA948D98();
  v191 = [v226 bundleURL];
  MEMORY[0x1EEE9AC00](v191);
  v192 = &v202 - v227;
  sub_1CA948B68();

  v193 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v194 = sub_1CA2F9F14(v185, v187, v188, v190, 0, 0, &v202 - v163, v192);
  v195 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v196 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v197 = v224;
  v224[45] = v195;
  v197[48] = v196;
  v197[49] = @"RequiredResources";
  v197[50] = &unk_1F49F6618;
  v197[53] = v211;
  v197[54] = @"SessionConfiguration";
  v198 = @"RequiredResources";
  v199 = @"SessionConfiguration";
  v200 = sub_1CA94C1E8();
  v197[58] = v212;
  v197[55] = v200;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA370DD8()
{
  v98 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x80000001CA9AA6F0;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Description";
  v97 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1CA981310;
  *(v6 + 32) = @"DescriptionSummary";
  v7 = @"Description";
  v8 = @"DescriptionSummary";
  v9 = sub_1CA94C438("Extracts the contents of the web pages passed into the action.", 62);
  v100 = v10;
  v11 = sub_1CA94C438("Extracts the contents of the web pages passed into the action.", 62);
  v13 = v12;
  v14 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v104 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v105 = v15;
  v16 = &v91 - v104;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v102 = qword_1EDB9F690;
  v17 = [qword_1EDB9F690 bundleURL];
  v18 = sub_1CA948BA8();
  v103 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v101 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = &v91 - v101;
  sub_1CA948B68();

  v21 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v22 = sub_1CA2F9F14(v9, v100, v11, v13, 0, 0, v16, v20);
  v99 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v6 + 64) = v99;
  *(v6 + 40) = v22;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v23 = sub_1CA94C1E8();
  v24 = v97;
  *(inited + 120) = sub_1CA6B3784(v23);
  *(inited + 144) = v24;
  *(inited + 152) = @"Input";
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v25 = swift_initStackObject();
  v95 = xmmword_1CA981350;
  *(v25 + 16) = xmmword_1CA981350;
  *(v25 + 32) = 0x656C7069746C754DLL;
  *(v25 + 40) = 0xE800000000000000;
  v26 = MEMORY[0x1E69E6370];
  *(v25 + 48) = 1;
  *(v25 + 72) = v26;
  strcpy((v25 + 80), "ParameterKey");
  *(v25 + 93) = 0;
  *(v25 + 94) = -5120;
  *(v25 + 96) = 0x7475706E494657;
  *(v25 + 104) = 0xE700000000000000;
  *(v25 + 120) = MEMORY[0x1E69E6158];
  *(v25 + 128) = 0x6465726975716552;
  *(v25 + 136) = 0xE800000000000000;
  *(v25 + 144) = 1;
  *(v25 + 168) = v26;
  *(v25 + 176) = 0x7365707954;
  *(v25 + 184) = 0xE500000000000000;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v25 + 216) = v100;
  *(v25 + 192) = &unk_1F49F66F8;
  v27 = @"Input";
  v28 = sub_1CA94C1E8();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v97 = v29;
  *(inited + 160) = v28;
  *(inited + 184) = v29;
  *(inited + 192) = @"Name";
  v30 = @"Name";
  v31 = sub_1CA94C438("Get Contents of Web Page (Action Name)", 38);
  v92 = v32;
  v93 = v31;
  v33 = sub_1CA94C438("Get Contents of Web Page", 24);
  v35 = v34;
  v94 = &v91;
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v91 - v104;
  sub_1CA948D98();
  v37 = v102;
  v38 = [v102 bundleURL];
  MEMORY[0x1EEE9AC00](v38);
  v39 = v101;
  sub_1CA948B68();

  v40 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 200) = sub_1CA2F9F14(v93, v92, v33, v35, 0, 0, v36, &v91 - v39);
  v41 = v99;
  *(inited + 224) = v99;
  *(inited + 232) = @"Output";
  v42 = swift_initStackObject();
  *(v42 + 16) = v95;
  *(v42 + 32) = 0x75736F6C63736944;
  *(v42 + 40) = 0xEF6C6576654C6572;
  *(v42 + 48) = 0x63696C627550;
  *(v42 + 56) = 0xE600000000000000;
  *(v42 + 72) = MEMORY[0x1E69E6158];
  *(v42 + 80) = 0x656C7069746C754DLL;
  *(v42 + 88) = 0xE800000000000000;
  *(v42 + 96) = 1;
  *(v42 + 120) = MEMORY[0x1E69E6370];
  *(v42 + 128) = 0x614E74757074754FLL;
  *(v42 + 136) = 0xEA0000000000656DLL;
  v43 = @"Output";
  v44 = sub_1CA94C438("Contents of Web Page (Default Output Name)", 42);
  v94 = v45;
  *&v95 = v44;
  v93 = sub_1CA94C438("Contents of Web Page", 20);
  v47 = v46;
  v96 = &v91;
  MEMORY[0x1EEE9AC00](v93);
  v48 = &v91 - v104;
  sub_1CA948D98();
  v49 = [v37 bundleURL];
  MEMORY[0x1EEE9AC00](v49);
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v42 + 144) = sub_1CA2F9F14(v95, v94, v93, v47, 0, 0, v48, &v91 - v39);
  *(v42 + 168) = v41;
  *(v42 + 176) = 0x7365707954;
  *(v42 + 216) = v100;
  *(v42 + 184) = 0xE500000000000000;
  *(v42 + 192) = &unk_1F49F6728;
  v51 = MEMORY[0x1E69E6158];
  *(inited + 240) = sub_1CA94C1E8();
  *(inited + 264) = v97;
  *(inited + 272) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_1CA9813B0;
  v96 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1CA981400;
  *(v52 + 32) = @"AutocapitalizationType";
  *(v52 + 40) = 1701736270;
  *(v52 + 48) = 0xE400000000000000;
  *(v52 + 64) = v51;
  *(v52 + 72) = @"Class";
  *(v52 + 80) = 0xD000000000000014;
  *(v52 + 88) = 0x80000001CA99B500;
  *(v52 + 104) = v51;
  *(v52 + 112) = @"DisableAutocorrection";
  *(v52 + 120) = 1;
  *(v52 + 144) = MEMORY[0x1E69E6370];
  *(v52 + 152) = @"Key";
  *(v52 + 160) = 0x7475706E494657;
  *(v52 + 168) = 0xE700000000000000;
  *(v52 + 184) = v51;
  *(v52 + 192) = @"KeyboardType";
  *(v52 + 200) = 5001813;
  *(v52 + 208) = 0xE300000000000000;
  *(v52 + 224) = v51;
  *(v52 + 232) = @"Label";
  v53 = @"Parameters";
  v54 = @"AutocapitalizationType";
  v55 = @"Class";
  v56 = @"DisableAutocorrection";
  v57 = @"Key";
  v58 = @"KeyboardType";
  v59 = @"Label";
  v60 = sub_1CA94C438("URL (WFInput)", 13);
  v94 = v61;
  v62 = sub_1CA94C438("URL", 3);
  v64 = v63;
  *&v95 = &v91;
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v91 - v104;
  sub_1CA948D98();
  v66 = [v102 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v91 - v101;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v52 + 240) = sub_1CA2F9F14(v60, v94, v62, v64, 0, 0, v65, v67);
  *(v52 + 264) = v99;
  *(v52 + 272) = @"TextContentType";
  *(v52 + 304) = MEMORY[0x1E69E6158];
  *(v52 + 280) = 5001813;
  *(v52 + 288) = 0xE300000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v69 = @"TextContentType";
  v70 = sub_1CA94C1E8();
  v71 = sub_1CA2F864C(v70);
  v72 = v97;
  *(v97 + 32) = v71;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 280) = v72;
  *(inited + 304) = v73;
  *(inited + 312) = @"ParameterSummary";
  v74 = @"ParameterSummary";
  v75 = sub_1CA94C438("Get contents of web page at ${WFInput} (Parameter Summary)", 58);
  v77 = v76;
  v78 = sub_1CA94C438("Get contents of web page at ${WFInput}", 38);
  v80 = v79;
  v99 = &v91;
  MEMORY[0x1EEE9AC00](v78);
  v81 = &v91 - v104;
  sub_1CA948D98();
  v82 = [v102 bundleURL];
  MEMORY[0x1EEE9AC00](v82);
  v83 = &v91 - v101;
  sub_1CA948B68();

  v84 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v85 = sub_1CA2F9F14(v75, v77, v78, v80, 0, 0, v81, v83);
  v86 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v87 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 320) = v86;
  *(inited + 344) = v87;
  *(inited + 352) = @"RequiredResources";
  *(inited + 360) = &unk_1F49F6758;
  *(inited + 384) = v100;
  *(inited + 392) = @"ResidentCompatible";
  *(inited + 424) = MEMORY[0x1E69E6370];
  *(inited + 400) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v88 = @"RequiredResources";
  v89 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA371B68()
{
  v156 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9AA880;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("add", 3);
  v6 = v5;
  v7 = sub_1CA94C438("add", 3);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v164 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v165 = v11;
  v12 = &v146 - v164;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v163 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v162 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v161 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v146 - v161;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v160 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v158 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA97EDF0;
  *(v20 + 32) = @"DescriptionResult";
  v21 = @"Description";
  v22 = @"DescriptionResult";
  *&v155 = sub_1CA94C438("The updated contents of the variable.", 37);
  *&v154 = v23;
  v153 = sub_1CA94C438("The updated contents of the variable.", 37);
  v25 = v24;
  v157 = &v146;
  MEMORY[0x1EEE9AC00](v153);
  v26 = &v146 - v164;
  sub_1CA948D98();
  v27 = v163;
  v28 = [v163 bundleURL];
  v159 = inited;
  MEMORY[0x1EEE9AC00](v28);
  v29 = v161;
  sub_1CA948B68();

  v30 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 40) = sub_1CA2F9F14(v155, v154, v153, v25, 0, 0, v26, &v146 - v29);
  v31 = v160;
  *(v20 + 64) = v160;
  *(v20 + 72) = @"DescriptionSummary";
  v32 = @"DescriptionSummary";
  *&v155 = sub_1CA94C438("Add to Variable (Description Summary)", 37);
  *&v154 = v33;
  v153 = sub_1CA94C438("Appends this action's input to the specified variable, creating the variable if it does not exist.\n\nThis allows you to make a variable hold multiple items.", 155);
  v35 = v34;
  v157 = &v146;
  MEMORY[0x1EEE9AC00](v153);
  v36 = &v146 - v164;
  sub_1CA948D98();
  v37 = [v27 bundleURL];
  MEMORY[0x1EEE9AC00](v37);
  sub_1CA948B68();

  v38 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v39 = sub_1CA2F9F14(v155, v154, v153, v35, 0, 0, v36, &v146 - v29);
  *(v20 + 104) = v31;
  *(v20 + 80) = v39;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v40 = sub_1CA94C1E8();
  v41 = v158;
  v42 = sub_1CA6B3784(v40);
  v43 = v159;
  v159[15] = v42;
  v43[18] = v41;
  v43[19] = @"IconName";
  v43[20] = 0x656C626169726156;
  v43[21] = 0xE800000000000000;
  v44 = MEMORY[0x1E69E6158];
  v43[23] = MEMORY[0x1E69E6158];
  v43[24] = @"Input";
  v45 = v44;
  *&v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v46 = swift_initStackObject();
  v154 = xmmword_1CA981370;
  *(v46 + 16) = xmmword_1CA981370;
  *(v46 + 32) = 0xD00000000000001DLL;
  *(v46 + 40) = 0x80000001CA9A3ED0;
  v47 = MEMORY[0x1E69E6370];
  *(v46 + 48) = 1;
  *(v46 + 72) = v47;
  *(v46 + 80) = 0x656C7069746C754DLL;
  *(v46 + 88) = 0xE800000000000000;
  *(v46 + 96) = 1;
  *(v46 + 120) = v47;
  strcpy((v46 + 128), "ParameterKey");
  *(v46 + 141) = 0;
  *(v46 + 142) = -5120;
  *(v46 + 144) = 0x7475706E494657;
  *(v46 + 152) = 0xE700000000000000;
  *(v46 + 168) = v45;
  *(v46 + 176) = 0x6465726975716552;
  *(v46 + 184) = 0xE800000000000000;
  *(v46 + 192) = 1;
  *(v46 + 216) = v47;
  *(v46 + 224) = 0x7365707954;
  *(v46 + 232) = 0xE500000000000000;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v46 + 264) = v158;
  *(v46 + 240) = &unk_1F49F6788;
  v48 = @"IconName";
  v49 = @"Input";
  v50 = sub_1CA94C1E8();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v157 = v51;
  v43[25] = v50;
  v43[28] = v51;
  v43[29] = @"Name";
  v52 = @"Name";
  v53 = sub_1CA94C438("Add to Variable (Action Name)", 29);
  v152 = v54;
  v55 = sub_1CA94C438("Add to Variable", 15);
  v57 = v56;
  v153 = &v146;
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v146 - v164;
  sub_1CA948D98();
  v59 = [v163 bundleURL];
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v146 - v161;
  sub_1CA948B68();

  v61 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v43[30] = sub_1CA2F9F14(v53, v152, v55, v57, 0, 0, v58, v60);
  v62 = v160;
  v43[33] = v160;
  v43[34] = @"Output";
  v63 = swift_allocObject();
  v155 = xmmword_1CA981350;
  *(v63 + 16) = xmmword_1CA981350;
  *(v63 + 32) = 0x75736F6C63736944;
  *(v63 + 40) = 0xEF6C6576654C6572;
  *(v63 + 48) = 0x63696C627550;
  *(v63 + 56) = 0xE600000000000000;
  *(v63 + 72) = MEMORY[0x1E69E6158];
  *(v63 + 80) = 0x656C7069746C754DLL;
  *(v63 + 88) = 0xE800000000000000;
  *(v63 + 96) = 1;
  *(v63 + 120) = MEMORY[0x1E69E6370];
  *(v63 + 128) = 0x614E74757074754FLL;
  *(v63 + 136) = 0xEA0000000000656DLL;
  v64 = @"Output";
  v65 = sub_1CA94C438("Variable (Default Output Name)", 30);
  v152 = v66;
  v67 = sub_1CA94C438("Variable", 8);
  v69 = v68;
  v153 = &v146;
  MEMORY[0x1EEE9AC00](v67);
  v70 = &v146 - v164;
  sub_1CA948D98();
  v71 = [v163 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v146 - v161;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v63 + 144) = sub_1CA2F9F14(v65, v152, v67, v69, 0, 0, v70, v72);
  *(v63 + 168) = v62;
  *(v63 + 176) = 0x7365707954;
  *(v63 + 216) = v158;
  *(v63 + 184) = 0xE500000000000000;
  *(v63 + 192) = &unk_1F49F67B8;
  v74 = MEMORY[0x1E69E6158];
  v75 = sub_1CA94C1E8();
  v76 = v159;
  v159[35] = v75;
  v76[38] = v157;
  v76[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v158 = swift_allocObject();
  *(v158 + 16) = xmmword_1CA981360;
  v157 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v77 = swift_allocObject();
  *(v77 + 16) = v154;
  *(v77 + 32) = @"Class";
  *(v77 + 40) = 0xD000000000000018;
  *(v77 + 48) = 0x80000001CA9A3F20;
  *(v77 + 64) = v74;
  *(v77 + 72) = @"Key";
  strcpy((v77 + 80), "WFVariableName");
  *(v77 + 95) = -18;
  *(v77 + 104) = v74;
  *(v77 + 112) = @"Label";
  v78 = @"Class";
  v79 = @"Key";
  v80 = @"Label";
  *&v154 = v78;
  v152 = v79;
  v151 = v80;
  v81 = @"Parameters";
  v82 = sub_1CA94C438("Variable (WFVariableName)", 25);
  v148 = v83;
  v149 = v82;
  v84 = sub_1CA94C438("Variable", 8);
  v147 = v85;
  v150 = &v146;
  MEMORY[0x1EEE9AC00](v84);
  v86 = v164;
  sub_1CA948D98();
  v87 = [v163 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  v88 = v161;
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v77 + 120) = sub_1CA2F9F14(v149, v148, v84, v147, 0, 0, &v146 - v86, &v146 - v88);
  *(v77 + 144) = v160;
  *(v77 + 152) = @"Placeholder";
  v150 = @"Placeholder";
  v90 = sub_1CA94C438("Variable Name (WFVariableName)", 30);
  v147 = v91;
  v148 = v90;
  v92 = sub_1CA94C438("Variable Name", 13);
  v146 = v93;
  v149 = &v146;
  MEMORY[0x1EEE9AC00](v92);
  v94 = &v146 - v86;
  sub_1CA948D98();
  v95 = v163;
  v96 = [v163 bundleURL];
  MEMORY[0x1EEE9AC00](v96);
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v77 + 160) = sub_1CA2F9F14(v148, v147, v92, v146, 0, 0, v94, &v146 - v88);
  *(v77 + 184) = v160;
  *(v77 + 192) = @"TextAlignment";
  v98 = MEMORY[0x1E69E6158];
  *(v77 + 224) = MEMORY[0x1E69E6158];
  *(v77 + 200) = 0x7468676952;
  *(v77 + 208) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v149 = v99;
  v148 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v100 = @"TextAlignment";
  v101 = sub_1CA94C1E8();
  v102 = sub_1CA2F864C(v101);
  *(v158 + 32) = v102;
  v103 = swift_initStackObject();
  *(v103 + 16) = v155;
  *(v103 + 32) = v154;
  *(v103 + 40) = 0xD000000000000019;
  *(v103 + 48) = 0x80000001CA99B030;
  v104 = v152;
  *(v103 + 64) = v98;
  *(v103 + 72) = v104;
  *(v103 + 80) = 0x7475706E494657;
  *(v103 + 88) = 0xE700000000000000;
  v105 = v151;
  *(v103 + 104) = v98;
  *(v103 + 112) = v105;
  v106 = sub_1CA94C438("Input (WFInput)", 15);
  v153 = v107;
  *&v154 = v106;
  v152 = sub_1CA94C438("Input", 5);
  v109 = v108;
  *&v155 = &v146;
  MEMORY[0x1EEE9AC00](v152);
  v110 = v164;
  sub_1CA948D98();
  v111 = v95;
  v112 = [v95 bundleURL];
  v151 = &v146;
  MEMORY[0x1EEE9AC00](v112);
  v113 = v161;
  sub_1CA948B68();

  v114 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v103 + 120) = sub_1CA2F9F14(v154, v153, v152, v109, 0, 0, &v146 - v110, &v146 - v113);
  v115 = v160;
  v116 = v150;
  *(v103 + 144) = v160;
  *(v103 + 152) = v116;
  v117 = sub_1CA94C438("Input (WFInput)", 15);
  v153 = v118;
  *&v154 = v117;
  v152 = sub_1CA94C438("Input", 5);
  v120 = v119;
  *&v155 = &v146;
  MEMORY[0x1EEE9AC00](v152);
  sub_1CA948D98();
  v121 = [v111 bundleURL];
  MEMORY[0x1EEE9AC00](v121);
  sub_1CA948B68();

  v122 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v123 = sub_1CA2F9F14(v154, v153, v152, v120, 0, 0, &v146 - v110, &v146 - v113);
  *(v103 + 184) = v115;
  *(v103 + 160) = v123;
  v124 = sub_1CA94C1E8();
  v125 = sub_1CA2F864C(v124);
  v126 = v158;
  *(v158 + 40) = v125;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v128 = v159;
  v159[40] = v126;
  v128[43] = v127;
  v128[44] = @"ParameterSummary";
  v129 = @"ParameterSummary";
  v130 = sub_1CA94C438("Add ${WFInput} to ${WFVariableName} (Parameter Summary)", 55);
  v132 = v131;
  v133 = sub_1CA94C438("Add ${WFInput} to ${WFVariableName}", 35);
  v135 = v134;
  MEMORY[0x1EEE9AC00](v133);
  v136 = &v146 - v164;
  sub_1CA948D98();
  v137 = [v163 bundleURL];
  MEMORY[0x1EEE9AC00](v137);
  v138 = &v146 - v161;
  sub_1CA948B68();

  v139 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v140 = sub_1CA2F9F14(v130, v132, v133, v135, 0, 0, v136, v138);
  v141 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v142 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v143 = v159;
  v159[45] = v141;
  v143[48] = v142;
  v143[49] = @"ResidentCompatible";
  v143[53] = MEMORY[0x1E69E6370];
  *(v143 + 400) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v144 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t ToolKitValueTransformError.hashValue.getter()
{
  v1 = *v0;
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](v1);
  return sub_1CA94D968();
}

uint64_t sub_1CA372F04(uint64_t a1)
{
  v2 = *v1;
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](v2);
  return sub_1CA94D968();
}

unint64_t sub_1CA372F4C()
{
  result = qword_1EC444928;
  if (!qword_1EC444928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444928);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolKitValueTransformError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t SharedTagged_2<>.shortcutRef.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);

  return sub_1CA94BE28();
}

uint64_t WeakRef<>.recoveredStringIdentifier<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1CA94C168();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v9 = v8 - v7;
  sub_1CA2D9B68();
  sub_1CA94BD48();
  if (v11)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BE0, &qword_1CA982090);
    sub_1CA94C068();
    CRKeyPath.recoveredStringIdentifier.getter();
    (*(v5 + 8))(v9, v3);
  }

  return OUTLINED_FUNCTION_52_0();
}

uint64_t Ref<>.recoveredStringIdentifier.getter()
{
  return sub_1CA3738A4(&qword_1EC443BC0, &unk_1CA983B20);
}

{
  return sub_1CA3738A4(&qword_1EC443BD8, &qword_1CA982068);
}

void sub_1CA373210()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v34 = *(v0 - 8);
  v35 = v4;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  v31 = v7 - v6;
  v32 = v5;
  v10 = _s10ParentNodeOMa(0, v8, v9, v5);
  OUTLINED_FUNCTION_1_0();
  v12 = v11;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_1_0();
  v18 = v17;
  OUTLINED_FUNCTION_29();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v30 - v21;
  v23 = *(v20 + 48);
  v33 = v12;
  v24 = *(v12 + 16);
  v24(&v30 - v21, v3, v10);
  v24(&v22[v23], v35, v10);
  OUTLINED_FUNCTION_49(v22, 1, v1);
  if (v25)
  {
    OUTLINED_FUNCTION_49(&v22[v23], 1, v1);
    if (v25)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v24(v15, v22, v10);
    OUTLINED_FUNCTION_49(&v22[v23], 1, v1);
    if (!v25)
    {
      v26 = v34;
      v27 = &v22[v23];
      v28 = v31;
      (*(v34 + 32))(v31, v27, v1);
      sub_1CA94C358();
      v29 = *(v26 + 8);
      v29(v28, v1);
      v29(v15, v1);
LABEL_10:
      v18 = v33;
      goto LABEL_11;
    }

    (*(v34 + 8))(v15, v1);
  }

  v10 = TupleTypeMetadata2;
LABEL_11:
  (*(v18 + 8))(v22, v10);
  OUTLINED_FUNCTION_36();
}

void LibraryModel.FolderCollection.init(name:glyphCharacter:)()
{
  OUTLINED_FUNCTION_37_0();
  v26 = v0;
  v23 = v1;
  v24 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF8, &qword_1CA9820A8);
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v25 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C00, &unk_1CA983B30);
  OUTLINED_FUNCTION_1_0();
  v15 = v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v23 - v20;
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_1CA94B838();
  v22 = type metadata accessor for LibraryModel.FolderCollection(0);
  v27 = 0;
  sub_1CA94B838();
  *(v4 + *(v22 + 24)) = MEMORY[0x1E69E7CC8];
  type metadata accessor for LibraryClock();
  sub_1CA374F5C();
  v27 = v23;
  v28 = v24;
  sub_1CA94B8A8();
  (*(v15 + 16))(v19, v21, v13);
  sub_1CA94B888();
  (*(v15 + 8))(v21, v13);
  v27 = v26;
  sub_1CA94B8A8();
  (*(v7 + 16))(v25, v12, v5);
  sub_1CA94B888();
  (*(v7 + 8))(v12, v5);
  OUTLINED_FUNCTION_36();
}

uint64_t SharedTagged_2<>.folderRef.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);

  return sub_1CA94BE38();
}

uint64_t LibraryModel.FolderCollection.glyphCharacter.setter(uint64_t a1)
{
  type metadata accessor for LibraryModel.FolderCollection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF8, &qword_1CA9820A8);
  return sub_1CA94B868();
}

uint64_t sub_1CA3738A4(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1CA94C168();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_1CA94BE88();
  CRKeyPath.recoveredStringIdentifier.getter();
  (*(v6 + 8))(v10, v4);
  return OUTLINED_FUNCTION_23();
}

uint64_t LibraryModel.CategoryCollection.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_52_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_14_0();
  sub_1CA25C3BC(v4, v5, v6, v7);
  OUTLINED_FUNCTION_14_0();
  sub_1CA25C3BC(v8, v9, v10, v11);
  sub_1CA94BD28();
  result = type metadata accessor for LibraryModel.CategoryCollection(0);
  *(a1 + *(result + 20)) = MEMORY[0x1E69E7CC8];
  return result;
}

void static Capsule<>.newLibraryCapsule()()
{
  OUTLINED_FUNCTION_37_0();
  v0 = sub_1CA94C168();
  v1 = OUTLINED_FUNCTION_18_0(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_0();
  v2 = type metadata accessor for LibraryModel(0);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v6 = v5 - v4;
  v7 = OUTLINED_FUNCTION_70();
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_31_6(v9, v10, v11, v12);
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_31_6(v13, v14, v15, v16);
  sub_1CA94BC78();
  v17 = OUTLINED_FUNCTION_70();
  __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_31_6(v19, v20, v21, v22);
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_31_6(v23, v24, v25, v26);
  sub_1CA94BDC8();
  *(v6 + *(v2 + 24)) = MEMORY[0x1E69E7CC8];
  sub_1CA94C178();
  sub_1CA25C5A0(&qword_1EC442AA8, type metadata accessor for LibraryModel, &protocol conformance descriptor for LibraryModel);
  OUTLINED_FUNCTION_14_0();
  sub_1CA94C038();
  OUTLINED_FUNCTION_36();
}

uint64_t LibraryModel.FolderCollection.name.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C00, &unk_1CA983B30);
  sub_1CA94B858();
  return v1;
}

uint64_t LibraryModel.FolderCollection.glyphCharacter.getter()
{
  type metadata accessor for LibraryModel.FolderCollection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF8, &qword_1CA9820A8);
  sub_1CA94B858();
  return v1;
}

uint64_t LibraryModel.Shortcut.Partial.visitReferences(_:)(uint64_t a1)
{
  sub_1CA378058();
  sub_1CA94C218();
  sub_1CA94B8B8();
}

uint64_t LibraryModel.Shortcut.Partial.init(from:)@<X0>(void *a2@<X8>)
{
  sub_1CA378058();
  result = sub_1CA94B938();
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t LibraryModel.Shortcut.Partial.encode(to:)(uint64_t a1)
{
  sub_1CA378058();
  sub_1CA94C218();
  sub_1CA94B978();
}

uint64_t LibraryModel.Shortcut.additionalFields.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1CA373E88()
{
  OUTLINED_FUNCTION_30();
  sub_1CA94BC48();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_0();
  sub_1CA378058();
  sub_1CA94C218();
  sub_1CA94B958();

  v1 = OUTLINED_FUNCTION_69();
  v2(v1);
  return 1;
}

uint64_t sub_1CA373FE8(uint64_t a1)
{
  v2 = sub_1CA378384();

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t sub_1CA374024(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA378058();

  return MEMORY[0x1EEDF4570](a1, a2, v4);
}

uint64_t sub_1CA374070@<X0>(_BYTE *a3@<X8>)
{
  sub_1CA378058();
  result = sub_1CA94B8F8();
  *a3 = result & 1;
  return result;
}

uint64_t sub_1CA3740BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA378058();

  return MEMORY[0x1EEDF4548](a1, a2, v4);
}

uint64_t sub_1CA374108(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA378058();

  return MEMORY[0x1EEDF4578](a1, a2, v4);
}

uint64_t sub_1CA374158(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA378058();

  return MEMORY[0x1EEDF4538](a1, a2, v4);
}

uint64_t sub_1CA3741AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA378058();

  return MEMORY[0x1EEDF4530](a1, a2, v4);
}

uint64_t sub_1CA374200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA378058();

  return MEMORY[0x1EEDF4518](a1, a2, a3, v6);
}

uint64_t sub_1CA374264(uint64_t a1)
{
  v2 = sub_1CA378058();

  return MEMORY[0x1EEDF4528](a1, v2);
}

uint64_t sub_1CA3742A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA378058();

  return MEMORY[0x1EEDF4508](a1, a2, v4);
}

uint64_t sub_1CA3742EC(uint64_t a1, uint64_t a2)
{
  sub_1CA378058();

  return sub_1CA94B958();
}

uint64_t sub_1CA374340(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA378058();

  return MEMORY[0x1EEDF4558](a1, a2, v4);
}

uint64_t sub_1CA37443C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA2D9B68();

  return MEMORY[0x1EEDF5200](a1, a2, a3, v6);
}

uint64_t sub_1CA3744D8(uint64_t a1)
{
  v2 = sub_1CA378058();

  return MEMORY[0x1EEDF4510](a1, v2);
}

uint64_t sub_1CA374524(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1CA94C218();
  return LibraryModel.FolderCollection.name.setter(v1, v2);
}

void (*LibraryModel.FolderCollection.name.modify())(void *)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_24_8(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C00, &unk_1CA983B30);
  *(v0 + 32) = sub_1CA94B848();
  return sub_1CA379A7C;
}

uint64_t LibraryModel.FolderCollection.$name.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C00, &unk_1CA983B30);

  return sub_1CA94B878();
}

uint64_t LibraryModel.FolderCollection.$name.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C00, &unk_1CA983B30);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_27();
  v1 = OUTLINED_FUNCTION_18_13();
  v2(v1);
  OUTLINED_FUNCTION_69();
  sub_1CA94B888();
  v3 = OUTLINED_FUNCTION_20_0();
  return v4(v3);
}

void (*LibraryModel.FolderCollection.$name.modify())()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *OUTLINED_FUNCTION_24_8(v2) = v0;
  v1[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C00, &unk_1CA983B30);
  OUTLINED_FUNCTION_1_0();
  v1[2] = v3;
  v5 = *(v4 + 64);
  v1[3] = __swift_coroFrameAllocStub(v5);
  v1[4] = __swift_coroFrameAllocStub(v5);
  v1[5] = __swift_coroFrameAllocStub(v5);
  sub_1CA94B878();
  return sub_1CA3747DC;
}

void sub_1CA3747DC()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = *v2;
  v4 = *(*(*v2 + 16) + 16);
  v4(*(*v2 + 32), v3[5], v3[1]);
  v5 = v3[4];
  v6 = v3[5];
  v8 = v3[2];
  v7 = v3[3];
  if (v1)
  {
    v4(v3[3], v3[4], v3[1]);
    sub_1CA94B888();
    v9 = *(v8 + 8);
    v10 = OUTLINED_FUNCTION_29_7();
    v9(v10);
    v11 = OUTLINED_FUNCTION_70();
    v9(v11);
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
    sub_1CA94B888();
    v12 = OUTLINED_FUNCTION_70();
    v13(v12);
  }

  free(v6);
  free(v5);
  free(v7);
  OUTLINED_FUNCTION_36();

  free(v14);
}

void (*LibraryModel.FolderCollection.glyphCharacter.modify())(void *)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_24_8(v1);
  type metadata accessor for LibraryModel.FolderCollection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF8, &qword_1CA9820A8);
  *(v0 + 32) = sub_1CA94B848();
  return sub_1CA374950;
}

uint64_t LibraryModel.FolderCollection.$glyphCharacter.getter()
{
  type metadata accessor for LibraryModel.FolderCollection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF8, &qword_1CA9820A8);
  return sub_1CA94B878();
}

uint64_t sub_1CA3749A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_27();
  v10 = OUTLINED_FUNCTION_69();
  v11(v10);
  return a7(v7);
}

uint64_t LibraryModel.FolderCollection.$glyphCharacter.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF8, &qword_1CA9820A8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_27();
  v1 = OUTLINED_FUNCTION_18_13();
  v2(v1);
  type metadata accessor for LibraryModel.FolderCollection(0);
  OUTLINED_FUNCTION_69();
  sub_1CA94B888();
  v3 = OUTLINED_FUNCTION_20_0();
  return v4(v3);
}

void (*LibraryModel.FolderCollection.$glyphCharacter.modify())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *OUTLINED_FUNCTION_24_8(v2) = v0;
  *(v1 + 8) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF8, &qword_1CA9820A8);
  OUTLINED_FUNCTION_1_0();
  *(v1 + 16) = v3;
  v5 = *(v4 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v5);
  *(v1 + 32) = __swift_coroFrameAllocStub(v5);
  *(v1 + 40) = __swift_coroFrameAllocStub(v5);
  *(v1 + 48) = *(type metadata accessor for LibraryModel.FolderCollection(0) + 20);
  sub_1CA94B878();
  return sub_1CA374C3C;
}

void sub_1CA374C3C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 16) + 16);
  v4(*(*a1 + 32), v3[5], v3[1]);
  v5 = v3[4];
  v12 = v3[5];
  v7 = v3[2];
  v6 = v3[3];
  v8 = v3[1];
  if (a2)
  {
    v4(v3[3], v5, v3[1]);
    OUTLINED_FUNCTION_70();
    sub_1CA94B888();
    v9 = *(v7 + 8);
    v10 = OUTLINED_FUNCTION_29_7();
    v9(v10);
    v11 = v12;
    (v9)(v12, v8);
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
    sub_1CA94B888();
    v11 = v12;
    (*(v7 + 8))(v12, v8);
  }

  free(v11);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t LibraryModel.FolderCollection.additionalFields.modify()
{
  v0 = OUTLINED_FUNCTION_30();
  type metadata accessor for LibraryModel.FolderCollection(v0);
  return OUTLINED_FUNCTION_25_6();
}

uint64_t sub_1CA374DD0()
{
  qword_1EC442C20 = 1701667182;
  *algn_1EC442C28 = 0xE400000000000000;
  qword_1EC442C30 = swift_getKeyPath();
  strcpy(byte_1EC442C38, "glyphCharacter");
  HIBYTE(qword_1EC442C40) = -18;
  result = swift_getKeyPath();
  qword_1EC442C48 = result;
  return result;
}

uint64_t static LibraryModel.FolderCollection.fields.getter()
{
  if (qword_1EC442C18 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_15_5(&qword_1EC442C20);

  sub_1CA94C218();
}

uint64_t LibraryModel.FolderCollection.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1CA94B838();
  v2 = type metadata accessor for LibraryModel.FolderCollection(0);
  result = sub_1CA94B838();
  *(a1 + *(v2 + 24)) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t sub_1CA374F5C()
{
  v0 = sub_1CA948CB8();
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v6 = v5 - v4;
  sub_1CA948CA8();
  sub_1CA948C68();
  v8 = v7;
  result = (*(v2 + 8))(v6, v0);
  v10 = floor(v8);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v10 < 9.22337204e18)
  {
    return v10;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t static LibraryModel.FolderCollection.== infix(_:_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C00, &unk_1CA983B30);
  sub_1CA94B858();
  sub_1CA94B858();

  return 1;
}

uint64_t sub_1CA37512C(uint64_t a1)
{
  v2 = sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection, &protocol conformance descriptor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF46B0](a1, v2);
}

uint64_t sub_1CA3751C8(uint64_t a1)
{
  v2 = sub_1CA25C5A0(&qword_1EC442BE0, type metadata accessor for LibraryModel.FolderCollection, &protocol conformance descriptor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t sub_1CA375234(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection, &protocol conformance descriptor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF4698](a1, a2, v4);
}

uint64_t sub_1CA3752B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection, &protocol conformance descriptor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF4640](a1, a2, v4);
}

uint64_t sub_1CA375334(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection, &protocol conformance descriptor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF4668](a1, a2, v4);
}

uint64_t sub_1CA3753B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection, &protocol conformance descriptor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF46A8](a1, a2, v4);
}

uint64_t sub_1CA37542C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection, &protocol conformance descriptor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF4670](a1, a2, a3, v6);
}

uint64_t sub_1CA3754C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection, &protocol conformance descriptor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF46A0](a1, a2, v4);
}

uint64_t sub_1CA37553C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection, &protocol conformance descriptor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF4678](a1, a2, v4);
}

uint64_t sub_1CA3755B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection, &protocol conformance descriptor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF4658](a1, a2, v4);
}

uint64_t sub_1CA37563C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection, &protocol conformance descriptor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF4650](a1, a2, v4);
}

uint64_t sub_1CA3756C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection, &protocol conformance descriptor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF4638](a1, a2, a3, v6);
}

uint64_t sub_1CA375754(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection, &protocol conformance descriptor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF4620](a1, a2, v4);
}

uint64_t sub_1CA3757D0(uint64_t a1)
{
  v2 = sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection, &protocol conformance descriptor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF4648](a1, v2);
}

uint64_t sub_1CA37583C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection, &protocol conformance descriptor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF4628](a1, a2, v4);
}

uint64_t sub_1CA3758B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection, &protocol conformance descriptor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF4680](a1, a2, v4);
}

void sub_1CA37593C()
{
  sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection, &protocol conformance descriptor for LibraryModel.FolderCollection);

  JUMPOUT(0x1CCAA0A20);
}

uint64_t sub_1CA375BC4(uint64_t a1)
{
  v2 = sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection, &protocol conformance descriptor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF4630](a1, v2);
}

uint64_t LibraryModel.CategoryCollection.additionalFields.getter()
{
  type metadata accessor for LibraryModel.CategoryCollection(0);

  return sub_1CA94C218();
}

uint64_t LibraryModel.CategoryCollection.additionalFields.setter()
{
  v2 = OUTLINED_FUNCTION_30();
  v3 = *(type metadata accessor for LibraryModel.CategoryCollection(v2) + 20);

  *(v1 + v3) = v0;
  return result;
}

uint64_t LibraryModel.CategoryCollection.additionalFields.modify()
{
  v0 = OUTLINED_FUNCTION_30();
  type metadata accessor for LibraryModel.CategoryCollection(v0);
  return OUTLINED_FUNCTION_25_6();
}

uint64_t sub_1CA375D38()
{
  qword_1EC442BA8 = 0x74756374726F6873;
  unk_1EC442BB0 = 0xE900000000000073;
  result = swift_getKeyPath();
  qword_1EC442BB8 = result;
  return result;
}

void static LibraryModel.CategoryCollection.fields.getter()
{
  if (qword_1EC442BA0 != -1)
  {
    swift_once();
  }

  sub_1CA94C218();

  OUTLINED_FUNCTION_14_0();
}

uint64_t sub_1CA375E08(uint64_t a1)
{
  v2 = sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection, &protocol conformance descriptor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF4618](a1, v2);
}

uint64_t sub_1CA375EA4(uint64_t a1)
{
  v2 = sub_1CA25C5A0(&qword_1EC442B70, type metadata accessor for LibraryModel.CategoryCollection, &protocol conformance descriptor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t sub_1CA375F10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection, &protocol conformance descriptor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF4600](a1, a2, v4);
}

uint64_t sub_1CA375F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection, &protocol conformance descriptor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF45A8](a1, a2, v4);
}

uint64_t sub_1CA376010(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection, &protocol conformance descriptor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF45D0](a1, a2, v4);
}

uint64_t sub_1CA37608C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection, &protocol conformance descriptor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF4610](a1, a2, v4);
}

uint64_t sub_1CA376108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection, &protocol conformance descriptor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF45D8](a1, a2, a3, v6);
}

uint64_t sub_1CA37619C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection, &protocol conformance descriptor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF4608](a1, a2, v4);
}

uint64_t sub_1CA376218(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection, &protocol conformance descriptor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF45E0](a1, a2, v4);
}

uint64_t sub_1CA376294(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection, &protocol conformance descriptor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF45C0](a1, a2, v4);
}

uint64_t sub_1CA376318(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection, &protocol conformance descriptor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF45B8](a1, a2, v4);
}

uint64_t sub_1CA37639C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection, &protocol conformance descriptor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF45A0](a1, a2, a3, v6);
}

uint64_t sub_1CA376430(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection, &protocol conformance descriptor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF4588](a1, a2, v4);
}

uint64_t sub_1CA3764AC(uint64_t a1)
{
  v2 = sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection, &protocol conformance descriptor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF45B0](a1, v2);
}

uint64_t sub_1CA376518(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection, &protocol conformance descriptor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF4590](a1, a2, v4);
}

uint64_t sub_1CA376594(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection, &protocol conformance descriptor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF45E8](a1, a2, v4);
}

void sub_1CA376618()
{
  sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection, &protocol conformance descriptor for LibraryModel.CategoryCollection);

  JUMPOUT(0x1CCAA08F0);
}

uint64_t sub_1CA3767A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA25C5A0(&qword_1EC442B78, type metadata accessor for LibraryModel.CategoryCollection, &protocol conformance descriptor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF5200](a1, a2, a3, v6);
}

uint64_t sub_1CA376920(uint64_t a1)
{
  v2 = sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection, &protocol conformance descriptor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF4598](a1, v2);
}

uint64_t sub_1CA3769C0(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_52();
  v2 = OUTLINED_FUNCTION_23();

  return v3(v2);
}

uint64_t sub_1CA376A2C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_52();
  v7 = *(v6 + 40);

  return v7(v3, a1, v5);
}

uint64_t LibraryModel.shortcutsAndFolders.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LibraryModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA8, &unk_1CA983A80);
  OUTLINED_FUNCTION_52();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t LibraryModel.shortcutsAndFolders.setter()
{
  v2 = OUTLINED_FUNCTION_30();
  v3 = *(type metadata accessor for LibraryModel(v2) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA8, &unk_1CA983A80);
  OUTLINED_FUNCTION_52();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t LibraryModel.shortcutsAndFolders.modify()
{
  v0 = OUTLINED_FUNCTION_30();
  type metadata accessor for LibraryModel(v0);
  return OUTLINED_FUNCTION_25_6();
}

uint64_t sub_1CA376BEC(void (*a1)(void))
{
  a1(0);

  return sub_1CA94C218();
}

uint64_t sub_1CA376C40()
{
  v2 = OUTLINED_FUNCTION_30();
  v4 = *(v3(v2) + 24);

  *(v1 + v4) = v0;
  return result;
}

uint64_t LibraryModel.additionalFields.modify()
{
  v0 = OUTLINED_FUNCTION_30();
  type metadata accessor for LibraryModel(v0);
  return OUTLINED_FUNCTION_25_6();
}

uint64_t static LibraryModel.fields.getter()
{
  if (qword_1EC442B18 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_15_5(&qword_1EC442B20);

  sub_1CA94C218();
}

__n128 sub_1CA376D48@<Q0>(void (*a1)(uint64_t *__return_ptr)@<X2>, uint64_t a2@<X8>)
{
  a1(&v6);
  v3 = v8;
  result = v7;
  v5 = v9;
  *a2 = v6;
  *(a2 + 8) = result;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
  return result;
}

uint64_t sub_1CA376DA0(uint64_t a1)
{
  v2 = sub_1CA25C5A0(&qword_1EC442AA0, type metadata accessor for LibraryModel, &protocol conformance descriptor for LibraryModel);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t sub_1CA376E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel, &protocol conformance descriptor for LibraryModel);

  return MEMORY[0x1EEDF4698](a1, a2, v4);
}

uint64_t sub_1CA376E88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel, &protocol conformance descriptor for LibraryModel);

  return MEMORY[0x1EEDF4640](a1, a2, v4);
}

uint64_t sub_1CA376F0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel, &protocol conformance descriptor for LibraryModel);

  return MEMORY[0x1EEDF4668](a1, a2, v4);
}

uint64_t sub_1CA376F88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel, &protocol conformance descriptor for LibraryModel);

  return MEMORY[0x1EEDF46A8](a1, a2, v4);
}

uint64_t sub_1CA377004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel, &protocol conformance descriptor for LibraryModel);

  return MEMORY[0x1EEDF4670](a1, a2, a3, v6);
}

uint64_t sub_1CA377098(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel, &protocol conformance descriptor for LibraryModel);

  return MEMORY[0x1EEDF46A0](a1, a2, v4);
}

uint64_t sub_1CA377114(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel, &protocol conformance descriptor for LibraryModel);

  return MEMORY[0x1EEDF4678](a1, a2, v4);
}

uint64_t sub_1CA377190(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel, &protocol conformance descriptor for LibraryModel);

  return MEMORY[0x1EEDF4658](a1, a2, v4);
}

uint64_t sub_1CA377214(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel, &protocol conformance descriptor for LibraryModel);

  return MEMORY[0x1EEDF4650](a1, a2, v4);
}

uint64_t sub_1CA377298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel, &protocol conformance descriptor for LibraryModel);

  return MEMORY[0x1EEDF4638](a1, a2, a3, v6);
}

uint64_t sub_1CA37732C(uint64_t a1)
{
  v2 = sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel, &protocol conformance descriptor for LibraryModel);

  return MEMORY[0x1EEDF4648](a1, v2);
}

uint64_t sub_1CA377398(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel, &protocol conformance descriptor for LibraryModel);

  return MEMORY[0x1EEDF4628](a1, a2, v4);
}

uint64_t sub_1CA377414(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel, &protocol conformance descriptor for LibraryModel);

  return MEMORY[0x1EEDF4680](a1, a2, v4);
}

void sub_1CA377498()
{
  sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel, &protocol conformance descriptor for LibraryModel);

  JUMPOUT(0x1CCAA0A20);
}

uint64_t sub_1CA377624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA25C5A0(&qword_1EC442AA8, type metadata accessor for LibraryModel, &protocol conformance descriptor for LibraryModel);

  return MEMORY[0x1EEDF5200](a1, a2, a3, v6);
}

uint64_t sub_1CA377720(uint64_t a1)
{
  v2 = sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel, &protocol conformance descriptor for LibraryModel);

  return MEMORY[0x1EEDF4630](a1, v2);
}

void SharedTagged_2<>.description.getter()
{
  OUTLINED_FUNCTION_37_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC443BD0, &unk_1CA983B10);
  OUTLINED_FUNCTION_18_0(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_27();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BD8, &qword_1CA982068);
  OUTLINED_FUNCTION_1_0();
  v38 = v4;
  v39 = v3;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v36 - v6;
  v7 = sub_1CA94C168();
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6_0();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB0, &qword_1CA982060);
  OUTLINED_FUNCTION_18_0(v14);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC0, &unk_1CA983B20);
  OUTLINED_FUNCTION_1_0();
  v20 = v19;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v36 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  sub_1CA94BE28();
  OUTLINED_FUNCTION_49(v17, 1, v18);
  if (v24)
  {
    sub_1CA27080C(v17, &qword_1EC443BB0, &qword_1CA982060);
    sub_1CA94BE38();
    v25 = v39;
    OUTLINED_FUNCTION_49(v0, 1, v39);
    if (v24)
    {
      sub_1CA27080C(v0, &off_1EC443BD0, &unk_1CA983B10);
    }

    else
    {
      v30 = v37;
      v29 = v38;
      (*(v38 + 32))(v37, v0, v25);
      v40 = 0x5F7265646C6F46;
      v41 = 0xE700000000000000;
      sub_1CA94BE88();
      OUTLINED_FUNCTION_4_20();
      sub_1CA25C5A0(v31, v32, MEMORY[0x1E69954E0]);
      v33 = sub_1CA94D798();
      MEMORY[0x1CCAA1300](v33);

      v34 = OUTLINED_FUNCTION_69();
      v35(v34);
      (*(v29 + 8))(v30, v25);
    }
  }

  else
  {
    (*(v20 + 32))(v23, v17, v18);
    v40 = 0x74756374726F6853;
    v41 = 0xE90000000000005FLL;
    sub_1CA94BE88();
    OUTLINED_FUNCTION_4_20();
    sub_1CA25C5A0(v26, v27, MEMORY[0x1E69954E0]);
    v28 = sub_1CA94D798();
    MEMORY[0x1CCAA1300](v28);

    (*(v9 + 8))(v13, v7);
    (*(v20 + 8))(v23, v18);
  }

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA377BC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v11, a2);
  OUTLINED_FUNCTION_49(v9, 1, v3);
  if (v12)
  {
    return MEMORY[0x1CCAA2780](0);
  }

  (*(v4 + 32))(v7, v9, v3);
  MEMORY[0x1CCAA2780](1);
  sub_1CA94C298();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1CA377D68(uint64_t a1)
{
  sub_1CA94D918();
  sub_1CA377BC0(v3, a1);
  return sub_1CA94D968();
}

uint64_t sub_1CA377DCC(uint64_t a1, uint64_t a2)
{
  sub_1CA94D918();
  sub_1CA377BC0(v4, a2);
  return sub_1CA94D968();
}

uint64_t CRKeyPath.recoveredStringIdentifier.getter()
{
  v1 = sub_1CA948D28();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
  OUTLINED_FUNCTION_18_0(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_27();
  sub_1CA94C148();
  OUTLINED_FUNCTION_49(v0, 1, v1);
  if (v10)
  {
    sub_1CA27080C(v0, &qword_1EC443BC8, &qword_1CA9834A0);
    v11 = sub_1CA94C158();
    sub_1CA3780AC(1uLL, v11, v12, &v19);
    v13 = sub_1CA94C3E8();
    v14 = OUTLINED_FUNCTION_18_0(v13);
    MEMORY[0x1EEE9AC00](v14);
    OUTLINED_FUNCTION_6_0();
    sub_1CA94C3D8();
    OUTLINED_FUNCTION_20_0();
    v17 = sub_1CA94C3B8();
    v15 = OUTLINED_FUNCTION_20_0();
    sub_1CA266F2C(v15, v16);
  }

  else
  {
    (*(v3 + 32))(v7, v0, v1);
    v17 = sub_1CA948CC8();
    (*(v3 + 8))(v7, v1);
  }

  return v17;
}

unint64_t sub_1CA378058()
{
  result = qword_1EC442B08;
  if (!qword_1EC442B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442B08);
  }

  return result;
}

unint64_t sub_1CA3780AC@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a3 >> 62;
    v7 = result;
    v9 = BYTE6(a3);
    OUTLINED_FUNCTION_30_6();
    v14 = sub_1CA2D9A24(v10, v11, v12, v13);
    if (!v7 || v14 >= v7)
    {
      OUTLINED_FUNCTION_30_6();
      v19 = sub_1CA2D99BC(v15, v16, v17, v18);
      v20 = 0;
      switch(v5)
      {
        case 1:
          v20 = a2 >> 32;
          break;
        case 2:
          v20 = *(a2 + 24);
          break;
        case 3:
          break;
        default:
          v20 = v9;
          break;
      }

      if (v20 < v19)
      {
        __break(1u);
      }
    }

    OUTLINED_FUNCTION_30_6();
    v21 = sub_1CA948BE8();
    v23 = v22;
    result = sub_1CA266F2C(a2, a3);
    *a4 = v21;
    a4[1] = v23;
  }

  return result;
}

unint64_t sub_1CA37822C()
{
  result = qword_1EC444938;
  if (!qword_1EC444938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444938);
  }

  return result;
}

unint64_t sub_1CA378284()
{
  result = qword_1EC442AF8;
  if (!qword_1EC442AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442AF8);
  }

  return result;
}

unint64_t sub_1CA3782DC()
{
  result = qword_1EC442AD8;
  if (!qword_1EC442AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442AD8);
  }

  return result;
}

unint64_t sub_1CA378330()
{
  result = qword_1EC442B00;
  if (!qword_1EC442B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442B00);
  }

  return result;
}

unint64_t sub_1CA378384()
{
  result = qword_1EC442AE8;
  if (!qword_1EC442AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442AE8);
  }

  return result;
}

unint64_t sub_1CA3783D8()
{
  result = qword_1EC442AD0;
  if (!qword_1EC442AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442AD0);
  }

  return result;
}

unint64_t sub_1CA378430()
{
  result = qword_1EC444940;
  if (!qword_1EC444940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444940);
  }

  return result;
}

unint64_t sub_1CA378484()
{
  result = qword_1EC442AE0;
  if (!qword_1EC442AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442AE0);
  }

  return result;
}

unint64_t sub_1CA3789D8()
{
  result = qword_1EC444968;
  if (!qword_1EC444968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444968);
  }

  return result;
}

void sub_1CA378AB8(uint64_t a1)
{
  if (!qword_1EC441C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC443BA0, &unk_1CA9844D0);
    sub_1CA25C3BC(&qword_1EC441BC0, &qword_1EC443BA0, &unk_1CA9844D0, MEMORY[0x1E69953B0]);
    sub_1CA25C3BC(&qword_1EC441BB8, &qword_1EC443BA0, &unk_1CA9844D0, MEMORY[0x1E69953D0]);
    v1 = sub_1CA94BC88();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC441C90);
    }
  }
}

void sub_1CA378BF0(uint64_t a1)
{
  sub_1CA25C270(319, &qword_1EC441CC0, MEMORY[0x1E69E6158], MEMORY[0x1E6995500]);
  if (v1 <= 0x3F)
  {
    sub_1CA25C270(319, &qword_1EC441CB0, MEMORY[0x1E69E6530], MEMORY[0x1E6995520]);
    if (v2 <= 0x3F)
    {
      sub_1CA25C174(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CA378CE4(uint64_t a1)
{
  sub_1CA25C2C0(319);
  if (v1 <= 0x3F)
  {
    sub_1CA25C174(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for LibraryModel.InnerLibraryNode(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for LibraryModel.InnerLibraryNode.Enum(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_1CA378ED0()
{
  OUTLINED_FUNCTION_37_0();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v44 = v1;
    v3 = sub_1CA9490E8();
    OUTLINED_FUNCTION_1_0();
    v51 = v4;
    v6 = *(v5 + 64);
    MEMORY[0x1EEE9AC00](v7);
    v8 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
    v50 = &v40 - v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444988, &qword_1CA9852B0);
    v48 = &v40;
    v10 = OUTLINED_FUNCTION_18_0(v9);
    v12 = *(v11 + 64);
    v13 = MEMORY[0x1EEE9AC00](v10);
    v14 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v46 = &v40;
    v47 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v13);
    v15 = sub_1CA9491F8();
    v16 = sub_1CA37994C(&qword_1EC4447F8, MEMORY[0x1EEE78B30], MEMORY[0x1EEE78B68]);
    OUTLINED_FUNCTION_27_9();
    v17 = sub_1CA94C9F8();
    v45 = &v40;
    v49 = v6;
    MEMORY[0x1EEE9AC00](v17);
    OUTLINED_FUNCTION_27_9();
    sub_1CA94CA58();
    sub_1CA94CA38();
    v18 = v51 + 1;
    v19 = v51[1];
    v19(&v40 - v8, v3);
    v42 = v19;
    v43 = v18;
    v20 = (v19)(&v40 - v8, v3);
    MEMORY[0x1EEE9AC00](v20);
    v21 = &v40 - v47;
    sub_1CA379A04(v14, &v40 - v47, &qword_1EC444988, &qword_1CA9852B0);
    OUTLINED_FUNCTION_49(v21, 1, v3);
    if (v22)
    {
      OUTLINED_FUNCTION_27_9();
      sub_1CA94CA58();
      sub_1CA27080C(v21, &qword_1EC444988, &qword_1CA9852B0);
    }

    else
    {
      (v51[4])(v50, v21, v3);
    }

    v23 = v0;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444990, &qword_1CA9852B8);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_29();
    MEMORY[0x1EEE9AC00](v25);
    OUTLINED_FUNCTION_27();
    v50 = &v40;
    MEMORY[0x1EEE9AC00](v26);
    v28 = &v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    OUTLINED_FUNCTION_27_9();
    sub_1CA94CA58();
    sub_1CA37994C(&qword_1EC444998, MEMORY[0x1EEE78AD0], MEMORY[0x1EEE78AF0]);
    if (sub_1CA94C318())
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4449A0, &qword_1CA9852C0);
      v48 = &v40;
      v30 = v29 - 8;
      v31 = *(*(v29 - 8) + 64);
      MEMORY[0x1EEE9AC00](v29);
      v45 = v23;
      v46 = v15;
      v47 = v16;
      v49 = &v40;
      v32 = &v40 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      v41 = v24;
      v33 = v51[4];
      v33(v32);
      v34 = (v33)(&v32[*(v30 + 56)], v28, v3);
      v51 = &v40;
      MEMORY[0x1EEE9AC00](v34);
      sub_1CA379994(v32, v32);
      v35 = *(v30 + 56);
      (v33)(v3, v32, v3);
      v36 = v42;
      v37 = (v42)(&v32[v35], v3);
      v51 = &v40;
      MEMORY[0x1EEE9AC00](v37);
      sub_1CA379A04(v32, v32, &qword_1EC4449A0, &qword_1CA9852C0);
      (v33)(v3 + *(v41 + 36), &v32[*(v30 + 56)], v3);
      v36(v32, v3);
      v38 = v45;
      v39 = v46;
      sub_1CA94CB18();
      (*(*(v39 - 1) + 8))(v38, v39);
      sub_1CA27080C(v3, &qword_1EC444990, &qword_1CA9852B8);
      OUTLINED_FUNCTION_36();
      return;
    }
  }

  __break(1u);
}

unint64_t sub_1CA379458(unint64_t result, uint64_t a2, unint64_t a3)
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
    OUTLINED_FUNCTION_30_6();
    result = sub_1CA94C478();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      sub_1CA94C588();

      return OUTLINED_FUNCTION_52_0();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA379524(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1CA379580(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1CA3796F8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1CA37994C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CA379994(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4449A0, &qword_1CA9852C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA379A04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_52();
  v5 = OUTLINED_FUNCTION_23();
  v6(v5);
  return a2;
}

id sub_1CA379AD8()
{
  v319 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x80000001CA9AAB10;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("health|quantity|steps|weight|fitness", 36);
  v6 = v5;
  v7 = sub_1CA94C438("health|quantity|steps|weight|fitness", 36);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v334 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v335 = v11;
  v12 = &v308 - v334;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v331 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v336 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v333 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v308 - v333;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v332 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v330 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Adds a data point into the Health app. You can log anything that the Health app supports, including your weight, steps taken, running distance, caloric intake and more.", 168);
  v28 = v27;
  v29 = sub_1CA94C438("Adds a data point into the Health app. You can log anything that the Health app supports, including your weight, steps taken, running distance, caloric intake and more.", 168);
  v31 = v30;
  v329 = &v308;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v308 - v334;
  sub_1CA948D98();
  v33 = [v331 bundleURL];
  v325 = inited;
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v308 - v333;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v37 = sub_1CA2F9F14(v26, v28, v29, v31, 0, 0, v32, v35);
  *(v23 + 64) = v332;
  *(v23 + 40) = v37;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v38 = sub_1CA94C1E8();
  v39 = v330;
  v40 = sub_1CA6B3784(v38);
  v41 = v325;
  v325[20] = v40;
  v41[23] = v39;
  v41[24] = @"IconName";
  v41[25] = 0x68746C616548;
  v41[26] = 0xE600000000000000;
  v41[28] = MEMORY[0x1E69E6158];
  v41[29] = @"Name";
  v42 = @"IconName";
  v43 = @"Name";
  v44 = sub_1CA94C438("Log Health Sample (Action Name)", 31);
  v46 = v45;
  v47 = sub_1CA94C438("Log Health Sample", 17);
  v49 = v48;
  v330 = &v308;
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v308 - v334;
  sub_1CA948D98();
  v51 = v331;
  v52 = [v331 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v308 - v333;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v55 = sub_1CA2F9F14(v44, v46, v47, v49, 0, 0, v50, v53);
  v56 = v325;
  v325[30] = v55;
  v57 = v332;
  v56[33] = v332;
  v56[34] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_1CA9813C0;
  *(v58 + 32) = 0x656C7069746C754DLL;
  *(v58 + 40) = 0xE800000000000000;
  v59 = MEMORY[0x1E69E6370];
  *(v58 + 48) = 0;
  *(v58 + 72) = v59;
  *(v58 + 80) = 0x614E74757074754FLL;
  *(v58 + 88) = 0xEA0000000000656DLL;
  v60 = @"Output";
  v61 = sub_1CA94C438("Health Sample (Default Output Name)", 35);
  v329 = v62;
  v63 = sub_1CA94C438("Health Sample", 13);
  v65 = v64;
  v330 = &v308;
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v308 - v334;
  sub_1CA948D98();
  v67 = [v51 bundleURL];
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v308 - v333;
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v58 + 96) = sub_1CA2F9F14(v61, v329, v63, v65, 0, 0, v66, v68);
  *(v58 + 120) = v57;
  *(v58 + 128) = 0x7365707954;
  *(v58 + 136) = 0xE500000000000000;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v58 + 168) = v70;
  v71 = v70;
  v324 = v70;
  *(v58 + 144) = &unk_1F49F6828;
  v72 = MEMORY[0x1E69E6158];
  v73 = sub_1CA94C1E8();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v75 = v325;
  v325[35] = v73;
  v75[38] = v74;
  v75[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v330 = swift_allocObject();
  *(v330 + 1) = xmmword_1CA985370;
  v329 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v76 = swift_initStackObject();
  *(v76 + 16) = xmmword_1CA981380;
  *(v76 + 32) = @"Class";
  *(v76 + 40) = 0xD00000000000001DLL;
  *(v76 + 48) = 0x80000001CA9AAC90;
  *(v76 + 64) = v72;
  *(v76 + 72) = @"DisallowedVariableTypes";
  *(v76 + 80) = &unk_1F49F6858;
  *(v76 + 104) = v71;
  *(v76 + 112) = @"Key";
  v322 = 0x80000001CA9AACB0;
  *(v76 + 120) = 0xD000000000000014;
  *(v76 + 128) = 0x80000001CA9AACB0;
  *(v76 + 144) = v72;
  *(v76 + 152) = @"Label";
  v77 = @"Class";
  v78 = @"DisallowedVariableTypes";
  v79 = @"Key";
  v80 = @"Label";
  v81 = v77;
  v82 = v78;
  v83 = v79;
  v84 = v80;
  *&v317 = v81;
  v320 = v82;
  v315 = v83;
  *&v321 = v84;
  v85 = @"Parameters";
  v326 = sub_1CA94C438("Type (WFQuantitySampleType)", 27);
  v323 = v86;
  v87 = sub_1CA94C438("Type", 4);
  v318 = v88;
  v327 = &v308;
  MEMORY[0x1EEE9AC00](v87);
  v89 = v334;
  sub_1CA948D98();
  v90 = v331;
  v91 = [v331 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v308 - v333;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 160) = sub_1CA2F9F14(v326, v323, v87, v318, 0, 0, &v308 - v89, v92);
  *(v76 + 184) = v332;
  *(v76 + 192) = @"Placeholder";
  v323 = @"Placeholder";
  v326 = sub_1CA94C438("Type (WFQuantitySampleType)", 27);
  v318 = v94;
  v95 = sub_1CA94C438("Type", 4);
  v97 = v96;
  v327 = &v308;
  MEMORY[0x1EEE9AC00](v95);
  v98 = &v308 - v89;
  sub_1CA948D98();
  v99 = [v90 bundleURL];
  MEMORY[0x1EEE9AC00](v99);
  v100 = v333;
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 200) = sub_1CA2F9F14(v326, v318, v95, v97, 0, 0, v98, &v308 - v100);
  v102 = v332;
  *(v76 + 224) = v332;
  *(v76 + 232) = @"Prompt";
  v318 = @"Prompt";
  v326 = sub_1CA94C438("What type of health sample are you logging? (WFQuantitySampleType)", 66);
  *&v316 = v103;
  v104 = sub_1CA94C438("What type of health sample are you logging?", 43);
  v314 = v105;
  v327 = &v308;
  MEMORY[0x1EEE9AC00](v104);
  v106 = &v308 - v334;
  sub_1CA948D98();
  v107 = [v331 bundleURL];
  MEMORY[0x1EEE9AC00](v107);
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v109 = sub_1CA2F9F14(v326, v316, v104, v314, 0, 0, v106, &v308 - v100);
  *(v76 + 264) = v102;
  *(v76 + 240) = v109;
  _s3__C3KeyVMa_0(0);
  v327 = v110;
  v326 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v111 = sub_1CA94C1E8();
  v112 = sub_1CA2F864C(v111);
  v330[4] = v112;
  v113 = swift_allocObject();
  v316 = xmmword_1CA981300;
  *(v113 + 16) = xmmword_1CA981300;
  *(v113 + 32) = @"AutocapitalizationType";
  *(v113 + 40) = 1701736270;
  *(v113 + 48) = 0xE400000000000000;
  v114 = MEMORY[0x1E69E6158];
  v115 = v317;
  *(v113 + 64) = MEMORY[0x1E69E6158];
  *(v113 + 72) = v115;
  *(v113 + 80) = 0xD00000000000001ELL;
  *(v113 + 88) = 0x80000001CA9AAD70;
  v116 = v315;
  *(v113 + 104) = v114;
  *(v113 + 112) = v116;
  *(v113 + 120) = 0xD000000000000018;
  *(v113 + 128) = 0x80000001CA9AAD90;
  *(v113 + 144) = v114;
  *(v113 + 152) = @"KeyboardType";
  *(v113 + 160) = 0x506C616D69636544;
  *(v113 + 168) = 0xEA00000000006461;
  v117 = v321;
  *(v113 + 184) = v114;
  *(v113 + 192) = v117;
  v118 = @"AutocapitalizationType";
  v119 = @"KeyboardType";
  v312 = v115;
  v313 = v116;
  v314 = v117;
  v315 = v118;
  *&v321 = v119;
  v120 = sub_1CA94C438("Value (WFQuantitySampleQuantity)", 32);
  v310 = v121;
  v311 = v120;
  v122 = sub_1CA94C438("Value", 5);
  v309 = v123;
  *&v317 = &v308;
  MEMORY[0x1EEE9AC00](v122);
  v124 = v334;
  sub_1CA948D98();
  v125 = v331;
  v126 = [v331 bundleURL];
  v308 = &v308;
  MEMORY[0x1EEE9AC00](v126);
  v127 = v333;
  sub_1CA948B68();

  v128 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v113 + 200) = sub_1CA2F9F14(v311, v310, v122, v309, 0, 0, &v308 - v124, &v308 - v127);
  v129 = v332;
  v130 = v323;
  *(v113 + 224) = v332;
  *(v113 + 232) = v130;
  v323 = v130;
  v131 = sub_1CA94C438("Sample Value (WFQuantitySampleQuantity)", 39);
  v310 = v132;
  v311 = v131;
  v133 = sub_1CA94C438("Sample Value", 12);
  v309 = v134;
  *&v317 = &v308;
  MEMORY[0x1EEE9AC00](v133);
  sub_1CA948D98();
  v135 = [v125 bundleURL];
  MEMORY[0x1EEE9AC00](v135);
  sub_1CA948B68();

  v136 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v137 = sub_1CA2F9F14(v311, v310, v133, v309, 0, 0, &v308 - v124, &v308 - v127);
  *(v113 + 264) = v129;
  *(v113 + 240) = v137;
  *(v113 + 272) = sub_1CA94C368();
  *(v113 + 280) = 0xD000000000000014;
  *(v113 + 288) = v322;
  v138 = MEMORY[0x1E69E6158];
  *(v113 + 304) = MEMORY[0x1E69E6158];
  *(v113 + 312) = @"TextAlignment";
  *(v113 + 344) = v138;
  v139 = v138;
  *(v113 + 320) = 0x7468676952;
  *(v113 + 328) = 0xE500000000000000;
  v311 = @"TextAlignment";
  v140 = sub_1CA94C1E8();
  v141 = sub_1CA2F864C(v140);
  v330[5] = v141;
  v142 = swift_allocObject();
  v317 = xmmword_1CA981400;
  *(v142 + 16) = xmmword_1CA981400;
  *(v142 + 32) = v315;
  *(v142 + 40) = 1701736270;
  *(v142 + 48) = 0xE400000000000000;
  v143 = v312;
  v144 = v313;
  *(v142 + 64) = v139;
  *(v142 + 72) = v143;
  v315 = 0xD000000000000028;
  *(v142 + 80) = 0xD000000000000028;
  *(v142 + 88) = 0x80000001CA9AAE20;
  *(v142 + 104) = v139;
  *(v142 + 112) = v144;
  *(v142 + 120) = 0xD000000000000022;
  *(v142 + 128) = 0x80000001CA9AAE50;
  v145 = v321;
  *(v142 + 144) = v139;
  *(v142 + 152) = v145;
  *(v142 + 160) = 0x506C616D69636544;
  *(v142 + 168) = 0xEA00000000006461;
  v146 = v323;
  *(v142 + 184) = v139;
  *(v142 + 192) = v146;
  v309 = v143;
  v310 = v144;
  v323 = v146;
  v147 = sub_1CA94C438("10 (WFQuantitySampleAdditionalQuantity)", 39);
  v149 = v148;
  v150 = sub_1CA94C438("10", 2);
  v152 = v151;
  *&v321 = &v308;
  MEMORY[0x1EEE9AC00](v150);
  v153 = &v308 - v334;
  sub_1CA948D98();
  v154 = [v331 bundleURL];
  MEMORY[0x1EEE9AC00](v154);
  v155 = &v308 - v333;
  sub_1CA948B68();

  v156 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v157 = sub_1CA2F9F14(v147, v149, v150, v152, 0, 0, v153, v155);
  *(v142 + 224) = v332;
  *(v142 + 200) = v157;
  *(v142 + 232) = sub_1CA94C368();
  *(v142 + 240) = 0xD000000000000014;
  *(v142 + 248) = v322;
  v158 = MEMORY[0x1E69E6158];
  v159 = v311;
  *(v142 + 264) = MEMORY[0x1E69E6158];
  *(v142 + 272) = v159;
  *(v142 + 304) = v158;
  v160 = v158;
  *(v142 + 280) = 0x7468676952;
  *(v142 + 288) = 0xE500000000000000;
  v322 = v159;
  v161 = sub_1CA94C1E8();
  v162 = sub_1CA2F864C(v161);
  v330[6] = v162;
  v163 = swift_allocObject();
  v321 = xmmword_1CA981350;
  *(v163 + 16) = xmmword_1CA981350;
  v164 = v309;
  v165 = v310;
  *(v163 + 32) = v309;
  *(v163 + 40) = 0xD000000000000029;
  *(v163 + 48) = 0x80000001CA9AAEB0;
  v166 = v320;
  *(v163 + 64) = v160;
  *(v163 + 72) = v166;
  *(v163 + 80) = &unk_1F49F6888;
  *(v163 + 104) = v324;
  *(v163 + 112) = v165;
  v312 = 0xD000000000000029;
  v313 = 0xD000000000000025;
  *(v163 + 120) = 0xD000000000000025;
  *(v163 + 128) = 0x80000001CA9AAEE0;
  *(v163 + 144) = v160;
  v167 = v314;
  *(v163 + 152) = v314;
  v311 = v164;
  v320 = v166;
  v310 = v165;
  v314 = v167;
  v168 = sub_1CA94C438("Reason (WFQuantitySampleAdditionalEnumeration)", 46);
  v170 = v169;
  v171 = sub_1CA94C438("Reason", 6);
  v173 = v172;
  v309 = &v308;
  MEMORY[0x1EEE9AC00](v171);
  v174 = &v308 - v334;
  sub_1CA948D98();
  v175 = [v331 bundleURL];
  MEMORY[0x1EEE9AC00](v175);
  v176 = &v308 - v333;
  sub_1CA948B68();

  v177 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v178 = sub_1CA2F9F14(v168, v170, v171, v173, 0, 0, v174, v176);
  *(v163 + 184) = v332;
  *(v163 + 160) = v178;
  v179 = sub_1CA94C1E8();
  v180 = sub_1CA2F864C(v179);
  v330[7] = v180;
  v181 = swift_allocObject();
  *(v181 + 16) = v321;
  v183 = v310;
  v182 = v311;
  *(v181 + 32) = v311;
  *(v181 + 40) = 0xD00000000000001FLL;
  *(v181 + 48) = 0x80000001CA9AAF50;
  v184 = MEMORY[0x1E69E6158];
  v185 = v320;
  *(v181 + 64) = MEMORY[0x1E69E6158];
  *(v181 + 72) = v185;
  *(v181 + 80) = &unk_1F49F68B8;
  *(v181 + 104) = v324;
  *(v181 + 112) = v183;
  *(v181 + 120) = 0xD00000000000001BLL;
  *(v181 + 128) = 0x80000001CA9AAF70;
  v186 = v314;
  *(v181 + 144) = v184;
  *(v181 + 152) = v186;
  v309 = v182;
  v311 = v183;
  v314 = v186;
  v187 = sub_1CA94C438("Value (WFCategorySampleEnumeration)", 35);
  v189 = v188;
  v190 = sub_1CA94C438("Value", 5);
  v192 = v191;
  v310 = &v308;
  MEMORY[0x1EEE9AC00](v190);
  v193 = &v308 - v334;
  sub_1CA948D98();
  v194 = [v331 bundleURL];
  MEMORY[0x1EEE9AC00](v194);
  v195 = &v308 - v333;
  sub_1CA948B68();

  v196 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v197 = sub_1CA2F9F14(v187, v189, v190, v192, 0, 0, v193, v195);
  *(v181 + 184) = v332;
  *(v181 + 160) = v197;
  v198 = sub_1CA94C1E8();
  v199 = sub_1CA2F864C(v198);
  v330[8] = v199;
  v200 = swift_allocObject();
  *(v200 + 16) = v321;
  v201 = v309;
  v203 = v311;
  v202 = v312;
  *(v200 + 32) = v309;
  *(v200 + 40) = v202;
  *(v200 + 48) = 0x80000001CA9AAFC0;
  v204 = MEMORY[0x1E69E6158];
  v205 = v320;
  *(v200 + 64) = MEMORY[0x1E69E6158];
  *(v200 + 72) = v205;
  *(v200 + 80) = &unk_1F49F68E8;
  *(v200 + 104) = v324;
  *(v200 + 112) = v203;
  v206 = v314;
  *(v200 + 120) = v315;
  *(v200 + 128) = 0x80000001CA9AAFF0;
  *(v200 + 144) = v204;
  *(v200 + 152) = v206;
  v320 = v201;
  *&v321 = v203;
  v324 = v206;
  v207 = sub_1CA94C438("Value (WFCategorySampleAdditionalEnumerationKey)", 48);
  v209 = v208;
  v210 = sub_1CA94C438("Value", 5);
  v212 = v211;
  v315 = &v308;
  MEMORY[0x1EEE9AC00](v210);
  v213 = &v308 - v334;
  sub_1CA948D98();
  v214 = [v331 bundleURL];
  MEMORY[0x1EEE9AC00](v214);
  v215 = &v308 - v333;
  sub_1CA948B68();

  v216 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v217 = sub_1CA2F9F14(v207, v209, v210, v212, 0, 0, v213, v215);
  *(v200 + 184) = v332;
  *(v200 + 160) = v217;
  v218 = sub_1CA94C1E8();
  v219 = sub_1CA2F864C(v218);
  v330[9] = v219;
  v220 = swift_allocObject();
  *(v220 + 16) = v316;
  v221 = v313;
  *(v220 + 32) = v320;
  *(v220 + 40) = v221;
  *(v220 + 48) = 0x80000001CA9AB060;
  *(v220 + 64) = MEMORY[0x1E69E6158];
  *(v220 + 72) = @"Description";
  *&v316 = @"Description";
  v222 = sub_1CA94C438("The date and time of the data point. The current date will be used if you don't provide a date. (WFQuantitySampleDate)", 118);
  v313 = v223;
  v314 = v222;
  v224 = sub_1CA94C438("The date and time of the data point. The current date will be used if you don't provide a date.", 95);
  v312 = v225;
  v315 = &v308;
  MEMORY[0x1EEE9AC00](v224);
  v226 = &v308 - v334;
  sub_1CA948D98();
  v227 = v331;
  v228 = [v331 bundleURL];
  v311 = &v308;
  MEMORY[0x1EEE9AC00](v228);
  v229 = v333;
  sub_1CA948B68();

  v230 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v220 + 80) = sub_1CA2F9F14(v314, v313, v224, v312, 0, 0, v226, &v308 - v229);
  v231 = v321;
  *(v220 + 104) = v332;
  *(v220 + 112) = v231;
  *(v220 + 120) = 0xD000000000000014;
  *(v220 + 128) = 0x80000001CA9AB170;
  v232 = v324;
  *(v220 + 144) = MEMORY[0x1E69E6158];
  *(v220 + 152) = v232;
  v233 = sub_1CA94C438("Date (WFQuantitySampleDate)", 27);
  v313 = v234;
  v314 = v233;
  v235 = sub_1CA94C438("Date", 4);
  v312 = v236;
  v315 = &v308;
  MEMORY[0x1EEE9AC00](v235);
  v237 = v334;
  sub_1CA948D98();
  v238 = [v227 bundleURL];
  MEMORY[0x1EEE9AC00](v238);
  sub_1CA948B68();

  v239 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v220 + 160) = sub_1CA2F9F14(v314, v313, v235, v312, 0, 0, &v308 - v237, &v308 - v229);
  v240 = v332;
  v241 = v323;
  *(v220 + 184) = v332;
  *(v220 + 192) = v241;
  v242 = sub_1CA94C438("optional (WFQuantitySampleDate)", 31);
  v313 = v243;
  v314 = v242;
  v244 = sub_1CA94C438("optional", 8);
  v312 = v245;
  v315 = &v308;
  MEMORY[0x1EEE9AC00](v244);
  v246 = &v308 - v237;
  sub_1CA948D98();
  v247 = v331;
  v248 = [v331 bundleURL];
  v311 = &v308;
  MEMORY[0x1EEE9AC00](v248);
  v249 = v333;
  sub_1CA948B68();

  v250 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v220 + 200) = sub_1CA2F9F14(v314, v313, v244, v312, 0, 0, v246, &v308 - v249);
  v251 = v318;
  *(v220 + 224) = v240;
  *(v220 + 232) = v251;
  v252 = sub_1CA94C438("When was this sample taken? (WFQuantitySampleDate)", 50);
  v314 = v253;
  v315 = v252;
  v254 = sub_1CA94C438("When was this sample taken?", 27);
  v313 = v255;
  v318 = &v308;
  MEMORY[0x1EEE9AC00](v254);
  v256 = &v308 - v334;
  sub_1CA948D98();
  v257 = [v247 bundleURL];
  MEMORY[0x1EEE9AC00](v257);
  sub_1CA948B68();

  v258 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v220 + 240) = sub_1CA2F9F14(v315, v314, v254, v313, 0, 0, v256, &v308 - v249);
  *(v220 + 264) = v240;
  *(v220 + 272) = @"ResultType";
  *(v220 + 280) = 0x676E69727453;
  *(v220 + 288) = 0xE600000000000000;
  v259 = MEMORY[0x1E69E6158];
  v260 = v322;
  *(v220 + 304) = MEMORY[0x1E69E6158];
  *(v220 + 312) = v260;
  *(v220 + 344) = v259;
  v261 = v259;
  *(v220 + 320) = 0x7468676952;
  *(v220 + 328) = 0xE500000000000000;
  v318 = @"ResultType";
  v262 = sub_1CA94C1E8();
  v263 = sub_1CA2F864C(v262);
  v330[10] = v263;
  v264 = swift_allocObject();
  *(v264 + 16) = v317;
  *(v264 + 32) = v320;
  *(v264 + 40) = 0xD000000000000023;
  *(v264 + 48) = 0x80000001CA9AB250;
  v265 = v316;
  *(v264 + 64) = v261;
  *(v264 + 72) = v265;
  v320 = sub_1CA94C438("The date and time for the end of the data point. The current date will be used if you don't provide a date. (WFSampleEndDate)", 125);
  *&v317 = v266;
  v267 = sub_1CA94C438("The date and time for the end of the data point. The current date will be used if you don't provide a date.", 107);
  v269 = v268;
  v328 = &v308;
  MEMORY[0x1EEE9AC00](v267);
  v270 = &v308 - v334;
  sub_1CA948D98();
  v271 = v331;
  v272 = [v331 bundleURL];
  MEMORY[0x1EEE9AC00](v272);
  v273 = &v308 - v333;
  sub_1CA948B68();

  v274 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v264 + 80) = sub_1CA2F9F14(v320, v317, v267, v269, 0, 0, v270, v273);
  v275 = v332;
  v276 = v321;
  *(v264 + 104) = v332;
  *(v264 + 112) = v276;
  *(v264 + 120) = 0x656C706D61534657;
  *(v264 + 128) = 0xEF65746144646E45;
  v277 = v324;
  *(v264 + 144) = MEMORY[0x1E69E6158];
  *(v264 + 152) = v277;
  v324 = sub_1CA94C438("End Date (WFSampleEndDate)", 26);
  *&v321 = v278;
  v279 = sub_1CA94C438("End Date", 8);
  v320 = v280;
  v328 = &v308;
  MEMORY[0x1EEE9AC00](v279);
  v281 = v334;
  sub_1CA948D98();
  v282 = [v271 bundleURL];
  MEMORY[0x1EEE9AC00](v282);
  v283 = v333;
  sub_1CA948B68();

  v284 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v264 + 160) = sub_1CA2F9F14(v324, v321, v279, v320, 0, 0, &v308 - v281, &v308 - v283);
  v285 = v323;
  *(v264 + 184) = v275;
  *(v264 + 192) = v285;
  v286 = sub_1CA94C438("optional (WFSampleEndDate)", 26);
  v323 = v287;
  v324 = v286;
  v288 = sub_1CA94C438("optional", 8);
  v290 = v289;
  v328 = &v308;
  MEMORY[0x1EEE9AC00](v288);
  sub_1CA948D98();
  v291 = [v331 bundleURL];
  MEMORY[0x1EEE9AC00](v291);
  sub_1CA948B68();

  v292 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v264 + 200) = sub_1CA2F9F14(v324, v323, v288, v290, 0, 0, &v308 - v281, &v308 - v283);
  v293 = v318;
  *(v264 + 224) = v332;
  *(v264 + 232) = v293;
  *(v264 + 240) = 0x676E69727453;
  *(v264 + 248) = 0xE600000000000000;
  v294 = MEMORY[0x1E69E6158];
  v295 = v322;
  *(v264 + 264) = MEMORY[0x1E69E6158];
  *(v264 + 272) = v295;
  *(v264 + 304) = v294;
  v296 = v294;
  *(v264 + 280) = 0x7468676952;
  *(v264 + 288) = 0xE500000000000000;
  v297 = sub_1CA94C1E8();
  v298 = sub_1CA2F864C(v297);
  v299 = v330;
  v330[11] = v298;
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v301 = v325;
  v325[40] = v299;
  v301[43] = v300;
  v301[44] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v302 = swift_allocObject();
  *(v302 + 16) = xmmword_1CA97EDF0;
  *(v302 + 56) = v296;
  *(v302 + 32) = 0xD000000000000013;
  *(v302 + 40) = 0x80000001CA99A9A0;
  v337 = 2;
  v338 = 1;
  v303 = type metadata accessor for WFDeviceIdiomResource();
  v304 = objc_allocWithZone(v303);
  v305 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v337);
  *(v302 + 88) = v303;
  *(v302 + 64) = v306;
  v301[48] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v301[45] = v302;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA37BE80()
{
  v116 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9AB3D0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("programming|scripting|var", 25);
  v6 = v5;
  v7 = sub_1CA94C438("programming|scripting|var", 25);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v121 = v11;
  v122 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = v108 - v122;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v119 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v117 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v118 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v108 - v118;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v120 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v115 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Gets the value of the specified variable and passes it to the next action.", 74);
  v113 = v24;
  v25 = sub_1CA94C438("Gets the value of the specified variable and passes it to the next action.", 74);
  v27 = v26;
  v114 = v108;
  MEMORY[0x1EEE9AC00](v25);
  v28 = v108 - v122;
  sub_1CA948D98();
  v29 = [v119 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = v108 - v118;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v113, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v120;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v115;
  *(inited + 120) = sub_1CA6B3784(v33);
  *(inited + 144) = v34;
  *(inited + 152) = @"IconName";
  *(inited + 160) = 0x656C626169726156;
  *(inited + 168) = 0xE800000000000000;
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"Name";
  v35 = @"IconName";
  v36 = @"Name";
  v37 = sub_1CA94C438("Get Variable (Action Name)", 26);
  v39 = v38;
  v40 = sub_1CA94C438("Get Variable", 12);
  v42 = v41;
  v115 = v108;
  MEMORY[0x1EEE9AC00](v40);
  v43 = v108 - v122;
  sub_1CA948D98();
  v44 = [v119 bundleURL];
  MEMORY[0x1EEE9AC00](v44);
  v45 = v108 - v118;
  sub_1CA948B68();

  v46 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 200) = sub_1CA2F9F14(v37, v39, v40, v42, 0, 0, v43, v45);
  *(inited + 224) = v120;
  *(inited + 232) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_1CA981350;
  *(v47 + 32) = 0x75736F6C63736944;
  *(v47 + 40) = 0xEF6C6576654C6572;
  *(v47 + 48) = 0x63696C627550;
  *(v47 + 56) = 0xE600000000000000;
  *(v47 + 72) = MEMORY[0x1E69E6158];
  *(v47 + 80) = 0x656C7069746C754DLL;
  *(v47 + 88) = 0xE800000000000000;
  v48 = MEMORY[0x1E69E6370];
  *(v47 + 96) = 1;
  *(v47 + 120) = v48;
  *(v47 + 128) = 0x614E74757074754FLL;
  *(v47 + 136) = 0xEA0000000000656DLL;
  v49 = @"Output";
  v50 = sub_1CA94C438("Variable (Default Output Name)", 30);
  v114 = v51;
  v52 = sub_1CA94C438("Variable", 8);
  v54 = v53;
  v115 = v108;
  MEMORY[0x1EEE9AC00](v52);
  v55 = v108 - v122;
  sub_1CA948D98();
  v56 = [v119 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  v57 = v108 - v118;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v47 + 144) = sub_1CA2F9F14(v50, v114, v52, v54, 0, 0, v55, v57);
  *(v47 + 168) = v120;
  *(v47 + 176) = 0x7365707954;
  *(v47 + 184) = 0xE500000000000000;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v47 + 216) = v59;
  *(v47 + 192) = &unk_1F49F6918;
  v60 = MEMORY[0x1E69E6158];
  v61 = sub_1CA94C1E8();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 240) = v61;
  *(inited + 264) = v62;
  *(inited + 272) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v115 = swift_allocObject();
  *(v115 + 1) = xmmword_1CA9813B0;
  v114 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v63 = swift_initStackObject();
  *(v63 + 16) = xmmword_1CA981370;
  *(v63 + 32) = @"Class";
  *(v63 + 40) = 0xD000000000000019;
  *(v63 + 48) = 0x80000001CA99B030;
  *(v63 + 80) = &unk_1F49F6948;
  *(v63 + 64) = v60;
  *(v63 + 72) = @"DisallowedVariableTypes";
  *(v63 + 104) = v59;
  *(v63 + 112) = @"Key";
  *(v63 + 120) = 0x6261697261564657;
  *(v63 + 128) = 0xEA0000000000656CLL;
  *(v63 + 144) = v60;
  *(v63 + 152) = @"Label";
  v64 = @"Parameters";
  v65 = @"Class";
  v66 = @"DisallowedVariableTypes";
  v67 = @"Key";
  v68 = @"Label";
  v69 = sub_1CA94C438("Variable (WFVariable)", 21);
  v110 = v70;
  v111 = v69;
  v71 = sub_1CA94C438("Variable", 8);
  v109 = v72;
  v112 = v108;
  MEMORY[0x1EEE9AC00](v71);
  v73 = v108 - v122;
  sub_1CA948D98();
  v74 = v119;
  v75 = [v119 bundleURL];
  v108[1] = v108;
  v113 = inited;
  MEMORY[0x1EEE9AC00](v75);
  v76 = v118;
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v63 + 160) = sub_1CA2F9F14(v111, v110, v71, v109, 0, 0, v73, v108 - v76);
  *(v63 + 184) = v120;
  *(v63 + 192) = @"Placeholder";
  v78 = @"Placeholder";
  v79 = sub_1CA94C438("Variable (WFVariable)", 21);
  v110 = v80;
  v111 = v79;
  v81 = sub_1CA94C438("Variable", 8);
  v109 = v82;
  v112 = v108;
  MEMORY[0x1EEE9AC00](v81);
  v83 = v108 - v122;
  sub_1CA948D98();
  v84 = [v74 bundleURL];
  MEMORY[0x1EEE9AC00](v84);
  sub_1CA948B68();

  v85 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v86 = sub_1CA2F9F14(v111, v110, v81, v109, 0, 0, v83, v108 - v76);
  *(v63 + 224) = v120;
  *(v63 + 200) = v86;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v87 = sub_1CA94C1E8();
  v88 = sub_1CA2F864C(v87);
  v89 = v115;
  v115[4] = v88;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v91 = v113;
  *(v113 + 280) = v89;
  *(v91 + 304) = v90;
  *(v91 + 312) = @"ParameterSummary";
  v92 = @"ParameterSummary";
  v93 = sub_1CA94C438("Get ${WFVariable} (Parameter Summary)", 37);
  v95 = v94;
  v96 = sub_1CA94C438("Get ${WFVariable}", 17);
  v98 = v97;
  v120 = v108;
  MEMORY[0x1EEE9AC00](v96);
  v99 = v108 - v122;
  sub_1CA948D98();
  v100 = [v119 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  v101 = v108 - v118;
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v103 = sub_1CA2F9F14(v93, v95, v96, v98, 0, 0, v99, v101);
  v104 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v105 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(v91 + 320) = v104;
  *(v91 + 344) = v105;
  *(v91 + 352) = @"ResidentCompatible";
  *(v91 + 384) = MEMORY[0x1E69E6370];
  *(v91 + 360) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v106 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA37CC8C()
{
  v38 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9A2900;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Input";
  v6 = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v7 = sub_1CA94C1E8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4442F0, &qword_1CA982FA8);
  *(inited + 120) = v7;
  *(inited + 144) = v8;
  *(inited + 152) = @"LocallyProcessesData";
  v9 = MEMORY[0x1E69E6370];
  *(inited + 160) = 1;
  *(inited + 184) = v9;
  *(inited + 192) = @"Name";
  v10 = @"LocallyProcessesData";
  v11 = @"Name";
  v12 = sub_1CA94C438("Find Apps (Action Name)", 23);
  v14 = v13;
  v15 = sub_1CA94C438("Find Apps", 9);
  v17 = v16;
  v18 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v37 = 0x80000001CA9941F0;
  v21 = [qword_1EDB9F690 bundleURL];
  v22 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v25 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v26 = sub_1CA2F9F14(v12, v14, v15, v17, 0, 0, v20, v24);
  v27 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 200) = v26;
  *(inited + 224) = v27;
  *(inited + 232) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1CA9813B0;
  v39 = 2;
  v40 = 0;
  v29 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v30 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v39);
  *(v28 + 32) = v31;
  *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(inited + 240) = v28;
  v32 = sub_1CA94C368();
  v33 = MEMORY[0x1E69E6158];
  *(inited + 304) = MEMORY[0x1E69E6158];
  *(inited + 272) = v32;
  *(inited + 280) = 0xD000000000000010;
  *(inited + 288) = v37;
  v34 = sub_1CA94C368();
  *(inited + 344) = v33;
  *(inited + 312) = v34;
  *(inited + 320) = 0x656D614E20707041;
  *(inited + 328) = 0xE800000000000000;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA37D15C()
{
  v374 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x80000001CA9AB550;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("note|text|todo|to-do|task", 25);
  v6 = v5;
  v7 = sub_1CA94C438("note|text|todo|to-do|task", 25);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v388 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v389 = v11;
  v12 = &v360 - v388;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v391 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v390 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v392 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v360 - v392;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v387 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v373 = v22;
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v385 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  v386 = xmmword_1CA9813C0;
  *(v23 + 16) = xmmword_1CA9813C0;
  *(v23 + 32) = @"DescriptionInput";
  v24 = @"Description";
  v25 = @"DescriptionInput";
  v26 = sub_1CA94C438("Files to attach to the item", 27);
  v383 = v27;
  v28 = sub_1CA94C438("Files to attach to the item", 27);
  v30 = v29;
  v384 = &v360;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v360 - v388;
  sub_1CA948D98();
  v32 = [v391 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v381 = inited;
  v33 = &v360 - v392;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v26, v383, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v387;
  *(v23 + 72) = @"DescriptionResult";
  v35 = @"DescriptionResult";
  v36 = sub_1CA94C438("The URL of the newly created item", 33);
  v382 = v37;
  v383 = v36;
  v380 = sub_1CA94C438("The URL of the newly created item", 33);
  v39 = v38;
  v384 = &v360;
  MEMORY[0x1EEE9AC00](v380);
  v40 = v388;
  sub_1CA948D98();
  v41 = v391;
  v42 = [v391 bundleURL];
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v360 - v392;
  sub_1CA948B68();

  v44 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 80) = sub_1CA2F9F14(v383, v382, v380, v39, 0, 0, &v360 - v40, v43);
  *(v23 + 104) = v387;
  *(v23 + 112) = @"DescriptionSummary";
  v45 = @"DescriptionSummary";
  v46 = sub_1CA94C438("Adds a new item to Todoist.", 27);
  v382 = v47;
  v383 = v46;
  v48 = sub_1CA94C438("Adds a new item to Todoist.", 27);
  v50 = v49;
  v384 = &v360;
  MEMORY[0x1EEE9AC00](v48);
  sub_1CA948D98();
  v51 = [v41 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v360 - v392;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v54 = sub_1CA2F9F14(v383, v382, v48, v50, 0, 0, &v360 - v40, v52);
  *(v23 + 144) = v387;
  *(v23 + 120) = v54;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v55 = sub_1CA94C1E8();
  v56 = v385;
  v57 = sub_1CA6B3784(v55);
  v58 = v381;
  v381[20] = v57;
  v58[23] = v56;
  v58[24] = @"Discontinued";
  v59 = MEMORY[0x1E69E6370];
  *(v58 + 200) = 1;
  v58[28] = v59;
  v58[29] = @"Input";
  v60 = v59;
  v61 = v58;
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v62 = swift_initStackObject();
  v379 = xmmword_1CA981350;
  *(v62 + 16) = xmmword_1CA981350;
  *(v62 + 32) = 0x656C7069746C754DLL;
  *(v62 + 40) = 0xE800000000000000;
  *(v62 + 48) = 1;
  *(v62 + 72) = v60;
  strcpy((v62 + 80), "ParameterKey");
  *(v62 + 93) = 0;
  *(v62 + 94) = -5120;
  strcpy((v62 + 96), "WFTodoistFile");
  *(v62 + 110) = -4864;
  *(v62 + 120) = MEMORY[0x1E69E6158];
  *(v62 + 128) = 0x6465726975716552;
  *(v62 + 136) = 0xE800000000000000;
  *(v62 + 144) = 0;
  *(v62 + 168) = v60;
  *(v62 + 176) = 0x7365707954;
  *(v62 + 184) = 0xE500000000000000;
  v385 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v62 + 216) = v385;
  *(v62 + 192) = &unk_1F49F6AA0;
  v63 = @"Discontinued";
  v64 = @"Input";
  v65 = sub_1CA94C1E8();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v384 = v66;
  v61[30] = v65;
  v61[33] = v66;
  v61[34] = @"Name";
  v67 = @"Name";
  v380 = sub_1CA94C438("Add Todoist Item (Action Name)", 30);
  *&v378 = v68;
  v69 = sub_1CA94C438("Add Todoist Item", 16);
  v71 = v70;
  v382 = &v360;
  MEMORY[0x1EEE9AC00](v69);
  v72 = v388;
  sub_1CA948D98();
  v73 = [v391 bundleURL];
  MEMORY[0x1EEE9AC00](v73);
  v74 = v392;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v76 = sub_1CA2F9F14(v380, v378, v69, v71, 0, 0, &v360 - v72, &v360 - v74);
  v77 = v381;
  v381[35] = v76;
  v78 = v387;
  v77[38] = v387;
  v77[39] = @"Output";
  v79 = swift_initStackObject();
  *(v79 + 16) = v386;
  *(v79 + 32) = 0x656C7069746C754DLL;
  *(v79 + 40) = 0xE800000000000000;
  *(v79 + 48) = 0;
  *(v79 + 72) = MEMORY[0x1E69E6370];
  *(v79 + 80) = 0x614E74757074754FLL;
  *(v79 + 88) = 0xEA0000000000656DLL;
  v80 = @"Output";
  v81 = sub_1CA94C438("Todoist Item (Default Output Name)", 34);
  v382 = v82;
  v383 = v81;
  v83 = sub_1CA94C438("Todoist Item", 12);
  v85 = v84;
  *&v386 = &v360;
  MEMORY[0x1EEE9AC00](v83);
  v86 = &v360 - v72;
  sub_1CA948D98();
  v87 = [v391 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v79 + 96) = sub_1CA2F9F14(v383, v382, v83, v85, 0, 0, v86, &v360 - v74);
  *(v79 + 120) = v78;
  *(v79 + 128) = 0x7365707954;
  *(v79 + 168) = v385;
  *(v79 + 136) = 0xE500000000000000;
  *(v79 + 144) = &unk_1F49F6AD0;
  v89 = MEMORY[0x1E69E6158];
  v90 = sub_1CA94C1E8();
  v91 = v381;
  v381[40] = v90;
  v91[43] = v384;
  v91[44] = @"Parameters";
  v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  *&v386 = swift_allocObject();
  *(v386 + 16) = xmmword_1CA985370;
  v385 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v92 = swift_allocObject();
  *(v92 + 16) = v379;
  v372 = 0x80000001CA99B500;
  *(v92 + 32) = @"Class";
  *(v92 + 40) = 0xD000000000000014;
  *(v92 + 48) = 0x80000001CA99B500;
  *(v92 + 64) = v89;
  *(v92 + 72) = @"Key";
  v376 = 0xD000000000000010;
  *(v92 + 80) = 0xD000000000000010;
  *(v92 + 88) = 0x80000001CA9AB670;
  *(v92 + 104) = v89;
  *(v92 + 112) = @"Label";
  v93 = @"Class";
  v94 = @"Key";
  v95 = @"Label";
  v96 = v93;
  v97 = v94;
  v98 = v95;
  v370 = v96;
  v371 = v97;
  v375 = v98;
  v99 = @"Parameters";
  v100 = sub_1CA94C438("Item (WFTodoistContent)", 23);
  v102 = v101;
  v103 = sub_1CA94C438("Item", 4);
  v105 = v104;
  v383 = &v360;
  MEMORY[0x1EEE9AC00](v103);
  v106 = &v360 - v388;
  sub_1CA948D98();
  v107 = [v391 bundleURL];
  MEMORY[0x1EEE9AC00](v107);
  v108 = &v360 - v392;
  sub_1CA948B68();

  v109 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v92 + 120) = sub_1CA2F9F14(v100, v102, v103, v105, 0, 0, v106, v108);
  *(v92 + 144) = v387;
  *(v92 + 152) = @"TextAlignment";
  v110 = MEMORY[0x1E69E6158];
  *(v92 + 184) = MEMORY[0x1E69E6158];
  *(v92 + 160) = 0x7468676952;
  *(v92 + 168) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v383 = v111;
  v382 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v380 = @"TextAlignment";
  v112 = sub_1CA94C1E8();
  v113 = sub_1CA2F864C(v112);
  *(v386 + 32) = v113;
  v114 = swift_allocObject();
  v378 = xmmword_1CA981370;
  *(v114 + 16) = xmmword_1CA981370;
  *(v114 + 32) = @"AlwaysShowsButton";
  *(v114 + 40) = 1;
  v115 = v370;
  *(v114 + 64) = MEMORY[0x1E69E6370];
  *(v114 + 72) = v115;
  *(v114 + 80) = 0xD00000000000001FLL;
  *(v114 + 88) = 0x80000001CA9AB6B0;
  *(v114 + 104) = v110;
  *(v114 + 112) = @"DefaultValue";
  *(v114 + 120) = 0x786F626E49;
  *(v114 + 128) = 0xE500000000000000;
  v116 = v371;
  *(v114 + 144) = v110;
  *(v114 + 152) = v116;
  *(v114 + 160) = v376;
  *(v114 + 168) = 0x80000001CA9AB6D0;
  *(v114 + 184) = v110;
  v117 = v375;
  *(v114 + 192) = v375;
  v118 = @"DefaultValue";
  v370 = v115;
  v369 = v116;
  v368 = v117;
  v375 = v118;
  v119 = @"AlwaysShowsButton";
  v120 = sub_1CA94C438("Project (WFTodoistProject)", 26);
  v122 = v121;
  v123 = sub_1CA94C438("Project", 7);
  v125 = v124;
  v371 = &v360;
  MEMORY[0x1EEE9AC00](v123);
  v126 = &v360 - v388;
  sub_1CA948D98();
  v127 = [v391 bundleURL];
  MEMORY[0x1EEE9AC00](v127);
  v128 = &v360 - v392;
  sub_1CA948B68();

  v129 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v130 = sub_1CA2F9F14(v120, v122, v123, v125, 0, 0, v126, v128);
  *(v114 + 224) = v387;
  *(v114 + 200) = v130;
  v131 = sub_1CA94C1E8();
  v132 = sub_1CA2F864C(v131);
  *(v386 + 40) = v132;
  v133 = swift_allocObject();
  *(v133 + 16) = xmmword_1CA981400;
  v134 = MEMORY[0x1E69E6158];
  *(v133 + 64) = MEMORY[0x1E69E6158];
  v371 = 0x80000001CA9AB710;
  v135 = v370;
  *(v133 + 32) = v370;
  *(v133 + 40) = 0xD000000000000014;
  *(v133 + 48) = 0x80000001CA9AB710;
  v370 = v135;
  *(v133 + 72) = sub_1CA94C368();
  *(v133 + 80) = 1702125892;
  *(v133 + 88) = 0xE400000000000000;
  v136 = v369;
  *(v133 + 104) = v134;
  *(v133 + 112) = v136;
  *(v133 + 120) = v376;
  *(v133 + 128) = 0x80000001CA9AB730;
  *(v133 + 144) = v134;
  v137 = v368;
  *(v133 + 152) = v368;
  v369 = v136;
  v376 = v137;
  v367 = sub_1CA94C438("Due Date (WFTodoistDueDate)", 27);
  *&v366 = v138;
  v139 = sub_1CA94C438("Due Date", 8);
  v141 = v140;
  v368 = &v360;
  MEMORY[0x1EEE9AC00](v139);
  v142 = &v360 - v388;
  sub_1CA948D98();
  v143 = v391;
  v144 = [v391 bundleURL];
  MEMORY[0x1EEE9AC00](v144);
  v145 = &v360 - v392;
  sub_1CA948B68();

  v146 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v133 + 160) = sub_1CA2F9F14(v367, v366, v139, v141, 0, 0, v142, v145);
  v147 = v387;
  *(v133 + 184) = v387;
  *(v133 + 192) = @"Placeholder";
  v367 = @"Placeholder";
  v148 = sub_1CA94C438("May 23 (WFTodoistDueDate)", 25);
  v365 = v149;
  *&v366 = v148;
  v150 = sub_1CA94C438("May 23", 6);
  v152 = v151;
  v368 = &v360;
  MEMORY[0x1EEE9AC00](v150);
  v153 = &v360 - v388;
  sub_1CA948D98();
  v154 = [v143 bundleURL];
  MEMORY[0x1EEE9AC00](v154);
  v155 = &v360 - v392;
  sub_1CA948B68();

  v156 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v133 + 200) = sub_1CA2F9F14(v366, v365, v150, v152, 0, 0, v153, v155);
  *(v133 + 224) = v147;
  *(v133 + 232) = @"ResultType";
  *(v133 + 240) = 0x676E69727453;
  *(v133 + 248) = 0xE600000000000000;
  v157 = MEMORY[0x1E69E6158];
  v158 = v380;
  *(v133 + 264) = MEMORY[0x1E69E6158];
  *(v133 + 272) = v158;
  *(v133 + 304) = v157;
  v159 = v157;
  *(v133 + 280) = 0x7468676952;
  *(v133 + 288) = 0xE500000000000000;
  v365 = @"ResultType";
  v160 = sub_1CA94C1E8();
  v161 = sub_1CA2F864C(v160);
  *(v386 + 48) = v161;
  v162 = swift_allocObject();
  v366 = xmmword_1CA981380;
  *(v162 + 16) = xmmword_1CA981380;
  v164 = v370;
  v163 = v371;
  *(v162 + 32) = v370;
  *(v162 + 40) = 0xD000000000000014;
  *(v162 + 48) = v163;
  v165 = v369;
  *(v162 + 64) = v159;
  *(v162 + 72) = v165;
  v371 = 0xD000000000000011;
  *(v162 + 80) = 0xD000000000000011;
  *(v162 + 88) = 0x80000001CA994210;
  *(v162 + 104) = v159;
  v166 = v376;
  *(v162 + 112) = v376;
  v370 = v164;
  v368 = v165;
  v369 = v166;
  v167 = sub_1CA94C438("Remind Me On (WFTodoistReminder)", 32);
  v363 = v168;
  v364 = v167;
  v169 = sub_1CA94C438("Remind Me On", 12);
  v362 = v170;
  v376 = &v360;
  MEMORY[0x1EEE9AC00](v169);
  v171 = v388;
  sub_1CA948D98();
  v172 = v391;
  v173 = [v391 bundleURL];
  MEMORY[0x1EEE9AC00](v173);
  v174 = &v360 - v392;
  sub_1CA948B68();

  v175 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v162 + 120) = sub_1CA2F9F14(v364, v363, v169, v362, 0, 0, &v360 - v171, v174);
  v176 = v387;
  v177 = v367;
  *(v162 + 144) = v387;
  *(v162 + 152) = v177;
  v376 = v177;
  v178 = sub_1CA94C438("May 23 at 1 PM (WFTodoistReminder)", 34);
  v363 = v179;
  v364 = v178;
  v180 = sub_1CA94C438("May 23 at 1 PM", 14);
  v182 = v181;
  v367 = &v360;
  MEMORY[0x1EEE9AC00](v180);
  sub_1CA948D98();
  v183 = [v172 bundleURL];
  MEMORY[0x1EEE9AC00](v183);
  v184 = &v360 - v392;
  sub_1CA948B68();

  v185 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v162 + 160) = sub_1CA2F9F14(v364, v363, v180, v182, 0, 0, &v360 - v171, v184);
  v186 = v365;
  *(v162 + 184) = v176;
  *(v162 + 192) = v186;
  *(v162 + 200) = 0x676E69727453;
  *(v162 + 208) = 0xE600000000000000;
  v187 = MEMORY[0x1E69E6158];
  v188 = v380;
  *(v162 + 224) = MEMORY[0x1E69E6158];
  *(v162 + 232) = v188;
  *(v162 + 264) = v187;
  v189 = v187;
  *(v162 + 240) = 0x7468676952;
  *(v162 + 248) = 0xE500000000000000;
  v190 = sub_1CA94C1E8();
  v191 = sub_1CA2F864C(v190);
  *(v386 + 56) = v191;
  v192 = swift_allocObject();
  *(v192 + 16) = v366;
  v367 = 0x80000001CA99C4A0;
  *&v366 = 0xD000000000000016;
  v193 = v370;
  *(v192 + 32) = v370;
  *(v192 + 40) = 0xD000000000000016;
  *(v192 + 48) = 0x80000001CA99C4A0;
  v194 = v375;
  *(v192 + 64) = v189;
  *(v192 + 72) = v194;
  *(v192 + 80) = 0x6C69616D45;
  *(v192 + 88) = 0xE500000000000000;
  *(v192 + 104) = v189;
  *(v192 + 112) = @"Items";
  v380 = swift_allocObject();
  *&v380->data = xmmword_1CA981470;
  v195 = @"Items";
  v364 = v193;
  v365 = v195;
  v196 = sub_1CA94C438("Email (WFTodoistReminderType)", 29);
  v362 = v197;
  v363 = v196;
  v198 = sub_1CA94C438("Email", 5);
  v361 = v199;
  v370 = &v360;
  MEMORY[0x1EEE9AC00](v198);
  v200 = v388;
  sub_1CA948D98();
  v201 = [v391 bundleURL];
  MEMORY[0x1EEE9AC00](v201);
  v202 = &v360 - v392;
  sub_1CA948B68();

  v203 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v204 = sub_1CA2F9F14(v363, v362, v198, v361, 0, 0, &v360 - v200, v202);
  v380[1].isa = v204;
  v205 = sub_1CA94C438("Push Notification (WFTodoistReminderType)", 41);
  v362 = v206;
  v363 = v205;
  v207 = sub_1CA94C438("Push Notification", 17);
  v361 = v208;
  v370 = &v360;
  MEMORY[0x1EEE9AC00](v207);
  sub_1CA948D98();
  v209 = v391;
  v210 = [v391 bundleURL];
  v360 = &v360;
  MEMORY[0x1EEE9AC00](v210);
  v211 = v392;
  sub_1CA948B68();

  v212 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v213 = sub_1CA2F9F14(v363, v362, v207, v361, 0, 0, &v360 - v200, &v360 - v211);
  v380[1].info = v213;
  v214 = sub_1CA94C438("Text Message (WFTodoistReminderType)", 36);
  v362 = v215;
  v363 = v214;
  v216 = sub_1CA94C438("Text Message", 12);
  v361 = v217;
  v370 = &v360;
  MEMORY[0x1EEE9AC00](v216);
  sub_1CA948D98();
  v218 = [v209 bundleURL];
  MEMORY[0x1EEE9AC00](v218);
  sub_1CA948B68();

  v219 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v220 = sub_1CA2F9F14(v363, v362, v216, v361, 0, 0, &v360 - v200, &v360 - v211);
  v221 = v380;
  v380[1].data = v220;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v370 = v222;
  *(v192 + 120) = v221;
  v223 = v368;
  v224 = v369;
  *(v192 + 144) = v222;
  *(v192 + 152) = v223;
  *(v192 + 160) = 0xD000000000000015;
  *(v192 + 168) = 0x80000001CA9AB8D0;
  *(v192 + 184) = MEMORY[0x1E69E6158];
  *(v192 + 192) = v224;
  v368 = v223;
  v369 = v224;
  v363 = sub_1CA94C438("Reminder Type (WFTodoistReminderType)", 37);
  v226 = v225;
  v227 = sub_1CA94C438("Reminder Type", 13);
  v229 = v228;
  v380 = &v360;
  MEMORY[0x1EEE9AC00](v227);
  v230 = &v360 - v388;
  sub_1CA948D98();
  v231 = [v391 bundleURL];
  MEMORY[0x1EEE9AC00](v231);
  v232 = &v360 - v392;
  sub_1CA948B68();

  v233 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v192 + 200) = sub_1CA2F9F14(v363, v226, v227, v229, 0, 0, v230, v232);
  *(v192 + 224) = v387;
  *(v192 + 232) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v234 = swift_allocObject();
  *(v234 + 16) = xmmword_1CA981310;
  v235 = @"RequiredResources";
  v236 = MEMORY[0x1E69E6158];
  *(v234 + 32) = sub_1CA94C1E8();
  *(v192 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v192 + 240) = v234;
  v237 = sub_1CA94C1E8();
  v238 = sub_1CA2F864C(v237);
  *(v386 + 64) = v238;
  v239 = swift_allocObject();
  *(v239 + 16) = v378;
  v240 = v364;
  v241 = v366;
  *(v239 + 32) = v364;
  *(v239 + 40) = v241;
  *(v239 + 48) = v367;
  v242 = v375;
  *(v239 + 64) = v236;
  *(v239 + 72) = v242;
  *(v239 + 80) = 52;
  *(v239 + 88) = 0xE100000000000000;
  v243 = v365;
  *(v239 + 104) = v236;
  *(v239 + 112) = v243;
  v380 = swift_allocObject();
  *&v380->data = xmmword_1CA981570;
  v377 = v240;
  v367 = sub_1CA94C438("4 (WFTodoistPriority)", 21);
  *&v366 = v244;
  v245 = sub_1CA94C438("4", 1);
  v365 = v246;
  v375 = &v360;
  MEMORY[0x1EEE9AC00](v245);
  v247 = v388;
  sub_1CA948D98();
  v248 = v391;
  v249 = [v391 bundleURL];
  MEMORY[0x1EEE9AC00](v249);
  v250 = &v360 - v392;
  sub_1CA948B68();

  v251 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v252 = sub_1CA2F9F14(v367, v366, v245, v365, 0, 0, &v360 - v247, v250);
  v380[1].isa = v252;
  v367 = sub_1CA94C438("3 (WFTodoistPriority)", 21);
  *&v366 = v253;
  v254 = sub_1CA94C438("3", 1);
  v365 = v255;
  v375 = &v360;
  MEMORY[0x1EEE9AC00](v254);
  sub_1CA948D98();
  v256 = [v248 bundleURL];
  MEMORY[0x1EEE9AC00](v256);
  v257 = v392;
  sub_1CA948B68();

  v258 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v259 = sub_1CA2F9F14(v367, v366, v254, v365, 0, 0, &v360 - v247, &v360 - v257);
  v260 = v380;
  v380[1].info = v259;
  v367 = sub_1CA94C438("2 (WFTodoistPriority)", 21);
  *&v366 = v261;
  v262 = sub_1CA94C438("2", 1);
  v365 = v263;
  v375 = &v360;
  MEMORY[0x1EEE9AC00](v262);
  v264 = &v360 - v247;
  sub_1CA948D98();
  v265 = v391;
  v266 = [v391 bundleURL];
  v364 = &v360;
  MEMORY[0x1EEE9AC00](v266);
  sub_1CA948B68();

  v267 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v260 + 48) = sub_1CA2F9F14(v367, v366, v262, v365, 0, 0, v264, &v360 - v257);
  v367 = sub_1CA94C438("1 (WFTodoistPriority)", 21);
  *&v366 = v268;
  v365 = sub_1CA94C438("1", 1);
  v270 = v269;
  v375 = &v360;
  MEMORY[0x1EEE9AC00](v365);
  v271 = v388;
  sub_1CA948D98();
  v272 = [v265 bundleURL];
  MEMORY[0x1EEE9AC00](v272);
  v273 = v392;
  sub_1CA948B68();

  v274 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v275 = sub_1CA2F9F14(v367, v366, v365, v270, 0, 0, &v360 - v271, &v360 - v273);
  v276 = v380;
  v380[1].length = v275;
  *(v239 + 120) = v276;
  v277 = v371;
  v278 = v368;
  v279 = v369;
  *(v239 + 144) = v370;
  *(v239 + 152) = v278;
  *(v239 + 160) = v277;
  *(v239 + 168) = 0x80000001CA9AB9B0;
  *(v239 + 184) = MEMORY[0x1E69E6158];
  *(v239 + 192) = v279;
  v380 = v278;
  v375 = v279;
  v280 = sub_1CA94C438("Priority (WFTodoistPriority)", 28);
  v369 = v281;
  v370 = v280;
  v282 = sub_1CA94C438("Priority", 8);
  v284 = v283;
  v371 = &v360;
  MEMORY[0x1EEE9AC00](v282);
  sub_1CA948D98();
  v285 = [v391 bundleURL];
  MEMORY[0x1EEE9AC00](v285);
  sub_1CA948B68();

  v286 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v287 = sub_1CA2F9F14(v370, v369, v282, v284, 0, 0, &v360 - v271, &v360 - v273);
  *(v239 + 224) = v387;
  *(v239 + 200) = v287;
  v288 = sub_1CA94C1E8();
  v289 = sub_1CA2F864C(v288);
  *(v386 + 72) = v289;
  v290 = swift_allocObject();
  *(v290 + 16) = v378;
  *(v290 + 32) = v377;
  *(v290 + 40) = 0xD000000000000014;
  *(v290 + 48) = v372;
  v291 = MEMORY[0x1E69E6158];
  v292 = v380;
  *(v290 + 64) = MEMORY[0x1E69E6158];
  *(v290 + 72) = v292;
  strcpy((v290 + 80), "WFTodoistNotes");
  *(v290 + 95) = -18;
  v293 = v375;
  *(v290 + 104) = v291;
  *(v290 + 112) = v293;
  v294 = sub_1CA94C438("Notes (WFTodoistNotes)", 22);
  v371 = v295;
  v372 = v294;
  v296 = sub_1CA94C438("Notes", 5);
  v370 = v297;
  *&v378 = &v360;
  MEMORY[0x1EEE9AC00](v296);
  v298 = &v360 - v271;
  sub_1CA948D98();
  v299 = v391;
  v300 = [v391 bundleURL];
  MEMORY[0x1EEE9AC00](v300);
  v301 = &v360 - v392;
  sub_1CA948B68();

  v302 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v290 + 120) = sub_1CA2F9F14(v372, v371, v296, v370, 0, 0, v298, v301);
  v303 = v387;
  *(v290 + 144) = v387;
  *(v290 + 152) = @"Multiline";
  *(v290 + 160) = 1;
  v304 = v376;
  *(v290 + 184) = MEMORY[0x1E69E6370];
  *(v290 + 192) = v304;
  v305 = @"Multiline";
  v306 = sub_1CA94C438("Notes (WFTodoistNotes)", 22);
  v371 = v307;
  v372 = v306;
  v308 = sub_1CA94C438("Notes", 5);
  v370 = v309;
  *&v378 = &v360;
  MEMORY[0x1EEE9AC00](v308);
  v310 = &v360 - v388;
  sub_1CA948D98();
  v311 = [v299 bundleURL];
  MEMORY[0x1EEE9AC00](v311);
  v312 = &v360 - v392;
  sub_1CA948B68();

  v313 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v314 = sub_1CA2F9F14(v372, v371, v308, v370, 0, 0, v310, v312);
  *(v290 + 224) = v303;
  *(v290 + 200) = v314;
  v315 = sub_1CA94C1E8();
  v316 = sub_1CA2F864C(v315);
  *(v386 + 80) = v316;
  v317 = swift_allocObject();
  *(v317 + 16) = v379;
  *(v317 + 32) = v377;
  *(v317 + 40) = 0xD000000000000019;
  *(v317 + 48) = 0x80000001CA99B030;
  v318 = MEMORY[0x1E69E6158];
  v319 = v380;
  *(v317 + 64) = MEMORY[0x1E69E6158];
  *(v317 + 72) = v319;
  strcpy((v317 + 80), "WFTodoistFile");
  *(v317 + 94) = -4864;
  v320 = v375;
  *(v317 + 104) = v318;
  *(v317 + 112) = v320;
  v380 = sub_1CA94C438("Files (WFTodoistFile)", 21);
  *&v379 = v321;
  v322 = sub_1CA94C438("Files", 5);
  *&v378 = v323;
  v384 = &v360;
  MEMORY[0x1EEE9AC00](v322);
  v324 = v388;
  sub_1CA948D98();
  v325 = [v391 bundleURL];
  v377 = &v360;
  MEMORY[0x1EEE9AC00](v325);
  v326 = v392;
  sub_1CA948B68();

  v327 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v317 + 120) = sub_1CA2F9F14(v380, v379, v322, v378, 0, 0, &v360 - v324, &v360 - v326);
  v328 = v376;
  *(v317 + 144) = v387;
  *(v317 + 152) = v328;
  v380 = sub_1CA94C438("Choose Variable (WFTodoistFile)", 31);
  *&v379 = v329;
  v330 = sub_1CA94C438("Choose Variable", 15);
  *&v378 = v331;
  v384 = &v360;
  MEMORY[0x1EEE9AC00](v330);
  sub_1CA948D98();
  v332 = [v391 bundleURL];
  MEMORY[0x1EEE9AC00](v332);
  sub_1CA948B68();

  v333 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v334 = sub_1CA2F9F14(v380, v379, v330, v378, 0, 0, &v360 - v324, &v360 - v326);
  *(v317 + 184) = v387;
  *(v317 + 160) = v334;
  v335 = sub_1CA94C1E8();
  v336 = sub_1CA2F864C(v335);
  v337 = v386;
  *(v386 + 88) = v336;
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v339 = v381;
  v381[45] = v337;
  v339[48] = v338;
  v339[49] = @"ParameterSummary";
  v340 = @"ParameterSummary";
  v341 = sub_1CA94C438("Add ${WFTodoistContent} to ${WFTodoistProject} (Parameter Summary)", 66);
  v343 = v342;
  v344 = sub_1CA94C438("Add ${WFTodoistContent} to ${WFTodoistProject}", 46);
  v346 = v345;
  MEMORY[0x1EEE9AC00](v344);
  v347 = &v360 - v388;
  sub_1CA948D98();
  v348 = [v391 bundleURL];
  MEMORY[0x1EEE9AC00](v348);
  v349 = &v360 - v392;
  sub_1CA948B68();

  v350 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v351 = sub_1CA2F9F14(v341, v343, v344, v346, 0, 0, v347, v349);
  v352 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v353 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v354 = v381;
  v381[50] = v352;
  v354[53] = v353;
  v354[54] = @"RequiredResources";
  v355 = v354;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v356 = swift_allocObject();
  *(v356 + 16) = xmmword_1CA97EDF0;
  v357 = @"RequiredResources";
  v358 = MEMORY[0x1E69E6158];
  *(v356 + 32) = sub_1CA94C1E8();
  *(v356 + 88) = v358;
  *(v356 + 56) = v373;
  *(v356 + 64) = 0xD00000000000001CLL;
  *(v356 + 72) = 0x80000001CA993620;
  v355[58] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v355[55] = v356;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t LNValue.ValueResolutionContext.sourceContainer.getter()
{
  OUTLINED_FUNCTION_11_0();
  sub_1CA94B1C8();
  OUTLINED_FUNCTION_52();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t LNValue.ValueResolutionContext.preferredCoercion.getter()
{
  v2 = OUTLINED_FUNCTION_11_0();
  v3 = *(type metadata accessor for LNValue.ValueResolutionContext(v2) + 20);
  sub_1CA94B668();
  OUTLINED_FUNCTION_52();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t type metadata accessor for LNValue.ValueResolutionContext(uint64_t a1)
{
  result = qword_1EC441728;
  if (!qword_1EC441728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LNValue.ValueResolutionContext.displayRepresentationConfig.getter()
{
  v2 = OUTLINED_FUNCTION_11_0();
  v3 = *(type metadata accessor for LNValue.ValueResolutionContext(v2) + 24);
  sub_1CA94B728();
  OUTLINED_FUNCTION_52();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t LNValue.ValueResolutionContext.enumerationCases.getter()
{
  type metadata accessor for LNValue.ValueResolutionContext(0);

  return sub_1CA94C218();
}

uint64_t LNValue.ValueResolutionContext.init(sourceContainer:preferredCoercion:displayRepresentationConfig:enumerationCases:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1CA94B1C8();
  OUTLINED_FUNCTION_0_1();
  (*(v10 + 32))(a5, a1);
  v11 = type metadata accessor for LNValue.ValueResolutionContext(0);
  v12 = v11[5];
  sub_1CA94B668();
  OUTLINED_FUNCTION_0_1();
  (*(v13 + 32))(a5 + v12, a2);
  v14 = v11[6];
  sub_1CA94B728();
  OUTLINED_FUNCTION_0_1();
  result = (*(v15 + 32))(a5 + v14, a3);
  *(a5 + v11[7]) = a4;
  return result;
}

uint64_t LNValue.ValueResolutionContext.init(sourceContainer:)(uint64_t a1)
{
  OUTLINED_FUNCTION_11_0();
  v3 = sub_1CA94B1C8();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, a1, v3);
  v5 = type metadata accessor for LNValue.ValueResolutionContext(0);
  v6 = *(v5 + 20);
  v7 = *MEMORY[0x1E69DB488];
  sub_1CA94B668();
  OUTLINED_FUNCTION_0_1();
  (*(v8 + 104))(v1 + v6, v7);
  _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
  result = (*(v4 + 8))(a1, v3);
  *(v1 + *(v5 + 28)) = 0;
  return result;
}

uint64_t LNValue.resolve(with:)()
{
  OUTLINED_FUNCTION_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = type metadata accessor for LinkValueTransformContext(0);
  v1[6] = swift_task_alloc();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA380060()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v2[5];
  sub_1CA94B1C8();
  OUTLINED_FUNCTION_0_1();
  (*(v6 + 16))(&v1[v5], v3);
  v7 = type metadata accessor for LNValue.ValueResolutionContext(0);
  v8 = *(v7 + 24);
  v9 = v2[6];
  sub_1CA94B728();
  OUTLINED_FUNCTION_0_1();
  (*(v10 + 16))(&v1[v9], v3 + v8);
  v11 = [objc_opt_self() defaultContext];
  v12 = *(v3 + *(v7 + 28));
  *v1 = v4;
  *&v1[v2[7]] = v11;
  *&v1[v2[8]] = v12;
  sub_1CA94C218();
  v13 = v4;
  v14 = swift_task_alloc();
  v0[7] = v14;
  *v14 = v0;
  v14[1] = sub_1CA3801E4;

  return TypedValueTransformer.transform(input:with:)();
}

uint64_t sub_1CA3801E4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v2 = *v1;
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  *(v4 + 64) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CA3802E4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_19();

  OUTLINED_FUNCTION_5();

  return v0();
}

uint64_t sub_1CA380344()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_19();

  OUTLINED_FUNCTION_5();

  return v0();
}

uint64_t static LNValue.produceValuesFromEncodedTypedValues(encodedTypedValues:variableDataSource:associatedParameter:)()
{
  OUTLINED_FUNCTION_0();
  v0[4] = v1;
  v0[5] = v2;
  v0[3] = v3;
  v4 = sub_1CA94AC88();
  v0[6] = v4;
  v0[7] = *(v4 - 8);
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v0[10] = type metadata accessor for ContentGraphRepresentationContext(0);
  v0[11] = swift_task_alloc();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1CA38049C()
{
  v1 = v0;
  v2 = v0[3];
  sub_1CA9489C8();
  swift_allocObject();
  v0[12] = sub_1CA9489B8();
  v3 = sub_1CA25B410(v2);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = v3;
    v40 = MEMORY[0x1E69E7CC0];
    sub_1CA2B8E18(0, v3 & ~(v3 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    v4 = 0;
    v6 = v1[3];
    v38 = v5;
    v39 = v6 & 0xC000000000000001;
    v7 = v40;
    v35 = v6 + 32;
    v36 = v6 & 0xFFFFFFFFFFFFFF8;
    v37 = v1[7];
    while (1)
    {
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v39)
      {
        v9 = MEMORY[0x1CCAA22D0](v4, v1[3]);
      }

      else
      {
        if (v4 >= *(v36 + 16))
        {
          goto LABEL_24;
        }

        v9 = *(v35 + 8 * v4);
      }

      v10 = v9;
      v5 = v1;
      v11 = [v9 data];
      v12 = sub_1CA948C08();
      v14 = v13;

      sub_1CA381204();
      sub_1CA9489A8();
      sub_1CA266F2C(v12, v14);

      v16 = *(v40 + 16);
      v15 = *(v40 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1CA2B8E18(v15 > 1, v16 + 1, 1);
      }

      v1 = v5;
      v17 = *(v5 + 64);
      v18 = *(v5 + 48);
      *(v40 + 16) = v16 + 1;
      (*(v37 + 32))(v40 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v16, v17, v18);
      ++v4;
      if (v8 == v38)
      {
        v4 = MEMORY[0x1E69E7CC0];
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v1[13] = v7;
  v19 = v1[11];
  v5 = v1[5];
  v20 = *(v1[10] + 24);
  v21 = sub_1CA94B258();
  __swift_storeEnumTagSinglePayload(v19 + v20, 1, 1, v21);
  if (qword_1EC442008 != -1)
  {
LABEL_25:
    swift_once();
  }

  v22 = v1[11];
  v23 = v1[4];
  v24 = v1[5];
  v25 = qword_1EC442010;
  v22[3] = type metadata accessor for DatabaseContainerDefinitionProvider();
  v22[4] = &protocol witness table for DatabaseContainerDefinitionProvider;
  *v22 = v25;
  v22[5] = v5;
  v22[6] = v23;
  v1[2] = v4;
  v26 = *(v7 + 16);
  v1[15] = 0;
  v1[16] = v4;
  v1[14] = v26;

  v27 = v24;
  swift_unknownObjectRetain();
  v28 = v1[13];
  if (!v26)
  {
    v31 = v1[11];

    OUTLINED_FUNCTION_0_20();
    sub_1CA38125C(v31, v32);

    OUTLINED_FUNCTION_53();

    __asm { BRAA            X2, X16 }
  }

  if (!*(v28 + 16))
  {
    goto LABEL_27;
  }

  (*(v1[7] + 16))(v1[9], v28 + ((*(v1[7] + 80) + 32) & ~*(v1[7] + 80)), v1[6]);
  sub_1CA25B3D0(0, &unk_1EDB9F6B0, 0x1E69ACA90);
  v29 = swift_task_alloc();
  v1[17] = v29;
  *v29 = v1;
  OUTLINED_FUNCTION_4_21(v29);
  OUTLINED_FUNCTION_53();

  TypedValue.resolve(to:in:)();
}

uint64_t sub_1CA3808FC(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  v5[18] = v1;

  if (v1)
  {
    (*(v5[7] + 8))(v5[9], v5[6]);
  }

  else
  {
    v8 = v5[9];
    v9 = v5[6];
    v10 = v5[7];
    v5[19] = a1;
    (*(v10 + 8))(v8, v9);
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1CA380A58()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClassUnconditional();
  MEMORY[0x1CCAA1490]();
  if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1CA94C698();
  }

  sub_1CA94C6E8();

  v2 = v0[2];
  v3 = v0[14];
  v4 = v0[15] + 1;
  v0[15] = v4;
  v0[16] = v2;
  result = v0[13];
  if (v4 == v3)
  {
    v6 = v0[11];

    OUTLINED_FUNCTION_0_20();
    sub_1CA38125C(v6, v7);

    v8 = v0[1];

    return v8(v2);
  }

  else if (v4 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    (*(v0[7] + 16))(v0[9], result + ((*(v0[7] + 80) + 32) & ~*(v0[7] + 80)) + *(v0[7] + 72) * v4, v0[6]);
    sub_1CA25B3D0(0, &unk_1EDB9F6B0, 0x1E69ACA90);
    v9 = swift_task_alloc();
    v0[17] = v9;
    *v9 = v0;
    OUTLINED_FUNCTION_4_21(v9);

    return TypedValue.resolve(to:in:)();
  }

  return result;
}

uint64_t sub_1CA380C60()
{
  v1 = *(v0 + 88);

  OUTLINED_FUNCTION_0_20();
  sub_1CA38125C(v1, v2);

  OUTLINED_FUNCTION_5();

  return v3();
}

double sub_1CA380CF0(uint64_t a1, int a2, void *a3, uint64_t a4, void *a5, void *aBlock)
{
  v10 = _Block_copy(aBlock);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = a1;
  v12 = a3;
  swift_unknownObjectRetain();
  v13 = a5;

  return sub_1CA67052C(&unk_1CA985470, v11);
}

uint64_t sub_1CA380D94(uint64_t a1, uint64_t a2, void *a3, void *aBlock)
{
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = _Block_copy(aBlock);
  sub_1CA25B3D0(0, &qword_1EC4449C8, 0x1E69E0AD8);
  v4[5] = sub_1CA94C658();
  swift_unknownObjectRetain();
  v6 = a3;
  v7 = swift_task_alloc();
  v4[6] = v7;
  *v7 = v4;
  v7[1] = sub_1CA380E90;

  return static LNValue.produceValuesFromEncodedTypedValues(encodedTypedValues:variableDataSource:associatedParameter:)();
}

uint64_t sub_1CA380E90(uint64_t a1)
{
  v3 = v1;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *v2;
  OUTLINED_FUNCTION_13();
  *v8 = v7;

  swift_unknownObjectRelease();

  if (v3)
  {
    v9 = sub_1CA948AC8();

    v10 = 0;
    v11 = v9;
  }

  else
  {
    sub_1CA25B3D0(0, &unk_1EDB9F6B0, 0x1E69ACA90);
    v10 = sub_1CA94C648();

    v9 = 0;
    v11 = v10;
  }

  v12 = *(v5 + 32);
  v12[2](v12, v10, v9);

  _Block_release(v12);
  OUTLINED_FUNCTION_5();

  return v13();
}

uint64_t sub_1CA381060()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2DF78C;

  return LNValue.resolve(with:)();
}

uint64_t sub_1CA38110C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1CA25B3D0(0, &unk_1EDB9F6B0, 0x1E69ACA90);
  v7 = sub_1CA3812E8(qword_1EC4449D0, &protocol conformance descriptor for LNValue);
  *v5 = v2;
  v5[1] = sub_1CA2E9390;

  return MEMORY[0x1EEE4B290](a1, a2, v6, v7);
}

unint64_t sub_1CA381204()
{
  result = qword_1EC4449A8;
  if (!qword_1EC4449A8)
  {
    sub_1CA94AC88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4449A8);
  }

  return result;
}

uint64_t sub_1CA38125C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_52();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1CA3812E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1CA25B3D0(255, &unk_1EDB9F6B0, 0x1E69ACA90);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1CA381364(uint64_t a1)
{
  sub_1CA94B1C8();
  if (v1 <= 0x3F)
  {
    sub_1CA94B668();
    if (v2 <= 0x3F)
    {
      sub_1CA94B728();
      if (v3 <= 0x3F)
      {
        sub_1CA381418(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1CA381418(uint64_t a1)
{
  if (!qword_1EC4449B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4449C0, &unk_1CA990660);
    v1 = sub_1CA94D098();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC4449B8);
    }
  }
}

uint64_t sub_1CA38147C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1CA2DF78C;

  return sub_1CA380D94(v2, v3, v4, v5);
}

uint64_t sub_1CA381544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1CA381580(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1CA3815C0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

id sub_1CA381654()
{
  v137 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA9ABB70;
  *(inited + 64) = v1;
  *(inited + 72) = @"Description";
  v143 = inited;
  v2 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_1CA981310;
  *(v3 + 32) = @"DescriptionSummary";
  v4 = @"ActionClass";
  v5 = @"Description";
  v6 = @"DescriptionSummary";
  v7 = sub_1CA94C438("Returns a particular object class from the input.", 49);
  *&v142 = v8;
  v9 = sub_1CA94C438("Returns a particular object class from the input.", 49);
  v11 = v10;
  v12 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v146 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v147 = v13;
  v14 = &v128 - v146;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v145 = qword_1EDB9F690;
  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v144 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v141 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v128 - v141;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v7, v142, v9, v11, 0, 0, v14, v18);
  v140 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v3 + 64) = v140;
  *(v3 + 40) = v20;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v21 = sub_1CA94C1E8();
  v22 = v2;
  v23 = sub_1CA6B3784(v21);
  v24 = v143;
  v143[10] = v23;
  v24[13] = v22;
  v24[14] = @"IconColor";
  v24[15] = 2036429383;
  v24[16] = 0xE400000000000000;
  v25 = MEMORY[0x1E69E6158];
  v24[18] = MEMORY[0x1E69E6158];
  v24[19] = @"IconSymbol";
  v24[20] = 0xD000000000000017;
  v24[21] = 0x80000001CA9ABBD0;
  v24[23] = v25;
  v24[24] = @"Input";
  v26 = v25;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v27 = swift_initStackObject();
  v142 = xmmword_1CA981350;
  *(v27 + 16) = xmmword_1CA981350;
  *(v27 + 32) = 0x656C7069746C754DLL;
  *(v27 + 40) = 0xE800000000000000;
  v28 = MEMORY[0x1E69E6370];
  *(v27 + 48) = 1;
  *(v27 + 72) = v28;
  strcpy((v27 + 80), "ParameterKey");
  *(v27 + 93) = 0;
  *(v27 + 94) = -5120;
  *(v27 + 96) = 0x7475706E49;
  *(v27 + 104) = 0xE500000000000000;
  *(v27 + 120) = v26;
  *(v27 + 128) = 0x6465726975716552;
  *(v27 + 136) = 0xE800000000000000;
  *(v27 + 144) = 1;
  *(v27 + 168) = v28;
  *(v27 + 176) = 0x7365707954;
  v29 = v28;
  *(v27 + 184) = 0xE500000000000000;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v27 + 216) = v139;
  *(v27 + 192) = &unk_1F49F6C00;
  v30 = @"IconColor";
  v31 = @"IconSymbol";
  v32 = @"Input";
  v33 = sub_1CA94C1E8();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v138 = v34;
  v24[25] = v33;
  v24[28] = v34;
  v24[29] = @"Discoverable";
  *(v24 + 240) = 0;
  v24[33] = v29;
  v24[34] = @"Name";
  v35 = @"Discoverable";
  v36 = @"Name";
  v37 = sub_1CA94C438("Get Object of Class (Action Name)", 33);
  v133 = v38;
  v134 = v37;
  v39 = sub_1CA94C438("Get Object of Class", 19);
  v41 = v40;
  v135 = &v128;
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v128 - v146;
  sub_1CA948D98();
  v43 = v145;
  v44 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v44);
  v45 = v141;
  sub_1CA948B68();

  v46 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v47 = sub_1CA2F9F14(v134, v133, v39, v41, 0, 0, v42, &v128 - v45);
  v48 = v143;
  v143[35] = v47;
  v49 = v140;
  v48[38] = v140;
  v48[39] = @"Output";
  v50 = swift_initStackObject();
  *(v50 + 16) = v142;
  *(v50 + 32) = 0x75736F6C63736944;
  *(v50 + 40) = 0xEF6C6576654C6572;
  *(v50 + 48) = 0x63696C627550;
  *(v50 + 56) = 0xE600000000000000;
  *(v50 + 72) = MEMORY[0x1E69E6158];
  *(v50 + 80) = 0x656C7069746C754DLL;
  *(v50 + 88) = 0xE800000000000000;
  *(v50 + 96) = 1;
  *(v50 + 120) = MEMORY[0x1E69E6370];
  *(v50 + 128) = 0x614E74757074754FLL;
  *(v50 + 136) = 0xEA0000000000656DLL;
  v51 = @"Output";
  v52 = sub_1CA94C438("Object of Class (Default Output Name)", 37);
  v134 = v53;
  v135 = v52;
  v133 = sub_1CA94C438("Object of Class", 15);
  v55 = v54;
  v136 = &v128;
  MEMORY[0x1EEE9AC00](v133);
  v56 = &v128 - v146;
  sub_1CA948D98();
  v57 = [v43 bundleURL];
  MEMORY[0x1EEE9AC00](v57);
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v50 + 144) = sub_1CA2F9F14(v135, v134, v133, v55, 0, 0, v56, &v128 - v45);
  *(v50 + 168) = v49;
  *(v50 + 176) = 0x7365707954;
  *(v50 + 216) = v139;
  *(v50 + 184) = 0xE500000000000000;
  *(v50 + 192) = &unk_1F49F6C30;
  v59 = MEMORY[0x1E69E6158];
  v60 = sub_1CA94C1E8();
  v61 = v143;
  v143[40] = v60;
  v61[43] = v138;
  v61[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v139 = swift_allocObject();
  *(v139 + 16) = xmmword_1CA981360;
  v138 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v62 = swift_allocObject();
  *(v62 + 16) = v142;
  *(v62 + 32) = @"Class";
  *(v62 + 40) = 0xD000000000000014;
  *(v62 + 48) = 0x80000001CA99B500;
  *(v62 + 64) = v59;
  *(v62 + 72) = @"Key";
  *(v62 + 80) = 0x7373616C43;
  *(v62 + 88) = 0xE500000000000000;
  *(v62 + 104) = v59;
  *(v62 + 112) = @"Label";
  v63 = @"Class";
  v64 = @"Key";
  v65 = @"Label";
  v135 = v63;
  v134 = v64;
  v133 = v65;
  v66 = @"Parameters";
  v67 = sub_1CA94C438("Class (Class)", 13);
  v130 = v68;
  v131 = v67;
  v69 = sub_1CA94C438("Class", 5);
  v71 = v70;
  v132 = &v128;
  MEMORY[0x1EEE9AC00](v69);
  v72 = &v128 - v146;
  sub_1CA948D98();
  v73 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v73);
  v74 = v141;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v62 + 120) = sub_1CA2F9F14(v131, v130, v69, v71, 0, 0, v72, &v128 - v74);
  v76 = v140;
  *(v62 + 144) = v140;
  *(v62 + 152) = @"Placeholder";
  v132 = @"Placeholder";
  v77 = sub_1CA94C438("NSURL (Class)", 13);
  v129 = v78;
  v130 = v77;
  v79 = sub_1CA94C438("NSURL", 5);
  v128 = v80;
  v131 = &v128;
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v128 - v146;
  sub_1CA948D98();
  v82 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v82);
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v84 = sub_1CA2F9F14(v130, v129, v79, v128, 0, 0, v81, &v128 - v74);
  *(v62 + 184) = v76;
  *(v62 + 160) = v84;
  _s3__C3KeyVMa_0(0);
  v131 = v85;
  v130 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v86 = sub_1CA94C1E8();
  v87 = sub_1CA2F864C(v86);
  *(v139 + 32) = v87;
  v88 = swift_allocObject();
  *(v88 + 16) = v142;
  *(v88 + 32) = v135;
  *(v88 + 40) = 0xD000000000000019;
  *(v88 + 48) = 0x80000001CA99B030;
  v89 = MEMORY[0x1E69E6158];
  v90 = v134;
  *(v88 + 64) = MEMORY[0x1E69E6158];
  *(v88 + 72) = v90;
  *(v88 + 80) = 0x7475706E49;
  *(v88 + 88) = 0xE500000000000000;
  v91 = v133;
  *(v88 + 104) = v89;
  *(v88 + 112) = v91;
  v92 = sub_1CA94C438("Input (Input)", 13);
  v135 = v93;
  v136 = v92;
  v134 = sub_1CA94C438("Input", 5);
  v95 = v94;
  *&v142 = &v128;
  MEMORY[0x1EEE9AC00](v134);
  v96 = v146;
  sub_1CA948D98();
  v97 = v145;
  v98 = [v145 bundleURL];
  v133 = &v128;
  MEMORY[0x1EEE9AC00](v98);
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v88 + 120) = sub_1CA2F9F14(v136, v135, v134, v95, 0, 0, &v128 - v96, &v128 - v74);
  v100 = v140;
  v101 = v132;
  *(v88 + 144) = v140;
  *(v88 + 152) = v101;
  v102 = sub_1CA94C438("Input (Input)", 13);
  v135 = v103;
  v136 = v102;
  v134 = sub_1CA94C438("Input", 5);
  v105 = v104;
  *&v142 = &v128;
  MEMORY[0x1EEE9AC00](v134);
  sub_1CA948D98();
  v106 = [v97 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  sub_1CA948B68();

  v107 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v108 = sub_1CA2F9F14(v136, v135, v134, v105, 0, 0, &v128 - v96, &v128 - v74);
  *(v88 + 184) = v100;
  *(v88 + 160) = v108;
  v109 = sub_1CA94C1E8();
  v110 = sub_1CA2F864C(v109);
  v111 = v139;
  *(v139 + 40) = v110;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v113 = v143;
  v143[45] = v111;
  v113[48] = v112;
  v113[49] = @"ParameterSummary";
  v114 = @"ParameterSummary";
  v115 = sub_1CA94C438("Get object of class ${Class} from ${Input} (Parameter Summary)", 62);
  v117 = v116;
  v118 = sub_1CA94C438("Get object of class ${Class} from ${Input}", 42);
  v120 = v119;
  *&v142 = &v128;
  MEMORY[0x1EEE9AC00](v118);
  v121 = &v128 - v146;
  sub_1CA948D98();
  v122 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v122);
  v123 = &v128 - v141;
  sub_1CA948B68();

  v124 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v125 = sub_1CA2F9F14(v115, v117, v118, v120, 0, 0, v121, v123);
  v126 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v113[53] = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v113[50] = v126;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}
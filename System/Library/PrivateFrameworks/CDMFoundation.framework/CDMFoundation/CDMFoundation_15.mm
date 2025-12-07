uint64_t sub_1DC3E92E4(char *a1, unint64_t a2, unint64_t a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D600, &unk_1DC528A30);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v91 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v90 = &v89 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v89 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v95 = &v89 - v16;
  v17 = sub_1DC516C7C();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v97 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v94 = &v89 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v101 = &v89 - v23;
  result = MEMORY[0x1EEE9AC00](v22);
  v100 = &v89 - v26;
  v28 = *(v27 + 72);
  if (!v28)
  {
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    return result;
  }

  v29 = a2 - a1 == 0x8000000000000000 && v28 == -1;
  if (v29)
  {
    goto LABEL_85;
  }

  v30 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v28 == -1)
  {
    goto LABEL_86;
  }

  v96 = a3;
  v32 = (a2 - a1) / v28;
  v104 = a1;
  v103 = a4;
  v98 = (v25 + 8);
  v99 = (v25 + 16);
  v33 = v30 / v28;
  if (v32 >= v30 / v28)
  {
    sub_1DC3E7A58(a2, v30 / v28, a4);
    v58 = v28;
    v59 = &a4[v33 * v28];
    v60 = -v58;
    v61 = v59;
    v62 = v96;
    v101 = -v58;
LABEL_49:
    v100 = a2;
    v95 = v61;
    v96 = a2 + v60;
    v63 = v62;
    v64 = v61;
    v65 = v61;
    while (1)
    {
      if (v59 <= a4)
      {
        v104 = v100;
        v102 = v64;
        goto LABEL_83;
      }

      if (v100 <= a1)
      {
        break;
      }

      v93 = v64;
      v66 = a4;
      v67 = v59 + v60;
      v68 = *v99;
      (*v99)(v94, v67, v17);
      v68(v97, v96, v17);
      v69 = sub_1DC516C6C();
      v70 = *(v69 + 16);
      v71 = sub_1DC516B8C();
      v72 = v71;
      if (v70)
      {
        v73 = v90;
        (*(*(v71 - 8) + 16))(v90, v69 + ((*(*(v71 - 8) + 80) + 32) & ~*(*(v71 - 8) + 80)), v71);
        v74 = 0;
      }

      else
      {
        v74 = 1;
        v73 = v90;
      }

      __swift_storeEnumTagSinglePayload(v73, v74, 1, v72);

      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v73, 1, v72);
      v76 = v73;
      a4 = v66;
      if (EnumTagSinglePayload == 1)
      {
        sub_1DC2BE530(v76, &qword_1ECC7D600, &unk_1DC528A30);
        v77 = 0.0;
      }

      else
      {
        sub_1DC516B1C();
        v77 = v78;
        (*(*(v72 - 8) + 8))(v76, v72);
      }

      v79 = v91;
      v80 = sub_1DC516C6C();
      if (*(v80 + 16))
      {
        (*(*(v72 - 8) + 16))(v79, v80 + ((*(*(v72 - 8) + 80) + 32) & ~*(*(v72 - 8) + 80)), v72);
        v81 = 0;
      }

      else
      {
        v81 = 1;
      }

      __swift_storeEnumTagSinglePayload(v79, v81, 1, v72);

      if (__swift_getEnumTagSinglePayload(v79, 1, v72) == 1)
      {
        sub_1DC2BE530(v79, &qword_1ECC7D600, &unk_1DC528A30);
        v82 = 0.0;
      }

      else
      {
        sub_1DC516B1C();
        v82 = v83;
        (*(*(v72 - 8) + 8))(v79, v72);
      }

      v62 = &v101[v63];
      v84 = *v98;
      (*v98)(v97, v17);
      v84(v94, v17);
      if (v82 < v77)
      {
        if (v63 < v100 || v62 >= v100)
        {
          a2 = v96;
          swift_arrayInitWithTakeFrontToBack();
          v61 = v93;
          v60 = v101;
        }

        else
        {
          v61 = v93;
          v87 = v96;
          a2 = v96;
          v60 = v101;
          if (v63 != v100)
          {
            v88 = v93;
            swift_arrayInitWithTakeBackToFront();
            a2 = v87;
            v61 = v88;
          }
        }

        goto LABEL_49;
      }

      if (v63 < v59 || v62 >= v59)
      {
        swift_arrayInitWithTakeFrontToBack();
        v63 = v62;
        v59 = v67;
        v64 = v67;
        v60 = v101;
        v65 = v95;
      }

      else
      {
        v64 = v67;
        v29 = v59 == v63;
        v63 = v62;
        v59 = v67;
        v60 = v101;
        v65 = v95;
        if (!v29)
        {
          swift_arrayInitWithTakeBackToFront();
          v63 = v62;
          v59 = v67;
          v64 = v67;
        }
      }
    }

    v104 = v100;
    v102 = v65;
  }

  else
  {
    sub_1DC3E7A58(a1, (a2 - a1) / v28, a4);
    v97 = &a4[v32 * v28];
    v102 = v97;
    v34 = v96;
    v92 = v15;
    v93 = v28;
    while (a4 < v97 && a2 < v34)
    {
      v36 = *v99;
      v37 = a2;
      (*v99)(v100, a2, v17);
      v38 = a4;
      v39 = v17;
      v36(v101, a4, v17);
      v40 = sub_1DC516C6C();
      v41 = *(v40 + 16);
      v42 = sub_1DC516B8C();
      v43 = v42;
      if (v41)
      {
        v44 = v95;
        (*(*(v42 - 8) + 16))(v95, v40 + ((*(*(v42 - 8) + 80) + 32) & ~*(*(v42 - 8) + 80)), v42);
        v45 = 0;
      }

      else
      {
        v45 = 1;
        v44 = v95;
      }

      __swift_storeEnumTagSinglePayload(v44, v45, 1, v43);

      a4 = v38;
      if (__swift_getEnumTagSinglePayload(v44, 1, v43) == 1)
      {
        sub_1DC2BE530(v44, &qword_1ECC7D600, &unk_1DC528A30);
        v46 = 0.0;
      }

      else
      {
        sub_1DC516B1C();
        v46 = v47;
        (*(*(v43 - 8) + 8))(v44, v43);
      }

      a2 = v37;
      v17 = v39;
      v48 = v92;
      v49 = sub_1DC516C6C();
      if (*(v49 + 16))
      {
        (*(*(v43 - 8) + 16))(v48, v49 + ((*(*(v43 - 8) + 80) + 32) & ~*(*(v43 - 8) + 80)), v43);
        v50 = 0;
      }

      else
      {
        v50 = 1;
      }

      __swift_storeEnumTagSinglePayload(v48, v50, 1, v43);

      if (__swift_getEnumTagSinglePayload(v48, 1, v43) == 1)
      {
        sub_1DC2BE530(v48, &qword_1ECC7D600, &unk_1DC528A30);
        v51 = 0.0;
      }

      else
      {
        sub_1DC516B1C();
        v51 = v52;
        (*(*(v43 - 8) + 8))(v48, v43);
      }

      v34 = v96;
      v53 = *v98;
      (*v98)(v101, v39);
      v53(v100, v39);
      if (v51 >= v46)
      {
        v54 = v93;
        v56 = &a4[v93];
        if (a1 < a4 || a1 >= v56)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v103 = v56;
        a4 += v54;
      }

      else
      {
        v54 = v93;
        if (a1 < a2 || a1 >= a2 + v93)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v54;
      }

      a1 += v54;
      v104 = a1;
    }
  }

LABEL_83:
  sub_1DC3E9CA0(&v104, &v103, &v102);
  return 1;
}

uint64_t sub_1DC3E9CA0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1DC516C7C();
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

uint64_t sub_1DC3E9D80()
{
  v1 = sub_1DC516C7C();
  v26 = *(v1 - 8);
  v2 = MEMORY[0x1EEE9AC00](v1);
  v29 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v2);
  v30 = &v22 - v5;
  v25 = v0;
  v6 = *v0;
  v7 = *(*v0 + 16);
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    v9 = 0;
    v22 = v7 - 2;
    v23 = (v26 + 40);
    v24 = v26 + 16;
    while (1)
    {
      v31 = 0;
      result = MEMORY[0x1E1298860](&v31, 8);
      v10 = (v31 * v7) >> 64;
      if (v7 > v31 * v7)
      {
        v11 = -v7 % v7;
        if (v11 > v31 * v7)
        {
          do
          {
            v31 = 0;
            result = MEMORY[0x1E1298860](&v31, 8);
          }

          while (v11 > v31 * v7);
          v10 = (v31 * v7) >> 64;
        }
      }

      v12 = v9 + v10;
      if (__OFADD__(v9, v10))
      {
        break;
      }

      if (v9 != v12)
      {
        v13 = *(v6 + 16);
        if (v9 >= v13)
        {
          goto LABEL_20;
        }

        v14 = v1;
        v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
        v15 = v6 + v28;
        v16 = *(v26 + 72);
        v17 = *(v26 + 16);
        v27 = v16 * v9;
        result = v17(v30, v6 + v28 + v16 * v9, v14);
        if (v12 >= v13)
        {
          goto LABEL_21;
        }

        v18 = v16 * v12;
        v17(v29, v15 + v16 * v12, v14);
        result = swift_isUniquelyReferenced_nonNull_native();
        v1 = v14;
        if ((result & 1) == 0)
        {
          result = sub_1DC3EA0C4(v6);
          v6 = result;
        }

        if (v9 >= *(v6 + 16))
        {
          goto LABEL_22;
        }

        v19 = v6 + v28;
        v20 = *v23;
        result = (*v23)(v6 + v28 + v27, v29, v14);
        if (v12 >= *(v6 + 16))
        {
          goto LABEL_23;
        }

        result = v20(v19 + v18, v30, v14);
        *v25 = v6;
        v8 = v22;
      }

      --v7;
      if (v9++ == v8)
      {
        return result;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  return result;
}

unint64_t sub_1DC3EA01C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_1DC516C7C();
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1DC3EA0D8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return sub_1DC517ECC();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1DC3EA158(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1DC3EA168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D5E8;
  if (!qword_1ECC7D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D5E8);
  }

  return result;
}

unint64_t sub_1DC3EA1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D5F0;
  if (!qword_1ECC7D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D5F0);
  }

  return result;
}

_BYTE *sub_1DC3EA220(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DC3EA2F8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1DC3EA3E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_41_0(-1);
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_41_0(*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 > 3)
  {
    return OUTLINED_FUNCTION_41_0(v3 ^ 0xFF);
  }

  else
  {
    return OUTLINED_FUNCTION_41_0(-1);
  }
}

uint64_t sub_1DC3EA420(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1DC3EA464(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_1DC3EA47C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1DC3EA4C4(uint64_t a1, uint64_t a2)
{
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v4 = sub_1DC332B08();
  v5 = sub_1DC3E77A4(v4);
  if (v5 == 3)
  {
    v6 = 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = sub_1DC332BF0();
  v8 = sub_1DC3238E4(v7) & 1;

  return sub_1DC3EA54C(a1, v6, v8, a2);
}

uint64_t sub_1DC3EA54C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return a2;
  }

  v4 = a1;
  if (a2 == 1)
  {
    if (*(a1 + 1) == 1)
    {
      sub_1DC428688(15);
      v6 = a1;
      v7 = a2;
    }

    else
    {
      v6 = 0;
      v7 = 0xE000000000000000;
    }

    switch(*v4)
    {
      case 1u:
        goto LABEL_13;
      case 2u:
        sub_1DC30D6EC(a1, a2, a3);
        OUTLINED_FUNCTION_41();
        v35 = sub_1DC51823C();
        v36 = v20;
        OUTLINED_FUNCTION_41();
        v21 = sub_1DC51823C();
        MEMORY[0x1E1296160](v21);

        goto LABEL_14;
      case 3u:
        a1 = (*(*a4 + 96))(5);
        if (a1)
        {

          sub_1DC30D6EC(v22, v23, v24);
          v35 = sub_1DC51823C();
          v36 = v25;
          v26 = sub_1DC51823C();
        }

        else
        {
LABEL_13:
          sub_1DC30D6EC(a1, a2, a3);
          v35 = sub_1DC51823C();
          v36 = v28;
LABEL_14:
          v26 = v6;
          v27 = v7;
        }

        MEMORY[0x1E1296160](v26, v27);

        v18 = v35;
        v19 = v36;
LABEL_16:
        sub_1DC3EA85C();
        if (v30)
        {
          v31 = v29;
        }

        else
        {
          v31 = 0;
        }

        if (v30)
        {
          v32 = v30;
        }

        else
        {
          v32 = 0xE000000000000000;
        }

        MEMORY[0x1E1296160](v31, v32);

        result = v18;
        v33 = HIBYTE(v19) & 0xF;
        if ((v19 & 0x2000000000000000) == 0)
        {
          v33 = v18 & 0xFFFFFFFFFFFFLL;
        }

        if (!v33)
        {

          result = OUTLINED_FUNCTION_75_6();
        }

        break;
      default:

        v18 = 0;
        v19 = 0xE000000000000000;
        goto LABEL_16;
    }
  }

  else
  {
    v9 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C218, &qword_1DC528A90);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1DC522F00;
    *(v10 + 32) = v4[1];
    v11 = *v4;
    *(v10 + 33) = v11 == 2;
    *(v10 + 34) = v11 == 1;
    v12 = sub_1DC32370C(v10, v9 & 1);
    v14 = v13;

    sub_1DC30D6EC(v15, v16, v17);
    v34 = sub_1DC51823C();
    MEMORY[0x1E1296160](32, 0xE100000000000000);
    MEMORY[0x1E1296160](v12, v14);

    return v34;
  }

  return result;
}

void sub_1DC3EA85C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEC0, &unk_1DC5221E0);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - v4;
  type metadata accessor for QDContextState(0);
  OUTLINED_FUNCTION_62_3();
  sub_1DC2DB2AC();
  v6 = sub_1DC51724C();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1DC28EB30(v5, &qword_1ECC7BEC0, &unk_1DC5221E0);
  }

  else
  {
    v22 = sub_1DC51723C();
    v8 = v7;
    OUTLINED_FUNCTION_7_1();
    (*(v9 + 8))(v5, v6);
    if (qword_1ECC8A490 != -1)
    {
      goto LABEL_16;
    }

    while (1)
    {
      v10 = qword_1ECC8FA00;
      v11 = *(qword_1ECC8FA00 + 16);
      if (!v11)
      {
        break;
      }

      v12 = 0;
      v13 = *(*v1 + 96);
      v14 = (qword_1ECC8FA00 + 40);
      while (v12 < *(v10 + 16))
      {
        v15 = *v14;
        v16 = *(v14 - 8);

        if (v13(v16))
        {
          if (*(v15 + 16))
          {
            v17 = sub_1DC2AEB04(v22, v8);
            if (v18)
            {
              v19 = v17;

              v20 = *(*(v15 + 56) + v19);

              sub_1DC428688(v20);
              goto LABEL_13;
            }
          }
        }

        ++v12;
        v14 += 2;
        if (v11 == v12)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_16:
      OUTLINED_FUNCTION_35_16(&qword_1ECC8A490);
    }

LABEL_11:
  }

  OUTLINED_FUNCTION_75_6();
LABEL_13:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3EABB4()
{
  result = sub_1DC33347C(&unk_1F57FBA58);
  qword_1ECC8F9E8 = result;
  return result;
}

uint64_t sub_1DC3EABDC()
{
  result = sub_1DC33347C(&unk_1F57FBA88);
  qword_1ECC8F9F0 = result;
  return result;
}

uint64_t sub_1DC3EAC04()
{
  result = sub_1DC33347C(&unk_1F57FBB28);
  qword_1ECC8F9F8 = result;
  return result;
}

uint64_t sub_1DC3EAC2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D6C8, &qword_1DC529348);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DC522F10;
  *(v0 + 32) = 6;
  *(v0 + 40) = sub_1DC51764C();
  *(v0 + 48) = 7;
  result = sub_1DC51764C();
  *(v0 + 56) = result;
  qword_1ECC8FA00 = v0;
  return result;
}

uint64_t sub_1DC3EACF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DC522F20;
  *(inited + 32) = sub_1DC51772C();
  *(inited + 40) = v1;
  result = sub_1DC33347C(inited);
  qword_1EDAC9580 = result;
  return result;
}

uint64_t sub_1DC3EAD64@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for NLRouterServiceRequest(0) + 36));
  if (v3)
  {
    v4 = v3;
    if (sub_1DC516D8C())
    {
      v5 = sub_1DC517B8C();
      sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
      v6 = sub_1DC296DBC();
      sub_1DC516F0C(v5, &dword_1DC287000, v6, "QDCONTEXT: Generating QDContextState from NLRouterServiceRequest", 64, 2, MEMORY[0x1E69E7CC0]);

      sub_1DC3EAF64();
      LOBYTE(v6) = v7;
      sub_1DC3EC3F4();
      LOBYTE(v5) = v8;
      v9 = type metadata accessor for QDContextState(0);
      sub_1DC3EC508();

      *a1 = v6;
      a1[1] = v5 & 1;
      v10 = a1;
      v11 = 0;
      v12 = v9;
      goto LABEL_7;
    }

    v15 = sub_1DC517B8C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v16 = sub_1DC296DBC();
    sub_1DC516F0C(v15, &dword_1DC287000, v16, "QDCONTEXT: Could not generate QDContextState - no context", 57, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v13 = sub_1DC517B8C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v14 = sub_1DC296DBC();
    sub_1DC516F0C(v13, &dword_1DC287000, v14, "QDCONTEXT: Could not generate QDContextState - queryDecoration is nil", 69, 2, MEMORY[0x1E69E7CC0]);
  }

  v12 = type metadata accessor for QDContextState(0);
  v10 = a1;
  v11 = 1;
LABEL_7:

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

void sub_1DC3EAF64()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D6B8, &qword_1DC529330);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_25();
  v239 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D6C0, &unk_1DC529338);
  OUTLINED_FUNCTION_10(v5);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25();
  v240 = v7;
  OUTLINED_FUNCTION_12();
  v242 = sub_1DC516C9C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v243 = sub_1DC51724C();
  OUTLINED_FUNCTION_0();
  v241 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  v244 = v22;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_15();
  v249 = v24;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_62();
  v252 = v26;
  OUTLINED_FUNCTION_12();
  v248 = sub_1DC51728C();
  OUTLINED_FUNCTION_0();
  v246 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_62();
  v247 = v30;
  OUTLINED_FUNCTION_12();
  v31 = sub_1DC516AFC();
  OUTLINED_FUNCTION_0();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_15();
  v260 = v35;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v235 - v37;
  v39 = sub_1DC516C3C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_15();
  v251 = v41;
  OUTLINED_FUNCTION_22();
  v43 = MEMORY[0x1EEE9AC00](v42);
  v45 = &v235 - v44;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_62();
  v253 = v46;
  v47 = 0;
  v48 = *(v1 + 16);
  v261 = v1;
  v262 = v48;
  v263 = v49 + 16;
  v257 = *MEMORY[0x1E69A9008];
  v259 = (v33 + 8);
  v264 = v49;
  v255 = (v49 + 8);
  v256 = (v33 + 104);
  v238 = v9;
  v237 = v13;
  v258 = v45;
  while (1)
  {
    if (v262 == v47)
    {
      v64 = sub_1DC517B8C();
      sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
      v65 = sub_1DC296DBC();
      sub_1DC516F0C(v64, &dword_1DC287000, v65, "QDCONTEXT: Not in app, no .appInFocusBundleId context signal", 60, 2, MEMORY[0x1E69E7CC0]);

      goto LABEL_26;
    }

    OUTLINED_FUNCTION_52_13();
    v51 = v50;
    v254 = *(v54 + 16);
    v254(v45, v52 + v53 * v50, v39);
    sub_1DC516C2C();
    v55 = v260;
    (*v256)(v260, v257, v31);
    OUTLINED_FUNCTION_30_17();
    sub_1DC3EED9C(&qword_1ECC7BAE0, v56, MEMORY[0x1E69A90A0]);
    sub_1DC5179EC();
    sub_1DC5179EC();
    v57 = v267[0] == v265 && v267[1] == v266;
    if (v57)
    {
      break;
    }

    v58 = sub_1DC51825C();
    v59 = v55;
    v60 = v39;
    v61 = *v259;
    (*v259)(v59, v31);
    v61(v38, v31);
    v39 = v60;

    if (v58)
    {
      goto LABEL_11;
    }

    v45 = v258;
    v62 = OUTLINED_FUNCTION_54_4();
    v63(v62);
    v47 = (v51 + 1);
  }

  v66 = *v259;
  v67 = OUTLINED_FUNCTION_159();
  (v66)(v67);
  v66(v38, v31);

LABEL_11:
  v68 = v253;
  (*(v264 + 32))(v253, v258, v39);
  v69 = v252;
  sub_1DC516C1C();
  sub_1DC5172AC();
  OUTLINED_FUNCTION_14_2(v69);
  if (v57)
  {
    sub_1DC28EB30(v69, &qword_1ECC7BFF8, &qword_1DC522580);
  }

  else
  {
    OUTLINED_FUNCTION_2_3();
    v70 = OUTLINED_FUNCTION_62_2();
    v72 = v71(v70);
    if (v72 == *MEMORY[0x1E69DAE70])
    {
      v73 = OUTLINED_FUNCTION_62_2();
      v74(v73);
      v75 = swift_projectBox();
      v76 = v246;
      v77 = *(v246 + 16);
      v78 = v247;
      v79 = v248;
      v77(v247, v75, v248);

      v80 = v245;
      v81 = OUTLINED_FUNCTION_41();
      (v77)(v81);
      v82 = OUTLINED_FUNCTION_149();
      if (v83(v82) == *MEMORY[0x1E69DADA8])
      {
        v84 = OUTLINED_FUNCTION_149();
        v85(v84);
        v86 = v241;
        v87 = v244;
        v88 = v243;
        (*(v241 + 32))(v244, v80, v243);
        if (_MergedGlobals_16 != -1)
        {
          OUTLINED_FUNCTION_41_9(&_MergedGlobals_16);
        }

        v89 = qword_1ECC8F9E8;
        v90 = sub_1DC51723C();
        LOBYTE(v89) = sub_1DC332FF4(v90, v91, v89);

        v92 = v242;
        if (v89)
        {
          v93 = sub_1DC517B8C();
          v94 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
          sub_1DC296DBC();
          OUTLINED_FUNCTION_26_16();
          v95 = OUTLINED_FUNCTION_37_11();
          v96(v95);
          if (OUTLINED_FUNCTION_68_7())
          {
            OUTLINED_FUNCTION_63();
            v97 = OUTLINED_FUNCTION_117();
            OUTLINED_FUNCTION_25_14(v97);
            *v76 = 136315138;
            sub_1DC51723C();
            v98 = OUTLINED_FUNCTION_18_21();
            v87(v98);
            v99 = OUTLINED_FUNCTION_41();
            sub_1DC291244(v99, v100, v101);
            OUTLINED_FUNCTION_155_0();

            *(v76 + 4) = v94;
            OUTLINED_FUNCTION_15_16(&dword_1DC287000, v102, v103, "QDCONTEXT: BundleId %s marked as not in app");
            OUTLINED_FUNCTION_16_13();
            OUTLINED_FUNCTION_58();

            v104 = OUTLINED_FUNCTION_22_15();
            v87(v104);
            v105 = OUTLINED_FUNCTION_6_25();
LABEL_40:
            v106(v105);
            v156 = OUTLINED_FUNCTION_20_16();
            v157(v156);
            goto LABEL_26;
          }

          goto LABEL_39;
        }

        if (qword_1EDAC9570 != -1)
        {
          OUTLINED_FUNCTION_38_12(&qword_1EDAC9570);
        }

        v123 = qword_1ECC8F9F8;
        v124 = sub_1DC51723C();
        LOBYTE(v123) = sub_1DC332FF4(v124, v125, v123);

        if (v123)
        {
          v93 = sub_1DC517B8C();
          v126 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
          sub_1DC296DBC();
          OUTLINED_FUNCTION_26_16();
          v127 = OUTLINED_FUNCTION_37_11();
          v128(v127);
          if (OUTLINED_FUNCTION_68_7())
          {
            OUTLINED_FUNCTION_63();
            v129 = OUTLINED_FUNCTION_117();
            OUTLINED_FUNCTION_25_14(v129);
            *v76 = 136315138;
            sub_1DC51723C();
            v130 = OUTLINED_FUNCTION_18_21();
            v87(v130);
            v131 = OUTLINED_FUNCTION_41();
            sub_1DC291244(v131, v132, v133);
            OUTLINED_FUNCTION_155_0();

            *(v76 + 4) = v126;
            OUTLINED_FUNCTION_15_16(&dword_1DC287000, v134, v135, "QDCONTEXT: BundleId %s marked as mail app");
            OUTLINED_FUNCTION_16_13();
            OUTLINED_FUNCTION_58();

            v136 = OUTLINED_FUNCTION_22_15();
            v87(v136);
            v105 = OUTLINED_FUNCTION_6_25();
            goto LABEL_40;
          }

LABEL_39:

          v154 = OUTLINED_FUNCTION_17_15();
          v93(v154);
          v155 = OUTLINED_FUNCTION_159();
          v93(v155);
          v105 = OUTLINED_FUNCTION_21_15();
          goto LABEL_40;
        }

        if (qword_1EDAC9568 != -1)
        {
          OUTLINED_FUNCTION_39_11(&qword_1EDAC9568);
        }

        v137 = qword_1ECC8F9F0;
        v138 = sub_1DC51723C();
        LOBYTE(v137) = sub_1DC332FF4(v138, v139, v137);

        if (v137)
        {
          v140 = sub_1DC517B8C();
          v141 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
          sub_1DC296DBC();
          OUTLINED_FUNCTION_26_16();
          v142 = OUTLINED_FUNCTION_37_11();
          v143(v142);
          if (OUTLINED_FUNCTION_68_7())
          {
            OUTLINED_FUNCTION_63();
            v144 = OUTLINED_FUNCTION_117();
            OUTLINED_FUNCTION_25_14(v144);
            *v76 = 136315138;
            sub_1DC51723C();
            v145 = OUTLINED_FUNCTION_18_21();
            v87(v145);
            v146 = OUTLINED_FUNCTION_41();
            sub_1DC291244(v146, v147, v148);
            OUTLINED_FUNCTION_155_0();

            *(v76 + 4) = v141;
            OUTLINED_FUNCTION_15_16(&dword_1DC287000, v149, v150, "QDCONTEXT: BundleId %s marked as media rich app");
            OUTLINED_FUNCTION_16_13();
            OUTLINED_FUNCTION_58();

            v151 = OUTLINED_FUNCTION_22_15();
            v87(v151);
LABEL_38:
            v152 = OUTLINED_FUNCTION_6_25();
            v153(v152);
LABEL_45:
            v164 = OUTLINED_FUNCTION_20_16();
            v165(v164);
            goto LABEL_26;
          }

LABEL_44:

          v160 = OUTLINED_FUNCTION_17_15();
          v140(v160);
          v161 = OUTLINED_FUNCTION_159();
          v140(v161);
          v162 = OUTLINED_FUNCTION_21_15();
          v163(v162);
          goto LABEL_45;
        }

        v158 = v239;
        sub_1DC516C0C();
        v77 = sub_1DC516CCC();
        OUTLINED_FUNCTION_2_6(v158);
        if (v57)
        {
          sub_1DC28EB30(v158, &qword_1ECC7D6B8, &qword_1DC529330);
          v159 = sub_1DC516CAC();
          v166 = v240;
          __swift_storeEnumTagSinglePayload(v240, 1, 1, v159);
        }

        else
        {
          v166 = v240;
          sub_1DC516CBC();
          OUTLINED_FUNCTION_7_1();
          (*(v167 + 8))(v158, v77);
          v168 = sub_1DC516CAC();
          OUTLINED_FUNCTION_14_2(v166);
          if (!v169)
          {
            OUTLINED_FUNCTION_2_3();
            v181 = OUTLINED_FUNCTION_72();
            v183 = v182(v181);
            if (v183 == *MEMORY[0x1E69A9110])
            {
              v184 = OUTLINED_FUNCTION_72();
              v185(v184);
              v186 = v238;
              v187 = OUTLINED_FUNCTION_37_11();
              v188(v187);
              v189 = sub_1DC516C8C();
              if (v190)
              {
                v191 = v189;
                v192 = v190;
                if (qword_1EDAC9578 != -1)
                {
                  swift_once();
                }

                if (sub_1DC332FF4(v191, v192, qword_1EDAC9580))
                {
                  v193 = sub_1DC517B8C();
                  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
                  v194 = sub_1DC296DBC();
                  v195 = v236;
                  (*(v86 + 16))(v236, v244, v88);
                  if (os_log_type_enabled(v194, v193))
                  {
                    v196 = swift_slowAlloc();
                    LODWORD(v263) = v193;
                    v197 = v88;
                    v198 = v86;
                    v199 = v196;
                    v264 = swift_slowAlloc();
                    v267[0] = v264;
                    *v199 = 136315394;
                    v200 = sub_1DC51723C();
                    v262 = v194;
                    v201 = v200;
                    v203 = v202;
                    v204 = *(v198 + 8);
                    v204(v195, v197);
                    v205 = sub_1DC291244(v201, v203, v267);

                    *(v199 + 4) = v205;
                    *(v199 + 12) = 2080;
                    v206 = sub_1DC291244(v191, v192, v267);

                    *(v199 + 14) = v206;
                    v207 = v262;
                    _os_log_impl(&dword_1DC287000, v262, v263, "QDCONTEXT: BundleId %s identified as media rich app (category=%s", v199, 0x16u);
                    v208 = v264;
                    swift_arrayDestroy();
                    MEMORY[0x1E1298840](v208, -1, -1);
                    MEMORY[0x1E1298840](v199, -1, -1);

                    v209 = OUTLINED_FUNCTION_12_22();
                    v210(v209, v242);
                    v204(v244, v197);
                    v211 = OUTLINED_FUNCTION_6_25();
                    v212(v211);
                    (*v255)(v253, v39);
                    goto LABEL_26;
                  }

                  v228 = OUTLINED_FUNCTION_17_15();
                  (v194)(v228);
                  v229 = OUTLINED_FUNCTION_12_22();
                  v230(v229, v92);
                  (v194)(v244, v88);
                  goto LABEL_38;
                }

                v215 = sub_1DC517B9C();
                v216 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
                sub_1DC296DBC();
                OUTLINED_FUNCTION_26_16();
                v217 = OUTLINED_FUNCTION_55_13();
                v218(v217);
                if (!OUTLINED_FUNCTION_68_7())
                {

                  v231 = OUTLINED_FUNCTION_17_15();
                  v215(v231);
                  v232 = OUTLINED_FUNCTION_12_22();
                  v233(v232, v92);
                  v234 = OUTLINED_FUNCTION_159();
                  v215(v234);
                  goto LABEL_38;
                }

                OUTLINED_FUNCTION_63();
                v219 = OUTLINED_FUNCTION_117();
                OUTLINED_FUNCTION_25_14(v219);
                *v191 = 136315138;
                sub_1DC51723C();
                v220 = OUTLINED_FUNCTION_49_12();
                v92(v220);
                v221 = OUTLINED_FUNCTION_159();
                sub_1DC291244(v221, v222, v223);
                OUTLINED_FUNCTION_155_0();

                *(v191 + 4) = v216;
                OUTLINED_FUNCTION_15_16(&dword_1DC287000, v224, v225, "QDCONTEXT: BundleId %s identified as 'in app'");
                OUTLINED_FUNCTION_16_13();
                OUTLINED_FUNCTION_58();

                v226 = OUTLINED_FUNCTION_12_22();
                v227(v226, v242);
                goto LABEL_51;
              }

              (*(v186 + 8))(v168, v92);
              v76 = v246;
            }

            else
            {
              v213 = OUTLINED_FUNCTION_72();
              v214(v213);
            }

LABEL_49:
            v140 = sub_1DC517B9C();
            v170 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
            sub_1DC296DBC();
            OUTLINED_FUNCTION_26_16();
            v171 = OUTLINED_FUNCTION_55_13();
            v172(v171);
            if (!OUTLINED_FUNCTION_68_7())
            {
              goto LABEL_44;
            }

            OUTLINED_FUNCTION_63();
            v173 = OUTLINED_FUNCTION_117();
            OUTLINED_FUNCTION_25_14(v173);
            *v76 = 136315138;
            sub_1DC51723C();
            v174 = OUTLINED_FUNCTION_49_12();
            v92(v174);
            v175 = OUTLINED_FUNCTION_159();
            sub_1DC291244(v175, v176, v177);
            OUTLINED_FUNCTION_155_0();

            *(v76 + 4) = v170;
            OUTLINED_FUNCTION_15_16(&dword_1DC287000, v178, v179, "QDCONTEXT: BundleId %s identified as 'in app', category information not available");
            OUTLINED_FUNCTION_16_13();
            OUTLINED_FUNCTION_58();

LABEL_51:
            v180 = OUTLINED_FUNCTION_22_15();
            v92(v180);
            goto LABEL_38;
          }
        }

        sub_1DC28EB30(v166, &qword_1ECC7D6C0, &unk_1DC529338);
        goto LABEL_49;
      }

      v109 = *(v76 + 8);
      v51 = v76 + 8;
      v109(v78, v79);
      v110 = OUTLINED_FUNCTION_149();
      (v109)(v110);
    }

    else
    {
      v107 = OUTLINED_FUNCTION_62_2();
      v108(v107);
    }
  }

  v111 = v251;
  v112 = v254;
  v113 = sub_1DC517B8C();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v114 = sub_1DC296DBC();
  v112(v111, v68, v39);
  if (os_log_type_enabled(v114, v113))
  {
    OUTLINED_FUNCTION_63();
    v267[0] = OUTLINED_FUNCTION_117();
    *v51 = 136315138;
    v115 = v111;
    sub_1DC516C1C();
    sub_1DC51777C();
    v116 = OUTLINED_FUNCTION_155_0();
    v118 = v117;
    v119 = *v255;
    (*v255)(v116, v39);
    sub_1DC291244(v115, v118, v267);
    OUTLINED_FUNCTION_155_0();

    *(v51 + 4) = v115;
    _os_log_impl(&dword_1DC287000, v114, v113, "QDCONTEXT: Not in app, unexpected appInFocusBundleId.typedValue (%s", v51, 0xCu);
    OUTLINED_FUNCTION_16_13();
    OUTLINED_FUNCTION_58();

    v120 = OUTLINED_FUNCTION_54_4();
    (v119)(v120);
  }

  else
  {

    v121 = *v255;
    (*v255)(v111, v39);
    v122 = OUTLINED_FUNCTION_54_4();
    (v121)(v122);
  }

LABEL_26:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3EC3F4()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v2 = sub_1DC516C3C();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = 0;
  v10 = *(v1 + 16);
  do
  {
    if (v10 == v9)
    {
      break;
    }

    (*(v4 + 16))(v8, v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v9++, v2);
    sub_1DC3ECB6C();
    v12 = v11;
    v13 = OUTLINED_FUNCTION_72();
    v14(v13);
  }

  while ((v12 & 1) == 0);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3EC508()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v78 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_25();
  v77 = v5;
  OUTLINED_FUNCTION_12();
  v74 = sub_1DC51728C();
  OUTLINED_FUNCTION_0();
  v72 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v73 = v8;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v71 = v10;
  OUTLINED_FUNCTION_12();
  v11 = sub_1DC516AFC();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v70 - v19;
  v21 = sub_1DC516C3C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_8();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_23_1();
  v75 = v27;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_62();
  v76 = v29;
  v30 = 0;
  v31 = *(v1 + 16);
  v85 = v1;
  v86 = v31;
  v82 = v32 + 16;
  v81 = *MEMORY[0x1E69A9008];
  v79 = v33;
  v80 = (v13 + 104);
  v87 = v32;
  v83 = (v13 + 8);
  v84 = v32 + 8;
  while (1)
  {
    if (v86 == v30)
    {
      v42 = sub_1DC51724C();
      v43 = v78;
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_52_13();
    (*(v36 + 16))(v25, v34 + v35 * v30, v21);
    sub_1DC516C2C();
    (*v80)(v17, v81, v11);
    OUTLINED_FUNCTION_30_17();
    sub_1DC3EED9C(&qword_1ECC7BAE0, v37, MEMORY[0x1E69A90A0]);
    OUTLINED_FUNCTION_212();
    sub_1DC5179EC();
    OUTLINED_FUNCTION_212();
    sub_1DC5179EC();
    if (v91 == v89 && v92 == v90)
    {
      break;
    }

    v88 = sub_1DC51825C();
    v39 = *v83;
    (*v83)(v17, v11);
    v39(v20, v11);
    v21 = v79;

    if (v88)
    {
      goto LABEL_11;
    }

    v40 = OUTLINED_FUNCTION_54_4();
    v41(v40);
    ++v30;
  }

  v44 = *v83;
  (*v83)(v17, v11);
  v44(v20, v11);

LABEL_11:
  v46 = v87 + 32;
  v45 = *(v87 + 32);
  v47 = v75;
  v45(v75, v25, v21);
  v48 = v76;
  v45(v76, v47, v21);
  v49 = v77;
  sub_1DC516C1C();
  (*(v46 - 24))(v48, v21);
  v50 = sub_1DC5172AC();
  if (__swift_getEnumTagSinglePayload(v49, 1, v50) == 1)
  {
    sub_1DC28EB30(v49, &qword_1ECC7BFF8, &qword_1DC522580);
  }

  else
  {
    OUTLINED_FUNCTION_2_3();
    v52 = v51;
    if ((*(v53 + 88))(v49, v50) == *MEMORY[0x1E69DAE70])
    {
      (*(v52 + 96))(v49, v50);
      v54 = swift_projectBox();
      v55 = v72;
      v56 = v71;
      v57 = v74;
      (*(v72 + 16))(v71, v54, v74);

      v58 = v73;
      (*(v55 + 32))(v73, v56, v57);
      v59 = OUTLINED_FUNCTION_62_2();
      if (v60(v59) == *MEMORY[0x1E69DADA8])
      {
        v61 = OUTLINED_FUNCTION_62_2();
        v62(v61);
        v63 = sub_1DC51724C();
        OUTLINED_FUNCTION_35();
        v65 = v78;
        (*(v64 + 32))(v78, v58, v63);
        v43 = v65;
        v66 = 0;
        v42 = v63;
        goto LABEL_20;
      }

      v67 = OUTLINED_FUNCTION_62_2();
      v68(v67);
    }

    else
    {
      (*(v52 + 8))(v49, v50);
    }
  }

  v69 = v78;
  v42 = sub_1DC51724C();
  v43 = v69;
LABEL_19:
  v66 = 1;
LABEL_20:
  __swift_storeEnumTagSinglePayload(v43, v66, 1, v42);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3ECB6C()
{
  OUTLINED_FUNCTION_33();
  v61 = sub_1DC5172AC();
  OUTLINED_FUNCTION_0();
  v59 = v0;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  v55 = v3 - v2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D6A8, &qword_1DC529328);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_25();
  v60 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v7 = OUTLINED_FUNCTION_10(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v56 = v8;
  OUTLINED_FUNCTION_22();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (&v54 - v11);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v58 = v13;
  OUTLINED_FUNCTION_12();
  v14 = sub_1DC516AFC();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v54 - v22;
  sub_1DC516C2C();
  v24 = *(v16 + 104);
  v24(v20, *MEMORY[0x1E69A9050], v14);
  v25 = sub_1DC2DA444();
  v26 = *(v16 + 8);
  v26(v20, v14);
  v26(v23, v14);
  if (v25 & 1) != 0 || (sub_1DC516C2C(), v24(v20, *MEMORY[0x1E69A9060], v14), v27 = sub_1DC2DA444(), v26(v20, v14), v26(v23, v14), (v27))
  {
    v28 = v58;
    sub_1DC516C1C();
    sub_1DC51728C();
    v29 = swift_allocBox();
    *v30 = 1;
    OUTLINED_FUNCTION_7_1();
    (*(v31 + 104))();
    *v12 = v29;
    v32 = v59;
    v33 = v61;
    (*(v59 + 104))(v12, *MEMORY[0x1E69DAE70], v61);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v33);
    v34 = *(v57 + 48);
    v35 = v60;
    sub_1DC2DB2AC();
    sub_1DC2DB2AC();
    OUTLINED_FUNCTION_2_6(v35);
    if (!v43)
    {
      v42 = v56;
      sub_1DC2DB2AC();
      OUTLINED_FUNCTION_2_6(v35 + v34);
      if (!v43)
      {
        v50 = v55;
        (*(v32 + 32))(v55, v35 + v34, v33);
        sub_1DC3EED9C(&qword_1ECC7D6B0, MEMORY[0x1E69DAE88], MEMORY[0x1E69DAEA0]);
        sub_1DC5176CC();
        v51 = *(v32 + 8);
        v51(v50, v33);
        v52 = OUTLINED_FUNCTION_149();
        sub_1DC28EB30(v52, v53, &qword_1DC522580);
        sub_1DC28EB30(v28, &qword_1ECC7BFF8, &qword_1DC522580);
        v51(v42, v33);
        sub_1DC28EB30(v35, &qword_1ECC7BFF8, &qword_1DC522580);
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_62_3();
      sub_1DC28EB30(v44, v45, v46);
      OUTLINED_FUNCTION_62_3();
      sub_1DC28EB30(v47, v48, v49);
      (*(v32 + 8))(v42, v33);
LABEL_11:
      sub_1DC28EB30(v35, &qword_1ECC7D6A8, &qword_1DC529328);
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_62_3();
    sub_1DC28EB30(v36, v37, v38);
    OUTLINED_FUNCTION_62_3();
    sub_1DC28EB30(v39, v40, v41);
    OUTLINED_FUNCTION_2_6(v35 + v34);
    if (!v43)
    {
      goto LABEL_11;
    }

    sub_1DC28EB30(v35, &qword_1ECC7BFF8, &qword_1DC522580);
  }

LABEL_12:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3ED0C0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DC51825C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DC3ED148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DC3ED0C0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DC3ED174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC3EED28(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v3, v4);
}

uint64_t sub_1DC3ED1AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC3EED28(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v3, v4);
}

uint64_t sub_1DC3ED1E4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D608, &qword_1DC528A98);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_28_13();
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DC3EED28(v7, v8, v9);
  sub_1DC51835C();
  type metadata accessor for QDContextState(0);
  OUTLINED_FUNCTION_31_15();
  sub_1DC3EED9C(v10, v11, &unk_1DC528C70);
  sub_1DC5181AC();
  return (*(v5 + 8))(v1, v3);
}

void sub_1DC3ED334()
{
  OUTLINED_FUNCTION_28_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEB8, &unk_1DC527150);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_11_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D610, &qword_1DC528AA0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = type metadata accessor for QDContextStateOutput(0);
  v7 = OUTLINED_FUNCTION_10(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v8 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DC3EED28(v8, v9, v10);
  sub_1DC51834C();
  if (!v0)
  {
    type metadata accessor for QDContextState(0);
    OUTLINED_FUNCTION_31_15();
    sub_1DC3EED9C(v11, v12, &unk_1DC528C48);
    OUTLINED_FUNCTION_74_7();
    sub_1DC5180EC();
    v13 = OUTLINED_FUNCTION_41();
    v14(v13);
    sub_1DC2DB254();
    OUTLINED_FUNCTION_212();
    sub_1DC3EF148();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  OUTLINED_FUNCTION_26_0();
}

uint64_t sub_1DC3ED5A4()
{
  OUTLINED_FUNCTION_42_0();
  v3 = v1 == 0x7070416E49746F6ELL && v2 == 0xE800000000000000;
  if (v3 || (OUTLINED_FUNCTION_32_13(0x7070416E49746F6ELL, 0xE800000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_70_9();
    v6 = v3 && v0 == 0xE500000000000000;
    if (v6 || (OUTLINED_FUNCTION_32_13(v5, 0xE500000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_64_6();
      v9 = v1 == v7 && v0 == v8;
      if (v9 || (OUTLINED_FUNCTION_32_13(v7, v8) & 1) != 0)
      {

        return 2;
      }

      else if (v1 == 0x70416C69614D6E69 && v0 == 0xE900000000000070)
      {

        return 3;
      }

      else
      {
        v11 = OUTLINED_FUNCTION_32_13(0x70416C69614D6E69, 0xE900000000000070);

        if (v11)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1DC3ED6AC(char a1)
{
  result = 0x7070416E49746F6ELL;
  switch(a1)
  {
    case 1:
      result = 0x7070416E69;
      break;
    case 2:
      result = OUTLINED_FUNCTION_64_6();
      break;
    case 3:
      result = 0x70416C69614D6E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DC3ED73C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DC3ED5A4();
  *a1 = result;
  return result;
}

uint64_t sub_1DC3ED76C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC3EEDE4(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v3, v4);
}

uint64_t sub_1DC3ED7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC3EEDE4(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v3, v4);
}

uint64_t sub_1DC3ED7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC3EEEE0(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v3, v4);
}

uint64_t sub_1DC3ED814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC3EEEE0(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v3, v4);
}

uint64_t sub_1DC3ED84C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC3EEE38(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v3, v4);
}

uint64_t sub_1DC3ED884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC3EEE38(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v3, v4);
}

uint64_t sub_1DC3ED8BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC3EEE8C(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v3, v4);
}

uint64_t sub_1DC3ED8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC3EEE8C(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v3, v4);
}

uint64_t sub_1DC3ED92C@<X0>(_BYTE *a1@<X8>)
{
  result = j__swift_bridgeObjectRelease();
  *a1 = 1;
  return result;
}

uint64_t sub_1DC3ED964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC3EEF34(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v3, v4);
}

uint64_t sub_1DC3ED99C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC3EEF34(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v3, v4);
}

void sub_1DC3ED9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_28_1();
  a23 = v25;
  a24 = v26;
  v73 = v27;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D620, &qword_1DC528AA8);
  OUTLINED_FUNCTION_0();
  v71 = v31;
  v72 = v30;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_25();
  v70 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D628, &qword_1DC528AB0);
  OUTLINED_FUNCTION_0();
  v68 = v35;
  v69 = v34;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_25();
  v67 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D630, &qword_1DC528AB8);
  OUTLINED_FUNCTION_0();
  v65 = v39;
  v66 = v38;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_28_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D638, &qword_1DC528AC0);
  OUTLINED_FUNCTION_0();
  v64[1] = v41;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D640, &qword_1DC528AC8);
  OUTLINED_FUNCTION_0();
  v45 = v44;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v46);
  v48 = v64 - v47;
  v49 = __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_1DC3EEDE4(v49, v50, v51);
  v52 = sub_1DC51835C();
  switch(v73)
  {
    case 1:
      OUTLINED_FUNCTION_69_8();
      sub_1DC3EEEE0(v61, v62, v63);
      OUTLINED_FUNCTION_53_14(&type metadata for QDContextState.InAppMode.InAppCodingKeys, &a12);
      v56 = v66;
      v57 = *(v65 + 8);
      v55 = v24;
      goto LABEL_7;
    case 2:
      a13 = 2;
      sub_1DC3EEE8C(v52, v53, v54);
      v58 = v67;
      OUTLINED_FUNCTION_53_14(&type metadata for QDContextState.InAppMode.InMediaRichAppCodingKeys, &a13);
      v60 = v68;
      v59 = v69;
      goto LABEL_5;
    case 3:
      a14 = 3;
      sub_1DC3EEE38(v52, v53, v54);
      v58 = v70;
      OUTLINED_FUNCTION_53_14(&type metadata for QDContextState.InAppMode.InMailAppCodingKeys, &a14);
      v60 = v71;
      v59 = v72;
LABEL_5:
      (*(v60 + 8))(v58, v59);
      break;
    default:
      a11 = 0;
      sub_1DC3EEF34(v52, v53, v54);
      OUTLINED_FUNCTION_53_14(&type metadata for QDContextState.InAppMode.NotInAppCodingKeys, &a11);
      v55 = OUTLINED_FUNCTION_212();
LABEL_7:
      v57(v55, v56);
      break;
  }

  (*(v45 + 8))(v48, v43);
  OUTLINED_FUNCTION_26_0();
}

void sub_1DC3EDD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_28_1();
  a23 = v26;
  a24 = v27;
  v95 = v24;
  v29 = v28;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D648, &qword_1DC528AD0);
  OUTLINED_FUNCTION_0();
  v91 = v30;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_25();
  v93 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D650, &qword_1DC528AD8);
  OUTLINED_FUNCTION_0();
  v88 = v34;
  v89 = v33;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_25();
  v90 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D658, &qword_1DC528AE0);
  OUTLINED_FUNCTION_0();
  v86 = v38;
  v87 = v37;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_28_13();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D660, &qword_1DC528AE8);
  OUTLINED_FUNCTION_0();
  v85 = v41;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_11_1();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D668, &qword_1DC528AF0);
  OUTLINED_FUNCTION_0();
  v92 = v44;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v81 - v46;
  v48 = __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_1DC3EEDE4(v48, v49, v50);
  v51 = v95;
  sub_1DC51834C();
  if (v51)
  {
    goto LABEL_8;
  }

  v83 = v40;
  v84 = v25;
  v52 = v93;
  v53 = v94;
  v95 = v29;
  v54 = v47;
  v55 = sub_1DC51816C();
  v59 = sub_1DC3EEF88(v55, 0);
  if (v57 == v58 >> 1)
  {
LABEL_7:
    sub_1DC517F7C();
    swift_allocError();
    v73 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D670, &qword_1DC528AF8);
    *v73 = &type metadata for QDContextState.InAppMode;
    sub_1DC5180BC();
    sub_1DC517F6C();
    OUTLINED_FUNCTION_7_1();
    (*(v74 + 104))(v73);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v92 + 8))(v54, v43);
    v29 = v95;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
LABEL_9:
    OUTLINED_FUNCTION_26_0();
    return;
  }

  v82 = 0;
  if (v57 < (v58 >> 1))
  {
    v60 = *(v56 + v57);
    sub_1DC3EEFD0(v57 + 1, v58 >> 1, v59, v56, v57, v58);
    v62 = v61;
    v64 = v63;
    v65 = swift_unknownObjectRelease();
    if (v62 == v64 >> 1)
    {
      v68 = v60;
      v70 = v91;
      v69 = v92;
      switch(v68)
      {
        case 1:
          OUTLINED_FUNCTION_69_8();
          sub_1DC3EEEE0(v78, v79, v80);
          OUTLINED_FUNCTION_48_8(&type metadata for QDContextState.InAppMode.InAppCodingKeys, &a12);
          swift_unknownObjectRelease();
          v76 = v86;
          v75 = v87;
          goto LABEL_15;
        case 2:
          a13 = 2;
          sub_1DC3EEE8C(v65, v66, v67);
          v53 = v90;
          OUTLINED_FUNCTION_48_8(&type metadata for QDContextState.InAppMode.InMediaRichAppCodingKeys, &a13);
          swift_unknownObjectRelease();
          v76 = v88;
          v75 = v89;
LABEL_15:
          (*(v76 + 8))(v53, v75);
          goto LABEL_16;
        case 3:
          a14 = 3;
          sub_1DC3EEE38(v65, v66, v67);
          v77 = v82;
          sub_1DC5180AC();
          if (v77)
          {
            (*(v69 + 8))(v54, v43);
            swift_unknownObjectRelease();
            v29 = v95;
            goto LABEL_8;
          }

          swift_unknownObjectRelease();
          (*(v70 + 8))(v52, v53);
LABEL_16:
          (*(v69 + 8))(v54, v43);
          __swift_destroy_boxed_opaque_existential_1Tm(v95);
          break;
        default:
          a11 = 0;
          sub_1DC3EEF34(v65, v66, v67);
          v71 = v84;
          OUTLINED_FUNCTION_48_8(&type metadata for QDContextState.InAppMode.NotInAppCodingKeys, &a11);
          swift_unknownObjectRelease();
          (*(v85 + 8))(v71, v83);
          goto LABEL_16;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DC3EE388()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v4 = sub_1DC51724C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEC0, &unk_1DC5221E0);
  OUTLINED_FUNCTION_10(v11);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D678, &qword_1DC528B00);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  if (*v3 == *v1 && v3[1] == v1[1])
  {
    v28 = v6;
    type metadata accessor for QDContextState(0);
    v17 = *(v13 + 48);
    sub_1DC2DB2AC();
    sub_1DC2DB2AC();
    OUTLINED_FUNCTION_14_2(v16);
    if (!v18)
    {
      sub_1DC2DB2AC();
      OUTLINED_FUNCTION_14_2(&v16[v17]);
      if (!v18)
      {
        v21 = v28;
        (*(v28 + 32))(v10, &v16[v17], v4);
        OUTLINED_FUNCTION_8_19();
        sub_1DC3EED9C(v22, v23, MEMORY[0x1E69DAD18]);
        sub_1DC5176CC();
        v24 = *(v21 + 8);
        v25 = OUTLINED_FUNCTION_43();
        v24(v25);
        v26 = OUTLINED_FUNCTION_72();
        v24(v26);
        sub_1DC28EB30(v16, &qword_1ECC7BEC0, &unk_1DC5221E0);
        goto LABEL_12;
      }

      v19 = OUTLINED_FUNCTION_72();
      v20(v19);
LABEL_11:
      sub_1DC28EB30(v16, &qword_1ECC7D678, &qword_1DC528B00);
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_14_2(&v16[v17]);
    if (!v18)
    {
      goto LABEL_11;
    }

    sub_1DC28EB30(v16, &qword_1ECC7BEC0, &unk_1DC5221E0);
  }

LABEL_12:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3EE658()
{
  OUTLINED_FUNCTION_42_0();
  v3 = v1 == 0x646F4D7070416E69 && v2 == 0xE900000000000065;
  if (v3 || (OUTLINED_FUNCTION_32_13(0x646F4D7070416E69, 0xE900000000000065) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x466E49616964656DLL && v0 == 0xEC0000007375636FLL;
    if (v5 || (OUTLINED_FUNCTION_32_13(0x466E49616964656DLL, 0xEC0000007375636FLL) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v6 = OUTLINED_FUNCTION_70_9();
      if (v3 && v0 == 0xE500000000000000)
      {

        return 2;
      }

      else
      {
        v8 = OUTLINED_FUNCTION_32_13(v6, 0xE500000000000000);

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
}

uint64_t sub_1DC3EE73C(char a1)
{
  if (!a1)
  {
    return 0x646F4D7070416E69;
  }

  if (a1 == 1)
  {
    return 0x466E49616964656DLL;
  }

  return 0x7070416E69;
}

uint64_t sub_1DC3EE7C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DC3EE658();
  *a1 = result;
  return result;
}

uint64_t sub_1DC3EE7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC3EF04C(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v3, v4);
}

uint64_t sub_1DC3EE82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC3EF04C(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v3, v4);
}

uint64_t sub_1DC3EE864(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D688, &qword_1DC528B08);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_11_1();
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DC3EF04C(v8, v9, v10);
  v11 = sub_1DC51835C();
  sub_1DC3EF0A0(v11, v12, v13);
  sub_1DC51820C();
  if (!v1)
  {
    OUTLINED_FUNCTION_69_8();
    sub_1DC5181CC();
    type metadata accessor for QDContextState(0);
    sub_1DC51724C();
    OUTLINED_FUNCTION_8_19();
    sub_1DC3EED9C(v14, v15, MEMORY[0x1E69DAD10]);
    sub_1DC5181AC();
  }

  return (*(v6 + 8))(v2, v4);
}

void sub_1DC3EEA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_28_1();
  v21 = v20;
  v45[1] = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEC0, &unk_1DC5221E0);
  OUTLINED_FUNCTION_10(v23);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v24);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D690, &qword_1DC528B10);
  OUTLINED_FUNCTION_0();
  v26 = v25;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = v45 - v28;
  type metadata accessor for QDContextState(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1();
  v33 = (v32 - v31);
  v34 = v21[3];
  v47 = v21;
  v35 = __swift_project_boxed_opaque_existential_1(v21, v34);
  sub_1DC3EF04C(v35, v36, v37);
  v38 = sub_1DC51834C();
  if (!v19)
  {
    v41 = v33;
    sub_1DC3EF0F4(v38, v39, v40);
    v42 = v46;
    sub_1DC51814C();
    *v41 = BYTE7(a10);
    OUTLINED_FUNCTION_69_8();
    v41[1] = sub_1DC51810C() & 1;
    sub_1DC51724C();
    OUTLINED_FUNCTION_8_19();
    sub_1DC3EED9C(v43, v44, MEMORY[0x1E69DAD20]);
    OUTLINED_FUNCTION_74_7();
    sub_1DC5180EC();
    (*(v26 + 8))(v29, v42);
    sub_1DC2DB254();
    sub_1DC3EF148();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  OUTLINED_FUNCTION_26_0();
}

unint64_t sub_1DC3EED28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC81D58[0];
  if (!qword_1ECC81D58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC81D58);
  }

  return result;
}

uint64_t sub_1DC3EED9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DC3EEDE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC839B0[0];
  if (!qword_1ECC839B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC839B0);
  }

  return result;
}

unint64_t sub_1DC3EEE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC8A498;
  if (!qword_1ECC8A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8A498);
  }

  return result;
}

unint64_t sub_1DC3EEE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC8A4A0;
  if (!qword_1ECC8A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8A4A0);
  }

  return result;
}

unint64_t sub_1DC3EEEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC8A4A8[0];
  if (!qword_1ECC8A4A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8A4A8);
  }

  return result;
}

unint64_t sub_1DC3EEF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC84000[0];
  if (!qword_1ECC84000[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC84000);
  }

  return result;
}

uint64_t sub_1DC3EEF88(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DC3EEFD0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1DC3EF04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC841A8[0];
  if (!qword_1ECC841A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC841A8);
  }

  return result;
}

unint64_t sub_1DC3EF0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7BD30;
  if (!qword_1ECC7BD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BD30);
  }

  return result;
}

unint64_t sub_1DC3EF0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D698;
  if (!qword_1ECC7D698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D698);
  }

  return result;
}

uint64_t sub_1DC3EF148()
{
  OUTLINED_FUNCTION_42_0();
  v1(0);
  OUTLINED_FUNCTION_35();
  v2 = OUTLINED_FUNCTION_43();
  v3(v2);
  return v0;
}

void sub_1DC3EF1EC(uint64_t a1)
{
  sub_1DC3EF334(319, &qword_1ECC7BD20, type metadata accessor for QDContextState);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    OUTLINED_FUNCTION_75_6();
  }
}

void sub_1DC3EF298(uint64_t a1)
{
  sub_1DC3EF334(319, &qword_1ECC7BAA0, MEMORY[0x1E69DAD08]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    OUTLINED_FUNCTION_75_6();
  }
}

void sub_1DC3EF334(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DC517D8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for QDContextState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1DC3EF47C(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QDContextStateOutput.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DC3EF648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC8A730[0];
  if (!qword_1ECC8A730[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8A730);
  }

  return result;
}

unint64_t sub_1DC3EF6A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC8A840[0];
  if (!qword_1ECC8A840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8A840);
  }

  return result;
}

unint64_t sub_1DC3EF6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC8A950[0];
  if (!qword_1ECC8A950[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8A950);
  }

  return result;
}

unint64_t sub_1DC3EF750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC84190;
  if (!qword_1ECC84190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC84190);
  }

  return result;
}

unint64_t sub_1DC3EF7A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC84198;
  if (!qword_1ECC84198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC84198);
  }

  return result;
}

unint64_t sub_1DC3EF800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC83FF0;
  if (!qword_1ECC83FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC83FF0);
  }

  return result;
}

unint64_t sub_1DC3EF858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC83FF8;
  if (!qword_1ECC83FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC83FF8);
  }

  return result;
}

unint64_t sub_1DC3EF8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC83B40;
  if (!qword_1ECC83B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC83B40);
  }

  return result;
}

unint64_t sub_1DC3EF908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC83B48[0];
  if (!qword_1ECC83B48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC83B48);
  }

  return result;
}

unint64_t sub_1DC3EF960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC83CD0;
  if (!qword_1ECC83CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC83CD0);
  }

  return result;
}

unint64_t sub_1DC3EF9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC83CD8[0];
  if (!qword_1ECC83CD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC83CD8);
  }

  return result;
}

unint64_t sub_1DC3EFA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC83E60;
  if (!qword_1ECC83E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC83E60);
  }

  return result;
}

unint64_t sub_1DC3EFA68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC83E68[0];
  if (!qword_1ECC83E68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC83E68);
  }

  return result;
}

unint64_t sub_1DC3EFAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC839A0;
  if (!qword_1ECC839A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC839A0);
  }

  return result;
}

unint64_t sub_1DC3EFB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC839A8;
  if (!qword_1ECC839A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC839A8);
  }

  return result;
}

unint64_t sub_1DC3EFB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC81D40;
  if (!qword_1ECC81D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC81D40);
  }

  return result;
}

unint64_t sub_1DC3EFBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC81D48;
  if (!qword_1ECC81D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC81D48);
  }

  return result;
}

void *sub_1DC3EFC80()
{
  v1 = OBJC_IVAR___CDMNluRequestID_objcProto;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1DC3EFD28(uint64_t a1)
{
  v3 = OBJC_IVAR___CDMNluRequestID_objcProto;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1DC3EFD80@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC3EFDDC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x68);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1DC3EFEF0(uint64_t a1, void **a2)
{
  v4 = sub_1DC51110C();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x80))(v6);
}

uint64_t sub_1DC3EFFEC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CDMNluRequestID_swiftProto;
  swift_beginAccess();
  sub_1DC51110C();
  OUTLINED_FUNCTION_35();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t sub_1DC3F006C(uint64_t a1)
{
  v3 = OBJC_IVAR___CDMNluRequestID_swiftProto;
  OUTLINED_FUNCTION_1_22(v1 + OBJC_IVAR___CDMNluRequestID_swiftProto, v6);
  sub_1DC51110C();
  OUTLINED_FUNCTION_35();
  (*(v4 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

id CDMNluRequestID.init(objcProto:)(void *a1)
{
  v2 = v1;
  v4 = sub_1DC51670C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D6D8, &qword_1DC529350);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26[-v6];
  v8 = sub_1DC51110C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = OBJC_IVAR___CDMNluRequestID_objcProto;
  *&v2[v12] = [objc_allocWithZone(MEMORY[0x1E69D11C0]) init];
  v13 = OBJC_IVAR___CDMNluRequestID_swiftProto;
  sub_1DC5110FC();
  swift_beginAccess();
  v14 = *&v2[v12];
  *&v2[v12] = a1;
  v15 = a1;

  v16 = v15;
  v17 = sub_1DC30EB38(v16);
  if (v18 >> 60 == 15)
  {
    v19 = sub_1DC517BAC();
    sub_1DC297814();
    v20 = sub_1DC2C0F8C();
    sub_1DC516F0C(v19, &dword_1DC287000, v20, "Unable to get passed in objcProto.data", 38, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v21 = v17;
    v22 = v18;
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    sub_1DC2A6784(v17, v18);
    sub_1DC5166FC();
    sub_1DC3F08A0();
    sub_1DC51677C();
    sub_1DC301FE0(v21, v22);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
    (*(v9 + 32))(v11, v7, v8);
    OUTLINED_FUNCTION_1_22(&v2[v13], v27);
    (*(v9 + 40))(&v2[v13], v11, v8);
    swift_endAccess();
  }

  v23 = type metadata accessor for CDMNluRequestID(0);
  v29.receiver = v2;
  v29.super_class = v23;
  v24 = objc_msgSendSuper2(&v29, sel_init);

  return v24;
}

id CDMNluRequestID.init(swiftProto:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___CDMNluRequestID_objcProto;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69D11C0]) init];
  v5 = OBJC_IVAR___CDMNluRequestID_swiftProto;
  sub_1DC5110FC();
  OUTLINED_FUNCTION_1_22(&v2[v5], v19);
  v6 = sub_1DC51110C();
  v7 = *(v6 - 8);
  (*(v7 + 24))(&v2[v5], a1, v6);
  swift_endAccess();
  sub_1DC3F08A0();
  v10 = sub_1DC51678C();
  v12 = v11;
  v13 = objc_allocWithZone(MEMORY[0x1E69D11C0]);
  v14 = sub_1DC339190(v10, v12);
  if (v14)
  {
    v15 = v14;
    swift_beginAccess();
    v9 = *&v2[v4];
    *&v2[v4] = v15;
  }

  else
  {
    v8 = sub_1DC517BAC();
    sub_1DC297814();
    v9 = sub_1DC2C0F8C();
    sub_1DC516F0C(v8, &dword_1DC287000, v9, "Unable to deserialize to Obj-C SIRINLUEXTERNALCDMNluRequest version", 67, 2, MEMORY[0x1E69E7CC0]);
  }

  v18.receiver = v2;
  v18.super_class = type metadata accessor for CDMNluRequestID(0);
  v16 = objc_msgSendSuper2(&v18, sel_init);
  (*(v7 + 8))(a1, v6);
  return v16;
}

id CDMNluRequestID.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CDMNluRequestID.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CDMNluRequestID(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CDMNluRequestID(uint64_t a1)
{
  result = qword_1EDAC9630;
  if (!qword_1EDAC9630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DC3F08A0()
{
  result = qword_1EDAC8060;
  if (!qword_1EDAC8060)
  {
    sub_1DC51110C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAC8060);
  }

  return result;
}

uint64_t sub_1DC3F08F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D6D8, &qword_1DC529350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC3F0968(uint64_t a1)
{
  result = sub_1DC51110C();
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

uint64_t sub_1DC3F0B7C(unsigned int *a1, uint64_t (*a2)(void))
{
  OUTLINED_FUNCTION_57_0();
  sub_1DC511A5C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_4();
  if (sub_1DC511A8C())
  {
    sub_1DC511A6C();
    v6 = OUTLINED_FUNCTION_35_0();
    if (v7(v6) == *MEMORY[0x1E69D0B90])
    {
      v8 = *a1;
      v9 = a2(0);
      OUTLINED_FUNCTION_35();
      (*(v10 + 104))(v2, v8, v9);
      OUTLINED_FUNCTION_61();
      return __swift_storeEnumTagSinglePayload(v11, v12, v13, v9);
    }

    else
    {
      a2(0);
      OUTLINED_FUNCTION_19();
      __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
      v23 = OUTLINED_FUNCTION_35_0();
      return v24(v23);
    }
  }

  else
  {
    a2(0);
    OUTLINED_FUNCTION_19();

    return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  }
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceRequest.toSwiftNLRouterServiceRequest(alternativeRequestId:)(uint64_t a1, uint64_t a2)
{
  sub_1DC510C8C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_65();
  sub_1DC510C4C();
  Siri_Nlu_External_NluRouter_NLRouterServiceRequest.toSwiftNLRouterServiceRequest(alternativeRequestId:locale:)();
  v3 = OUTLINED_FUNCTION_30_6();
  return v4(v3);
}

void Siri_Nlu_External_NluRouter_NLRouterServiceRequest.toSwiftNLRouterServiceRequest(alternativeRequestId:locale:)()
{
  OUTLINED_FUNCTION_28_1();
  v3 = v0;
  v86 = v4;
  v87 = v5;
  v7 = v6;
  v85 = sub_1DC510C8C();
  OUTLINED_FUNCTION_0();
  v84 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v10);
  v81 = sub_1DC512ACC();
  OUTLINED_FUNCTION_0();
  v80 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v13);
  v78 = sub_1DC512FDC();
  OUTLINED_FUNCTION_0();
  v77 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  v18 = OUTLINED_FUNCTION_10(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_62();
  v89 = v20;
  OUTLINED_FUNCTION_12();
  v75 = sub_1DC512A6C();
  OUTLINED_FUNCTION_0();
  v74 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  v25 = OUTLINED_FUNCTION_10(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_15();
  v88 = v26;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_38_3();
  v28 = sub_1DC5126CC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  v30 = sub_1DC512B8C();
  v31 = 0;
  v95 = *(v30 + 16);
  v98 = MEMORY[0x1E69E7CC0];
  v93 = v7;
  v94 = v1;
  v91 = v30;
  v92 = v28;
  for (i = v2; ; v2 = i)
  {
    if (v95 == v31)
    {

      if (sub_1DC512B1C())
      {
        OUTLINED_FUNCTION_213();
        sub_1DC512ADC();
        Siri_Nlu_External_NluRouter_NLRouterTurnContext.toSwiftNLRouterTurnContext()();
        OUTLINED_FUNCTION_62_0();
        v53(v31, v75);
        v54 = 0;
      }

      else
      {
        v54 = 1;
      }

      v57 = type metadata accessor for NLRouterTurnContext(0);
      v58 = 1;
      __swift_storeEnumTagSinglePayload(v1, v54, 1, v57);
      if (sub_1DC512B6C())
      {
        OUTLINED_FUNCTION_213();
        sub_1DC512AFC();
        Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult.toSwiftNLRouterTurnProbingResult()();
        OUTLINED_FUNCTION_62_0();
        v59(1, v78);
        v58 = 0;
      }

      v60 = type metadata accessor for NLRouterTurnProbingResult(0);
      __swift_storeEnumTagSinglePayload(v89, v58, 1, v60);
      if (sub_1DC512BBC())
      {
        OUTLINED_FUNCTION_213();
        sub_1DC512B9C();
        Siri_Nlu_External_NluRouter_QueryDecorationOutput.toSwiftQueryDecorationOutput()(&v97);
        if (v3)
        {
          OUTLINED_FUNCTION_62_0();
          v61(v58, v81);
          sub_1DC28EB30(v89, &qword_1ECC7C158, &unk_1DC5234A0);
          sub_1DC28EB30(v1, &qword_1ECC7BFD0, &unk_1DC522550);
LABEL_19:

LABEL_26:
          OUTLINED_FUNCTION_30_13();
          OUTLINED_FUNCTION_26_0();
          return;
        }

        OUTLINED_FUNCTION_62_0();
        v63(v58, v81);
        countAndFlagsBits = v97.requestId._countAndFlagsBits;
      }

      else
      {
        countAndFlagsBits = 0;
      }

      v64 = sub_1DC512B4C();
      v66 = v65;
      sub_1DC28F3B8(v1, v88, &qword_1ECC7BFD0, &unk_1DC522550);
      v96 = v66;
      if (v87)
      {
        v67 = v87;
      }

      else
      {
        v7 = sub_1DC512BCC();
        v67 = v68;
      }

      v69 = sub_1DC512B2C();
      v71 = v70;
      sub_1DC28F3B8(v89, v82, &qword_1ECC7C158, &unk_1DC5234A0);
      (*(v84 + 16))(v83, v86, v85);
      v97.requestId._countAndFlagsBits = countAndFlagsBits;
      NLRouterServiceRequest.init(currentUserQuery:turnContext:conversationHistory:requestId:trpCandidateId:probingResult:locale:userQueryDecoration:)(v64, v96, v88, v98, v7, v67, v69, v71, v82, v83, &v97, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
      sub_1DC28EB30(v89, &qword_1ECC7C158, &unk_1DC5234A0);
      sub_1DC28EB30(v94, &qword_1ECC7BFD0, &unk_1DC522550);
      goto LABEL_26;
    }

    if (v31 >= *(v30 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_22_0();
    (*(v33 + 16))(v2, v30 + v32 + *(v33 + 72) * v31, v28);
    Siri_Nlu_External_NluRouter_RequestSummary.toSwiftRequestSummary()(&v97);
    if (v34)
    {
      v55 = OUTLINED_FUNCTION_129_2();
      v56(v55);

      goto LABEL_19;
    }

    v35 = OUTLINED_FUNCTION_129_2();
    v36(v35);
    v37 = v97.requestId._countAndFlagsBits;
    object = v97.requestId._object;
    v39 = v97.userQuery.value._countAndFlagsBits;
    v40 = v97.userQuery.value._object;
    rawValue = v97.turnSummaries._rawValue;
    userInputType = v97.userInputType;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = OUTLINED_FUNCTION_13_0();
      v98 = sub_1DC3FDEAC(v46, v47, v48, v49);
    }

    v44 = *(v98 + 2);
    v43 = *(v98 + 3);
    if (v44 >= v43 >> 1)
    {
      v50 = OUTLINED_FUNCTION_12_23(v43);
      v98 = sub_1DC3FDEAC(v50, v51, v52, v98);
    }

    *(v98 + 2) = v44 + 1;
    v45 = &v98[48 * v44];
    *(v45 + 4) = v37;
    *(v45 + 5) = object;
    *(v45 + 6) = v39;
    *(v45 + 7) = v40;
    *(v45 + 8) = rawValue;
    v45[72] = userInputType;
    ++v31;
    v3 = 0;
    v7 = v93;
    v1 = v94;
    v30 = v91;
    v28 = v92;
  }

  __break(1u);
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Siri_Nlu_External_NluRouter_RequestSummary.toSwiftRequestSummary()(CDMFoundation::RequestSummary *__return_ptr retstr)
{
  OUTLINED_FUNCTION_28_1();
  v37 = v4;
  v38 = v5;
  v32 = v6;
  v7 = type metadata accessor for TurnSummary(0);
  v8 = OUTLINED_FUNCTION_52(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();
  v34 = sub_1DC51262C();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_2();
  v12 = sub_1DC51268C();
  v13 = 0;
  v35 = *(v12 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  v33 = v3;
  while (1)
  {
    if (v35 == v13)
    {

      v28 = sub_1DC51269C();
      v36 = 0;
      sub_1DC432274(0, 0xE000000000000000, v28, v29, v14, &v36, v32);
LABEL_12:
      OUTLINED_FUNCTION_30_13();
      OUTLINED_FUNCTION_26_0();
      return;
    }

    if (v13 >= *(v12 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_24();
    (*(v10 + 16))(v2, v12 + v15 + *(v10 + 72) * v13, v34);
    Siri_Nlu_External_NluRouter_TurnSummary.toSwiftTurnSummary()();
    if (v1)
    {
      v30 = OUTLINED_FUNCTION_30();
      v31(v30);

      goto LABEL_12;
    }

    v16 = OUTLINED_FUNCTION_30();
    v17(v16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = OUTLINED_FUNCTION_13_0();
      v14 = sub_1DC3FDA1C(v22, v23, v24, v14);
    }

    v19 = v14[2];
    v18 = v14[3];
    if (v19 >= v18 >> 1)
    {
      v25 = OUTLINED_FUNCTION_12_23(v18);
      v14 = sub_1DC3FDA1C(v25, v26, v27, v14);
    }

    v14[2] = v19 + 1;
    OUTLINED_FUNCTION_22_0();
    sub_1DC3FE514(v33, v14 + v20 + *(v21 + 72) * v19);
    ++v13;
  }

  __break(1u);
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterTurnContext.toSwiftNLRouterTurnContext()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1D8, &qword_1DC529390);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_56_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3A0, &unk_1DC522560);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_65();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFE0, &unk_1DC5253A0);
  OUTLINED_FUNCTION_10(v6);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_11_1();
  sub_1DC51268C();
  sub_1DC5129FC();
  v8 = sub_1DC512A3C();
  sub_1DC5167EC();
  OUTLINED_FUNCTION_149_3();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  sub_1DC51190C();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  sub_1DC512A1C();
  OUTLINED_FUNCTION_38_2();
  sub_1DC515DFC();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = OUTLINED_FUNCTION_54_2();
  return sub_1DC43243C(v21, v22, v8, v0, v23, 0, v24, v1);
}

void Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult.toSwiftNLRouterTurnProbingResult()()
{
  OUTLINED_FUNCTION_33();
  v32 = v1;
  v31 = sub_1DC51266C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D398, &qword_1DC5283F8);
  OUTLINED_FUNCTION_10(v5);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_18();
  sub_1DC51270C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  v9 = OUTLINED_FUNCTION_10(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  if (sub_1DC512FBC())
  {
    sub_1DC512F8C();
    sub_1DC51268C();
    v16 = OUTLINED_FUNCTION_176();
    v17(v16);
    sub_1DC511E5C();
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    v22 = OUTLINED_FUNCTION_152();
    sub_1DC437594(v22, v23);
    v24 = type metadata accessor for NLRouterNLParseResponse(0);
    v25 = 0;
  }

  else
  {
    v24 = type metadata accessor for NLRouterNLParseResponse(0);
    v25 = 1;
  }

  __swift_storeEnumTagSinglePayload(v15, v25, 1, v24);
  if (sub_1DC512FAC())
  {
    sub_1DC512F6C();
    sub_1DC51263C();
    (*(v3 + 8))(v0, v31);
    v26 = OUTLINED_FUNCTION_74();
    sub_1DC44667C(v26, v27, v28);
    v29 = v33;
    v30 = v34;
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  sub_1DC28F3B8(v15, v12, &qword_1ECC7C160, qword_1DC5233B0);
  v33 = v29;
  v34 = v30;
  sub_1DC438C18(&v33, v32);
  sub_1DC28EB30(v15, &qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_34();
}

void Siri_Nlu_External_NluRouter_QueryDecorationOutput.toSwiftQueryDecorationOutput()(void *a1@<X8>)
{
  v3 = v2;
  v140 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D6E0, &qword_1DC529398);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v138 - v6;
  v170 = sub_1DC516C3C();
  OUTLINED_FUNCTION_0();
  v149 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D6E8, &unk_1DC5293A0);
  OUTLINED_FUNCTION_10(v11);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25();
  v178 = v13;
  OUTLINED_FUNCTION_12();
  v177 = sub_1DC516B8C();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v17);
  v186 = sub_1DC51296C();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_1();
  v176 = v21;
  OUTLINED_FUNCTION_12();
  v167 = sub_1DC51257C();
  OUTLINED_FUNCTION_0();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  OUTLINED_FUNCTION_10(v28);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_25();
  v169 = v30;
  OUTLINED_FUNCTION_12();
  v154 = sub_1DC516C7C();
  OUTLINED_FUNCTION_0();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v35);
  v148 = sub_1DC51288C();
  OUTLINED_FUNCTION_0();
  v168 = v36;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF0, &qword_1DC5293B0);
  OUTLINED_FUNCTION_10(v39);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v41);
  v158 = sub_1DC5129CC();
  OUTLINED_FUNCTION_0();
  v43 = v42;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v45);
  v139 = v1;
  v46 = *(sub_1DC512A7C() + 16);
  v155 = v7;
  v166 = v46;
  if (v46)
  {
    OUTLINED_FUNCTION_24();
    v163 = v47 + v48;
    v162 = v43 + 16;
    v161 = v23 + 8;
    v160 = (v43 + 8);
    v173 = (v19 + 8);
    v174 = v19 + 16;
    v172 = v15 + 32;
    v144 = v32;
    v152 = (v32 + 32);
    v49 = MEMORY[0x1E69E7CC0];
    v145 = v27;
    OUTLINED_FUNCTION_157_0();
    v175 = v15;
    v142 = v19;
    v165 = v43;
    v164 = v50;
    while (v51 < *(v50 + 16))
    {
      v52 = *(v43 + 72);
      v171 = v51;
      (*(v43 + 16))(v1, v163 + v52 * v51, v23);
      sub_1DC51297C();
      Siri_Nlu_External_NluRouter_TypedValue.toSwiftTypedValue()();
      if (v3)
      {

        v53 = OUTLINED_FUNCTION_123_4();
        v54(v53);
        v55 = OUTLINED_FUNCTION_91_4();
        v56(v55);
        v3 = 0;
      }

      else
      {
        v159 = v49;
        v57 = OUTLINED_FUNCTION_123_4();
        v58(v57);
        if (*(sub_1DC51268C() + 16))
        {
          v151 = 0;
          OUTLINED_FUNCTION_24();
          v150 = v60;
          v62 = v60 + v61;
          v63 = *(v19 + 72);
          v179 = *(v19 + 16);
          v180 = v63;
          v64 = MEMORY[0x1E69E7CC0];
          v65 = v143;
          do
          {
            v185 = v59;
            v66 = v176;
            v179(v176, v62, v186);
            v67 = sub_1DC51292C();
            v183 = v68;
            v184 = v67;
            sub_1DC5128EC();

            v69 = sub_1DC5128EC();
            v71 = v70;

            v72 = HIBYTE(v71) & 0xF;
            if ((v71 & 0x2000000000000000) == 0)
            {
              v72 = v69;
            }

            v73 = 7;
            if (((v71 >> 60) & ((v69 & 0x800000000000000) == 0)) != 0)
            {
              v73 = 11;
            }

            v182 = v73 | (v72 << 16);
            v181 = sub_1DC5128EC();
            sub_1DC51289C();
            sub_1DC5128BC();
            sub_1DC516BEC();
            OUTLINED_FUNCTION_19();
            __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
            sub_1DC51290C();
            sub_1DC516B5C();
            (*v173)(v66, v186);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v82 = OUTLINED_FUNCTION_13_0();
              v64 = sub_1DC3FDD88(v82, v83, v84, v64);
            }

            v79 = *(v64 + 2);
            v78 = *(v64 + 3);
            v80 = v175;
            if (v79 >= v78 >> 1)
            {
              v85 = OUTLINED_FUNCTION_26(v78);
              v64 = sub_1DC3FDD88(v85, v79 + 1, 1, v64);
            }

            *(v64 + 2) = v79 + 1;
            OUTLINED_FUNCTION_24();
            (*(v80 + 32))(&v64[v81 + *(v80 + 72) * v79], v65, v177);
            v62 += v180;
            v59 = v185 - 1;
          }

          while (v185 != 1);

          v3 = v151;
          v19 = v142;
        }

        else
        {
        }

        v86 = v146;
        sub_1DC516C4C();
        (*v160)(v157, v158);
        v1 = *v152;
        (*v152)(v153, v86, v154);
        v49 = v159;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = OUTLINED_FUNCTION_13_0();
          v49 = sub_1DC3FDC64(v90, v91, v92, v49);
        }

        v7 = v155;
        v23 = v49[2];
        v87 = v49[3];
        if (v23 >= v87 >> 1)
        {
          v93 = OUTLINED_FUNCTION_26(v87);
          v49 = sub_1DC3FDC64(v93, v23 + 1, 1, v49);
        }

        v49[2] = v23 + 1;
        OUTLINED_FUNCTION_22_0();
        v1(v49 + v88 + *(v89 + 72) * v23, v153, v154);
        OUTLINED_FUNCTION_157_0();
      }

      v51 = v171 + 1;
      v43 = v165;
      v50 = v164;
      if (v171 + 1 == v166)
      {
        v159 = v49;

        goto LABEL_27;
      }
    }

    __break(1u);
  }

  else
  {

    v159 = MEMORY[0x1E69E7CC0];
LABEL_27:
    sub_1DC516DCC();
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v94, v95, v96, v97);
    v98 = *(sub_1DC512A9C() + 16);
    if (v98)
    {
      OUTLINED_FUNCTION_24();
      v183 = v99;
      v101 = v99 + v100;
      v185 = *(v102 + 56);
      v186 = v103;
      v168 = v102;
      v184 = (v149 + 32);
      v104 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_125_0();
      do
      {
        v105 = OUTLINED_FUNCTION_74();
        v106 = v186(v105);
        Siri_Nlu_External_NluRouter_RetrievedContext.toSwiftRetrievedContext()(v106, v107, v108, v109, v110, v111, v112, v113, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149);
        if (v3)
        {

          v114 = OUTLINED_FUNCTION_151();
          v115(v114);
          OUTLINED_FUNCTION_19();
          __swift_storeEnumTagSinglePayload(v116, v117, v118, v170);
          sub_1DC28EB30(v7, &qword_1ECC7D6E0, &qword_1DC529398);
          v3 = 0;
        }

        else
        {
          v119 = OUTLINED_FUNCTION_151();
          v120(v119);
          OUTLINED_FUNCTION_61();
          v121 = v170;
          __swift_storeEnumTagSinglePayload(v122, v123, v124, v170);
          v125 = *v184;
          (*v184)(v156, v7, v121);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v130 = OUTLINED_FUNCTION_13_0();
            v104 = sub_1DC3FDB40(v130, v131, v132, v104);
          }

          v127 = v104[2];
          v126 = v104[3];
          if (v127 >= v126 >> 1)
          {
            v133 = OUTLINED_FUNCTION_12_23(v126);
            v104 = sub_1DC3FDB40(v133, v134, v135, v104);
          }

          v104[2] = v127 + 1;
          OUTLINED_FUNCTION_22_0();
          v125(v104 + v128 + *(v129 + 72) * v127, v156, v170);
          v3 = 0;
          v7 = v155;
          OUTLINED_FUNCTION_125_0();
        }

        v101 += v185;
        --v98;
      }

      while (v98);
    }

    v136 = objc_allocWithZone(sub_1DC516D9C());
    v137 = sub_1DC516D6C();
    sub_1DC43EA3C(v137, v140);
  }
}

void Siri_Nlu_External_NluRouter_RetrievedContext.toSwiftRetrievedContext()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_28_1();
  a19 = v22;
  a20 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D6F0, &qword_1DC5293B8);
  OUTLINED_FUNCTION_10(v24);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_25();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D6F8, &unk_1DC5293C0);
  OUTLINED_FUNCTION_10(v26);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_25();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D6B8, &qword_1DC529330);
  OUTLINED_FUNCTION_10(v28);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_12();
  sub_1DC51271C();
  OUTLINED_FUNCTION_0();
  v148 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_15();
  v147 = v32;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_12();
  v142 = sub_1DC516AFC();
  OUTLINED_FUNCTION_0();
  v141 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D208, &qword_1DC5293D0);
  OUTLINED_FUNCTION_10(v38);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v40);
  sub_1DC51728C();
  OUTLINED_FUNCTION_0();
  v143 = v42;
  v144 = v41;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_2_1();
  v145 = v43;
  OUTLINED_FUNCTION_12();
  v149 = sub_1DC51279C();
  OUTLINED_FUNCTION_0();
  v151 = v44;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v150 = sub_1DC5127DC();
  OUTLINED_FUNCTION_0();
  v47 = v46;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  sub_1DC51281C();
  OUTLINED_FUNCTION_0();
  v50 = v49;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_4_31();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v53 = OUTLINED_FUNCTION_10(v52);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_62();
  v146 = v55;
  sub_1DC51282C();
  OUTLINED_FUNCTION_147_3();
  sub_1DC5127EC();
  v58 = *(v50 + 8);
  v56 = v50 + 8;
  v57 = v58;
  v59 = OUTLINED_FUNCTION_54_4();
  v58(v59);
  sub_1DC5127AC();
  (*(v47 + 8))(v20, v150);
  LOBYTE(v47) = sub_1DC51277C();
  v138 = *(v151 + 8);
  v138(v21, v149);
  sub_1DC51282C();
  OUTLINED_FUNCTION_147_3();
  sub_1DC5127EC();
  v60 = OUTLINED_FUNCTION_54_4();
  v58(v60);
  if (v47)
  {
    sub_1DC5127AC();
    v61 = OUTLINED_FUNCTION_109_5();
    v62(v61);
    sub_1DC51275C();
    v138(v21, v149);
    sub_1DC51734C();
    OUTLINED_FUNCTION_83(&a14);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
    OUTLINED_FUNCTION_72();
    sub_1DC51722C();
    v67 = OUTLINED_FUNCTION_146_4();
    v68(v67);
    v69 = swift_allocBox();
    v71 = OUTLINED_FUNCTION_110_6(v69, v70);
    v72(v71, v145, v144);
    v73 = v146;
    *v146 = v56;
    v74 = sub_1DC5172AC();
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_59_2();
    v75();
    OUTLINED_FUNCTION_61();
    v79 = v74;
LABEL_6:
    __swift_storeEnumTagSinglePayload(v76, v77, v78, v79);
    goto LABEL_7;
  }

  v80 = sub_1DC51274C();
  v81 = OUTLINED_FUNCTION_109_5();
  v82(v81);
  if ((v80 & 1) == 0)
  {
    sub_1DC5172AC();
    v73 = v146;
    OUTLINED_FUNCTION_19();
    goto LABEL_6;
  }

  sub_1DC51282C();
  OUTLINED_FUNCTION_147_3();
  sub_1DC5127EC();
  v83 = OUTLINED_FUNCTION_54_4();
  v57(v83);
  v84 = sub_1DC51272C();
  v85 = OUTLINED_FUNCTION_109_5();
  v86(v85);
  *v145 = v84 & 1;
  (*(v143 + 104))(v145, *MEMORY[0x1E69DADC0], v144);
  v87 = swift_allocBox();
  v89 = OUTLINED_FUNCTION_110_6(v87, v88);
  v90(v89, v145, v144);
  v73 = v146;
  *v146 = v84;
  v91 = sub_1DC5172AC();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_59_2();
  v92();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v93, v94, v95, v91);
LABEL_7:
  if ((sub_1DC51286C() & 1) != 0 && (sub_1DC51284C(), v96 = OUTLINED_FUNCTION_49_13(), v97(v96), OUTLINED_FUNCTION_11_26(), sub_1DC3FE998(v98, v99), OUTLINED_FUNCTION_30_6(), sub_1DC5179EC(), OUTLINED_FUNCTION_30_6(), sub_1DC5179EC(), OUTLINED_FUNCTION_154_2(), v100 = OUTLINED_FUNCTION_35_0(), v147(v100), v101 = OUTLINED_FUNCTION_212(), v147(v101), OUTLINED_FUNCTION_105_2(), v102))
  {
    v103 = MEMORY[0x1E69A9008];
  }

  else if ((sub_1DC51286C() & 1) != 0 && (sub_1DC51284C(), v104 = OUTLINED_FUNCTION_49_13(), v105(v104), OUTLINED_FUNCTION_11_26(), sub_1DC3FE998(v106, v107), OUTLINED_FUNCTION_30_6(), sub_1DC5179EC(), OUTLINED_FUNCTION_30_6(), sub_1DC5179EC(), OUTLINED_FUNCTION_154_2(), v108 = OUTLINED_FUNCTION_35_0(), v147(v108), v109 = OUTLINED_FUNCTION_212(), v147(v109), OUTLINED_FUNCTION_105_2(), v102))
  {
    v103 = MEMORY[0x1E69A9050];
  }

  else
  {
    v110 = sub_1DC51286C();
    if ((v110 & 1) == 0 || (sub_1DC51284C(), v113 = OUTLINED_FUNCTION_49_13(), v114(v113), OUTLINED_FUNCTION_11_26(), sub_1DC3FE998(v115, v116), OUTLINED_FUNCTION_30_6(), sub_1DC5179EC(), OUTLINED_FUNCTION_30_6(), sub_1DC5179EC(), v117 = *(v148 + 8), v118 = OUTLINED_FUNCTION_35_0(), v117(v118), v119 = OUTLINED_FUNCTION_212(), v117(v119), OUTLINED_FUNCTION_105_2(), !v102))
    {
      v136 = OUTLINED_FUNCTION_113_5(v110, v111, v112);
      OUTLINED_FUNCTION_33_1(&type metadata for NluTypesConversionException, v136);
      OUTLINED_FUNCTION_54_14(v137, 0xD00000000000004ELL);
      sub_1DC28EB30(v73, &qword_1ECC7BFF8, &qword_1DC522580);
      goto LABEL_21;
    }

    v103 = MEMORY[0x1E69A9060];
  }

  (*(v141 + 104))(v140, *v103, v142);
  sub_1DC516CCC();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v120, v121, v122, v123);
  sub_1DC28F3B8(v73, v139, &qword_1ECC7BFF8, &qword_1DC522580);
  sub_1DC516AEC();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v124, v125, v126, v127);
  v128 = OUTLINED_FUNCTION_54_4();
  v129(v128);
  sub_1DC516BDC();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v130, v131, v132, v133);
  sub_1DC516BFC();
  v134 = OUTLINED_FUNCTION_121_0();
  v135(v134);
  sub_1DC28EB30(v73, &qword_1ECC7BFF8, &qword_1DC522580);
LABEL_21:
  OUTLINED_FUNCTION_141_3();
  OUTLINED_FUNCTION_26_0();
}

void Siri_Nlu_External_NluRouter_SpanMatchedEntity.toSwiftSpanMatchedEntity()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D6E8, &unk_1DC5293A0);
  OUTLINED_FUNCTION_10(v1);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_12();
  v45 = sub_1DC516B8C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  v47 = v4;
  OUTLINED_FUNCTION_12();
  v5 = sub_1DC51296C();
  OUTLINED_FUNCTION_0();
  v46 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();
  sub_1DC51257C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  OUTLINED_FUNCTION_10(v9);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_129();
  sub_1DC51297C();
  Siri_Nlu_External_NluRouter_TypedValue.toSwiftTypedValue()();
  if (v49)
  {
    v11 = OUTLINED_FUNCTION_30();
    v12(v11);
  }

  else
  {
    v44 = v5;
    v50 = v0;
    v13 = v47;
    v14 = OUTLINED_FUNCTION_30();
    v15(v14);
    if (*(sub_1DC51268C() + 16))
    {
      v43 = *(v46 + 16);
      OUTLINED_FUNCTION_24();
      v19 = v17 + v18;
      v42 = *(v20 + 56);
      v21 = MEMORY[0x1E69E7CC0];
      v22 = v44;
      v23 = v50;
      do
      {
        v48 = v16;
        v43(v23, v19, v22);
        sub_1DC51292C();
        sub_1DC5128EC();

        sub_1DC5128EC();

        sub_1DC5128EC();
        v24 = v21;
        sub_1DC51289C();
        sub_1DC5128BC();
        sub_1DC516BEC();
        OUTLINED_FUNCTION_19();
        __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
        sub_1DC51290C();
        v23 = v50;
        v22 = v44;
        sub_1DC516B5C();
        v29 = OUTLINED_FUNCTION_151();
        v30(v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = OUTLINED_FUNCTION_13_0();
          v24 = sub_1DC3FDD88(v37, v38, v39, v21);
        }

        v32 = v24[2];
        v31 = v24[3];
        v33 = v24;
        if (v32 >= v31 >> 1)
        {
          v40 = OUTLINED_FUNCTION_26(v31);
          v33 = sub_1DC3FDD88(v40, v32 + 1, 1, v41);
        }

        v33[2] = v32 + 1;
        v21 = v33;
        OUTLINED_FUNCTION_22_0();
        (*(v36 + 32))(v34 + v35 + *(v36 + 72) * v32, v13, v45);
        v19 += v42;
        v16 = v48 - 1;
      }

      while (v48 != 1);
    }

    OUTLINED_FUNCTION_51();
    sub_1DC516C4C();
  }

  OUTLINED_FUNCTION_141_3();
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.toSwiftEntityMatch()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D6E8, &unk_1DC5293A0);
  OUTLINED_FUNCTION_10(v0);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_11_1();
  sub_1DC51292C();
  sub_1DC5128EC();

  sub_1DC5128EC();

  sub_1DC5128EC();
  sub_1DC51289C();
  sub_1DC5128BC();
  sub_1DC516BEC();
  OUTLINED_FUNCTION_149_3();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  sub_1DC51290C();
  OUTLINED_FUNCTION_54_2();
  return sub_1DC516B5C();
}

void Siri_Nlu_External_NluRouter_TypedValue.toSwiftTypedValue()()
{
  OUTLINED_FUNCTION_28_1();
  v105 = v2;
  sub_1DC5172FC();
  OUTLINED_FUNCTION_0();
  v95 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  v84 = v5;
  OUTLINED_FUNCTION_12();
  sub_1DC51236C();
  OUTLINED_FUNCTION_0();
  v92 = v7;
  v94 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v91 = v8;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v87 = v10;
  OUTLINED_FUNCTION_12();
  v89 = sub_1DC51239C();
  OUTLINED_FUNCTION_0();
  v86 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  v15 = v14;
  OUTLINED_FUNCTION_12();
  v103 = sub_1DC5123EC();
  OUTLINED_FUNCTION_0();
  v90 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v88 = v18;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_23_1();
  v85 = v20;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_38_3();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D710, &qword_1DC5293D8);
  OUTLINED_FUNCTION_10(v22);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20_0(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D208, &qword_1DC5293D0);
  OUTLINED_FUNCTION_10(v25);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_12();
  sub_1DC51728C();
  OUTLINED_FUNCTION_0();
  v98 = v28;
  v99 = v27;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_1();
  v96 = v29;
  OUTLINED_FUNCTION_12();
  v101 = sub_1DC51246C();
  OUTLINED_FUNCTION_0();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  sub_1DC5124FC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_3_2();
  if (sub_1DC51250C())
  {
    sub_1DC51254C();
    sub_1DC51247C();
    v34 = OUTLINED_FUNCTION_113_0();
    v104 = v35;
    v35(v34);
    v36 = sub_1DC51244C();
    v37 = *(v31 + 8);
    v37(v1, v101);
    sub_1DC51254C();
    if (v36)
    {
      sub_1DC51247C();
      v38 = OUTLINED_FUNCTION_113_0();
      v104(v38);
      sub_1DC51242C();
      OUTLINED_FUNCTION_192();
      v37(v1, v101);
      sub_1DC51734C();
      OUTLINED_FUNCTION_19();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
      v43 = v96;
      OUTLINED_FUNCTION_43();
      sub_1DC51722C();
LABEL_8:
      v59 = OUTLINED_FUNCTION_146_4();
      v60(v59);
      v61 = swift_allocBox();
      v63 = OUTLINED_FUNCTION_110_6(v61, v62);
      v64(v63, v43, v99);
LABEL_9:
      *v105 = v36;
      v54 = sub_1DC5172AC();
      OUTLINED_FUNCTION_35();
      OUTLINED_FUNCTION_59_2();
      v65();
      goto LABEL_10;
    }

    v56 = sub_1DC51241C();
    v57 = OUTLINED_FUNCTION_113_0();
    v104(v57);
    sub_1DC51254C();
    if (v56)
    {
      v36 = sub_1DC5123FC();
      v58 = OUTLINED_FUNCTION_113_0();
      v104(v58);
      v43 = v96;
      *v96 = v36 & 1;
      goto LABEL_8;
    }

    v70 = sub_1DC5124DC();
    v71 = OUTLINED_FUNCTION_113_0();
    v104(v71);
    if (v70)
    {
      v36 = swift_allocBox();
      v73 = v72;
      v74 = objc_allocWithZone(MEMORY[0x1E696E948]);
      v75 = OUTLINED_FUNCTION_38_2();
      sub_1DC3FD6BC(v75, 0, 2, 0);
      OUTLINED_FUNCTION_38_2();
      sub_1DC51082C();
      OUTLINED_FUNCTION_19();
      __swift_storeEnumTagSinglePayload(v76, v77, v78, v79);
      v80 = objc_allocWithZone(MEMORY[0x1E696E940]);
      v83 = MEMORY[0x1E69E7CC0];
      v81 = OUTLINED_FUNCTION_151();
      sub_1DC3FD740(v81, v82, 0, 0, 0, 0, 0, 0, 0, v83, 0);
      sub_1DC51725C();
      (*(v98 + 104))(v73, *MEMORY[0x1E69DADE8], v99);
      goto LABEL_9;
    }

LABEL_13:
    sub_1DC5172AC();
    OUTLINED_FUNCTION_19();
    goto LABEL_14;
  }

  if ((sub_1DC51253C() & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_1DC5171DC();
  v100 = swift_allocBox();
  v44 = swift_allocObject();
  sub_1DC51251C();
  sub_1DC5123CC();
  v102 = *(v90 + 8);
  v102(v0, v103);
  sub_1DC51238C();
  v97 = *(v86 + 8);
  v97(v15, v89);
  v45 = sub_1DC51232C();
  v47 = v46;
  v93 = *(v92 + 8);
  v93(v87, v94);
  v44[2] = v45;
  v44[3] = v47;
  sub_1DC51251C();
  sub_1DC5123CC();
  v102(v85, v103);
  sub_1DC51238C();
  v48 = OUTLINED_FUNCTION_75();
  (v97)(v48);
  sub_1DC51234C();
  OUTLINED_FUNCTION_192();
  v49 = OUTLINED_FUNCTION_54_2();
  (v93)(v49);
  v44[4] = v86 + 8;
  v44[5] = v91;
  *v84 = v44;
  (*(v95 + 104))();
  sub_1DC51251C();
  sub_1DC5123AC();
  OUTLINED_FUNCTION_192();
  v102(v88, v103);
  sub_1DC51734C();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
  sub_1DC5171BC();
  *v105 = v100;
  v54 = sub_1DC5172AC();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_59_2();
  v55();
LABEL_10:
  OUTLINED_FUNCTION_61();
  v69 = v54;
LABEL_14:
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
  OUTLINED_FUNCTION_26_0();
}

void Siri_Nlu_External_NluRouter_TurnSummary.toSwiftTurnSummary()()
{
  OUTLINED_FUNCTION_28_1();
  v68 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_25();
  v67 = v5;
  OUTLINED_FUNCTION_12();
  sub_1DC512DAC();
  OUTLINED_FUNCTION_0();
  v65 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  sub_1DC5125EC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_65();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v66 = v11;
  OUTLINED_FUNCTION_22();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v65 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v65 - v16;
  sub_1DC5125FC();
  v18 = OUTLINED_FUNCTION_30_6();
  v20 = v19(v18);
  if (v20 == *MEMORY[0x1E69D0D40])
  {
    type metadata accessor for TurnSummary.ExecutionSource(0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
    v25 = v17;
    goto LABEL_10;
  }

  if (v20 == *MEMORY[0x1E69D0D38])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
    v25 = v17;
    v26 = OUTLINED_FUNCTION_98_6();
LABEL_9:
    __swift_storeEnumTagSinglePayload(v26, v27, 4, v28);
    type metadata accessor for TurnSummary.ExecutionSource(0);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
    goto LABEL_10;
  }

  if (v20 == *MEMORY[0x1E69D0D48])
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
    v25 = v17;
    v26 = v17;
    v27 = 2;
    goto LABEL_9;
  }

  if (v20 == *MEMORY[0x1E69D0D50])
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
    v25 = v17;
    v26 = v17;
    v27 = 3;
    goto LABEL_9;
  }

  if (v20 != *MEMORY[0x1E69D0D30])
  {
    OUTLINED_FUNCTION_76_7();
    v52 = sub_1DC3FDFC0(v49, v50, v51);
    v53 = OUTLINED_FUNCTION_33_1(&type metadata for NluTypesConversionException, v52);
    *v54 = 0xD000000000000026;
    v54[1] = v0;
    OUTLINED_FUNCTION_35_2(v53, v54);
    v55 = OUTLINED_FUNCTION_30_6();
    v56(v55);
    goto LABEL_11;
  }

  sub_1DC5125CC();
  sub_1DC3F45A0(v15);
  if (v1)
  {
    v47 = OUTLINED_FUNCTION_176();
    v48(v47);
    goto LABEL_11;
  }

  v57 = OUTLINED_FUNCTION_176();
  v58(v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
  v59 = OUTLINED_FUNCTION_149_3();
  __swift_storeEnumTagSinglePayload(v59, 0, 4, v60);
  type metadata accessor for TurnSummary.ExecutionSource(0);
  OUTLINED_FUNCTION_149_3();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  v25 = v17;
  sub_1DC3FE014(v15, v17);
LABEL_10:
  v33 = sub_1DC5125AC();
  v35 = v34;
  v36 = sub_1DC51258C();
  v38 = v37;
  v39 = sub_1DC51258C();
  v41 = v40;
  sub_1DC28F3B8(v25, v66, &qword_1ECC7BFC8, &unk_1DC524050);
  sub_1DC5157EC();
  v42 = v67;
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  sub_1DC430668(v33, v35, v36, v38, v39, v41, 2, v68, v42);
  sub_1DC28EB30(v25, &qword_1ECC7BFC8, &unk_1DC524050);
LABEL_11:
  OUTLINED_FUNCTION_141_3();
  OUTLINED_FUNCTION_26_0();
}

uint64_t sub_1DC3F45A0@<X0>(uint64_t a1@<X8>)
{
  sub_1DC512C1C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_4();
  if ((sub_1DC512C4C() & 1) == 0)
  {
    OUTLINED_FUNCTION_76_7();
    v17 = sub_1DC3FDFC0(v14, v15, v16);
    OUTLINED_FUNCTION_33_1(&type metadata for NluTypesConversionException, v17);
    OUTLINED_FUNCTION_111_3();
    v13 = v18 | 1;
    goto LABEL_5;
  }

  sub_1DC512C2C();
  v4 = OUTLINED_FUNCTION_16();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x1E69D0DE0])
  {
    OUTLINED_FUNCTION_76_7();
    v10 = sub_1DC3FDFC0(v7, v8, v9);
    OUTLINED_FUNCTION_33_1(&type metadata for NluTypesConversionException, v10);
    OUTLINED_FUNCTION_111_3();
LABEL_5:
    *v12 = v13;
    v12[1] = v1;
    return OUTLINED_FUNCTION_35_2(v11, v12);
  }

  if (v6 == *MEMORY[0x1E69D0DC8])
  {
    v20 = MEMORY[0x1E69D0720];
LABEL_14:
    v21 = *v20;
    sub_1DC5161CC();
    OUTLINED_FUNCTION_35();
    return (*(v22 + 104))(a1, v21);
  }

  if (v6 == *MEMORY[0x1E69D0DD8])
  {
    v20 = MEMORY[0x1E69D0730];
    goto LABEL_14;
  }

  if (v6 == *MEMORY[0x1E69D0DC0])
  {
    v20 = MEMORY[0x1E69D0718];
    goto LABEL_14;
  }

  if (v6 == *MEMORY[0x1E69D0DD0])
  {
    v20 = MEMORY[0x1E69D0728];
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_76_7();
  v26 = sub_1DC3FDFC0(v23, v24, v25);
  OUTLINED_FUNCTION_33_1(&type metadata for NluTypesConversionException, v26);
  OUTLINED_FUNCTION_111_3();
  *v28 = v27 + 2;
  v28[1] = v1;
  OUTLINED_FUNCTION_35_2(v29, v28);
  v30 = OUTLINED_FUNCTION_16();
  return v31(v30);
}

uint64_t sub_1DC3F47D0()
{
  v3 = v1;
  OUTLINED_FUNCTION_57_0();
  v4 = sub_1DC512CFC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  OUTLINED_FUNCTION_32_5();
  v6(v2, v3, v4);
  v7 = OUTLINED_FUNCTION_62_2();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x1E69D0DE8])
  {
    sub_1DC515F4C();
    OUTLINED_FUNCTION_19();
    return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  if (v9 == *MEMORY[0x1E69D0DF0])
  {
    v14 = *MEMORY[0x1E69D0620];
    v15 = sub_1DC515F4C();
    OUTLINED_FUNCTION_35();
    (*(v16 + 104))(v0, v14, v15);
    OUTLINED_FUNCTION_61();
    v13 = v15;
    return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  sub_1DC515F4C();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = OUTLINED_FUNCTION_62_2();
  return v23(v22);
}

void sub_1DC3F497C()
{
  OUTLINED_FUNCTION_33();
  v28 = v2;
  v29 = v3;
  v5 = v4;
  v6 = sub_1DC511A5C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v10 = OUTLINED_FUNCTION_79();
  v5(v10);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_18();
  v12 = sub_1DC511AAC();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_31();
  sub_1DC511A9C();
  v16 = OUTLINED_FUNCTION_89();
  v17(v16);
  v18 = OUTLINED_FUNCTION_50_0();
  if (v19(v18) == *v28)
  {
    (*(v8 + 104))(v0, *MEMORY[0x1E69D0B90], v6);
    sub_1DC511A7C();
    (*(v14 + 32))(v29, v1, v12);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v12);
  }

  else
  {
    (*(v14 + 8))(v1, v12);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v12);
    v26 = OUTLINED_FUNCTION_50_0();
    v27(v26);
  }

  OUTLINED_FUNCTION_34();
}

void NLRouterServiceRequest.toNLUTypesNLRouterServiceRequest()()
{
  OUTLINED_FUNCTION_28_1();
  v2 = v1;
  v3 = sub_1DC512ACC();
  v4 = OUTLINED_FUNCTION_10(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v5 = sub_1DC512FDC();
  v6 = OUTLINED_FUNCTION_10(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v7);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25();
  v58 = v9;
  v10 = OUTLINED_FUNCTION_12();
  v57 = type metadata accessor for NLRouterTurnProbingResult(v10);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_1();
  v53 = v12;
  OUTLINED_FUNCTION_12();
  v13 = sub_1DC512A6C();
  v14 = OUTLINED_FUNCTION_10(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_10(v15);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25();
  v54 = v17;
  v18 = OUTLINED_FUNCTION_12();
  v55 = type metadata accessor for NLRouterTurnContext(v18);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_1();
  v52 = v20;
  OUTLINED_FUNCTION_12();
  v60 = sub_1DC5126CC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  sub_1DC512BEC();
  v56 = type metadata accessor for NLRouterServiceRequest(0);
  v59 = v0;
  v25 = *(v0 + v56[6]);
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = (v25 + 40);
    do
    {
      v28 = *v27;
      v29 = v27[3];
      v30 = *(v27 + 32);
      v61[0] = *(v27 - 1);
      v61[1] = v28;
      v62 = *(v27 + 1);
      v63 = v29;
      v64 = v30;
      RequestSummary.toNLUTypesRequestSummary()();
      v31 = v2;
      v32 = sub_1DC512B7C();
      v34 = v33;
      v35 = *v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v34 = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v41 = OUTLINED_FUNCTION_13_0();
        v35 = sub_1DC3FE3F0(v41, v42, v43, v35);
        *v34 = v35;
      }

      v38 = *(v35 + 2);
      v37 = *(v35 + 3);
      if (v38 >= v37 >> 1)
      {
        v44 = OUTLINED_FUNCTION_26(v37);
        v35 = sub_1DC3FE3F0(v44, v38 + 1, 1, v35);
        *v34 = v35;
      }

      v27 += 6;
      *(v35 + 2) = v38 + 1;
      OUTLINED_FUNCTION_22_0();
      (*(v40 + 32))(&v35[v39 + *(v40 + 72) * v38], v24, v60);
      v32(v61, 0);
      --v26;
      v2 = v31;
    }

    while (v26);
  }

  OUTLINED_FUNCTION_36();
  sub_1DC512B5C();
  sub_1DC28F3B8(v59 + v56[5], v54, &qword_1ECC7BFD0, &unk_1DC522550);
  v45 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_39(v45, v46, v55);
  if (v47)
  {
    sub_1DC28EB30(v54, &qword_1ECC7BFD0, &unk_1DC522550);
  }

  else
  {
    sub_1DC3FE514(v54, v52);
    sub_1DC512A5C();

    sub_1DC5126EC();

    sub_1DC512A0C();

    sub_1DC512A4C();

    sub_1DC512A2C();
    sub_1DC512AEC();
    sub_1DC3FE56C(v52, type metadata accessor for NLRouterTurnContext);
  }

  OUTLINED_FUNCTION_36();
  sub_1DC512BDC();

  OUTLINED_FUNCTION_36();
  sub_1DC512B3C();
  sub_1DC28F3B8(v59 + v56[8], v58, &qword_1ECC7C158, &unk_1DC5234A0);
  v48 = OUTLINED_FUNCTION_98_6();
  OUTLINED_FUNCTION_39(v48, v49, v57);
  if (v47)
  {
    sub_1DC28EB30(v58, &qword_1ECC7C158, &unk_1DC5234A0);
  }

  else
  {
    sub_1DC3FE514(v58, v53);
    NLRouterTurnProbingResult.toNLUTypesNLRouterTurnProbingResult()();
    OUTLINED_FUNCTION_120_1();
    sub_1DC512B0C();
    sub_1DC3FE56C(v53, type metadata accessor for NLRouterTurnProbingResult);
  }

  v50 = *(v59 + v56[9]);
  if (v50)
  {
    v61[0] = *(v59 + v56[9]);
    v51 = v50;
    NLRouterCurrentUserQueryDecoration.toNLUTypesQueryDecorationOutput()();
    sub_1DC512BAC();
  }

  OUTLINED_FUNCTION_26_0();
}

void RequestSummary.toNLUTypesRequestSummary()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_57_0();
  v28 = sub_1DC51262C();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_2();
  v6 = type metadata accessor for TurnSummary(0);
  v7 = OUTLINED_FUNCTION_52(v6);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v10 = *(v0 + 32);
  sub_1DC5126BC();
  v11 = *(v10 + 16);
  if (v11)
  {
    OUTLINED_FUNCTION_24();
    v13 = v10 + v12;
    v27 = *(v9 + 72);
    do
    {
      v14 = OUTLINED_FUNCTION_89();
      sub_1DC2DACB8(v14, v15);
      TurnSummary.toNLUTypesTurnSummary()();
      sub_1DC3FE56C(v2, type metadata accessor for TurnSummary);
      v16 = sub_1DC51267C();
      v18 = v17;
      v19 = *v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v18 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = OUTLINED_FUNCTION_13_0();
        v19 = sub_1DC3FE084(v24, v25, v26, v19);
        *v18 = v19;
      }

      v22 = *(v19 + 2);
      v21 = *(v19 + 3);
      if (v22 >= v21 >> 1)
      {
        v19 = sub_1DC3FE084((v21 > 1), v22 + 1, 1, v19);
        *v18 = v19;
      }

      *(v19 + 2) = v22 + 1;
      OUTLINED_FUNCTION_24();
      (*(v4 + 32))(&v19[v23 + *(v4 + 72) * v22], v1, v28);
      v16(&v29, 0);
      v13 += v27;
      --v11;
    }

    while (v11);
  }

  OUTLINED_FUNCTION_56_0();
  sub_1DC5126AC();
  OUTLINED_FUNCTION_34();
}

uint64_t NLRouterTurnContext.toNLUTypesNLRouterTurnContext()(uint64_t a1)
{
  sub_1DC512A5C();

  sub_1DC5126EC();

  sub_1DC512A0C();

  sub_1DC512A4C();
  type metadata accessor for NLRouterTurnContext(0);

  return sub_1DC512A2C();
}

void NLRouterTurnProbingResult.toNLUTypesNLRouterTurnProbingResult()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_57_0();
  sub_1DC51266C();
  OUTLINED_FUNCTION_0();
  v29 = v3;
  v30 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  v28 = v4;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_136_3();
  v6 = sub_1DC51270C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v16);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_28_0();
  sub_1DC512FCC();
  v31 = v0;
  v18 = OUTLINED_FUNCTION_72();
  sub_1DC28F3B8(v18, v19, &qword_1ECC7C160, qword_1DC5233B0);
  v20 = type metadata accessor for NLRouterNLParseResponse(0);
  OUTLINED_FUNCTION_39(v0, 1, v20);
  if (v21)
  {
    sub_1DC28EB30(v0, &qword_1ECC7C160, qword_1DC5233B0);
  }

  else
  {

    sub_1DC3FE56C(v0, type metadata accessor for NLRouterNLParseResponse);
    sub_1DC5126FC();
    sub_1DC5126EC();
    (*(v8 + 16))(v12, v15, v6);
    sub_1DC512F9C();
    v22 = OUTLINED_FUNCTION_45_0();
    v23(v22);
  }

  if (*(v31 + *(type metadata accessor for NLRouterTurnProbingResult(0) + 20) + 8))
  {

    sub_1DC51265C();
    OUTLINED_FUNCTION_62_2();
    sub_1DC51264C();
    v24 = v29;
    v25 = OUTLINED_FUNCTION_48_0();
    v26 = v30;
    v27(v25);
    OUTLINED_FUNCTION_235_0();
    sub_1DC512F7C();
    (*(v24 + 8))(v1, v26);
  }

  OUTLINED_FUNCTION_34();
}

void NLRouterCurrentUserQueryDecoration.toNLUTypesQueryDecorationOutput()()
{
  OUTLINED_FUNCTION_33();
  v68 = v4;
  sub_1DC5129CC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v78 = sub_1DC516C7C();
  OUTLINED_FUNCTION_0();
  v67 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  v77 = v8;
  OUTLINED_FUNCTION_12();
  v75 = sub_1DC51288C();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_54_0();
  v12 = sub_1DC516C3C();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_3_2();
  v16 = *v1;
  v17 = sub_1DC516D8C();
  if (v17)
  {
    v18 = *(v17 + 16);
    if (v18)
    {
      v65 = v17;
      v66 = v16;
      v19 = v14 + 16;
      OUTLINED_FUNCTION_24();
      v22 = v20 + v21;
      v70 = *(v19 + 56);
      v71 = v23;
      v72 = v19;
      v24 = (v19 - 8);
      v69 = v10 + 32;
      v25 = MEMORY[0x1E69E7CC0];
      v73 = v3;
      do
      {
        v26 = OUTLINED_FUNCTION_42_2();
        v27 = v71(v26);
        RetrievedContext.toNLUTypesRetrievedContext()(v27, v28, v29, v30, v31, v32, v33, v34, v65, v66, v67, v68, v69, v70, v71, v72, v73, v75, v77, v78);
        (*v24)(v2, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = OUTLINED_FUNCTION_13_0();
          v25 = sub_1DC3FE2CC(v38, v39, v40, v25);
        }

        v36 = *(v25 + 2);
        v35 = *(v25 + 3);
        if (v36 >= v35 >> 1)
        {
          v41 = OUTLINED_FUNCTION_12_23(v35);
          v25 = sub_1DC3FE2CC(v41, v42, v43, v25);
        }

        *(v25 + 2) = v36 + 1;
        OUTLINED_FUNCTION_24();
        (*(v10 + 32))(&v25[v37 + *(v10 + 72) * v36], v0, v75);
        v22 += v70;
        --v18;
        v3 = v73;
      }

      while (v18);
    }
  }

  v44 = sub_1DC516D7C();
  if (v44)
  {
    v45 = *(v44 + 16);
    if (v45)
    {
      OUTLINED_FUNCTION_24();
      v48 = v46 + v47;
      v74 = *(v49 + 56);
      v76 = v50;
      v51 = MEMORY[0x1E69E7CC0];
      do
      {
        v52 = OUTLINED_FUNCTION_48_0();
        v76(v52);
        SpanMatchedEntity.toNLUTypesSpanMacthedEntity()();
        v53 = OUTLINED_FUNCTION_288();
        v54(v53);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = OUTLINED_FUNCTION_13_0();
          v51 = sub_1DC3FE1A8(v59, v60, v61, v51);
        }

        v56 = *(v51 + 2);
        v55 = *(v51 + 3);
        if (v56 >= v55 >> 1)
        {
          v62 = OUTLINED_FUNCTION_12_23(v55);
          v51 = sub_1DC3FE1A8(v62, v63, v64, v51);
        }

        *(v51 + 2) = v56 + 1;
        OUTLINED_FUNCTION_22_0();
        (*(v58 + 32))(&v51[v57 + *(v58 + 72) * v56], v3);
        v48 += v74;
        --v45;
      }

      while (v45);
    }
  }

  sub_1DC512ABC();
  sub_1DC512AAC();
  sub_1DC512A8C();
  OUTLINED_FUNCTION_34();
}

Swift::Void __swiftcall NLRouterServiceRequest.logToFeatureStore(for:)(Swift::String a1)
{
  OUTLINED_FUNCTION_33();
  v43 = v1;
  v44 = v2;
  OUTLINED_FUNCTION_162_5(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_31();
  sub_1DC512BFC();
  OUTLINED_FUNCTION_0();
  v45 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_65();
  v6 = [objc_opt_self() processInfo];
  v7 = [v6 arguments];

  sub_1DC517A1C();
  OUTLINED_FUNCTION_118_3("/System/Developer/usr/local/bin/xctest");
  LOBYTE(v7) = OUTLINED_FUNCTION_164_2();

  if (v7)
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v8 = sub_1DC296DBC();
    OUTLINED_FUNCTION_161_3(v8, &dword_1DC287000, v9, "Not logging to featureStore as this is a xctest process");
LABEL_3:

    goto LABEL_9;
  }

  NLRouterServiceRequest.toNLUTypesNLRouterServiceRequest()();
  v10 = v6;
  if (!v6)
  {
    sub_1DC5166DC();
    sub_1DC3FE998(&qword_1ECC7BDB0, MEMORY[0x1E69D0DB8]);
    OUTLINED_FUNCTION_117_0();
    sub_1DC51673C();
    v21 = OUTLINED_FUNCTION_23_22();
    v22(v21);
    v23 = sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v24 = sub_1DC296DBC();
    if (os_log_type_enabled(v24, v23))
    {
      v25 = OUTLINED_FUNCTION_63();
      v26 = swift_slowAlloc();
      v46 = v26;
      *v25 = 136315138;
      v27 = OUTLINED_FUNCTION_34_0();
      *(v25 + 4) = sub_1DC291244(v27, v28, v29);
      OUTLINED_FUNCTION_159_2(&dword_1DC287000, v30, v31, "logToFeatureStore NLRouterServiceRequest proto json: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();
    }

    v32 = objc_allocWithZone(MEMORY[0x1E699C0D8]);
    v33 = sub_1DC3FD910(0xD000000000000032, 0x80000001DC545C30);
    v34 = objc_allocWithZone(MEMORY[0x1E699C0D0]);

    v35 = OUTLINED_FUNCTION_34_0();
    v8 = sub_1DC3FD974(v35, v36, v43, v44, 0);
    if (!v33)
    {
      v40 = OUTLINED_FUNCTION_25_15();
      v41(v40);
      goto LABEL_3;
    }

    v46 = 0;
    if ([v33 insert:v8 error:&v46])
    {
      v37 = *(v45 + 8);
      v38 = v46;
      v39 = OUTLINED_FUNCTION_30_6();
      v37(v39);

      goto LABEL_9;
    }

    v42 = v46;
    v10 = sub_1DC51085C();

    swift_willThrow();
    v11 = OUTLINED_FUNCTION_25_15();
    v12(v11);
  }

  v13 = sub_1DC517B9C();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v14 = sub_1DC296DBC();
  if (os_log_type_enabled(v14, v13))
  {
    v15 = OUTLINED_FUNCTION_63();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = v10;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    OUTLINED_FUNCTION_36_4(&dword_1DC287000, v19, v20, "Error logging NLRouterServiceRequest to FeatureStore: %@");
    sub_1DC28EB30(v16, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  else
  {
  }

LABEL_9:
  OUTLINED_FUNCTION_34();
}

void RetrievedContext.toNLUTypesRetrievedContext()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v27 = v26;
  v188 = sub_1DC51271C();
  OUTLINED_FUNCTION_0();
  v186 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_1();
  v187 = v30;
  OUTLINED_FUNCTION_12();
  v189 = sub_1DC516AFC();
  OUTLINED_FUNCTION_0();
  v184 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_15();
  v183 = v33;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_62();
  v191 = v35;
  OUTLINED_FUNCTION_12();
  v170 = sub_1DC51279C();
  OUTLINED_FUNCTION_0();
  v167 = v36;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v39);
  v180 = sub_1DC5127DC();
  OUTLINED_FUNCTION_0();
  v177 = v40;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_15();
  v172 = v42;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_62();
  v173 = v44;
  OUTLINED_FUNCTION_12();
  sub_1DC51281C();
  OUTLINED_FUNCTION_0();
  v175 = v46;
  v176 = v45;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_62();
  v171 = v48;
  OUTLINED_FUNCTION_12();
  v169 = sub_1DC51724C();
  OUTLINED_FUNCTION_0();
  v168 = v49;
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v51);
  v182 = sub_1DC51728C();
  OUTLINED_FUNCTION_0();
  v179 = v52;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_23_1();
  v174 = v55;
  OUTLINED_FUNCTION_22();
  v57 = MEMORY[0x1EEE9AC00](v56);
  v59 = v164 - v58;
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_62();
  v178 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v62 = OUTLINED_FUNCTION_10(v61);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_8();
  v65 = v63 - v64;
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_38_3();
  v67 = sub_1DC5172AC();
  OUTLINED_FUNCTION_0();
  v69 = v68;
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_8();
  v73 = (v71 - v72);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_23_1();
  v181 = v75;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_53_1();
  MEMORY[0x1EEE9AC00](v77);
  v79 = v164 - v78;
  v190 = v27;
  sub_1DC51287C();
  v185 = v25;
  sub_1DC516C1C();
  v80 = OUTLINED_FUNCTION_68_8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v80, v81, v67);
  v83 = MEMORY[0x1E69DAE70];
  if (EnumTagSinglePayload == 1)
  {
    v59 = v69;
    sub_1DC28EB30(v21, &qword_1ECC7BFF8, &qword_1DC522580);
  }

  else
  {
    OUTLINED_FUNCTION_135_2();
    v84(v79, v21, v67);
    (*(v69 + 2))(v22, v79, v67);
    v85 = OUTLINED_FUNCTION_149();
    v87 = v86(v85);
    v88 = v189;
    if (v87 != *v83)
    {
      v59 = v69;
      v114 = *(v69 + 1);
      v114(v79, v67);
      v115 = OUTLINED_FUNCTION_149();
      (v114)(v115);
      goto LABEL_10;
    }

    v165 = v73;
    v89 = OUTLINED_FUNCTION_149();
    v90(v89);
    v91 = swift_projectBox();
    v164[1] = v69;
    v92 = v179;
    v93 = *(v179 + 16);
    v94 = v182;
    v93(v178, v91, v182);

    v95 = OUTLINED_FUNCTION_75();
    v96 = v92;
    (v93)(v95);
    v97 = OUTLINED_FUNCTION_45_0();
    if (v98(v97) == *MEMORY[0x1E69DADA8])
    {
      v99 = OUTLINED_FUNCTION_47_11();
      v100(v99);
      OUTLINED_FUNCTION_155_4();
      v101();
      v102 = v171;
      sub_1DC51280C();
      v59 = v173;
      sub_1DC5127CC();
      v103 = v166;
      sub_1DC51278C();
      sub_1DC51723C();
      sub_1DC51276C();
      v104 = v167;
      v105 = OUTLINED_FUNCTION_71_7();
      v106(v105, v103, v170);
      sub_1DC5127BC();
      (*(v177 + 16))(v172, v59, v180);
      sub_1DC5127FC();
      v107 = v176;
      v108 = OUTLINED_FUNCTION_4_26();
      v109(v108, v102, v107);
      sub_1DC51283C();
      (*(v104 + 8))(v103, v170);
      (*(v177 + 8))(v59, v180);
      (*(v175 + 8))(v102, v107);
      OUTLINED_FUNCTION_62_0();
      v110 = OUTLINED_FUNCTION_155_4();
      v111(v110, v169);
      (*(v96 + 8))(v178, v182);
      v112 = OUTLINED_FUNCTION_102_5();
      v113(v112);
    }

    else
    {
      v116 = *(v92 + 8);
      v116(v178, v94);
      v117 = OUTLINED_FUNCTION_102_5();
      v118(v117);
      v116(v59, v94);
    }

    v73 = v165;
  }

  v88 = v189;
LABEL_10:
  sub_1DC516C1C();
  OUTLINED_FUNCTION_39(v65, 1, v67);
  if (v119)
  {
    sub_1DC28EB30(v65, &qword_1ECC7BFF8, &qword_1DC522580);
  }

  else
  {
    OUTLINED_FUNCTION_96_3();
    v120 = v181;
    v121 = OUTLINED_FUNCTION_48_0();
    v122(v121);
    OUTLINED_FUNCTION_90();
    v123(v73, v120, v67);
    OUTLINED_FUNCTION_94_4();
    v124 = OUTLINED_FUNCTION_91_4();
    if (v125(v124) == *MEMORY[0x1E69DAE70])
    {
      v126 = OUTLINED_FUNCTION_91_4();
      v127(v126);
      v128 = *v73;
      v129 = swift_projectBox();
      v130 = v179;
      v131 = *(v179 + 16);
      v132 = v174;
      v133 = v182;
      v131(v174, v129, v182);

      v134 = OUTLINED_FUNCTION_83(&a17);
      v131(v134, v132, v133);
      if ((*(v130 + 88))(v128, v133) != *MEMORY[0x1E69DADC0])
      {
        v162 = *(v130 + 8);
        v162(v132, v133);
        (*(v59 + 1))(v181, v67);
        v163 = OUTLINED_FUNCTION_48_0();
        (v162)(v163);
        v146 = v183;
        goto LABEL_18;
      }

      (*(v130 + 96))(v128, v133);
      v135 = v171;
      sub_1DC51280C();
      v136 = v173;
      sub_1DC5127CC();
      sub_1DC51273C();
      v137 = v177;
      v138 = OUTLINED_FUNCTION_48_0();
      v139(v138);
      OUTLINED_FUNCTION_235_0();
      sub_1DC5127FC();
      v140 = v175;
      v141 = OUTLINED_FUNCTION_44_12();
      v142(v141);
      sub_1DC51283C();
      (*(v137 + 8))(v136, v180);
      (*(v140 + 8))(v135, v176);
      (*(v130 + 8))(v174, v182);
      (*(v59 + 1))(v181, v67);
    }

    else
    {
      v143 = *(v59 + 1);
      v144 = OUTLINED_FUNCTION_74();
      v143(v144);
      v145 = OUTLINED_FUNCTION_91_4();
      v143(v145);
    }
  }

  v146 = v183;
LABEL_18:
  sub_1DC516C2C();
  v147 = v184;
  v148 = *(v184 + 104);
  v148(v146, *MEMORY[0x1E69A9008], v88);
  OUTLINED_FUNCTION_288();
  v149 = sub_1DC2DA444();
  v150 = *(v147 + 8);
  v151 = OUTLINED_FUNCTION_51();
  v150(v151);
  v152 = OUTLINED_FUNCTION_152();
  v150(v152);
  if (v149 & 1) != 0 || (sub_1DC516C2C(), v153 = v191, v148(v146, *MEMORY[0x1E69A9050], v88), OUTLINED_FUNCTION_288(), v154 = sub_1DC2DA444(), v155 = OUTLINED_FUNCTION_51(), v150(v155), v156 = OUTLINED_FUNCTION_152(), v150(v156), (v154))
  {
    v157 = OUTLINED_FUNCTION_127_3();
    v158(v157);
  }

  else
  {
    sub_1DC516C2C();
    v148(v146, *MEMORY[0x1E69A9060], v88);
    v159 = sub_1DC2DA444();
    v160 = OUTLINED_FUNCTION_51();
    v150(v160);
    (v150)(v153, v88);
    if (v159)
    {
      v161 = MEMORY[0x1E69D0D78];
    }

    else
    {
      v161 = MEMORY[0x1E69D0D80];
    }

    (*(v186 + 104))(v187, *v161, v188);
  }

  OUTLINED_FUNCTION_120_1();
  sub_1DC51285C();
  OUTLINED_FUNCTION_34();
}

uint64_t EntityMatch.toNLUTypesEntityMatch()()
{
  sub_1DC51295C();
  sub_1DC516B4C();
  sub_1DC5128FC();
  sub_1DC516B1C();
  sub_1DC5128CC();
  sub_1DC516B0C();
  sub_1DC5128AC();
  sub_1DC516B3C();
  sub_1DC51291C();
  sub_1DC516B6C();
  sub_1DC51293C();
  sub_1DC516B2C();
  sub_1DC5128DC();
  sub_1DC516B7C();
  return sub_1DC51294C();
}

void SpanMatchedEntity.toNLUTypesSpanMacthedEntity()()
{
  OUTLINED_FUNCTION_33();
  v4 = v3;
  v255 = sub_1DC5123EC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v7);
  v272 = sub_1DC5172FC();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v12);
  v13 = sub_1DC5171DC();
  OUTLINED_FUNCTION_0();
  v279 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v17);
  v265 = sub_1DC5124BC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v20);
  v264 = sub_1DC51727C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v22);
  v259 = sub_1DC51246C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v25);
  v277 = sub_1DC5124FC();
  OUTLINED_FUNCTION_0();
  v269 = v26;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v30);
  v278 = sub_1DC51257C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v34);
  v258 = sub_1DC51724C();
  OUTLINED_FUNCTION_0();
  v257 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v37);
  sub_1DC51728C();
  OUTLINED_FUNCTION_0();
  v287 = v39;
  v288 = v38;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v45);
  v298 = sub_1DC51296C();
  OUTLINED_FUNCTION_0();
  v47 = v46;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v50 = OUTLINED_FUNCTION_10(v49);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_23_1();
  v289 = v52;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v55);
  v56 = sub_1DC5172AC();
  OUTLINED_FUNCTION_0();
  v58 = v57;
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_23_1();
  v293 = v63;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_23_1();
  v292 = v66;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v69);
  v297 = sub_1DC516B8C();
  OUTLINED_FUNCTION_0();
  v71 = v70;
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_3_2();
  v291 = v4;
  sub_1DC5129BC();
  v290 = v0;
  v73 = *(sub_1DC516C6C() + 16);
  v273 = v13;
  v270 = v9;
  if (v73)
  {
    v281 = v58;
    v282 = v56;
    v75 = *(v71 + 16);
    v74 = v71 + 16;
    v296 = v75;
    OUTLINED_FUNCTION_24();
    v78 = v76 + v77;
    v79 = *(v74 + 56);
    v294 = v47 + 32;
    v295 = v79;
    v80 = MEMORY[0x1E69E7CC0];
    do
    {
      v81 = OUTLINED_FUNCTION_42_2();
      v296(v81);
      sub_1DC51295C();
      sub_1DC516B4C();
      sub_1DC5128FC();
      sub_1DC516B1C();
      sub_1DC5128CC();
      sub_1DC516B0C();
      sub_1DC5128AC();
      sub_1DC516B3C();
      sub_1DC51291C();
      sub_1DC516B6C();
      sub_1DC51293C();
      sub_1DC516B2C();
      sub_1DC5128DC();
      sub_1DC516B7C();
      sub_1DC51294C();
      (*(v74 - 8))(v1, v297);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v85 = OUTLINED_FUNCTION_13_0();
        v80 = sub_1DC3FE5C4(v85, v86, v87, v80);
      }

      v83 = *(v80 + 2);
      v82 = *(v80 + 3);
      if (v83 >= v82 >> 1)
      {
        v88 = OUTLINED_FUNCTION_12_23(v82);
        v80 = sub_1DC3FE5C4(v88, v89, v90, v80);
      }

      *(v80 + 2) = v83 + 1;
      OUTLINED_FUNCTION_24();
      (*(v47 + 32))(&v80[v84 + *(v47 + 72) * v83], v2, v298);
      v78 += v295;
      --v73;
    }

    while (v73);

    v56 = v282;
    v58 = v281;
  }

  else
  {
  }

  sub_1DC5126EC();
  v91 = v290;
  sub_1DC516C5C();
  v92 = OUTLINED_FUNCTION_98_6();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v92, v93, v56);
  v95 = MEMORY[0x1E69DAE70];
  v96 = v287;
  v97 = v292;
  v98 = v293;
  v99 = v289;
  v100 = v286;
  if (EnumTagSinglePayload == 1)
  {
    sub_1DC28EB30(v284[1], &qword_1ECC7BFF8, &qword_1DC522580);
    v101 = v288;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_96_3();
  v102 = OUTLINED_FUNCTION_121_0();
  v103(v102);
  OUTLINED_FUNCTION_90();
  v104 = OUTLINED_FUNCTION_71_7();
  v105(v104, v283, v56);
  OUTLINED_FUNCTION_94_4();
  v101 = v288;
  if (v106(v292, v56) == *v95)
  {
    OUTLINED_FUNCTION_133_3();
    v107(v292, v56);
    v108 = swift_projectBox();
    v109 = (v287 + 16);
    v110 = *(v287 + 16);
    (v110)(v286, v108, v288);

    v111 = OUTLINED_FUNCTION_83(&v279);
    (v110)(v111, v100, v101);
    v112 = OUTLINED_FUNCTION_48_9();
    if (v113(v112) == *MEMORY[0x1E69DADA8])
    {
      v114 = OUTLINED_FUNCTION_47_11();
      v115(v114);
      (*(v257 + 32))();
      OUTLINED_FUNCTION_213();
      sub_1DC51256C();
      sub_1DC5124EC();
      sub_1DC51245C();
      sub_1DC51723C();
      sub_1DC51243C();
      OUTLINED_FUNCTION_107_5();
      v116 = OUTLINED_FUNCTION_71_7();
      v117(v116, v252, v259);
      sub_1DC51248C();
      v118 = OUTLINED_FUNCTION_46_9();
      v100 = *(v119 - 256);
      v120(v118);
      sub_1DC51255C();
      OUTLINED_FUNCTION_43_14();
      OUTLINED_FUNCTION_44_12();
      OUTLINED_FUNCTION_108_2();
      v121();
      OUTLINED_FUNCTION_165_3();
      (*(v91 + 8))(v252, v259);
      v96 = v287;
      v101 = v288;
      (*(v269 + 8))(v268, v100);
      v98 = v293;
      v91 = v290;
      (*(v110 + 8))(v280, v110);
      OUTLINED_FUNCTION_62_0();
      v122(v256, v258);
      (*(v96 + 8))(v286, v101);
      OUTLINED_FUNCTION_95_4();
      v123 = OUTLINED_FUNCTION_155_4();
      v124(v123, v56);
      v99 = v289;
      v97 = v292;
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_154_2();
    v109(v100, v101);
    OUTLINED_FUNCTION_95_4();
    v128 = OUTLINED_FUNCTION_155_4();
    v129(v128, v56);
    v130 = OUTLINED_FUNCTION_142_0();
    (v109)(v130);
    v99 = v289;
  }

  else
  {
    v100 = v292;
    v125 = *(v58 + 8);
    v126 = OUTLINED_FUNCTION_51();
    v125(v126);
    v127 = OUTLINED_FUNCTION_74_8();
    v125(v127);
  }

  v97 = v292;
  v98 = v293;
LABEL_18:
  OUTLINED_FUNCTION_58_4();
  sub_1DC516C5C();
  OUTLINED_FUNCTION_39(v100, 1, v56);
  if (v131)
  {
    sub_1DC28EB30(v100, &qword_1ECC7BFF8, &qword_1DC522580);
  }

  else
  {
    OUTLINED_FUNCTION_96_3();
    v132(v97, v100, v56);
    OUTLINED_FUNCTION_90();
    v133 = OUTLINED_FUNCTION_36();
    v134(v133);
    OUTLINED_FUNCTION_94_4();
    v135 = OUTLINED_FUNCTION_74_8();
    v137 = v136(v135);
    if (v137 == *MEMORY[0x1E69DAE70])
    {
      OUTLINED_FUNCTION_133_3();
      v138 = OUTLINED_FUNCTION_74_8();
      v139(v138);
      v140 = *v274;
      v141 = swift_projectBox();
      v142 = (v96 + 16);
      v143 = *(v96 + 16);
      (v143)(v260, v141, v101);

      v144 = OUTLINED_FUNCTION_83(v284);
      (v143)(v144, v260, v101);
      v145 = OUTLINED_FUNCTION_48_9();
      if (v146(v145) == *MEMORY[0x1E69DADC0])
      {
        v147 = OUTLINED_FUNCTION_47_11();
        v148(v147);
        v149 = *v140;
        v150 = v280;
        sub_1DC51256C();
        sub_1DC5124EC();
        sub_1DC51240C();
        OUTLINED_FUNCTION_58_4();
        v151 = OUTLINED_FUNCTION_46_9();
        v152(v151);
        sub_1DC51255C();
        OUTLINED_FUNCTION_43_14();
        OUTLINED_FUNCTION_4_26();
        OUTLINED_FUNCTION_108_2();
        v153();
        OUTLINED_FUNCTION_165_3();
        v154 = OUTLINED_FUNCTION_113_0();
        v96 = v287;
        v101 = v288;
        v155(v154);
        v156 = v150;
        v98 = v293;
        (*(v143 + 8))(v156, v149);
        v157 = OUTLINED_FUNCTION_54_2();
        v158(v157);
        OUTLINED_FUNCTION_95_4();
        v159(v292, v56);
      }

      else
      {
        OUTLINED_FUNCTION_154_2();
        v162 = OUTLINED_FUNCTION_54_2();
        v142(v162);
        OUTLINED_FUNCTION_95_4();
        v163(v292, v56);
        v164 = OUTLINED_FUNCTION_142_0();
        v142(v164);
      }

      v99 = v289;
      v91 = v290;
    }

    else
    {
      v160 = *(v58 + 8);
      v160(v97, v56);
      v161 = OUTLINED_FUNCTION_74_8();
      (v160)(v161);
    }
  }

  sub_1DC516C5C();
  v165 = OUTLINED_FUNCTION_53_15();
  OUTLINED_FUNCTION_39(v165, v166, v56);
  if (v131)
  {
    sub_1DC28EB30(v99, &qword_1ECC7BFF8, &qword_1DC522580);
  }

  else
  {
    OUTLINED_FUNCTION_96_3();
    v167 = OUTLINED_FUNCTION_91_4();
    v168(v167);
    OUTLINED_FUNCTION_90();
    v169(v275, v98, v56);
    OUTLINED_FUNCTION_94_4();
    v170 = OUTLINED_FUNCTION_11_24();
    v172 = v171(v170);
    if (v172 == *MEMORY[0x1E69DAE70])
    {
      OUTLINED_FUNCTION_133_3();
      v173 = OUTLINED_FUNCTION_11_24();
      v174(v173);
      v175 = swift_projectBox();
      v176 = *(v96 + 16);
      v176(v267, v175, v101);

      v177 = OUTLINED_FUNCTION_83(&v285);
      v176(v177, v267, v101);
      v178 = OUTLINED_FUNCTION_48_9();
      if (v179(v178) == *MEMORY[0x1E69DADE8])
      {
        v180 = OUTLINED_FUNCTION_47_11();
        v181(v180);
        v182 = OUTLINED_FUNCTION_36();
        v183(v182);
        sub_1DC51256C();
        sub_1DC5124EC();
        sub_1DC5124AC();
        sub_1DC3FE998(&qword_1ECC7D718, MEMORY[0x1E69DAD38]);
        sub_1DC3FE998(&qword_1ECC7D720, MEMORY[0x1E69DAC28]);
        sub_1DC5164CC();
        sub_1DC51249C();
        OUTLINED_FUNCTION_107_5();
        v184 = OUTLINED_FUNCTION_71_7();
        v185(v184, v263, v265);
        sub_1DC5124CC();
        OUTLINED_FUNCTION_43_14();
        v186 = OUTLINED_FUNCTION_46_9();
        v187(v186);
        sub_1DC51255C();
        OUTLINED_FUNCTION_58_4();
        OUTLINED_FUNCTION_4_26();
        OUTLINED_FUNCTION_108_2();
        v188();
        OUTLINED_FUNCTION_165_3();
        (*(v91 + 8))(v263, v265);
        (*(v267 + 8))(v261, v277);
        v189 = OUTLINED_FUNCTION_119();
        v190(v189);
        OUTLINED_FUNCTION_62_0();
        v191(v262, v264);
        (*(v287 + 8))(v267, v288);
        OUTLINED_FUNCTION_95_4();
        v192(v293, v56);
      }

      else
      {
        v196 = *(v96 + 8);
        v197 = OUTLINED_FUNCTION_142_0();
        v196(v197);
        OUTLINED_FUNCTION_95_4();
        v198 = OUTLINED_FUNCTION_51();
        v199(v198);
        v200 = OUTLINED_FUNCTION_12_3();
        v196(v200);
      }
    }

    else
    {
      v193 = *(v58 + 8);
      v194 = OUTLINED_FUNCTION_51();
      v193(v194);
      v195 = OUTLINED_FUNCTION_11_24();
      v193(v195);
    }
  }

  v201 = v285;
  sub_1DC516C5C();
  v202 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_39(v202, v203, v56);
  if (v131)
  {
    sub_1DC28EB30(v201, &qword_1ECC7BFF8, &qword_1DC522580);
  }

  else
  {
    OUTLINED_FUNCTION_96_3();
    v204 = OUTLINED_FUNCTION_44_12();
    v205(v204);
    OUTLINED_FUNCTION_90();
    v206 = OUTLINED_FUNCTION_62_2();
    v207(v206);
    OUTLINED_FUNCTION_94_4();
    v208 = OUTLINED_FUNCTION_74_8();
    v210 = v209(v208);
    if (v210 == *MEMORY[0x1E69DAE28])
    {
      OUTLINED_FUNCTION_133_3();
      v211 = OUTLINED_FUNCTION_74_8();
      v212(v211);
      v213 = swift_projectBox();
      v214 = *(v279 + 16);
      v214(v266, v213, v273);

      OUTLINED_FUNCTION_58_4();
      sub_1DC5171CC();
      if ((*(v270 + 88))(v276, v272) == *MEMORY[0x1E69DB098])
      {
        v215 = OUTLINED_FUNCTION_36();
        v216(v215);
        OUTLINED_FUNCTION_156_2();
        v217 = *v276;
        v218 = *(*v276 + 3);
        v297 = *(*v276 + 2);
        v298 = v217;

        v219 = v280;
        sub_1DC51256C();
        sub_1DC5123DC();
        v220 = sub_1DC5123BC();
        v221 = sub_1DC51237C();
        OUTLINED_FUNCTION_42_2();
        sub_1DC51235C();
        v221(v299, 0);
        v220(v300, 0);
        v222 = sub_1DC5123BC();
        v223 = sub_1DC51237C();
        sub_1DC51233C();
        v223(v299, 0);
        v222(v300, 0);
        OUTLINED_FUNCTION_43_14();
        v224 = OUTLINED_FUNCTION_44_12();
        v225(v224);
        sub_1DC51252C();
        OUTLINED_FUNCTION_107_5();
        v226 = OUTLINED_FUNCTION_4_26();
        v227(v226, v219, v278);
        OUTLINED_FUNCTION_165_3();
        (*(v218 + 8))(v254, v255);
        v228 = OUTLINED_FUNCTION_174();
        v229(v228);
        OUTLINED_FUNCTION_62_0();
        v230(v266, v273);
        OUTLINED_FUNCTION_62_0();
        v231 = OUTLINED_FUNCTION_138_2();
        v232(v231);
      }

      else
      {
        v236 = sub_1DC517B9C();
        sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
        v237 = sub_1DC296DBC();
        v238 = OUTLINED_FUNCTION_288();
        (v214)(v238);
        if (os_log_type_enabled(v237, v236))
        {
          v239 = OUTLINED_FUNCTION_63();
          v240 = swift_slowAlloc();
          v300[0] = v240;
          *v239 = 136315138;
          OUTLINED_FUNCTION_156_2();
          LODWORD(v297) = v236;
          sub_1DC5171CC();
          v296 = sub_1DC5172CC();
          v242 = v241;
          v298 = *(v270 + 8);
          v298(v251, v272);
          v243 = *(v279 + 8);
          v243(v253, v273);
          v244 = v243;
          v245 = sub_1DC291244(v296, v242, v300);

          *(v239 + 4) = v245;
          _os_log_impl(&dword_1DC287000, v237, v297, "Non-supported type identifier: %s", v239, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v240);
          OUTLINED_FUNCTION_66();
          OUTLINED_FUNCTION_66();

          v244(v266, v273);
          OUTLINED_FUNCTION_62_0();
          v246 = OUTLINED_FUNCTION_138_2();
          v247(v246);
          v298(v271, v272);
        }

        else
        {

          v248 = *(v279 + 8);
          v249 = OUTLINED_FUNCTION_151();
          v248(v249);
          v250 = OUTLINED_FUNCTION_34_0();
          v248(v250);
          (*(v58 + 8))(v284[0], v56);
          (*(v270 + 8))(v271, v272);
        }
      }
    }

    else
    {
      v233 = *(v58 + 8);
      v234 = OUTLINED_FUNCTION_152();
      v233(v234);
      v235 = OUTLINED_FUNCTION_74_8();
      v233(v235);
    }
  }

  OUTLINED_FUNCTION_34();
}

void TurnSummary.toNLUTypesTurnSummary()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_57_0();
  v2 = sub_1DC512C1C();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  sub_1DC5161CC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v5 = sub_1DC5125EC();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  OUTLINED_FUNCTION_10(v9);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_40_3();
  sub_1DC512DAC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_38_3();
  sub_1DC51261C();
  sub_1DC512D9C();
  v13 = type metadata accessor for TurnSummary(0);
  sub_1DC28F3B8(v0 + *(v13 + 28), v1, &qword_1ECC7BFC8, &unk_1DC524050);
  type metadata accessor for TurnSummary.ExecutionSource(0);
  v14 = OUTLINED_FUNCTION_98_6();
  OUTLINED_FUNCTION_39(v14, v15, v16);
  if (v17)
  {
    v18 = MEMORY[0x1E69D0D40];
LABEL_9:
    (*(v7 + 104))(v0, *v18, v5);
    OUTLINED_FUNCTION_235_0();
    sub_1DC51260C();
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 4, v19);
    switch(EnumTagSinglePayload)
    {
      case 1:
      case 4:
        v18 = MEMORY[0x1E69D0D38];
        goto LABEL_9;
      case 2:
        v18 = MEMORY[0x1E69D0D48];
        goto LABEL_9;
      case 3:
        v18 = MEMORY[0x1E69D0D50];
        goto LABEL_9;
      default:
        v21 = OUTLINED_FUNCTION_121_0();
        v22(v21);
        (*(v7 + 104))(v0, *MEMORY[0x1E69D0D30], v5);
        OUTLINED_FUNCTION_235_0();
        sub_1DC51260C();
        sub_1DC3F8B6C();
        sub_1DC512C3C();
        v23 = OUTLINED_FUNCTION_121_0();
        v24(v23);
        break;
    }
  }

  OUTLINED_FUNCTION_12_3();
  sub_1DC5125BC();

  OUTLINED_FUNCTION_56_0();
  sub_1DC51259C();
  OUTLINED_FUNCTION_82_2();
  v25 = OUTLINED_FUNCTION_151();
  v26(v25);
  OUTLINED_FUNCTION_235_0();
  sub_1DC5125DC();
  v27 = OUTLINED_FUNCTION_77_1();
  v28(v27);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3F8B6C()
{
  v3 = v1;
  OUTLINED_FUNCTION_57_0();
  v4 = sub_1DC5161CC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_65();
  sub_1DC512C0C();
  OUTLINED_FUNCTION_32_5();
  v6(v2, v3, v4);
  v7 = OUTLINED_FUNCTION_72();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x1E69D0720])
  {
    v10 = MEMORY[0x1E69D0DC8];
LABEL_9:
    v11 = sub_1DC512C1C();
    OUTLINED_FUNCTION_0();
    v13 = v12;
    v14 = OUTLINED_FUNCTION_43();
    v15(v14);
    return (*(v13 + 104))(v0, *v10, v11);
  }

  if (v9 == *MEMORY[0x1E69D0730])
  {
    v10 = MEMORY[0x1E69D0DD8];
    goto LABEL_9;
  }

  if (v9 == *MEMORY[0x1E69D0718])
  {
    v10 = MEMORY[0x1E69D0DC0];
    goto LABEL_9;
  }

  if (v9 == *MEMORY[0x1E69D0728])
  {
    v10 = MEMORY[0x1E69D0DD0];
    goto LABEL_9;
  }

  result = sub_1DC51824C();
  __break(1u);
  return result;
}

void Siri_Nlu_External_NluRouter_NLRouterServiceResponse.toSwiftNLRouterResponse()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_28_1();
  a22 = v25;
  a23 = v26;
  v99 = v27;
  v100 = sub_1DC512E7C();
  OUTLINED_FUNCTION_0();
  v102 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_1();
  v101 = v30;
  OUTLINED_FUNCTION_12();
  sub_1DC512DBC();
  OUTLINED_FUNCTION_0();
  v103 = v32;
  v104 = v31;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_3_2();
  sub_1DC512E4C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();
  v105 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v35 = v34;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_15();
  v98 = v37;
  OUTLINED_FUNCTION_22();
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = &v97 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = (&v97 - v43);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_62();
  v46 = v45;
  sub_1DC512E2C();
  OUTLINED_FUNCTION_94_4();
  v47 = OUTLINED_FUNCTION_89();
  v49 = v48(v47);
  if (v49 == *MEMORY[0x1E69D0E38])
  {
    v52 = OUTLINED_FUNCTION_113_5(v49, v50, v51);
    OUTLINED_FUNCTION_33_1(&type metadata for NluTypesConversionException, v52);
    OUTLINED_FUNCTION_35_17();
    OUTLINED_FUNCTION_54_14(v54, v53 + 9);
    goto LABEL_35;
  }

  if (v49 == *MEMORY[0x1E69D0E28])
  {
    v55 = MEMORY[0x1E69D02D8];
  }

  else if (v49 == *MEMORY[0x1E69D0E48])
  {
    v55 = MEMORY[0x1E69D02F8];
  }

  else
  {
    if (v49 == *MEMORY[0x1E69D0E20])
    {
      sub_1DC3F93D8();
      v106 = v24;
      if (v24)
      {
        goto LABEL_35;
      }

      *v44 = v69;
      v57 = v105;
      (v35)[13](v44, *MEMORY[0x1E69D02C8], v105);
      v56 = v46;
      (v35)[4](v46, v44, v57);
      goto LABEL_8;
    }

    if (v49 == *MEMORY[0x1E69D0E30])
    {
      sub_1DC3F9680();
      v106 = v24;
      if (v24)
      {
        goto LABEL_35;
      }

      v57 = v105;
      (v35)[13](v41, *MEMORY[0x1E69D02E0], v105);
      v56 = v46;
      v70 = OUTLINED_FUNCTION_35_0();
      v72(v70, v71, v57);
      goto LABEL_8;
    }

    if (v49 != *MEMORY[0x1E69D0E40])
    {
      v80 = OUTLINED_FUNCTION_113_5(v49, v50, v51);
      OUTLINED_FUNCTION_33_1(&type metadata for NluTypesConversionException, v80);
      OUTLINED_FUNCTION_35_17();
      OUTLINED_FUNCTION_54_14(v82, v81 + 11);
      v83 = OUTLINED_FUNCTION_89();
      v84(v83);
      goto LABEL_35;
    }

    v55 = MEMORY[0x1E69D02F0];
  }

  v56 = v46;
  v57 = v105;
  v35[13](v46, *v55, v105);
LABEL_8:
  sub_1DC512E8C();
  v58 = OUTLINED_FUNCTION_30();
  v60 = v59(v58);
  if (v60 == *MEMORY[0x1E69D0E10])
  {
    v63 = OUTLINED_FUNCTION_113_5(v60, v61, v62);
    OUTLINED_FUNCTION_33_1(&type metadata for NluTypesConversionException, v63);
    OUTLINED_FUNCTION_35_17();
    OUTLINED_FUNCTION_54_14(v64, v65);
    v66 = OUTLINED_FUNCTION_45_0();
    v67(v66);
  }

  else
  {
    if (v60 == *MEMORY[0x1E69D0E18])
    {
      v68 = 0;
    }

    else if (v60 == *MEMORY[0x1E69D0E08])
    {
      v68 = 1;
    }

    else if (v60 == *MEMORY[0x1E69D0E00])
    {
      v68 = 2;
    }

    else
    {
      if (v60 != *MEMORY[0x1E69D0DF8])
      {
        v85 = OUTLINED_FUNCTION_113_5(v60, v61, v62);
        OUTLINED_FUNCTION_33_1(&type metadata for NluTypesConversionException, v85);
        OUTLINED_FUNCTION_35_17();
        OUTLINED_FUNCTION_54_14(v87, v86 + 2);
        v88 = OUTLINED_FUNCTION_45_0();
        v89(v88);
        v90 = OUTLINED_FUNCTION_30();
        v91(v90);
        goto LABEL_35;
      }

      v68 = 3;
    }

    v73 = v101;
    sub_1DC512E5C();
    v74 = v100;
    v75 = (*(v102 + 88))(v73, v100);
    if (v75 == *MEMORY[0x1E69D0E68])
    {
      v73 = 0;
      v23 = 0;
    }

    else if (v75 == *MEMORY[0x1E69D0E70])
    {
      v73 = 0;
      v23 = 1;
    }

    else if (v75 == *MEMORY[0x1E69D0E60])
    {
      v73 = 0;
      v23 = 2;
    }

    else
    {
      if (v75 != *MEMORY[0x1E69D0E58])
      {
        v92 = OUTLINED_FUNCTION_113_5(v75, v76, v77);
        OUTLINED_FUNCTION_33_1(&type metadata for NluTypesConversionException, v92);
        OUTLINED_FUNCTION_35_17();
        OUTLINED_FUNCTION_54_14(v94, v93 + 10);
        v95 = OUTLINED_FUNCTION_45_0();
        v96(v95);
        (*(v102 + 8))(v101, v74);
        goto LABEL_35;
      }

      sub_1DC512DEC();
      OUTLINED_FUNCTION_192();
    }

    v35[2](v98, v56, v57);
    a13 = v68;
    v107[0] = v73;
    v107[1] = v23;
    NLRouterServiceResponse.init(routingDecision:status:decisionSource:)(&a13, v107, v99);
    v78 = OUTLINED_FUNCTION_45_0();
    v79(v78);
  }

LABEL_35:
  OUTLINED_FUNCTION_141_3();
  OUTLINED_FUNCTION_26_0();
}

void sub_1DC3F93D8()
{
  OUTLINED_FUNCTION_28_1();
  v2 = v0;
  v3 = sub_1DC512F5C();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_31();
  v25 = sub_1DC51588C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  v26 = v8;
  v9 = sub_1DC512E0C();
  v10 = *(v9 + 16);
  if (v10)
  {
    v27 = MEMORY[0x1E69E7CC0];
    v23 = *(v9 + 16);
    sub_1DC2AA348(0, v10, 0);
    v11 = 0;
    OUTLINED_FUNCTION_24();
    v24 = v9 + v12;
    while (v11 < *(v9 + 16))
    {
      (*(v5 + 16))(v1, v24 + *(v5 + 72) * v11, v3);
      sub_1DC3F9B20();
      if (v2)
      {

        v21 = OUTLINED_FUNCTION_174();
        v22(v21);

        goto LABEL_11;
      }

      v2 = 0;
      v13 = v1;
      v14 = v1;
      v15 = v3;
      (*(v5 + 8))(v14, v3);
      v17 = *(v27 + 16);
      v16 = *(v27 + 24);
      if (v17 >= v16 >> 1)
      {
        v20 = OUTLINED_FUNCTION_26(v16);
        sub_1DC2AA348(v20, v17 + 1, 1);
      }

      ++v11;
      *(v27 + 16) = v17 + 1;
      OUTLINED_FUNCTION_22_0();
      (*(v19 + 32))(v27 + v18 + *(v19 + 72) * v17, v26, v25);
      v3 = v15;
      v1 = v13;
      if (v23 == v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

LABEL_11:
    OUTLINED_FUNCTION_30_13();
    OUTLINED_FUNCTION_26_0();
  }
}

void sub_1DC3F9680()
{
  OUTLINED_FUNCTION_28_1();
  v49 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB28, &unk_1DC524110);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_25();
  v48 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF98, &qword_1DC5224C0);
  OUTLINED_FUNCTION_10(v6);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25();
  v46 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D728, &qword_1DC5293E0);
  OUTLINED_FUNCTION_10(v9);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25();
  v50 = v11;
  OUTLINED_FUNCTION_12();
  v45 = sub_1DC515EDC();
  OUTLINED_FUNCTION_0();
  v47 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_1();
  v52 = v14;
  OUTLINED_FUNCTION_12();
  v53 = sub_1DC512DAC();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_53_1();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v43 - v19;
  v21 = sub_1DC5161CC();
  OUTLINED_FUNCTION_0();
  v51 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_3_2();
  sub_1DC515F3C();
  sub_1DC3FE998(&qword_1ECC7C1E8, MEMORY[0x1E69D0618]);
  OUTLINED_FUNCTION_56_7();
  v24 = sub_1DC51502C();
  sub_1DC512DCC();
  sub_1DC3F45A0(v1);
  if (v0)
  {
    (*(v16 + 8))(v20, v53);
  }

  else
  {
    v43[1] = v24;
    v44 = v21;
    v54 = v1;
    v25 = *(v16 + 8);
    v25(v20, v53);
    sub_1DC512DCC();
    v26 = sub_1DC512E0C();
    v27 = v50;
    sub_1DC3FA0C8(v26, v50);

    sub_1DC3FA170();
    sub_1DC28EB30(v27, &qword_1ECC7D728, &qword_1DC5293E0);
    v28 = OUTLINED_FUNCTION_149();
    (v25)(v28);
    swift_getKeyPath();
    v29 = v51;
    OUTLINED_FUNCTION_90();
    v30 = v44;
    v31(v46, v54, v44);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v30);
    OUTLINED_FUNCTION_72();
    sub_1DC514FFC();
    swift_getKeyPath();
    v35 = OUTLINED_FUNCTION_11_24();
    v36 = v45;
    v37(v35);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v36);
    sub_1DC514FFC();
    sub_1DC51500C();

    v41 = OUTLINED_FUNCTION_50_0();
    v42(v41);
    (*(v29 + 8))(v54, v30);
  }

  OUTLINED_FUNCTION_26_0();
}

void sub_1DC3F9B20()
{
  OUTLINED_FUNCTION_28_1();
  v3 = v2;
  v5 = v4;
  v50 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF18, &qword_1DC522340);
  OUTLINED_FUNCTION_10(v7);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_40_4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF10, &unk_1DC522A50);
  OUTLINED_FUNCTION_10(v9);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_40_3();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF00, &unk_1DC529C30);
  OUTLINED_FUNCTION_10(v11);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18();
  sub_1DC512EEC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  sub_1DC512EFC();
  OUTLINED_FUNCTION_145_5();
  v14 = OUTLINED_FUNCTION_176();
  v16 = v15(v14);
  if (v16 == *MEMORY[0x1E69D0E90])
  {
    OUTLINED_FUNCTION_76_7();
    v20 = sub_1DC3FDFC0(v17, v18, v19);
    v21 = OUTLINED_FUNCTION_33_1(&type metadata for NluTypesConversionException, v20);
    *v22 = 0xD000000000000032;
    v22[1] = v5;
    OUTLINED_FUNCTION_35_2(v21, v22);
LABEL_3:
    *v3 = v21;
LABEL_14:
    OUTLINED_FUNCTION_30_13();
    OUTLINED_FUNCTION_26_0();
    return;
  }

  if (v16 == *MEMORY[0x1E69D0E88])
  {
    MEMORY[0x1EEE9AC00](v16);
    OUTLINED_FUNCTION_66_1();
    *(v23 - 16) = v5;
    sub_1DC51583C();
    v24 = sub_1DC51587C();
    OUTLINED_FUNCTION_39(v1, 1, v24);
    if (!v25)
    {
      OUTLINED_FUNCTION_7_1();
      v26 = v50;
      v27 = OUTLINED_FUNCTION_11_24();
      v28(v27);
      v29 = MEMORY[0x1E69D0330];
LABEL_13:
      v41 = *v29;
      sub_1DC51588C();
      OUTLINED_FUNCTION_35();
      (*(v42 + 104))(v26, v41);
      goto LABEL_14;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v16 == *MEMORY[0x1E69D0EA0])
  {
    MEMORY[0x1EEE9AC00](v16);
    OUTLINED_FUNCTION_66_1();
    *(v30 - 16) = v5;
    sub_1DC5158FC();
    v31 = sub_1DC51591C();
    v32 = OUTLINED_FUNCTION_98_6();
    OUTLINED_FUNCTION_39(v32, v33, v31);
    if (!v25)
    {
      OUTLINED_FUNCTION_7_1();
      v26 = v50;
      v34 = OUTLINED_FUNCTION_142_0();
      v35(v34);
      v29 = MEMORY[0x1E69D0340];
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  if (v16 != *MEMORY[0x1E69D0E98])
  {
    OUTLINED_FUNCTION_76_7();
    v46 = sub_1DC3FDFC0(v43, v44, v45);
    v21 = OUTLINED_FUNCTION_33_1(&type metadata for NluTypesConversionException, v46);
    *v47 = 0xD000000000000034;
    v47[1] = v5;
    OUTLINED_FUNCTION_35_2(v21, v47);
    v48 = OUTLINED_FUNCTION_176();
    v49(v48);
    goto LABEL_3;
  }

  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_66_1();
  *(v36 - 16) = v5;
  sub_1DC5158BC();
  v37 = sub_1DC5158DC();
  v38 = OUTLINED_FUNCTION_68_8();
  OUTLINED_FUNCTION_39(v38, v39, v37);
  if (!v25)
  {
    OUTLINED_FUNCTION_7_1();
    v26 = v50;
    (*(v40 + 32))(v50, v0, v37);
    v29 = MEMORY[0x1E69D0338];
    goto LABEL_13;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_1DC3F9F88()
{
  v1 = sub_1DC511AAC();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF08, &unk_1DC522330);
  OUTLINED_FUNCTION_10(v5);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_40_4();
  sub_1DC512ECC();
  sub_1DC51586C();
  result = sub_1DC512F3C();
  if (result)
  {
    sub_1DC512F1C();
    OUTLINED_FUNCTION_82_6();
    sub_1DC3F0B7C(v8, v9);
    (*(v3 + 8))(v0, v1);
    return sub_1DC51584C();
  }

  return result;
}

uint64_t sub_1DC3FA0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1DC512F5C();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

void sub_1DC3FA170()
{
  OUTLINED_FUNCTION_28_1();
  v127 = v2;
  v4 = v3;
  sub_1DC512D6C();
  OUTLINED_FUNCTION_0();
  v118 = v6;
  v119 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_1();
  v126 = v7;
  OUTLINED_FUNCTION_12();
  sub_1DC512CFC();
  OUTLINED_FUNCTION_0();
  v116 = v9;
  v117 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  v115 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB08, &unk_1DC5240E0);
  OUTLINED_FUNCTION_10(v11);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25();
  v114 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D090, &qword_1DC524180);
  OUTLINED_FUNCTION_10(v14);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25();
  v120 = v16;
  OUTLINED_FUNCTION_12();
  sub_1DC511AAC();
  OUTLINED_FUNCTION_0();
  v121 = v18;
  v122 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v109 = v19;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_23_1();
  v110 = v21;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_23_1();
  v112 = v23;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_62();
  v113 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D728, &qword_1DC5293E0);
  v27 = OUTLINED_FUNCTION_10(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_15();
  v111 = v28;
  OUTLINED_FUNCTION_22();
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v105 - v31;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_23_1();
  v123 = v33;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_136_3();
  sub_1DC512D4C();
  OUTLINED_FUNCTION_0();
  v124 = v36;
  v125 = v35;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2_1();
  v130 = v37;
  OUTLINED_FUNCTION_12();
  sub_1DC512D8C();
  OUTLINED_FUNCTION_0();
  v39 = v38;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_4_31();
  v41 = sub_1DC512C7C();
  if (v41)
  {
    v106 = v32;
    v107 = v4;
    v108 = v0;
    sub_1DC512C5C();
    v44 = sub_1DC512C8C();
    v45 = *(v39 + 8);
    v46 = OUTLINED_FUNCTION_54_4();
    v45(v46);
    sub_1DC512C5C();
    if (v44)
    {
      sub_1DC512CBC();
      v47 = OUTLINED_FUNCTION_54_4();
      v45(v47);
      sub_1DC515E7C();
      sub_1DC3FE998(&qword_1ECC7CB30, MEMORY[0x1E69D05B8]);
      OUTLINED_FUNCTION_56_7();
      sub_1DC51502C();
      swift_getKeyPath();
      v48 = v127;
      v49 = OUTLINED_FUNCTION_50_0();
      sub_1DC28F3B8(v49, v50, v51, v52);
      v53 = sub_1DC512F5C();
      OUTLINED_FUNCTION_39(v1, 1, v53);
      if (v54)
      {
        sub_1DC28EB30(v1, &qword_1ECC7D728, &qword_1DC5293E0);
        v70 = 0;
        v72 = 0;
      }

      else
      {
        v70 = sub_1DC512ECC();
        v72 = v71;
        OUTLINED_FUNCTION_7_1();
        v73 = OUTLINED_FUNCTION_42_2();
        v74(v73);
      }

      v75 = v123;
      v128 = v70;
      v129 = v72;
      sub_1DC514FDC();
      sub_1DC28F3B8(v48, v75, &qword_1ECC7D728, &qword_1DC5293E0);
      v76 = OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_39(v76, v77, v53);
      if (v54)
      {
        sub_1DC28EB30(v75, &qword_1ECC7D728, &qword_1DC5293E0);
      }

      else
      {
        sub_1DC512F1C();
        OUTLINED_FUNCTION_7_1();
        (*(v79 + 8))(v75, v53);
        v80 = OUTLINED_FUNCTION_50_0();
        v81(v80);
        swift_getKeyPath();
        OUTLINED_FUNCTION_15_17();
        sub_1DC3F0B7C(v82, v83);
        OUTLINED_FUNCTION_119();
        sub_1DC514FDC();
        v84 = OUTLINED_FUNCTION_50_0();
        v85(v84);
      }

      v86 = v107;
      if (sub_1DC512D0C())
      {
        swift_getKeyPath();
        v87 = v115;
        sub_1DC512D1C();
        sub_1DC3F47D0();
        (*(v116 + 8))(v87, v117);
        OUTLINED_FUNCTION_119();
        sub_1DC514FDC();
      }

      sub_1DC51500C();

      (*(v124 + 8))(v130, v125);
      v88 = MEMORY[0x1E69D0600];
LABEL_23:
      v103 = *v88;
      sub_1DC515EDC();
      OUTLINED_FUNCTION_35();
      (*(v104 + 104))(v86, v103);
      goto LABEL_24;
    }

    v59 = sub_1DC512C9C();
    v60 = OUTLINED_FUNCTION_54_4();
    v61 = (v45)(v60);
    if (v59)
    {
      sub_1DC512C5C();
      sub_1DC512CDC();
      v64 = OUTLINED_FUNCTION_54_4();
      v45(v64);
      sub_1DC515EBC();
      sub_1DC3FE998(&qword_1ECC7C1F0, MEMORY[0x1E69D05E0]);
      OUTLINED_FUNCTION_56_7();
      sub_1DC51502C();
      swift_getKeyPath();
      v65 = v127;
      v66 = v106;
      sub_1DC28F3B8(v127, v106, &qword_1ECC7D728, &qword_1DC5293E0);
      v67 = sub_1DC512F5C();
      v68 = OUTLINED_FUNCTION_68_8();
      OUTLINED_FUNCTION_39(v68, v69, v67);
      if (v54)
      {
        sub_1DC28EB30(v66, &qword_1ECC7D728, &qword_1DC5293E0);
        v89 = 0;
        v91 = 0;
      }

      else
      {
        v89 = sub_1DC512ECC();
        v91 = v90;
        OUTLINED_FUNCTION_7_1();
        v92 = OUTLINED_FUNCTION_35_0();
        v93(v92);
      }

      v86 = v107;
      v128 = v89;
      v129 = v91;
      sub_1DC514FDC();
      v94 = v111;
      sub_1DC28F3B8(v65, v111, &qword_1ECC7D728, &qword_1DC5293E0);
      OUTLINED_FUNCTION_39(v94, 1, v67);
      if (v54)
      {
        sub_1DC28EB30(v94, &qword_1ECC7D728, &qword_1DC5293E0);
      }

      else
      {
        sub_1DC512F1C();
        OUTLINED_FUNCTION_7_1();
        v95 = OUTLINED_FUNCTION_74();
        v96(v95);
        v97 = OUTLINED_FUNCTION_174();
        v98(v97);
        swift_getKeyPath();
        OUTLINED_FUNCTION_15_17();
        sub_1DC3F0B7C(v99, v100);
        OUTLINED_FUNCTION_212();
        sub_1DC514FDC();
        v101 = OUTLINED_FUNCTION_174();
        v102(v101);
      }

      sub_1DC51500C();

      (*(v118 + 8))(v126, v119);
      v88 = MEMORY[0x1E69D0608];
      goto LABEL_23;
    }

    v78 = sub_1DC3FDFC0(v61, v62, v63);
    OUTLINED_FUNCTION_33_1(&type metadata for NluTypesConversionException, v78);
    v58 = "utingGenAIMetadata";
    v55 = 0xD00000000000004CLL;
  }

  else
  {
    v55 = 0xD000000000000042;
    v56 = sub_1DC3FDFC0(v41, v42, v43);
    OUTLINED_FUNCTION_33_1(&type metadata for NluTypesConversionException, v56);
    v58 = "rServiceResponse";
  }

  *v57 = v55;
  *(v57 + 8) = v58 | 0x8000000000000000;
  *(v57 + 16) = 0;
  swift_willThrow();
LABEL_24:
  OUTLINED_FUNCTION_26_0();
}

void sub_1DC3FAB64()
{
  OUTLINED_FUNCTION_33();
  v88 = v3;
  v82 = sub_1DC512C1C();
  OUTLINED_FUNCTION_0();
  v80 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_1();
  v81 = v6;
  OUTLINED_FUNCTION_12();
  sub_1DC5161CC();
  OUTLINED_FUNCTION_0();
  v86 = v8;
  v87 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  v85 = v9;
  OUTLINED_FUNCTION_12();
  sub_1DC512CFC();
  OUTLINED_FUNCTION_0();
  v72 = v11;
  v73 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_1();
  v74 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB08, &unk_1DC5240E0);
  OUTLINED_FUNCTION_10(v13);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_79();
  v79 = sub_1DC515F4C();
  OUTLINED_FUNCTION_0();
  v71 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_62();
  v75 = v18;
  OUTLINED_FUNCTION_12();
  v19 = sub_1DC512D4C();
  v20 = OUTLINED_FUNCTION_10(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_54_0();
  sub_1DC515E7C();
  OUTLINED_FUNCTION_0();
  v77 = v22;
  v78 = v21;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_1();
  v76 = v23;
  OUTLINED_FUNCTION_12();
  v24 = sub_1DC512D6C();
  v25 = OUTLINED_FUNCTION_10(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  sub_1DC515EDC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  v83 = sub_1DC512D8C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_53_1();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v70 - v29;
  sub_1DC512D7C();
  v84 = v0;
  sub_1DC515EFC();
  v31 = OUTLINED_FUNCTION_11_24();
  v33 = v32(v31);
  if (v33 == *MEMORY[0x1E69D0608])
  {
    sub_1DC512D5C();
    sub_1DC512CEC();
LABEL_8:
    v47 = OUTLINED_FUNCTION_11_24();
    v48(v47);
    goto LABEL_9;
  }

  if (v33 != *MEMORY[0x1E69D0600])
  {
    v45 = sub_1DC517BAC();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v46 = sub_1DC296DBC();
    sub_1DC516F0C(v45, &dword_1DC287000, v46, "AjaxMetadata.toNLUTypesGenAiMetadata: Unknown query case. Making it explicit.", 77, 2, MEMORY[0x1E69E7CC0]);

    sub_1DC512D3C();
    sub_1DC512CCC();
    goto LABEL_8;
  }

  v34 = OUTLINED_FUNCTION_11_24();
  v35(v34);
  v37 = v76;
  v36 = v77;
  v38 = OUTLINED_FUNCTION_91_4();
  v39 = v78;
  v40(v38);
  sub_1DC512D3C();
  sub_1DC512CCC();
  sub_1DC515E6C();
  v41 = OUTLINED_FUNCTION_68_8();
  v42 = v79;
  OUTLINED_FUNCTION_39(v41, v43, v79);
  if (v44)
  {
    (*(v36 + 8))(v37, v39);
    sub_1DC28EB30(v1, &qword_1ECC7CB08, &unk_1DC5240E0);
LABEL_9:
    v49 = v83;
    goto LABEL_10;
  }

  v55 = v71;
  (*(v71 + 32))(v75, v1, v42);
  v56 = v70;
  v57 = OUTLINED_FUNCTION_77_1();
  v58(v57);
  v59 = (*(v55 + 88))(v56, v42);
  v60 = *(v72 + 104);
  v49 = v83;
  if (v59 == *MEMORY[0x1E69D0620])
  {
    v60(v74, *MEMORY[0x1E69D0DF0], v73);
  }

  else
  {
    v60(v74, *MEMORY[0x1E69D0DE8], v73);
    (*(v55 + 8))(v56, v42);
  }

  v63 = sub_1DC512CAC();
  sub_1DC512D2C();
  v63(&v89, 0);
  (*(v55 + 8))(v75, v79);
  (*(v77 + 8))(v76, v78);
LABEL_10:
  sub_1DC512D9C();
  OUTLINED_FUNCTION_32_5();
  v50(v2, v30, v49);
  sub_1DC512C6C();
  sub_1DC515E2C();
  OUTLINED_FUNCTION_145_5();
  v51 = OUTLINED_FUNCTION_77_1();
  v53 = v52(v51);
  if (v53 == *MEMORY[0x1E69D0720])
  {
    v54 = MEMORY[0x1E69D0DC8];
  }

  else if (v53 == *MEMORY[0x1E69D0730])
  {
    v54 = MEMORY[0x1E69D0DD8];
  }

  else if (v53 == *MEMORY[0x1E69D0718])
  {
    v54 = MEMORY[0x1E69D0DC0];
  }

  else
  {
    if (v53 != *MEMORY[0x1E69D0728])
    {
      v64 = sub_1DC517BAC();
      sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
      v65 = sub_1DC296DBC();
      sub_1DC516F0C(v64, &dword_1DC287000, v65, "AjaxMetadata.toNLUTypesGenAiMetadata: Unknown prescribed AjaxTool.", 66, 2, MEMORY[0x1E69E7CC0]);

      v66 = OUTLINED_FUNCTION_23_22();
      v67(v66);
      v68 = OUTLINED_FUNCTION_77_1();
      v69(v68);
      goto LABEL_21;
    }

    v54 = MEMORY[0x1E69D0DD0];
  }

  (*(v80 + 104))(v81, *v54, v82);
  OUTLINED_FUNCTION_235_0();
  sub_1DC512C3C();
  v61 = OUTLINED_FUNCTION_23_22();
  v62(v61);
LABEL_21:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3FB394()
{
  OUTLINED_FUNCTION_33();
  v38 = v4;
  v5 = sub_1DC515E7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D090, &qword_1DC524180);
  OUTLINED_FUNCTION_10(v7);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_40();
  v9 = sub_1DC515EBC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_79();
  sub_1DC515EDC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_31();
  v12 = OUTLINED_FUNCTION_75();
  v13(v12);
  v14 = OUTLINED_FUNCTION_45_0();
  v16 = v15(v14);
  if (v16 != *MEMORY[0x1E69D0608])
  {
    if (v16 == *MEMORY[0x1E69D0600])
    {
      v24 = OUTLINED_FUNCTION_45_0();
      v25(v24);
      OUTLINED_FUNCTION_135_2();
      v26(v0, v3, v5);
      sub_1DC515E5C();
      v21 = v38;
      if (!v27)
      {
        v36 = OUTLINED_FUNCTION_56_0();
        v37(v36);
        v28 = 1;
        goto LABEL_11;
      }

      sub_1DC515E3C();
      OUTLINED_FUNCTION_16();
      sub_1DC3FB778();

      sub_1DC28EB30(v1, &qword_1ECC7D090, &qword_1DC524180);
      v22 = OUTLINED_FUNCTION_56_0();
      goto LABEL_7;
    }

    v29 = sub_1DC517BAC();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v30 = sub_1DC296DBC();
    sub_1DC516F0C(v29, &dword_1DC287000, v30, "AjaxMetadata.AjaxQuery: Unknown ajax query case. Making it explicit.", 68, 2, MEMORY[0x1E69E7CC0]);

    v31 = OUTLINED_FUNCTION_45_0();
    v32(v31);
LABEL_10:
    v28 = 1;
    v21 = v38;
    goto LABEL_11;
  }

  v17 = OUTLINED_FUNCTION_45_0();
  v18(v17);
  OUTLINED_FUNCTION_135_2();
  v19(v2, v3, v9);
  sub_1DC515EAC();
  if (!v20)
  {
    v33 = OUTLINED_FUNCTION_16();
    v34(v33);
    goto LABEL_10;
  }

  sub_1DC515E8C();
  v21 = v38;
  sub_1DC3FB778();

  sub_1DC28EB30(v1, &qword_1ECC7D090, &qword_1DC524180);
  v22 = OUTLINED_FUNCTION_16();
LABEL_7:
  v23(v22);
  v28 = 0;
LABEL_11:
  v35 = sub_1DC512F5C();
  __swift_storeEnumTagSinglePayload(v21, v28, 1, v35);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3FB778()
{
  OUTLINED_FUNCTION_33();
  v37 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3E0, &qword_1DC528418);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40();
  sub_1DC511AAC();
  OUTLINED_FUNCTION_0();
  v35 = v7;
  v36 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  v34 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D090, &qword_1DC524180);
  OUTLINED_FUNCTION_10(v10);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_18();
  v12 = sub_1DC515ECC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_31();
  v14 = sub_1DC512EEC();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  sub_1DC512F4C();

  sub_1DC512EDC();
  (*(v16 + 104))(v2, *MEMORY[0x1E69D0E80], v14);
  sub_1DC512F0C();
  sub_1DC28F3B8(v37, v1, &qword_1ECC7D090, &qword_1DC524180);
  OUTLINED_FUNCTION_39(v1, 1, v12);
  if (v25)
  {
    v18 = &qword_1ECC7D090;
    v19 = &qword_1DC524180;
    v20 = v1;
LABEL_7:
    sub_1DC28EB30(v20, v18, v19);
    goto LABEL_8;
  }

  v21 = OUTLINED_FUNCTION_75();
  v22(v21);
  OUTLINED_FUNCTION_80_7();
  OUTLINED_FUNCTION_147_3();
  sub_1DC3F497C();
  v23 = OUTLINED_FUNCTION_53_15();
  OUTLINED_FUNCTION_39(v23, v24, v36);
  if (v25)
  {
    v26 = OUTLINED_FUNCTION_45_0();
    v27(v26);
    v18 = &unk_1ECC7D3E0;
    v19 = &qword_1DC528418;
    v20 = v0;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_128_3();
  v28 = OUTLINED_FUNCTION_212();
  v29(v28);
  OUTLINED_FUNCTION_32_5();
  v30 = OUTLINED_FUNCTION_152();
  v31(v30);
  OUTLINED_FUNCTION_235_0();
  sub_1DC512F2C();
  (*(v35 + 8))(v34, v36);
  v32 = OUTLINED_FUNCTION_45_0();
  v33(v32);
LABEL_8:
  OUTLINED_FUNCTION_34();
}

void NLRouterServiceResponse.toNLUTypesNLRouterServiceResponse()()
{
  OUTLINED_FUNCTION_28_1();
  v104 = v0;
  v5 = v4;
  sub_1DC512E7C();
  OUTLINED_FUNCTION_0();
  v99 = v7;
  v100 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  v101 = v8;
  OUTLINED_FUNCTION_12();
  sub_1DC512DBC();
  OUTLINED_FUNCTION_0();
  v97 = v10;
  v98 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  v96 = v11;
  OUTLINED_FUNCTION_12();
  sub_1DC5157CC();
  OUTLINED_FUNCTION_0();
  v102 = v13;
  v103 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();
  sub_1DC515EDC();
  OUTLINED_FUNCTION_0();
  v93 = v15;
  v94 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_1();
  v89 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D728, &qword_1DC5293E0);
  OUTLINED_FUNCTION_10(v17);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25();
  v92 = v19;
  OUTLINED_FUNCTION_12();
  v95 = sub_1DC512F5C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_1();
  v88 = v21;
  OUTLINED_FUNCTION_12();
  v22 = sub_1DC512DAC();
  v23 = OUTLINED_FUNCTION_10(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_3_2();
  sub_1DC515F3C();
  OUTLINED_FUNCTION_0();
  v90 = v25;
  v91 = v24;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_1();
  v27 = v26;
  OUTLINED_FUNCTION_12();
  sub_1DC512E4C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_54_0();
  v29 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_4_31();
  sub_1DC512EAC();
  OUTLINED_FUNCTION_82_2();
  v31(v3, v104, v29);
  OUTLINED_FUNCTION_145_5();
  v32 = OUTLINED_FUNCTION_45_0();
  v34 = v33(v32);
  if (v34 == *MEMORY[0x1E69D02E8])
  {
    v37 = OUTLINED_FUNCTION_45_0();
    v38(v37);
    (*(v102 + 32))(v2, v3, v103);
    v39 = sub_1DC5157AC();
    if (!v40)
    {
      goto LABEL_10;
    }

    v41 = v39;
    v42 = v40;

    v43 = HIBYTE(v42) & 0xF;
    if ((v42 & 0x2000000000000000) == 0)
    {
      v43 = v41 & 0xFFFFFFFFFFFFLL;
    }

    if (v43)
    {
      v44 = OUTLINED_FUNCTION_33_18();
      v45(v44);
      OUTLINED_FUNCTION_70_10();
      sub_1DC3FC638();
      sub_1DC512E1C();
    }

    else
    {
LABEL_10:
      v51 = OUTLINED_FUNCTION_33_18();
      v52(v51);
      OUTLINED_FUNCTION_70_10();
    }

    v53 = OUTLINED_FUNCTION_50_0();
    v54(v53);
  }

  else if (v34 == *MEMORY[0x1E69D02C8])
  {
    v46 = OUTLINED_FUNCTION_45_0();
    v47(v46);
    v48 = OUTLINED_FUNCTION_33_18();
    v49(v48);
    OUTLINED_FUNCTION_70_10();
    sub_1DC3FC480();
    if (v1)
    {
      sub_1DC512EBC();
      OUTLINED_FUNCTION_35();
      (*(v50 + 8))(v5);

      goto LABEL_27;
    }

    OUTLINED_FUNCTION_120_1();
    sub_1DC512E1C();
  }

  else if (v34 == *MEMORY[0x1E69D02E0])
  {
    v64 = OUTLINED_FUNCTION_45_0();
    v65(v64);
    (*(v90 + 32))(v27, v3, v91);
    v66 = OUTLINED_FUNCTION_33_18();
    v67(v66);
    OUTLINED_FUNCTION_70_10();
    sub_1DC3FAB64();
    sub_1DC512DDC();
    sub_1DC515EFC();
    sub_1DC3FB394();
    (*(v93 + 8))(v89, v94);
    v68 = OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_39(v68, v69, v95);
    if (v70)
    {
      v71 = OUTLINED_FUNCTION_51();
      v72(v71);
      sub_1DC28EB30(v92, &qword_1ECC7D728, &qword_1DC5293E0);
    }

    else
    {
      OUTLINED_FUNCTION_128_3();
      v73 = OUTLINED_FUNCTION_119();
      v74(v73);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D730, &unk_1DC529540);
      OUTLINED_FUNCTION_139_2();
      *(swift_allocObject() + 16) = xmmword_1DC522F20;
      OUTLINED_FUNCTION_32_5();
      v76(v75 + v89, v88, v95);
      OUTLINED_FUNCTION_120_1();
      sub_1DC512E1C();
      v77 = OUTLINED_FUNCTION_149();
      v78(v77);
      v79 = OUTLINED_FUNCTION_51();
      v80(v79);
    }
  }

  else
  {
    if (v34 != *MEMORY[0x1E69D02D8] && v34 != *MEMORY[0x1E69D02F8] && v34 != *MEMORY[0x1E69D02F0])
    {
      v83 = OUTLINED_FUNCTION_113_5(v34, v35, v36);
      OUTLINED_FUNCTION_33_1(&type metadata for NluTypesConversionException, v83);
      OUTLINED_FUNCTION_163_2(v84, 0xD000000000000032);
      sub_1DC512EBC();
      OUTLINED_FUNCTION_35();
      (*(v85 + 8))(v5);
      v86 = OUTLINED_FUNCTION_45_0();
      v87(v86);
      goto LABEL_27;
    }

    v81 = OUTLINED_FUNCTION_33_18();
    v82(v81);
    OUTLINED_FUNCTION_70_10();
  }

  v55 = type metadata accessor for NLRouterServiceResponse(0);
  v58 = *(v104 + *(v55 + 20));
  if (v58 >= 4)
  {
    v61 = OUTLINED_FUNCTION_113_5(v55, v56, v57);
    OUTLINED_FUNCTION_33_1(&type metadata for NluTypesConversionException, v61);
    OUTLINED_FUNCTION_163_2(v62, 0xD000000000000029);
    sub_1DC512EBC();
    OUTLINED_FUNCTION_35();
    (*(v63 + 8))(v5);
  }

  else
  {
    v59 = v55;
    (*(v97 + 104))(v96, **(&unk_1E862E300 + v58), v98);
    sub_1DC512E9C();
    switch(*(v104 + *(v59 + 24) + 8))
    {
      case 0:
        v60 = MEMORY[0x1E69D0E68];
        goto LABEL_26;
      case 1:
        v60 = MEMORY[0x1E69D0E70];
        goto LABEL_26;
      case 2:
        v60 = MEMORY[0x1E69D0E60];
        goto LABEL_26;
      case 3:
        v60 = MEMORY[0x1E69D0E58];
LABEL_26:
        (*(v99 + 104))(v101, *v60, v100);
        OUTLINED_FUNCTION_120_1();
        sub_1DC512E6C();
        break;
      default:
        (*(v99 + 104))(v101, *MEMORY[0x1E69D0E58], v100);

        sub_1DC512E6C();
        OUTLINED_FUNCTION_30_6();
        sub_1DC512DFC();
        break;
    }
  }

LABEL_27:
  OUTLINED_FUNCTION_26_0();
}

void sub_1DC3FC480()
{
  OUTLINED_FUNCTION_28_1();
  v2 = v0;
  v4 = v3;
  v17 = sub_1DC512F5C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_4();
  v8 = *(v4 + 16);
  if (v8)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1DC3FE8AC();
    v9 = sub_1DC51588C();
    OUTLINED_FUNCTION_52(v9);
    v11 = v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v13 = *(v12 + 72);
    while (1)
    {
      sub_1DC3FCA54();
      if (v2)
      {
        break;
      }

      v2 = 0;
      v15 = *(v18 + 16);
      v14 = *(v18 + 24);
      if (v15 >= v14 >> 1)
      {
        OUTLINED_FUNCTION_26(v14);
        sub_1DC3FE8AC();
      }

      *(v18 + 16) = v15 + 1;
      OUTLINED_FUNCTION_24();
      (*(v6 + 32))(v18 + v16 + *(v6 + 72) * v15, v1, v17);
      v11 += v13;
      if (!--v8)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_30_13();
  OUTLINED_FUNCTION_26_0();
}

void sub_1DC3FC638()
{
  OUTLINED_FUNCTION_33();
  sub_1DC512EEC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3E0, &qword_1DC528418);
  OUTLINED_FUNCTION_10(v5);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_79();
  v7 = sub_1DC511AAC();
  OUTLINED_FUNCTION_0();
  v41 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v40 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3D0, &qword_1DC529550);
  OUTLINED_FUNCTION_10(v12);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_40();
  v14 = sub_1DC51589C();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_31();
  v42 = sub_1DC512F5C();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  sub_1DC512F4C();
  sub_1DC5157AC();
  sub_1DC512EDC();
  sub_1DC51578C();
  v21 = OUTLINED_FUNCTION_53_15();
  OUTLINED_FUNCTION_39(v21, v22, v14);
  if (v28)
  {
    v23 = &unk_1ECC7D3D0;
    v24 = &qword_1DC529550;
    v25 = v0;
LABEL_7:
    sub_1DC28EB30(v25, v23, v24);
    goto LABEL_8;
  }

  (*(v16 + 32))(v3, v0, v14);
  OUTLINED_FUNCTION_81_6();
  sub_1DC3F497C();
  v26 = OUTLINED_FUNCTION_68_8();
  OUTLINED_FUNCTION_39(v26, v27, v7);
  if (v28)
  {
    v29 = OUTLINED_FUNCTION_117_0();
    v30(v29);
    v23 = &unk_1ECC7D3E0;
    v24 = &qword_1DC528418;
    v25 = v1;
    goto LABEL_7;
  }

  (*(v41 + 32))(v40, v1, v7);
  OUTLINED_FUNCTION_82_2();
  v31 = OUTLINED_FUNCTION_152();
  v32(v31);
  sub_1DC512F2C();
  v33 = OUTLINED_FUNCTION_50_0();
  v34(v33);
  v35 = OUTLINED_FUNCTION_117_0();
  v36(v35);
LABEL_8:
  v37 = OUTLINED_FUNCTION_127_3();
  v38(v37);
  sub_1DC512F0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D730, &unk_1DC529540);
  OUTLINED_FUNCTION_139_2();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1DC522F20;
  (*(v19 + 32))(v39 + v2, v2, v42);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3FCA54()
{
  OUTLINED_FUNCTION_28_1();
  v77 = v3;
  v85 = v4;
  v6 = v5;
  v76 = sub_1DC5158DC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  v75 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3E0, &qword_1DC528418);
  OUTLINED_FUNCTION_10(v9);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25();
  v79 = v11;
  OUTLINED_FUNCTION_12();
  v80 = sub_1DC511AAC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v74 = v13;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_62();
  v73 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF08, &unk_1DC522330);
  OUTLINED_FUNCTION_10(v16);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_11_1();
  v86 = sub_1DC5157FC();
  OUTLINED_FUNCTION_0();
  v78 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_1();
  v81 = v20;
  OUTLINED_FUNCTION_12();
  sub_1DC51587C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_54_0();
  sub_1DC512EEC();
  OUTLINED_FUNCTION_0();
  v83 = v23;
  v84 = v22;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_1();
  v82 = v24;
  OUTLINED_FUNCTION_12();
  v25 = sub_1DC51591C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  v27 = sub_1DC51588C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  sub_1DC512F4C();
  OUTLINED_FUNCTION_82_2();
  v29(v0, v85, v27);
  OUTLINED_FUNCTION_145_5();
  v30 = OUTLINED_FUNCTION_12_3();
  v32 = v31(v30);
  if (v32 == *MEMORY[0x1E69D0330])
  {
    v35 = OUTLINED_FUNCTION_12_3();
    v36(v35);
    v37 = OUTLINED_FUNCTION_43();
    v38(v37);
    sub_1DC51582C();
    sub_1DC512EDC();
    sub_1DC51580C();
    OUTLINED_FUNCTION_39(v1, 1, v86);
    if (v51)
    {
      v39 = &qword_1ECC7BF08;
      v40 = &unk_1DC522330;
      v41 = v1;
    }

    else
    {
      OUTLINED_FUNCTION_96_3();
      v47 = OUTLINED_FUNCTION_48_0();
      v48(v47);
      OUTLINED_FUNCTION_79_8();
      sub_1DC3F497C();
      v49 = OUTLINED_FUNCTION_53_15();
      OUTLINED_FUNCTION_39(v49, v50, v80);
      if (!v51)
      {
        OUTLINED_FUNCTION_128_3();
        v59(v73, v79, v80);
        OUTLINED_FUNCTION_32_5();
        v60(v74, v73, v80);
        sub_1DC512F2C();
        v61 = OUTLINED_FUNCTION_117_0();
        v62(v61);
        (*(v78 + 8))(v81, v86);
LABEL_13:
        v63 = OUTLINED_FUNCTION_127_3();
        v64(v63);
        sub_1DC512F0C();
        v65 = OUTLINED_FUNCTION_34_0();
        v66(v65);
        goto LABEL_14;
      }

      (*(v78 + 8))(v81, v86);
      v39 = &unk_1ECC7D3E0;
      v40 = &qword_1DC528418;
      v41 = v79;
    }

    sub_1DC28EB30(v41, v39, v40);
    goto LABEL_13;
  }

  if (v32 == *MEMORY[0x1E69D0340])
  {
    v42 = OUTLINED_FUNCTION_12_3();
    v43(v42);
    OUTLINED_FUNCTION_135_2();
    v44(v2, v0, v25);
    sub_1DC5158EC();
    sub_1DC512EDC();
    (*(v83 + 104))(v82, *MEMORY[0x1E69D0EA0], v84);
    sub_1DC512F0C();
    v45 = OUTLINED_FUNCTION_51();
    v46(v45);
  }

  else if (v32 == *MEMORY[0x1E69D0338])
  {
    v52 = OUTLINED_FUNCTION_12_3();
    v53(v52);
    OUTLINED_FUNCTION_128_3();
    v54(v75, v0, v76);
    sub_1DC5158AC();
    sub_1DC512EDC();
    v55 = OUTLINED_FUNCTION_127_3();
    v56(v55);
    sub_1DC512F0C();
    v57 = OUTLINED_FUNCTION_149();
    v58(v57);
  }

  else
  {
    v67 = sub_1DC3FDFC0(v32, v33, v34);
    v68 = OUTLINED_FUNCTION_33_1(&type metadata for NluTypesConversionException, v67);
    *v69 = 0xD000000000000048;
    *(v69 + 8) = 0x80000001DC545FA0;
    *(v69 + 16) = 1;
    swift_willThrow();
    sub_1DC512F5C();
    OUTLINED_FUNCTION_35();
    (*(v70 + 8))(v6);
    v71 = OUTLINED_FUNCTION_12_3();
    v72(v71);
    *v77 = v68;
  }

LABEL_14:
  OUTLINED_FUNCTION_26_0();
}

void sub_1DC3FD1C8()
{
  OUTLINED_FUNCTION_33();
  v42 = v0;
  v43 = v1;
  OUTLINED_FUNCTION_162_5(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_31();
  sub_1DC512EBC();
  OUTLINED_FUNCTION_0();
  v44 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_65();
  v5 = [objc_opt_self() processInfo];
  v6 = [v5 arguments];

  sub_1DC517A1C();
  OUTLINED_FUNCTION_118_3("/System/Developer/usr/local/bin/xctest");
  LOBYTE(v6) = OUTLINED_FUNCTION_164_2();

  if (v6)
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v7 = sub_1DC296DBC();
    OUTLINED_FUNCTION_161_3(v7, &dword_1DC287000, v8, "Not logging to featureStore as this is a xctest process");
LABEL_3:

    goto LABEL_9;
  }

  NLRouterServiceResponse.toNLUTypesNLRouterServiceResponse()();
  v9 = v5;
  if (!v5)
  {
    sub_1DC5166DC();
    sub_1DC3FE998(&qword_1ECC7BDA8, MEMORY[0x1E69D0E78]);
    OUTLINED_FUNCTION_117_0();
    sub_1DC51673C();
    v20 = OUTLINED_FUNCTION_23_22();
    v21(v20);
    v22 = sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v23 = sub_1DC296DBC();
    if (os_log_type_enabled(v23, v22))
    {
      v24 = OUTLINED_FUNCTION_63();
      v25 = swift_slowAlloc();
      v45 = v25;
      *v24 = 136315138;
      v26 = OUTLINED_FUNCTION_34_0();
      *(v24 + 4) = sub_1DC291244(v26, v27, v28);
      OUTLINED_FUNCTION_159_2(&dword_1DC287000, v29, v30, "logToFeatureStore NLRouterServiceResponse proto json: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();
    }

    v31 = objc_allocWithZone(MEMORY[0x1E699C0D8]);
    v32 = sub_1DC3FD910(0xD000000000000033, 0x80000001DC545F60);
    v33 = objc_allocWithZone(MEMORY[0x1E699C0D0]);

    v34 = OUTLINED_FUNCTION_34_0();
    v7 = sub_1DC3FD974(v34, v35, v42, v43, 0);
    if (!v32)
    {
      v39 = OUTLINED_FUNCTION_25_15();
      v40(v39);
      goto LABEL_3;
    }

    v45 = 0;
    if ([v32 insert:v7 error:&v45])
    {
      v36 = *(v44 + 8);
      v37 = v45;
      v38 = OUTLINED_FUNCTION_30_6();
      v36(v38);

      goto LABEL_9;
    }

    v41 = v45;
    v9 = sub_1DC51085C();

    swift_willThrow();
    v10 = OUTLINED_FUNCTION_25_15();
    v11(v10);
  }

  v12 = sub_1DC517B9C();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v13 = sub_1DC296DBC();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = OUTLINED_FUNCTION_63();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v9;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    OUTLINED_FUNCTION_36_4(&dword_1DC287000, v18, v19, "Error logging NLRouterServiceResponse to FeatureStore: %@");
    sub_1DC28EB30(v15, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  else
  {
  }

LABEL_9:
  OUTLINED_FUNCTION_34();
}

id sub_1DC3FD6BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_1DC5176FC();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithValue:v8 type:a3 label:a4];

  return v9;
}

id sub_1DC3FD740(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = sub_1DC51082C();
  v17 = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v16) != 1)
  {
    v17 = sub_1DC51081C();
    (*(*(v16 - 8) + 8))(a2, v16);
  }

  if (a4)
  {
    v18 = sub_1DC5176FC();
  }

  else
  {
    v18 = 0;
  }

  if (a7)
  {
    v19 = sub_1DC5176FC();
  }

  else
  {
    v19 = 0;
  }

  if (a9)
  {
    v20 = sub_1DC5176FC();
  }

  else
  {
    v20 = 0;
  }

  if (a10)
  {
    sub_1DC298C74(0, &qword_1ECC7D760, 0x1E696E948);
    v21 = sub_1DC517A0C();
  }

  else
  {
    v21 = 0;
  }

  v22 = [v24 initWithPersonHandle:a1 nameComponents:v17 displayName:v18 image:a5 contactIdentifier:v19 customIdentifier:v20 aliases:v21 suggestionType:a11];

  return v22;
}

id sub_1DC3FD910(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1DC5176FC();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithStreamId_];

  return v4;
}

id sub_1DC3FD974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_1DC5176FC();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_1DC5176FC();

LABEL_6:
  v10 = [v5 initWithJsonStr:v8 interactionId:v9 dataVersion:a5];

  return v10;
}

void *sub_1DC3FDA1C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1DC3FE6E8(v9, a2, &qword_1ECC7D5C0, "֕", type metadata accessor for TurnSummary);
  v11 = *(type metadata accessor for TurnSummary(0) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DC3FE7DC(a4 + v12, v9, v10 + v12, type metadata accessor for TurnSummary);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DC3FDB40(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1DC3FE6E8(v9, a2, &qword_1ECC7C898, &unk_1DC529680, MEMORY[0x1E69A90D0]);
  v11 = *(sub_1DC516C3C() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DC3FE7DC(a4 + v12, v9, v10 + v12, MEMORY[0x1E69A90D0]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DC3FDC64(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1DC3FE6E8(v9, a2, &qword_1ECC7D5F8, &qword_1DC529670, MEMORY[0x1E69A90E8]);
  v11 = *(sub_1DC516C7C() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DC3FE7DC(a4 + v12, v9, v10 + v12, MEMORY[0x1E69A90E8]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DC3FDD88(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1DC3FE6E8(v9, a2, &qword_1ECC7D768, &qword_1DC529678, MEMORY[0x1E69A90A8]);
  v11 = *(sub_1DC516B8C() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DC3FE7DC(a4 + v12, v9, v10 + v12, MEMORY[0x1E69A90A8]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DC3FDEAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D5C8, &qword_1DC529690);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1DC3FDFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D700;
  if (!qword_1ECC7D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D700);
  }

  return result;
}

uint64_t sub_1DC3FE014(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1DC3FE084(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1DC3FE6E8(v9, a2, &qword_1ECC7D750, &qword_1DC529660, MEMORY[0x1E69D0D58]);
  v11 = *(sub_1DC51262C() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DC3FE7DC(a4 + v12, v9, v10 + v12, MEMORY[0x1E69D0D58]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DC3FE1A8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1DC3FE6E8(v9, a2, &qword_1ECC7D748, &qword_1DC529658, MEMORY[0x1E69D0DA8]);
  v11 = *(sub_1DC5129CC() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DC3FE7DC(a4 + v12, v9, v10 + v12, MEMORY[0x1E69D0DA8]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DC3FE2CC(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1DC3FE6E8(v9, a2, &qword_1ECC7D740, &qword_1DC529650, MEMORY[0x1E69D0D98]);
  v11 = *(sub_1DC51288C() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DC3FE7DC(a4 + v12, v9, v10 + v12, MEMORY[0x1E69D0D98]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DC3FE3F0(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1DC3FE6E8(v9, a2, &qword_1ECC7D758, &qword_1DC529668, MEMORY[0x1E69D0D60]);
  v11 = *(sub_1DC5126CC() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DC3FE7DC(a4 + v12, v9, v10 + v12, MEMORY[0x1E69D0D60]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1DC3FE514(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_38_2();
  v4(v3);
  OUTLINED_FUNCTION_35();
  v5 = OUTLINED_FUNCTION_43();
  v6(v5);
  return a2;
}

uint64_t sub_1DC3FE56C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_35();
  (*(v3 + 8))(a1);
  return a1;
}

void *sub_1DC3FE5C4(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1DC3FE6E8(v9, a2, &qword_1ECC7D738, &unk_1DC529640, MEMORY[0x1E69D0DA0]);
  v11 = *(sub_1DC51296C() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DC3FE7DC(a4 + v12, v9, v10 + v12, MEMORY[0x1E69D0DA0]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DC3FE6E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_52(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1DC3FE7DC(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_35(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_62_2();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_62_2();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_1DC3FE998(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_56_7();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_113_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DC3FDFC0(a1, a2, a3);
}

void OUTLINED_FUNCTION_118_3(uint64_t a1@<X8>)
{
  *(v2 - 104) = v1;
  *(v2 - 96) = (a1 - 32) | 0x8000000000000000;
  *(v2 - 112) = v2 - 104;
}

uint64_t OUTLINED_FUNCTION_161_3(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return sub_1DC516F0C(v4, a2, v5, a4, 55, 2);
}

uint64_t OUTLINED_FUNCTION_162_5@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 88) = a1;

  return sub_1DC5166EC();
}

BOOL OUTLINED_FUNCTION_164_2()
{

  return sub_1DC2CF098(v0, v2 - 128, v1);
}

uint64_t sub_1DC3FEBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v157 = a1;
  v155 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D770, &qword_1DC529698);
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v140 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v146 = v128 - v6;
  OUTLINED_FUNCTION_12();
  v159 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v147 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v158 = v10 - v9;
  OUTLINED_FUNCTION_12();
  v163 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v138 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v162 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  v145 = sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v141 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1();
  v144 = v25 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v27 = OUTLINED_FUNCTION_10(v26);
  MEMORY[0x1EEE9AC00](v27);
  v161 = v128 - v28;
  OUTLINED_FUNCTION_12();
  v156 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v143 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_15();
  v139 = v31;
  MEMORY[0x1EEE9AC00](v32);
  v142 = v128 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  v35 = OUTLINED_FUNCTION_10(v34);
  MEMORY[0x1EEE9AC00](v35);
  v37 = v128 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  v39 = OUTLINED_FUNCTION_10(v38);
  MEMORY[0x1EEE9AC00](v39);
  v41 = v128 - v40;
  v42 = type metadata accessor for NLRouterNLParseResponse(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_1();
  v148 = (v45 - v44);
  OUTLINED_FUNCTION_12();
  sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v153 = v47;
  v154 = v46;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_1();
  v50 = v49 - v48;
  v51 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v52 = sub_1DC2BE518();
  v53 = OUTLINED_FUNCTION_130();
  v152 = v50;
  v151 = v51;
  sub_1DC2A2ED0("HeuristicRules.DismissalRule", 28, 2, v52, v53 & 1, v50);

  v54 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(v157 + *(v54 + 8), v37, &qword_1ECC7C158, &unk_1DC5234A0);
  v55 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v37, 1, v55) == 1)
  {
    sub_1DC28EB30(v37, &qword_1ECC7C158, &unk_1DC5234A0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v42);
    goto LABEL_4;
  }

  sub_1DC28F358(v37, v41, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v37, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v41, 1, v42) == 1)
  {
LABEL_4:
    sub_1DC28EB30(v41, &qword_1ECC7C160, qword_1DC5233B0);
    OUTLINED_FUNCTION_19();
LABEL_5:
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
    OUTLINED_FUNCTION_8_20();
    goto LABEL_6;
  }

  sub_1DC2E53A4(v41, v148);
  v65 = type metadata accessor for NLRouterBypassUtils();
  v66 = v157;
  v67 = sub_1DC308500(*(v157 + *(v54 + 6)));
  v68 = v156;
  if (v67)
  {
    sub_1DC309C94();
    if (v69)
    {
      v70 = sub_1DC517B9C();
      v71 = sub_1DC2BE518();
      sub_1DC516F0C(v70, &dword_1DC287000, v71, "[DismissalRule] Planner prompted. Ignore rule", 45, 2, MEMORY[0x1E69E7CC0]);

      OUTLINED_FUNCTION_1_34();
      OUTLINED_FUNCTION_19();
      __swift_storeEnumTagSinglePayload(v72, v73, v74, v68);
      v54 = v153;
      v16 = v154;
      v21 = v152;
      goto LABEL_6;
    }
  }

  v149 = v65;
  v150 = v16;
  v75 = type metadata accessor for HeuristicRoutingRequest(0);
  v76 = v143;
  v77 = *(v143 + 16);
  v137 = *(v75 + 20);
  v78 = v142;
  v77(v142, v66 + v137, v68);
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v79 = sub_1DC34596C();
  v81 = v80;
  v82 = sub_1DC312FB4(0);
  v54 = v83;
  if (v79 == v82 && v81 == v83)
  {

    goto LABEL_20;
  }

  v85 = sub_1DC51825C();

  if (v85)
  {
    goto LABEL_20;
  }

  v86 = sub_1DC34596C();
  v88 = sub_1DC312F68(v86, v87);
  if (v88 == 4)
  {
    v89 = v161;
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v90, v91, v92, v68);
LABEL_19:
    sub_1DC28EB30(v89, &qword_1ECC7CA40, &unk_1DC5233A0);
    goto LABEL_20;
  }

  v89 = v161;
  sub_1DC312E7C(v88, v161);
  if (__swift_getEnumTagSinglePayload(v89, 1, v68) == 1)
  {
    goto LABEL_19;
  }

  v98 = *(v76 + 32);
  v128[1] = v76 + 32;
  v128[0] = v98;
  result = v98(v139, v89, v68);
  v136 = *v148;
  v16 = v150;
  v135 = *(v136 + 16);
  if (!v135)
  {
    goto LABEL_52;
  }

  v99 = 0;
  v134 = v136 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
  v133 = v141 + 16;
  v160 = v162 + 16;
  v100 = (v138 + 8);
  ++v147;
  v131 = *MEMORY[0x1E69D1DD0];
  v130 = *MEMORY[0x1E69D1DC0];
  v129 = *MEMORY[0x1E69D1DC8];
  v101 = (v162 + 8);
  v132 = v141 + 8;
  while (2)
  {
    if (v99 >= *(v136 + 16))
    {
LABEL_55:
      __break(1u);
      return result;
    }

    (*(v141 + 16))(v144, v134 + *(v141 + 72) * v99, v145);
    v138 = v99 + 1;
    result = sub_1DC5111AC();
    v102 = result;
    v103 = 0;
    v161 = *(result + 16);
    while (v161 != v103)
    {
      if (v103 >= *(v102 + 16))
      {
        __break(1u);
        goto LABEL_55;
      }

      (*(v162 + 16))(v21, v102 + ((*(v162 + 80) + 32) & ~*(v162 + 80)) + *(v162 + 72) * v103, v16);
      sub_1DC51154C();
      v104 = sub_1DC51177C();
      v54 = *v100;
      (*v100)(v15, v163);
      if (v104)
      {
        sub_1DC51154C();
        v105 = v158;
        sub_1DC51178C();
        (v54)(v15, v163);
        v106 = sub_1DC307E5C(v105);
        v107 = v105;
        v16 = v150;
        (*v147)(v107, v159);
        if (v106)
        {

          sub_1DC51478C();

          v54 = &qword_1DC5238B0;
          sub_1DC28F358(&v166, v165, &qword_1ECC7D3F0, &qword_1DC5238B0);
          if (v165[3])
          {
            sub_1DC514D2C();
            if (swift_dynamicCast())
            {
              v54 = v164;

              sub_1DC51392C();

              if (v165[0])
              {
                v108 = v146;
                sub_1DC514A4C();

                v109 = v108;
                v16 = v150;

                sub_1DC28EB30(&v166, &qword_1ECC7D3F0, &qword_1DC5238B0);
                v110 = sub_1DC514A5C();
                if (__swift_getEnumTagSinglePayload(v109, 1, v110) != 1)
                {
                  v54 = v140;
                  sub_1DC28F358(v109, v140, &qword_1ECC7D770, &qword_1DC529698);
                  v111 = *(v110 - 8);
                  v112 = (*(v111 + 88))(v54, v110);
                  if (v112 == v131 || v112 == v130 || v112 == v129)
                  {
                    sub_1DC28EB30(v146, &qword_1ECC7D770, &qword_1DC529698);
                    (*v101)(v21, v16);

                    v124 = OUTLINED_FUNCTION_4_32();
                    v125(v124);
                    v126 = v156;
                    (*(v143 + 8))(v142, v156);
                    OUTLINED_FUNCTION_1_34();
                    v127 = v155;
                    (v128[0])(v155, v139, v126);
                    v59 = v127;
                    v60 = 0;
                    v61 = 1;
                    v62 = v126;
                    goto LABEL_5;
                  }

                  (*(v111 + 8))(v54, v110);
                  v109 = v146;
                }
              }

              else
              {
                sub_1DC28EB30(&v166, &qword_1ECC7D3F0, &qword_1DC5238B0);

                sub_1DC514A5C();
                v109 = v146;
                OUTLINED_FUNCTION_19();
                __swift_storeEnumTagSinglePayload(v118, v119, v120, v121);
              }

              v115 = v109;
              v116 = &qword_1ECC7D770;
              v117 = &qword_1DC529698;
              goto LABEL_49;
            }
          }

          else
          {

            sub_1DC28EB30(v165, &qword_1ECC7D3F0, &qword_1DC5238B0);
          }

          v115 = &v166;
          v116 = &qword_1ECC7D3F0;
          v117 = &qword_1DC5238B0;
LABEL_49:
          sub_1DC28EB30(v115, v116, v117);
        }
      }

      result = (*v101)(v21, v16);
      ++v103;
    }

    v122 = OUTLINED_FUNCTION_4_32();
    v123(v122);

    v99 = v138;
    if (v138 != v135)
    {
      continue;
    }

    break;
  }

LABEL_52:
  v76 = v143;
  v68 = v156;
  (*(v143 + 8))(v139, v156);
  v78 = v142;
LABEL_20:
  v93 = sub_1DC5157DC();
  OUTLINED_FUNCTION_1_34();
  if (v93)
  {
    v94 = *(v76 + 8);
    v16 = v76 + 8;
    v94(v78, v68);
    v95 = v155;
  }

  else
  {
    v96 = *(v76 + 32);
    v16 = v76 + 32;
    v95 = v155;
    v96(v155, v78, v68);
  }

  OUTLINED_FUNCTION_8_20();
  __swift_storeEnumTagSinglePayload(v95, v97, 1, v68);
LABEL_6:
  v63 = sub_1DC2BE518();
  sub_1DC2B8848(v21, "HeuristicRules.DismissalRule", 28, 2, v63);

  return (v54[1])(v21, v16);
}